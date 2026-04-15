.class final Lcom/example/cardisconnecttracker/location/LocationRepository$reverseGeocode$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "LocationRepository.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/cardisconnecttracker/location/LocationRepository;->reverseGeocode(Landroid/location/Location;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
        "Ljava/lang/String;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLocationRepository.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LocationRepository.kt\ncom/example/cardisconnecttracker/location/LocationRepository$reverseGeocode$2\n+ 2 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n*L\n1#1,101:1\n318#2,11:102\n*S KotlinDebug\n*F\n+ 1 LocationRepository.kt\ncom/example/cardisconnecttracker/location/LocationRepository$reverseGeocode$2\n*L\n79#1:102,11\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u000e\n\u0002\u0018\u0002\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u00020\u0002H\u008a@"
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
    c = "com.example.cardisconnecttracker.location.LocationRepository$reverseGeocode$2"
    f = "LocationRepository.kt"
    i = {
        0x0,
        0x0
    }
    l = {
        0x66
    }
    m = "invokeSuspend"
    n = {
        "geocoder",
        "$completion$iv"
    }
    s = {
        "L$0",
        "L$2"
    }
.end annotation


# instance fields
.field final synthetic $location:Landroid/location/Location;

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/example/cardisconnecttracker/location/LocationRepository;


