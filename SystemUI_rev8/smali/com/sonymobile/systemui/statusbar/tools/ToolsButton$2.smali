.class Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$2;
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
    .line 127
    iput-object p1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$2;->this$0:Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 131
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$2;->this$0:Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->stopAnimate(Z)V

    .line 132
    return-void
.end method
