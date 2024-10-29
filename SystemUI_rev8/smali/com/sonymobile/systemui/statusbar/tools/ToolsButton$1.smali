.class Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$1;
.super Ljava/lang/Object;
.source "ToolsButton.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;


# direct methods
.method constructor <init>(Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$1;->this$0:Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 96
    iget-object v3, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$1;->this$0:Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;

    invoke-static {v3}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->access$000(Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;)I

    move-result v1

    .line 98
    .local v1, "previous":I
    iget-object v3, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$1;->this$0:Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;

    invoke-static {v3}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->access$000(Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;)I

    move-result v3

    if-ne v3, v6, :cond_0

    .line 100
    iget-object v3, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$1;->this$0:Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;

    invoke-static {v3, v5}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->access$002(Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;I)I

    .line 106
    :goto_0
    iget-object v3, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$1;->this$0:Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;

    invoke-static {v3}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->access$000(Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;)I

    move-result v3

    iget-object v4, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$1;->this$0:Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;

    invoke-static {v4}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->access$100(Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;)I

    move-result v4

    if-ne v3, v4, :cond_1

    .line 108
    iget-object v3, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$1;->this$0:Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;

    invoke-static {v3, v5}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->access$002(Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;I)I

    .line 109
    iget-object v3, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$1;->this$0:Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;

    invoke-static {v3}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->access$200(Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 110
    iget-object v3, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$1;->this$0:Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;

    invoke-virtual {v3, v7}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->stopAnimate(Z)V

    .line 125
    :goto_1
    return-void

    .line 103
    :cond_0
    iget-object v3, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$1;->this$0:Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;

    invoke-static {v3}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->access$008(Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;)I

    goto :goto_0

    .line 117
    :cond_1
    if-eq v1, v6, :cond_2

    .line 118
    iget-object v3, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$1;->this$0:Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;

    invoke-static {v3}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->access$300(Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;)Lcom/sonymobile/systemui/uicomponents/Container;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/sonymobile/systemui/uicomponents/Container;->getChild(I)Lcom/sonymobile/systemui/uicomponents/Component;

    move-result-object v2

    .line 119
    .local v2, "previousImage":Lcom/sonymobile/systemui/uicomponents/Component;
    invoke-virtual {v2, v5}, Lcom/sonymobile/systemui/uicomponents/Component;->setVisible(Z)V

    .line 121
    .end local v2    # "previousImage":Lcom/sonymobile/systemui/uicomponents/Component;
    :cond_2
    iget-object v3, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$1;->this$0:Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;

    invoke-static {v3}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->access$300(Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;)Lcom/sonymobile/systemui/uicomponents/Container;

    move-result-object v3

    iget-object v4, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$1;->this$0:Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;

    invoke-static {v4}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->access$000(Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sonymobile/systemui/uicomponents/Container;->getChild(I)Lcom/sonymobile/systemui/uicomponents/Component;

    move-result-object v0

    .line 122
    .local v0, "currentImage":Lcom/sonymobile/systemui/uicomponents/Component;
    invoke-virtual {v0, v7}, Lcom/sonymobile/systemui/uicomponents/Component;->setVisible(Z)V

    .line 123
    iget-object v3, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$1;->this$0:Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;

    invoke-static {v3}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->access$300(Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;)Lcom/sonymobile/systemui/uicomponents/Container;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonymobile/systemui/uicomponents/Container;->invalidate()V

    .line 124
    iget-object v3, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$1;->this$0:Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;

    invoke-static {v3}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->access$500(Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$1;->this$0:Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;

    invoke-static {v4}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->access$400(Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;)Ljava/lang/Runnable;

    move-result-object v4

    const-wide/16 v5, 0x14d

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1
.end method
