package com.codex.cardisconnecttracker.tracking

import com.codex.cardisconnecttracker.data.SettingsRepository
import com.codex.cardisconnecttracker.permissions.PermissionChecker

class BootStartDecider(
    private val permissionChecker: PermissionChecker,
    private val settingsRepository: SettingsRepository,
) {
    suspend fun shouldStart(): Boolean {
        val selected = settingsRepository.getSelectedDevice() ?: return false
        val permissions = permissionChecker.snapshot()
        return selected.address.isNotBlank() && permissions.hasRequiredPermissions
    }
}
