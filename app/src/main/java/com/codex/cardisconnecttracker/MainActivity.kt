package com.codex.cardisconnecttracker

import android.content.Intent
import android.net.Uri
import android.os.Bundle
import android.provider.Settings
import androidx.activity.ComponentActivity
import androidx.activity.SystemBarStyle
import androidx.activity.compose.rememberLauncherForActivityResult
import androidx.activity.compose.setContent
import androidx.activity.enableEdgeToEdge
import androidx.activity.result.contract.ActivityResultContracts
import androidx.activity.viewModels
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.material3.Surface
import androidx.compose.runtime.Composable
import androidx.compose.runtime.getValue
import androidx.compose.ui.Modifier
import androidx.lifecycle.compose.collectAsStateWithLifecycle
import com.codex.cardisconnecttracker.model.TrackedDevice
import com.codex.cardisconnecttracker.ui.MainViewModel
import com.codex.cardisconnecttracker.ui.MainViewModelFactory
import com.codex.cardisconnecttracker.ui.components.FirstLocationDialog
import com.codex.cardisconnecttracker.ui.screens.DashboardScreen
import com.codex.cardisconnecttracker.ui.screens.SettingsScreen
import com.codex.cardisconnecttracker.ui.screens.WelcomeFlow
import com.codex.cardisconnecttracker.ui.theme.CarTrackerTheme
import org.osmdroid.config.Configuration

class MainActivity : ComponentActivity() {
    private val viewModel: MainViewModel by viewModels {
        MainViewModelFactory((application as CarTrackerApp).appGraph)
    }

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)

        initOsmdroid()

        enableEdgeToEdge(
            statusBarStyle = SystemBarStyle.light(
                android.graphics.Color.TRANSPARENT,
                android.graphics.Color.TRANSPARENT
            ),
            navigationBarStyle = SystemBarStyle.light(
                android.graphics.Color.TRANSPARENT,
                android.graphics.Color.TRANSPARENT
            )
        )
        setContent {
            CarTrackerTheme {
                Surface(
                    modifier = Modifier.fillMaxSize()
                ) {
                    val state by viewModel.uiState.collectAsStateWithLifecycle()
                    val launcher = rememberLauncherForActivityResult(
                        ActivityResultContracts.RequestMultiplePermissions(),
                    ) {
                        viewModel.refreshAfterPermissionChange()
                    }
                    MainContent(
                        state = state,
                        onRequestPermissions = {
                            val next = viewModel.requiredPermissions()
                            if (next.isNotEmpty()) {
                                launcher.launch(next)
                            }
                        },
                        onRefreshDevices = viewModel::refreshDevices,
                        onOpenSettings = ::openAppSettings,
                        onOpenBatterySettings = ::openBatterySettings,
                        onDeviceSelected = viewModel::selectDevice,
                        onOpenMaps = viewModel::openSavedLocationInMaps,
                        onToggleSettings = viewModel::toggleSettings,
                        onDismissFirstLocationDialog = viewModel::dismissFirstLocationDialog
                    )
                }
            }
        }
    }

    override fun onResume() {
        super.onResume()
        viewModel.refreshAfterPermissionChange()
    }

    private fun initOsmdroid() {
        Configuration.getInstance().load(
            applicationContext,
            getSharedPreferences("osmdroid", MODE_PRIVATE)
        )
        Configuration.getInstance().userAgentValue = packageName
        val osmCache = java.io.File(cacheDir, "osmdroid")
        if (!osmCache.exists()) osmCache.mkdirs()
        Configuration.getInstance().osmdroidTileCache = osmCache
    }

    private fun openAppSettings() {
        startActivity(
            Intent(
                Settings.ACTION_APPLICATION_DETAILS_SETTINGS,
                Uri.fromParts("package", packageName, null),
            ),
        )
    }

    private fun openBatterySettings() {
        val intent = Intent(Settings.ACTION_REQUEST_IGNORE_BATTERY_OPTIMIZATIONS).apply {
            data = Uri.parse("package:$packageName")
        }
        startActivity(intent)
    }
}

@Composable
private fun MainContent(
    state: MainViewModel.UiState,
    onRequestPermissions: () -> Unit,
    onRefreshDevices: () -> Unit,
    onOpenSettings: () -> Unit,
    onOpenBatterySettings: () -> Unit,
    onDeviceSelected: (TrackedDevice) -> Unit,
    onOpenMaps: () -> Unit,
    onToggleSettings: (Boolean) -> Unit,
    onDismissFirstLocationDialog: () -> Unit,
) {
    when {
        !state.isSetupComplete -> {
            WelcomeFlow(
                state = state,
                onRequestPermissions = onRequestPermissions,
                onRefreshDevices = onRefreshDevices,
                onOpenBatterySettings = onOpenBatterySettings,
                onDeviceSelected = onDeviceSelected
            )
        }
        state.showSettings -> {
            SettingsScreen(
                state = state,
                onRequestPermissions = onRequestPermissions,
                onRefreshDevices = onRefreshDevices,
                onOpenSettings = onOpenSettings,
                onOpenBatterySettings = onOpenBatterySettings,
                onDeviceSelected = onDeviceSelected,
                onCloseSettings = { onToggleSettings(false) }
            )
        }
        else -> {
            DashboardScreen(
                state = state,
                onOpenMaps = onOpenMaps,
                onOpenSettings = { onToggleSettings(true) }
            )
        }
    }

    if (state.showFirstLocationDialog) {
        FirstLocationDialog(
            deviceName = state.selectedDevice?.name ?: "your car",
            onDismiss = onDismissFirstLocationDialog
        )
    }
}
