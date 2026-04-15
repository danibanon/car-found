package com.codex.cardisconnecttracker.model

data class TrackedDevice(
    val name: String,
    val address: String,
)

data class SavedCarLocation(
    val latitude: Double,
    val longitude: Double,
    val timestampEpochMillis: Long,
    val formattedTimestamp: String,
    val address: String?,
)

data class PermissionSnapshot(
    val hasBluetoothPermission: Boolean,
    val hasForegroundLocation: Boolean,
    val hasBackgroundLocation: Boolean,
    val hasNotificationPermission: Boolean,
    val isBatteryOptimized: Boolean,
) {
    val hasRequiredPermissions: Boolean
        get() = hasBluetoothPermission && hasForegroundLocation && hasBackgroundLocation && hasNotificationPermission && !isBatteryOptimized

    val needsBackgroundLocation: Boolean
        get() = hasForegroundLocation && !hasBackgroundLocation
}

sealed interface LocationLookupResult {
    data class Success(
        val latitude: Double,
        val longitude: Double,
        val address: String?,
    ) : LocationLookupResult

    data object Timeout : LocationLookupResult

    data object Unavailable : LocationLookupResult
}

enum class SaveOutcome {
    Saved,
    IgnoredMissingSelection,
    IgnoredDifferentDevice,
    FailedLocationUnavailable,
}
