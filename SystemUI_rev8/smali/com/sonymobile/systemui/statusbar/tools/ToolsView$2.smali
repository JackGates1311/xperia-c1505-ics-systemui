.class Lcom/sonymobile/systemui/statusbar/tools/ToolsView$2;
.super Ljava/lang/Object;
.source "ToolsView.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


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
    .line 77
    iput-object p1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsView$2;->this$0:Lcom/sonymobile/systemui/statusbar/tools/ToolsView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 81
    if-eqz p2, :cond_3

    .line 82
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsView$2;->this$0:Lcom/sonymobile/systemui/statusbar/tools/ToolsView;

    invoke-static {v0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsView;->access$000(Lcom/sonymobile/systemui/statusbar/tools/ToolsView;)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsView$2;->this$0:Lcom/sonymobile/systemui/statusbar/tools/ToolsView;

    invoke-static {v0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsView;->access$000(Lcom/sonymobile/systemui/statusbar/tools/ToolsView;)I

    move-result v0

    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsView$2;->this$0:Lcom/sonymobile/systemui/statusbar/tools/ToolsView;

    invoke-static {v1}, Lcom/sonymobile/systemui/statusbar/tools/ToolsView;->access$100(Lcom/sonymobile/systemui/statusbar/tools/ToolsView;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsView$2;->this$0:Lcom/sonymobile/systemui/statusbar/tools/ToolsView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sonymobile/systemui/statusbar/tools/ToolsView;->access$002(Lcom/sonymobile/systemui/statusbar/tools/ToolsView;I)I

    .line 85
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsView$2;->this$0:Lcom/sonymobile/systemui/statusbar/tools/ToolsView;

    invoke-static {v0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsView;->access$000(Lcom/sonymobile/systemui/statusbar/tools/ToolsView;)I

    move-result v0

    if-ltz v0, :cond_2

    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsView$2;->this$0:Lcom/sonymobile/systemui/statusbar/tools/ToolsView;

    invoke-static {v0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsView;->access$000(Lcom/sonymobile/systemui/statusbar/tools/ToolsView;)I

    move-result v0

    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsView$2;->this$0:Lcom/sonymobile/systemui/statusbar/tools/ToolsView;

    invoke-static {v1}, Lcom/sonymobile/systemui/statusbar/tools/ToolsView;->access$100(Lcom/sonymobile/systemui/statusbar/tools/ToolsView;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 86
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsView$2;->this$0:Lcom/sonymobile/systemui/statusbar/tools/ToolsView;

    invoke-static {v0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsView;->access$100(Lcom/sonymobile/systemui/statusbar/tools/ToolsView;)Ljava/util/LinkedList;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsView$2;->this$0:Lcom/sonymobile/systemui/statusbar/tools/ToolsView;

    invoke-static {v1}, Lcom/sonymobile/systemui/statusbar/tools/ToolsView;->access$000(Lcom/sonymobile/systemui/statusbar/tools/ToolsView;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;

    invoke-virtual {v0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->highlight()V

    .line 93
    :cond_2
    :goto_0
    return-void

    .line 89
    :cond_3
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsView$2;->this$0:Lcom/sonymobile/systemui/statusbar/tools/ToolsView;

    invoke-static {v0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsView;->access$000(Lcom/sonymobile/systemui/statusbar/tools/ToolsView;)I

    move-result v0

    if-ltz v0, :cond_2

    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsView$2;->this$0:Lcom/sonymobile/systemui/statusbar/tools/ToolsView;

    invoke-static {v0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsView;->access$000(Lcom/sonymobile/systemui/statusbar/tools/ToolsView;)I

    move-result v0

    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsView$2;->this$0:Lcom/sonymobile/systemui/statusbar/tools/ToolsView;

    invoke-static {v1}, Lcom/sonymobile/systemui/statusbar/tools/ToolsView;->access$100(Lcom/sonymobile/systemui/statusbar/tools/ToolsView;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 90
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsView$2;->this$0:Lcom/sonymobile/systemui/statusbar/tools/ToolsView;

    invoke-static {v0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsView;->access$100(Lcom/sonymobile/systemui/statusbar/tools/ToolsView;)Ljava/util/LinkedList;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsView$2;->this$0:Lcom/sonymobile/systemui/statusbar/tools/ToolsView;

    invoke-static {v1}, Lcom/sonymobile/systemui/statusbar/tools/ToolsView;->access$000(Lcom/sonymobile/systemui/statusbar/tools/ToolsView;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;

    invoke-virtual {v0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->unHighlight()V

    goto :goto_0
.end method
