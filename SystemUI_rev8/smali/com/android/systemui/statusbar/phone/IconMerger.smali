.class public Lcom/android/systemui/statusbar/phone/IconMerger;
.super Landroid/widget/LinearLayout;
.source "IconMerger.java"


# instance fields
.field private mIconSize:I

.field private mMoreView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/IconMerger;->mIconSize:I

    .line 47
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/IconMerger;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/IconMerger;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IconMerger;->mMoreView:Landroid/view/View;

    return-object v0
.end method

.method private checkOverflow(I)V
    .locals 8
    .param p1, "width"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v5, 0x0

    .line 68
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/IconMerger;->mMoreView:Landroid/view/View;

    if-nez v6, :cond_1

    .line 87
    :cond_0
    :goto_0
    return-void

    .line 70
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IconMerger;->getChildCount()I

    move-result v0

    .line 71
    .local v0, "N":I
    const/4 v4, 0x0

    .line 72
    .local v4, "visibleChildren":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_3

    .line 73
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/IconMerger;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-eq v6, v7, :cond_2

    add-int/lit8 v4, v4, 0x1

    .line 72
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 75
    :cond_3
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/IconMerger;->mMoreView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_5

    move v3, v2

    .line 77
    .local v3, "overflowShown":Z
    :goto_2
    if-eqz v3, :cond_4

    add-int/lit8 v4, v4, -0x1

    .line 78
    :cond_4
    iget v6, p0, Lcom/android/systemui/statusbar/phone/IconMerger;->mIconSize:I

    mul-int/2addr v6, v4

    if-le v6, p1, :cond_6

    .line 79
    .local v2, "moreRequired":Z
    :goto_3
    if-eq v2, v3, :cond_0

    .line 80
    new-instance v5, Lcom/android/systemui/statusbar/phone/IconMerger$1;

    invoke-direct {v5, p0, v2}, Lcom/android/systemui/statusbar/phone/IconMerger$1;-><init>(Lcom/android/systemui/statusbar/phone/IconMerger;Z)V

    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/phone/IconMerger;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .end local v2    # "moreRequired":Z
    .end local v3    # "overflowShown":Z
    :cond_5
    move v3, v5

    .line 75
    goto :goto_2

    .restart local v3    # "overflowShown":Z
    :cond_6
    move v2, v5

    .line 78
    goto :goto_3
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 1
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 63
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 64
    sub-int v0, p4, p2

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/IconMerger;->checkOverflow(I)V

    .line 65
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 55
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 57
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IconMerger;->getMeasuredWidth()I

    move-result v0

    .line 58
    .local v0, "width":I
    iget v1, p0, Lcom/android/systemui/statusbar/phone/IconMerger;->mIconSize:I

    rem-int v1, v0, v1

    sub-int v1, v0, v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IconMerger;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/statusbar/phone/IconMerger;->setMeasuredDimension(II)V

    .line 59
    return-void
.end method

.method public setOverflowIndicator(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/IconMerger;->mMoreView:Landroid/view/View;

    .line 51
    return-void
.end method
