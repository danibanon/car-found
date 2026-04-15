package com.codex.cardisconnecttracker.ui

import android.os.Build
import androidx.lifecycle.ViewModel
import androidx.lifecycle.ViewModelProvider
import androidx.lifecycle.viewModelScope
import com.codex.cardisconnecttracker.di.AppGraph
import com.codex.cardisconnecttracker.model.LocationLookupResult
import com.codex.cardisconnecttracker.model.PermissionSnapshot
import com.codex.cardisconnecttracker.model.SavedCarLocation
import com.codex.cardisconnecttracker.model.TrackedDevice
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.SharingStarted
import kotlinx.coroutines.flow.combine
import kotlinx.coroutines.flow.first
import kotlinx.coroutines.flow.stateIn
import kotlinx.coroutines.launch
import java.text.DateFormat
import java.util.Date

class MainViewModel(private val appGraph: AppGraph) : ViewModel() {
    private val devices = MutableStateFlow<List<TrackedDevice>>(emptyList())
    private val permissionSnapshot = MutableStateFlow(appGraph.permissionChecker.snapshot())
    private val isSettingsOpen = MutableStateFlow(false)
    private val isInitialLocationLoading = MutableStateFlow(false)
    private val showFirstLocationDialog = MutableStateFlow(false)

    val uiState = combine(
        devices,
        appGraph.settingsRepository.selectedDeviceFlow,
        appGraph.settingsRepository.savedLocationFlow,
        appGraph.settingsRepository.lastErrorFlow,
        permissionSnapshot,
        isSettingsOpen,
        isInitialLocationLoading,
        showFirstLocationDialog,
    ) { array ->
        val devices = array[0] as List<TrackedDevice>
        val selected = array[1] as TrackedDevice?
        val savedLocation = array[2] as SavedCarLocation?
        val lastError = array[3] as String?
        val permissions = array[4] as PermissionSnapshot
        val settingsOpen = array[5] as Boolean
        val initialLocationLoading = array[6] as Boolean
        val firstLocationDialog = array[7] as Boolean

        val isSetupComplete = permissions.hasRequiredPermissions && selected != null
        UiState(
            devices = devices,
            selectedDevice = selected,
            savedLocation = savedLocation,
            lastError = lastError,
            permissions = permissions,
            isSetupComplete = isSetupComplete,
            showSettings = settingsOpen || !isSetupComplete,
            isInitialLocationLoading = initialLocationLoading,
            showFirstLocationDialog = firstLocationDialog
        )
    }.stateIn(
        scope = viewModelScope,
        started = SharingStarted.WhileSubscribed(5_000),
        initialValue = UiState(),
    )

    init {
        refreshDevices()
        ensureMonitoring()
    }

    fun requiredPermissions(): Array<String> = appGraph.permissionManager.getRequiredPermissions(permissionSnapshot.value)

    fun refreshDevices() {
        devices.value = appGraph.bondedDevicesProvider.bondedDevices()
    }

    fun refreshAfterPermissionChange() {
        permissionSnapshot.value = appGraph.permissionChecker.snapshot()
        refreshDevices()
        ensureMonitoring()
    }

    fun selectDevice(device: TrackedDevice) {
        viewModelScope.launch {
            val isFirstSelection = appGraph.settingsRepository.getSelectedDevice() == null
            appGraph.settingsRepository.setSelectedDevice(device)
            ensureMonitoring()
            
            if (isFirstSelection && appGraph.permissionChecker.snapshot().hasRequiredPermissions) {
                captureInitialLocation()
            }
        }
    }

    private fun captureInitialLocation() {
        viewModelScope.launch {
            if (appGraph.settingsRepository.getSavedLocation() != null) return@launch
            
            isInitialLocationLoading.value = true
            val result = appGraph.locationProvider.lookupLocation()
            isInitialLocationLoading.value = false
            
            if (result is LocationLookupResult.Success) {
                val now = System.currentTimeMillis()
                val saved = SavedCarLocation(
                    latitude = result.latitude,
                    longitude = result.longitude,
                    timestampEpochMillis = now,
                    formattedTimestamp = DateFormat.getDateTimeInstance().format(Date(now)),
                    address = result.address ?: "Current Location"
                )
                appGraph.settingsRepository.setSavedLocation(saved)
                showFirstLocationDialog.value = true
            }
        }
    }

    fun dismissFirstLocationDialog() {
        showFirstLocationDialog.value = false
    }

    fun clearSavedLocation() {
        viewModelScope.launch {
            appGraph.settingsRepository.clearSavedLocation()
            appGraph.settingsRepository.setLastError(null)
        }
    }

    fun openSavedLocationInMaps() {
        viewModelScope.launch {
            appGraph.settingsRepository.getSavedLocation()?.let(appGraph.mapsLauncher::open)
        }
    }

    fun toggleSettings(open: Boolean) {
        isSettingsOpen.value = open
    }

    private fun ensureMonitoring() {
        viewModelScope.launch {
            val selected = appGraph.settingsRepository.getSelectedDevice()
            val permissions = permissionSnapshot.value
            if (selected != null && permissions.hasRequiredPermissions) {
                appGraph.monitorStarter.start()
            } else {
                appGraph.monitorStarter.stop()
            }
        }
    }

    data class UiState(
        val devices: List<TrackedDevice> = emptyList(),
        val selectedDevice: TrackedDevice? = null,
        val savedLocation: SavedCarLocation? = null,
        val lastError: String? = null,
        val permissions: PermissionSnapshot = PermissionSnapshot(false, false, false, false, false),
        val isSetupComplete: Boolean = false,
        val showSettings: Boolean = true,
        val isInitialLocationLoading: Boolean = false,
        val showFirstLocationDialog: Boolean = false,
    )
}

class MainViewModelFactory(private val appGraph: AppGraph) : ViewModelProvider.Factory {
    override fun <T : ViewModel> create(modelClass: Class<T>): T = MainViewModel(appGraph) as T
}
