.class Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$6;
.super Ljava/lang/Object;
.source "SmallAppsPanelView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final mItems:[Ljava/lang/String;

.field final synthetic this$0:Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;


# direct methods
.method constructor <init>(Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;)V
    .locals 4

    .prologue
    .line 698
    iput-object p1, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$6;->this$0:Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 699
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$6;->this$0:Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;

    const v3, 0x7f08000d

    invoke-static {v2, v3}, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->access$700(Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$6;->mItems:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 13
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v12, 0x0

    const/4 v11, -0x2

    const/4 v10, 0x0

    .line 705
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v7, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$6;->this$0:Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;

    invoke-virtual {v7}, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->getContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x1090003

    iget-object v9, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$6;->mItems:[Ljava/lang/String;

    invoke-direct {v0, v7, v8, v9}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 708
    .local v0, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    iget-object v7, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$6;->this$0:Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;

    invoke-static {v7}, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->access$1200(Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;)Landroid/widget/ListPopupWindow;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 709
    iget-object v7, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$6;->this$0:Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;

    invoke-static {v7}, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->access$1200(Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;)Landroid/widget/ListPopupWindow;

    move-result-object v7

    invoke-virtual {v7, p1}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 710
    iget-object v7, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$6;->this$0:Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;

    invoke-static {v7}, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->access$1200(Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;)Landroid/widget/ListPopupWindow;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/widget/ListPopupWindow;->setModal(Z)V

    .line 712
    const/4 v5, 0x0

    .line 713
    .local v5, "menuWidth":I
    const/4 v4, 0x0

    .line 714
    .local v4, "itemView":Landroid/view/View;
    invoke-static {v10, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 716
    .local v6, "widthMeasureSpec":I
    invoke-static {v10, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 719
    .local v2, "heightMeasureSpec":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v7

    if-ge v3, v7, :cond_1

    .line 720
    invoke-virtual {v0, v3, v12, v12}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 721
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    if-nez v7, :cond_0

    .line 722
    new-instance v7, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v7, v11, v11}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 726
    :cond_0
    invoke-virtual {v4, v6, v2}, Landroid/view/View;->measure(II)V

    .line 727
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    invoke-virtual {v4}, Landroid/view/View;->getPaddingLeft()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v4}, Landroid/view/View;->getPaddingRight()I

    move-result v8

    add-int/2addr v7, v8

    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 719
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 731
    :cond_1
    iget-object v7, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$6;->this$0:Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;

    invoke-static {v7}, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->access$1200(Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;)Landroid/widget/ListPopupWindow;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/widget/ListPopupWindow;->setContentWidth(I)V

    .line 732
    iget-object v7, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$6;->this$0:Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;

    const v8, 0x7f0e0014

    invoke-virtual {v7, v8}, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 733
    .local v1, "buttonWidth":I
    iget-object v7, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$6;->this$0:Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;

    invoke-static {v7}, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->access$1200(Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;)Landroid/widget/ListPopupWindow;

    move-result-object v7

    sub-int v8, v1, v5

    invoke-virtual {v7, v8}, Landroid/widget/ListPopupWindow;->setHorizontalOffset(I)V

    .line 735
    iget-object v7, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$6;->this$0:Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;

    invoke-static {v7}, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->access$1200(Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;)Landroid/widget/ListPopupWindow;

    move-result-object v7

    new-instance v8, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$6$1;

    invoke-direct {v8, p0}, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$6$1;-><init>(Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$6;)V

    invoke-virtual {v7, v8}, Landroid/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 748
    iget-object v7, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$6;->this$0:Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;

    invoke-static {v7}, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->access$1200(Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;)Landroid/widget/ListPopupWindow;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/ListPopupWindow;->show()V

    .line 749
    return-void
.end method
