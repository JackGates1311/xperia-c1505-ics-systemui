.class Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$6$1;
.super Ljava/lang/Object;
.source "SmallAppsPanelView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$6;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$6;


# direct methods
.method constructor <init>(Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$6;)V
    .locals 0

    .prologue
    .line 735
    iput-object p1, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$6$1;->this$1:Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 737
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    move-object v0, p2

    check-cast v0, Landroid/widget/TextView;

    .line 738
    .local v0, "menuItem":Landroid/widget/TextView;
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 740
    .local v1, "menuItemStr":Ljava/lang/String;
    iget-object v2, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$6$1;->this$1:Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$6;

    iget-object v2, v2, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$6;->this$0:Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;

    const v3, 0x7f08000d

    invoke-static {v2, v3}, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->access$700(Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 741
    iget-object v2, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$6$1;->this$1:Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$6;

    iget-object v2, v2, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$6;->this$0:Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;

    invoke-static {v2}, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->access$1300(Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;)V

    .line 742
    iget-object v2, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$6$1;->this$1:Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$6;

    iget-object v2, v2, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$6;->this$0:Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;

    invoke-static {v2}, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->access$400(Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;)V

    .line 744
    :cond_0
    iget-object v2, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$6$1;->this$1:Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$6;

    iget-object v2, v2, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$6;->this$0:Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;

    invoke-static {v2}, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->access$1200(Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;)Landroid/widget/ListPopupWindow;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 745
    return-void
.end method
