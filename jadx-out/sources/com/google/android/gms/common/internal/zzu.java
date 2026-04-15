package com.google.android.gms.common.internal;

import android.net.Uri;

/* JADX INFO: compiled from: com.google.android.gms:play-services-basement@@18.3.0 */
/* JADX INFO: loaded from: classes.dex */
public final class zzu {
    private static final Uri zza = Uri.parse("https://plus.google.com/");
    private static final Uri zzb = zza.buildUpon().appendPath("circles").appendPath("find").build();
}
