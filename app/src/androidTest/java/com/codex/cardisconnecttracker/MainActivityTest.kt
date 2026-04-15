package com.codex.cardisconnecttracker

import android.content.Context
import android.content.Intent
import androidx.compose.ui.test.*
import androidx.compose.ui.test.junit4.createEmptyComposeRule
import androidx.test.core.app.ActivityScenario
import androidx.test.core.app.ApplicationProvider
import androidx.test.ext.junit.runners.AndroidJUnit4
import androidx.lifecycle.Lifecycle
import com.codex.cardisconnecttracker.debug.DebugCommandReceiver
import com.codex.cardisconnecttracker.debug.MutableDebugHooks
import com.codex.cardisconnecttracker.maps.MapsLauncher
import com.codex.cardisconnecttracker.model.PermissionSnapshot
import com.codex.cardisconnecttracker.model.TrackedDevice
import com.codex.cardisconnecttracker.permissions.PermissionChecker
import com.codex.cardisconnecttracker.system.BluetoothMonitorStarter
import com.codex.cardisconnecttracker.ui.UiTags
import kotlinx.coroutines.runBlocking
import org.junit.Assert.assertEquals
import org.junit.Assert.assertNotNull
import org.junit.Before
import org.junit.Rule
import org.junit.Test
import org.junit.runner.RunWith

@RunWith(AndroidJUnit4::class)
class MainActivityTest {
    @get:Rule
    val composeRule = createEmptyComposeRule()

    private lateinit var app: CarTrackerApp
    private lateinit var recordingMapsLauncher: RecordingMapsLauncher

    @Before
    fun setUp() {
        app = ApplicationProvider.getApplicationContext()
        recordingMapsLauncher = RecordingMapsLauncher()
        
        // Reset state
        app.getSharedPreferences("car_disconnect_prefs", Context.MODE_PRIVATE).edit().clear().apply()
        app.getSharedPreferences("osmdroid", Context.MODE_PRIVATE).edit().clear().apply()
        
        val hooks = MutableDebugHooks().apply {
            setFakeBondedDevices(
                listOf(
                    TrackedDevice("My Car", "AA:BB:CC:DD"),
                    TrackedDevice("Headphones", "11:22:33:44"),
                ),
            )
        }
        app.appGraph.debugHooks = hooks
        // Default: all permissions granted
        app.appGraph.permissionChecker = SnapshotPermissionChecker(
            PermissionSnapshot(
                hasBluetoothPermission = true,
                hasForegroundLocation = true,
                hasBackgroundLocation = true,
                hasNotificationPermission = true,
                isBatteryOptimized = false,
            ),
        )
        app.appGraph.mapsLauncher = recordingMapsLauncher
        app.appGraph.monitorStarter = NoOpMonitorStarter()
        app.appGraph.refreshDerivedDependencies()
    }

    @Test
    fun showsPermissionDialogWhenPermissionsMissing() {
        app.appGraph.permissionChecker = SnapshotPermissionChecker(
            PermissionSnapshot(
                hasBluetoothPermission = false,
                hasForegroundLocation = false,
                hasBackgroundLocation = false,
                hasNotificationPermission = true,
                isBatteryOptimized = false,
            ),
        )
        app.appGraph.refreshDerivedDependencies()
        
        ActivityScenario.launch(MainActivity::class.java).use {
            composeRule.onNodeWithText("Hi CarFounders!").assertIsDisplayed()
            composeRule.onNodeWithText("Get Started").assertIsDisplayed()
        }
    }

    @Test
    fun showsFinalStepWhenBackgroundLocationMissing() {
        app.appGraph.permissionChecker = SnapshotPermissionChecker(
            PermissionSnapshot(
                hasBluetoothPermission = true,
                hasForegroundLocation = true,
                hasBackgroundLocation = false,
                hasNotificationPermission = true,
                isBatteryOptimized = false,
            ),
        )
        app.appGraph.refreshDerivedDependencies()
        
        ActivityScenario.launch(MainActivity::class.java).use {
            composeRule.onNodeWithText("Background Access").assertIsDisplayed()
        }
    }

    @Test
    fun dismissesWelcomeAndShowsDashboardWhenSetupComplete() {
        // Start with missing permissions
        app.appGraph.permissionChecker = SnapshotPermissionChecker(
            PermissionSnapshot(
                hasBluetoothPermission = false,
                hasForegroundLocation = false,
                hasBackgroundLocation = false,
                hasNotificationPermission = true,
                isBatteryOptimized = false,
            ),
        )
        app.appGraph.refreshDerivedDependencies()
        
        ActivityScenario.launch(MainActivity::class.java).use { scenario ->
            composeRule.onNodeWithText("Hi CarFounders!").assertIsDisplayed()

            // Grant permissions
            app.appGraph.permissionChecker = SnapshotPermissionChecker(
                PermissionSnapshot(
                    hasBluetoothPermission = true,
                    hasForegroundLocation = true,
                    hasBackgroundLocation = true,
                    hasNotificationPermission = true,
                    isBatteryOptimized = false,
                ),
            )
            
            // Trigger refresh by moving lifecycle
            scenario.moveToState(Lifecycle.State.STARTED)
            scenario.moveToState(Lifecycle.State.RESUMED)
            
            // Now it should show Device Selection
            composeRule.onNodeWithText("Connect Your Car").assertIsDisplayed()

            // Select a device to complete setup
            composeRule.onNodeWithTag("${UiTags.DEVICE_PREFIX}AA:BB:CC:DD").performClick()
            
            // Dashboard should appear
            composeRule.onNodeWithTag(UiTags.TILE_LOCATION).assertIsDisplayed()
            composeRule.onNodeWithText("My Car").assertIsDisplayed()
        }
    }

