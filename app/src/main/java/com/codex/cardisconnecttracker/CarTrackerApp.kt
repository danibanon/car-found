package com.codex.cardisconnecttracker

import android.app.Application
import com.codex.cardisconnecttracker.di.AppGraph

open class CarTrackerApp : Application() {
    lateinit var appGraph: AppGraph
        private set

    override fun onCreate() {
        super.onCreate()
        appGraph = AppGraph(this)
    }
}
