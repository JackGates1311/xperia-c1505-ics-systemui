.class public Lcom/sony/nfx/android/systemui/statusbar/SubNetworkController;
.super Landroid/content/BroadcastReceiver;
.source "SubNetworkController.java"


# static fields
.field private static mInvalidState:Z


# instance fields
.field private enableShowing:Z

.field private mNetworkOperator:Landroid/widget/TextView;

.field private mNoSsid:Ljava/lang/String;

.field private mOperatorName:Ljava/lang/String;

.field mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mServiceState:Landroid/telephony/ServiceState;

.field private mWifiConnected:Z

.field private mWifiEnabled:Z

.field private final mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiSsid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sony/nfx/android/systemui/statusbar/SubNetworkController;->mInvalidState:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 45
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 27
    iput-object v2, p0, Lcom/sony/nfx/android/systemui/statusbar/SubNetworkController;->mNetworkOperator:Landroid/widget/TextView;

    .line 28
    iput-object v2, p0, Lcom/sony/nfx/android/systemui/statusbar/SubNetworkController;->mOperatorName:Ljava/lang/String;

    .line 29
    iput-boolean v3, p0, Lcom/sony/nfx/android/systemui/statusbar/SubNetworkController;->enableShowing:Z

    .line 67
    new-instance v2, Lcom/sony/nfx/android/systemui/statusbar/SubNetworkController$1;

    invoke-direct {v2, p0}, Lcom/sony/nfx/android/systemui/statusbar/SubNetworkController$1;-><init>(Lcom/sony/nfx/android/systemui/statusbar/SubNetworkController;)V

    iput-object v2, p0, Lcom/sony/nfx/android/systemui/statusbar/SubNetworkController;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 47
    const-string v2, "phone"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 48
    .local v1, "mPhone":Landroid/telephony/TelephonyManager;
    iget-object v2, p0, Lcom/sony/nfx/android/systemui/statusbar/SubNetworkController;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 52
    const-string v2, "wifi"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    iput-object v2, p0, Lcom/sony/nfx/android/systemui/statusbar/SubNetworkController;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 54
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 55
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 56
    const-string v2, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 58
    const-string v2, "ro.sony.wan.comAtMode"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 59
    const-string v2, "com.android.internal.telephony.INVALID_SIM"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 62
    :cond_0
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 64
    const v2, 0x7f080093

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sony/nfx/android/systemui/statusbar/SubNetworkController;->mNoSsid:Ljava/lang/String;

    .line 65
    return-void
.end method

.method static synthetic access$002(Lcom/sony/nfx/android/systemui/statusbar/SubNetworkController;Landroid/telephony/ServiceState;)Landroid/telephony/ServiceState;
    .locals 0
    .param p0, "x0"    # Lcom/sony/nfx/android/systemui/statusbar/SubNetworkController;
    .param p1, "x1"    # Landroid/telephony/ServiceState;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/sony/nfx/android/systemui/statusbar/SubNetworkController;->mServiceState:Landroid/telephony/ServiceState;

    return-object p1
.end method

.method static synthetic access$100(Lcom/sony/nfx/android/systemui/statusbar/SubNetworkController;)V
    .locals 0
    .param p0, "x0"    # Lcom/sony/nfx/android/systemui/statusbar/SubNetworkController;

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/sony/nfx/android/systemui/statusbar/SubNetworkController;->updateNetworkOperatorName()V

    return-void
.end method

