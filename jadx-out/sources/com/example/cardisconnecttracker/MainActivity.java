package com.example.cardisconnecttracker;

import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothDevice;
import android.bluetooth.BluetoothManager;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.SpinnerAdapter;
import android.widget.TextView;
import android.widget.Toast;
import androidx.activity.result.ActivityResultCallback;
import androidx.activity.result.ActivityResultLauncher;
import androidx.activity.result.contract.ActivityResultContracts;
import androidx.appcompat.app.AppCompatActivity;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.content.ContextCompat;
import com.example.cardisconnecttracker.MainActivity;
import com.example.cardisconnecttracker.data.CarLocation;
import com.example.cardisconnecttracker.data.PreferencesManager;
import com.example.cardisconnecttracker.databinding.ActivityMainBinding;
import com.example.cardisconnecttracker.tracking.BluetoothTrackingService;
import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Comparator;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.SetsKt;
import kotlin.comparisons.ComparisonsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: compiled from: MainActivity.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u0000 (2\u00020\u0001:\u0002()B\u0005¢\u0006\u0002\u0010\u0002J\n\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0002J\b\u0010\u0012\u001a\u00020\u000fH\u0002J\b\u0010\u0013\u001a\u00020\u000fH\u0002J\b\u0010\u0014\u001a\u00020\u000fH\u0002J\u000e\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006H\u0002J\b\u0010\u0016\u001a\u00020\u0017H\u0002J\b\u0010\u0018\u001a\u00020\u000fH\u0002J\u0012\u0010\u0019\u001a\u00020\u00172\b\u0010\u001a\u001a\u0004\u0018\u00010\u001bH\u0014J\b\u0010\u001c\u001a\u00020\u0017H\u0014J\b\u0010\u001d\u001a\u00020\u0017H\u0002J\b\u0010\u001e\u001a\u00020\u0017H\u0002J\b\u0010\u001f\u001a\u00020\u0017H\u0002J\b\u0010 \u001a\u00020\u0017H\u0002J\b\u0010!\u001a\u00020\u0017H\u0002J\u0013\u0010\"\u001a\b\u0012\u0004\u0012\u00020\u000b0\nH\u0002¢\u0006\u0002\u0010#J\b\u0010$\u001a\u00020\u0017H\u0002J\b\u0010%\u001a\u00020\u0017H\u0002J\f\u0010&\u001a\u00020\u000b*\u00020'H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082.¢\u0006\u0002\n\u0000R\u0014\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u001a\u0010\b\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000b0\n0\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006*"}, d2 = {"Lcom/example/cardisconnecttracker/MainActivity;", "Landroidx/appcompat/app/AppCompatActivity;", "()V", "binding", "Lcom/example/cardisconnecttracker/databinding/ActivityMainBinding;", "deviceItems", "", "Lcom/example/cardisconnecttracker/MainActivity$DeviceItem;", "permissionLauncher", "Landroidx/activity/result/ActivityResultLauncher;", "", "", "preferencesManager", "Lcom/example/cardisconnecttracker/data/PreferencesManager;", "selectionInitialized", "", "bluetoothAdapter", "Landroid/bluetooth/BluetoothAdapter;", "hasBluetoothAdapter", "hasBluetoothConnectPermission", "hasLocationPermission", "loadPairedDevices", "maybePromptForBackgroundLocation", "", "needsBackgroundLocation", "onCreate", "savedInstanceState", "Landroid/os/Bundle;", "onResume", "openAppLocationSettings", "openSavedLocationInMaps", "populateDeviceSpinner", "refreshUi", "requestPermissionsFlow", "requiredPermissions", "()[Ljava/lang/String;", "setupListeners", "tryStartService", "safeName", "Landroid/bluetooth/BluetoothDevice;", "Companion", "DeviceItem", "app_debug"}, k = 1, mv = {1, 9, 0}, xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
public final class MainActivity extends AppCompatActivity {
    private static final String TAG = "MainActivity";
    private ActivityMainBinding binding;
    private List<DeviceItem> deviceItems = CollectionsKt.emptyList();
    private final ActivityResultLauncher<String[]> permissionLauncher = registerForActivityResult(new ActivityResultContracts.RequestMultiplePermissions(), new ActivityResultCallback() { // from class: com.example.cardisconnecttracker.MainActivity$$ExternalSyntheticLambda0
        @Override // androidx.activity.result.ActivityResultCallback
        public final void onActivityResult(Object obj) {
            MainActivity.permissionLauncher$lambda$0(this.f$0, (Map) obj);
        }
    });
    private PreferencesManager preferencesManager;
    private boolean selectionInitialized;

