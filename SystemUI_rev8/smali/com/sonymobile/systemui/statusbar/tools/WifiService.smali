.class public Lcom/sonymobile/systemui/statusbar/tools/WifiService;
.super Lcom/sonymobile/systemui/statusbar/tools/ToolsService;
.source "WifiService.java"


# instance fields
.field private mIsRegistered:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/sonymobile/systemui/statusbar/tools/ToolsService;-><init>(Landroid/content/Context;)V

    .line 29
    new-instance v0, Lcom/sonymobile/systemui/statusbar/tools/WifiService$1;

    invoke-direct {v0, p0}, Lcom/sonymobile/systemui/statusbar/tools/WifiService$1;-><init>(Lcom/sonymobile/systemui/statusbar/tools/WifiService;)V

    iput-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/WifiService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 44
    return-void
.end method

.method private turnOffWifiHotspot()V
    .locals 3

    .prologue
    .line 88
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/WifiService;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 89
    .local v1, "wifiMgr":Landroid/net/wifi/WifiManager;
    if-eqz v1, :cond_0

    .line 90
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 91
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_0

    .line 92
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 95
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_0
    return-void
.end method


# virtual methods
.method public changeTo(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    .line 77
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/WifiService;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 78
    .local v1, "wifiManager":Landroid/net/wifi/WifiManager;
    if-eqz v1, :cond_1

    .line 79
    const/4 v2, 0x2

    if-ne p1, v2, :cond_2

    const/4 v0, 0x1

    .line 80
    .local v0, "enable":Z
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sonymobile/systemui/statusbar/tools/WifiService;->isWifiHotspotEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 81
    invoke-direct {p0}, Lcom/sonymobile/systemui/statusbar/tools/WifiService;->turnOffWifiHotspot()V

    .line 83
    :cond_0
    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 85
    .end local v0    # "enable":Z
    :cond_1
    return-void

    .line 79
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isWifiHotspotEnabled()Z
    .locals 3

    .prologue
    .line 98
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/WifiService;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 100
    .local v1, "wifiMgr":Landroid/net/wifi/WifiManager;
    const/16 v0, 0xc

    .line 101
    .local v0, "state":I
    if-eqz v1, :cond_0

    .line 102
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    .line 104
    :cond_0
    const/16 v2, 0xd

    if-ne v0, v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public start()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 48
    iget-boolean v1, p0, Lcom/sonymobile/systemui/statusbar/tools/WifiService;->mIsRegistered:Z

    if-nez v1, :cond_0

    .line 49
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 50
    .local v0, "wifiFilter":Landroid/content/IntentFilter;
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 51
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/tools/WifiService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 52
    iput-boolean v3, p0, Lcom/sonymobile/systemui/statusbar/tools/WifiService;->mIsRegistered:Z

    .line 54
    .end local v0    # "wifiFilter":Landroid/content/IntentFilter;
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/WifiService;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v1, :cond_1

    .line 55
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsService;->mContext:Landroid/content/Context;

    const-string v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/WifiService;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 57
    :cond_1
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/WifiService;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v1, :cond_2

    .line 58
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/WifiService;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 59
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/sonymobile/systemui/statusbar/tools/WifiService;->notifyStateChanged(I)V

    .line 64
    :cond_2
    :goto_0
    return-void

    .line 61
    :cond_3
    invoke-virtual {p0, v3}, Lcom/sonymobile/systemui/statusbar/tools/WifiService;->notifyStateChanged(I)V

    goto :goto_0
.end method
