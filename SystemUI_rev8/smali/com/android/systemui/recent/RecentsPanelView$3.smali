.class Lcom/android/systemui/recent/RecentsPanelView$3;
.super Ljava/lang/Object;
.source "RecentsPanelView.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recent/RecentsPanelView;->handleLongPress(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recent/RecentsPanelView;

.field final synthetic val$selectedView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/systemui/recent/RecentsPanelView;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 610
    iput-object p1, p0, Lcom/android/systemui/recent/RecentsPanelView$3;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    iput-object p2, p0, Lcom/android/systemui/recent/RecentsPanelView$3;->val$selectedView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 5
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 612
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const v3, 0x7f0e0091

    if-ne v2, v3, :cond_0

    .line 613
    iget-object v2, p0, Lcom/android/systemui/recent/RecentsPanelView$3;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-static {v2}, Lcom/android/systemui/recent/RecentsPanelView;->access$300(Lcom/android/systemui/recent/RecentsPanelView;)Landroid/view/ViewGroup;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/recent/RecentsPanelView$3;->val$selectedView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeViewInLayout(Landroid/view/View;)V

    .line 626
    :goto_0
    const/4 v2, 0x1

    :goto_1
    return v2

    .line 614
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const v3, 0x7f0e0092

    if-ne v2, v3, :cond_2

    .line 615
    iget-object v2, p0, Lcom/android/systemui/recent/RecentsPanelView$3;->val$selectedView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;

    .line 616
    .local v1, "viewHolder":Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;
    if-eqz v1, :cond_1

    .line 617
    iget-object v0, v1, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->taskDescription:Lcom/android/systemui/recent/TaskDescription;

    .line 618
    .local v0, "ad":Lcom/android/systemui/recent/TaskDescription;
    iget-object v2, p0, Lcom/android/systemui/recent/RecentsPanelView$3;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    iget-object v3, v0, Lcom/android/systemui/recent/TaskDescription;->packageName:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/systemui/recent/RecentsPanelView;->access$400(Lcom/android/systemui/recent/RecentsPanelView;Ljava/lang/String;)V

    .line 619
    iget-object v2, p0, Lcom/android/systemui/recent/RecentsPanelView$3;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-static {v2}, Lcom/android/systemui/recent/RecentsPanelView;->access$500(Lcom/android/systemui/recent/RecentsPanelView;)Lcom/android/systemui/statusbar/StatusBar;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/StatusBar;->animateCollapse()V

    goto :goto_0

    .line 621
    .end local v0    # "ad":Lcom/android/systemui/recent/TaskDescription;
    :cond_1
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Oops, no tag on view "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/recent/RecentsPanelView$3;->val$selectedView:Landroid/view/View;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 624
    .end local v1    # "viewHolder":Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method
