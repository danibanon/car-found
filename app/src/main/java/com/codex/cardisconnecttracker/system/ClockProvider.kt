package com.codex.cardisconnecttracker.system

import java.time.Clock

object SystemClockProvider {
    val clock: Clock = Clock.systemDefaultZone()
}
