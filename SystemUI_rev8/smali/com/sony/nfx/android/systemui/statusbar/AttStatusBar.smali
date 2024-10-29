.class public Lcom/sony/nfx/android/systemui/statusbar/AttStatusBar;
.super Lcom/android/systemui/statusbar/tablet/TabletStatusBar;
.source "AttStatusBar.java"


# instance fields
.field private mNetworkControl:Lcom/sony/nfx/android/systemui/statusbar/SubNetworkController;

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field mSyncButton:Landroid/widget/ImageView;

.field private mSyncControl:Lcom/sony/nfx/android/systemui/statusbar/SyncController;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 12
    invoke-direct {p0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;-><init>()V

    .line 15
    iput-object v0, p0, Lcom/sony/nfx/android/systemui/statusbar/AttStatusBar;->mNetworkControl:Lcom/sony/nfx/android/systemui/statusbar/SubNetworkController;

    .line 16
    iput-object v0, p0, Lcom/sony/nfx/android/systemui/statusbar/AttStatusBar;->mSyncControl:Lcom/sony/nfx/android/systemui/statusbar/SyncController;

    .line 65
    new-instance v0, Lcom/sony/nfx/android/systemui/statusbar/AttStatusBar$1;

    invoke-direct {v0, p0}, Lcom/sony/nfx/android/systemui/statusbar/AttStatusBar$1;-><init>(Lcom/sony/nfx/android/systemui/statusbar/AttStatusBar;)V

    iput-object v0, p0, Lcom/sony/nfx/android/systemui/statusbar/AttStatusBar;->mOnClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/sony/nfx/android/systemui/statusbar/AttStatusBar;)V
    .locals 0
    .param p0, "x0"    # Lcom/sony/nfx/android/systemui/statusbar/AttStatusBar;

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/sony/nfx/android/systemui/statusbar/AttStatusBar;->onClickSyncButton()V

    return-void
.end method

.method private onClickSyncButton()V
    .locals 2

    .prologue
    .line 75
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.SYNC_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 76
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 77
    invoke-virtual {p0}, Lcom/sony/nfx/android/systemui/statusbar/AttStatusBar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 78
    return-void
.end method


# virtual methods
.method protected makeStatusBarView()Landroid/view/View;
    .locals 8

    .prologue
    .line 21
    invoke-super {p0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->makeStatusBarView()Landroid/view/View;

    move-result-object v3

    .local v3, "v":Landroid/view/View;
    move-object v2, v3

    .line 22
    check-cast v2, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;

    .line 24
    .local v2, "sb":Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 25
    .local v0, "res":Landroid/content/res/Resources;
    const-string v4, "network_operator"

    const-string v5, "id"

    const-string v6, "com.android.systemui"

    invoke-virtual {v0, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 26
    .local v1, "resId":I
    if-nez v1, :cond_1

    .line 54
    :cond_0
    :goto_0
    return-object v3

    .line 32
    :cond_1
    invoke-static {v2}, Lcom/sony/nfx/android/systemui/statusbar/AttMiscUIConfig;->setDrawableId(Landroid/view/View;)V

    .line 35
    new-instance v4, Lcom/sony/nfx/android/systemui/statusbar/SubNetworkController;

    invoke-virtual {p0}, Lcom/sony/nfx/android/systemui/statusbar/AttStatusBar;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/sony/nfx/android/systemui/statusbar/SubNetworkController;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/sony/nfx/android/systemui/statusbar/AttStatusBar;->mNetworkControl:Lcom/sony/nfx/android/systemui/statusbar/SubNetworkController;

    .line 36
    iget-object v4, p0, Lcom/sony/nfx/android/systemui/statusbar/AttStatusBar;->mNetworkControl:Lcom/sony/nfx/android/systemui/statusbar/SubNetworkController;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sony/nfx/android/systemui/statusbar/SubNetworkController;->addNetworkOperatorView(Landroid/view/View;)V

    .line 39
    const-string v4, "syncButton"

    const-string v5, "id"

    const-string v6, "com.android.systemui"

    invoke-virtual {v0, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 41
    if-eqz v1, :cond_0

    .line 44
    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/sony/nfx/android/systemui/statusbar/AttStatusBar;->mSyncButton:Landroid/widget/ImageView;

    .line 45
    iget-object v4, p0, Lcom/sony/nfx/android/systemui/statusbar/AttStatusBar;->mSyncButton:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/sony/nfx/android/systemui/statusbar/AttStatusBar;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    new-instance v4, Lcom/sony/nfx/android/systemui/statusbar/SyncController;

    iget-object v5, p0, Lcom/sony/nfx/android/systemui/statusbar/AttStatusBar;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/sony/nfx/android/systemui/statusbar/SyncController;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/sony/nfx/android/systemui/statusbar/AttStatusBar;->mSyncControl:Lcom/sony/nfx/android/systemui/statusbar/SyncController;

    .line 47
    iget-object v4, p0, Lcom/sony/nfx/android/systemui/statusbar/AttStatusBar;->mSyncControl:Lcom/sony/nfx/android/systemui/statusbar/SyncController;

    iget-object v5, p0, Lcom/sony/nfx/android/systemui/statusbar/AttStatusBar;->mSyncButton:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Lcom/sony/nfx/android/systemui/statusbar/SyncController;->addIconView(Landroid/widget/ImageView;)V

    .line 48
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "ic_sysbar_sync"

    const-string v6, "drawable"

    const-string v7, "com.android.systemui"

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 50
    if-eqz v1, :cond_0

    .line 51
    iget-object v4, p0, Lcom/sony/nfx/android/systemui/statusbar/AttStatusBar;->mSyncControl:Lcom/sony/nfx/android/systemui/statusbar/SyncController;

    invoke-virtual {v4, v1}, Lcom/sony/nfx/android/systemui/statusbar/SyncController;->setSyncIconId(I)V

    goto :goto_0
.end method

.method public showClock(Z)V
    .locals 1
    .param p1, "show"    # Z

    .prologue
    .line 59
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->showClock(Z)V

    .line 60
    iget-object v0, p0, Lcom/sony/nfx/android/systemui/statusbar/AttStatusBar;->mNetworkControl:Lcom/sony/nfx/android/systemui/statusbar/SubNetworkController;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/sony/nfx/android/systemui/statusbar/AttStatusBar;->mNetworkControl:Lcom/sony/nfx/android/systemui/statusbar/SubNetworkController;

    invoke-virtual {v0, p1}, Lcom/sony/nfx/android/systemui/statusbar/SubNetworkController;->enableShowOperatorName(Z)V

    .line 63
    :cond_0
    return-void
.end method
