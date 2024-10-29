.class Lcom/sonymobile/systemui/statusbar/tools/SoundService$1;
.super Landroid/content/BroadcastReceiver;
.source "SoundService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/systemui/statusbar/tools/SoundService;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/systemui/statusbar/tools/SoundService;


# direct methods
.method constructor <init>(Lcom/sonymobile/systemui/statusbar/tools/SoundService;)V
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcom/sonymobile/systemui/statusbar/tools/SoundService$1;->this$0:Lcom/sonymobile/systemui/statusbar/tools/SoundService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 33
    const-string v1, "android.media.EXTRA_RINGER_MODE"

    const/4 v2, -0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 34
    .local v0, "ringerMode":I
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/SoundService$1;->this$0:Lcom/sonymobile/systemui/statusbar/tools/SoundService;

    invoke-virtual {v1, v0}, Lcom/sonymobile/systemui/statusbar/tools/SoundService;->notifyChanged(I)V

    .line 35
    return-void
.end method
