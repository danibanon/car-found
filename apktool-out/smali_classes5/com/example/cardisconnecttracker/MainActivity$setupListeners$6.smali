.class public final Lcom/example/cardisconnecttracker/MainActivity$setupListeners$6;
.super Ljava/lang/Object;
.source "MainActivity.kt"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/cardisconnecttracker/MainActivity;->setupListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000+\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J0\u0010\u0002\u001a\u00020\u00032\u000c\u0010\u0004\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0016J\u0016\u0010\u000c\u001a\u00020\u00032\u000c\u0010\u0004\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u0005H\u0016\u00a8\u0006\r"
    }
    d2 = {
        "com/example/cardisconnecttracker/MainActivity$setupListeners$6",
        "Landroid/widget/AdapterView$OnItemSelectedListener;",
        "onItemSelected",
        "",
        "parent",
        "Landroid/widget/AdapterView;",
        "view",
        "Landroid/view/View;",
        "position",
        "",
        "id",
        "",
        "onNothingSelected",
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
.field final synthetic this$0:Lcom/example/cardisconnecttracker/MainActivity;


# direct methods
.method constructor <init>(Lcom/example/cardisconnecttracker/MainActivity;)V
    .locals 0
    .param p1, "$receiver"    # Lcom/example/cardisconnecttracker/MainActivity;

    iput-object p1, p0, Lcom/example/cardisconnecttracker/MainActivity$setupListeners$6;->this$0:Lcom/example/cardisconnecttracker/MainActivity;

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .param p1, "parent"    # Landroid/widget/AdapterView;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 86
    iget-object v0, p0, Lcom/example/cardisconnecttracker/MainActivity$setupListeners$6;->this$0:Lcom/example/cardisconnecttracker/MainActivity;

    invoke-static {v0}, Lcom/example/cardisconnecttracker/MainActivity;->access$getDeviceItems$p(Lcom/example/cardisconnecttracker/MainActivity;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p3}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/example/cardisconnecttracker/MainActivity$DeviceItem;

    if-nez v0, :cond_0

    return-void

    .line 87
    .local v0, "item":Lcom/example/cardisconnecttracker/MainActivity$DeviceItem;
    :cond_0
    invoke-virtual {v0}, Lcom/example/cardisconnecttracker/MainActivity$DeviceItem;->getAddress()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 88
    :cond_1
    iget-object v1, p0, Lcom/example/cardisconnecttracker/MainActivity$setupListeners$6;->this$0:Lcom/example/cardisconnecttracker/MainActivity;

    invoke-static {v1}, Lcom/example/cardisconnecttracker/MainActivity;->access$getSelectionInitialized$p(Lcom/example/cardisconnecttracker/MainActivity;)Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "preferencesManager"

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/example/cardisconnecttracker/MainActivity$setupListeners$6;->this$0:Lcom/example/cardisconnecttracker/MainActivity;

    invoke-static {v1}, Lcom/example/cardisconnecttracker/MainActivity;->access$getPreferencesManager$p(Lcom/example/cardisconnecttracker/MainActivity;)Lcom/example/cardisconnecttracker/data/PreferencesManager;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_2
    invoke-virtual {v1}, Lcom/example/cardisconnecttracker/data/PreferencesManager;->getSelectedDeviceAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/example/cardisconnecttracker/MainActivity$DeviceItem;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 89
    :cond_3
    iget-object v1, p0, Lcom/example/cardisconnecttracker/MainActivity$setupListeners$6;->this$0:Lcom/example/cardisconnecttracker/MainActivity;

    invoke-static {v1}, Lcom/example/cardisconnecttracker/MainActivity;->access$getPreferencesManager$p(Lcom/example/cardisconnecttracker/MainActivity;)Lcom/example/cardisconnecttracker/data/PreferencesManager;

    move-result-object v1

    if-nez v1, :cond_4

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    move-object v2, v1

    :goto_0
    invoke-virtual {v0}, Lcom/example/cardisconnecttracker/MainActivity$DeviceItem;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/example/cardisconnecttracker/MainActivity$DeviceItem;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/example/cardisconnecttracker/data/PreferencesManager;->saveSelectedDevice(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    invoke-virtual {v0}, Lcom/example/cardisconnecttracker/MainActivity$DeviceItem;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/example/cardisconnecttracker/MainActivity$DeviceItem;->getAddress()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Selected device saved: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MainActivity"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    :cond_5
    iget-object v1, p0, Lcom/example/cardisconnecttracker/MainActivity$setupListeners$6;->this$0:Lcom/example/cardisconnecttracker/MainActivity;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/example/cardisconnecttracker/MainActivity;->access$setSelectionInitialized$p(Lcom/example/cardisconnecttracker/MainActivity;Z)V

    .line 93
    iget-object v1, p0, Lcom/example/cardisconnecttracker/MainActivity$setupListeners$6;->this$0:Lcom/example/cardisconnecttracker/MainActivity;

    invoke-static {v1}, Lcom/example/cardisconnecttracker/MainActivity;->access$refreshUi(Lcom/example/cardisconnecttracker/MainActivity;)V

    .line 94
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .param p1, "parent"    # Landroid/widget/AdapterView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    .line 96
    return-void
.end method
