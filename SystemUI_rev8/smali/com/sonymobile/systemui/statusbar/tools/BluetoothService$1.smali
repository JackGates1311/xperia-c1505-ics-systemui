.class Lcom/sonymobile/systemui/statusbar/tools/BluetoothService$1;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/systemui/statusbar/tools/BluetoothService;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/systemui/statusbar/tools/BluetoothService;


# direct methods
.method constructor <init>(Lcom/sonymobile/systemui/statusbar/tools/BluetoothService;)V
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lcom/sonymobile/systemui/statusbar/tools/BluetoothService$1;->this$0:Lcom/sonymobile/systemui/statusbar/tools/BluetoothService;

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

    .line 31
    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 32
    const-string v1, "android.bluetooth.adapter.extra.STATE"

    const/4 v2, -0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 33
    .local v0, "state":I
    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    .line 34
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/BluetoothService$1;->this$0:Lcom/sonymobile/systemui/statusbar/tools/BluetoothService;

    invoke-virtual {v1, v4}, Lcom/sonymobile/systemui/statusbar/tools/BluetoothService;->notifyStateChanged(I)V

    .line 36
    :cond_0
    const/16 v1, 0xa

    if-ne v0, v1, :cond_2

    .line 37
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/BluetoothService$1;->this$0:Lcom/sonymobile/systemui/statusbar/tools/BluetoothService;

    invoke-virtual {v1, v3}, Lcom/sonymobile/systemui/statusbar/tools/BluetoothService;->notifyStateChanged(I)V

    .line 44
    .end local v0    # "state":I
    :cond_1
    :goto_0
    return-void

    .line 38
    .restart local v0    # "state":I
    :cond_2
    const/16 v1, 0xb

    if-ne v0, v1, :cond_3

    .line 39
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/BluetoothService$1;->this$0:Lcom/sonymobile/systemui/statusbar/tools/BluetoothService;

    invoke-virtual {v1, v4}, Lcom/sonymobile/systemui/statusbar/tools/BluetoothService;->notifyStateChanging(I)V

    goto :goto_0

    .line 40
    :cond_3
    const/16 v1, 0xd

    if-ne v0, v1, :cond_1

    .line 41
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/BluetoothService$1;->this$0:Lcom/sonymobile/systemui/statusbar/tools/BluetoothService;

    invoke-virtual {v1, v3}, Lcom/sonymobile/systemui/statusbar/tools/BluetoothService;->notifyStateChanging(I)V

    goto :goto_0
.end method
