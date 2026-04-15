.class final Lcom/example/cardisconnecttracker/tracking/BluetoothTrackingService$disconnectReceiver$1$onReceive$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "BluetoothTrackingService.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/cardisconnecttracker/tracking/BluetoothTrackingService$disconnectReceiver$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.example.cardisconnecttracker.tracking.BluetoothTrackingService$disconnectReceiver$1$onReceive$1"
    f = "BluetoothTrackingService.kt"
    i = {}
    l = {
        0x3e
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lcom/example/cardisconnecttracker/tracking/BluetoothTrackingService;


# direct methods
.method constructor <init>(Lcom/example/cardisconnecttracker/tracking/BluetoothTrackingService;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/example/cardisconnecttracker/tracking/BluetoothTrackingService;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/example/cardisconnecttracker/tracking/BluetoothTrackingService$disconnectReceiver$1$onReceive$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/example/cardisconnecttracker/tracking/BluetoothTrackingService$disconnectReceiver$1$onReceive$1;->this$0:Lcom/example/cardisconnecttracker/tracking/BluetoothTrackingService;

    const/4 v0, 0x2

    invoke-direct {p0, v0, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/example/cardisconnecttracker/tracking/BluetoothTrackingService$disconnectReceiver$1$onReceive$1;

    iget-object v1, p0, Lcom/example/cardisconnecttracker/tracking/BluetoothTrackingService$disconnectReceiver$1$onReceive$1;->this$0:Lcom/example/cardisconnecttracker/tracking/BluetoothTrackingService;

    invoke-direct {v0, v1, p2}, Lcom/example/cardisconnecttracker/tracking/BluetoothTrackingService$disconnectReceiver$1$onReceive$1;-><init>(Lcom/example/cardisconnecttracker/tracking/BluetoothTrackingService;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/example/cardisconnecttracker/tracking/BluetoothTrackingService$disconnectReceiver$1$onReceive$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/example/cardisconnecttracker/tracking/BluetoothTrackingService$disconnectReceiver$1$onReceive$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lcom/example/cardisconnecttracker/tracking/BluetoothTrackingService$disconnectReceiver$1$onReceive$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lcom/example/cardisconnecttracker/tracking/BluetoothTrackingService$disconnectReceiver$1$onReceive$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 56
    iget v1, p0, Lcom/example/cardisconnecttracker/tracking/BluetoothTrackingService$disconnectReceiver$1$onReceive$1;->label:I

    const/4 v2, 0x0

    const-string v3, "BluetoothTrackingSvc"

    packed-switch v1, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    move-object v0, p0

    .local v0, "this":Lcom/example/cardisconnecttracker/tracking/BluetoothTrackingService$disconnectReceiver$1$onReceive$1;
    .local p1, "$result":Ljava/lang/Object;
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, v0

    move-object v0, p1

    goto :goto_0

    .end local v0    # "this":Lcom/example/cardisconnecttracker/tracking/BluetoothTrackingService$disconnectReceiver$1$onReceive$1;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, p0

    .line 57
    .local v1, "this":Lcom/example/cardisconnecttracker/tracking/BluetoothTrackingService$disconnectReceiver$1$onReceive$1;
    .restart local p1    # "$result":Ljava/lang/Object;
    iget-object v4, v1, Lcom/example/cardisconnecttracker/tracking/BluetoothTrackingService$disconnectReceiver$1$onReceive$1;->this$0:Lcom/example/cardisconnecttracker/tracking/BluetoothTrackingService;

    invoke-static {v4}, Lcom/example/cardisconnecttracker/tracking/BluetoothTrackingService;->access$hasLocationPermissions(Lcom/example/cardisconnecttracker/tracking/BluetoothTrackingService;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 58
    const-string v0, "Location permissions missing at disconnect time"

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 62
    :cond_0
    iget-object v4, v1, Lcom/example/cardisconnecttracker/tracking/BluetoothTrackingService$disconnectReceiver$1$onReceive$1;->this$0:Lcom/example/cardisconnecttracker/tracking/BluetoothTrackingService;

    invoke-static {v4}, Lcom/example/cardisconnecttracker/tracking/BluetoothTrackingService;->access$getLocationRepository$p(Lcom/example/cardisconnecttracker/tracking/BluetoothTrackingService;)Lcom/example/cardisconnecttracker/location/LocationRepository;

    move-result-object v4

    if-nez v4, :cond_1

    const-string v4, "locationRepository"

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v2

    :cond_1
    move-object v5, v1

    check-cast v5, Lkotlin/coroutines/Continuation;

    const/4 v6, 0x1

    iput v6, v1, Lcom/example/cardisconnecttracker/tracking/BluetoothTrackingService$disconnectReceiver$1$onReceive$1;->label:I

    invoke-virtual {v4, v5}, Lcom/example/cardisconnecttracker/location/LocationRepository;->fetchCurrentCarLocation(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v0, :cond_2

    .line 56
    return-object v0

    .line 62
    :cond_2
    move-object v0, p1

    move-object p1, v4

    .line 56
    .end local p1    # "$result":Ljava/lang/Object;
    .local v0, "$result":Ljava/lang/Object;
    :goto_0
    check-cast p1, Lcom/example/cardisconnecttracker/data/CarLocation;

    .line 63
    .local p1, "location":Lcom/example/cardisconnecttracker/data/CarLocation;
    if-nez p1, :cond_3

    .line 64
    .end local p1    # "location":Lcom/example/cardisconnecttracker/data/CarLocation;
    const-string p1, "Location unavailable after disconnect"

    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 68
    .restart local p1    # "location":Lcom/example/cardisconnecttracker/data/CarLocation;
    :cond_3
    iget-object v4, v1, Lcom/example/cardisconnecttracker/tracking/BluetoothTrackingService$disconnectReceiver$1$onReceive$1;->this$0:Lcom/example/cardisconnecttracker/tracking/BluetoothTrackingService;

    invoke-static {v4}, Lcom/example/cardisconnecttracker/tracking/BluetoothTrackingService;->access$getPreferencesManager$p(Lcom/example/cardisconnecttracker/tracking/BluetoothTrackingService;)Lcom/example/cardisconnecttracker/data/PreferencesManager;

    move-result-object v4

    if-nez v4, :cond_4

    const-string v4, "preferencesManager"

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    move-object v2, v4

    :goto_1
    invoke-virtual {v2, p1}, Lcom/example/cardisconnecttracker/data/PreferencesManager;->saveCarLocation(Lcom/example/cardisconnecttracker/data/CarLocation;)V

    .line 69
    invoke-virtual {p1}, Lcom/example/cardisconnecttracker/data/CarLocation;->getLatitude()D

    move-result-wide v4

    invoke-virtual {p1}, Lcom/example/cardisconnecttracker/data/CarLocation;->getLongitude()D

    move-result-wide v6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Saved car location: "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
