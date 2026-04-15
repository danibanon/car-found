package com.example.cardisconnecttracker.data;

import android.content.Context;
import android.content.SharedPreferences;
import androidx.constraintlayout.widget.ConstraintLayout;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: compiled from: PreferencesManager.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\b\u0018\u0000 \u00142\u00020\u0001:\u0001\u0014B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0006\u0010\b\u001a\u00020\tJ\b\u0010\n\u001a\u0004\u0018\u00010\u000bJ\b\u0010\f\u001a\u0004\u0018\u00010\rJ\b\u0010\u000e\u001a\u0004\u0018\u00010\rJ\u000e\u0010\u000f\u001a\u00020\t2\u0006\u0010\u0010\u001a\u00020\u000bJ\u0016\u0010\u0011\u001a\u00020\t2\u0006\u0010\u0012\u001a\u00020\r2\u0006\u0010\u0013\u001a\u00020\rR\u0016\u0010\u0005\u001a\n \u0007*\u0004\u0018\u00010\u00060\u0006X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0015"}, d2 = {"Lcom/example/cardisconnecttracker/data/PreferencesManager;", "", "context", "Landroid/content/Context;", "(Landroid/content/Context;)V", "prefs", "Landroid/content/SharedPreferences;", "kotlin.jvm.PlatformType", "clearCarLocation", "", "getCarLocation", "Lcom/example/cardisconnecttracker/data/CarLocation;", "getSelectedDeviceAddress", "", "getSelectedDeviceName", "saveCarLocation", "location", "saveSelectedDevice", "name", "address", "Companion", "app_debug"}, k = 1, mv = {1, 9, 0}, xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
public final class PreferencesManager {
    private static final String KEY_ADDRESS = "last_address";
    private static final String KEY_DEVICE_ADDRESS = "selected_device_address";
    private static final String KEY_DEVICE_NAME = "selected_device_name";
    private static final String KEY_LATITUDE = "last_latitude";
    private static final String KEY_LONGITUDE = "last_longitude";
    private static final String KEY_TIMESTAMP = "last_timestamp";
    private final SharedPreferences prefs;

    public PreferencesManager(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.prefs = context.getSharedPreferences("car_disconnect_prefs", 0);
    }

    public final void saveSelectedDevice(String name, String address) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(address, "address");
        SharedPreferences prefs = this.prefs;
        Intrinsics.checkNotNullExpressionValue(prefs, "prefs");
        SharedPreferences.Editor editor$iv = prefs.edit();
        editor$iv.putString(KEY_DEVICE_NAME, name);
        editor$iv.putString(KEY_DEVICE_ADDRESS, address);
        editor$iv.apply();
    }

    public final String getSelectedDeviceName() {
        return this.prefs.getString(KEY_DEVICE_NAME, null);
    }

    public final String getSelectedDeviceAddress() {
        return this.prefs.getString(KEY_DEVICE_ADDRESS, null);
    }

    public final void saveCarLocation(CarLocation location) {
        Intrinsics.checkNotNullParameter(location, "location");
        SharedPreferences prefs = this.prefs;
        Intrinsics.checkNotNullExpressionValue(prefs, "prefs");
        SharedPreferences.Editor editor$iv = prefs.edit();
        editor$iv.putLong(KEY_TIMESTAMP, location.getTimestamp());
        editor$iv.putString(KEY_LATITUDE, String.valueOf(location.getLatitude()));
        editor$iv.putString(KEY_LONGITUDE, String.valueOf(location.getLongitude()));
        editor$iv.putString(KEY_ADDRESS, location.getAddress());
        editor$iv.apply();
    }

    public final CarLocation getCarLocation() {
        Double doubleOrNull;
        Double doubleOrNull2;
        String string = this.prefs.getString(KEY_LATITUDE, null);
        if (string == null || (doubleOrNull = StringsKt.toDoubleOrNull(string)) == null) {
            return null;
        }
        double latitude = doubleOrNull.doubleValue();
        String string2 = this.prefs.getString(KEY_LONGITUDE, null);
        if (string2 == null || (doubleOrNull2 = StringsKt.toDoubleOrNull(string2)) == null) {
            return null;
        }
        double longitude = doubleOrNull2.doubleValue();
        long timestamp = this.prefs.getLong(KEY_TIMESTAMP, 0L);
        if (timestamp == 0) {
            return null;
        }
        return new CarLocation(latitude, longitude, timestamp, this.prefs.getString(KEY_ADDRESS, null));
    }

    public final void clearCarLocation() {
        SharedPreferences prefs = this.prefs;
        Intrinsics.checkNotNullExpressionValue(prefs, "prefs");
        SharedPreferences.Editor editor$iv = prefs.edit();
        editor$iv.remove(KEY_LATITUDE);
        editor$iv.remove(KEY_LONGITUDE);
        editor$iv.remove(KEY_TIMESTAMP);
        editor$iv.remove(KEY_ADDRESS);
        editor$iv.apply();
    }
}
