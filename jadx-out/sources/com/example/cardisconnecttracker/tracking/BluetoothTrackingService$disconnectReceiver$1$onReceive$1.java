package com.example.cardisconnecttracker.tracking;

import android.util.Log;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.example.cardisconnecttracker.data.CarLocation;
import com.example.cardisconnecttracker.data.PreferencesManager;
import com.example.cardisconnecttracker.location.LocationRepository;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: compiled from: BluetoothTrackingService.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
@DebugMetadata(c = "com.example.cardisconnecttracker.tracking.BluetoothTrackingService$disconnectReceiver$1$onReceive$1", f = "BluetoothTrackingService.kt", i = {}, l = {62}, m = "invokeSuspend", n = {}, s = {})
final class BluetoothTrackingService$disconnectReceiver$1$onReceive$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    int label;
    final /* synthetic */ BluetoothTrackingService this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    BluetoothTrackingService$disconnectReceiver$1$onReceive$1(BluetoothTrackingService bluetoothTrackingService, Continuation<? super BluetoothTrackingService$disconnectReceiver$1$onReceive$1> continuation) {
        super(2, continuation);
        this.this$0 = bluetoothTrackingService;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new BluetoothTrackingService$disconnectReceiver$1$onReceive$1(this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((BluetoothTrackingService$disconnectReceiver$1$onReceive$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object $result) {
        BluetoothTrackingService$disconnectReceiver$1$onReceive$1 bluetoothTrackingService$disconnectReceiver$1$onReceive$1;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        PreferencesManager preferencesManager = null;
        switch (this.label) {
            case 0:
                ResultKt.throwOnFailure($result);
                bluetoothTrackingService$disconnectReceiver$1$onReceive$1 = this;
                if (bluetoothTrackingService$disconnectReceiver$1$onReceive$1.this$0.hasLocationPermissions()) {
                    LocationRepository locationRepository = bluetoothTrackingService$disconnectReceiver$1$onReceive$1.this$0.locationRepository;
                    if (locationRepository == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("locationRepository");
                        locationRepository = null;
                    }
                    bluetoothTrackingService$disconnectReceiver$1$onReceive$1.label = 1;
                    Object objFetchCurrentCarLocation = locationRepository.fetchCurrentCarLocation(bluetoothTrackingService$disconnectReceiver$1$onReceive$1);
                    if (objFetchCurrentCarLocation == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    $result = objFetchCurrentCarLocation;
                } else {
                    Log.w("BluetoothTrackingSvc", "Location permissions missing at disconnect time");
                    return Unit.INSTANCE;
                }
                break;
            case 1:
                ResultKt.throwOnFailure($result);
                bluetoothTrackingService$disconnectReceiver$1$onReceive$1 = this;
                break;
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        CarLocation location = (CarLocation) $result;
        if (location != null) {
            PreferencesManager preferencesManager2 = bluetoothTrackingService$disconnectReceiver$1$onReceive$1.this$0.preferencesManager;
            if (preferencesManager2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("preferencesManager");
            } else {
                preferencesManager = preferencesManager2;
            }
            preferencesManager.saveCarLocation(location);
            Log.i("BluetoothTrackingSvc", "Saved car location: " + location.getLatitude() + ", " + location.getLongitude());
            return Unit.INSTANCE;
        }
        Log.w("BluetoothTrackingSvc", "Location unavailable after disconnect");
        return Unit.INSTANCE;
    }
}
