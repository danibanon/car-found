.class public final Lcom/example/cardisconnecttracker/databinding/ActivityMainBinding;
.super Ljava/lang/Object;
.source "ActivityMainBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final addressText:Landroid/widget/TextView;

.field public final clearLocationButton:Lcom/google/android/material/button/MaterialButton;

.field public final coordinatesText:Landroid/widget/TextView;

.field public final deviceSpinner:Landroid/widget/Spinner;

.field public final grantPermissionsButton:Lcom/google/android/material/button/MaterialButton;

.field public final openMapsButton:Lcom/google/android/material/button/MaterialButton;

.field public final openSettingsButton:Lcom/google/android/material/button/MaterialButton;

.field public final permissionHintText:Landroid/widget/TextView;

.field public final refreshDevicesButton:Lcom/google/android/material/button/MaterialButton;

.field private final rootView:Landroid/widget/ScrollView;

.field public final statusText:Landroid/widget/TextView;

.field public final timestampText:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/ScrollView;Landroid/widget/TextView;Lcom/google/android/material/button/MaterialButton;Landroid/widget/TextView;Landroid/widget/Spinner;Lcom/google/android/material/button/MaterialButton;Lcom/google/android/material/button/MaterialButton;Lcom/google/android/material/button/MaterialButton;Landroid/widget/TextView;Lcom/google/android/material/button/MaterialButton;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0
    .param p1, "rootView"    # Landroid/widget/ScrollView;
    .param p2, "addressText"    # Landroid/widget/TextView;
    .param p3, "clearLocationButton"    # Lcom/google/android/material/button/MaterialButton;
    .param p4, "coordinatesText"    # Landroid/widget/TextView;
    .param p5, "deviceSpinner"    # Landroid/widget/Spinner;
    .param p6, "grantPermissionsButton"    # Lcom/google/android/material/button/MaterialButton;
    .param p7, "openMapsButton"    # Lcom/google/android/material/button/MaterialButton;
    .param p8, "openSettingsButton"    # Lcom/google/android/material/button/MaterialButton;
    .param p9, "permissionHintText"    # Landroid/widget/TextView;
    .param p10, "refreshDevicesButton"    # Lcom/google/android/material/button/MaterialButton;
    .param p11, "statusText"    # Landroid/widget/TextView;
    .param p12, "timestampText"    # Landroid/widget/TextView;

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/example/cardisconnecttracker/databinding/ActivityMainBinding;->rootView:Landroid/widget/ScrollView;

    .line 64
    iput-object p2, p0, Lcom/example/cardisconnecttracker/databinding/ActivityMainBinding;->addressText:Landroid/widget/TextView;

    .line 65
    iput-object p3, p0, Lcom/example/cardisconnecttracker/databinding/ActivityMainBinding;->clearLocationButton:Lcom/google/android/material/button/MaterialButton;

    .line 66
    iput-object p4, p0, Lcom/example/cardisconnecttracker/databinding/ActivityMainBinding;->coordinatesText:Landroid/widget/TextView;

    .line 67
    iput-object p5, p0, Lcom/example/cardisconnecttracker/databinding/ActivityMainBinding;->deviceSpinner:Landroid/widget/Spinner;

    .line 68
    iput-object p6, p0, Lcom/example/cardisconnecttracker/databinding/ActivityMainBinding;->grantPermissionsButton:Lcom/google/android/material/button/MaterialButton;

    .line 69
    iput-object p7, p0, Lcom/example/cardisconnecttracker/databinding/ActivityMainBinding;->openMapsButton:Lcom/google/android/material/button/MaterialButton;

    .line 70
    iput-object p8, p0, Lcom/example/cardisconnecttracker/databinding/ActivityMainBinding;->openSettingsButton:Lcom/google/android/material/button/MaterialButton;

    .line 71
    iput-object p9, p0, Lcom/example/cardisconnecttracker/databinding/ActivityMainBinding;->permissionHintText:Landroid/widget/TextView;

    .line 72
    iput-object p10, p0, Lcom/example/cardisconnecttracker/databinding/ActivityMainBinding;->refreshDevicesButton:Lcom/google/android/material/button/MaterialButton;

    .line 73
    iput-object p11, p0, Lcom/example/cardisconnecttracker/databinding/ActivityMainBinding;->statusText:Landroid/widget/TextView;

    .line 74
    iput-object p12, p0, Lcom/example/cardisconnecttracker/databinding/ActivityMainBinding;->timestampText:Landroid/widget/TextView;

    .line 75
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/example/cardisconnecttracker/databinding/ActivityMainBinding;
    .locals 27
    .param p0, "rootView"    # Landroid/view/View;

    .line 104
    move-object/from16 v0, p0

    sget v1, Lcom/example/cardisconnecttracker/R$id;->addressText:I

    .line 105
    .local v1, "id":I
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 106
    .local v2, "addressText":Landroid/widget/TextView;
    if-eqz v2, :cond_a

    .line 110
    sget v1, Lcom/example/cardisconnecttracker/R$id;->clearLocationButton:I

    .line 111
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v16, v3

    check-cast v16, Lcom/google/android/material/button/MaterialButton;

    .line 112
    .local v16, "clearLocationButton":Lcom/google/android/material/button/MaterialButton;
    if-eqz v16, :cond_9

    .line 116
    sget v1, Lcom/example/cardisconnecttracker/R$id;->coordinatesText:I

    .line 117
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v17, v3

    check-cast v17, Landroid/widget/TextView;

    .line 118
    .local v17, "coordinatesText":Landroid/widget/TextView;
    if-eqz v17, :cond_8

    .line 122
    sget v1, Lcom/example/cardisconnecttracker/R$id;->deviceSpinner:I

    .line 123
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v18, v3

    check-cast v18, Landroid/widget/Spinner;

    .line 124
    .local v18, "deviceSpinner":Landroid/widget/Spinner;
    if-eqz v18, :cond_7

    .line 128
    sget v1, Lcom/example/cardisconnecttracker/R$id;->grantPermissionsButton:I

    .line 129
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v19, v3

    check-cast v19, Lcom/google/android/material/button/MaterialButton;

    .line 130
    .local v19, "grantPermissionsButton":Lcom/google/android/material/button/MaterialButton;
    if-eqz v19, :cond_6

    .line 134
    sget v1, Lcom/example/cardisconnecttracker/R$id;->openMapsButton:I

    .line 135
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v20, v3

    check-cast v20, Lcom/google/android/material/button/MaterialButton;

    .line 136
    .local v20, "openMapsButton":Lcom/google/android/material/button/MaterialButton;
    if-eqz v20, :cond_5

    .line 140
    sget v1, Lcom/example/cardisconnecttracker/R$id;->openSettingsButton:I

    .line 141
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v21, v3

    check-cast v21, Lcom/google/android/material/button/MaterialButton;

    .line 142
    .local v21, "openSettingsButton":Lcom/google/android/material/button/MaterialButton;
    if-eqz v21, :cond_4

    .line 146
    sget v1, Lcom/example/cardisconnecttracker/R$id;->permissionHintText:I

    .line 147
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v22, v3

    check-cast v22, Landroid/widget/TextView;

    .line 148
    .local v22, "permissionHintText":Landroid/widget/TextView;
    if-eqz v22, :cond_3

    .line 152
    sget v1, Lcom/example/cardisconnecttracker/R$id;->refreshDevicesButton:I

    .line 153
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v23, v3

    check-cast v23, Lcom/google/android/material/button/MaterialButton;

    .line 154
    .local v23, "refreshDevicesButton":Lcom/google/android/material/button/MaterialButton;
    if-eqz v23, :cond_2

    .line 158
    sget v1, Lcom/example/cardisconnecttracker/R$id;->statusText:I

    .line 159
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v24, v3

    check-cast v24, Landroid/widget/TextView;

    .line 160
    .local v24, "statusText":Landroid/widget/TextView;
    if-eqz v24, :cond_1

    .line 164
    sget v1, Lcom/example/cardisconnecttracker/R$id;->timestampText:I

    .line 165
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v25, v3

    check-cast v25, Landroid/widget/TextView;

    .line 166
    .local v25, "timestampText":Landroid/widget/TextView;
    if-eqz v25, :cond_0

    .line 170
    new-instance v26, Lcom/example/cardisconnecttracker/databinding/ActivityMainBinding;

    move-object v4, v0

    check-cast v4, Landroid/widget/ScrollView;

    move-object/from16 v3, v26

    move-object v5, v2

    move-object/from16 v6, v16

    move-object/from16 v7, v17

    move-object/from16 v8, v18

    move-object/from16 v9, v19

    move-object/from16 v10, v20

    move-object/from16 v11, v21

    move-object/from16 v12, v22

    move-object/from16 v13, v23

    move-object/from16 v14, v24

    move-object/from16 v15, v25

    invoke-direct/range {v3 .. v15}, Lcom/example/cardisconnecttracker/databinding/ActivityMainBinding;-><init>(Landroid/widget/ScrollView;Landroid/widget/TextView;Lcom/google/android/material/button/MaterialButton;Landroid/widget/TextView;Landroid/widget/Spinner;Lcom/google/android/material/button/MaterialButton;Lcom/google/android/material/button/MaterialButton;Lcom/google/android/material/button/MaterialButton;Landroid/widget/TextView;Lcom/google/android/material/button/MaterialButton;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v26

    .line 167
    :cond_0
    goto :goto_0

    .line 161
    .end local v25    # "timestampText":Landroid/widget/TextView;
    :cond_1
    goto :goto_0

    .line 155
    .end local v24    # "statusText":Landroid/widget/TextView;
    :cond_2
    goto :goto_0

    .line 149
    .end local v23    # "refreshDevicesButton":Lcom/google/android/material/button/MaterialButton;
    :cond_3
    goto :goto_0

    .line 143
    .end local v22    # "permissionHintText":Landroid/widget/TextView;
    :cond_4
    goto :goto_0

    .line 137
    .end local v21    # "openSettingsButton":Lcom/google/android/material/button/MaterialButton;
    :cond_5
    goto :goto_0

    .line 131
    .end local v20    # "openMapsButton":Lcom/google/android/material/button/MaterialButton;
    :cond_6
    goto :goto_0

    .line 125
    .end local v19    # "grantPermissionsButton":Lcom/google/android/material/button/MaterialButton;
    :cond_7
    goto :goto_0

    .line 119
    .end local v18    # "deviceSpinner":Landroid/widget/Spinner;
    :cond_8
    goto :goto_0

    .line 113
    .end local v17    # "coordinatesText":Landroid/widget/TextView;
    :cond_9
    goto :goto_0

    .line 107
    .end local v16    # "clearLocationButton":Lcom/google/android/material/button/MaterialButton;
    :cond_a
    nop

    .line 174
    .end local v2    # "addressText":Landroid/widget/TextView;
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    .line 175
    .local v2, "missingId":Ljava/lang/String;
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "Missing required view with ID: "

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/example/cardisconnecttracker/databinding/ActivityMainBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;

    .line 85
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/example/cardisconnecttracker/databinding/ActivityMainBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/example/cardisconnecttracker/databinding/ActivityMainBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/example/cardisconnecttracker/databinding/ActivityMainBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "attachToParent"    # Z

    .line 91
    sget v0, Lcom/example/cardisconnecttracker/R$layout;->activity_main:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 92
    .local v0, "root":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 93
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 95
    :cond_0
    invoke-static {v0}, Lcom/example/cardisconnecttracker/databinding/ActivityMainBinding;->bind(Landroid/view/View;)Lcom/example/cardisconnecttracker/databinding/ActivityMainBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lcom/example/cardisconnecttracker/databinding/ActivityMainBinding;->getRoot()Landroid/widget/ScrollView;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/ScrollView;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/example/cardisconnecttracker/databinding/ActivityMainBinding;->rootView:Landroid/widget/ScrollView;

    return-object v0
.end method
