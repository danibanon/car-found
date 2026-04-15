.class public final Lcom/example/cardisconnecttracker/data/CarLocation;
.super Ljava/lang/Object;
.source "CarLocation.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0006\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u000e\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u00002\u00020\u0001B)\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0002\u0010\tJ\t\u0010\u0011\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0012\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0013\u001a\u00020\u0006H\u00c6\u0003J\u000b\u0010\u0014\u001a\u0004\u0018\u00010\u0008H\u00c6\u0003J3\u0010\u0015\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0008H\u00c6\u0001J\u0013\u0010\u0016\u001a\u00020\u00172\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0019\u001a\u00020\u001aH\u00d6\u0001J\t\u0010\u001b\u001a\u00020\u0008H\u00d6\u0001R\u0013\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\rR\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/example/cardisconnecttracker/data/CarLocation;",
        "",
        "latitude",
        "",
        "longitude",
        "timestamp",
        "",
        "address",
        "",
        "(DDJLjava/lang/String;)V",
        "getAddress",
        "()Ljava/lang/String;",
        "getLatitude",
        "()D",
        "getLongitude",
        "getTimestamp",
        "()J",
        "component1",
        "component2",
        "component3",
        "component4",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "",
        "toString",
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
.field private final address:Ljava/lang/String;

.field private final latitude:D

.field private final longitude:D

.field private final timestamp:J


