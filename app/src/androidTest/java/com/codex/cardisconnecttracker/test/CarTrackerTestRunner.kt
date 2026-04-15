package com.codex.cardisconnecttracker.test

import android.app.Application
import android.content.Context
import androidx.test.runner.AndroidJUnitRunner
import com.codex.cardisconnecttracker.CarTrackerApp

class CarTrackerTestRunner : AndroidJUnitRunner() {
    override fun newApplication(cl: ClassLoader?, className: String?, context: Context?): Application {
        return super.newApplication(cl, CarTrackerApp::class.java.name, context)
    }
}
