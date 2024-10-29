.class Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$ViewHolder;
.super Ljava/lang/Object;
.source "SmallAppsPanelView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field icon:Landroid/widget/ImageView;

.field name:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;


# direct methods
.method private constructor <init>(Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;)V
    .locals 0

    .prologue
    .line 752
    iput-object p1, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$ViewHolder;->this$0:Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;
    .param p2, "x1"    # Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$1;

    .prologue
    .line 752
    invoke-direct {p0, p1}, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$ViewHolder;-><init>(Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;)V

    return-void
.end method
