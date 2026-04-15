package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

/* JADX INFO: compiled from: com.google.android.gms:play-services-location@@21.2.0 */
/* JADX INFO: loaded from: classes.dex */
public final class zzm implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
        int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
        float f = 0.0f;
        float f2 = 0.0f;
        float f3 = 0.0f;
        float f4 = 0.0f;
        byte b = 0;
        long j = 0;
        float[] fArrCreateFloatArray = null;
        while (parcel.dataPosition() < iValidateObjectHeader) {
            int header = SafeParcelReader.readHeader(parcel);
            switch (SafeParcelReader.getFieldId(header)) {
                case 1:
                    fArrCreateFloatArray = SafeParcelReader.createFloatArray(parcel, header);
                    break;
                case 2:
                case 3:
                default:
                    SafeParcelReader.skipUnknownField(parcel, header);
                    break;
                case 4:
                    f = SafeParcelReader.readFloat(parcel, header);
                    break;
                case 5:
                    f2 = SafeParcelReader.readFloat(parcel, header);
                    break;
                case 6:
                    j = SafeParcelReader.readLong(parcel, header);
                    break;
                case 7:
                    b = SafeParcelReader.readByte(parcel, header);
                    break;
                case 8:
                    f3 = SafeParcelReader.readFloat(parcel, header);
                    break;
                case 9:
                    f4 = SafeParcelReader.readFloat(parcel, header);
                    break;
            }
        }
        SafeParcelReader.ensureAtEnd(parcel, iValidateObjectHeader);
        return new DeviceOrientation(fArrCreateFloatArray, f, f2, j, b, f3, f4);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i) {
        return new DeviceOrientation[i];
    }
}
