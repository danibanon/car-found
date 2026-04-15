package com.codex.cardisconnecttracker.testutil

import com.codex.cardisconnecttracker.data.SettingsRepository
import com.codex.cardisconnecttracker.model.PermissionSnapshot
import com.codex.cardisconnecttracker.model.SavedCarLocation
import com.codex.cardisconnecttracker.model.TrackedDevice
import com.codex.cardisconnecttracker.permissions.PermissionChecker
import com.codex.cardisconnecttracker.tracking.LocationProvider
import kotlinx.coroutines.flow.Flow
import kotlinx.coroutines.flow.MutableStateFlow

class FakeSettingsRepository : SettingsRepository {
    override val selectedDeviceFlow = MutableStateFlow<TrackedDevice?>(null)
    override val savedLocationFlow = MutableStateFlow<SavedCarLocation?>(null)
    override val lastErrorFlow = MutableStateFlow<String?>(null)

    override suspend fun getSelectedDevice(): TrackedDevice? = selectedDeviceFlow.value
    override suspend fun setSelectedDevice(device: TrackedDevice) {
        selectedDeviceFlow.value = device
    }

    override suspend fun getSavedLocation(): SavedCarLocation? = savedLocationFlow.value
    override suspend fun setSavedLocation(location: SavedCarLocation) {
        savedLocationFlow.value = location
    }

    override suspend fun clearSavedLocation() {
        savedLocationFlow.value = null
    }

    override suspend fun setLastError(message: String?) {
        lastErrorFlow.value = message
    }
}

class FakePermissionChecker(
    private val snapshotValue: PermissionSnapshot,
) : PermissionChecker {
    override fun snapshot(): PermissionSnapshot = snapshotValue
}

class FakeLocationProvider(
    private val result: com.codex.cardisconnecttracker.model.LocationLookupResult,
) : LocationProvider {
    override suspend fun lookupLocation(): com.codex.cardisconnecttracker.model.LocationLookupResult = result
}
