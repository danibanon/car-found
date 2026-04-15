package com.example.cardisconnecttracker.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ScrollView;
import android.widget.Spinner;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.example.cardisconnecttracker.R;
import com.google.android.material.button.MaterialButton;

/* JADX INFO: loaded from: classes3.dex */
public final class ActivityMainBinding implements ViewBinding {
    public final TextView addressText;
    public final MaterialButton clearLocationButton;
    public final TextView coordinatesText;
    public final Spinner deviceSpinner;
    public final MaterialButton grantPermissionsButton;
    public final MaterialButton openMapsButton;
    public final MaterialButton openSettingsButton;
    public final TextView permissionHintText;
    public final MaterialButton refreshDevicesButton;
    private final ScrollView rootView;
    public final TextView statusText;
    public final TextView timestampText;

    private ActivityMainBinding(ScrollView rootView, TextView addressText, MaterialButton clearLocationButton, TextView coordinatesText, Spinner deviceSpinner, MaterialButton grantPermissionsButton, MaterialButton openMapsButton, MaterialButton openSettingsButton, TextView permissionHintText, MaterialButton refreshDevicesButton, TextView statusText, TextView timestampText) {
        this.rootView = rootView;
        this.addressText = addressText;
        this.clearLocationButton = clearLocationButton;
        this.coordinatesText = coordinatesText;
        this.deviceSpinner = deviceSpinner;
        this.grantPermissionsButton = grantPermissionsButton;
        this.openMapsButton = openMapsButton;
        this.openSettingsButton = openSettingsButton;
        this.permissionHintText = permissionHintText;
        this.refreshDevicesButton = refreshDevicesButton;
        this.statusText = statusText;
        this.timestampText = timestampText;
    }

    @Override // androidx.viewbinding.ViewBinding
    public ScrollView getRoot() {
        return this.rootView;
    }

    public static ActivityMainBinding inflate(LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    public static ActivityMainBinding inflate(LayoutInflater inflater, ViewGroup parent, boolean attachToParent) {
        View root = inflater.inflate(R.layout.activity_main, parent, false);
        if (attachToParent) {
            parent.addView(root);
        }
        return bind(root);
    }

    public static ActivityMainBinding bind(View rootView) {
        int id = R.id.addressText;
        TextView addressText = (TextView) ViewBindings.findChildViewById(rootView, id);
        if (addressText != null) {
            id = R.id.clearLocationButton;
            MaterialButton clearLocationButton = (MaterialButton) ViewBindings.findChildViewById(rootView, id);
            if (clearLocationButton != null) {
                id = R.id.coordinatesText;
                TextView coordinatesText = (TextView) ViewBindings.findChildViewById(rootView, id);
                if (coordinatesText != null) {
                    id = R.id.deviceSpinner;
                    Spinner deviceSpinner = (Spinner) ViewBindings.findChildViewById(rootView, id);
                    if (deviceSpinner != null) {
                        id = R.id.grantPermissionsButton;
                        MaterialButton grantPermissionsButton = (MaterialButton) ViewBindings.findChildViewById(rootView, id);
                        if (grantPermissionsButton != null) {
                            id = R.id.openMapsButton;
                            MaterialButton openMapsButton = (MaterialButton) ViewBindings.findChildViewById(rootView, id);
                            if (openMapsButton != null) {
                                id = R.id.openSettingsButton;
                                MaterialButton openSettingsButton = (MaterialButton) ViewBindings.findChildViewById(rootView, id);
                                if (openSettingsButton != null) {
                                    id = R.id.permissionHintText;
                                    TextView permissionHintText = (TextView) ViewBindings.findChildViewById(rootView, id);
                                    if (permissionHintText != null) {
                                        id = R.id.refreshDevicesButton;
                                        MaterialButton refreshDevicesButton = (MaterialButton) ViewBindings.findChildViewById(rootView, id);
                                        if (refreshDevicesButton != null) {
                                            id = R.id.statusText;
                                            TextView statusText = (TextView) ViewBindings.findChildViewById(rootView, id);
                                            if (statusText != null) {
                                                id = R.id.timestampText;
                                                TextView timestampText = (TextView) ViewBindings.findChildViewById(rootView, id);
                                                if (timestampText != null) {
                                                    return new ActivityMainBinding((ScrollView) rootView, addressText, clearLocationButton, coordinatesText, deviceSpinner, grantPermissionsButton, openMapsButton, openSettingsButton, permissionHintText, refreshDevicesButton, statusText, timestampText);
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        String missingId = rootView.getResources().getResourceName(id);
        throw new NullPointerException("Missing required view with ID: ".concat(missingId));
    }
}
