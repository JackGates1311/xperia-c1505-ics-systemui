.class public Lcom/android/systemui/statusbar/policy/BluetoothController;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothController.java"


# instance fields
.field private mContentDescriptionId:I

.field private mContext:Landroid/content/Context;

.field private mEnabled:Z

.field private mIconId:I

.field private mIconViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 41
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 35
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/BluetoothController;->mIconViews:Ljava/util/ArrayList;

    .line 37
    const v2, 0x7f020072

    iput v2, p0, Lcom/android/systemui/statusbar/policy/BluetoothController;->mIconId:I

    .line 38
    iput v3, p0, Lcom/android/systemui/statusbar/policy/BluetoothController;->mContentDescriptionId:I

    .line 39
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/BluetoothController;->mEnabled:Z

    .line 42
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/BluetoothController;->mContext:Landroid/content/Context;

    .line 44
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 45
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 46
    const-string v2, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 47
    invoke-virtual {p1, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 49
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 50
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v0, :cond_0

    .line 51
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/BluetoothController;->handleAdapterStateChange(I)V

    .line 52
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getConnectionState()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/BluetoothController;->handleConnectionStateChange(I)V

    .line 54
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/BluetoothController;->refreshViews()V

    .line 55
    return-void
.end method


# virtual methods
.method public addIconView(Landroid/widget/ImageView;)V
    .locals 1
    .param p1, "v"    # Landroid/widget/ImageView;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothController;->mIconViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    return-void
.end method

.method public handleAdapterStateChange(I)V
    .locals 1
    .param p1, "adapterState"    # I

    .prologue
    .line 77
    const/16 v0, 0xc

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothController;->mEnabled:Z

    .line 78
    return-void

    .line 77
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public handleConnectionStateChange(I)V
    .locals 2
    .param p1, "connectionState"    # I

    .prologue
    .line 81
    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    const/4 v0, 0x1

    .line 82
    .local v0, "connected":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 83
    const v1, 0x7f020073

    iput v1, p0, Lcom/android/systemui/statusbar/policy/BluetoothController;->mIconId:I

    .line 84
    const v1, 0x7f08003e

    iput v1, p0, Lcom/android/systemui/statusbar/policy/BluetoothController;->mContentDescriptionId:I

    .line 89
    :goto_1
    return-void

    .line 81
    .end local v0    # "connected":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 86
    .restart local v0    # "connected":Z
    :cond_1
    const v1, 0x7f020072

    iput v1, p0, Lcom/android/systemui/statusbar/policy/BluetoothController;->mIconId:I

    .line 87
    const v1, 0x7f08003f

    iput v1, p0, Lcom/android/systemui/statusbar/policy/BluetoothController;->mContentDescriptionId:I

    goto :goto_1
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 63
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 66
    const-string v1, "android.bluetooth.adapter.extra.STATE"

    const/high16 v2, -0x80000000

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/BluetoothController;->handleAdapterStateChange(I)V

    .line 73
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/BluetoothController;->refreshViews()V

    .line 74
    return-void

    .line 68
    :cond_1
    const-string v1, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 69
    const-string v1, "android.bluetooth.adapter.extra.CONNECTION_STATE"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/BluetoothController;->handleConnectionStateChange(I)V

    goto :goto_0
.end method

.method public refreshViews()V
    .locals 5

    .prologue
    .line 92
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/BluetoothController;->mIconViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 93
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 94
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/BluetoothController;->mIconViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 95
    .local v2, "v":Landroid/widget/ImageView;
    iget v3, p0, Lcom/android/systemui/statusbar/policy/BluetoothController;->mIconId:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 96
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/BluetoothController;->mEnabled:Z

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 97
    iget v3, p0, Lcom/android/systemui/statusbar/policy/BluetoothController;->mContentDescriptionId:I

    if-nez v3, :cond_1

    const/4 v3, 0x0

    :goto_2
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 93
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 96
    :cond_0
    const/16 v3, 0x8

    goto :goto_1

    .line 97
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/BluetoothController;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/android/systemui/statusbar/policy/BluetoothController;->mContentDescriptionId:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 101
    .end local v2    # "v":Landroid/widget/ImageView;
    :cond_2
    return-void
.end method