    /* JADX INFO: Access modifiers changed from: private */
    public static final void permissionLauncher$lambda$0(MainActivity this$0, Map it) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(it, "it");
        this$0.maybePromptForBackgroundLocation();
        this$0.tryStartService();
        this$0.refreshUi();
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        ActivityMainBinding activityMainBindingInflate = ActivityMainBinding.inflate(getLayoutInflater());
        Intrinsics.checkNotNullExpressionValue(activityMainBindingInflate, "inflate(...)");
        this.binding = activityMainBindingInflate;
        ActivityMainBinding activityMainBinding = this.binding;
        if (activityMainBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            activityMainBinding = null;
        }
        setContentView(activityMainBinding.getRoot());
        Context applicationContext = getApplicationContext();
        Intrinsics.checkNotNullExpressionValue(applicationContext, "getApplicationContext(...)");
        this.preferencesManager = new PreferencesManager(applicationContext);
        tryStartService();
        setupListeners();
        populateDeviceSpinner();
        refreshUi();
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        populateDeviceSpinner();
        refreshUi();
    }

    private final void setupListeners() {
        ActivityMainBinding activityMainBinding = this.binding;
        ActivityMainBinding activityMainBinding2 = null;
        if (activityMainBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            activityMainBinding = null;
        }
        activityMainBinding.grantPermissionsButton.setOnClickListener(new View.OnClickListener() { // from class: com.example.cardisconnecttracker.MainActivity$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MainActivity.setupListeners$lambda$1(this.f$0, view);
            }
        });
        ActivityMainBinding activityMainBinding3 = this.binding;
        if (activityMainBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            activityMainBinding3 = null;
        }
        activityMainBinding3.refreshDevicesButton.setOnClickListener(new View.OnClickListener() { // from class: com.example.cardisconnecttracker.MainActivity$$ExternalSyntheticLambda2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MainActivity.setupListeners$lambda$2(this.f$0, view);
            }
        });
        ActivityMainBinding activityMainBinding4 = this.binding;
        if (activityMainBinding4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            activityMainBinding4 = null;
        }
        activityMainBinding4.openSettingsButton.setOnClickListener(new View.OnClickListener() { // from class: com.example.cardisconnecttracker.MainActivity$$ExternalSyntheticLambda3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MainActivity.setupListeners$lambda$3(this.f$0, view);
            }
        });
        ActivityMainBinding activityMainBinding5 = this.binding;
        if (activityMainBinding5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            activityMainBinding5 = null;
        }
        activityMainBinding5.openMapsButton.setOnClickListener(new View.OnClickListener() { // from class: com.example.cardisconnecttracker.MainActivity$$ExternalSyntheticLambda4
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MainActivity.setupListeners$lambda$4(this.f$0, view);
            }
        });
        ActivityMainBinding activityMainBinding6 = this.binding;
        if (activityMainBinding6 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            activityMainBinding6 = null;
        }
        activityMainBinding6.clearLocationButton.setOnClickListener(new View.OnClickListener() { // from class: com.example.cardisconnecttracker.MainActivity$$ExternalSyntheticLambda5
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MainActivity.setupListeners$lambda$5(this.f$0, view);
            }
        });
        ActivityMainBinding activityMainBinding7 = this.binding;
        if (activityMainBinding7 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            activityMainBinding2 = activityMainBinding7;
        }
        activityMainBinding2.deviceSpinner.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() { // from class: com.example.cardisconnecttracker.MainActivity.setupListeners.6
            /* JADX WARN: Removed duplicated region for block: B:15:0x0041  */
            @Override // android.widget.AdapterView.OnItemSelectedListener
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public void onItemSelected(android.widget.AdapterView<?> r6, android.view.View r7, int r8, long r9) {
                /*
                    r5 = this;
                    com.example.cardisconnecttracker.MainActivity r0 = com.example.cardisconnecttracker.MainActivity.this
                    java.util.List r0 = com.example.cardisconnecttracker.MainActivity.access$getDeviceItems$p(r0)
                    java.lang.Object r0 = kotlin.collections.CollectionsKt.getOrNull(r0, r8)
                    com.example.cardisconnecttracker.MainActivity$DeviceItem r0 = (com.example.cardisconnecttracker.MainActivity.DeviceItem) r0
                    if (r0 != 0) goto Lf
                    return
                Lf:
                    java.lang.String r1 = r0.getAddress()
                    java.lang.CharSequence r1 = (java.lang.CharSequence) r1
                    boolean r1 = kotlin.text.StringsKt.isBlank(r1)
                    if (r1 == 0) goto L1c
                    return
                L1c:
                    com.example.cardisconnecttracker.MainActivity r1 = com.example.cardisconnecttracker.MainActivity.this
                    boolean r1 = com.example.cardisconnecttracker.MainActivity.access$getSelectionInitialized$p(r1)
                    r2 = 0
                    java.lang.String r3 = "preferencesManager"
                    if (r1 == 0) goto L41
                    com.example.cardisconnecttracker.MainActivity r1 = com.example.cardisconnecttracker.MainActivity.this
                    com.example.cardisconnecttracker.data.PreferencesManager r1 = com.example.cardisconnecttracker.MainActivity.access$getPreferencesManager$p(r1)
                    if (r1 != 0) goto L33
                    kotlin.jvm.internal.Intrinsics.throwUninitializedPropertyAccessException(r3)
                    r1 = r2
                L33:
                    java.lang.String r1 = r1.getSelectedDeviceAddress()
                    java.lang.String r4 = r0.getAddress()
                    boolean r1 = kotlin.jvm.internal.Intrinsics.areEqual(r1, r4)
                    if (r1 != 0) goto L89
                L41:
                    com.example.cardisconnecttracker.MainActivity r1 = com.example.cardisconnecttracker.MainActivity.this
                    com.example.cardisconnecttracker.data.PreferencesManager r1 = com.example.cardisconnecttracker.MainActivity.access$getPreferencesManager$p(r1)
                    if (r1 != 0) goto L4d
                    kotlin.jvm.internal.Intrinsics.throwUninitializedPropertyAccessException(r3)
                    goto L4e
                L4d:
                    r2 = r1
                L4e:
                    java.lang.String r1 = r0.getName()
                    java.lang.String r3 = r0.getAddress()
                    r2.saveSelectedDevice(r1, r3)
                    java.lang.String r1 = r0.getName()
                    java.lang.String r2 = r0.getAddress()
                    java.lang.StringBuilder r3 = new java.lang.StringBuilder
                    r3.<init>()
                    java.lang.String r4 = "Selected device saved: "
                    java.lang.StringBuilder r3 = r3.append(r4)
                    java.lang.StringBuilder r1 = r3.append(r1)
                    java.lang.String r3 = " ("
                    java.lang.StringBuilder r1 = r1.append(r3)
                    java.lang.StringBuilder r1 = r1.append(r2)
                    java.lang.String r2 = ")"
                    java.lang.StringBuilder r1 = r1.append(r2)
                    java.lang.String r1 = r1.toString()
                    java.lang.String r2 = "MainActivity"
                    android.util.Log.i(r2, r1)
                L89:
                    com.example.cardisconnecttracker.MainActivity r1 = com.example.cardisconnecttracker.MainActivity.this
                    r2 = 1
                    com.example.cardisconnecttracker.MainActivity.access$setSelectionInitialized$p(r1, r2)
                    com.example.cardisconnecttracker.MainActivity r1 = com.example.cardisconnecttracker.MainActivity.this
                    com.example.cardisconnecttracker.MainActivity.access$refreshUi(r1)
                    return
                */
                throw new UnsupportedOperationException("Method not decompiled: com.example.cardisconnecttracker.MainActivity.AnonymousClass6.onItemSelected(android.widget.AdapterView, android.view.View, int, long):void");
            }

            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onNothingSelected(AdapterView<?> parent) {
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupListeners$lambda$1(MainActivity this$0, View it) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.requestPermissionsFlow();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupListeners$lambda$2(MainActivity this$0, View it) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.populateDeviceSpinner();
        this$0.refreshUi();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupListeners$lambda$3(MainActivity this$0, View it) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.openAppLocationSettings();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupListeners$lambda$4(MainActivity this$0, View it) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.openSavedLocationInMaps();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupListeners$lambda$5(MainActivity this$0, View it) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        PreferencesManager preferencesManager = this$0.preferencesManager;
        if (preferencesManager == null) {
            Intrinsics.throwUninitializedPropertyAccessException("preferencesManager");
            preferencesManager = null;
        }
        preferencesManager.clearCarLocation();
        this$0.refreshUi();
    }

    private final void populateDeviceSpinner() {
        this.deviceItems = loadPairedDevices();
        Iterable $this$map$iv = this.deviceItems;
        Collection destination$iv$iv = new ArrayList(CollectionsKt.collectionSizeOrDefault($this$map$iv, 10));
        for (Object item$iv$iv : $this$map$iv) {
            DeviceItem it = (DeviceItem) item$iv$iv;
            destination$iv$iv.add(it.getLabel());
        }
        List labels = (List) destination$iv$iv;
        ActivityMainBinding activityMainBinding = this.binding;
        ActivityMainBinding activityMainBinding2 = null;
        if (activityMainBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            activityMainBinding = null;
        }
        activityMainBinding.deviceSpinner.setAdapter((SpinnerAdapter) new ArrayAdapter(this, android.R.layout.simple_spinner_dropdown_item, labels));
        PreferencesManager preferencesManager = this.preferencesManager;
        if (preferencesManager == null) {
            Intrinsics.throwUninitializedPropertyAccessException("preferencesManager");
            preferencesManager = null;
        }
        String selectedAddress = preferencesManager.getSelectedDeviceAddress();
        int index$iv = 0;
        Iterator<DeviceItem> it2 = this.deviceItems.iterator();
        while (true) {
            if (!it2.hasNext()) {
                index$iv = -1;
                break;
            }
            Object item$iv = it2.next();
            DeviceItem it3 = (DeviceItem) item$iv;
            if (Intrinsics.areEqual(it3.getAddress(), selectedAddress)) {
                break;
            } else {
                index$iv++;
            }
        }
        Integer numValueOf = Integer.valueOf(index$iv);
        int it4 = numValueOf.intValue();
        int it5 = it4 >= 0 ? 1 : 0;
        if (it5 == 0) {
            numValueOf = null;
        }
        int selectedIndex = numValueOf != null ? numValueOf.intValue() : 0;
        ActivityMainBinding activityMainBinding3 = this.binding;
        if (activityMainBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            activityMainBinding2 = activityMainBinding3;
        }
        activityMainBinding2.deviceSpinner.setSelection(selectedIndex, false);
        this.selectionInitialized = true;
    }

    private final List<DeviceItem> loadPairedDevices() {
        BluetoothAdapter adapter = bluetoothAdapter();
        if (adapter == null) {
            return CollectionsKt.listOf(new DeviceItem("Bluetooth not available", "", "Bluetooth not available"));
        }
        if (!hasBluetoothConnectPermission()) {
            return CollectionsKt.listOf(new DeviceItem("Grant Bluetooth permission", "", "Grant Bluetooth permission"));
        }
        Iterable bondedDevices = adapter.getBondedDevices();
        if (bondedDevices == null) {
            bondedDevices = SetsKt.emptySet();
        }
        Iterable $this$map$iv = bondedDevices;
        Collection destination$iv$iv = new ArrayList(CollectionsKt.collectionSizeOrDefault($this$map$iv, 10));
        for (Object item$iv$iv : $this$map$iv) {
            BluetoothDevice device = (BluetoothDevice) item$iv$iv;
            Intrinsics.checkNotNull(device);
            String strSafeName = safeName(device);
            if (StringsKt.isBlank(strSafeName)) {
                strSafeName = device.getAddress();
            }
            String name = strSafeName;
            Intrinsics.checkNotNull(name);
            String address = device.getAddress();
            Intrinsics.checkNotNullExpressionValue(address, "getAddress(...)");
            destination$iv$iv.add(new DeviceItem(name, address, name + "\n" + device.getAddress()));
            adapter = adapter;
            $this$map$iv = $this$map$iv;
        }
        Iterable $this$sortedBy$iv = (List) destination$iv$iv;
        List<DeviceItem> listSortedWith = CollectionsKt.sortedWith($this$sortedBy$iv, new Comparator() { // from class: com.example.cardisconnecttracker.MainActivity$loadPairedDevices$$inlined$sortedBy$1
            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.util.Comparator
            public final int compare(T t, T t2) {
                MainActivity.DeviceItem it = (MainActivity.DeviceItem) t;
                String lowerCase = it.getName().toLowerCase(Locale.ROOT);
                Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
                MainActivity.DeviceItem it2 = (MainActivity.DeviceItem) t2;
                String lowerCase2 = it2.getName().toLowerCase(Locale.ROOT);
                Intrinsics.checkNotNullExpressionValue(lowerCase2, "toLowerCase(...)");
                return ComparisonsKt.compareValues(lowerCase, lowerCase2);
            }
        });
        if (listSortedWith.isEmpty()) {
            listSortedWith = CollectionsKt.listOf(new DeviceItem("No paired devices found", "", "No paired devices found"));
        }
        return listSortedWith;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void refreshUi() {
        String str;
        String str2;
        PreferencesManager preferencesManager = this.preferencesManager;
        ActivityMainBinding activityMainBinding = null;
        if (preferencesManager == null) {
            Intrinsics.throwUninitializedPropertyAccessException("preferencesManager");
            preferencesManager = null;
        }
        String selectedName = preferencesManager.getSelectedDeviceName();
        PreferencesManager preferencesManager2 = this.preferencesManager;
        if (preferencesManager2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("preferencesManager");
            preferencesManager2 = null;
        }
        String selectedAddress = preferencesManager2.getSelectedDeviceAddress();
        boolean permissionsGranted = hasLocationPermission() && hasBluetoothConnectPermission();
        if (permissionsGranted) {
            tryStartService();
        }
        ActivityMainBinding activityMainBinding2 = this.binding;
        if (activityMainBinding2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            activityMainBinding2 = null;
        }
        TextView textView = activityMainBinding2.statusText;
        if (hasBluetoothAdapter()) {
            if (permissionsGranted) {
                if (!needsBackgroundLocation()) {
                    String str3 = selectedAddress;
                    str = str3 == null || StringsKt.isBlank(str3) ? "Device not selected" : "Monitoring: " + selectedName;
                }
            }
        }
        textView.setText(str);
        ActivityMainBinding activityMainBinding3 = this.binding;
        if (activityMainBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            activityMainBinding3 = null;
        }
        TextView textView2 = activityMainBinding3.permissionHintText;
        if (hasBluetoothAdapter()) {
            if (permissionsGranted) {
                if (!needsBackgroundLocation()) {
                    String str4 = selectedAddress;
                    if (!(str4 == null || StringsKt.isBlank(str4))) {
                        str2 = "The foreground service is active. When " + selectedName + " disconnects, the latest location will be saved.";
                    }
                }
            }
        }
        textView2.setText(str2);
        PreferencesManager preferencesManager3 = this.preferencesManager;
        if (preferencesManager3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("preferencesManager");
            preferencesManager3 = null;
        }
        CarLocation location = preferencesManager3.getCarLocation();
        if (location == null) {
            ActivityMainBinding activityMainBinding4 = this.binding;
            if (activityMainBinding4 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                activityMainBinding4 = null;
            }
            activityMainBinding4.coordinatesText.setText("Coordinates: not saved yet");
            ActivityMainBinding activityMainBinding5 = this.binding;
            if (activityMainBinding5 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                activityMainBinding5 = null;
            }
            activityMainBinding5.timestampText.setText("Timestamp: not saved yet");
            ActivityMainBinding activityMainBinding6 = this.binding;
            if (activityMainBinding6 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                activityMainBinding6 = null;
            }
            activityMainBinding6.addressText.setText("Address: unavailable");
            ActivityMainBinding activityMainBinding7 = this.binding;
            if (activityMainBinding7 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                activityMainBinding7 = null;
            }
            activityMainBinding7.openMapsButton.setEnabled(false);
            ActivityMainBinding activityMainBinding8 = this.binding;
            if (activityMainBinding8 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                activityMainBinding8 = null;
            }
            activityMainBinding8.clearLocationButton.setEnabled(false);
        } else {
            ActivityMainBinding activityMainBinding9 = this.binding;
            if (activityMainBinding9 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                activityMainBinding9 = null;
            }
            TextView textView3 = activityMainBinding9.coordinatesText;
            String str5 = String.format("%.6f", Arrays.copyOf(new Object[]{Double.valueOf(location.getLatitude())}, 1));
            Intrinsics.checkNotNullExpressionValue(str5, "format(...)");
            String str6 = String.format("%.6f", Arrays.copyOf(new Object[]{Double.valueOf(location.getLongitude())}, 1));
            Intrinsics.checkNotNullExpressionValue(str6, "format(...)");
            textView3.setText("Coordinates: " + str5 + ", " + str6);
            ActivityMainBinding activityMainBinding10 = this.binding;
            if (activityMainBinding10 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                activityMainBinding10 = null;
            }
            activityMainBinding10.timestampText.setText("Timestamp: " + DateFormat.getDateTimeInstance().format(new Date(location.getTimestamp())));
            ActivityMainBinding activityMainBinding11 = this.binding;
            if (activityMainBinding11 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                activityMainBinding11 = null;
            }
            TextView textView4 = activityMainBinding11.addressText;
            String address = location.getAddress();
            if (address == null) {
                address = "Unavailable";
            }
            textView4.setText("Address: " + address);
            ActivityMainBinding activityMainBinding12 = this.binding;
            if (activityMainBinding12 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                activityMainBinding12 = null;
            }
            activityMainBinding12.openMapsButton.setEnabled(true);
            ActivityMainBinding activityMainBinding13 = this.binding;
            if (activityMainBinding13 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                activityMainBinding13 = null;
            }
            activityMainBinding13.clearLocationButton.setEnabled(true);
        }
        ActivityMainBinding activityMainBinding14 = this.binding;
        if (activityMainBinding14 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            activityMainBinding = activityMainBinding14;
        }
        activityMainBinding.openSettingsButton.setEnabled(hasBluetoothAdapter());
    }

    private final void openSavedLocationInMaps() {
        PreferencesManager preferencesManager = this.preferencesManager;
        if (preferencesManager == null) {
            Intrinsics.throwUninitializedPropertyAccessException("preferencesManager");
            preferencesManager = null;
        }
        CarLocation location = preferencesManager.getCarLocation();
        if (location == null) {
            return;
        }
        Intent geoIntent = new Intent("android.intent.action.VIEW", Uri.parse("geo:" + location.getLatitude() + "," + location.getLongitude() + "?q=" + location.getLatitude() + "," + location.getLongitude() + "(Car)"));
        geoIntent.setPackage("com.google.android.apps.maps");
        try {
            startActivity(geoIntent);
        } catch (ActivityNotFoundException e) {
            Intent webIntent = new Intent("android.intent.action.VIEW", Uri.parse("https://maps.google.com/?q=" + location.getLatitude() + "," + location.getLongitude()));
            startActivity(webIntent);
        }
    }

    private final String[] requiredPermissions() {
        Collection permissions = CollectionsKt.mutableListOf("android.permission.ACCESS_FINE_LOCATION", "android.permission.ACCESS_COARSE_LOCATION");
        if (Build.VERSION.SDK_INT >= 31) {
            permissions.add("android.permission.BLUETOOTH_CONNECT");
        }
        Collection $this$toTypedArray$iv = permissions;
        return (String[]) $this$toTypedArray$iv.toArray(new String[0]);
    }

    private final boolean hasBluetoothAdapter() {
        return bluetoothAdapter() != null;
    }

    private final boolean hasBluetoothConnectPermission() {
        return Build.VERSION.SDK_INT < 31 || ContextCompat.checkSelfPermission(this, "android.permission.BLUETOOTH_CONNECT") == 0;
    }

    private final boolean hasLocationPermission() {
        boolean fine = ContextCompat.checkSelfPermission(this, "android.permission.ACCESS_FINE_LOCATION") == 0;
        boolean coarse = ContextCompat.checkSelfPermission(this, "android.permission.ACCESS_COARSE_LOCATION") == 0;
        return fine || coarse;
    }

    private final void tryStartService() {
        if (hasLocationPermission()) {
            BluetoothTrackingService.Companion companion = BluetoothTrackingService.INSTANCE;
            Context applicationContext = getApplicationContext();
            Intrinsics.checkNotNullExpressionValue(applicationContext, "getApplicationContext(...)");
            companion.start(applicationContext);
        }
    }

    private final void requestPermissionsFlow() {
        if (!hasLocationPermission() || !hasBluetoothConnectPermission()) {
            this.permissionLauncher.launch(requiredPermissions());
        } else if (needsBackgroundLocation()) {
            openAppLocationSettings();
            Toast.makeText(this, "Enable 'Allow all the time' for Location to improve disconnect tracking.", 1).show();
        }
    }

    private final void maybePromptForBackgroundLocation() {
        if (needsBackgroundLocation()) {
            Toast.makeText(this, "Foreground permissions granted. Open app settings and set Location to 'Allow all the time'.", 1).show();
        }
    }

    private final boolean needsBackgroundLocation() {
        return Build.VERSION.SDK_INT >= 29 && hasLocationPermission() && ContextCompat.checkSelfPermission(this, "android.permission.ACCESS_BACKGROUND_LOCATION") != 0;
    }

    private final void openAppLocationSettings() {
        Intent intent = new Intent("android.settings.APPLICATION_DETAILS_SETTINGS", Uri.fromParts("package", getPackageName(), null));
        startActivity(intent);
    }

    private final String safeName(BluetoothDevice $this$safeName) {
        if (Build.VERSION.SDK_INT >= 31) {
            String name = $this$safeName.getName();
            return name == null ? "" : name;
        }
        String name2 = $this$safeName.getName();
        return name2 == null ? "" : name2;
    }

    private final BluetoothAdapter bluetoothAdapter() {
        BluetoothManager bluetoothManager = (BluetoothManager) getSystemService(BluetoothManager.class);
        if (bluetoothManager != null) {
            return bluetoothManager.getAdapter();
        }
        return null;
    }

    /* JADX INFO: compiled from: MainActivity.kt */
    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\f\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003¢\u0006\u0002\u0010\u0006J\t\u0010\u000b\u001a\u00020\u0003HÆ\u0003J\t\u0010\f\u001a\u00020\u0003HÆ\u0003J\t\u0010\r\u001a\u00020\u0003HÆ\u0003J'\u0010\u000e\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0012\u001a\u00020\u0013HÖ\u0001J\t\u0010\u0014\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0005\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\bR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\b¨\u0006\u0015"}, d2 = {"Lcom/example/cardisconnecttracker/MainActivity$DeviceItem;", "", "name", "", "address", "label", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getAddress", "()Ljava/lang/String;", "getLabel", "getName", "component1", "component2", "component3", "copy", "equals", "", "other", "hashCode", "", "toString", "app_debug"}, k = 1, mv = {1, 9, 0}, xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
    public static final /* data */ class DeviceItem {
        private final String address;
        private final String label;
        private final String name;

        public static /* synthetic */ DeviceItem copy$default(DeviceItem deviceItem, String str, String str2, String str3, int i, Object obj) {
            if ((i & 1) != 0) {
                str = deviceItem.name;
            }
            if ((i & 2) != 0) {
                str2 = deviceItem.address;
            }
            if ((i & 4) != 0) {
                str3 = deviceItem.label;
            }
            return deviceItem.copy(str, str2, str3);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final String getName() {
            return this.name;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final String getAddress() {
            return this.address;
        }

        /* JADX INFO: renamed from: component3, reason: from getter */
        public final String getLabel() {
            return this.label;
        }

        public final DeviceItem copy(String name, String address, String label) {
            Intrinsics.checkNotNullParameter(name, "name");
            Intrinsics.checkNotNullParameter(address, "address");
            Intrinsics.checkNotNullParameter(label, "label");
            return new DeviceItem(name, address, label);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof DeviceItem)) {
                return false;
            }
            DeviceItem deviceItem = (DeviceItem) other;
            return Intrinsics.areEqual(this.name, deviceItem.name) && Intrinsics.areEqual(this.address, deviceItem.address) && Intrinsics.areEqual(this.label, deviceItem.label);
        }

        public int hashCode() {
            return (((this.name.hashCode() * 31) + this.address.hashCode()) * 31) + this.label.hashCode();
        }

        public String toString() {
            return "DeviceItem(name=" + this.name + ", address=" + this.address + ", label=" + this.label + ")";
        }

        public DeviceItem(String name, String address, String label) {
            Intrinsics.checkNotNullParameter(name, "name");
            Intrinsics.checkNotNullParameter(address, "address");
            Intrinsics.checkNotNullParameter(label, "label");
            this.name = name;
            this.address = address;
            this.label = label;
        }

        public final String getName() {
            return this.name;
        }

        public final String getAddress() {
            return this.address;
        }

        public final String getLabel() {
            return this.label;
        }
    }
}
