package com.codex.cardisconnecttracker.permissions

import android.Manifest
import android.content.Context
import android.os.Build
import androidx.core.content.ContextCompat
import com.codex.cardisconnecttracker.model.PermissionSnapshot

interface PermissionChecker {
    fun snapshot(): PermissionSnapshot
}

class AndroidPermissionChecker(private val context: Context) : PermissionChecker {
    override fun snapshot(): PermissionSnapshot {
        val powerManager = context.getSystemService(Context.POWER_SERVICE) as android.os.PowerManager
        return PermissionSnapshot(
            hasBluetoothPermission = Build.VERSION.SDK_INT < 31 ||
                ContextCompat.checkSelfPermission(context, Manifest.permission.BLUETOOTH_CONNECT) == 0,
            hasForegroundLocation =
                ContextCompat.checkSelfPermission(context, Manifest.permission.ACCESS_FINE_LOCATION) == 0 ||
                    ContextCompat.checkSelfPermission(context, Manifest.permission.ACCESS_COARSE_LOCATION) == 0,
            hasBackgroundLocation = Build.VERSION.SDK_INT < 29 ||
                ContextCompat.checkSelfPermission(context, Manifest.permission.ACCESS_BACKGROUND_LOCATION) == 0,
            hasNotificationPermission = Build.VERSION.SDK_INT < 33 ||
                ContextCompat.checkSelfPermission(context, Manifest.permission.POST_NOTIFICATIONS) == 0,
            isBatteryOptimized = !powerManager.isIgnoringBatteryOptimizations(context.packageName)
        )
    }
}
