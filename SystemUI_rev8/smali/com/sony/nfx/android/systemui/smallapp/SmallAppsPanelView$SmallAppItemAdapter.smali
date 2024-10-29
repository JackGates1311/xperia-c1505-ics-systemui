.class Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$SmallAppItemAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SmallAppsPanelView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SmallAppItemAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$SmallAppInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field private mLayoutId:I

.field final synthetic this$0:Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;


# direct methods
.method public constructor <init>(Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;Landroid/content/Context;ILjava/util/List;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "layoutId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$SmallAppInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 761
    .local p4, "objects":Ljava/util/List;, "Ljava/util/List<Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$SmallAppInfo;>;"
    iput-object p1, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$SmallAppItemAdapter;->this$0:Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;

    .line 762
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 763
    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$SmallAppItemAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 764
    iput p3, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$SmallAppItemAdapter;->mLayoutId:I

    .line 765
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 770
    if-nez p2, :cond_1

    .line 771
    iget-object v2, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$SmallAppItemAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget v3, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$SmallAppItemAdapter;->mLayoutId:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 772
    new-instance v0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$ViewHolder;

    iget-object v2, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$SmallAppItemAdapter;->this$0:Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$ViewHolder;-><init>(Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$1;)V

    .line 773
    .local v0, "holder":Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$ViewHolder;
    const v2, 0x7f0e0022

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 774
    const v2, 0x7f0e0023

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$ViewHolder;->name:Landroid/widget/TextView;

    .line 775
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 779
    :goto_0
    invoke-virtual {p0, p1}, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$SmallAppItemAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$SmallAppInfo;

    .line 780
    .local v1, "info":Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$SmallAppInfo;
    iget-object v2, v1, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$SmallAppInfo;->icon:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_0

    .line 781
    iget-object v2, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$SmallAppItemAdapter;->this$0:Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;

    invoke-virtual {v2}, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02005d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v1, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$SmallAppInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 783
    :cond_0
    iget-object v2, v0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$ViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v3, v1, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$SmallAppInfo;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 784
    iget-object v2, v0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$ViewHolder;->name:Landroid/widget/TextView;

    iget-object v3, v1, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$SmallAppInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 786
    return-object p2

    .line 777
    .end local v0    # "holder":Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$ViewHolder;
    .end local v1    # "info":Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$SmallAppInfo;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$ViewHolder;

    .restart local v0    # "holder":Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$ViewHolder;
    goto :goto_0
.end method
