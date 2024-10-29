.class Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$4;
.super Ljava/lang/Object;
.source "SmallAppsPanelView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;


# direct methods
.method constructor <init>(Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;)V
    .locals 0

    .prologue
    .line 623
    iput-object p1, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$4;->this$0:Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
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
    .line 625
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$4;->this$0:Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;

    invoke-static {v0, p3}, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->access$502(Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;I)I

    .line 626
    iget-object v0, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$4;->this$0:Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;

    invoke-static {v0}, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->access$600(Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;)V

    .line 627
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 630
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
