.class Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$5$1;
.super Ljava/lang/Object;
.source "SmallAppsPanelView.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$5;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$5;


# direct methods
.method constructor <init>(Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$5;)V
    .locals 0

    .prologue
    .line 651
    iput-object p1, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$5$1;->this$1:Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v3, 0x1

    .line 653
    iget-object v1, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$5$1;->this$1:Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$5;

    iget-object v1, v1, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$5;->this$0:Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;

    invoke-static {v1}, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->access$200(Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$5$1;->this$1:Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$5;

    iget v2, v2, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$5;->mPosition:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$SmallAppInfo;

    .line 655
    .local v0, "info":Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$SmallAppInfo;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 680
    :cond_0
    :goto_0
    return v3

    .line 657
    :pswitch_0
    iget-object v1, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$5$1;->this$1:Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$5;

    iget-object v1, v1, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$5;->this$0:Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;

    invoke-static {v1, v0}, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->access$800(Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$SmallAppInfo;)V

    .line 658
    iget-object v1, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$5$1;->this$1:Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$5;

    iget-object v1, v1, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$5;->this$0:Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;

    invoke-static {v1}, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->access$400(Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;)V

    goto :goto_0

    .line 662
    :pswitch_1
    iget-object v1, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$5$1;->this$1:Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$5;

    iget-object v1, v1, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$5;->this$0:Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;

    invoke-static {v1, v0}, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->access$900(Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$SmallAppInfo;)V

    goto :goto_0

    .line 666
    :pswitch_2
    iget v1, v0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$SmallAppInfo;->kind:I

    if-ne v1, v3, :cond_0

    .line 667
    iget-object v1, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$5$1;->this$1:Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$5;

    iget-object v1, v1, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$5;->this$0:Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->access$1000(Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$SmallAppInfo;Z)V

    goto :goto_0

    .line 672
    :pswitch_3
    iget v1, v0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$SmallAppInfo;->kind:I

    if-ne v1, v3, :cond_0

    .line 673
    iget-object v1, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$5$1;->this$1:Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$5;

    iget-object v1, v1, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$5;->this$0:Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;

    invoke-static {v1, v0}, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->access$1100(Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$SmallAppInfo;)V

    .line 674
    iget-object v1, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$5$1;->this$1:Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$5;

    iget-object v1, v1, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$5;->this$0:Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;

    invoke-static {v1}, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->access$600(Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;)V

    goto :goto_0

    .line 655
    :pswitch_data_0
    .packed-switch 0x7f0e00b3
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
