package com.example.cardisconnecttracker.tracking;

import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.app.Service;
import android.bluetooth.BluetoothDevice;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Build;
import android.os.IBinder;
import android.util.Log;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.app.NotificationCompat;
import androidx.core.content.ContextCompat;
import com.example.cardisconnecttracker.MainActivity;
import com.example.cardisconnecttracker.R;
import com.example.cardisconnecttracker.data.PreferencesManager;
import com.example.cardisconnecttracker.location.LocationRepository;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.SupervisorKt;

/* JADX INFO: compiled from: BluetoothTrackingService.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000U\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0004*\u0001\u0004\u0018\u0000 \u001f2\u00020\u0001:\u0001\u001fB\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\f\u001a\u00020\rH\u0002J\b\u0010\u000e\u001a\u00020\u000fH\u0002J\u0012\u0010\u0010\u001a\u0004\u0018\u00010\u00112\u0006\u0010\u0012\u001a\u00020\u0013H\u0002J\b\u0010\u0014\u001a\u00020\u0015H\u0002J\b\u0010\u0016\u001a\u00020\u0015H\u0002J\u0014\u0010\u0017\u001a\u0004\u0018\u00010\u00182\b\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0016J\b\u0010\u0019\u001a\u00020\u000fH\u0016J\b\u0010\u001a\u001a\u00020\u000fH\u0016J\"\u0010\u001b\u001a\u00020\u001c2\b\u0010\u0012\u001a\u0004\u0018\u00010\u00132\u0006\u0010\u001d\u001a\u00020\u001c2\u0006\u0010\u001e\u001a\u00020\u001cH\u0016R\u0010\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0005R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006 "}, d2 = {"Lcom/example/cardisconnecttracker/tracking/BluetoothTrackingService;", "Landroid/app/Service;", "()V", "disconnectReceiver", "com/example/cardisconnecttracker/tracking/BluetoothTrackingService$disconnectReceiver$1", "Lcom/example/cardisconnecttracker/tracking/BluetoothTrackingService$disconnectReceiver$1;", "locationRepository", "Lcom/example/cardisconnecttracker/location/LocationRepository;", "preferencesManager", "Lcom/example/cardisconnecttracker/data/PreferencesManager;", "serviceScope", "Lkotlinx/coroutines/CoroutineScope;", "buildNotification", "Landroid/app/Notification;", "createNotificationChannel", "", "extractBluetoothDevice", "Landroid/bluetooth/BluetoothDevice;", "intent", "Landroid/content/Intent;", "hasBluetoothPermission", "", "hasLocationPermissions", "onBind", "Landroid/os/IBinder;", "onCreate", "onDestroy", "onStartCommand", "", "flags", "startId", "Companion", "app_debug"}, k = 1, mv = {1, 9, 0}, xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
public final class BluetoothTrackingService extends Service {
    private static final String CHANNEL_ID = "car_disconnect_tracking";

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final int NOTIFICATION_ID = 42;
    private static final String TAG = "BluetoothTrackingSvc";
    private LocationRepository locationRepository;
    private PreferencesManager preferencesManager;
    private final CoroutineScope serviceScope = CoroutineScopeKt.CoroutineScope(SupervisorKt.SupervisorJob$default((Job) null, 1, (Object) null).plus(Dispatchers.getIO()));
    private final BluetoothTrackingService$disconnectReceiver$1 disconnectReceiver = new BroadcastReceiver() { // from class: com.example.cardisconnecttracker.tracking.BluetoothTrackingService$disconnectReceiver$1
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(intent, "intent");
            if (Intrinsics.areEqual(intent.getAction(), "android.bluetooth.device.action.ACL_DISCONNECTED")) {
                if (this.this$0.hasBluetoothPermission()) {
                    BluetoothDevice device = this.this$0.extractBluetoothDevice(intent);
                    if (device == null) {
                        return;
                    }
                    PreferencesManager preferencesManager = this.this$0.preferencesManager;
                    if (preferencesManager == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("preferencesManager");
                        preferencesManager = null;
                    }
                    String selectedAddress = preferencesManager.getSelectedDeviceAddress();
                    String str = selectedAddress;
                    if (str == null || StringsKt.isBlank(str)) {
                        Log.d("BluetoothTrackingSvc", "Disconnect ignored because no device is selected");
                        return;
                    } else if (StringsKt.equals(device.getAddress(), selectedAddress, true)) {
                        Log.i("BluetoothTrackingSvc", "Selected Bluetooth device disconnected: " + device.getAddress());
                        BuildersKt__Builders_commonKt.launch$default(this.this$0.serviceScope, null, null, new BluetoothTrackingService$disconnectReceiver$1$onReceive$1(this.this$0, null), 3, null);
                        return;
                    } else {
                        Log.d("BluetoothTrackingSvc", "Disconnect ignored for " + device.getAddress());
                        return;
                    }
                }
                Log.w("BluetoothTrackingSvc", "Bluetooth permission missing, disconnect ignored");
            }
        }
    };

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        Context applicationContext = getApplicationContext();
        Intrinsics.checkNotNullExpressionValue(applicationContext, "getApplicationContext(...)");
        this.preferencesManager = new PreferencesManager(applicationContext);
        Context applicationContext2 = getApplicationContext();
        Intrinsics.checkNotNullExpressionValue(applicationContext2, "getApplicationContext(...)");
        this.locationRepository = new LocationRepository(applicationContext2);
        createNotificationChannel();
        startForeground(42, buildNotification());
        IntentFilter filter = new IntentFilter("android.bluetooth.device.action.ACL_DISCONNECTED");
        if (Build.VERSION.SDK_INT >= 33) {
            registerReceiver(this.disconnectReceiver, filter, 4);
        } else {
            registerReceiver(this.disconnectReceiver, filter);
        }
        Log.i(TAG, "Bluetooth tracking service started");
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int flags, int startId) {
        return 1;
    }

    @Override // android.app.Service
    public void onDestroy() {
        try {
            Result.Companion companion = Result.INSTANCE;
            BluetoothTrackingService $this$onDestroy_u24lambda_u240 = this;
            $this$onDestroy_u24lambda_u240.unregisterReceiver($this$onDestroy_u24lambda_u240.disconnectReceiver);
            Result.m163constructorimpl(Unit.INSTANCE);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m163constructorimpl(ResultKt.createFailure(th));
        }
        CoroutineScopeKt.cancel$default(this.serviceScope, null, 1, null);
        Log.i(TAG, "Bluetooth tracking service stopped");
        super.onDestroy();
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return null;
    }

    private final Notification buildNotification() {
        PendingIntent pendingIntent = PendingIntent.getActivity(this, 1001, new Intent(this, (Class<?>) MainActivity.class), 201326592);
        Notification notificationBuild = new NotificationCompat.Builder(this, CHANNEL_ID).setContentTitle(getString(R.string.tracking_notification_title)).setContentText(getString(R.string.tracking_notification_text)).setSmallIcon(R.drawable.ic_stat_car_location).setContentIntent(pendingIntent).setOngoing(true).build();
        Intrinsics.checkNotNullExpressionValue(notificationBuild, "build(...)");
        return notificationBuild;
    }

    private final void createNotificationChannel() {
        NotificationManager manager = (NotificationManager) getSystemService(NotificationManager.class);
        NotificationChannel channel = new NotificationChannel(CHANNEL_ID, getString(R.string.tracking_channel_name), 2);
        manager.createNotificationChannel(channel);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean hasLocationPermissions() {
        boolean fine = ContextCompat.checkSelfPermission(this, "android.permission.ACCESS_FINE_LOCATION") == 0;
        boolean coarse = ContextCompat.checkSelfPermission(this, "android.permission.ACCESS_COARSE_LOCATION") == 0;
        return fine || coarse;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean hasBluetoothPermission() {
        return Build.VERSION.SDK_INT < 31 || ContextCompat.checkSelfPermission(this, "android.permission.BLUETOOTH_CONNECT") == 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final BluetoothDevice extractBluetoothDevice(Intent intent) {
        if (Build.VERSION.SDK_INT >= 33) {
            return (BluetoothDevice) intent.getParcelableExtra("android.bluetooth.device.extra.DEVICE", BluetoothDevice.class);
        }
        return (BluetoothDevice) intent.getParcelableExtra("android.bluetooth.device.extra.DEVICE");
    }

    /* JADX INFO: compiled from: BluetoothTrackingService.kt */
    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\f"}, d2 = {"Lcom/example/cardisconnecttracker/tracking/BluetoothTrackingService$Companion;", "", "()V", "CHANNEL_ID", "", "NOTIFICATION_ID", "", "TAG", "start", "", "context", "Landroid/content/Context;", "app_debug"}, k = 1, mv = {1, 9, 0}, xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final void start(Context context) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intent intent = new Intent(context, (Class<?>) BluetoothTrackingService.class);
            ContextCompat.startForegroundService(context, intent);
        }
    }
}
