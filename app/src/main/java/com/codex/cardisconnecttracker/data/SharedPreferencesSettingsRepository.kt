package com.codex.cardisconnecttracker.data

import android.content.Context
import android.content.SharedPreferences
import com.codex.cardisconnecttracker.model.SavedCarLocation
import com.codex.cardisconnecttracker.model.TrackedDevice
import kotlinx.coroutines.channels.awaitClose
import kotlinx.coroutines.flow.Flow
import kotlinx.coroutines.flow.callbackFlow
import kotlinx.coroutines.flow.conflate
import kotlinx.coroutines.flow.first
import kotlinx.coroutines.flow.map
import java.text.DateFormat
import java.util.Date

class SharedPreferencesSettingsRepository(context: Context) : SettingsRepository {
    private val prefs = context.getSharedPreferences(PREFS_NAME, Context.MODE_PRIVATE)

    // We must keep a strong reference to the listener or it will be garbage collected.
    private var internalListener: SharedPreferences.OnSharedPreferenceChangeListener? = null

    override val selectedDeviceFlow: Flow<TrackedDevice?> = prefsFlow().map { readSelectedDevice() }
    override val savedLocationFlow: Flow<SavedCarLocation?> = prefsFlow().map { readSavedLocation() }
    override val lastErrorFlow: Flow<String?> = prefsFlow().map { prefs.getString(KEY_LAST_ERROR, null) }

    override suspend fun getSelectedDevice(): TrackedDevice? = selectedDeviceFlow.first()

    override suspend fun setSelectedDevice(device: TrackedDevice) {
        prefs.edit()
            .putString(KEY_DEVICE_NAME, device.name)
            .putString(KEY_DEVICE_ADDRESS, device.address)
            .apply()
    }

    override suspend fun getSavedLocation(): SavedCarLocation? = savedLocationFlow.first()

    override suspend fun setSavedLocation(location: SavedCarLocation) {
        prefs.edit()
            .putString(KEY_LATITUDE, location.latitude.toString())
            .putString(KEY_LONGITUDE, location.longitude.toString())
            .putLong(KEY_TIMESTAMP, location.timestampEpochMillis)
            .putString(KEY_ADDRESS, location.address)
            .putString(KEY_FORMATTED_TIMESTAMP, location.formattedTimestamp)
            .putString(KEY_LAST_ERROR, null)
            .apply()
    }

    override suspend fun clearSavedLocation() {
        prefs.edit()
            .remove(KEY_LATITUDE)
            .remove(KEY_LONGITUDE)
            .remove(KEY_TIMESTAMP)
            .remove(KEY_ADDRESS)
            .remove(KEY_FORMATTED_TIMESTAMP)
            .apply()
    }

    override suspend fun setLastError(message: String?) {
        prefs.edit().putString(KEY_LAST_ERROR, message).apply()
    }

    private fun prefsFlow(): Flow<Unit> = callbackFlow {
        trySend(Unit)
        val listener = SharedPreferences.OnSharedPreferenceChangeListener { _, _ ->
            trySend(Unit)
        }
        internalListener = listener // Keep strong reference
        prefs.registerOnSharedPreferenceChangeListener(listener)
        awaitClose {
            prefs.unregisterOnSharedPreferenceChangeListener(listener)
            internalListener = null
        }
    }.conflate()

    private fun readSelectedDevice(): TrackedDevice? {
        val name = prefs.getString(KEY_DEVICE_NAME, null) ?: return null
        val address = prefs.getString(KEY_DEVICE_ADDRESS, null) ?: return null
        return TrackedDevice(name = name, address = address)
    }

    private fun readSavedLocation(): SavedCarLocation? {
        val latitude = prefs.getString(KEY_LATITUDE, null)?.toDoubleOrNull() ?: return null
        val longitude = prefs.getString(KEY_LONGITUDE, null)?.toDoubleOrNull() ?: return null
        val timestamp = prefs.getLong(KEY_TIMESTAMP, 0L)
        if (timestamp == 0L) return null
        val formatted = prefs.getString(KEY_FORMATTED_TIMESTAMP, null)
            ?: DateFormat.getDateTimeInstance().format(Date(timestamp))
        return SavedCarLocation(
            latitude = latitude,
            longitude = longitude,
            timestampEpochMillis = timestamp,
            formattedTimestamp = formatted,
            address = prefs.getString(KEY_ADDRESS, null),
        )
    }

    companion object {
        private const val PREFS_NAME = "car_disconnect_prefs"
        private const val KEY_DEVICE_NAME = "selected_device_name"
        private const val KEY_DEVICE_ADDRESS = "selected_device_address"
        private const val KEY_LATITUDE = "last_latitude"
        private const val KEY_LONGITUDE = "last_longitude"
        private const val KEY_TIMESTAMP = "last_timestamp"
        private const val KEY_FORMATTED_TIMESTAMP = "last_timestamp_text"
        private const val KEY_ADDRESS = "last_address"
        private const val KEY_LAST_ERROR = "last_error"
    }
}
