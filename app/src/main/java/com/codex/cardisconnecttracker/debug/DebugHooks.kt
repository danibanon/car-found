package com.codex.cardisconnecttracker.debug

import com.codex.cardisconnecttracker.model.LocationLookupResult
import com.codex.cardisconnecttracker.model.TrackedDevice

interface DebugHooks {
    fun fakeLocationResult(): LocationLookupResult? = null
    fun fakeBondedDevices(): List<TrackedDevice>? = null
}

class MutableDebugHooks : DebugHooks {
    private var location: LocationLookupResult? = null
    private var devices: List<TrackedDevice>? = null

    override fun fakeLocationResult(): LocationLookupResult? = location
    override fun fakeBondedDevices(): List<TrackedDevice>? = devices

    fun setFakeLocationResult(result: LocationLookupResult?) {
        location = result
    }

    fun setFakeBondedDevices(result: List<TrackedDevice>?) {
        devices = result
    }
}
