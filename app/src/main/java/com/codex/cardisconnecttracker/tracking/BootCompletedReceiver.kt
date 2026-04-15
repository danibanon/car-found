package com.codex.cardisconnecttracker.tracking

import android.content.BroadcastReceiver
import android.content.Context
import android.content.Intent
import com.codex.cardisconnecttracker.CarTrackerApp
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.launch

class BootCompletedReceiver : BroadcastReceiver() {
    override fun onReceive(context: Context, intent: Intent) {
        if (intent.action != Intent.ACTION_BOOT_COMPLETED) return
        val result = goAsync()
        val app = context.applicationContext as CarTrackerApp
        CoroutineScope(Dispatchers.IO).launch {
            if (app.appGraph.bootStartDecider.shouldStart()) {
                app.appGraph.monitorStarter.start()
            }
            result.finish()
        }
    }
}
