package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.libs.identity.zzer;
import java.util.Arrays;
import org.checkerframework.dataflow.qual.Pure;

/* JADX INFO: compiled from: com.google.android.gms:play-services-location@@21.2.0 */
/* JADX INFO: loaded from: classes.dex */
public class DeviceOrientation extends AbstractSafeParcelable {
    public static final Parcelable.Creator<DeviceOrientation> CREATOR = new zzm();
    private final float[] zza;
    private final float zzb;
    private final float zzc;
    private final long zzd;
    private final byte zze;
    private final float zzf;
    private final float zzg;

    DeviceOrientation(float[] fArr, float f, float f2, long j, byte b, float f3, float f4) {
        zzj(fArr);
        zzer.zza(f >= 0.0f && f < 360.0f);
        zzer.zza(f2 >= 0.0f && f2 <= 180.0f);
        zzer.zza(f4 >= 0.0f && f4 <= 180.0f);
        zzer.zza(j >= 0);
        this.zza = fArr;
        this.zzb = f;
        this.zzc = f2;
        this.zzf = f3;
        this.zzg = f4;
        this.zzd = j;
        this.zze = (byte) (((byte) (((byte) (b | 16)) | 4)) | 8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void zzj(float[] fArr) {
        zzer.zzb(fArr != null && fArr.length == 4, "Input attitude array should be of length 4.");
        zzer.zzb((Float.isNaN(fArr[0]) || Float.isNaN(fArr[1]) || Float.isNaN(fArr[2]) || Float.isNaN(fArr[3])) ? false : true, "Input attitude cannot contain NaNs.");
    }

    @Pure
    public boolean equals(Object object) {
        if (this == object) {
            return true;
        }
        if (!(object instanceof DeviceOrientation)) {
            return false;
        }
        DeviceOrientation deviceOrientation = (DeviceOrientation) object;
        boolean z = zza() == deviceOrientation.zza() && (!zza() || Float.compare(this.zzf, deviceOrientation.zzf) == 0);
        boolean z2 = hasConservativeHeadingErrorDegrees() == deviceOrientation.hasConservativeHeadingErrorDegrees() && (!hasConservativeHeadingErrorDegrees() || Float.compare(getConservativeHeadingErrorDegrees(), deviceOrientation.getConservativeHeadingErrorDegrees()) == 0);
        return Float.compare(this.zzb, deviceOrientation.zzb) == 0 && Float.compare(this.zzc, deviceOrientation.zzc) == 0 && z && z2 && this.zzd == deviceOrientation.zzd && Arrays.equals(this.zza, deviceOrientation.zza);
    }

    @Pure
    public float[] getAttitude() {
        return (float[]) this.zza.clone();
    }

    @Pure
    public float getConservativeHeadingErrorDegrees() {
        return this.zzg;
    }

    @Pure
    public long getElapsedRealtimeNs() {
        return this.zzd;
    }

    @Pure
    public float getHeadingDegrees() {
        return this.zzb;
    }

    @Pure
    public float getHeadingErrorDegrees() {
        return this.zzc;
    }

    @Pure
    public boolean hasConservativeHeadingErrorDegrees() {
        return (this.zze & 64) != 0;
    }

    @Pure
    public int hashCode() {
        return Objects.hashCode(Float.valueOf(this.zzb), Float.valueOf(this.zzc), Float.valueOf(this.zzg), Long.valueOf(this.zzd), this.zza, Byte.valueOf(this.zze));
    }

    @Pure
    public String toString() {
        StringBuilder sb = new StringBuilder("DeviceOrientation[");
        sb.append("attitude=");
        sb.append(Arrays.toString(this.zza));
        sb.append(", headingDegrees=");
        sb.append(this.zzb);
        sb.append(", headingErrorDegrees=");
        sb.append(this.zzc);
        if (hasConservativeHeadingErrorDegrees()) {
            sb.append(", conservativeHeadingErrorDegrees=");
            sb.append(this.zzg);
        }
        sb.append(", elapsedRealtimeNs=");
        sb.append(this.zzd);
        sb.append(']');
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeFloatArray(parcel, 1, getAttitude(), false);
        SafeParcelWriter.writeFloat(parcel, 4, getHeadingDegrees());
        SafeParcelWriter.writeFloat(parcel, 5, getHeadingErrorDegrees());
        SafeParcelWriter.writeLong(parcel, 6, getElapsedRealtimeNs());
        SafeParcelWriter.writeByte(parcel, 7, this.zze);
        SafeParcelWriter.writeFloat(parcel, 8, this.zzf);
        SafeParcelWriter.writeFloat(parcel, 9, getConservativeHeadingErrorDegrees());
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }

    @Pure
    public final boolean zza() {
        return (this.zze & 32) != 0;
    }

    final /* synthetic */ float[] zzc() {
        return this.zza;
    }

    final /* synthetic */ float zzd() {
        return this.zzb;
    }

    final /* synthetic */ float zze() {
        return this.zzc;
    }

    final /* synthetic */ long zzf() {
        return this.zzd;
    }

    final /* synthetic */ byte zzg() {
        return this.zze;
    }

    final /* synthetic */ float zzh() {
        return this.zzf;
    }

    final /* synthetic */ float zzi() {
        return this.zzg;
    }

    /* JADX INFO: compiled from: com.google.android.gms:play-services-location@@21.2.0 */
    public static final class Builder {
        private final float[] zza;
        private float zzb;
        private float zzc;
        private long zzd;
        private byte zze;
        private float zzf;
        private float zzg;

        public Builder(DeviceOrientation src) {
            this.zze = (byte) 0;
            DeviceOrientation.zzj(src.zzc());
            this.zza = Arrays.copyOf(src.zzc(), src.zzc().length);
            setHeadingDegrees(src.zzd());
            setHeadingErrorDegrees(src.zze());
            setConservativeHeadingErrorDegrees(src.zzi());
            setElapsedRealtimeNs(src.zzf());
            this.zzf = src.zzh();
            this.zze = src.zzg();
        }

        public DeviceOrientation build() {
            return new DeviceOrientation(this.zza, this.zzb, this.zzc, this.zzd, this.zze, this.zzf, this.zzg);
        }

        public Builder clearConservativeHeadingErrorDegrees() {
            this.zzg = 180.0f;
            int i = this.zze & (-65);
            this.zzf = 0.0f;
            this.zze = (byte) (((byte) i) & (-33));
            return this;
        }

        public Builder setAttitude(float[] attitude) {
            DeviceOrientation.zzj(attitude);
            System.arraycopy(attitude, 0, this.zza, 0, attitude.length);
            return this;
        }

        public Builder setConservativeHeadingErrorDegrees(float conservativeHeadingErrorDegrees) {
            boolean z = false;
            if (conservativeHeadingErrorDegrees >= 0.0f && conservativeHeadingErrorDegrees <= 180.0f) {
                z = true;
            }
            zzer.zzb(z, "conservativeHeadingErrorDegrees should be between 0 and 180.");
            this.zzg = conservativeHeadingErrorDegrees;
            this.zze = (byte) (this.zze | 64);
            Parcelable.Creator<DeviceOrientation> creator = DeviceOrientation.CREATOR;
            this.zzf = conservativeHeadingErrorDegrees < 180.0f ? (float) (2.0d / (1.0d - Math.cos(Math.toRadians(conservativeHeadingErrorDegrees)))) : 0.0f;
            this.zze = (byte) (this.zze | 32);
            return this;
        }

        public Builder setElapsedRealtimeNs(long elapsedRealtimeNs) {
            zzer.zzb(elapsedRealtimeNs >= 0, "elapsedRealtimeNs should be greater than or equal to 0.");
            this.zzd = elapsedRealtimeNs;
            return this;
        }

        public Builder setHeadingDegrees(float headingDegrees) {
            boolean z = false;
            if (headingDegrees >= 0.0f && headingDegrees < 360.0f) {
                z = true;
            }
            zzer.zzb(z, "headingDegrees should be greater than or equal to 0 and less than 360.");
            this.zzb = headingDegrees;
            return this;
        }

        public Builder setHeadingErrorDegrees(float headingErrorDegrees) {
            boolean z = false;
            if (headingErrorDegrees >= 0.0f && headingErrorDegrees <= 180.0f) {
                z = true;
            }
            zzer.zzb(z, "headingErrorDegrees should be between 0 and 180.");
            this.zzc = headingErrorDegrees;
            return this;
        }

        public Builder(float[] attitude, float headingDegrees, float headingErrorDegrees, long elapsedRealtimeNs) {
            this.zze = (byte) 0;
            DeviceOrientation.zzj(attitude);
            this.zza = Arrays.copyOf(attitude, attitude.length);
            setHeadingDegrees(headingDegrees);
            setHeadingErrorDegrees(headingErrorDegrees);
            setElapsedRealtimeNs(elapsedRealtimeNs);
            this.zzf = 0.0f;
            this.zzg = 180.0f;
            this.zze = (byte) 0;
        }
    }
}
