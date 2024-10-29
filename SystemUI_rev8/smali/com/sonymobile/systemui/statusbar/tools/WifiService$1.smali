.class Lcom/sonymobile/systemui/statusbar/tools/WifiService$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/systemui/statusbar/tools/WifiService;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/systemui/statusbar/tools/WifiService;


# direct methods
.method constructor <init>(Lcom/sonymobile/systemui/statusbar/tools/WifiService;)V
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lcom/sonymobile/systemui/statusbar/tools/WifiService$1;->this$0:Lcom/sonymobile/systemui/statusbar/tools/WifiService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 32
    const-string v1, "wifi_state"

    const/4 v2, -0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 33
    .local v0, "state":I
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 34
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/WifiService$1;->this$0:Lcom/sonymobile/systemui/statusbar/tools/WifiService;

    invoke-virtual {v1, v4}, Lcom/sonymobile/systemui/statusbar/tools/WifiService;->notifyStateChanged(I)V

    .line 42
    :cond_0
    :goto_0
    return-void

    .line 35
    :cond_1
    if-ne v0, v3, :cond_2

    .line 36
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/WifiService$1;->this$0:Lcom/sonymobile/systemui/statusbar/tools/WifiService;

    invoke-virtual {v1, v3}, Lcom/sonymobile/systemui/statusbar/tools/WifiService;->notifyStateChanged(I)V

    goto :goto_0

    .line 37
    :cond_2
    if-nez v0, :cond_3

    .line 38
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/WifiService$1;->this$0:Lcom/sonymobile/systemui/statusbar/tools/WifiService;

    invoke-virtual {v1, v3}, Lcom/sonymobile/systemui/statusbar/tools/WifiService;->notifyStateChanging(I)V

    goto :goto_0

    .line 39
    :cond_3
    if-ne v0, v4, :cond_0

    .line 40
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/WifiService$1;->this$0:Lcom/sonymobile/systemui/statusbar/tools/WifiService;

    invoke-virtual {v1, v4}, Lcom/sonymobile/systemui/statusbar/tools/WifiService;->notifyStateChanging(I)V

    goto :goto_0
.end method
