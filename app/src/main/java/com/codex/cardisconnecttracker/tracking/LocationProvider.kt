package com.codex.cardisconnecttracker.tracking

import android.annotation.SuppressLint
import android.content.Context
import android.location.Geocoder
import android.os.Build
import com.codex.cardisconnecttracker.debug.DebugHooks
import com.codex.cardisconnecttracker.model.LocationLookupResult
import com.google.android.gms.location.CurrentLocationRequest
import com.google.android.gms.location.LocationServices
import kotlinx.coroutines.suspendCancellableCoroutine
import kotlinx.coroutines.tasks.await
import kotlinx.coroutines.withTimeoutOrNull
import java.util.Locale
import kotlin.coroutines.resume

interface LocationProvider {
    suspend fun lookupLocation(): LocationLookupResult
}

interface ReverseGeocoder {
    suspend fun reverseGeocode(latitude: Double, longitude: Double): String?
}

class GeocoderReverseGeocoder(private val context: Context) : ReverseGeocoder {
    override suspend fun reverseGeocode(latitude: Double, longitude: Double): String? {
        val geocoder = Geocoder(context, Locale.getDefault())
        return if (Build.VERSION.SDK_INT >= 33) {
            suspendCancellableCoroutine { continuation ->
                geocoder.getFromLocation(latitude, longitude, 1) { addresses ->
                    continuation.resume(addresses.firstOrNull()?.getAddressLine(0))
                }
            }
        } else {
            @Suppress("DEPRECATION")
            geocoder.getFromLocation(latitude, longitude, 1)
                ?.firstOrNull()
                ?.getAddressLine(0)
        }
    }
}

class PlayServicesLocationProvider(
    context: Context,
    private val reverseGeocoder: ReverseGeocoder,
    private val debugHooks: DebugHooks,
) : LocationProvider {
    private val fused = LocationServices.getFusedLocationProviderClient(context)

    @SuppressLint("MissingPermission")
    override suspend fun lookupLocation(): LocationLookupResult {
        debugHooks.fakeLocationResult()?.let { return it }
        val request = CurrentLocationRequest.Builder()
            .setPriority(com.google.android.gms.location.Priority.PRIORITY_HIGH_ACCURACY)
            .setMaxUpdateAgeMillis(2_000)
            .setDurationMillis(10_000)
            .build()
        val location = withTimeoutOrNull(12_000) {
            fused.getCurrentLocation(request, null).await()
        } ?: return LocationLookupResult.Timeout
        if (location == null) return LocationLookupResult.Unavailable
        val address = runCatching {
            reverseGeocoder.reverseGeocode(location.latitude, location.longitude)
        }.getOrNull()
        return LocationLookupResult.Success(
            latitude = location.latitude,
            longitude = location.longitude,
            address = address,
        )
    }
}
