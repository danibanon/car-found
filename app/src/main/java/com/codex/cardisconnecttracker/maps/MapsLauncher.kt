package com.codex.cardisconnecttracker.maps

import android.content.Context
import android.content.Intent
import android.net.Uri
import com.codex.cardisconnecttracker.model.SavedCarLocation

interface MapsLauncher {
    fun open(location: SavedCarLocation): Boolean
}

class AndroidMapsLauncher(private val context: Context) : MapsLauncher {
    override fun open(location: SavedCarLocation): Boolean {
        val uri = Uri.parse("geo:${location.latitude},${location.longitude}?q=${location.latitude},${location.longitude}")
        val intent = Intent(Intent.ACTION_VIEW, uri).addFlags(Intent.FLAG_ACTIVITY_NEW_TASK)
        return if (intent.resolveActivity(context.packageManager) != null) {
            context.startActivity(intent)
            true
        } else {
            false
        }
    }
}
