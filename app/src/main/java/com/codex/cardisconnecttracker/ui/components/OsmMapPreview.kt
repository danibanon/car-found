package com.codex.cardisconnecttracker.ui.components

import androidx.compose.runtime.Composable
import androidx.compose.runtime.DisposableEffect
import androidx.compose.runtime.remember
import androidx.compose.ui.Modifier
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.viewinterop.AndroidView
import androidx.core.content.ContextCompat
import androidx.lifecycle.Lifecycle
import androidx.lifecycle.LifecycleEventObserver
import androidx.lifecycle.compose.LocalLifecycleOwner
import com.codex.cardisconnecttracker.R
import org.osmdroid.tileprovider.tilesource.TileSourceFactory
import org.osmdroid.util.GeoPoint
import org.osmdroid.views.CustomZoomButtonsController
import org.osmdroid.views.MapView
import org.osmdroid.views.overlay.Marker

@Composable
fun OsmMapPreview(
    latitude: Double,
    longitude: Double,
    modifier: Modifier = Modifier
) {
    val context = LocalContext.current
    val lifecycleOwner = LocalLifecycleOwner.current
    
    val mapView = remember {
        MapView(context).apply {
            setTileSource(TileSourceFactory.MAPNIK)
            setMultiTouchControls(false)
            zoomController.setVisibility(CustomZoomButtonsController.Visibility.NEVER)
            isClickable = false
            isFocusable = false
            
            // Optimization: Disable unwanted layers
            setHasTransientState(true)
            
            controller.setZoom(18.0)
            val startPoint = GeoPoint(latitude, longitude)
            controller.setCenter(startPoint)

            val marker = Marker(this)
            marker.position = startPoint
            marker.setAnchor(Marker.ANCHOR_CENTER, Marker.ANCHOR_BOTTOM)
            
            val drawable = ContextCompat.getDrawable(context, R.drawable.ic_stat_parking)?.mutate()
            marker.icon = drawable
            
            overlays.add(marker)
        }
    }

    DisposableEffect(lifecycleOwner) {
        val observer = LifecycleEventObserver { _, event ->
            when (event) {
                Lifecycle.Event.ON_RESUME -> mapView.onResume()
                Lifecycle.Event.ON_PAUSE -> mapView.onPause()
                else -> {}
            }
        }
        lifecycleOwner.lifecycle.addObserver(observer)
        onDispose {
            lifecycleOwner.lifecycle.removeObserver(observer)
        }
    }

    AndroidView(
        factory = { mapView },
        modifier = modifier,
        update = { view ->
            val startPoint = GeoPoint(latitude, longitude)
            view.controller.setCenter(startPoint)
            val marker = view.overlays.filterIsInstance<Marker>().firstOrNull()
            marker?.let {
                it.position = startPoint
                val drawable = ContextCompat.getDrawable(context, R.drawable.ic_stat_parking)?.mutate()
                it.icon = drawable
            }
            view.invalidate()
        },
        onRelease = { view ->
            view.onDetach()
        }
    )
}
