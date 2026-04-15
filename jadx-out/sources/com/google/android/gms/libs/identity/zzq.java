package com.google.android.gms.libs.identity;

import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-location@@21.2.0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class zzq extends zzb implements zzr {
    public zzq() {
        super("com.google.android.gms.location.internal.IFusedLocationProviderCallback");
    }

    @Override // com.google.android.gms.libs.identity.zzb
    protected final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        switch (i) {
            case 1:
                zzl zzlVar = (zzl) zzc.zza(parcel, zzl.CREATOR);
                zzc.zzd(parcel);
                zzd(zzlVar);
                return true;
            case 2:
                zze();
                return true;
            default:
                return false;
        }
    }
}
