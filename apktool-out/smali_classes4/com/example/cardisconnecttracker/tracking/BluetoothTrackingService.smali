.class public final Lcom/example/cardisconnecttracker/tracking/BluetoothTrackingService;
.super Landroid/app/Service;
.source "BluetoothTrackingService.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/example/cardisconnecttracker/tracking/BluetoothTrackingService$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBluetoothTrackingService.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BluetoothTrackingService.kt\ncom/example/cardisconnecttracker/tracking/BluetoothTrackingService\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,172:1\n1#2:173\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000U\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0004*\u0001\u0004\u0018\u0000 \u001f2\u00020\u0001:\u0001\u001fB\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u000c\u001a\u00020\rH\u0002J\u0008\u0010\u000e\u001a\u00020\u000fH\u0002J\u0012\u0010\u0010\u001a\u0004\u0018\u00010\u00112\u0006\u0010\u0012\u001a\u00020\u0013H\u0002J\u0008\u0010\u0014\u001a\u00020\u0015H\u0002J\u0008\u0010\u0016\u001a\u00020\u0015H\u0002J\u0014\u0010\u0017\u001a\u0004\u0018\u00010\u00182\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0016J\u0008\u0010\u0019\u001a\u00020\u000fH\u0016J\u0008\u0010\u001a\u001a\u00020\u000fH\u0016J\"\u0010\u001b\u001a\u00020\u001c2\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u00132\u0006\u0010\u001d\u001a\u00020\u001c2\u0006\u0010\u001e\u001a\u00020\u001cH\u0016R\u0010\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0005R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006 "
    }
    d2 = {
        "Lcom/example/cardisconnecttracker/tracking/BluetoothTrackingService;",
        "Landroid/app/Service;",
        "()V",
        "disconnectReceiver",
        "com/example/cardisconnecttracker/tracking/BluetoothTrackingService$disconnectReceiver$1",
        "Lcom/example/cardisconnecttracker/tracking/BluetoothTrackingService$disconnectReceiver$1;",
        "locationRepository",
        "Lcom/example/cardisconnecttracker/location/LocationRepository;",
        "preferencesManager",
        "Lcom/example/cardisconnecttracker/data/PreferencesManager;",
        "serviceScope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "buildNotification",
        "Landroid/app/Notification;",
        "createNotificationChannel",
        "",
        "extractBluetoothDevice",
        "Landroid/bluetooth/BluetoothDevice;",
        "intent",
        "Landroid/content/Intent;",
        "hasBluetoothPermission",
        "",
        "hasLocationPermissions",
        "onBind",
        "Landroid/os/IBinder;",
        "onCreate",
        "onDestroy",
        "onStartCommand",
        "",
        "flags",
        "startId",
        "Companion",
        "app_debug"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final CHANNEL_ID:Ljava/lang/String; = "car_disconnect_tracking"

.field public static final Companion:Lcom/example/cardisconnecttracker/tracking/BluetoothTrackingService$Companion;

.field private static final NOTIFICATION_ID:I = 0x2a

.field private static final TAG:Ljava/lang/String; = "BluetoothTrackingSvc"


# instance fields
.field private final disconnectReceiver:Lcom/example/cardisconnecttracker/tracking/BluetoothTrackingService$disconnectReceiver$1;

.field private locationRepository:Lcom/example/cardisconnecttracker/location/LocationRepository;

.field private preferencesManager:Lcom/example/cardisconnecttracker/data/PreferencesManager;

.field private final serviceScope:Lkotlinx/coroutines/CoroutineScope;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/example/cardisconnecttracker/tracking/BluetoothTrackingService$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/example/cardisconnecttracker/tracking/BluetoothTrackingService$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/example/cardisconnecttracker/tracking/BluetoothTrackingService;->Companion:Lcom/example/cardisconnecttracker/tracking/BluetoothTrackingService$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 30
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 31
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {v0, v1, v0}, Lkotlinx/coroutines/SupervisorKt;->SupervisorJob$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object v0

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v1

    check-cast v1, Lkotlin/coroutines/CoroutineContext;

    invoke-interface {v0, v1}, Lkotlinx/coroutines/CompletableJob;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    iput-object v0, p0, Lcom/example/cardisconnecttracker/tracking/BluetoothTrackingService;->serviceScope:Lkotlinx/coroutines/CoroutineScope;

    .line 35
    new-instance v0, Lcom/example/cardisconnecttracker/tracking/BluetoothTrackingService$disconnectReceiver$1;

    invoke-direct {v0, p0}, Lcom/example/cardisconnecttracker/tracking/BluetoothTrackingService$disconnectReceiver$1;-><init>(Lcom/example/cardisconnecttracker/tracking/BluetoothTrackingService;)V

    iput-object v0, p0, Lcom/example/cardisconnecttracker/tracking/BluetoothTrackingService;->disconnectReceiver:Lcom/example/cardisconnecttracker/tracking/BluetoothTrackingService$disconnectReceiver$1;

    .line 30
    return-void
.end method

.method public static final synthetic access$extractBluetoothDevice(Lcom/example/cardisconnecttracker/tracking/BluetoothTrackingService;Landroid/content/Intent;)Landroid/bluetooth/BluetoothDevice;
    .locals 1
    .param p0, "$this"    # Lcom/example/cardisconnecttracker/tracking/BluetoothTrackingService;
    .param p1, "intent"    # Landroid/content/Intent;

    .line 30
    invoke-direct {p0, p1}, Lcom/example/cardisconnecttracker/tracking/BluetoothTrackingService;->extractBluetoothDevice(Landroid/content/Intent;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$getLocationRepository$p(Lcom/example/cardisconnecttracker/tracking/BluetoothTrackingService;)Lcom/example/cardisconnecttracker/location/LocationRepository;
    .locals 1
    .param p0, "$this"    # Lcom/example/cardisconnecttracker/tracking/BluetoothTrackingService;

    .line 30
    iget-object v0, p0, Lcom/example/cardisconnecttracker/tracking/BluetoothTrackingService;->locationRepository:Lcom/example/cardisconnecttracker/location/LocationRepository;

    return-object v0
.end method

.method public static final synthetic access$getPreferencesManager$p(Lcom/example/cardisconnecttracker/tracking/BluetoothTrackingService;)Lcom/example/cardisconnecttracker/data/PreferencesManager;
    .locals 1
    .param p0, "$this"    # Lcom/example/cardisconnecttracker/tracking/BluetoothTrackingService;

    .line 30
    iget-object v0, p0, Lcom/example/cardisconnecttracker/tracking/BluetoothTrackingService;->preferencesManager:Lcom/example/cardisconnecttracker/data/PreferencesManager;

    return-object v0
.end method

.method public static final synthetic access$getServiceScope$p(Lcom/example/cardisconnecttracker/tracking/BluetoothTrackingService;)Lkotlinx/coroutines/CoroutineScope;
    .locals 1
    .param p0, "$this"    # Lcom/example/cardisconnecttracker/tracking/BluetoothTrackingService;

    .line 30
    iget-object v0, p0, Lcom/example/cardisconnecttracker/tracking/BluetoothTrackingService;->serviceScope:Lkotlinx/coroutines/CoroutineScope;

    return-object v0
.end method

.method public static final synthetic access$hasBluetoothPermission(Lcom/example/cardisconnecttracker/tracking/BluetoothTrackingService;)Z
    .locals 1
    .param p0, "$this"    # Lcom/example/cardisconnecttracker/tracking/BluetoothTrackingService;

    .line 30
    invoke-direct {p0}, Lcom/example/cardisconnecttracker/tracking/BluetoothTrackingService;->hasBluetoothPermission()Z

    move-result v0

    return v0
.end method

.method public static final synthetic access$hasLocationPermissions(Lcom/example/cardisconnecttracker/tracking/BluetoothTrackingService;)Z
    .locals 1
    .param p0, "$this"    # Lcom/example/cardisconnecttracker/tracking/BluetoothTrackingService;

    .line 30
    invoke-direct {p0}, Lcom/example/cardisconnecttracker/tracking/BluetoothTrackingService;->hasLocationPermissions()Z

    move-result v0

    return v0
.end method

.method private final buildNotification()Landroid/app/Notification;
    .locals 4

    .line 102
    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    .line 103
    nop

    .line 104
    new-instance v1, Landroid/content/Intent;

    move-object v2, p0

    check-cast v2, Landroid/content/Context;

    const-class v3, Lcom/example/cardisconnecttracker/MainActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 105
    nop

    .line 101
    const/16 v2, 0x3e9

    const/high16 v3, 0xc000000

    invoke-static {v0, v2, v1, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 108
    .local v0, "pendingIntent":Landroid/app/PendingIntent;
    new-instance v1, Landroidx/core/app/NotificationCompat$Builder;

    move-object v2, p0

    check-cast v2, Landroid/content/Context;

    const-string v3, "car_disconnect_tracking"

    invoke-direct {v1, v2, v3}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 109
    sget v2, Lcom/example/cardisconnecttracker/R$string;->tracking_notification_title:I

    invoke-virtual {p0, v2}, Lcom/example/cardisconnecttracker/tracking/BluetoothTrackingService;->getString(I)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    .line 110
    sget v2, Lcom/example/cardisconnecttracker/R$string;->tracking_notification_text:I

    invoke-virtual {p0, v2}, Lcom/example/cardisconnecttracker/tracking/BluetoothTrackingService;->getString(I)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    .line 111
    sget v2, Lcom/example/cardisconnecttracker/R$drawable;->ic_stat_car_location:I

    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    .line 112
    invoke-virtual {v1, v0}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    .line 113
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setOngoing(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    .line 114
    invoke-virtual {v1}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    const-string v2, "build(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    return-object v1
.end method

.method private final createNotificationChannel()V
    .locals 5

    .line 118
    nop

    .line 120
    const-class v0, Landroid/app/NotificationManager;

    invoke-virtual {p0, v0}, Lcom/example/cardisconnecttracker/tracking/BluetoothTrackingService;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 121
    .local v0, "manager":Landroid/app/NotificationManager;
    new-instance v1, Landroid/app/NotificationChannel;

    .line 122
    nop

    .line 123
    sget v2, Lcom/example/cardisconnecttracker/R$string;->tracking_channel_name:I

    invoke-virtual {p0, v2}, Lcom/example/cardisconnecttracker/tracking/BluetoothTrackingService;->getString(I)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    .line 124
    nop

    .line 121
    const-string v3, "car_disconnect_tracking"

    const/4 v4, 0x2

    invoke-direct {v1, v3, v2, v4}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 126
    .local v1, "channel":Landroid/app/NotificationChannel;
    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 127
    return-void
.end method

.method private final extractBluetoothDevice(Landroid/content/Intent;)Landroid/bluetooth/BluetoothDevice;
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 154
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    const-string v2, "android.bluetooth.device.extra.DEVICE"

    if-lt v0, v1, :cond_0

    .line 155
    const-class v0, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    goto :goto_0

    .line 157
    :cond_0
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 154
    :goto_0
    return-object v0
.end method

.method private final hasBluetoothPermission()Z
    .locals 3

    .line 142
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    const/4 v2, 0x1

    if-lt v0, v1, :cond_1

    .line 144
    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    .line 145
    nop

    .line 143
    const-string v1, "android.permission.BLUETOOTH_CONNECT"

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 148
    :cond_1
    nop

    .line 142
    :goto_0
    return v2
.end method

.method private final hasLocationPermissions()Z
    .locals 5

    .line 131
    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    .line 132
    nop

    .line 130
    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 135
    .local v0, "fine":Z
    :goto_0
    move-object v3, p0

    check-cast v3, Landroid/content/Context;

    .line 136
    nop

    .line 134
    const-string v4, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {v3, v4}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    .line 138
    .local v3, "coarse":Z
    :goto_1
    if-nez v0, :cond_3

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :cond_3
    :goto_2
    return v1
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .line 98
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .line 75
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 76
    new-instance v0, Lcom/example/cardisconnecttracker/data/PreferencesManager;

    invoke-virtual {p0}, Lcom/example/cardisconnecttracker/tracking/BluetoothTrackingService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "getApplicationContext(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/example/cardisconnecttracker/data/PreferencesManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/example/cardisconnecttracker/tracking/BluetoothTrackingService;->preferencesManager:Lcom/example/cardisconnecttracker/data/PreferencesManager;

    .line 77
    new-instance v0, Lcom/example/cardisconnecttracker/location/LocationRepository;

    invoke-virtual {p0}, Lcom/example/cardisconnecttracker/tracking/BluetoothTrackingService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/example/cardisconnecttracker/location/LocationRepository;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/example/cardisconnecttracker/tracking/BluetoothTrackingService;->locationRepository:Lcom/example/cardisconnecttracker/location/LocationRepository;

    .line 78
    invoke-direct {p0}, Lcom/example/cardisconnecttracker/tracking/BluetoothTrackingService;->createNotificationChannel()V

    .line 79
    const/16 v0, 0x2a

    invoke-direct {p0}, Lcom/example/cardisconnecttracker/tracking/BluetoothTrackingService;->buildNotification()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/example/cardisconnecttracker/tracking/BluetoothTrackingService;->startForeground(ILandroid/app/Notification;)V

    .line 80
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 81
    .local v0, "filter":Landroid/content/IntentFilter;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x21

    if-lt v1, v2, :cond_0

    .line 82
    iget-object v1, p0, Lcom/example/cardisconnecttracker/tracking/BluetoothTrackingService;->disconnectReceiver:Lcom/example/cardisconnecttracker/tracking/BluetoothTrackingService$disconnectReceiver$1;

    check-cast v1, Landroid/content/BroadcastReceiver;

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v0, v2}, Lcom/example/cardisconnecttracker/tracking/BluetoothTrackingService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    goto :goto_0

    .line 84
    :cond_0
    iget-object v1, p0, Lcom/example/cardisconnecttracker/tracking/BluetoothTrackingService;->disconnectReceiver:Lcom/example/cardisconnecttracker/tracking/BluetoothTrackingService$disconnectReceiver$1;

    check-cast v1, Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/example/cardisconnecttracker/tracking/BluetoothTrackingService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 86
    :goto_0
    const-string v1, "BluetoothTrackingSvc"

    const-string v2, "Bluetooth tracking service started"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .line 92
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, p0

    check-cast v0, Lcom/example/cardisconnecttracker/tracking/BluetoothTrackingService;

    .line 173
    .local v0, "$this$onDestroy_u24lambda_u240":Lcom/example/cardisconnecttracker/tracking/BluetoothTrackingService;
    const/4 v1, 0x0

    .line 92
    .local v1, "$i$a$-runCatching-BluetoothTrackingService$onDestroy$1":I
    iget-object v2, v0, Lcom/example/cardisconnecttracker/tracking/BluetoothTrackingService;->disconnectReceiver:Lcom/example/cardisconnecttracker/tracking/BluetoothTrackingService$disconnectReceiver$1;

    check-cast v2, Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2}, Lcom/example/cardisconnecttracker/tracking/BluetoothTrackingService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .end local v0    # "$this$onDestroy_u24lambda_u240":Lcom/example/cardisconnecttracker/tracking/BluetoothTrackingService;
    .end local v1    # "$i$a$-runCatching-BluetoothTrackingService$onDestroy$1":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    :goto_0
    iget-object v0, p0, Lcom/example/cardisconnecttracker/tracking/BluetoothTrackingService;->serviceScope:Lkotlinx/coroutines/CoroutineScope;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2}, Lkotlinx/coroutines/CoroutineScopeKt;->cancel$default(Lkotlinx/coroutines/CoroutineScope;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 94
    const-string v0, "BluetoothTrackingSvc"

    const-string v1, "Bluetooth tracking service stopped"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 96
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .line 89
    const/4 v0, 0x1

    return v0
.end method