    @Test
    fun selectingDevicePersistsState() {
        // Ensure the UI will show the Device Selection
        app.appGraph.permissionChecker = SnapshotPermissionChecker(
            PermissionSnapshot(true, true, true, true, false)
        )
        app.appGraph.refreshDerivedDependencies()

        ActivityScenario.launch(MainActivity::class.java).use {
            // Wait for Device Selection to appear
            composeRule.onNodeWithText("Connect Your Car").assertIsDisplayed()
            
            // Select the device
            composeRule.onNodeWithTag("${UiTags.DEVICE_PREFIX}AA:BB:CC:DD").performClick()
            
            // Assert persistence
            composeRule.waitUntil(10_000) {
                runBlocking { app.appGraph.settingsRepository.getSelectedDevice()?.address == "AA:BB:CC:DD" }
            }
        }
    }

    @Test
    fun debugDisconnectBroadcastUpdatesUi() {
        runBlocking {
            app.appGraph.settingsRepository.setSelectedDevice(TrackedDevice("My Car", "AA:BB:CC:DD"))
            app.appGraph.refreshDerivedDependencies()
        }
            
        ActivityScenario.launch(MainActivity::class.java).use {
            composeRule.onNodeWithTag(UiTags.TILE_LOCATION).assertIsDisplayed()

            sendBroadcast(
                Intent(DebugCommandReceiver.ACTION_SET_FAKE_LOCATION)
                    .putExtra(DebugCommandReceiver.EXTRA_MODE, "success")
                    .putExtra(DebugCommandReceiver.EXTRA_LATITUDE, 40.4168)
                    .putExtra(DebugCommandReceiver.EXTRA_LONGITUDE, -3.7038)
                    .putExtra(DebugCommandReceiver.EXTRA_ADDRESS, "Madrid parking"),
            )
            sendBroadcast(
                Intent(DebugCommandReceiver.ACTION_SIMULATE_DISCONNECT)
                    .putExtra(DebugCommandReceiver.EXTRA_DEVICE_ADDRESS, "AA:BB:CC:DD"),
            )

            composeRule.waitUntil(timeoutMillis = 10_000) {
                runBlocking { app.appGraph.settingsRepository.getSavedLocation() != null }
            }
            
            composeRule.onNodeWithTag(UiTags.COORDINATES).performScrollTo().assertIsDisplayed()
            composeRule.onNodeWithText("Madrid parking").performScrollTo().assertIsDisplayed()
            composeRule.onNodeWithTag(UiTags.OPEN_MAPS).assertIsDisplayed()
        }
    }

    @Test
    fun mapsActionUsesConfiguredLauncher() {
        runBlocking {
            app.appGraph.settingsRepository.setSelectedDevice(TrackedDevice("My Car", "AA:BB:CC:DD"))
            app.appGraph.settingsRepository.setSavedLocation(
                com.codex.cardisconnecttracker.model.SavedCarLocation(
                    latitude = 48.8566,
                    longitude = 2.3522,
                    address = "Paris",
                    timestampEpochMillis = System.currentTimeMillis(),
                    formattedTimestamp = "Just now"
                )
            )
            // Ensure the UI will show the Dashboard
            app.appGraph.permissionChecker = SnapshotPermissionChecker(
                PermissionSnapshot(true, true, true, true, false)
            )
            app.appGraph.refreshDerivedDependencies()
        }

        ActivityScenario.launch(MainActivity::class.java).use {
            composeRule.onNodeWithTag(UiTags.TILE_LOCATION).assertIsDisplayed()

            // Map action should be enabled
            composeRule.onNodeWithTag(UiTags.OPEN_MAPS).performScrollTo().performClick()
            
            // Wait for the launcher to be called
            composeRule.waitUntil(20_000) { 
                recordingMapsLauncher.lastOpened != null
            }
            
            val opened = recordingMapsLauncher.lastOpened
            assertNotNull("Maps launcher should have been called", opened)
            assertEquals(48.8566, opened!!.latitude, 0.0001)
        }
    }

    private fun sendBroadcast(intent: Intent) {
        intent.setPackage(app.packageName)
        ApplicationProvider.getApplicationContext<Context>().sendBroadcast(intent)
    }
}

private class SnapshotPermissionChecker(
    private val snapshot: PermissionSnapshot,
) : PermissionChecker {
    override fun snapshot(): PermissionSnapshot = snapshot
}

private class RecordingMapsLauncher : MapsLauncher {
    var lastOpened: com.codex.cardisconnecttracker.model.SavedCarLocation? = null

    override fun open(location: com.codex.cardisconnecttracker.model.SavedCarLocation): Boolean {
        lastOpened = location
        return true
    }
}

private class NoOpMonitorStarter : BluetoothMonitorStarter {
    override fun start() = Unit
    override fun stop() = Unit
}
