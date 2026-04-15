package com.google.android.gms.libs.identity;

import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: com.google.android.gms:play-services-location@@21.2.0 */
/* JADX INFO: loaded from: classes.dex */
public final class zzfd {
    public static boolean zza(CountDownLatch countDownLatch, long j, TimeUnit timeUnit) throws Throwable {
        boolean zAwait;
        boolean z = false;
        try {
            long nanos = timeUnit.toNanos(30L);
            long jNanoTime = System.nanoTime() + nanos;
            while (true) {
                try {
                    try {
                        zAwait = countDownLatch.await(nanos, TimeUnit.NANOSECONDS);
                        break;
                    } catch (InterruptedException e) {
                        z = true;
                        nanos = jNanoTime - System.nanoTime();
                    }
                } catch (Throwable th) {
                    th = th;
                    if (z) {
                        Thread.currentThread().interrupt();
                    }
                    throw th;
                }
            }
            if (z) {
                Thread.currentThread().interrupt();
            }
            return zAwait;
        } catch (Throwable th2) {
            th = th2;
        }
    }
}
