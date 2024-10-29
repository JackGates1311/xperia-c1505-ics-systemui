.class Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$2;
.super Ljava/lang/Object;
.source "SmallAppsPanelView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field info:Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$SmallAppInfo;

.field final synthetic this$0:Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;


# direct methods
.method constructor <init>(Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;)V
    .locals 0

    .prologue
    .line 582
    iput-object p1, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$2;->this$0:Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
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
    .line 587
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$2;->this$0:Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;

    invoke-static {v0}, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->access$200(Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$SmallAppInfo;

    iput-object v0, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$2;->info:Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$SmallAppInfo;

    .line 588
    iget-object v0, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$2;->this$0:Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;

    new-instance v1, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$2$1;

    invoke-direct {v1, p0}, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$2$1;-><init>(Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$2;)V

    invoke-virtual {v0, p2, v1}, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->animateClickFeedback(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 608
    return-void
.end method
