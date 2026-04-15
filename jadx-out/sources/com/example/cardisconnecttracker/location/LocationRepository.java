package com.example.cardisconnecttracker.location;

import android.content.Context;
import android.location.Location;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.google.android.gms.location.FusedLocationProviderClient;
import com.google.android.gms.location.LocationServices;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Dispatchers;

/* JADX INFO: compiled from: LocationRepository.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\u0018\u0000 \u00132\u00020\u0001:\u0001\u0013B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0010\u0010\t\u001a\u0004\u0018\u00010\nH\u0087@¢\u0006\u0002\u0010\u000bJ\u0010\u0010\f\u001a\u0004\u0018\u00010\rH\u0083@¢\u0006\u0002\u0010\u000bJ\u0010\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0083@¢\u0006\u0002\u0010\u000bJ\u0018\u0010\u000f\u001a\u0004\u0018\u00010\u00102\u0006\u0010\u0011\u001a\u00020\rH\u0082@¢\u0006\u0002\u0010\u0012R\u0016\u0010\u0005\u001a\n \u0006*\u0004\u0018\u00010\u00030\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0014"}, d2 = {"Lcom/example/cardisconnecttracker/location/LocationRepository;", "", "context", "Landroid/content/Context;", "(Landroid/content/Context;)V", "appContext", "kotlin.jvm.PlatformType", "fusedLocationClient", "Lcom/google/android/gms/location/FusedLocationProviderClient;", "fetchCurrentCarLocation", "Lcom/example/cardisconnecttracker/data/CarLocation;", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getLastKnownLocation", "Landroid/location/Location;", "getPreciseLocation", "reverseGeocode", "", "location", "(Landroid/location/Location;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Companion", "app_debug"}, k = 1, mv = {1, 9, 0}, xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
public final class LocationRepository {
    private static final String TAG = "LocationRepository";
    private final Context appContext;
    private final FusedLocationProviderClient fusedLocationClient;

    /* JADX INFO: renamed from: com.example.cardisconnecttracker.location.LocationRepository$fetchCurrentCarLocation$1, reason: invalid class name */
    /* JADX INFO: compiled from: LocationRepository.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
    @DebugMetadata(c = "com.example.cardisconnecttracker.location.LocationRepository", f = "LocationRepository.kt", i = {0, 0, 1, 1, 2, 3}, l = {ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_WIDTH_DEFAULT, ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_WIDTH_DEFAULT, 33, 43}, m = "fetchCurrentCarLocation", n = {"this", "attempt", "this", "attempt", "location", "this"}, s = {"L$0", "I$2", "L$0", "I$2", "L$0", "L$0"})
    static final class AnonymousClass1 extends ContinuationImpl {
        int I$0;
        int I$1;
        int I$2;
        Object L$0;
        int label;
        /* synthetic */ Object result;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return LocationRepository.this.fetchCurrentCarLocation(this);
        }
    }

    /* JADX INFO: renamed from: com.example.cardisconnecttracker.location.LocationRepository$getLastKnownLocation$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: LocationRepository.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
    @DebugMetadata(c = "com.example.cardisconnecttracker.location.LocationRepository", f = "LocationRepository.kt", i = {}, l = {53}, m = "getLastKnownLocation", n = {}, s = {})
    static final class C00321 extends ContinuationImpl {
        int label;
        /* synthetic */ Object result;

        C00321(Continuation<? super C00321> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return LocationRepository.this.getLastKnownLocation(this);
        }
    }

    /* JADX INFO: renamed from: com.example.cardisconnecttracker.location.LocationRepository$getPreciseLocation$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: LocationRepository.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
    @DebugMetadata(c = "com.example.cardisconnecttracker.location.LocationRepository", f = "LocationRepository.kt", i = {}, l = {68}, m = "getPreciseLocation", n = {}, s = {})
    static final class C00331 extends ContinuationImpl {
        int label;
        /* synthetic */ Object result;

        C00331(Continuation<? super C00331> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return LocationRepository.this.getPreciseLocation(this);
        }
    }

    public LocationRepository(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.appContext = context.getApplicationContext();
        FusedLocationProviderClient fusedLocationProviderClient = LocationServices.getFusedLocationProviderClient(this.appContext);
        Intrinsics.checkNotNullExpressionValue(fusedLocationProviderClient, "getFusedLocationProviderClient(...)");
        this.fusedLocationClient = fusedLocationProviderClient;
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0081  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00a5  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00bc  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00e1  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x011c  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0019  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:39:0x0111 -> B:40:0x0117). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object fetchCurrentCarLocation(kotlin.coroutines.Continuation<? super com.example.cardisconnecttracker.data.CarLocation> r23) {
        /*
            Method dump skipped, instruction units count: 306
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.example.cardisconnecttracker.location.LocationRepository.fetchCurrentCarLocation(kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object getLastKnownLocation(kotlin.coroutines.Continuation<? super android.location.Location> r7) {
        /*
            r6 = this;
            boolean r0 = r7 instanceof com.example.cardisconnecttracker.location.LocationRepository.C00321
            if (r0 == 0) goto L14
            r0 = r7
            com.example.cardisconnecttracker.location.LocationRepository$getLastKnownLocation$1 r0 = (com.example.cardisconnecttracker.location.LocationRepository.C00321) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r1 = r1 & r2
            if (r1 == 0) goto L14
            int r7 = r0.label
            int r7 = r7 - r2
            r0.label = r7
            goto L19
        L14:
            com.example.cardisconnecttracker.location.LocationRepository$getLastKnownLocation$1 r0 = new com.example.cardisconnecttracker.location.LocationRepository$getLastKnownLocation$1
            r0.<init>(r7)
        L19:
            r7 = r0
            java.lang.Object r0 = r7.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r7.label
            switch(r2) {
                case 0: goto L33;
                case 1: goto L2d;
                default: goto L25;
            }
        L25:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r0)
            throw r7
        L2d:
            r1 = 0
            kotlin.ResultKt.throwOnFailure(r0)     // Catch: java.lang.Throwable -> L5a
            r2 = r0
            goto L53
        L33:
            kotlin.ResultKt.throwOnFailure(r0)
            r2 = r6
            kotlin.Result$Companion r3 = kotlin.Result.INSTANCE     // Catch: java.lang.Throwable -> L5a
            com.example.cardisconnecttracker.location.LocationRepository r2 = (com.example.cardisconnecttracker.location.LocationRepository) r2     // Catch: java.lang.Throwable -> L5a
            r3 = 0
            com.google.android.gms.location.FusedLocationProviderClient r4 = r2.fusedLocationClient     // Catch: java.lang.Throwable -> L5a
            com.google.android.gms.tasks.Task r4 = r4.getLastLocation()     // Catch: java.lang.Throwable -> L5a
            java.lang.String r2 = "getLastLocation(...)"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r4, r2)     // Catch: java.lang.Throwable -> L5a
            r2 = 1
            r7.label = r2     // Catch: java.lang.Throwable -> L5a
            java.lang.Object r2 = kotlinx.coroutines.tasks.TasksKt.await(r4, r7)     // Catch: java.lang.Throwable -> L5a
            if (r2 != r1) goto L52
            return r1
        L52:
            r1 = r3
        L53:
            android.location.Location r2 = (android.location.Location) r2     // Catch: java.lang.Throwable -> L5a
            java.lang.Object r1 = kotlin.Result.m163constructorimpl(r2)     // Catch: java.lang.Throwable -> L5a
            goto L65
        L5a:
            r1 = move-exception
            kotlin.Result$Companion r2 = kotlin.Result.INSTANCE
            java.lang.Object r1 = kotlin.ResultKt.createFailure(r1)
            java.lang.Object r1 = kotlin.Result.m163constructorimpl(r1)
        L65:
            java.lang.Throwable r2 = kotlin.Result.m166exceptionOrNullimpl(r1)
            if (r2 == 0) goto L75
            r3 = 0
            java.lang.String r4 = "LocationRepository"
            java.lang.String r5 = "lastLocation failed"
            android.util.Log.w(r4, r5, r2)
        L75:
            boolean r2 = kotlin.Result.m169isFailureimpl(r1)
            if (r2 == 0) goto L7c
            r1 = 0
        L7c:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.example.cardisconnecttracker.location.LocationRepository.getLastKnownLocation(kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object getPreciseLocation(kotlin.coroutines.Continuation<? super android.location.Location> r8) {
        /*
            r7 = this;
            boolean r0 = r8 instanceof com.example.cardisconnecttracker.location.LocationRepository.C00331
            if (r0 == 0) goto L14
            r0 = r8
            com.example.cardisconnecttracker.location.LocationRepository$getPreciseLocation$1 r0 = (com.example.cardisconnecttracker.location.LocationRepository.C00331) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r1 = r1 & r2
            if (r1 == 0) goto L14
            int r8 = r0.label
            int r8 = r8 - r2
            r0.label = r8
            goto L19
        L14:
            com.example.cardisconnecttracker.location.LocationRepository$getPreciseLocation$1 r0 = new com.example.cardisconnecttracker.location.LocationRepository$getPreciseLocation$1
            r0.<init>(r8)
        L19:
            r8 = r0
            java.lang.Object r0 = r8.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r8.label
            r3 = 0
            switch(r2) {
                case 0: goto L34;
                case 1: goto L2e;
                default: goto L26;
            }
        L26:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r0)
            throw r8
        L2e:
            r1 = 0
            kotlin.ResultKt.throwOnFailure(r0)     // Catch: java.lang.Throwable -> L7c
            r2 = r0
            goto L75
        L34:
            kotlin.ResultKt.throwOnFailure(r0)
            r2 = r7
            com.google.android.gms.location.CurrentLocationRequest$Builder r4 = new com.google.android.gms.location.CurrentLocationRequest$Builder
            r4.<init>()
            r5 = 100
            com.google.android.gms.location.CurrentLocationRequest$Builder r4 = r4.setPriority(r5)
            r5 = 2000(0x7d0, double:9.88E-321)
            com.google.android.gms.location.CurrentLocationRequest$Builder r4 = r4.setMaxUpdateAgeMillis(r5)
            r5 = 10000(0x2710, double:4.9407E-320)
            com.google.android.gms.location.CurrentLocationRequest$Builder r4 = r4.setDurationMillis(r5)
            com.google.android.gms.location.CurrentLocationRequest r4 = r4.build()
            java.lang.String r5 = "build(...)"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r4, r5)
            kotlin.Result$Companion r5 = kotlin.Result.INSTANCE     // Catch: java.lang.Throwable -> L7c
            com.example.cardisconnecttracker.location.LocationRepository r2 = (com.example.cardisconnecttracker.location.LocationRepository) r2     // Catch: java.lang.Throwable -> L7c
            r5 = 0
            com.google.android.gms.location.FusedLocationProviderClient r6 = r2.fusedLocationClient     // Catch: java.lang.Throwable -> L7c
            com.google.android.gms.tasks.Task r6 = r6.getCurrentLocation(r4, r3)     // Catch: java.lang.Throwable -> L7c
            java.lang.String r2 = "getCurrentLocation(...)"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r6, r2)     // Catch: java.lang.Throwable -> L7c
            r2 = 1
            r8.label = r2     // Catch: java.lang.Throwable -> L7c
            java.lang.Object r2 = kotlinx.coroutines.tasks.TasksKt.await(r6, r8)     // Catch: java.lang.Throwable -> L7c
            if (r2 != r1) goto L74
            return r1
        L74:
            r1 = r5
        L75:
            android.location.Location r2 = (android.location.Location) r2     // Catch: java.lang.Throwable -> L7c
            java.lang.Object r1 = kotlin.Result.m163constructorimpl(r2)     // Catch: java.lang.Throwable -> L7c
            goto L87
        L7c:
            r1 = move-exception
            kotlin.Result$Companion r2 = kotlin.Result.INSTANCE
            java.lang.Object r1 = kotlin.ResultKt.createFailure(r1)
            java.lang.Object r1 = kotlin.Result.m163constructorimpl(r1)
        L87:
            java.lang.Throwable r2 = kotlin.Result.m166exceptionOrNullimpl(r1)
            if (r2 == 0) goto L97
            r4 = 0
            java.lang.String r5 = "LocationRepository"
            java.lang.String r6 = "getCurrentLocation failed"
            android.util.Log.w(r5, r6, r2)
        L97:
            boolean r2 = kotlin.Result.m169isFailureimpl(r1)
            if (r2 == 0) goto L9e
            goto L9f
        L9e:
            r3 = r1
        L9f:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.example.cardisconnecttracker.location.LocationRepository.getPreciseLocation(kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX INFO: renamed from: com.example.cardisconnecttracker.location.LocationRepository$reverseGeocode$2, reason: invalid class name */
    /* JADX INFO: compiled from: LocationRepository.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u000e\n\u0002\u0018\u0002\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
    @DebugMetadata(c = "com.example.cardisconnecttracker.location.LocationRepository$reverseGeocode$2", f = "LocationRepository.kt", i = {0, 0}, l = {102}, m = "invokeSuspend", n = {"geocoder", "$completion$iv"}, s = {"L$0", "L$2"})
    static final class AnonymousClass2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super String>, Object> {
        final /* synthetic */ Location $location;
        private /* synthetic */ Object L$0;
        Object L$1;
        Object L$2;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass2(Location location, Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
            this.$location = location;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass2 anonymousClass2 = LocationRepository.this.new AnonymousClass2(this.$location, continuation);
            anonymousClass2.L$0 = obj;
            return anonymousClass2;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super String> continuation) {
            return ((AnonymousClass2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Removed duplicated region for block: B:42:0x00fc  */
        /* JADX WARN: Removed duplicated region for block: B:49:0x0111  */
        /* JADX WARN: Removed duplicated region for block: B:54:? A[RETURN, SYNTHETIC] */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r24) {
            /*
                Method dump skipped, instruction units count: 284
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.example.cardisconnecttracker.location.LocationRepository.AnonymousClass2.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object reverseGeocode(Location location, Continuation<? super String> continuation) {
        return BuildersKt.withContext(Dispatchers.getIO(), new AnonymousClass2(location, null), continuation);
    }
}
