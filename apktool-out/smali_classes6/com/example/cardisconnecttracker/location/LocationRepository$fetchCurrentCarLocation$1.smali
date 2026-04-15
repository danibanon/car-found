.class final Lcom/example/cardisconnecttracker/location/LocationRepository$fetchCurrentCarLocation$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "LocationRepository.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/cardisconnecttracker/location/LocationRepository;->fetchCurrentCarLocation(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.example.cardisconnecttracker.location.LocationRepository"
    f = "LocationRepository.kt"
    i = {
        0x0,
        0x0,
        0x1,
        0x1,
        0x2,
        0x3
    }
    l = {
        0x1f,
        0x1f,
        0x21,
        0x2b
    }
    m = "fetchCurrentCarLocation"
    n = {
        "this",
        "attempt",
        "this",
        "attempt",
        "location",
        "this"
    }
    s = {
        "L$0",
        "I$2",
        "L$0",
        "I$2",
        "L$0",
        "L$0"
    }
.end annotation


# instance fields
.field I$0:I

.field I$1:I

.field I$2:I

.field L$0:Ljava/lang/Object;

.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Lcom/example/cardisconnecttracker/location/LocationRepository;


# direct methods
.method constructor <init>(Lcom/example/cardisconnecttracker/location/LocationRepository;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/example/cardisconnecttracker/location/LocationRepository;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/example/cardisconnecttracker/location/LocationRepository$fetchCurrentCarLocation$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/example/cardisconnecttracker/location/LocationRepository$fetchCurrentCarLocation$1;->this$0:Lcom/example/cardisconnecttracker/location/LocationRepository;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iput-object p1, p0, Lcom/example/cardisconnecttracker/location/LocationRepository$fetchCurrentCarLocation$1;->result:Ljava/lang/Object;

    iget v0, p0, Lcom/example/cardisconnecttracker/location/LocationRepository$fetchCurrentCarLocation$1;->label:I

    const/high16 v1, -0x80000000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/example/cardisconnecttracker/location/LocationRepository$fetchCurrentCarLocation$1;->label:I

    iget-object v0, p0, Lcom/example/cardisconnecttracker/location/LocationRepository$fetchCurrentCarLocation$1;->this$0:Lcom/example/cardisconnecttracker/location/LocationRepository;

    move-object v1, p0

    check-cast v1, Lkotlin/coroutines/Continuation;

    invoke-virtual {v0, v1}, Lcom/example/cardisconnecttracker/location/LocationRepository;->fetchCurrentCarLocation(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
