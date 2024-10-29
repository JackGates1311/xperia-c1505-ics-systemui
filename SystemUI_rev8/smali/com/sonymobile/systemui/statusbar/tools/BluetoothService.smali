.class public Lcom/sonymobile/systemui/statusbar/tools/BluetoothService;
.super Lcom/sonymobile/systemui/statusbar/tools/ToolsService;
.source "BluetoothService.java"


# instance fields
.field private mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mIsRegistered:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/sonymobile/systemui/statusbar/tools/ToolsService;-><init>(Landroid/content/Context;)V

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/systemui/statusbar/tools/BluetoothService;->mIsRegistered:Z

    .line 28
    new-instance v0, Lcom/sonymobile/systemui/statusbar/tools/BluetoothService$1;

    invoke-direct {v0, p0}, Lcom/sonymobile/systemui/statusbar/tools/BluetoothService$1;-><init>(Lcom/sonymobile/systemui/statusbar/tools/BluetoothService;)V

    iput-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/BluetoothService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 46
    return-void
.end method


# virtual methods
.method public changeTo(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 82
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/BluetoothService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 83
    .local v0, "btAdapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v0, :cond_0

    .line 84
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 85
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    .line 90
    :cond_0
    :goto_0
    return-void

    .line 87
    :cond_1
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    goto :goto_0
.end method

.method public start()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 50
    iget-boolean v1, p0, Lcom/sonymobile/systemui/statusbar/tools/BluetoothService;->mIsRegistered:Z

    if-nez v1, :cond_0

    .line 51
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 52
    .local v0, "bluetoothFilter":Landroid/content/IntentFilter;
    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 53
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/tools/BluetoothService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 54
    iput-boolean v3, p0, Lcom/sonymobile/systemui/statusbar/tools/BluetoothService;->mIsRegistered:Z

    .line 56
    .end local v0    # "bluetoothFilter":Landroid/content/IntentFilter;
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/BluetoothService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v1, :cond_1

    .line 57
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/BluetoothService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 60
    :cond_1
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/BluetoothService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v1, :cond_3

    .line 61
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/BluetoothService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 62
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/sonymobile/systemui/statusbar/tools/BluetoothService;->notifyStateChanged(I)V

    .line 69
    :goto_0
    return-void

    .line 64
    :cond_2
    invoke-virtual {p0, v3}, Lcom/sonymobile/systemui/statusbar/tools/BluetoothService;->notifyStateChanged(I)V

    goto :goto_0

    .line 67
    :cond_3
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/sonymobile/systemui/statusbar/tools/BluetoothService;->notifyStateChanged(I)V

    goto :goto_0
.end method