.method private huntForSsid(Landroid/net/wifi/WifiInfo;)Ljava/lang/String;
    .locals 6
    .param p1, "info"    # Landroid/net/wifi/WifiInfo;

    .prologue
    .line 148
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v3

    .line 149
    .local v3, "ssid":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 159
    .end local v3    # "ssid":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 153
    .restart local v3    # "ssid":Ljava/lang/String;
    :cond_0
    iget-object v4, p0, Lcom/sony/nfx/android/systemui/statusbar/SubNetworkController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v2

    .line 154
    .local v2, "networks":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 155
    .local v1, "net":Landroid/net/wifi/WifiConfiguration;
    iget v4, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v5

    if-ne v4, v5, :cond_1

    .line 156
    iget-object v3, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    goto :goto_0

    .line 159
    .end local v1    # "net":Landroid/net/wifi/WifiConfiguration;
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private updateNetworkOperatorName()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 163
    iget-boolean v2, p0, Lcom/sony/nfx/android/systemui/statusbar/SubNetworkController;->mWifiConnected:Z

    if-eqz v2, :cond_3

    .line 164
    iget-object v2, p0, Lcom/sony/nfx/android/systemui/statusbar/SubNetworkController;->mWifiSsid:Ljava/lang/String;

    if-nez v2, :cond_2

    .line 165
    iget-object v2, p0, Lcom/sony/nfx/android/systemui/statusbar/SubNetworkController;->mNoSsid:Ljava/lang/String;

    iput-object v2, p0, Lcom/sony/nfx/android/systemui/statusbar/SubNetworkController;->mOperatorName:Ljava/lang/String;

    .line 202
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/sony/nfx/android/systemui/statusbar/SubNetworkController;->mNetworkOperator:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    .line 203
    iget-object v2, p0, Lcom/sony/nfx/android/systemui/statusbar/SubNetworkController;->mOperatorName:Ljava/lang/String;

    if-eqz v2, :cond_7

    iget-boolean v2, p0, Lcom/sony/nfx/android/systemui/statusbar/SubNetworkController;->enableShowing:Z

    if-eqz v2, :cond_7

    .line 204
    iget-object v2, p0, Lcom/sony/nfx/android/systemui/statusbar/SubNetworkController;->mNetworkOperator:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/sony/nfx/android/systemui/statusbar/SubNetworkController;->mOperatorName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 205
    iget-object v2, p0, Lcom/sony/nfx/android/systemui/statusbar/SubNetworkController;->mNetworkOperator:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 207
    iget-object v2, p0, Lcom/sony/nfx/android/systemui/statusbar/SubNetworkController;->mNetworkOperator:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->requestFocus()Z

    .line 212
    :cond_1
    :goto_1
    return-void

    .line 167
    :cond_2
    iget-object v2, p0, Lcom/sony/nfx/android/systemui/statusbar/SubNetworkController;->mWifiSsid:Ljava/lang/String;

    iput-object v2, p0, Lcom/sony/nfx/android/systemui/statusbar/SubNetworkController;->mOperatorName:Ljava/lang/String;

    goto :goto_0

    .line 170
    :cond_3
    iget-object v2, p0, Lcom/sony/nfx/android/systemui/statusbar/SubNetworkController;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/sony/nfx/android/systemui/statusbar/SubNetworkController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    if-nez v2, :cond_6

    .line 171
    iget-object v2, p0, Lcom/sony/nfx/android/systemui/statusbar/SubNetworkController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sony/nfx/android/systemui/statusbar/SubNetworkController;->mOperatorName:Ljava/lang/String;

    .line 173
    const-string v2, "ro.sony.wan.comAtMode"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 174
    iget-object v2, p0, Lcom/sony/nfx/android/systemui/statusbar/SubNetworkController;->mOperatorName:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/sony/nfx/android/systemui/statusbar/SubNetworkController;->mOperatorName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x5

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/sony/nfx/android/systemui/statusbar/SubNetworkController;->mOperatorName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_5

    .line 176
    :cond_4
    :try_start_0
    iget-object v2, p0, Lcom/sony/nfx/android/systemui/statusbar/SubNetworkController;->mOperatorName:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 177
    .local v0, "n":I
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sony/nfx/android/systemui/statusbar/SubNetworkController;->mOperatorName:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 178
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v2, 0x3

    const-string v3, " "

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sony/nfx/android/systemui/statusbar/SubNetworkController;->mOperatorName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    .end local v0    # "n":I
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    :cond_5
    :goto_2
    const-string v2, "ro.sony.wan.comAtMode"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 186
    sput-boolean v4, Lcom/sony/nfx/android/systemui/statusbar/SubNetworkController;->mInvalidState:Z

    goto/16 :goto_0

    .line 190
    :cond_6
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sony/nfx/android/systemui/statusbar/SubNetworkController;->mOperatorName:Ljava/lang/String;

    .line 192
    const-string v2, "ro.sony.wan.comAtMode"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 193
    sget-boolean v2, Lcom/sony/nfx/android/systemui/statusbar/SubNetworkController;->mInvalidState:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 194
    const-string v2, "Invalid Card"

    iput-object v2, p0, Lcom/sony/nfx/android/systemui/statusbar/SubNetworkController;->mOperatorName:Ljava/lang/String;

    .line 195
    sput-boolean v4, Lcom/sony/nfx/android/systemui/statusbar/SubNetworkController;->mInvalidState:Z

    goto/16 :goto_0

    .line 209
    :cond_7
    iget-object v2, p0, Lcom/sony/nfx/android/systemui/statusbar/SubNetworkController;->mNetworkOperator:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 180
    :catch_0
    move-exception v2

    goto :goto_2
.end method

