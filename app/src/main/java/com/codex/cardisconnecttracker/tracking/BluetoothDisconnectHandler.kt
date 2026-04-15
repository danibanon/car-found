package com.codex.cardisconnecttracker.tracking

import com.codex.cardisconnecttracker.data.SettingsRepository
import com.codex.cardisconnecttracker.model.LocationLookupResult
import com.codex.cardisconnecttracker.model.SaveOutcome
import com.codex.cardisconnecttracker.model.SavedCarLocation
import java.text.SimpleDateFormat
import java.time.Clock
import java.util.Date
import java.util.Locale

class BluetoothDisconnectHandler(
    private val settingsRepository: SettingsRepository,
    private val locationProvider: LocationProvider,
    private val clock: Clock,
) {
    suspend fun handleDisconnect(disconnectedAddress: String): SaveOutcome {
        android.util.Log.d("CarFound", "Handling disconnect for: $disconnectedAddress")
        val selected = settingsRepository.getSelectedDevice()
            ?: run {
                android.util.Log.d("CarFound", "Ignored: No device selected in settings")
                return SaveOutcome.IgnoredMissingSelection
            }
        
        if (!selected.address.equals(disconnectedAddress, ignoreCase = true)) {
            android.util.Log.d("CarFound", "Ignored: Disconnected device ($disconnectedAddress) doesn't match selected (${selected.address})")
            return SaveOutcome.IgnoredDifferentDevice
        }

        android.util.Log.d("CarFound", "Looking up location...")
        return when (val location = locationProvider.lookupLocation()) {
            is LocationLookupResult.Success -> {
                android.util.Log.d("CarFound", "Location found! Saving...")
                val timestamp = clock.millis()
                val formatter = SimpleDateFormat("dd MMM yyyy 'at' h:mm a", Locale.US)
                settingsRepository.setSavedLocation(
                    SavedCarLocation(
                        latitude = location.latitude,
                        longitude = location.longitude,
                        timestampEpochMillis = timestamp,
                        formattedTimestamp = formatter.format(Date(timestamp)),
                        address = location.address,
                    ),
                )
                settingsRepository.setLastError(null)
                SaveOutcome.Saved
            }
            else -> {
                android.util.Log.d("CarFound", "Location lookup failed: $location")
                settingsRepository.setLastError("Location unavailable when the selected car device disconnected.")
                SaveOutcome.FailedLocationUnavailable
            }
        }
    }
}
