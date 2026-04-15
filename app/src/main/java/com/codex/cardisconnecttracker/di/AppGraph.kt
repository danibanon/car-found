package com.codex.cardisconnecttracker.di

import android.content.Context
import com.codex.cardisconnecttracker.data.SettingsRepository
import com.codex.cardisconnecttracker.data.SharedPreferencesSettingsRepository
import com.codex.cardisconnecttracker.debug.DebugHooks
import com.codex.cardisconnecttracker.debug.MutableDebugHooks
import com.codex.cardisconnecttracker.maps.AndroidMapsLauncher
import com.codex.cardisconnecttracker.maps.MapsLauncher
import com.codex.cardisconnecttracker.permissions.AndroidPermissionChecker
import com.codex.cardisconnecttracker.permissions.PermissionChecker
import com.codex.cardisconnecttracker.permissions.manager.PermissionManager
import com.codex.cardisconnecttracker.system.AndroidBluetoothMonitorStarter
import com.codex.cardisconnecttracker.system.BluetoothMonitorStarter
import com.codex.cardisconnecttracker.system.BondedDevicesProvider
import com.codex.cardisconnecttracker.system.DefaultBondedDevicesProvider
import com.codex.cardisconnecttracker.system.SystemClockProvider
import com.codex.cardisconnecttracker.tracking.BluetoothDisconnectHandler
import com.codex.cardisconnecttracker.tracking.BootStartDecider
import com.codex.cardisconnecttracker.tracking.GeocoderReverseGeocoder
import com.codex.cardisconnecttracker.tracking.PlayServicesLocationProvider
import com.codex.cardisconnecttracker.tracking.ReverseGeocoder
import java.time.Clock

class AppGraph(private val context: Context) {
    var debugHooks: DebugHooks = MutableDebugHooks()
    var settingsRepository: SettingsRepository = SharedPreferencesSettingsRepository(context)
    var permissionChecker: PermissionChecker = AndroidPermissionChecker(context)
    var permissionManager: PermissionManager = PermissionManager()
    var bondedDevicesProvider: BondedDevicesProvider = DefaultBondedDevicesProvider(context, debugHooks)
    var mapsLauncher: MapsLauncher = AndroidMapsLauncher(context)
    var reverseGeocoder: ReverseGeocoder = GeocoderReverseGeocoder(context)
    var clock: Clock = SystemClockProvider.clock
    var locationProvider = PlayServicesLocationProvider(context, reverseGeocoder, debugHooks)
    var bluetoothDisconnectHandler: BluetoothDisconnectHandler = BluetoothDisconnectHandler(
        settingsRepository = settingsRepository,
        locationProvider = locationProvider,
        clock = clock,
    )
    var monitorStarter: BluetoothMonitorStarter = AndroidBluetoothMonitorStarter(context)
    var bootStartDecider: BootStartDecider = BootStartDecider(permissionChecker, settingsRepository)

    fun refreshDerivedDependencies() {
        bondedDevicesProvider = DefaultBondedDevicesProvider(context, debugHooks)
        locationProvider = PlayServicesLocationProvider(context, reverseGeocoder, debugHooks)
        bluetoothDisconnectHandler = BluetoothDisconnectHandler(
            settingsRepository = settingsRepository,
            locationProvider = locationProvider,
            clock = clock,
        )
        bootStartDecider = BootStartDecider(permissionChecker, settingsRepository)
    }
}
