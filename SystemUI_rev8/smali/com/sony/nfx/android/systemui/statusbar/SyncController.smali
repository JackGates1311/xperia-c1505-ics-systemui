.class public Lcom/sony/nfx/android/systemui/statusbar/SyncController;
.super Landroid/content/BroadcastReceiver;
.source "SyncController.java"


# instance fields
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

.field private mId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 20
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sony/nfx/android/systemui/statusbar/SyncController;->mIconViews:Ljava/util/ArrayList;

    .line 21
    const v1, 0x10804f3

    iput v1, p0, Lcom/sony/nfx/android/systemui/statusbar/SyncController;->mId:I

    .line 33
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 34
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SYNC_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 35
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 36
    return-void
.end method

.method private updateSyncState(Landroid/content/Intent;)V
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x0

    .line 47
    const-string v5, "active"

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 48
    .local v2, "isActive":Z
    const-string v5, "failing"

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 53
    .local v3, "isFailing":Z
    iget-object v5, p0, Lcom/sony/nfx/android/systemui/statusbar/SyncController;->mIconViews:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 54
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 55
    iget-object v5, p0, Lcom/sony/nfx/android/systemui/statusbar/SyncController;->mIconViews:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 56
    .local v4, "v":Landroid/widget/ImageView;
    if-eqz v2, :cond_3

    .line 57
    iget v5, p0, Lcom/sony/nfx/android/systemui/statusbar/SyncController;->mId:I

    if-nez v5, :cond_1

    .line 75
    .end local v4    # "v":Landroid/widget/ImageView;
    :cond_0
    return-void

    .line 62
    .restart local v4    # "v":Landroid/widget/ImageView;
    :cond_1
    iget v5, p0, Lcom/sony/nfx/android/systemui/statusbar/SyncController;->mId:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 63
    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 54
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 64
    :cond_3
    if-nez v3, :cond_2

    .line 72
    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method


# virtual methods
.method public addIconView(Landroid/widget/ImageView;)V
    .locals 1
    .param p1, "v"    # Landroid/widget/ImageView;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/sony/nfx/android/systemui/statusbar/SyncController;->mIconViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 39
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 41
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.SYNC_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 42
    invoke-direct {p0, p2}, Lcom/sony/nfx/android/systemui/statusbar/SyncController;->updateSyncState(Landroid/content/Intent;)V

    .line 44
    :cond_0
    return-void
.end method

.method public setSyncIconId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 28
    iput p1, p0, Lcom/sony/nfx/android/systemui/statusbar/SyncController;->mId:I

    .line 29
    return-void
.end method
