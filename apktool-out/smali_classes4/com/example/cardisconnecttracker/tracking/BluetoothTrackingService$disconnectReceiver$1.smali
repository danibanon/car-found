.class public final Lcom/example/cardisconnecttracker/tracking/BluetoothTrackingService$disconnectReceiver$1;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothTrackingService.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/cardisconnecttracker/tracking/BluetoothTrackingService;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "com/example/cardisconnecttracker/tracking/BluetoothTrackingService$disconnectReceiver$1",
        "Landroid/content/BroadcastReceiver;",
        "onReceive",
        "",
        "context",
        "Landroid/content/Context;",
        "intent",
        "Landroid/content/Intent;",
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


# instance fields
.field final synthetic this$0:Lcom/example/cardisconnecttracker/tracking/BluetoothTrackingService;


# direct methods
.method constructor <init>(Lcom/example/cardisconnecttracker/tracking/BluetoothTrackingService;)V
    .locals 0
    .param p1, "$receiver"    # Lcom/example/cardisconnecttracker/tracking/BluetoothTrackingService;

    iput-object p1, p0, Lcom/example/cardisconnecttracker/tracking/BluetoothTrackingService$disconnectReceiver$1;->this$0:Lcom/example/cardisconnecttracker/tracking/BluetoothTrackingService;

    .line 35
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "intent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/example/cardisconnecttracker/tracking/BluetoothTrackingService$disconnectReceiver$1;->this$0:Lcom/example/cardisconnecttracker/tracking/BluetoothTrackingService;

    invoke-static {v0}, Lcom/example/cardisconnecttracker/tracking/BluetoothTrackingService;->access$hasBluetoothPermission(Lcom/example/cardisconnecttracker/tracking/BluetoothTrackingService;)Z

    move-result v0

    const-string v1, "BluetoothTrackingSvc"

    if-nez v0, :cond_1

    .line 39
    const-string v0, "Bluetooth permission missing, disconnect ignored"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    return-void

    .line 43
    :cond_1
    iget-object v0, p0, Lcom/example/cardisconnecttracker/tracking/BluetoothTrackingService$disconnectReceiver$1;->this$0:Lcom/example/cardisconnecttracker/tracking/BluetoothTrackingService;

    invoke-static {v0, p2}, Lcom/example/cardisconnecttracker/tracking/BluetoothTrackingService;->access$extractBluetoothDevice(Lcom/example/cardisconnecttracker/tracking/BluetoothTrackingService;Landroid/content/Intent;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    .line 44
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    :cond_2
    iget-object v2, p0, Lcom/example/cardisconnecttracker/tracking/BluetoothTrackingService$disconnectReceiver$1;->this$0:Lcom/example/cardisconnecttracker/tracking/BluetoothTrackingService;

    invoke-static {v2}, Lcom/example/cardisconnecttracker/tracking/BluetoothTrackingService;->access$getPreferencesManager$p(Lcom/example/cardisconnecttracker/tracking/BluetoothTrackingService;)Lcom/example/cardisconnecttracker/data/PreferencesManager;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_3

    const-string v2, "preferencesManager"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v3

    :cond_3
    invoke-virtual {v2}, Lcom/example/cardisconnecttracker/data/PreferencesManager;->getSelectedDeviceAddress()Ljava/lang/String;

    move-result-object v2

    .line 45
    .local v2, "selectedAddress":Ljava/lang/String;
    move-object v4, v2

    check-cast v4, Ljava/lang/CharSequence;

    const/4 v5, 0x1

    if-eqz v4, :cond_5

    invoke-static {v4}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_0

    :cond_4
    const/4 v4, 0x0

    goto :goto_1

    :cond_5
    :goto_0
    move v4, v5

    :goto_1
    if-eqz v4, :cond_6

    .line 46
    const-string v3, "Disconnect ignored because no device is selected"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    return-void

    .line 50
    :cond_6
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v2, v5}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_7

    .line 51
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Disconnect ignored for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    return-void

    .line 55
    :cond_7
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Selected Bluetooth device disconnected: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    iget-object v1, p0, Lcom/example/cardisconnecttracker/tracking/BluetoothTrackingService$disconnectReceiver$1;->this$0:Lcom/example/cardisconnecttracker/tracking/BluetoothTrackingService;

    invoke-static {v1}, Lcom/example/cardisconnecttracker/tracking/BluetoothTrackingService;->access$getServiceScope$p(Lcom/example/cardisconnecttracker/tracking/BluetoothTrackingService;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v4

    new-instance v1, Lcom/example/cardisconnecttracker/tracking/BluetoothTrackingService$disconnectReceiver$1$onReceive$1;

    iget-object v5, p0, Lcom/example/cardisconnecttracker/tracking/BluetoothTrackingService$disconnectReceiver$1;->this$0:Lcom/example/cardisconnecttracker/tracking/BluetoothTrackingService;

    invoke-direct {v1, v5, v3}, Lcom/example/cardisconnecttracker/tracking/BluetoothTrackingService$disconnectReceiver$1$onReceive$1;-><init>(Lcom/example/cardisconnecttracker/tracking/BluetoothTrackingService;Lkotlin/coroutines/Continuation;)V

    move-object v7, v1

    check-cast v7, Lkotlin/jvm/functions/Function2;

    const/4 v8, 0x3

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v4 .. v9}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 71
    return-void
.end method
