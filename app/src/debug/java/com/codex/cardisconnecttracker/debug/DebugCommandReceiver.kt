package com.codex.cardisconnecttracker.debug

import android.content.BroadcastReceiver
import android.content.Context
import android.content.Intent
import com.codex.cardisconnecttracker.CarTrackerApp
import com.codex.cardisconnecttracker.model.LocationLookupResult
import com.codex.cardisconnecttracker.model.TrackedDevice
import kotlinx.coroutines.runBlocking

class DebugCommandReceiver : BroadcastReceiver() {
    override fun onReceive(context: Context, intent: Intent) {
        val app = context.applicationContext as CarTrackerApp
        val hooks = app.appGraph.debugHooks as? MutableDebugHooks ?: return
        when (intent.action) {
            ACTION_SET_FAKE_LOCATION -> {
                val mode = intent.getStringExtra(EXTRA_MODE) ?: "success"
                hooks.setFakeLocationResult(
                    when (mode) {
                        "timeout" -> LocationLookupResult.Timeout
                        "unavailable" -> LocationLookupResult.Unavailable
                        else -> LocationLookupResult.Success(
                            latitude = intent.getDoubleExtra(EXTRA_LATITUDE, 40.4168),
                            longitude = intent.getDoubleExtra(EXTRA_LONGITUDE, -3.7038),
                            address = intent.getStringExtra(EXTRA_ADDRESS) ?: "Debug parking spot",
                        )
                    },
                )
            }

            ACTION_SET_FAKE_DEVICES -> {
                val devices = intent.getStringArrayExtra(EXTRA_DEVICES)?.mapNotNull { raw ->
                    val parts = raw.split("|")
                    if (parts.size == 2) TrackedDevice(parts[0], parts[1]) else null
                } ?: emptyList()
                hooks.setFakeBondedDevices(devices)
            }

            ACTION_SIMULATE_DISCONNECT -> {
                val address = intent.getStringExtra(EXTRA_DEVICE_ADDRESS) ?: return
                runBlocking {
                    app.appGraph.bluetoothDisconnectHandler.handleDisconnect(address)
                }
            }

            ACTION_SELECT_DEVICE -> {
                val address = intent.getStringExtra(EXTRA_DEVICE_ADDRESS) ?: return
                val name = intent.getStringExtra(EXTRA_DEVICE_NAME) ?: "Debug device"
                runBlocking {
                    app.appGraph.settingsRepository.setSelectedDevice(TrackedDevice(name, address))
                }
            }

            ACTION_CLEAR_STATE -> {
                hooks.setFakeLocationResult(null)
                hooks.setFakeBondedDevices(null)
                runBlocking {
                    app.getSharedPreferences("car_disconnect_prefs", Context.MODE_PRIVATE).edit().clear().apply()
                    app.appGraph.settingsRepository.clearSavedLocation()
                    app.appGraph.settingsRepository.setLastError(null)
                }
            }
        }
    }

    companion object {
        const val ACTION_SET_FAKE_LOCATION = "com.codex.cardisconnecttracker.DEBUG_SET_FAKE_LOCATION"
        const val ACTION_SET_FAKE_DEVICES = "com.codex.cardisconnecttracker.DEBUG_SET_FAKE_DEVICES"
        const val ACTION_SELECT_DEVICE = "com.codex.cardisconnecttracker.DEBUG_SELECT_DEVICE"
        const val ACTION_SIMULATE_DISCONNECT = "com.codex.cardisconnecttracker.DEBUG_SIMULATE_DISCONNECT"
        const val ACTION_CLEAR_STATE = "com.codex.cardisconnecttracker.DEBUG_CLEAR_STATE"
        const val EXTRA_MODE = "mode"
        const val EXTRA_LATITUDE = "latitude"
        const val EXTRA_LONGITUDE = "longitude"
        const val EXTRA_ADDRESS = "address"
        const val EXTRA_DEVICES = "devices"
        const val EXTRA_DEVICE_NAME = "device_name"
        const val EXTRA_DEVICE_ADDRESS = "device_address"
    }
}
