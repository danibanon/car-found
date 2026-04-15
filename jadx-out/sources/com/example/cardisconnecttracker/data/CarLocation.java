package com.example.cardisconnecttracker.data;

import androidx.constraintlayout.widget.ConstraintLayout;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: CarLocation.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0006\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u000e\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B)\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b¢\u0006\u0002\u0010\tJ\t\u0010\u0011\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0012\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0013\u001a\u00020\u0006HÆ\u0003J\u000b\u0010\u0014\u001a\u0004\u0018\u00010\bHÆ\u0003J3\u0010\u0015\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\bHÆ\u0001J\u0013\u0010\u0016\u001a\u00020\u00172\b\u0010\u0018\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0019\u001a\u00020\u001aHÖ\u0001J\t\u0010\u001b\u001a\u00020\bHÖ\u0001R\u0013\u0010\u0007\u001a\u0004\u0018\u00010\b¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\rR\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010¨\u0006\u001c"}, d2 = {"Lcom/example/cardisconnecttracker/data/CarLocation;", "", "latitude", "", "longitude", "timestamp", "", "address", "", "(DDJLjava/lang/String;)V", "getAddress", "()Ljava/lang/String;", "getLatitude", "()D", "getLongitude", "getTimestamp", "()J", "component1", "component2", "component3", "component4", "copy", "equals", "", "other", "hashCode", "", "toString", "app_debug"}, k = 1, mv = {1, 9, 0}, xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
public final /* data */ class CarLocation {
    private final String address;
    private final double latitude;
    private final double longitude;
    private final long timestamp;

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final double getLatitude() {
        return this.latitude;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final double getLongitude() {
        return this.longitude;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final long getTimestamp() {
        return this.timestamp;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getAddress() {
        return this.address;
    }

    public final CarLocation copy(double latitude, double longitude, long timestamp, String address) {
        return new CarLocation(latitude, longitude, timestamp, address);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof CarLocation)) {
            return false;
        }
        CarLocation carLocation = (CarLocation) other;
        return Double.compare(this.latitude, carLocation.latitude) == 0 && Double.compare(this.longitude, carLocation.longitude) == 0 && this.timestamp == carLocation.timestamp && Intrinsics.areEqual(this.address, carLocation.address);
    }

    public int hashCode() {
        return (((((Double.hashCode(this.latitude) * 31) + Double.hashCode(this.longitude)) * 31) + Long.hashCode(this.timestamp)) * 31) + (this.address == null ? 0 : this.address.hashCode());
    }

    public String toString() {
        return "CarLocation(latitude=" + this.latitude + ", longitude=" + this.longitude + ", timestamp=" + this.timestamp + ", address=" + this.address + ")";
    }

    public CarLocation(double latitude, double longitude, long timestamp, String address) {
        this.latitude = latitude;
        this.longitude = longitude;
        this.timestamp = timestamp;
        this.address = address;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public /* synthetic */ CarLocation(double d, double d2, long j, String str, int i, DefaultConstructorMarker defaultConstructorMarker) {
        String str2;
        if ((i & 8) == 0) {
            str2 = str;
        } else {
            str2 = null;
        }
        this(d, d2, j, str2);
    }

    public final double getLatitude() {
        return this.latitude;
    }

    public final double getLongitude() {
        return this.longitude;
    }

    public final long getTimestamp() {
        return this.timestamp;
    }

    public final String getAddress() {
        return this.address;
    }
}
