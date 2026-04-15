package com.codex.cardisconnecttracker.ui.theme

import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Shapes
import androidx.compose.material3.Typography
import androidx.compose.material3.lightColorScheme
import androidx.compose.runtime.Composable
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.text.TextStyle
import androidx.compose.ui.text.font.FontFamily
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp

private val ExpressiveColorScheme = lightColorScheme(
    primary = PrimaryVibrant,
    onPrimary = OnPrimaryVibrant,
    primaryContainer = PrimaryTonal,
    onPrimaryContainer = PrimaryVibrant,
    secondary = SecondaryVibrant,
    onSecondary = Color.White,
    secondaryContainer = SecondaryTonal,
    onSecondaryContainer = SecondaryVibrant,
    tertiary = TertiaryVibrant,
    onTertiary = Color.White,
    tertiaryContainer = TertiaryTonal,
    onTertiaryContainer = TertiaryVibrant,
    background = BackgroundExpressive,
    surface = SurfaceExpressive,
    onSurface = OnSurfaceExpressive,
    surfaceVariant = SurfaceVariantExpressive,
    onSurfaceVariant = OnSurfaceVariantExpressive,
    error = ErrorVibrant,
    onError = Color.White
)

private val ExpressiveTypography = Typography(
    headlineLarge = TextStyle(
        fontFamily = FontFamily.Default,
        fontWeight = FontWeight.Black, // High emphasis
        fontSize = 32.sp,
        lineHeight = 40.sp,
        letterSpacing = 0.sp
    ),
    titleLarge = TextStyle(
        fontFamily = FontFamily.Default,
        fontWeight = FontWeight.ExtraBold,
        fontSize = 22.sp,
        lineHeight = 28.sp,
        letterSpacing = 0.sp
    ),
    labelLarge = TextStyle(
        fontFamily = FontFamily.Default,
        fontWeight = FontWeight.Bold,
        fontSize = 14.sp,
        lineHeight = 20.sp,
        letterSpacing = 0.1.sp
    )
)

private val ExpressiveShapes = Shapes(
    small = RoundedCornerShape(12.dp),
    medium = RoundedCornerShape(24.dp),
    large = RoundedCornerShape(32.dp),
    extraLarge = RoundedCornerShape(48.dp) // Expressive cards
)

@Composable
fun CarTrackerTheme(
    content: @Composable () -> Unit
) {
    MaterialTheme(
        colorScheme = ExpressiveColorScheme,
        typography = ExpressiveTypography,
        shapes = ExpressiveShapes,
        content = content
    )
}
