.class public Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;
.super Ljava/lang/Object;
.source "ToolsMain.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$ToolsServiceListenerImpl;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mServices:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/sonymobile/systemui/statusbar/tools/ToolsService;",
            ">;"
        }
    .end annotation
.end field

.field private final mView:Lcom/sonymobile/systemui/statusbar/tools/ToolsView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sonymobile/systemui/statusbar/tools/ToolsView;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "view"    # Lcom/sonymobile/systemui/statusbar/tools/ToolsView;

    .prologue
    .line 39
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mContext:Landroid/content/Context;

    .line 41
    iput-object p2, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mView:Lcom/sonymobile/systemui/statusbar/tools/ToolsView;

    .line 42
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mServices:Ljava/util/LinkedList;

    .line 43
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 31
    invoke-static {p0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->showNextActivity(Landroid/content/Context;)V

    return-void
.end method

.method private createBluetooth()V
    .locals 6

    .prologue
    const/4 v5, 0x4

    .line 143
    new-instance v1, Lcom/sonymobile/systemui/statusbar/tools/BluetoothService;

    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/sonymobile/systemui/statusbar/tools/BluetoothService;-><init>(Landroid/content/Context;)V

    .line 144
    .local v1, "service":Lcom/sonymobile/systemui/statusbar/tools/BluetoothService;
    new-instance v0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$4;

    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v2, v1}, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$4;-><init>(Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;Landroid/content/Context;Lcom/sonymobile/systemui/statusbar/tools/BluetoothService;)V

    .line 157
    .local v0, "button":Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;
    const/4 v2, 0x1

    const v3, 0x7f0200db

    new-array v4, v5, [I

    fill-array-data v4, :array_0

    invoke-virtual {v0, v2, v3, v4}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->addState(II[I)V

    .line 160
    const/4 v2, 0x2

    const v3, 0x7f0200dc

    new-array v4, v5, [I

    fill-array-data v4, :array_1

    invoke-virtual {v0, v2, v3, v4}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->addState(II[I)V

    .line 163
    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mView:Lcom/sonymobile/systemui/statusbar/tools/ToolsView;

    invoke-virtual {v2, v0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsView;->addButton(Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;)V

    .line 165
    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mServices:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 166
    new-instance v2, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$ToolsServiceListenerImpl;

    invoke-direct {v2, v0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$ToolsServiceListenerImpl;-><init>(Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;)V

    invoke-virtual {v1, v2}, Lcom/sonymobile/systemui/statusbar/tools/BluetoothService;->setListener(Lcom/sonymobile/systemui/statusbar/tools/ToolsService$ToolsServiceListener;)V

    .line 167
    return-void

    .line 157
    :array_0
    .array-data 4
        0x7f0200da
        0x7f0200d9
        0x7f0200dc
        0x7f0200db
    .end array-data

    .line 160
    :array_1
    .array-data 4
        0x7f0200db
        0x7f0200dc
        0x7f0200d9
        0x7f0200da
    .end array-data
.end method

.method private createDataTraffic()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 118
    new-instance v1, Lcom/sonymobile/systemui/statusbar/tools/DataTrafficService;

    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/sonymobile/systemui/statusbar/tools/DataTrafficService;-><init>(Landroid/content/Context;)V

    .line 119
    .local v1, "service":Lcom/sonymobile/systemui/statusbar/tools/DataTrafficService;
    new-instance v0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$3;

    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v2, v1}, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$3;-><init>(Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;Landroid/content/Context;Lcom/sonymobile/systemui/statusbar/tools/DataTrafficService;)V

    .line 134
    .local v0, "button":Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;
    const/4 v2, 0x1

    const v3, 0x7f0200dd

    invoke-virtual {v0, v2, v3, v4}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->addState(II[I)V

    .line 135
    const/4 v2, 0x2

    const v3, 0x7f0200de

    invoke-virtual {v0, v2, v3, v4}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->addState(II[I)V

    .line 136
    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mView:Lcom/sonymobile/systemui/statusbar/tools/ToolsView;

    invoke-virtual {v2, v0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsView;->addButton(Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;)V

    .line 138
    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mServices:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 139
    new-instance v2, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$ToolsServiceListenerImpl;

    invoke-direct {v2, v0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$ToolsServiceListenerImpl;-><init>(Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;)V

    invoke-virtual {v1, v2}, Lcom/sonymobile/systemui/statusbar/tools/DataTrafficService;->setListener(Lcom/sonymobile/systemui/statusbar/tools/ToolsService$ToolsServiceListener;)V

    .line 140
    return-void
.end method

.method private createSettingsShortcut()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 73
    new-instance v0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$1;

    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$1;-><init>(Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;Landroid/content/Context;)V

    .line 83
    .local v0, "button":Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;
    const v1, 0x7f0200e0

    const/4 v2, 0x0

    invoke-virtual {v0, v3, v1, v2}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->addState(II[I)V

    .line 84
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mView:Lcom/sonymobile/systemui/statusbar/tools/ToolsView;

    invoke-virtual {v1, v0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsView;->addButton(Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;)V

    .line 85
    invoke-virtual {v0, v3}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->setState(I)V

    .line 86
    return-void
.end method

.method private createSound()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 90
    new-instance v1, Lcom/sonymobile/systemui/statusbar/tools/SoundService;

    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/sonymobile/systemui/statusbar/tools/SoundService;-><init>(Landroid/content/Context;)V

    .line 91
    .local v1, "service":Lcom/sonymobile/systemui/statusbar/tools/SoundService;
    new-instance v0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$2;

    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v2, v1}, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$2;-><init>(Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;Landroid/content/Context;Lcom/sonymobile/systemui/statusbar/tools/SoundService;)V

    .line 106
    .local v0, "button":Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;
    const/4 v2, 0x1

    const v3, 0x7f0200e1

    invoke-virtual {v0, v2, v3, v4}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->addState(II[I)V

    .line 107
    const/4 v2, 0x2

    const v3, 0x7f0200e2

    invoke-virtual {v0, v2, v3, v4}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->addState(II[I)V

    .line 108
    const/4 v2, 0x3

    const v3, 0x7f0200e3

    invoke-virtual {v0, v2, v3, v4}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->addState(II[I)V

    .line 109
    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mView:Lcom/sonymobile/systemui/statusbar/tools/ToolsView;

    invoke-virtual {v2, v0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsView;->addButton(Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;)V

    .line 111
    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mServices:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 112
    new-instance v2, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$ToolsServiceListenerImpl;

    invoke-direct {v2, v0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$ToolsServiceListenerImpl;-><init>(Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;)V

    invoke-virtual {v1, v2}, Lcom/sonymobile/systemui/statusbar/tools/SoundService;->setListener(Lcom/sonymobile/systemui/statusbar/tools/ToolsService$ToolsServiceListener;)V

    .line 114
    return-void
.end method

.method private createWifi()V
    .locals 6

    .prologue
    const/4 v5, 0x5

    .line 170
    new-instance v1, Lcom/sonymobile/systemui/statusbar/tools/WifiService;

    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/sonymobile/systemui/statusbar/tools/WifiService;-><init>(Landroid/content/Context;)V

    .line 171
    .local v1, "service":Lcom/sonymobile/systemui/statusbar/tools/WifiService;
    new-instance v0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$5;

    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v2, v1}, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$5;-><init>(Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;Landroid/content/Context;Lcom/sonymobile/systemui/statusbar/tools/WifiService;)V

    .line 184
    .local v0, "button":Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;
    const/4 v2, 0x1

    const v3, 0x7f0200e7

    new-array v4, v5, [I

    fill-array-data v4, :array_0

    invoke-virtual {v0, v2, v3, v4}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->addState(II[I)V

    .line 188
    const/4 v2, 0x2

    const v3, 0x7f0200e8

    new-array v4, v5, [I

    fill-array-data v4, :array_1

    invoke-virtual {v0, v2, v3, v4}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->addState(II[I)V

    .line 192
    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mView:Lcom/sonymobile/systemui/statusbar/tools/ToolsView;

    invoke-virtual {v2, v0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsView;->addButton(Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;)V

    .line 194
    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mServices:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 195
    new-instance v2, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$ToolsServiceListenerImpl;

    invoke-direct {v2, v0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$ToolsServiceListenerImpl;-><init>(Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;)V

    invoke-virtual {v1, v2}, Lcom/sonymobile/systemui/statusbar/tools/WifiService;->setListener(Lcom/sonymobile/systemui/statusbar/tools/ToolsService$ToolsServiceListener;)V

    .line 196
    return-void

    .line 184
    :array_0
    .array-data 4
        0x7f0200e8
        0x7f0200e6
        0x7f0200e5
        0x7f0200e4
        0x7f0200e7
    .end array-data

    .line 188
    :array_1
    .array-data 4
        0x7f0200e7
        0x7f0200e4
        0x7f0200e5
        0x7f0200e6
        0x7f0200e8
    .end array-data
.end method

.method private static final showNextActivity(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 228
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->resumeAppSwitches()V

    .line 229
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->dismissKeyguardOnNextActivity()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 233
    :goto_0
    const-string v1, "statusbar"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    .line 235
    .local v0, "manager":Landroid/app/StatusBarManager;
    if-eqz v0, :cond_0

    .line 236
    invoke-virtual {v0}, Landroid/app/StatusBarManager;->collapse()V

    .line 238
    :cond_0
    return-void

    .line 230
    .end local v0    # "manager":Landroid/app/StatusBarManager;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private startServices()V
    .locals 3

    .prologue
    .line 66
    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mServices:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/systemui/statusbar/tools/ToolsService;

    .line 67
    .local v1, "service":Lcom/sonymobile/systemui/statusbar/tools/ToolsService;
    invoke-virtual {v1}, Lcom/sonymobile/systemui/statusbar/tools/ToolsService;->start()V

    goto :goto_0

    .line 69
    .end local v1    # "service":Lcom/sonymobile/systemui/statusbar/tools/ToolsService;
    :cond_0
    return-void
.end method


# virtual methods
.method public start()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->createSound()V

    .line 51
    invoke-direct {p0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->createBluetooth()V

    .line 54
    invoke-direct {p0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->createWifi()V

    .line 57
    invoke-direct {p0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->createDataTraffic()V

    .line 60
    invoke-direct {p0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->createSettingsShortcut()V

    .line 62
    invoke-direct {p0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->startServices()V

    .line 63
    return-void
.end method
