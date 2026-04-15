package com.codex.cardisconnecttracker.data

import com.codex.cardisconnecttracker.model.SavedCarLocation
import com.codex.cardisconnecttracker.model.TrackedDevice
import kotlinx.coroutines.flow.Flow

interface SettingsRepository {
    val selectedDeviceFlow: Flow<TrackedDevice?>
    val savedLocationFlow: Flow<SavedCarLocation?>
    val lastErrorFlow: Flow<String?>

    suspend fun getSelectedDevice(): TrackedDevice?
    suspend fun setSelectedDevice(device: TrackedDevice)
    suspend fun getSavedLocation(): SavedCarLocation?
    suspend fun setSavedLocation(location: SavedCarLocation)
    suspend fun clearSavedLocation()
    suspend fun setLastError(message: String?)
}
