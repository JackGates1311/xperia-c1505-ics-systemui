.class Lcom/sonymobile/systemui/statusbar/tools/ToolsView$1;
.super Lcom/sonymobile/systemui/uicomponents/Container;
.source "ToolsView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/systemui/statusbar/tools/ToolsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/systemui/statusbar/tools/ToolsView;


# direct methods
.method constructor <init>(Lcom/sonymobile/systemui/statusbar/tools/ToolsView;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsView$1;->this$0:Lcom/sonymobile/systemui/statusbar/tools/ToolsView;

    invoke-direct {p0}, Lcom/sonymobile/systemui/uicomponents/Container;-><init>()V

    return-void
.end method


# virtual methods
.method public invalidate()V
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsView$1;->this$0:Lcom/sonymobile/systemui/statusbar/tools/ToolsView;

    invoke-virtual {v0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsView;->invalidate()V

    .line 58
    return-void
.end method
