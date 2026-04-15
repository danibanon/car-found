package com.codex.cardisconnecttracker.permissions.manager

import android.Manifest
import android.os.Build
import com.codex.cardisconnecttracker.model.PermissionSnapshot

class PermissionManager {
    fun getRequiredPermissions(snapshot: PermissionSnapshot): Array<String> = buildList {
        // Step 1: Request basic permissions first.
        // Android 11+ prohibits requesting Background Location with ANY other permission.
        val needsBluetooth = Build.VERSION.SDK_INT >= 31 && !snapshot.hasBluetoothPermission
        val needsNotifications = Build.VERSION.SDK_INT >= 33 && !snapshot.hasNotificationPermission
        val needsForeground = !snapshot.hasForegroundLocation

        if (needsBluetooth || needsNotifications || needsForeground) {
            if (needsBluetooth) add(Manifest.permission.BLUETOOTH_CONNECT)
            if (needsNotifications) add(Manifest.permission.POST_NOTIFICATIONS)
            if (needsForeground) {
                add(Manifest.permission.ACCESS_FINE_LOCATION)
                add(Manifest.permission.ACCESS_COARSE_LOCATION)
            }
        } else if (Build.VERSION.SDK_INT >= 29 && !snapshot.hasBackgroundLocation) {
            // Step 2: Only request background if ALL of the above are already granted.
            add(Manifest.permission.ACCESS_BACKGROUND_LOCATION)
        }
    }.toTypedArray()
}