# direct methods
.method public constructor <init>(DDJLjava/lang/String;)V
    .locals 0
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D
    .param p5, "timestamp"    # J
    .param p7, "address"    # Ljava/lang/String;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-wide p1, p0, Lcom/example/cardisconnecttracker/data/CarLocation;->latitude:D

    .line 5
    iput-wide p3, p0, Lcom/example/cardisconnecttracker/data/CarLocation;->longitude:D

    .line 6
    iput-wide p5, p0, Lcom/example/cardisconnecttracker/data/CarLocation;->timestamp:J

    .line 7
    iput-object p7, p0, Lcom/example/cardisconnecttracker/data/CarLocation;->address:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public synthetic constructor <init>(DDJLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 9

    .line 3
    and-int/lit8 v0, p8, 0x8

    if-eqz v0, :cond_0

    .line 7
    const/4 v0, 0x0

    move-object v8, v0

    goto :goto_0

    .line 3
    :cond_0
    move-object/from16 v8, p7

    :goto_0
    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move-wide v6, p5

    invoke-direct/range {v1 .. v8}, Lcom/example/cardisconnecttracker/data/CarLocation;-><init>(DDJLjava/lang/String;)V

    .line 8
    return-void
.end method

.method public static synthetic copy$default(Lcom/example/cardisconnecttracker/data/CarLocation;DDJLjava/lang/String;ILjava/lang/Object;)Lcom/example/cardisconnecttracker/data/CarLocation;
    .locals 8

    move-object v0, p0

    and-int/lit8 v1, p8, 0x1

    if-eqz v1, :cond_0

    iget-wide v1, v0, Lcom/example/cardisconnecttracker/data/CarLocation;->latitude:D

    goto :goto_0

    :cond_0
    move-wide v1, p1

    :goto_0
    and-int/lit8 v3, p8, 0x2

    if-eqz v3, :cond_1

    iget-wide v3, v0, Lcom/example/cardisconnecttracker/data/CarLocation;->longitude:D

    goto :goto_1

    :cond_1
    move-wide v3, p3

    :goto_1
    and-int/lit8 v5, p8, 0x4

    if-eqz v5, :cond_2

    iget-wide v5, v0, Lcom/example/cardisconnecttracker/data/CarLocation;->timestamp:J

    goto :goto_2

    :cond_2
    move-wide v5, p5

    :goto_2
    and-int/lit8 v7, p8, 0x8

    if-eqz v7, :cond_3

    iget-object v7, v0, Lcom/example/cardisconnecttracker/data/CarLocation;->address:Ljava/lang/String;

    goto :goto_3

    :cond_3
    move-object v7, p7

    :goto_3
    move-wide p1, v1

    move-wide p3, v3

    move-wide p5, v5

    move-object p7, v7

    invoke-virtual/range {p0 .. p7}, Lcom/example/cardisconnecttracker/data/CarLocation;->copy(DDJLjava/lang/String;)Lcom/example/cardisconnecttracker/data/CarLocation;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()D
    .locals 2

    iget-wide v0, p0, Lcom/example/cardisconnecttracker/data/CarLocation;->latitude:D

    return-wide v0
.end method

.method public final component2()D
    .locals 2

    iget-wide v0, p0, Lcom/example/cardisconnecttracker/data/CarLocation;->longitude:D

    return-wide v0
.end method

.method public final component3()J
    .locals 2

    iget-wide v0, p0, Lcom/example/cardisconnecttracker/data/CarLocation;->timestamp:J

    return-wide v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/example/cardisconnecttracker/data/CarLocation;->address:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(DDJLjava/lang/String;)Lcom/example/cardisconnecttracker/data/CarLocation;
    .locals 9

    new-instance v8, Lcom/example/cardisconnecttracker/data/CarLocation;

    move-object v0, v8

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/example/cardisconnecttracker/data/CarLocation;-><init>(DDJLjava/lang/String;)V

    return-object v8
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/example/cardisconnecttracker/data/CarLocation;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/example/cardisconnecttracker/data/CarLocation;

    iget-wide v3, p0, Lcom/example/cardisconnecttracker/data/CarLocation;->latitude:D

    iget-wide v5, v1, Lcom/example/cardisconnecttracker/data/CarLocation;->latitude:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v3

    if-eqz v3, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lcom/example/cardisconnecttracker/data/CarLocation;->longitude:D

    iget-wide v5, v1, Lcom/example/cardisconnecttracker/data/CarLocation;->longitude:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v3

    if-eqz v3, :cond_3

    return v2

    :cond_3
    iget-wide v3, p0, Lcom/example/cardisconnecttracker/data/CarLocation;->timestamp:J

    iget-wide v5, v1, Lcom/example/cardisconnecttracker/data/CarLocation;->timestamp:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_4

    return v2

    :cond_4
    iget-object v3, p0, Lcom/example/cardisconnecttracker/data/CarLocation;->address:Ljava/lang/String;

    iget-object v1, v1, Lcom/example/cardisconnecttracker/data/CarLocation;->address:Ljava/lang/String;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getAddress()Ljava/lang/String;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/example/cardisconnecttracker/data/CarLocation;->address:Ljava/lang/String;

    return-object v0
.end method

.method public final getLatitude()D
    .locals 2

    .line 4
    iget-wide v0, p0, Lcom/example/cardisconnecttracker/data/CarLocation;->latitude:D

    return-wide v0
.end method

.method public final getLongitude()D
    .locals 2

    .line 5
    iget-wide v0, p0, Lcom/example/cardisconnecttracker/data/CarLocation;->longitude:D

    return-wide v0
.end method

.method public final getTimestamp()J
    .locals 2

    .line 6
    iget-wide v0, p0, Lcom/example/cardisconnecttracker/data/CarLocation;->timestamp:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 4

    iget-wide v0, p0, Lcom/example/cardisconnecttracker/data/CarLocation;->latitude:D

    invoke-static {v0, v1}, Ljava/lang/Double;->hashCode(D)I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lcom/example/cardisconnecttracker/data/CarLocation;->longitude:D

    invoke-static {v2, v3}, Ljava/lang/Double;->hashCode(D)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-wide v2, p0, Lcom/example/cardisconnecttracker/data/CarLocation;->timestamp:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/example/cardisconnecttracker/data/CarLocation;->address:Ljava/lang/String;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/example/cardisconnecttracker/data/CarLocation;->address:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v1, v2

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    iget-wide v0, p0, Lcom/example/cardisconnecttracker/data/CarLocation;->latitude:D

    iget-wide v2, p0, Lcom/example/cardisconnecttracker/data/CarLocation;->longitude:D

    iget-wide v4, p0, Lcom/example/cardisconnecttracker/data/CarLocation;->timestamp:J

    iget-object v6, p0, Lcom/example/cardisconnecttracker/data/CarLocation;->address:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CarLocation(latitude="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", longitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", timestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", address="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
