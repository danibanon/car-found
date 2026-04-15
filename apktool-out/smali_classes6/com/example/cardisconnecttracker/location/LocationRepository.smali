.class public final Lcom/example/cardisconnecttracker/location/LocationRepository;
.super Ljava/lang/Object;
.source "LocationRepository.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/example/cardisconnecttracker/location/LocationRepository$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0004\u0018\u0000 \u00132\u00020\u0001:\u0001\u0013B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0010\u0010\t\u001a\u0004\u0018\u00010\nH\u0087@\u00a2\u0006\u0002\u0010\u000bJ\u0010\u0010\u000c\u001a\u0004\u0018\u00010\rH\u0083@\u00a2\u0006\u0002\u0010\u000bJ\u0010\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0083@\u00a2\u0006\u0002\u0010\u000bJ\u0018\u0010\u000f\u001a\u0004\u0018\u00010\u00102\u0006\u0010\u0011\u001a\u00020\rH\u0082@\u00a2\u0006\u0002\u0010\u0012R\u0016\u0010\u0005\u001a\n \u0006*\u0004\u0018\u00010\u00030\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/example/cardisconnecttracker/location/LocationRepository;",
        "",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "appContext",
        "kotlin.jvm.PlatformType",
        "fusedLocationClient",
        "Lcom/google/android/gms/location/FusedLocationProviderClient;",
        "fetchCurrentCarLocation",
        "Lcom/example/cardisconnecttracker/data/CarLocation;",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getLastKnownLocation",
        "Landroid/location/Location;",
        "getPreciseLocation",
        "reverseGeocode",
        "",
        "location",
        "(Landroid/location/Location;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
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
.field public static final Companion:Lcom/example/cardisconnecttracker/location/LocationRepository$Companion;

.field private static final TAG:Ljava/lang/String; = "LocationRepository"


# instance fields
.field private final appContext:Landroid/content/Context;

.field private final fusedLocationClient:Lcom/google/android/gms/location/FusedLocationProviderClient;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/example/cardisconnecttracker/location/LocationRepository$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/example/cardisconnecttracker/location/LocationRepository$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/example/cardisconnecttracker/location/LocationRepository;->Companion:Lcom/example/cardisconnecttracker/location/LocationRepository$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/example/cardisconnecttracker/location/LocationRepository;->appContext:Landroid/content/Context;

    .line 26
    iget-object v0, p0, Lcom/example/cardisconnecttracker/location/LocationRepository;->appContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/location/LocationServices;->getFusedLocationProviderClient(Landroid/content/Context;)Lcom/google/android/gms/location/FusedLocationProviderClient;

    move-result-object v0

    const-string v1, "getFusedLocationProviderClient(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/example/cardisconnecttracker/location/LocationRepository;->fusedLocationClient:Lcom/google/android/gms/location/FusedLocationProviderClient;

    .line 23
    return-void
.end method

.method public static final synthetic access$getAppContext$p(Lcom/example/cardisconnecttracker/location/LocationRepository;)Landroid/content/Context;
    .locals 1
    .param p0, "$this"    # Lcom/example/cardisconnecttracker/location/LocationRepository;

    .line 23
    iget-object v0, p0, Lcom/example/cardisconnecttracker/location/LocationRepository;->appContext:Landroid/content/Context;

    return-object v0
.end method

