.class Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$5;
.super Ljava/lang/Object;
.source "SmallAppsPanelView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mPosition:I

.field final synthetic this$0:Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;


# direct methods
.method constructor <init>(Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;)V
    .locals 0

    .prologue
    .line 633
    iput-object p1, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$5;->this$0:Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 5
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v4, 0x0

    .line 638
    iput p3, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$5;->mPosition:I

    .line 640
    new-instance v0, Landroid/widget/PopupMenu;

    iget-object v1, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$5;->this$0:Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;

    invoke-virtual {v1}, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 641
    .local v0, "popup":Landroid/widget/PopupMenu;
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    const v2, 0x7f0d0001

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 643
    iget-object v1, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$5;->this$0:Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;

    invoke-static {v1}, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->access$200(Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$SmallAppInfo;

    iget-boolean v1, v1, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$SmallAppInfo;->has_star:Z

    if-eqz v1, :cond_0

    .line 644
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    const v2, 0x7f0e00b4

    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iget-object v2, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$5;->this$0:Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;

    const v3, 0x7f080010

    invoke-static {v2, v3}, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->access$700(Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 646
    :cond_0
    iget-object v1, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$5;->this$0:Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;

    invoke-static {v1}, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->access$200(Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$SmallAppInfo;

    iget v1, v1, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$SmallAppInfo;->kind:I

    if-nez v1, :cond_1

    .line 647
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    const v2, 0x7f0e00b6

    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 648
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    const v2, 0x7f0e00b5

    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 651
    :cond_1
    new-instance v1, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$5$1;

    invoke-direct {v1, p0}, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$5$1;-><init>(Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$5;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 683
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    .line 684
    return v4
.end method