.method private updateWifiState(Landroid/content/Intent;)V
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 123
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 124
    .local v0, "action":Ljava/lang/String;
    const-string v6, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 125
    const-string v6, "wifi_state"

    const/4 v7, 0x4

    invoke-virtual {p1, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_1

    :goto_0
    iput-boolean v4, p0, Lcom/sony/nfx/android/systemui/statusbar/SubNetworkController;->mWifiEnabled:Z

    .line 145
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v4, v5

    .line 125
    goto :goto_0

    .line 128
    :cond_2
    const-string v6, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 129
    const-string v6, "networkInfo"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkInfo;

    .line 131
    .local v2, "networkInfo":Landroid/net/NetworkInfo;
    iget-boolean v3, p0, Lcom/sony/nfx/android/systemui/statusbar/SubNetworkController;->mWifiConnected:Z

    .line 132
    .local v3, "wasConnected":Z
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v6

    if-eqz v6, :cond_3

    :goto_2
    iput-boolean v4, p0, Lcom/sony/nfx/android/systemui/statusbar/SubNetworkController;->mWifiConnected:Z

    .line 134
    iget-boolean v4, p0, Lcom/sony/nfx/android/systemui/statusbar/SubNetworkController;->mWifiConnected:Z

    if-eqz v4, :cond_5

    if-nez v3, :cond_5

    .line 135
    iget-object v4, p0, Lcom/sony/nfx/android/systemui/statusbar/SubNetworkController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 136
    .local v1, "info":Landroid/net/wifi/WifiInfo;
    if-eqz v1, :cond_4

    .line 137
    invoke-direct {p0, v1}, Lcom/sony/nfx/android/systemui/statusbar/SubNetworkController;->huntForSsid(Landroid/net/wifi/WifiInfo;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/sony/nfx/android/systemui/statusbar/SubNetworkController;->mWifiSsid:Ljava/lang/String;

    goto :goto_1

    .end local v1    # "info":Landroid/net/wifi/WifiInfo;
    :cond_3
    move v4, v5

    .line 132
    goto :goto_2

    .line 139
    .restart local v1    # "info":Landroid/net/wifi/WifiInfo;
    :cond_4
    iput-object v7, p0, Lcom/sony/nfx/android/systemui/statusbar/SubNetworkController;->mWifiSsid:Ljava/lang/String;

    goto :goto_1

    .line 141
    .end local v1    # "info":Landroid/net/wifi/WifiInfo;
    :cond_5
    iget-boolean v4, p0, Lcom/sony/nfx/android/systemui/statusbar/SubNetworkController;->mWifiConnected:Z

    if-nez v4, :cond_0

    .line 142
    iput-object v7, p0, Lcom/sony/nfx/android/systemui/statusbar/SubNetworkController;->mWifiSsid:Ljava/lang/String;

    goto :goto_1
.end method


# virtual methods
.method public addNetworkOperatorView(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 80
    check-cast p1, Landroid/widget/TextView;

    .end local p1    # "view":Landroid/view/View;
    iput-object p1, p0, Lcom/sony/nfx/android/systemui/statusbar/SubNetworkController;->mNetworkOperator:Landroid/widget/TextView;

    .line 81
    return-void
.end method

.method public enableShowOperatorName(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 84
    iput-boolean p1, p0, Lcom/sony/nfx/android/systemui/statusbar/SubNetworkController;->enableShowing:Z

    .line 86
    iget-object v0, p0, Lcom/sony/nfx/android/systemui/statusbar/SubNetworkController;->mNetworkOperator:Landroid/widget/TextView;

    if-nez v0, :cond_1

    .line 98
    :cond_0
    :goto_0
    return-void

    .line 90
    :cond_1
    iget-boolean v0, p0, Lcom/sony/nfx/android/systemui/statusbar/SubNetworkController;->enableShowing:Z

    if-eqz v0, :cond_2

    .line 91
    iget-object v0, p0, Lcom/sony/nfx/android/systemui/statusbar/SubNetworkController;->mOperatorName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/sony/nfx/android/systemui/statusbar/SubNetworkController;->mNetworkOperator:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sony/nfx/android/systemui/statusbar/SubNetworkController;->mOperatorName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    iget-object v0, p0, Lcom/sony/nfx/android/systemui/statusbar/SubNetworkController;->mNetworkOperator:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 96
    :cond_2
    iget-object v0, p0, Lcom/sony/nfx/android/systemui/statusbar/SubNetworkController;->mNetworkOperator:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 102
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 103
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 105
    :cond_0
    invoke-direct {p0, p2}, Lcom/sony/nfx/android/systemui/statusbar/SubNetworkController;->updateWifiState(Landroid/content/Intent;)V

    .line 106
    invoke-direct {p0}, Lcom/sony/nfx/android/systemui/statusbar/SubNetworkController;->updateNetworkOperatorName()V

    .line 109
    :cond_1
    const-string v1, "ro.sony.wan.comAtMode"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 110
    const-string v1, "com.android.internal.telephony.INVALID_SIM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 112
    const/4 v1, 0x1

    sput-boolean v1, Lcom/sony/nfx/android/systemui/statusbar/SubNetworkController;->mInvalidState:Z

    .line 113
    invoke-direct {p0}, Lcom/sony/nfx/android/systemui/statusbar/SubNetworkController;->updateNetworkOperatorName()V

    .line 117
    :cond_2
    return-void
.end method
