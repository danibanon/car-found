.class public final Lcom/example/cardisconnecttracker/data/PreferencesManager;
.super Ljava/lang/Object;
.source "PreferencesManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/example/cardisconnecttracker/data/PreferencesManager$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPreferencesManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PreferencesManager.kt\ncom/example/cardisconnecttracker/data/PreferencesManager\n+ 2 SharedPreferences.kt\nandroidx/core/content/SharedPreferencesKt\n*L\n1#1,61:1\n39#2,12:62\n39#2,12:74\n39#2,12:86\n*S KotlinDebug\n*F\n+ 1 PreferencesManager.kt\ncom/example/cardisconnecttracker/data/PreferencesManager\n*L\n10#1:62,12\n21#1:74,12\n44#1:86,12\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0008\u0018\u0000 \u00142\u00020\u0001:\u0001\u0014B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0006\u0010\u0008\u001a\u00020\tJ\u0008\u0010\n\u001a\u0004\u0018\u00010\u000bJ\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rJ\u0008\u0010\u000e\u001a\u0004\u0018\u00010\rJ\u000e\u0010\u000f\u001a\u00020\t2\u0006\u0010\u0010\u001a\u00020\u000bJ\u0016\u0010\u0011\u001a\u00020\t2\u0006\u0010\u0012\u001a\u00020\r2\u0006\u0010\u0013\u001a\u00020\rR\u0016\u0010\u0005\u001a\n \u0007*\u0004\u0018\u00010\u00060\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/example/cardisconnecttracker/data/PreferencesManager;",
        "",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "prefs",
        "Landroid/content/SharedPreferences;",
        "kotlin.jvm.PlatformType",
        "clearCarLocation",
        "",
        "getCarLocation",
        "Lcom/example/cardisconnecttracker/data/CarLocation;",
        "getSelectedDeviceAddress",
        "",
        "getSelectedDeviceName",
        "saveCarLocation",
        "location",
        "saveSelectedDevice",
        "name",
        "address",
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
.field public static final Companion:Lcom/example/cardisconnecttracker/data/PreferencesManager$Companion;

.field private static final KEY_ADDRESS:Ljava/lang/String; = "last_address"

.field private static final KEY_DEVICE_ADDRESS:Ljava/lang/String; = "selected_device_address"

.field private static final KEY_DEVICE_NAME:Ljava/lang/String; = "selected_device_name"

.field private static final KEY_LATITUDE:Ljava/lang/String; = "last_latitude"

.field private static final KEY_LONGITUDE:Ljava/lang/String; = "last_longitude"

.field private static final KEY_TIMESTAMP:Ljava/lang/String; = "last_timestamp"


# instance fields
.field private final prefs:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/example/cardisconnecttracker/data/PreferencesManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/example/cardisconnecttracker/data/PreferencesManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/example/cardisconnecttracker/data/PreferencesManager;->Companion:Lcom/example/cardisconnecttracker/data/PreferencesManager$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const-string v0, "car_disconnect_prefs"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/example/cardisconnecttracker/data/PreferencesManager;->prefs:Landroid/content/SharedPreferences;

    .line 6
    return-void
.end method


# virtual methods
.method public final clearCarLocation()V
    .locals 7

    .line 44
    iget-object v0, p0, Lcom/example/cardisconnecttracker/data/PreferencesManager;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "prefs"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    .local v0, "$this$edit_u24default$iv":Landroid/content/SharedPreferences;
    nop

    .line 87
    const/4 v1, 0x0

    .line 86
    .local v1, "commit$iv":Z
    const/4 v2, 0x0

    .line 90
    .local v2, "$i$f$edit":I
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 91
    .local v3, "editor$iv":Landroid/content/SharedPreferences$Editor;
    move-object v4, v3

    .local v4, "$this$clearCarLocation_u24lambda_u242":Landroid/content/SharedPreferences$Editor;
    const/4 v5, 0x0

    .line 45
    .local v5, "$i$a$-edit$default-PreferencesManager$clearCarLocation$1":I
    const-string v6, "last_latitude"

    invoke-interface {v4, v6}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 46
    const-string v6, "last_longitude"

    invoke-interface {v4, v6}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 47
    const-string v6, "last_timestamp"

    invoke-interface {v4, v6}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 48
    const-string v6, "last_address"

    invoke-interface {v4, v6}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 49
    nop

    .line 91
    .end local v4    # "$this$clearCarLocation_u24lambda_u242":Landroid/content/SharedPreferences$Editor;
    .end local v5    # "$i$a$-edit$default-PreferencesManager$clearCarLocation$1":I
    nop

    .line 92
    nop

    .line 95
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 97
    nop

    .line 50
    .end local v0    # "$this$edit_u24default$iv":Landroid/content/SharedPreferences;
    .end local v1    # "commit$iv":Z
    .end local v2    # "$i$f$edit":I
    .end local v3    # "editor$iv":Landroid/content/SharedPreferences$Editor;
    return-void
.end method

