package com.codex.cardisconnecttracker.system

import android.content.Context
import android.content.Intent
import androidx.core.content.ContextCompat
import com.codex.cardisconnecttracker.tracking.BluetoothTrackingService

interface BluetoothMonitorStarter {
    fun start()
    fun stop()
}

class AndroidBluetoothMonitorStarter(private val context: Context) : BluetoothMonitorStarter {
    override fun start() {
        ContextCompat.startForegroundService(
            context,
            Intent(context, BluetoothTrackingService::class.java),
        )
    }

    override fun stop() {
        context.stopService(Intent(context, BluetoothTrackingService::class.java))
    }
}
