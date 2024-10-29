.class Lcom/sonymobile/systemui/statusbar/tools/ToolsView$3;
.super Ljava/lang/Object;
.source "ToolsView.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


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
    .line 96
    iput-object p1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsView$3;->this$0:Lcom/sonymobile/systemui/statusbar/tools/ToolsView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 100
    sparse-switch p2, :sswitch_data_0

    move v1, v3

    .line 154
    :goto_0
    return v1

    .line 103
    :sswitch_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_1

    .line 104
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsView$3;->this$0:Lcom/sonymobile/systemui/statusbar/tools/ToolsView;

    invoke-static {v1}, Lcom/sonymobile/systemui/statusbar/tools/ToolsView;->access$000(Lcom/sonymobile/systemui/statusbar/tools/ToolsView;)I

    move-result v1

    if-ltz v1, :cond_0

    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsView$3;->this$0:Lcom/sonymobile/systemui/statusbar/tools/ToolsView;

    invoke-static {v1}, Lcom/sonymobile/systemui/statusbar/tools/ToolsView;->access$000(Lcom/sonymobile/systemui/statusbar/tools/ToolsView;)I

    move-result v1

    iget-object v3, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsView$3;->this$0:Lcom/sonymobile/systemui/statusbar/tools/ToolsView;

    invoke-static {v3}, Lcom/sonymobile/systemui/statusbar/tools/ToolsView;->access$100(Lcom/sonymobile/systemui/statusbar/tools/ToolsView;)Ljava/util/LinkedList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 105
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsView$3;->this$0:Lcom/sonymobile/systemui/statusbar/tools/ToolsView;

    invoke-static {v1}, Lcom/sonymobile/systemui/statusbar/tools/ToolsView;->access$100(Lcom/sonymobile/systemui/statusbar/tools/ToolsView;)Ljava/util/LinkedList;

    move-result-object v1

    iget-object v3, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsView$3;->this$0:Lcom/sonymobile/systemui/statusbar/tools/ToolsView;

    invoke-static {v3}, Lcom/sonymobile/systemui/statusbar/tools/ToolsView;->access$000(Lcom/sonymobile/systemui/statusbar/tools/ToolsView;)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;

    invoke-virtual {v1, v4, v4}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->onPress(FF)V

    :cond_0
    :goto_1
    move v1, v2

    .line 115
    goto :goto_0

    .line 107
    :cond_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v2, :cond_0

    .line 108
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsView$3;->this$0:Lcom/sonymobile/systemui/statusbar/tools/ToolsView;

    invoke-static {v1}, Lcom/sonymobile/systemui/statusbar/tools/ToolsView;->access$000(Lcom/sonymobile/systemui/statusbar/tools/ToolsView;)I

    move-result v1

    if-ltz v1, :cond_0

    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsView$3;->this$0:Lcom/sonymobile/systemui/statusbar/tools/ToolsView;

    invoke-static {v1}, Lcom/sonymobile/systemui/statusbar/tools/ToolsView;->access$000(Lcom/sonymobile/systemui/statusbar/tools/ToolsView;)I

    move-result v1

    iget-object v3, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsView$3;->this$0:Lcom/sonymobile/systemui/statusbar/tools/ToolsView;

    invoke-static {v3}, Lcom/sonymobile/systemui/statusbar/tools/ToolsView;->access$100(Lcom/sonymobile/systemui/statusbar/tools/ToolsView;)Ljava/util/LinkedList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 109
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsView$3;->this$0:Lcom/sonymobile/systemui/statusbar/tools/ToolsView;

    invoke-static {v1}, Lcom/sonymobile/systemui/statusbar/tools/ToolsView;->access$100(Lcom/sonymobile/systemui/statusbar/tools/ToolsView;)Ljava/util/LinkedList;

    move-result-object v1

    iget-object v3, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsView$3;->this$0:Lcom/sonymobile/systemui/statusbar/tools/ToolsView;

    invoke-static {v3}, Lcom/sonymobile/systemui/statusbar/tools/ToolsView;->access$000(Lcom/sonymobile/systemui/statusbar/tools/ToolsView;)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;

    .line 110
    .local v0, "button":Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;
    invoke-virtual {v0, v4, v4}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->onRelease(FF)V

    .line 111
    invoke-virtual {v0, v4, v4}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->onClick(FF)V

    goto :goto_1

    .line 118
    .end local v0    # "button":Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;
    :sswitch_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_5

    .line 120
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsView$3;->this$0:Lcom/sonymobile/systemui/statusbar/tools/ToolsView;

    invoke-static {v1}, Lcom/sonymobile/systemui/statusbar/tools/ToolsView;->access$000(Lcom/sonymobile/systemui/statusbar/tools/ToolsView;)I

    move-result v1

    iget-object v4, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsView$3;->this$0:Lcom/sonymobile/systemui/statusbar/tools/ToolsView;

    invoke-static {v4}, Lcom/sonymobile/systemui/statusbar/tools/ToolsView;->access$100(Lcom/sonymobile/systemui/statusbar/tools/ToolsView;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne v1, v4, :cond_2

    move v1, v3

    .line 121
    goto/16 :goto_0

    .line 123
    :cond_2
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsView$3;->this$0:Lcom/sonymobile/systemui/statusbar/tools/ToolsView;

    invoke-static {v1}, Lcom/sonymobile/systemui/statusbar/tools/ToolsView;->access$000(Lcom/sonymobile/systemui/statusbar/tools/ToolsView;)I

    move-result v1

    if-ltz v1, :cond_3

    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsView$3;->this$0:Lcom/sonymobile/systemui/statusbar/tools/ToolsView;

    invoke-static {v1}, Lcom/sonymobile/systemui/statusbar/tools/ToolsView;->access$000(Lcom/sonymobile/systemui/statusbar/tools/ToolsView;)I

    move-result v1

    iget-object v4, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsView$3;->this$0:Lcom/sonymobile/systemui/statusbar/tools/ToolsView;

    invoke-static {v4}, Lcom/sonymobile/systemui/statusbar/tools/ToolsView;->access$100(Lcom/sonymobile/systemui/statusbar/tools/ToolsView;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    if-ge v1, v4, :cond_3

    .line 124
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsView$3;->this$0:Lcom/sonymobile/systemui/statusbar/tools/ToolsView;

    invoke-static {v1}, Lcom/sonymobile/systemui/statusbar/tools/ToolsView;->access$100(Lcom/sonymobile/systemui/statusbar/tools/ToolsView;)Ljava/util/LinkedList;

    move-result-object v1

    iget-object v4, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsView$3;->this$0:Lcom/sonymobile/systemui/statusbar/tools/ToolsView;

    invoke-static {v4}, Lcom/sonymobile/systemui/statusbar/tools/ToolsView;->access$000(Lcom/sonymobile/systemui/statusbar/tools/ToolsView;)I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;

    invoke-virtual {v1}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->unHighlight()V

    .line 126
    :cond_3
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsView$3;->this$0:Lcom/sonymobile/systemui/statusbar/tools/ToolsView;

    invoke-static {v1}, Lcom/sonymobile/systemui/statusbar/tools/ToolsView;->access$008(Lcom/sonymobile/systemui/statusbar/tools/ToolsView;)I

    .line 127
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsView$3;->this$0:Lcom/sonymobile/systemui/statusbar/tools/ToolsView;

    invoke-static {v1}, Lcom/sonymobile/systemui/statusbar/tools/ToolsView;->access$000(Lcom/sonymobile/systemui/statusbar/tools/ToolsView;)I

    move-result v1

    if-ltz v1, :cond_4

    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsView$3;->this$0:Lcom/sonymobile/systemui/statusbar/tools/ToolsView;

    invoke-static {v1}, Lcom/sonymobile/systemui/statusbar/tools/ToolsView;->access$000(Lcom/sonymobile/systemui/statusbar/tools/ToolsView;)I

    move-result v1

    iget-object v4, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsView$3;->this$0:Lcom/sonymobile/systemui/statusbar/tools/ToolsView;

    invoke-static {v4}, Lcom/sonymobile/systemui/statusbar/tools/ToolsView;->access$100(Lcom/sonymobile/systemui/statusbar/tools/ToolsView;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    if-ge v1, v4, :cond_4

    .line 128
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsView$3;->this$0:Lcom/sonymobile/systemui/statusbar/tools/ToolsView;

    invoke-static {v1}, Lcom/sonymobile/systemui/statusbar/tools/ToolsView;->access$100(Lcom/sonymobile/systemui/statusbar/tools/ToolsView;)Ljava/util/LinkedList;

    move-result-object v1

    iget-object v3, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsView$3;->this$0:Lcom/sonymobile/systemui/statusbar/tools/ToolsView;

    invoke-static {v3}, Lcom/sonymobile/systemui/statusbar/tools/ToolsView;->access$000(Lcom/sonymobile/systemui/statusbar/tools/ToolsView;)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;

    invoke-virtual {v1}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->highlight()V

    move v1, v2

    .line 129
    goto/16 :goto_0

    :cond_4
    move v1, v3

    .line 131
    goto/16 :goto_0

    :cond_5
    move v1, v2

    .line 133
    goto/16 :goto_0

    .line 136
    :sswitch_2
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_9

    .line 138
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsView$3;->this$0:Lcom/sonymobile/systemui/statusbar/tools/ToolsView;

    invoke-static {v1}, Lcom/sonymobile/systemui/statusbar/tools/ToolsView;->access$000(Lcom/sonymobile/systemui/statusbar/tools/ToolsView;)I

    move-result v1

    if-nez v1, :cond_6

    move v1, v3

    .line 139
    goto/16 :goto_0

    .line 141
    :cond_6
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsView$3;->this$0:Lcom/sonymobile/systemui/statusbar/tools/ToolsView;

    invoke-static {v1}, Lcom/sonymobile/systemui/statusbar/tools/ToolsView;->access$000(Lcom/sonymobile/systemui/statusbar/tools/ToolsView;)I

    move-result v1

    if-ltz v1, :cond_7

    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsView$3;->this$0:Lcom/sonymobile/systemui/statusbar/tools/ToolsView;

    invoke-static {v1}, Lcom/sonymobile/systemui/statusbar/tools/ToolsView;->access$000(Lcom/sonymobile/systemui/statusbar/tools/ToolsView;)I

    move-result v1

    iget-object v4, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsView$3;->this$0:Lcom/sonymobile/systemui/statusbar/tools/ToolsView;

    invoke-static {v4}, Lcom/sonymobile/systemui/statusbar/tools/ToolsView;->access$100(Lcom/sonymobile/systemui/statusbar/tools/ToolsView;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    if-ge v1, v4, :cond_7

    .line 142
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsView$3;->this$0:Lcom/sonymobile/systemui/statusbar/tools/ToolsView;

    invoke-static {v1}, Lcom/sonymobile/systemui/statusbar/tools/ToolsView;->access$100(Lcom/sonymobile/systemui/statusbar/tools/ToolsView;)Ljava/util/LinkedList;

    move-result-object v1

    iget-object v4, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsView$3;->this$0:Lcom/sonymobile/systemui/statusbar/tools/ToolsView;

    invoke-static {v4}, Lcom/sonymobile/systemui/statusbar/tools/ToolsView;->access$000(Lcom/sonymobile/systemui/statusbar/tools/ToolsView;)I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;

    invoke-virtual {v1}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->unHighlight()V

    .line 144
    :cond_7
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsView$3;->this$0:Lcom/sonymobile/systemui/statusbar/tools/ToolsView;

    invoke-static {v1}, Lcom/sonymobile/systemui/statusbar/tools/ToolsView;->access$010(Lcom/sonymobile/systemui/statusbar/tools/ToolsView;)I

    .line 145
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsView$3;->this$0:Lcom/sonymobile/systemui/statusbar/tools/ToolsView;

    invoke-static {v1}, Lcom/sonymobile/systemui/statusbar/tools/ToolsView;->access$000(Lcom/sonymobile/systemui/statusbar/tools/ToolsView;)I

    move-result v1

    if-ltz v1, :cond_8

    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsView$3;->this$0:Lcom/sonymobile/systemui/statusbar/tools/ToolsView;

    invoke-static {v1}, Lcom/sonymobile/systemui/statusbar/tools/ToolsView;->access$000(Lcom/sonymobile/systemui/statusbar/tools/ToolsView;)I

    move-result v1

    iget-object v4, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsView$3;->this$0:Lcom/sonymobile/systemui/statusbar/tools/ToolsView;

    invoke-static {v4}, Lcom/sonymobile/systemui/statusbar/tools/ToolsView;->access$100(Lcom/sonymobile/systemui/statusbar/tools/ToolsView;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    if-ge v1, v4, :cond_8

    .line 146
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsView$3;->this$0:Lcom/sonymobile/systemui/statusbar/tools/ToolsView;

    invoke-static {v1}, Lcom/sonymobile/systemui/statusbar/tools/ToolsView;->access$100(Lcom/sonymobile/systemui/statusbar/tools/ToolsView;)Ljava/util/LinkedList;

    move-result-object v1

    iget-object v3, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsView$3;->this$0:Lcom/sonymobile/systemui/statusbar/tools/ToolsView;

    invoke-static {v3}, Lcom/sonymobile/systemui/statusbar/tools/ToolsView;->access$000(Lcom/sonymobile/systemui/statusbar/tools/ToolsView;)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;

    invoke-virtual {v1}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->highlight()V

    move v1, v2

    .line 147
    goto/16 :goto_0

    :cond_8
    move v1, v3

    .line 149
    goto/16 :goto_0

    :cond_9
    move v1, v2

    .line 151
    goto/16 :goto_0

    .line 100
    :sswitch_data_0
    .sparse-switch
        0x15 -> :sswitch_2
        0x16 -> :sswitch_1
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method
