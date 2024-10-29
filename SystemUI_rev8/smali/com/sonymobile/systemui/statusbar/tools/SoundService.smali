.class public Lcom/sonymobile/systemui/statusbar/tools/SoundService;
.super Lcom/sonymobile/systemui/statusbar/tools/ToolsService;
.source "SoundService.java"


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mReceiverRegistered:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/sonymobile/systemui/statusbar/tools/ToolsService;-><init>(Landroid/content/Context;)V

    .line 30
    new-instance v0, Lcom/sonymobile/systemui/statusbar/tools/SoundService$1;

    invoke-direct {v0, p0}, Lcom/sonymobile/systemui/statusbar/tools/SoundService$1;-><init>(Lcom/sonymobile/systemui/statusbar/tools/SoundService;)V

    iput-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/SoundService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 37
    return-void
.end method


# virtual methods
.method public changeTo(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    const/4 v1, 0x1

    .line 90
    if-ne p1, v1, :cond_0

    .line 91
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/SoundService;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 97
    :goto_0
    return-void

    .line 92
    :cond_0
    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 93
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/SoundService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_0

    .line 95
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/SoundService;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_0
.end method

.method protected notifyChanged(I)V
    .locals 1
    .param p1, "audioManagerRingerMode"    # I

    .prologue
    .line 67
    packed-switch p1, :pswitch_data_0

    .line 81
    const/4 v0, -0x1

    .line 85
    .local v0, "state":I
    :goto_0
    invoke-virtual {p0, v0}, Lcom/sonymobile/systemui/statusbar/tools/SoundService;->notifyStateChanged(I)V

    .line 86
    return-void

    .line 69
    .end local v0    # "state":I
    :pswitch_0
    const/4 v0, 0x2

    .line 70
    .restart local v0    # "state":I
    goto :goto_0

    .line 73
    .end local v0    # "state":I
    :pswitch_1
    const/4 v0, 0x1

    .line 74
    .restart local v0    # "state":I
    goto :goto_0

    .line 77
    .end local v0    # "state":I
    :pswitch_2
    const/4 v0, 0x3

    .line 78
    .restart local v0    # "state":I
    goto :goto_0

    .line 67
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public start()V
    .locals 3

    .prologue
    .line 41
    iget-boolean v1, p0, Lcom/sonymobile/systemui/statusbar/tools/SoundService;->mReceiverRegistered:Z

    if-nez v1, :cond_0

    .line 42
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 43
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 44
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/tools/SoundService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 45
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sonymobile/systemui/statusbar/tools/SoundService;->mReceiverRegistered:Z

    .line 47
    .end local v0    # "intentFilter":Landroid/content/IntentFilter;
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/SoundService;->mAudioManager:Landroid/media/AudioManager;

    if-nez v1, :cond_1

    .line 48
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsService;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/SoundService;->mAudioManager:Landroid/media/AudioManager;

    .line 50
    :cond_1
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/SoundService;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v1, :cond_2

    .line 51
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/SoundService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sonymobile/systemui/statusbar/tools/SoundService;->notifyChanged(I)V

    .line 53
    :cond_2
    return-void
.end method