.method public static final synthetic access$getLastKnownLocation(Lcom/example/cardisconnecttracker/location/LocationRepository;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Lcom/example/cardisconnecttracker/location/LocationRepository;
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 23
    invoke-direct {p0, p1}, Lcom/example/cardisconnecttracker/location/LocationRepository;->getLastKnownLocation(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$getPreciseLocation(Lcom/example/cardisconnecttracker/location/LocationRepository;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Lcom/example/cardisconnecttracker/location/LocationRepository;
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 23
    invoke-direct {p0, p1}, Lcom/example/cardisconnecttracker/location/LocationRepository;->getPreciseLocation(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$reverseGeocode(Lcom/example/cardisconnecttracker/location/LocationRepository;Landroid/location/Location;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Lcom/example/cardisconnecttracker/location/LocationRepository;
    .param p1, "location"    # Landroid/location/Location;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 23
    invoke-direct {p0, p1, p2}, Lcom/example/cardisconnecttracker/location/LocationRepository;->reverseGeocode(Landroid/location/Location;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private final getLastKnownLocation(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroid/location/Location;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcom/example/cardisconnecttracker/location/LocationRepository$getLastKnownLocation$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/example/cardisconnecttracker/location/LocationRepository$getLastKnownLocation$1;

    iget v1, v0, Lcom/example/cardisconnecttracker/location/LocationRepository$getLastKnownLocation$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lcom/example/cardisconnecttracker/location/LocationRepository$getLastKnownLocation$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lcom/example/cardisconnecttracker/location/LocationRepository$getLastKnownLocation$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/example/cardisconnecttracker/location/LocationRepository$getLastKnownLocation$1;

    invoke-direct {v0, p0, p1}, Lcom/example/cardisconnecttracker/location/LocationRepository$getLastKnownLocation$1;-><init>(Lcom/example/cardisconnecttracker/location/LocationRepository;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object p1, v0

    .local p1, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v0, p1, Lcom/example/cardisconnecttracker/location/LocationRepository$getLastKnownLocation$1;->result:Ljava/lang/Object;

    .local v0, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 51
    iget v2, p1, Lcom/example/cardisconnecttracker/location/LocationRepository$getLastKnownLocation$1;->label:I

    packed-switch v2, :pswitch_data_0

    .end local v0    # "$result":Ljava/lang/Object;
    .end local p1    # "$continuation":Lkotlin/coroutines/Continuation;
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .restart local v0    # "$result":Ljava/lang/Object;
    .restart local p1    # "$continuation":Lkotlin/coroutines/Continuation;
    :pswitch_0
    const/4 v1, 0x0

    .local v1, "$i$a$-runCatching-LocationRepository$getLastKnownLocation$2":I
    :try_start_0
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v0

    goto :goto_1

    .end local v1    # "$i$a$-runCatching-LocationRepository$getLastKnownLocation$2":I
    :pswitch_1
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v2, p0

    .line 52
    .local v2, "this":Lcom/example/cardisconnecttracker/location/LocationRepository;
    nop

    .end local v2    # "this":Lcom/example/cardisconnecttracker/location/LocationRepository;
    :try_start_1
    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    check-cast v2, Lcom/example/cardisconnecttracker/location/LocationRepository;

    .local v2, "$this$getLastKnownLocation_u24lambda_u241":Lcom/example/cardisconnecttracker/location/LocationRepository;
    const/4 v3, 0x0

    .line 53
    .local v3, "$i$a$-runCatching-LocationRepository$getLastKnownLocation$2":I
    iget-object v4, v2, Lcom/example/cardisconnecttracker/location/LocationRepository;->fusedLocationClient:Lcom/google/android/gms/location/FusedLocationProviderClient;

    invoke-interface {v4}, Lcom/google/android/gms/location/FusedLocationProviderClient;->getLastLocation()Lcom/google/android/gms/tasks/Task;

    move-result-object v4

    .end local v2    # "$this$getLastKnownLocation_u24lambda_u241":Lcom/example/cardisconnecttracker/location/LocationRepository;
    const-string v2, "getLastLocation(...)"

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x1

    iput v2, p1, Lcom/example/cardisconnecttracker/location/LocationRepository$getLastKnownLocation$1;->label:I

    invoke-static {v4, p1}, Lkotlinx/coroutines/tasks/TasksKt;->await(Lcom/google/android/gms/tasks/Task;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_1

    .line 51
    return-object v1

    .line 53
    :cond_1
    move v1, v3

    .end local v3    # "$i$a$-runCatching-LocationRepository$getLastKnownLocation$2":I
    .restart local v1    # "$i$a$-runCatching-LocationRepository$getLastKnownLocation$2":I
    :goto_1
    check-cast v2, Landroid/location/Location;

    .line 52
    .end local v1    # "$i$a$-runCatching-LocationRepository$getLastKnownLocation$2":I
    invoke-static {v2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v1

    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 54
    :goto_2
    invoke-static {v1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_2

    .local v2, "it":Ljava/lang/Throwable;
    const/4 v3, 0x0

    .line 55
    .local v3, "$i$a$-onFailure-LocationRepository$getLastKnownLocation$3":I
    const-string v4, "LocationRepository"

    const-string v5, "lastLocation failed"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 56
    nop

    .line 54
    .end local v2    # "it":Ljava/lang/Throwable;
    .end local v3    # "$i$a$-onFailure-LocationRepository$getLastKnownLocation$3":I
    nop

    .line 56
    :cond_2
    invoke-static {v1}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v1, 0x0

    .line 52
    :cond_3
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final getPreciseLocation(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroid/location/Location;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcom/example/cardisconnecttracker/location/LocationRepository$getPreciseLocation$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/example/cardisconnecttracker/location/LocationRepository$getPreciseLocation$1;

    iget v1, v0, Lcom/example/cardisconnecttracker/location/LocationRepository$getPreciseLocation$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lcom/example/cardisconnecttracker/location/LocationRepository$getPreciseLocation$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lcom/example/cardisconnecttracker/location/LocationRepository$getPreciseLocation$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/example/cardisconnecttracker/location/LocationRepository$getPreciseLocation$1;

    invoke-direct {v0, p0, p1}, Lcom/example/cardisconnecttracker/location/LocationRepository$getPreciseLocation$1;-><init>(Lcom/example/cardisconnecttracker/location/LocationRepository;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object p1, v0

    .local p1, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v0, p1, Lcom/example/cardisconnecttracker/location/LocationRepository$getPreciseLocation$1;->result:Ljava/lang/Object;

    .local v0, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 60
    iget v2, p1, Lcom/example/cardisconnecttracker/location/LocationRepository$getPreciseLocation$1;->label:I

    const/4 v3, 0x0

    packed-switch v2, :pswitch_data_0

    .end local v0    # "$result":Ljava/lang/Object;
    .end local p1    # "$continuation":Lkotlin/coroutines/Continuation;
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .restart local v0    # "$result":Ljava/lang/Object;
    .restart local p1    # "$continuation":Lkotlin/coroutines/Continuation;
    :pswitch_0
    const/4 v1, 0x0

    .local v1, "$i$a$-runCatching-LocationRepository$getPreciseLocation$2":I
    :try_start_0
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v0

    goto :goto_1

    .end local v1    # "$i$a$-runCatching-LocationRepository$getPreciseLocation$2":I
    :pswitch_1
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v2, p0

    .line 61
    .local v2, "this":Lcom/example/cardisconnecttracker/location/LocationRepository;
    new-instance v4, Lcom/google/android/gms/location/CurrentLocationRequest$Builder;

    invoke-direct {v4}, Lcom/google/android/gms/location/CurrentLocationRequest$Builder;-><init>()V

    .line 62
    const/16 v5, 0x64

    invoke-virtual {v4, v5}, Lcom/google/android/gms/location/CurrentLocationRequest$Builder;->setPriority(I)Lcom/google/android/gms/location/CurrentLocationRequest$Builder;

    move-result-object v4

    .line 63
    const-wide/16 v5, 0x7d0

    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/location/CurrentLocationRequest$Builder;->setMaxUpdateAgeMillis(J)Lcom/google/android/gms/location/CurrentLocationRequest$Builder;

    move-result-object v4

    .line 64
    const-wide/16 v5, 0x2710

    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/location/CurrentLocationRequest$Builder;->setDurationMillis(J)Lcom/google/android/gms/location/CurrentLocationRequest$Builder;

    move-result-object v4

    .line 65
    invoke-virtual {v4}, Lcom/google/android/gms/location/CurrentLocationRequest$Builder;->build()Lcom/google/android/gms/location/CurrentLocationRequest;

    move-result-object v4

    const-string v5, "build(...)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    nop

    .line 67
    .local v4, "request":Lcom/google/android/gms/location/CurrentLocationRequest;
    nop

    .end local v2    # "this":Lcom/example/cardisconnecttracker/location/LocationRepository;
    :try_start_1
    sget-object v5, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    check-cast v2, Lcom/example/cardisconnecttracker/location/LocationRepository;

    .local v2, "$this$getPreciseLocation_u24lambda_u243":Lcom/example/cardisconnecttracker/location/LocationRepository;
    const/4 v5, 0x0

    .line 68
    .local v5, "$i$a$-runCatching-LocationRepository$getPreciseLocation$2":I
    iget-object v6, v2, Lcom/example/cardisconnecttracker/location/LocationRepository;->fusedLocationClient:Lcom/google/android/gms/location/FusedLocationProviderClient;

    invoke-interface {v6, v4, v3}, Lcom/google/android/gms/location/FusedLocationProviderClient;->getCurrentLocation(Lcom/google/android/gms/location/CurrentLocationRequest;Lcom/google/android/gms/tasks/CancellationToken;)Lcom/google/android/gms/tasks/Task;

    move-result-object v6

    .end local v2    # "$this$getPreciseLocation_u24lambda_u243":Lcom/example/cardisconnecttracker/location/LocationRepository;
    .end local v4    # "request":Lcom/google/android/gms/location/CurrentLocationRequest;
    const-string v2, "getCurrentLocation(...)"

    invoke-static {v6, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x1

    iput v2, p1, Lcom/example/cardisconnecttracker/location/LocationRepository$getPreciseLocation$1;->label:I

    invoke-static {v6, p1}, Lkotlinx/coroutines/tasks/TasksKt;->await(Lcom/google/android/gms/tasks/Task;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_1

    .line 60
    return-object v1

    .line 68
    :cond_1
    move v1, v5

    .end local v5    # "$i$a$-runCatching-LocationRepository$getPreciseLocation$2":I
    .restart local v1    # "$i$a$-runCatching-LocationRepository$getPreciseLocation$2":I
    :goto_1
    check-cast v2, Landroid/location/Location;

    .line 67
    .end local v1    # "$i$a$-runCatching-LocationRepository$getPreciseLocation$2":I
    invoke-static {v2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v1

    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 69
    :goto_2
    invoke-static {v1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_2

    .local v2, "it":Ljava/lang/Throwable;
    const/4 v4, 0x0

    .line 70
    .local v4, "$i$a$-onFailure-LocationRepository$getPreciseLocation$3":I
    const-string v5, "LocationRepository"

    const-string v6, "getCurrentLocation failed"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 71
    nop

    .line 69
    .end local v2    # "it":Ljava/lang/Throwable;
    .end local v4    # "$i$a$-onFailure-LocationRepository$getPreciseLocation$3":I
    nop

    .line 71
    :cond_2
    invoke-static {v1}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_3

    :cond_3
    move-object v3, v1

    .line 67
    :goto_3
    return-object v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final reverseGeocode(Landroid/location/Location;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .param p1, "location"    # Landroid/location/Location;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/location/Location;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 74
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/example/cardisconnecttracker/location/LocationRepository$reverseGeocode$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/example/cardisconnecttracker/location/LocationRepository$reverseGeocode$2;-><init>(Lcom/example/cardisconnecttracker/location/LocationRepository;Landroid/location/Location;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    .line 95
    return-object v0
.end method


# virtual methods
.method public final fetchCurrentCarLocation(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/example/cardisconnecttracker/data/CarLocation;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p1

    instance-of v1, v0, Lcom/example/cardisconnecttracker/location/LocationRepository$fetchCurrentCarLocation$1;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/example/cardisconnecttracker/location/LocationRepository$fetchCurrentCarLocation$1;

    iget v2, v1, Lcom/example/cardisconnecttracker/location/LocationRepository$fetchCurrentCarLocation$1;->label:I

    const/high16 v3, -0x80000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    iget v0, v1, Lcom/example/cardisconnecttracker/location/LocationRepository$fetchCurrentCarLocation$1;->label:I

    sub-int/2addr v0, v3

    iput v0, v1, Lcom/example/cardisconnecttracker/location/LocationRepository$fetchCurrentCarLocation$1;->label:I

    move-object v0, v1

    move-object/from16 v2, p0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/example/cardisconnecttracker/location/LocationRepository$fetchCurrentCarLocation$1;

    move-object/from16 v2, p0

    invoke-direct {v1, v2, v0}, Lcom/example/cardisconnecttracker/location/LocationRepository$fetchCurrentCarLocation$1;-><init>(Lcom/example/cardisconnecttracker/location/LocationRepository;Lkotlin/coroutines/Continuation;)V

    move-object v0, v1

    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_0
    iget-object v1, v0, Lcom/example/cardisconnecttracker/location/LocationRepository$fetchCurrentCarLocation$1;->result:Ljava/lang/Object;

    .local v1, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    .line 29
    iget v4, v0, Lcom/example/cardisconnecttracker/location/LocationRepository$fetchCurrentCarLocation$1;->label:I

    const-string v5, "LocationRepository"

    const/4 v6, 0x3

    const/4 v7, 0x1

    packed-switch v4, :pswitch_data_0

    .end local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v1    # "$result":Ljava/lang/Object;
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .restart local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v1    # "$result":Ljava/lang/Object;
    :pswitch_0
    const/4 v4, 0x0

    .local v4, "$i$a$-repeat-LocationRepository$fetchCurrentCarLocation$2":I
    iget v8, v0, Lcom/example/cardisconnecttracker/location/LocationRepository$fetchCurrentCarLocation$1;->I$1:I

    iget v9, v0, Lcom/example/cardisconnecttracker/location/LocationRepository$fetchCurrentCarLocation$1;->I$0:I

    iget-object v10, v0, Lcom/example/cardisconnecttracker/location/LocationRepository$fetchCurrentCarLocation$1;->L$0:Ljava/lang/Object;

    check-cast v10, Lcom/example/cardisconnecttracker/location/LocationRepository;

    .local v10, "this":Lcom/example/cardisconnecttracker/location/LocationRepository;
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_5

    .end local v4    # "$i$a$-repeat-LocationRepository$fetchCurrentCarLocation$2":I
    .end local v10    # "this":Lcom/example/cardisconnecttracker/location/LocationRepository;
    :pswitch_1
    const/4 v3, 0x0

    .local v3, "$i$a$-repeat-LocationRepository$fetchCurrentCarLocation$2":I
    iget-object v4, v0, Lcom/example/cardisconnecttracker/location/LocationRepository$fetchCurrentCarLocation$1;->L$0:Ljava/lang/Object;

    check-cast v4, Landroid/location/Location;

    .local v4, "location":Landroid/location/Location;
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move v11, v3

    move-object v3, v1

    goto/16 :goto_4

    .end local v3    # "$i$a$-repeat-LocationRepository$fetchCurrentCarLocation$2":I
    .end local v4    # "location":Landroid/location/Location;
    :pswitch_2
    const/4 v4, 0x0

    .local v4, "$i$a$-repeat-LocationRepository$fetchCurrentCarLocation$2":I
    iget v8, v0, Lcom/example/cardisconnecttracker/location/LocationRepository$fetchCurrentCarLocation$1;->I$2:I

    .local v8, "attempt":I
    iget v9, v0, Lcom/example/cardisconnecttracker/location/LocationRepository$fetchCurrentCarLocation$1;->I$1:I

    iget v10, v0, Lcom/example/cardisconnecttracker/location/LocationRepository$fetchCurrentCarLocation$1;->I$0:I

    iget-object v11, v0, Lcom/example/cardisconnecttracker/location/LocationRepository$fetchCurrentCarLocation$1;->L$0:Ljava/lang/Object;

    check-cast v11, Lcom/example/cardisconnecttracker/location/LocationRepository;

    .local v11, "this":Lcom/example/cardisconnecttracker/location/LocationRepository;
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v12, v11

    move v11, v4

    move-object v4, v3

    move-object v3, v1

    goto :goto_3

    .end local v4    # "$i$a$-repeat-LocationRepository$fetchCurrentCarLocation$2":I
    .end local v8    # "attempt":I
    .end local v11    # "this":Lcom/example/cardisconnecttracker/location/LocationRepository;
    :pswitch_3
    const/4 v4, 0x0

    .restart local v4    # "$i$a$-repeat-LocationRepository$fetchCurrentCarLocation$2":I
    iget v8, v0, Lcom/example/cardisconnecttracker/location/LocationRepository$fetchCurrentCarLocation$1;->I$2:I

    .restart local v8    # "attempt":I
    iget v9, v0, Lcom/example/cardisconnecttracker/location/LocationRepository$fetchCurrentCarLocation$1;->I$1:I

    iget v10, v0, Lcom/example/cardisconnecttracker/location/LocationRepository$fetchCurrentCarLocation$1;->I$0:I

    iget-object v11, v0, Lcom/example/cardisconnecttracker/location/LocationRepository$fetchCurrentCarLocation$1;->L$0:Ljava/lang/Object;

    check-cast v11, Lcom/example/cardisconnecttracker/location/LocationRepository;

    .restart local v11    # "this":Lcom/example/cardisconnecttracker/location/LocationRepository;
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v12, v11

    move v11, v4

    move-object v4, v3

    move-object v3, v1

    goto :goto_2

    .end local v4    # "$i$a$-repeat-LocationRepository$fetchCurrentCarLocation$2":I
    .end local v8    # "attempt":I
    .end local v11    # "this":Lcom/example/cardisconnecttracker/location/LocationRepository;
    :pswitch_4
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v4, p0

    .line 30
    .local v4, "this":Lcom/example/cardisconnecttracker/location/LocationRepository;
    const/4 v8, 0x0

    move v9, v6

    :goto_1
    if-ge v8, v9, :cond_7

    move v10, v8

    .local v10, "attempt":I
    const/4 v11, 0x0

    .line 31
    .local v11, "$i$a$-repeat-LocationRepository$fetchCurrentCarLocation$2":I
    iput-object v4, v0, Lcom/example/cardisconnecttracker/location/LocationRepository$fetchCurrentCarLocation$1;->L$0:Ljava/lang/Object;

    iput v9, v0, Lcom/example/cardisconnecttracker/location/LocationRepository$fetchCurrentCarLocation$1;->I$0:I

    iput v8, v0, Lcom/example/cardisconnecttracker/location/LocationRepository$fetchCurrentCarLocation$1;->I$1:I

    iput v10, v0, Lcom/example/cardisconnecttracker/location/LocationRepository$fetchCurrentCarLocation$1;->I$2:I

    iput v7, v0, Lcom/example/cardisconnecttracker/location/LocationRepository$fetchCurrentCarLocation$1;->label:I

    invoke-direct {v4, v0}, Lcom/example/cardisconnecttracker/location/LocationRepository;->getPreciseLocation(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v12

    if-ne v12, v3, :cond_1

    .line 29
    return-object v3

    .line 31
    :cond_1
    move-object/from16 v20, v3

    move-object v3, v1

    move-object v1, v12

    move-object v12, v4

    move-object/from16 v4, v20

    move/from16 v21, v9

    move v9, v8

    move v8, v10

    move/from16 v10, v21

    .end local v1    # "$result":Ljava/lang/Object;
    .end local v4    # "this":Lcom/example/cardisconnecttracker/location/LocationRepository;
    .end local v10    # "attempt":I
    .local v3, "$result":Ljava/lang/Object;
    .restart local v8    # "attempt":I
    .local v12, "this":Lcom/example/cardisconnecttracker/location/LocationRepository;
    :goto_2
    check-cast v1, Landroid/location/Location;

    if-nez v1, :cond_3

    iput-object v12, v0, Lcom/example/cardisconnecttracker/location/LocationRepository$fetchCurrentCarLocation$1;->L$0:Ljava/lang/Object;

    iput v10, v0, Lcom/example/cardisconnecttracker/location/LocationRepository$fetchCurrentCarLocation$1;->I$0:I

    iput v9, v0, Lcom/example/cardisconnecttracker/location/LocationRepository$fetchCurrentCarLocation$1;->I$1:I

    iput v8, v0, Lcom/example/cardisconnecttracker/location/LocationRepository$fetchCurrentCarLocation$1;->I$2:I

    const/4 v1, 0x2

    iput v1, v0, Lcom/example/cardisconnecttracker/location/LocationRepository$fetchCurrentCarLocation$1;->label:I

    invoke-direct {v12, v0}, Lcom/example/cardisconnecttracker/location/LocationRepository;->getLastKnownLocation(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v4, :cond_2

    .line 29
    return-object v4

    :cond_2
    :goto_3
    check-cast v1, Landroid/location/Location;

    :cond_3
    nop

    .line 32
    .local v1, "location":Landroid/location/Location;
    if-eqz v1, :cond_5

    .line 33
    .end local v8    # "attempt":I
    iput-object v1, v0, Lcom/example/cardisconnecttracker/location/LocationRepository$fetchCurrentCarLocation$1;->L$0:Ljava/lang/Object;

    iput v6, v0, Lcom/example/cardisconnecttracker/location/LocationRepository$fetchCurrentCarLocation$1;->label:I

    invoke-direct {v12, v1, v0}, Lcom/example/cardisconnecttracker/location/LocationRepository;->reverseGeocode(Landroid/location/Location;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    .end local v12    # "this":Lcom/example/cardisconnecttracker/location/LocationRepository;
    if-ne v5, v4, :cond_4

    .line 29
    return-object v4

    .line 33
    :cond_4
    move-object v4, v1

    move-object v1, v5

    .line 29
    .end local v1    # "location":Landroid/location/Location;
    .local v4, "location":Landroid/location/Location;
    :goto_4
    check-cast v1, Ljava/lang/String;

    .line 34
    .local v1, "address":Ljava/lang/String;
    new-instance v5, Lcom/example/cardisconnecttracker/data/CarLocation;

    .line 35
    invoke-virtual {v4}, Landroid/location/Location;->getLatitude()D

    move-result-wide v13

    .line 36
    invoke-virtual {v4}, Landroid/location/Location;->getLongitude()D

    move-result-wide v15

    .line 37
    .end local v4    # "location":Landroid/location/Location;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    .line 38
    nop

    .line 34
    move-object v12, v5

    move-object/from16 v19, v1

    invoke-direct/range {v12 .. v19}, Lcom/example/cardisconnecttracker/data/CarLocation;-><init>(DDJLjava/lang/String;)V

    return-object v5

    .line 42
    .end local v1    # "address":Ljava/lang/String;
    .restart local v8    # "attempt":I
    .restart local v12    # "this":Lcom/example/cardisconnecttracker/location/LocationRepository;
    :cond_5
    add-int/lit8 v1, v8, 0x1

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Location attempt "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v13, " returned null"

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    .end local v8    # "attempt":I
    iput-object v12, v0, Lcom/example/cardisconnecttracker/location/LocationRepository$fetchCurrentCarLocation$1;->L$0:Ljava/lang/Object;

    iput v10, v0, Lcom/example/cardisconnecttracker/location/LocationRepository$fetchCurrentCarLocation$1;->I$0:I

    iput v9, v0, Lcom/example/cardisconnecttracker/location/LocationRepository$fetchCurrentCarLocation$1;->I$1:I

    const/4 v1, 0x4

    iput v1, v0, Lcom/example/cardisconnecttracker/location/LocationRepository$fetchCurrentCarLocation$1;->label:I

    const-wide/16 v13, 0x5dc

    invoke-static {v13, v14, v0}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v4, :cond_6

    .line 29
    return-object v4

    .line 43
    :cond_6
    move-object v1, v3

    move-object v3, v4

    move v8, v9

    move v9, v10

    move v4, v11

    move-object v10, v12

    .line 44
    .end local v3    # "$result":Ljava/lang/Object;
    .end local v11    # "$i$a$-repeat-LocationRepository$fetchCurrentCarLocation$2":I
    .end local v12    # "this":Lcom/example/cardisconnecttracker/location/LocationRepository;
    .local v1, "$result":Ljava/lang/Object;
    .local v4, "$i$a$-repeat-LocationRepository$fetchCurrentCarLocation$2":I
    .local v10, "this":Lcom/example/cardisconnecttracker/location/LocationRepository;
    :goto_5
    nop

    .line 30
    .end local v4    # "$i$a$-repeat-LocationRepository$fetchCurrentCarLocation$2":I
    add-int/2addr v8, v7

    move-object v4, v10

    goto/16 :goto_1

    .line 46
    .end local v10    # "this":Lcom/example/cardisconnecttracker/location/LocationRepository;
    .local v4, "this":Lcom/example/cardisconnecttracker/location/LocationRepository;
    :cond_7
    const-string v3, "Unable to resolve location after retries"

    invoke-static {v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    const/4 v3, 0x0

    return-object v3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
