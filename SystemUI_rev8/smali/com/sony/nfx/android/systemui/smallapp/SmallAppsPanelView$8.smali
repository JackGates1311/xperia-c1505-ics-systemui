.class Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$8;
.super Ljava/lang/Object;
.source "SmallAppsPanelView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->addNewWidgetDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;

.field final synthetic val$adapter:Lcom/sony/nfx/android/systemui/smallapp/SmallAppWidgetListAdapter;


# direct methods
.method constructor <init>(Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;Lcom/sony/nfx/android/systemui/smallapp/SmallAppWidgetListAdapter;)V
    .locals 0

    .prologue
    .line 859
    iput-object p1, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$8;->this$0:Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;

    iput-object p2, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$8;->val$adapter:Lcom/sony/nfx/android/systemui/smallapp/SmallAppWidgetListAdapter;

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
    .line 862
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$8;->val$adapter:Lcom/sony/nfx/android/systemui/smallapp/SmallAppWidgetListAdapter;

    invoke-virtual {v1, p3}, Lcom/sony/nfx/android/systemui/smallapp/SmallAppWidgetListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppWidgetListAdapter$Item;

    .line 863
    .local v0, "item":Lcom/sony/nfx/android/systemui/smallapp/SmallAppWidgetListAdapter$Item;
    iget-object v1, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$8;->this$0:Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;

    invoke-virtual {v1, v0}, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->addNewWidget(Lcom/sony/nfx/android/systemui/smallapp/SmallAppWidgetListAdapter$Item;)V

    .line 864
    iget-object v1, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$8;->this$0:Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;

    invoke-static {v1}, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->access$1600(Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 865
    return-void
.end method
