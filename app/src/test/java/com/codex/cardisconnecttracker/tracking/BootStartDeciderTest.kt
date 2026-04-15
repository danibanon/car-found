package com.codex.cardisconnecttracker.tracking

import com.codex.cardisconnecttracker.model.PermissionSnapshot
import com.codex.cardisconnecttracker.model.TrackedDevice
import com.codex.cardisconnecttracker.testutil.FakePermissionChecker
import com.codex.cardisconnecttracker.testutil.FakeSettingsRepository
import kotlinx.coroutines.test.runTest
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test

class BootStartDeciderTest {
    @Test
    fun `boot start requires configured device and permissions`() = runTest {
        val repo = FakeSettingsRepository().apply {
            setSelectedDevice(TrackedDevice("Car", "AA:BB"))
        }
        val permissions = PermissionSnapshot(
            hasBluetoothPermission = true,
            hasForegroundLocation = true,
            hasBackgroundLocation = true,
            hasNotificationPermission = true,
            isBatteryOptimized = false
        )
        val decider = BootStartDecider(FakePermissionChecker(permissions), repo)

        assertTrue(decider.shouldStart())
    }

    @Test
    fun `boot start blocked without permissions`() = runTest {
        val repo = FakeSettingsRepository().apply {
            setSelectedDevice(TrackedDevice("Car", "AA:BB"))
        }
        val permissions = PermissionSnapshot(
            hasBluetoothPermission = false,
            hasForegroundLocation = true,
            hasBackgroundLocation = true,
            hasNotificationPermission = true,
            isBatteryOptimized = false
        )
        val decider = BootStartDecider(FakePermissionChecker(permissions), repo)

        assertFalse(decider.shouldStart())
    }
}