.method public final getCarLocation()Lcom/example/cardisconnecttracker/data/CarLocation;
    .locals 12

    .line 30
    iget-object v0, p0, Lcom/example/cardisconnecttracker/data/PreferencesManager;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "last_latitude"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {v0}, Lkotlin/text/StringsKt;->toDoubleOrNull(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    .line 31
    .local v4, "latitude":D
    iget-object v0, p0, Lcom/example/cardisconnecttracker/data/PreferencesManager;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "last_longitude"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Lkotlin/text/StringsKt;->toDoubleOrNull(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    .line 32
    .local v6, "longitude":D
    iget-object v0, p0, Lcom/example/cardisconnecttracker/data/PreferencesManager;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "last_timestamp"

    const-wide/16 v8, 0x0

    invoke-interface {v0, v1, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 33
    .local v0, "timestamp":J
    cmp-long v3, v0, v8

    if-nez v3, :cond_0

    return-object v2

    .line 35
    :cond_0
    new-instance v11, Lcom/example/cardisconnecttracker/data/CarLocation;

    .line 36
    nop

    .line 37
    nop

    .line 38
    nop

    .line 39
    iget-object v3, p0, Lcom/example/cardisconnecttracker/data/PreferencesManager;->prefs:Landroid/content/SharedPreferences;

    const-string v8, "last_address"

    invoke-interface {v3, v8, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 35
    move-object v3, v11

    move-wide v8, v0

    invoke-direct/range {v3 .. v10}, Lcom/example/cardisconnecttracker/data/CarLocation;-><init>(DDJLjava/lang/String;)V

    return-object v11

    .line 31
    .end local v0    # "timestamp":J
    .end local v6    # "longitude":D
    :cond_1
    return-object v2

    .line 30
    .end local v4    # "latitude":D
    :cond_2
    return-object v2
.end method

.method public final getSelectedDeviceAddress()Ljava/lang/String;
    .locals 3

    .line 18
    iget-object v0, p0, Lcom/example/cardisconnecttracker/data/PreferencesManager;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "selected_device_address"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getSelectedDeviceName()Ljava/lang/String;
    .locals 3

    .line 16
    iget-object v0, p0, Lcom/example/cardisconnecttracker/data/PreferencesManager;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "selected_device_name"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final saveCarLocation(Lcom/example/cardisconnecttracker/data/CarLocation;)V
    .locals 9
    .param p1, "location"    # Lcom/example/cardisconnecttracker/data/CarLocation;

    const-string v0, "location"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    iget-object v0, p0, Lcom/example/cardisconnecttracker/data/PreferencesManager;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "prefs"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    .local v0, "$this$edit_u24default$iv":Landroid/content/SharedPreferences;
    nop

    .line 75
    const/4 v1, 0x0

    .line 74
    .local v1, "commit$iv":Z
    const/4 v2, 0x0

    .line 78
    .local v2, "$i$f$edit":I
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 79
    .local v3, "editor$iv":Landroid/content/SharedPreferences$Editor;
    move-object v4, v3

    .local v4, "$this$saveCarLocation_u24lambda_u241":Landroid/content/SharedPreferences$Editor;
    const/4 v5, 0x0

    .line 22
    .local v5, "$i$a$-edit$default-PreferencesManager$saveCarLocation$1":I
    const-string v6, "last_timestamp"

    invoke-virtual {p1}, Lcom/example/cardisconnecttracker/data/CarLocation;->getTimestamp()J

    move-result-wide v7

    invoke-interface {v4, v6, v7, v8}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 23
    invoke-virtual {p1}, Lcom/example/cardisconnecttracker/data/CarLocation;->getLatitude()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v6

    const-string v7, "last_latitude"

    invoke-interface {v4, v7, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 24
    invoke-virtual {p1}, Lcom/example/cardisconnecttracker/data/CarLocation;->getLongitude()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v6

    const-string v7, "last_longitude"

    invoke-interface {v4, v7, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 25
    const-string v6, "last_address"

    invoke-virtual {p1}, Lcom/example/cardisconnecttracker/data/CarLocation;->getAddress()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 26
    nop

    .line 79
    .end local v4    # "$this$saveCarLocation_u24lambda_u241":Landroid/content/SharedPreferences$Editor;
    .end local v5    # "$i$a$-edit$default-PreferencesManager$saveCarLocation$1":I
    nop

    .line 80
    nop

    .line 83
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 85
    nop

    .line 27
    .end local v0    # "$this$edit_u24default$iv":Landroid/content/SharedPreferences;
    .end local v1    # "commit$iv":Z
    .end local v2    # "$i$f$edit":I
    .end local v3    # "editor$iv":Landroid/content/SharedPreferences$Editor;
    return-void
.end method

.method public final saveSelectedDevice(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "address"    # Ljava/lang/String;

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "address"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    iget-object v0, p0, Lcom/example/cardisconnecttracker/data/PreferencesManager;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "prefs"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    .local v0, "$this$edit_u24default$iv":Landroid/content/SharedPreferences;
    nop

    .line 63
    const/4 v1, 0x0

    .line 62
    .local v1, "commit$iv":Z
    const/4 v2, 0x0

    .line 66
    .local v2, "$i$f$edit":I
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 67
    .local v3, "editor$iv":Landroid/content/SharedPreferences$Editor;
    move-object v4, v3

    .local v4, "$this$saveSelectedDevice_u24lambda_u240":Landroid/content/SharedPreferences$Editor;
    const/4 v5, 0x0

    .line 11
    .local v5, "$i$a$-edit$default-PreferencesManager$saveSelectedDevice$1":I
    const-string v6, "selected_device_name"

    invoke-interface {v4, v6, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 12
    const-string v6, "selected_device_address"

    invoke-interface {v4, v6, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 13
    nop

    .line 67
    .end local v4    # "$this$saveSelectedDevice_u24lambda_u240":Landroid/content/SharedPreferences$Editor;
    .end local v5    # "$i$a$-edit$default-PreferencesManager$saveSelectedDevice$1":I
    nop

    .line 68
    nop

    .line 71
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 73
    nop

    .line 14
    .end local v0    # "$this$edit_u24default$iv":Landroid/content/SharedPreferences;
    .end local v1    # "commit$iv":Z
    .end local v2    # "$i$f$edit":I
    .end local v3    # "editor$iv":Landroid/content/SharedPreferences$Editor;
    return-void
.end method
