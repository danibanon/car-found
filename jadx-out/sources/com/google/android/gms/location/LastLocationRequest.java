package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.libs.identity.ClientIdentity;
import com.google.android.gms.libs.identity.zzeo;
import org.checkerframework.dataflow.qual.Pure;

/* JADX INFO: compiled from: com.google.android.gms:play-services-location@@21.2.0 */
/* JADX INFO: loaded from: classes.dex */
public final class LastLocationRequest extends AbstractSafeParcelable {
    public static final Parcelable.Creator<LastLocationRequest> CREATOR = new zzaa();
    private final long zza;
    private final int zzb;
    private final boolean zzc;
    private final ClientIdentity zzd;

    /* JADX INFO: compiled from: com.google.android.gms:play-services-location@@21.2.0 */
    public static final class Builder {
        private long zza;
        private int zzb;
        private final boolean zzc;
        private final ClientIdentity zzd;

        public Builder() {
            this.zza = Long.MAX_VALUE;
            this.zzb = 0;
            this.zzc = false;
            this.zzd = null;
        }

        public Builder(LastLocationRequest request) {
            this.zza = request.getMaxUpdateAgeMillis();
            this.zzb = request.getGranularity();
            this.zzc = request.zza();
            this.zzd = request.zzb();
        }

        public LastLocationRequest build() {
            return new LastLocationRequest(this.zza, this.zzb, this.zzc, this.zzd);
        }

        public Builder setGranularity(int granularity) {
            zzq.zza(granularity);
            this.zzb = granularity;
            return this;
        }

        public Builder setMaxUpdateAgeMillis(long maxUpdateAgeMillis) {
            Preconditions.checkArgument(maxUpdateAgeMillis > 0, "maxUpdateAgeMillis must be greater than 0");
            this.zza = maxUpdateAgeMillis;
            return this;
        }
    }

    LastLocationRequest(long j, int i, boolean z, ClientIdentity clientIdentity) {
        this.zza = j;
        this.zzb = i;
        this.zzc = z;
        this.zzd = clientIdentity;
    }

    public boolean equals(Object object) {
        if (!(object instanceof LastLocationRequest)) {
            return false;
        }
        LastLocationRequest lastLocationRequest = (LastLocationRequest) object;
        return this.zza == lastLocationRequest.zza && this.zzb == lastLocationRequest.zzb && this.zzc == lastLocationRequest.zzc && Objects.equal(this.zzd, lastLocationRequest.zzd);
    }

    @Pure
    public int getGranularity() {
        return this.zzb;
    }

    @Pure
    public long getMaxUpdateAgeMillis() {
        return this.zza;
    }

    public int hashCode() {
        return Objects.hashCode(Long.valueOf(this.zza), Integer.valueOf(this.zzb), Boolean.valueOf(this.zzc));
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("LastLocationRequest[");
        if (this.zza != Long.MAX_VALUE) {
            sb.append("maxAge=");
            zzeo.zzc(this.zza, sb);
        }
        if (this.zzb != 0) {
            sb.append(", ");
            sb.append(zzq.zzb(this.zzb));
        }
        if (this.zzc) {
            sb.append(", bypass");
        }
        if (this.zzd != null) {
            sb.append(", impersonation=");
            sb.append(this.zzd);
        }
        sb.append(']');
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int flags) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeLong(parcel, 1, getMaxUpdateAgeMillis());
        SafeParcelWriter.writeInt(parcel, 2, getGranularity());
        SafeParcelWriter.writeBoolean(parcel, 3, this.zzc);
        SafeParcelWriter.writeParcelable(parcel, 5, this.zzd, flags, false);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }

    @Pure
    public final boolean zza() {
        return this.zzc;
    }

    @Pure
    public final ClientIdentity zzb() {
        return this.zzd;
    }
}
