package com.codex.cardisconnecttracker.ui.screens

import androidx.compose.foundation.background
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.layout.systemBarsPadding
import androidx.compose.foundation.shape.CircleShape
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.outlined.LocationOn
import androidx.compose.material3.Button
import androidx.compose.material3.ButtonDefaults
import androidx.compose.material3.Icon
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.platform.testTag
import androidx.compose.ui.res.painterResource
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.unit.dp
import com.codex.cardisconnecttracker.R
import com.codex.cardisconnecttracker.model.TrackedDevice
import com.codex.cardisconnecttracker.ui.MainViewModel
import com.codex.cardisconnecttracker.ui.UiTags
import com.codex.cardisconnecttracker.ui.components.DeviceTile
import com.codex.cardisconnecttracker.ui.components.InstructionPage

@Composable
fun WelcomeFlow(
    state: MainViewModel.UiState,
    onRequestPermissions: () -> Unit,
    onRefreshDevices: () -> Unit,
    onOpenBatterySettings: () -> Unit,
    onDeviceSelected: (TrackedDevice) -> Unit,
) {
    val needsBasic = !state.permissions.hasForegroundLocation || 
                     (android.os.Build.VERSION.SDK_INT >= 31 && !state.permissions.hasBluetoothPermission) ||
                     (android.os.Build.VERSION.SDK_INT >= 33 && !state.permissions.hasNotificationPermission)
                     
    val needsBackgroundOnly = state.permissions.hasForegroundLocation && 
                             !state.permissions.hasBackgroundLocation &&
                             (android.os.Build.VERSION.SDK_INT >= 29)

    val isBatteryOptimized = state.permissions.isBatteryOptimized
    LaunchedEffect(needsBasic, isBatteryOptimized) {
        if (!needsBasic && isBatteryOptimized) {
            onOpenBatterySettings()
        }
    }

    if (needsBasic || isBatteryOptimized) {
        PermissionWelcomePage(
            onRequestPermissions = onRequestPermissions,
            onOpenBatterySettings = onOpenBatterySettings,
            needsBasic = needsBasic
        )
    } else if (needsBackgroundOnly) {
        InstructionPage(
            title = stringResource(R.string.bg_perm_title),
            description = stringResource(R.string.bg_perm_desc),
            buttonText = stringResource(R.string.bg_perm_button),
            icon = Icons.Outlined.LocationOn,
            onButtonClick = onRequestPermissions
        )
    } else {
        DeviceSelectionWelcomePage(
            state = state,
            onRefreshDevices = onRefreshDevices,
            onDeviceSelected = onDeviceSelected
        )
    }
}

@Composable
private fun PermissionWelcomePage(
    onRequestPermissions: () -> Unit,
    onOpenBatterySettings: () -> Unit,
    needsBasic: Boolean
) {
    Column(
        modifier = Modifier
            .fillMaxSize()
            .background(MaterialTheme.colorScheme.background)
            .systemBarsPadding()
            .padding(32.dp),
        horizontalAlignment = Alignment.CenterHorizontally,
        verticalArrangement = Arrangement.Center
    ) {
        Icon(
            painter = painterResource(R.drawable.ic_car_found),
            contentDescription = null,
            modifier = Modifier.size(160.dp),
            tint = Color.Unspecified
        )
        
        Spacer(modifier = Modifier.height(48.dp))
        
        Text(
            text = stringResource(R.string.welcome_title),
            style = MaterialTheme.typography.headlineLarge,
            fontWeight = FontWeight.Black,
            textAlign = TextAlign.Center,
            color = MaterialTheme.colorScheme.primary
        )
        
        Spacer(modifier = Modifier.height(24.dp))
        
        Text(
            text = stringResource(R.string.welcome_desc),
            style = MaterialTheme.typography.bodyLarge,
            textAlign = TextAlign.Center,
            color = MaterialTheme.colorScheme.onSurfaceVariant,
            modifier = Modifier.padding(horizontal = 16.dp)
        )
        
        Spacer(modifier = Modifier.height(64.dp))

        val buttonText = if (needsBasic) stringResource(R.string.welcome_button) else stringResource(R.string.battery_button)
        val onClick = if (needsBasic) onRequestPermissions else onOpenBatterySettings

        Button(
            onClick = onClick,
            modifier = Modifier
                .fillMaxWidth()
                .height(64.dp)
                .testTag(UiTags.PERM_DIALOG_CONFIRM),
            shape = CircleShape,
            colors = ButtonDefaults.buttonColors(containerColor = MaterialTheme.colorScheme.primary)
        ) {
            Text(buttonText, style = MaterialTheme.typography.titleMedium, fontWeight = FontWeight.Bold)
        }
    }
}

@Composable
private fun DeviceSelectionWelcomePage(
    state: MainViewModel.UiState,
    onRefreshDevices: () -> Unit,
    onDeviceSelected: (TrackedDevice) -> Unit,
) {
    Column(
        modifier = Modifier
            .fillMaxSize()
            .background(MaterialTheme.colorScheme.background)
            .systemBarsPadding()
            .padding(24.dp),
        horizontalAlignment = Alignment.CenterHorizontally
    ) {
        Spacer(modifier = Modifier.height(24.dp))
        
        Icon(
            painter = painterResource(R.drawable.ic_car_found),
            contentDescription = null,
            modifier = Modifier.size(80.dp),
            tint = Color.Unspecified
        )
        
        Spacer(modifier = Modifier.height(24.dp))
        
        Text(
            text = stringResource(R.string.device_setup_title),
            style = MaterialTheme.typography.headlineLarge,
            fontWeight = FontWeight.Black,
            color = MaterialTheme.colorScheme.primary,
            textAlign = TextAlign.Center
        )
        
        Spacer(modifier = Modifier.height(16.dp))
        
        Text(
            text = stringResource(R.string.device_setup_desc),
            style = MaterialTheme.typography.bodyLarge,
            textAlign = TextAlign.Center,
            color = MaterialTheme.colorScheme.onSurfaceVariant,
            modifier = Modifier.padding(horizontal = 24.dp)
        )

        Spacer(modifier = Modifier.height(32.dp))

        Box(modifier = Modifier.weight(1f)) {
            DeviceTile(
                state = state,
                onRefreshDevices = onRefreshDevices,
                onDeviceSelected = onDeviceSelected
            )
        }
    }
}
