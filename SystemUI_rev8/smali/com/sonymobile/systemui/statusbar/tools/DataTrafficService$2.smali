.class Lcom/sonymobile/systemui/statusbar/tools/DataTrafficService$2;
.super Ljava/lang/Object;
.source "DataTrafficService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/systemui/statusbar/tools/DataTrafficService;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/systemui/statusbar/tools/DataTrafficService;


# direct methods
.method constructor <init>(Lcom/sonymobile/systemui/statusbar/tools/DataTrafficService;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/sonymobile/systemui/statusbar/tools/DataTrafficService$2;->this$0:Lcom/sonymobile/systemui/statusbar/tools/DataTrafficService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 61
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/DataTrafficService$2;->this$0:Lcom/sonymobile/systemui/statusbar/tools/DataTrafficService;

    invoke-virtual {v1}, Lcom/sonymobile/systemui/statusbar/tools/DataTrafficService;->getState()I

    move-result v0

    .line 62
    .local v0, "newState":I
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/DataTrafficService$2;->this$0:Lcom/sonymobile/systemui/statusbar/tools/DataTrafficService;

    invoke-static {v1}, Lcom/sonymobile/systemui/statusbar/tools/DataTrafficService;->access$300(Lcom/sonymobile/systemui/statusbar/tools/DataTrafficService;)I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 64
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/DataTrafficService$2;->this$0:Lcom/sonymobile/systemui/statusbar/tools/DataTrafficService;

    invoke-static {v1}, Lcom/sonymobile/systemui/statusbar/tools/DataTrafficService;->access$200(Lcom/sonymobile/systemui/statusbar/tools/DataTrafficService;)I

    move-result v1

    const/4 v2, 0x3

    if-ge v1, v2, :cond_0

    .line 65
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/DataTrafficService$2;->this$0:Lcom/sonymobile/systemui/statusbar/tools/DataTrafficService;

    invoke-static {v1}, Lcom/sonymobile/systemui/statusbar/tools/DataTrafficService;->access$208(Lcom/sonymobile/systemui/statusbar/tools/DataTrafficService;)I

    .line 66
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/DataTrafficService$2;->this$0:Lcom/sonymobile/systemui/statusbar/tools/DataTrafficService;

    invoke-static {v1}, Lcom/sonymobile/systemui/statusbar/tools/DataTrafficService;->access$100(Lcom/sonymobile/systemui/statusbar/tools/DataTrafficService;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/tools/DataTrafficService$2;->this$0:Lcom/sonymobile/systemui/statusbar/tools/DataTrafficService;

    invoke-static {v2}, Lcom/sonymobile/systemui/statusbar/tools/DataTrafficService;->access$000(Lcom/sonymobile/systemui/statusbar/tools/DataTrafficService;)Ljava/lang/Runnable;

    move-result-object v2

    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 74
    :cond_0
    :goto_0
    return-void

    .line 70
    :cond_1
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/DataTrafficService$2;->this$0:Lcom/sonymobile/systemui/statusbar/tools/DataTrafficService;

    invoke-static {v1, v0}, Lcom/sonymobile/systemui/statusbar/tools/DataTrafficService;->access$302(Lcom/sonymobile/systemui/statusbar/tools/DataTrafficService;I)I

    .line 71
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/DataTrafficService$2;->this$0:Lcom/sonymobile/systemui/statusbar/tools/DataTrafficService;

    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/tools/DataTrafficService$2;->this$0:Lcom/sonymobile/systemui/statusbar/tools/DataTrafficService;

    invoke-static {v2}, Lcom/sonymobile/systemui/statusbar/tools/DataTrafficService;->access$300(Lcom/sonymobile/systemui/statusbar/tools/DataTrafficService;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/systemui/statusbar/tools/DataTrafficService;->notifyStateChanged(I)V

    goto :goto_0
.end method