# direct methods
.method constructor <init>(Lcom/example/cardisconnecttracker/location/LocationRepository;Landroid/location/Location;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/example/cardisconnecttracker/location/LocationRepository;",
            "Landroid/location/Location;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/example/cardisconnecttracker/location/LocationRepository$reverseGeocode$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/example/cardisconnecttracker/location/LocationRepository$reverseGeocode$2;->this$0:Lcom/example/cardisconnecttracker/location/LocationRepository;

    iput-object p2, p0, Lcom/example/cardisconnecttracker/location/LocationRepository$reverseGeocode$2;->$location:Landroid/location/Location;

    const/4 v0, 0x2

    invoke-direct {p0, v0, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3
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

    new-instance v0, Lcom/example/cardisconnecttracker/location/LocationRepository$reverseGeocode$2;

    iget-object v1, p0, Lcom/example/cardisconnecttracker/location/LocationRepository$reverseGeocode$2;->this$0:Lcom/example/cardisconnecttracker/location/LocationRepository;

    iget-object v2, p0, Lcom/example/cardisconnecttracker/location/LocationRepository$reverseGeocode$2;->$location:Landroid/location/Location;

    invoke-direct {v0, v1, v2, p2}, Lcom/example/cardisconnecttracker/location/LocationRepository$reverseGeocode$2;-><init>(Lcom/example/cardisconnecttracker/location/LocationRepository;Landroid/location/Location;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/example/cardisconnecttracker/location/LocationRepository$reverseGeocode$2;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/example/cardisconnecttracker/location/LocationRepository$reverseGeocode$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/example/cardisconnecttracker/location/LocationRepository$reverseGeocode$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lcom/example/cardisconnecttracker/location/LocationRepository$reverseGeocode$2;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lcom/example/cardisconnecttracker/location/LocationRepository$reverseGeocode$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 23

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 74
    move-object/from16 v1, p0

    iget v2, v1, Lcom/example/cardisconnecttracker/location/LocationRepository$reverseGeocode$2;->label:I

    const/4 v3, 0x0

    packed-switch v2, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    move-object/from16 v2, p0

    .local v2, "this":Lcom/example/cardisconnecttracker/location/LocationRepository$reverseGeocode$2;
    move-object/from16 v4, p1

    .local v4, "$result":Ljava/lang/Object;
    const/4 v0, 0x0

    .local v0, "$i$a$-runCatching-LocationRepository$reverseGeocode$2$1":I
    const/4 v5, 0x0

    .local v5, "$i$f$suspendCancellableCoroutine":I
    iget-object v6, v2, Lcom/example/cardisconnecttracker/location/LocationRepository$reverseGeocode$2;->L$2:Ljava/lang/Object;

    check-cast v6, Lcom/example/cardisconnecttracker/location/LocationRepository$reverseGeocode$2;

    iget-object v6, v2, Lcom/example/cardisconnecttracker/location/LocationRepository$reverseGeocode$2;->L$1:Ljava/lang/Object;

    check-cast v6, Landroid/location/Location;

    iget-object v6, v2, Lcom/example/cardisconnecttracker/location/LocationRepository$reverseGeocode$2;->L$0:Ljava/lang/Object;

    check-cast v6, Landroid/location/Geocoder;

    :try_start_0
    invoke-static {v4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move/from16 v16, v5

    move-object v5, v4

    goto/16 :goto_0

    .line 77
    .end local v0    # "$i$a$-runCatching-LocationRepository$reverseGeocode$2$1":I
    .end local v5    # "$i$f$suspendCancellableCoroutine":I
    :catchall_0
    move-exception v0

    goto/16 :goto_2

    .line 74
    .end local v2    # "this":Lcom/example/cardisconnecttracker/location/LocationRepository$reverseGeocode$2;
    .end local v4    # "$result":Ljava/lang/Object;
    :pswitch_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v2, p0

    .restart local v2    # "this":Lcom/example/cardisconnecttracker/location/LocationRepository$reverseGeocode$2;
    move-object/from16 v4, p1

    .restart local v4    # "$result":Ljava/lang/Object;
    iget-object v5, v2, Lcom/example/cardisconnecttracker/location/LocationRepository$reverseGeocode$2;->L$0:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/CoroutineScope;

    .line 75
    .local v5, "$this$withContext":Lkotlinx/coroutines/CoroutineScope;
    invoke-static {}, Landroid/location/Geocoder;->isPresent()Z

    move-result v6

    if-nez v6, :cond_0

    return-object v3

    .line 76
    :cond_0
    new-instance v6, Landroid/location/Geocoder;

    iget-object v7, v2, Lcom/example/cardisconnecttracker/location/LocationRepository$reverseGeocode$2;->this$0:Lcom/example/cardisconnecttracker/location/LocationRepository;

    invoke-static {v7}, Lcom/example/cardisconnecttracker/location/LocationRepository;->access$getAppContext$p(Lcom/example/cardisconnecttracker/location/LocationRepository;)Landroid/content/Context;

    move-result-object v7

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;Ljava/util/Locale;)V

    .line 77
    .local v6, "geocoder":Landroid/location/Geocoder;
    iget-object v7, v2, Lcom/example/cardisconnecttracker/location/LocationRepository$reverseGeocode$2;->$location:Landroid/location/Location;

    .end local v5    # "$this$withContext":Lkotlinx/coroutines/CoroutineScope;
    :try_start_1
    sget-object v5, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    const/4 v5, 0x0

    .line 78
    .local v5, "$i$a$-runCatching-LocationRepository$reverseGeocode$2$1":I
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x21

    if-lt v8, v9, :cond_3

    move-object v8, v2

    .line 79
    .local v8, "$completion$iv":Lkotlin/coroutines/Continuation;
    const/16 v16, 0x0

    .line 102
    .local v16, "$i$f$suspendCancellableCoroutine":I
    iput-object v6, v2, Lcom/example/cardisconnecttracker/location/LocationRepository$reverseGeocode$2;->L$0:Ljava/lang/Object;

    iput-object v7, v2, Lcom/example/cardisconnecttracker/location/LocationRepository$reverseGeocode$2;->L$1:Ljava/lang/Object;

    iput-object v8, v2, Lcom/example/cardisconnecttracker/location/LocationRepository$reverseGeocode$2;->L$2:Ljava/lang/Object;

    const/4 v9, 0x1

    iput v9, v2, Lcom/example/cardisconnecttracker/location/LocationRepository$reverseGeocode$2;->label:I

    move-object v10, v8

    check-cast v10, Lkotlin/coroutines/Continuation;

    move-object/from16 v17, v10

    .local v17, "uCont$iv":Lkotlin/coroutines/Continuation;
    const/16 v18, 0x0

    .line 103
    .local v18, "$i$a$-suspendCoroutineUninterceptedOrReturn-CancellableContinuationKt$suspendCancellableCoroutine$2$iv":I
    new-instance v10, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static/range {v17 .. v17}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v11

    invoke-direct {v10, v11, v9}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;I)V

    move-object/from16 v19, v10

    .line 109
    .local v19, "cancellable$iv":Lkotlinx/coroutines/CancellableContinuationImpl;
    invoke-virtual/range {v19 .. v19}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    .line 110
    move-object/from16 v9, v19

    check-cast v9, Lkotlinx/coroutines/CancellableContinuation;

    move-object v15, v9

    .local v15, "continuation":Lkotlinx/coroutines/CancellableContinuation;
    const/16 v20, 0x0

    .line 80
    .local v20, "$i$a$-suspendCancellableCoroutine-LocationRepository$reverseGeocode$2$1$1":I
    invoke-virtual {v7}, Landroid/location/Location;->getLatitude()D

    move-result-wide v10

    invoke-virtual {v7}, Landroid/location/Location;->getLongitude()D

    move-result-wide v12

    new-instance v7, Lcom/example/cardisconnecttracker/location/LocationRepository$reverseGeocode$2$1$1$1;

    invoke-direct {v7, v15}, Lcom/example/cardisconnecttracker/location/LocationRepository$reverseGeocode$2$1$1$1;-><init>(Lkotlinx/coroutines/CancellableContinuation;)V

    check-cast v7, Landroid/location/Geocoder$GeocodeListener;

    const/4 v14, 0x1

    move-object v9, v6

    move-object/from16 v21, v15

    .end local v15    # "continuation":Lkotlinx/coroutines/CancellableContinuation;
    .local v21, "continuation":Lkotlinx/coroutines/CancellableContinuation;
    move-object v15, v7

    invoke-virtual/range {v9 .. v15}, Landroid/location/Geocoder;->getFromLocation(DDILandroid/location/Geocoder$GeocodeListener;)V

    .line 83
    .end local v6    # "geocoder":Landroid/location/Geocoder;
    nop

    .line 110
    .end local v20    # "$i$a$-suspendCancellableCoroutine-LocationRepository$reverseGeocode$2$1$1":I
    .end local v21    # "continuation":Lkotlinx/coroutines/CancellableContinuation;
    nop

    .line 111
    invoke-virtual/range {v19 .. v19}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object v6

    .line 102
    .end local v17    # "uCont$iv":Lkotlin/coroutines/Continuation;
    .end local v18    # "$i$a$-suspendCoroutineUninterceptedOrReturn-CancellableContinuationKt$suspendCancellableCoroutine$2$iv":I
    .end local v19    # "cancellable$iv":Lkotlinx/coroutines/CancellableContinuationImpl;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v7

    if-ne v6, v7, :cond_1

    move-object v7, v8

    check-cast v7, Lkotlin/coroutines/Continuation;

    invoke-static {v7}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v8    # "$completion$iv":Lkotlin/coroutines/Continuation;
    :cond_1
    if-ne v6, v0, :cond_2

    .line 74
    return-object v0

    .line 102
    :cond_2
    move v0, v5

    move-object v5, v4

    move-object v4, v6

    .line 112
    .end local v4    # "$result":Ljava/lang/Object;
    .restart local v0    # "$i$a$-runCatching-LocationRepository$reverseGeocode$2$1":I
    .local v5, "$result":Ljava/lang/Object;
    :goto_0
    nop

    .end local v16    # "$i$f$suspendCancellableCoroutine":I
    :try_start_2
    check-cast v4, Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    .line 77
    .end local v0    # "$i$a$-runCatching-LocationRepository$reverseGeocode$2$1":I
    :catchall_1
    move-exception v0

    move-object v4, v5

    goto :goto_2

    .line 87
    .restart local v4    # "$result":Ljava/lang/Object;
    .local v5, "$i$a$-runCatching-LocationRepository$reverseGeocode$2$1":I
    .restart local v6    # "geocoder":Landroid/location/Geocoder;
    :cond_3
    nop

    .line 86
    :try_start_3
    invoke-virtual {v7}, Landroid/location/Location;->getLatitude()D

    move-result-wide v10

    invoke-virtual {v7}, Landroid/location/Location;->getLongitude()D

    move-result-wide v12

    const/4 v14, 0x1

    move-object v9, v6

    invoke-virtual/range {v9 .. v14}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;

    move-result-object v0

    .line 87
    .end local v6    # "geocoder":Landroid/location/Geocoder;
    if-eqz v0, :cond_4

    .line 86
    nop

    .line 87
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Address;

    .line 88
    if-eqz v0, :cond_4

    .line 87
    nop

    .line 88
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Landroid/location/Address;->getAddressLine(I)Ljava/lang/String;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object/from16 v22, v4

    move-object v4, v0

    move v0, v5

    move-object/from16 v5, v22

    goto :goto_1

    .line 87
    :cond_4
    move v0, v5

    move-object v5, v4

    move-object v4, v3

    .line 78
    .end local v4    # "$result":Ljava/lang/Object;
    .restart local v0    # "$i$a$-runCatching-LocationRepository$reverseGeocode$2$1":I
    .local v5, "$result":Ljava/lang/Object;
    :goto_1
    nop

    .line 77
    .end local v0    # "$i$a$-runCatching-LocationRepository$reverseGeocode$2$1":I
    :try_start_4
    invoke-static {v4}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_3

    .end local v5    # "$result":Ljava/lang/Object;
    .restart local v4    # "$result":Ljava/lang/Object;
    :goto_2
    sget-object v5, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v4

    .line 90
    .end local v4    # "$result":Ljava/lang/Object;
    .restart local v5    # "$result":Ljava/lang/Object;
    :goto_3
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_6

    .local v4, "it":Ljava/lang/Throwable;
    const/4 v6, 0x0

    .line 91
    .local v6, "$i$a$-onFailure-LocationRepository$reverseGeocode$2$2":I
    instance-of v7, v4, Ljava/io/IOException;

    if-nez v7, :cond_5

    .line 92
    const-string v7, "LocationRepository"

    const-string v8, "Reverse geocoding failed"

    invoke-static {v7, v8, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 94
    .end local v4    # "it":Ljava/lang/Throwable;
    :cond_5
    nop

    .line 90
    .end local v6    # "$i$a$-onFailure-LocationRepository$reverseGeocode$2$2":I
    nop

    .line 94
    :cond_6
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    goto :goto_4

    :cond_7
    move-object v3, v0

    :goto_4
    return-object v3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
