package com.codex.cardisconnecttracker.system

import android.bluetooth.BluetoothManager
import android.content.Context
import android.os.Build
import com.codex.cardisconnecttracker.debug.DebugHooks
import com.codex.cardisconnecttracker.model.TrackedDevice

interface BondedDevicesProvider {
    fun bondedDevices(): List<TrackedDevice>
}

class DefaultBondedDevicesProvider(
    private val context: Context,
    private val debugHooks: DebugHooks,
) : BondedDevicesProvider {
    override fun bondedDevices(): List<TrackedDevice> {
        debugHooks.fakeBondedDevices()?.let { return it }
        val bluetoothManager = context.getSystemService(BluetoothManager::class.java) ?: return emptyList()
        val adapter = bluetoothManager.adapter ?: return emptyList()
        if (Build.VERSION.SDK_INT >= 31 &&
            context.checkSelfPermission(android.Manifest.permission.BLUETOOTH_CONNECT) != 0
        ) {
            return emptyList()
        }
        return adapter.bondedDevices.orEmpty()
            .map { TrackedDevice(name = it.name ?: it.address, address = it.address) }
            .sortedBy { it.name.lowercase() }
    }
}
