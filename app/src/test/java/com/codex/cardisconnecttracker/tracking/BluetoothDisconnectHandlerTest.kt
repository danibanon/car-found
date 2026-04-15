package com.codex.cardisconnecttracker.tracking

import com.codex.cardisconnecttracker.model.LocationLookupResult
import com.codex.cardisconnecttracker.model.SaveOutcome
import com.codex.cardisconnecttracker.model.TrackedDevice
import com.codex.cardisconnecttracker.testutil.FakeLocationProvider
import com.codex.cardisconnecttracker.testutil.FakeSettingsRepository
import kotlinx.coroutines.test.runTest
import org.junit.Assert.assertEquals
import org.junit.Assert.assertNotNull
import org.junit.Assert.assertNull
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner
import org.robolectric.annotation.Config
import java.time.Clock
import java.time.Instant
import java.time.ZoneOffset

@RunWith(RobolectricTestRunner::class)
@Config(sdk = [34])
class BluetoothDisconnectHandlerTest {
    private val fixedClock = Clock.fixed(Instant.parse("2026-04-14T00:00:00Z"), ZoneOffset.UTC)

    @Test
    fun `selected device is required before save`() = runTest {
        val repo = FakeSettingsRepository()
        val handler = BluetoothDisconnectHandler(
            settingsRepository = repo,
            locationProvider = FakeLocationProvider(LocationLookupResult.Success(1.0, 2.0, "A")),
            clock = fixedClock,
        )

        val outcome = handler.handleDisconnect("AA:BB")

        assertEquals(SaveOutcome.IgnoredMissingSelection, outcome)
        assertNull(repo.savedLocationFlow.value)
    }

    @Test
    fun `disconnect from non-selected device is ignored`() = runTest {
        val repo = FakeSettingsRepository().apply {
            setSelectedDevice(TrackedDevice("Car", "AA:BB"))
        }
        val handler = BluetoothDisconnectHandler(repo, FakeLocationProvider(LocationLookupResult.Success(1.0, 2.0, "A")), fixedClock)

        val outcome = handler.handleDisconnect("CC:DD")

        assertEquals(SaveOutcome.IgnoredDifferentDevice, outcome)
        assertNull(repo.savedLocationFlow.value)
    }

    @Test
    fun `selected device disconnect saves latest location`() = runTest {
        val repo = FakeSettingsRepository().apply {
            setSelectedDevice(TrackedDevice("Car", "AA:BB"))
        }
        val handler = BluetoothDisconnectHandler(repo, FakeLocationProvider(LocationLookupResult.Success(1.0, 2.0, "A")), fixedClock)

        val outcome = handler.handleDisconnect("AA:BB")

        assertEquals(SaveOutcome.Saved, outcome)
        assertEquals(1.0, repo.savedLocationFlow.value?.latitude)
    }

    @Test
    fun `second disconnect replaces previous location`() = runTest {
        val repo = FakeSettingsRepository().apply {
            setSelectedDevice(TrackedDevice("Car", "AA:BB"))
        }
        val first = BluetoothDisconnectHandler(repo, FakeLocationProvider(LocationLookupResult.Success(1.0, 2.0, "A")), fixedClock)
        val second = BluetoothDisconnectHandler(repo, FakeLocationProvider(LocationLookupResult.Success(3.0, 4.0, "B")), fixedClock)

        first.handleDisconnect("AA:BB")
        second.handleDisconnect("AA:BB")

        assertEquals(3.0, repo.savedLocationFlow.value?.latitude)
        assertEquals("B", repo.savedLocationFlow.value?.address)
    }

    @Test
    fun `location failure keeps previous saved location and records error`() = runTest {
        val repo = FakeSettingsRepository().apply {
            setSelectedDevice(TrackedDevice("Car", "AA:BB"))
        }
        BluetoothDisconnectHandler(repo, FakeLocationProvider(LocationLookupResult.Success(1.0, 2.0, "A")), fixedClock)
            .handleDisconnect("AA:BB")

        val outcome = BluetoothDisconnectHandler(repo, FakeLocationProvider(LocationLookupResult.Timeout), fixedClock)
            .handleDisconnect("AA:BB")

        assertEquals(SaveOutcome.FailedLocationUnavailable, outcome)
        assertEquals(1.0, repo.savedLocationFlow.value?.latitude)
        assertNotNull(repo.lastErrorFlow.value)
    }

    @Test
    fun `clear location removes saved state`() = runTest {
        val repo = FakeSettingsRepository().apply {
            setSelectedDevice(TrackedDevice("Car", "AA:BB"))
            setSavedLocation(
                com.codex.cardisconnecttracker.model.SavedCarLocation(
                    latitude = 1.0,
                    longitude = 2.0,
                    timestampEpochMillis = 1L,
                    formattedTimestamp = "now",
                    address = "A",
                ),
            )
        }

        repo.clearSavedLocation()

        assertNull(repo.savedLocationFlow.value)
    }
}
