.class public Lcom/android/systemui/recent/RecentsHorizontalScrollView;
.super Landroid/widget/HorizontalScrollView;
.source "RecentsHorizontalScrollView.java"

# interfaces
.implements Lcom/android/systemui/SwipeHelper$Callback;


# instance fields
.field private mAdapter:Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;

.field private mCallback:Lcom/android/systemui/recent/RecentsCallback;

.field protected mLastScrollPosition:I

.field private mLinearLayout:Landroid/widget/LinearLayout;

.field private mPerformanceHelper:Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;

.field private mSelectedTaskIndex:I

.field private mSwipeHelper:Lcom/android/systemui/SwipeHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v4, 0x0

    .line 56
    invoke-direct {p0, p1, p2, v4}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mSelectedTaskIndex:I

    .line 57
    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, v2, Landroid/util/DisplayMetrics;->density:F

    .line 58
    .local v0, "densityScale":F
    iget-object v2, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v2

    int-to-float v1, v2

    .line 59
    .local v1, "pagingTouchSlop":F
    new-instance v2, Lcom/android/systemui/SwipeHelper;

    const/4 v3, 0x1

    invoke-direct {v2, v3, p0, v0, v1}, Lcom/android/systemui/SwipeHelper;-><init>(ILcom/android/systemui/SwipeHelper$Callback;FF)V

    iput-object v2, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mSwipeHelper:Lcom/android/systemui/SwipeHelper;

    .line 60
    invoke-static {p1, p2, p0, v4}, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->create(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/view/View;Z)Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mPerformanceHelper:Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;

    .line 61
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/recent/RecentsHorizontalScrollView;)Lcom/android/systemui/recent/RecentsCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/recent/RecentsHorizontalScrollView;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mCallback:Lcom/android/systemui/recent/RecentsCallback;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/recent/RecentsHorizontalScrollView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/recent/RecentsHorizontalScrollView;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->scrollPositionOfMostRecent()I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/systemui/recent/RecentsHorizontalScrollView;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/recent/RecentsHorizontalScrollView;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/recent/RecentsHorizontalScrollView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/recent/RecentsHorizontalScrollView;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->update()V

    return-void
.end method

.method private findIndexForView(Landroid/view/View;)I
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 235
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 236
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-ne v1, p1, :cond_0

    .line 241
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 235
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 241
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private scrollPositionOfMostRecent()I
    .locals 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private scrollToItem(I)V
    .locals 8
    .param p1, "item"    # I

    .prologue
    const/4 v7, 0x0

    .line 211
    if-ltz p1, :cond_0

    iget-object v3, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    if-lt p1, v3, :cond_1

    .line 232
    :cond_0
    :goto_0
    return-void

    .line 215
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 216
    .local v2, "view":Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->isPaddingOffsetRequired()Z

    move-result v0

    .line 217
    .local v0, "offsetRequired":Z
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-double v3, v3

    const-wide v5, 0x3fd3333333333333L    # 0.3

    mul-double/2addr v3, v5

    double-to-int v1, v3

    .line 219
    .local v1, "scrollMargin":I
    if-nez p1, :cond_2

    .line 221
    invoke-virtual {p0, v7, v7}, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->scrollTo(II)V

    goto :goto_0

    .line 222
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne p1, v3, :cond_3

    .line 224
    iget-object v3, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v3

    invoke-virtual {p0, v3, v7}, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->scrollTo(II)V

    goto :goto_0

    .line 225
    :cond_3
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v3

    iget v4, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mScrollX:I

    if-ge v3, v4, :cond_4

    .line 227
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-virtual {p0, v3, v7}, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->scrollTo(II)V

    goto :goto_0

    .line 228
    :cond_4
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v3

    iget v4, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mScrollX:I

    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->getWidth()I

    move-result v5

    add-int/2addr v4, v5

    if-le v3, v4, :cond_0

    .line 230
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->getWidth()I

    move-result v4

    sub-int/2addr v3, v4

    add-int/2addr v3, v1

    invoke-virtual {p0, v3, v7}, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->scrollTo(II)V

    goto :goto_0
.end method

.method private setOverScrollEffectPadding(II)V
    .locals 0
    .param p1, "leftPadding"    # I
    .param p2, "i"    # I

    .prologue
    .line 392
    return-void
.end method

.method private switchSelected(II)V
    .locals 2
    .param p1, "oldIndex"    # I
    .param p2, "newIndex"    # I

    .prologue
    .line 193
    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 194
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 196
    .local v0, "v":Landroid/view/View;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 199
    .end local v0    # "v":Landroid/view/View;
    :cond_0
    if-ltz p2, :cond_1

    iget-object v1, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge p2, v1, :cond_1

    .line 200
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 202
    .restart local v0    # "v":Landroid/view/View;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 204
    .end local v0    # "v":Landroid/view/View;
    :cond_1
    return-void
.end method

.method private update()V
    .locals 10

    .prologue
    .line 68
    iget-object v7, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 69
    const/4 v7, -0x1

    iput v7, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mSelectedTaskIndex:I

    .line 70
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v7, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mAdapter:Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;

    invoke-virtual {v7}, Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;->getCount()I

    move-result v7

    if-ge v1, v7, :cond_1

    .line 71
    iget-object v7, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mAdapter:Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v1, v8, v9}, Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 73
    .local v6, "view":Landroid/view/View;
    iget-object v7, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mPerformanceHelper:Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;

    if-eqz v7, :cond_0

    .line 74
    iget-object v7, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mPerformanceHelper:Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;

    invoke-virtual {v7, v6}, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->addViewCallback(Landroid/view/View;)V

    .line 77
    :cond_0
    new-instance v4, Lcom/android/systemui/recent/RecentsHorizontalScrollView$1;

    invoke-direct {v4, p0}, Lcom/android/systemui/recent/RecentsHorizontalScrollView$1;-><init>(Lcom/android/systemui/recent/RecentsHorizontalScrollView;)V

    .line 84
    .local v4, "noOpListener":Landroid/view/View$OnTouchListener;
    new-instance v7, Lcom/android/systemui/recent/RecentsHorizontalScrollView$2;

    invoke-direct {v7, p0}, Lcom/android/systemui/recent/RecentsHorizontalScrollView$2;-><init>(Lcom/android/systemui/recent/RecentsHorizontalScrollView;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    .line 92
    new-instance v2, Lcom/android/systemui/recent/RecentsHorizontalScrollView$3;

    invoke-direct {v2, p0, v6}, Lcom/android/systemui/recent/RecentsHorizontalScrollView$3;-><init>(Lcom/android/systemui/recent/RecentsHorizontalScrollView;Landroid/view/View;)V

    .line 98
    .local v2, "launchAppListener":Landroid/view/View$OnClickListener;
    const v7, 0x7f0e006b

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 99
    .local v5, "thumbnailView":Landroid/view/View;
    new-instance v3, Lcom/android/systemui/recent/RecentsHorizontalScrollView$4;

    invoke-direct {v3, p0, v6, v5}, Lcom/android/systemui/recent/RecentsHorizontalScrollView$4;-><init>(Lcom/android/systemui/recent/RecentsHorizontalScrollView;Landroid/view/View;Landroid/view/View;)V

    .line 106
    .local v3, "longClickListener":Landroid/view/View$OnLongClickListener;
    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Landroid/view/View;->setClickable(Z)V

    .line 107
    invoke-virtual {v5, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    invoke-virtual {v5, v3}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 113
    const v7, 0x7f0e006e

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 114
    .local v0, "appTitle":Landroid/view/View;
    const-string v7, " "

    invoke-virtual {v0, v7}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 115
    invoke-virtual {v0, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 116
    iget-object v7, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 70
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 119
    .end local v0    # "appTitle":Landroid/view/View;
    .end local v2    # "launchAppListener":Landroid/view/View$OnClickListener;
    .end local v3    # "longClickListener":Landroid/view/View$OnLongClickListener;
    .end local v4    # "noOpListener":Landroid/view/View$OnTouchListener;
    .end local v5    # "thumbnailView":Landroid/view/View;
    .end local v6    # "view":Landroid/view/View;
    :cond_1
    new-instance v7, Lcom/android/systemui/recent/RecentsHorizontalScrollView$5;

    invoke-direct {v7, p0}, Lcom/android/systemui/recent/RecentsHorizontalScrollView$5;-><init>(Lcom/android/systemui/recent/RecentsHorizontalScrollView;)V

    invoke-virtual {p0, v7}, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->post(Ljava/lang/Runnable;)Z

    .line 125
    return-void
.end method


# virtual methods
.method public canChildBeDismissed(Landroid/view/View;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 262
    const/4 v0, 0x1

    return v0
.end method

.method public dismissChild(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 266
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mSwipeHelper:Lcom/android/systemui/SwipeHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/SwipeHelper;->dismissChild(Landroid/view/View;F)V

    .line 267
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 14
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v8, 0x0

    .line 320
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->draw(Landroid/graphics/Canvas;)V

    .line 322
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mPerformanceHelper:Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;

    if-eqz v0, :cond_2

    .line 323
    iget v13, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mPaddingLeft:I

    .line 324
    .local v13, "paddingLeft":I
    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->isPaddingOffsetRequired()Z

    move-result v12

    .line 325
    .local v12, "offsetRequired":Z
    if-eqz v12, :cond_0

    .line 326
    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->getLeftPaddingOffset()I

    move-result v0

    add-int/2addr v13, v0

    .line 329
    :cond_0
    iget v0, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mScrollX:I

    add-int v2, v0, v13

    .line 330
    .local v2, "left":I
    iget v0, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mRight:I

    add-int/2addr v0, v2

    iget v1, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mLeft:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mPaddingRight:I

    sub-int/2addr v0, v1

    sub-int v3, v0, v13

    .line 331
    .local v3, "right":I
    iget v0, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mScrollY:I

    invoke-virtual {p0, v12}, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->getFadeTop(Z)I

    move-result v1

    add-int v4, v0, v1

    .line 332
    .local v4, "top":I
    invoke-virtual {p0, v12}, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->getFadeHeight(Z)I

    move-result v0

    add-int v5, v4, v0

    .line 334
    .local v5, "bottom":I
    if-eqz v12, :cond_1

    .line 335
    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->getRightPaddingOffset()I

    move-result v0

    add-int/2addr v3, v0

    .line 336
    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->getBottomPaddingOffset()I

    move-result v0

    add-int/2addr v5, v0

    .line 338
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mPerformanceHelper:Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;

    iget v6, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mScrollX:I

    iget v7, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mScrollY:I

    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->getLeftFadingEdgeStrength()F

    move-result v10

    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->getRightFadingEdgeStrength()F

    move-result v11

    move-object v1, p1

    move v9, v8

    invoke-virtual/range {v0 .. v11}, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->drawCallback(Landroid/graphics/Canvas;IIIIIIFFFF)V

    .line 343
    .end local v2    # "left":I
    .end local v3    # "right":I
    .end local v4    # "top":I
    .end local v5    # "bottom":I
    .end local v12    # "offsetRequired":Z
    .end local v13    # "paddingLeft":I
    :cond_2
    return-void
.end method

.method public getChildAtPosition(Landroid/view/MotionEvent;)Landroid/view/View;
    .locals 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 294
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->getScrollX()I

    move-result v5

    int-to-float v5, v5

    add-float v2, v4, v5

    .line 295
    .local v2, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->getScrollY()I

    move-result v5

    int-to-float v5, v5

    add-float v3, v4, v5

    .line 296
    .local v3, "y":F
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 297
    iget-object v4, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 298
    .local v1, "item":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v4, v2, v4

    if-ltz v4, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v4

    int-to-float v4, v4

    cmpg-float v4, v2, v4

    if-gez v4, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v4, v3, v4

    if-ltz v4, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v4

    int-to-float v4, v4

    cmpg-float v4, v3, v4

    if-gez v4, :cond_0

    .line 303
    .end local v1    # "item":Landroid/view/View;
    :goto_1
    return-object v1

    .line 296
    .restart local v1    # "item":Landroid/view/View;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 303
    .end local v1    # "item":Landroid/view/View;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getChildContentView(Landroid/view/View;)Landroid/view/View;
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 307
    const v0, 0x7f0e006a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getHorizontalFadingEdgeLength()I
    .locals 1

    .prologue
    .line 356
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mPerformanceHelper:Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;

    if-eqz v0, :cond_0

    .line 357
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mPerformanceHelper:Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;

    invoke-virtual {v0}, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->getHorizontalFadingEdgeLengthCallback()I

    move-result v0

    .line 359
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->getHorizontalFadingEdgeLength()I

    move-result v0

    goto :goto_0
.end method

.method public getVerticalFadingEdgeLength()I
    .locals 1

    .prologue
    .line 347
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mPerformanceHelper:Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;

    if-eqz v0, :cond_0

    .line 348
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mPerformanceHelper:Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;

    invoke-virtual {v0}, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->getVerticalFadingEdgeLengthCallback()I

    move-result v0

    .line 350
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->getVerticalFadingEdgeLength()I

    move-result v0

    goto :goto_0
.end method

.method public onAttachedToWindow()V
    .locals 4

    .prologue
    .line 375
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mPerformanceHelper:Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;

    if-eqz v0, :cond_0

    .line 376
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mPerformanceHelper:Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;

    iget-object v1, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mCallback:Lcom/android/systemui/recent/RecentsCallback;

    iget-object v2, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->isHardwareAccelerated()Z

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->onAttachedToWindowCallback(Lcom/android/systemui/recent/RecentsCallback;Landroid/widget/LinearLayout;Z)V

    .line 379
    :cond_0
    return-void
.end method

.method public onBeginDrag(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x1

    .line 285
    invoke-virtual {p0, v0}, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->requestDisallowInterceptTouchEvent(Z)V

    .line 286
    invoke-virtual {p1, v0}, Landroid/view/View;->setActivated(Z)V

    .line 287
    return-void
.end method

.method public onChildDismissed(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 270
    invoke-direct {p0, p1}, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->findIndexForView(Landroid/view/View;)I

    move-result v0

    .line 271
    .local v0, "viewIndex":I
    iget v1, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mSelectedTaskIndex:I

    if-gt v0, v1, :cond_0

    iget v1, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mSelectedTaskIndex:I

    if-nez v1, :cond_1

    :cond_0
    iget v1, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mSelectedTaskIndex:I

    iget-object v2, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 273
    :cond_1
    iget v1, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mSelectedTaskIndex:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mSelectedTaskIndex:I

    .line 276
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 277
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mCallback:Lcom/android/systemui/recent/RecentsCallback;

    invoke-interface {v1, p1}, Lcom/android/systemui/recent/RecentsCallback;->handleSwipe(Landroid/view/View;)V

    .line 279
    const/4 v1, -0x1

    iget v2, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mSelectedTaskIndex:I

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->switchSelected(II)V

    .line 280
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 383
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 384
    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, v2, Landroid/util/DisplayMetrics;->density:F

    .line 385
    .local v0, "densityScale":F
    iget-object v2, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mSwipeHelper:Lcom/android/systemui/SwipeHelper;

    invoke-virtual {v2, v0}, Lcom/android/systemui/SwipeHelper;->setDensityScale(F)V

    .line 386
    iget-object v2, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v2

    int-to-float v1, v2

    .line 387
    .local v1, "pagingTouchSlop":F
    iget-object v2, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mSwipeHelper:Lcom/android/systemui/SwipeHelper;

    invoke-virtual {v2, v1}, Lcom/android/systemui/SwipeHelper;->setPagingTouchSlop(F)V

    .line 388
    return-void
.end method

.method public onDragCancelled(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 290
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setActivated(Z)V

    .line 291
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 365
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onFinishInflate()V

    .line 366
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->setScrollbarFadingEnabled(Z)V

    .line 367
    const v1, 0x7f0e0074

    invoke-virtual {p0, v1}, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    .line 368
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a001c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 370
    .local v0, "leftPadding":I
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->setOverScrollEffectPadding(II)V

    .line 371
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 251
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mSwipeHelper:Lcom/android/systemui/SwipeHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/SwipeHelper;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    const/4 v3, -0x1

    .line 129
    const/16 v2, 0x15

    if-ne p1, v2, :cond_4

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v2

    if-nez v2, :cond_4

    .line 130
    iget v0, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mSelectedTaskIndex:I

    .line 131
    .local v0, "oldIndex":I
    iget-object v2, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mAdapter:Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;

    invoke-virtual {v2}, Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;->getCount()I

    move-result v2

    if-nez v2, :cond_1

    .line 132
    iput v3, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mSelectedTaskIndex:I

    .line 140
    :cond_0
    :goto_0
    iget v2, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mSelectedTaskIndex:I

    invoke-direct {p0, v0, v2}, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->switchSelected(II)V

    .line 141
    iget v2, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mSelectedTaskIndex:I

    invoke-direct {p0, v2}, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->scrollToItem(I)V

    .line 158
    .end local v0    # "oldIndex":I
    :goto_1
    return v1

    .line 133
    .restart local v0    # "oldIndex":I
    :cond_1
    iget v2, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mSelectedTaskIndex:I

    if-ltz v2, :cond_2

    iget v2, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mSelectedTaskIndex:I

    iget-object v3, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mAdapter:Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;

    invoke-virtual {v3}, Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;->getCount()I

    move-result v3

    if-lt v2, v3, :cond_3

    .line 135
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mAdapter:Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;

    invoke-virtual {v2}, Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mSelectedTaskIndex:I

    goto :goto_0

    .line 136
    :cond_3
    iget v2, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mSelectedTaskIndex:I

    if-lez v2, :cond_0

    .line 137
    iget v2, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mSelectedTaskIndex:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mSelectedTaskIndex:I

    goto :goto_0

    .line 143
    .end local v0    # "oldIndex":I
    :cond_4
    const/16 v2, 0x16

    if-ne p1, v2, :cond_9

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v2

    if-nez v2, :cond_9

    .line 144
    iget v0, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mSelectedTaskIndex:I

    .line 145
    .restart local v0    # "oldIndex":I
    iget-object v2, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mAdapter:Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;

    invoke-virtual {v2}, Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;->getCount()I

    move-result v2

    if-nez v2, :cond_6

    .line 146
    iput v3, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mSelectedTaskIndex:I

    .line 153
    :cond_5
    :goto_2
    iget v2, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mSelectedTaskIndex:I

    invoke-direct {p0, v0, v2}, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->switchSelected(II)V

    .line 154
    iget v2, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mSelectedTaskIndex:I

    invoke-direct {p0, v2}, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->scrollToItem(I)V

    goto :goto_1

    .line 147
    :cond_6
    iget v2, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mSelectedTaskIndex:I

    if-ltz v2, :cond_7

    iget v2, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mSelectedTaskIndex:I

    iget-object v3, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mAdapter:Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;

    invoke-virtual {v3}, Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;->getCount()I

    move-result v3

    if-lt v2, v3, :cond_8

    .line 148
    :cond_7
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mSelectedTaskIndex:I

    goto :goto_2

    .line 149
    :cond_8
    iget v2, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mSelectedTaskIndex:I

    iget-object v3, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mAdapter:Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;

    invoke-virtual {v3}, Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_5

    .line 150
    iget v2, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mSelectedTaskIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mSelectedTaskIndex:I

    goto :goto_2

    .line 158
    .end local v0    # "oldIndex":I
    :cond_9
    invoke-super {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x1

    .line 162
    const/16 v4, 0x17

    if-eq p1, v4, :cond_0

    const/16 v4, 0x42

    if-ne p1, v4, :cond_3

    :cond_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v4

    if-nez v4, :cond_3

    .line 164
    iget v4, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mSelectedTaskIndex:I

    if-ltz v4, :cond_1

    iget v4, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mSelectedTaskIndex:I

    iget-object v5, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v5

    if-lt v4, v5, :cond_2

    .line 189
    :cond_1
    :goto_0
    return v3

    .line 168
    :cond_2
    iget-object v4, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    iget v5, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mSelectedTaskIndex:I

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 170
    .local v2, "view":Landroid/view/View;
    if-eqz v2, :cond_1

    .line 171
    iget-object v4, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mCallback:Lcom/android/systemui/recent/RecentsCallback;

    invoke-interface {v4, v2}, Lcom/android/systemui/recent/RecentsCallback;->handleOnClick(Landroid/view/View;)V

    goto :goto_0

    .line 174
    .end local v2    # "view":Landroid/view/View;
    :cond_3
    const/16 v4, 0x52

    if-ne p1, v4, :cond_4

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v4

    if-nez v4, :cond_4

    .line 175
    iget v4, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mSelectedTaskIndex:I

    if-ltz v4, :cond_1

    iget v4, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mSelectedTaskIndex:I

    iget-object v5, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 179
    iget-object v4, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    iget v5, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mSelectedTaskIndex:I

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 181
    .restart local v2    # "view":Landroid/view/View;
    if-eqz v2, :cond_1

    .line 182
    const v4, 0x7f0e006b

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 183
    .local v1, "thumbnailView":Landroid/view/View;
    const v4, 0x7f0e006f

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 184
    .local v0, "anchorView":Landroid/view/View;
    iget-object v4, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mCallback:Lcom/android/systemui/recent/RecentsCallback;

    invoke-interface {v4, v2, v0, v1}, Lcom/android/systemui/recent/RecentsCallback;->handleLongPress(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    goto :goto_0

    .line 189
    .end local v0    # "anchorView":Landroid/view/View;
    .end local v1    # "thumbnailView":Landroid/view/View;
    .end local v2    # "view":Landroid/view/View;
    :cond_4
    const/4 v3, 0x0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 312
    invoke-super/range {p0 .. p5}, Landroid/widget/HorizontalScrollView;->onLayout(ZIIII)V

    .line 313
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mPerformanceHelper:Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;

    if-eqz v0, :cond_0

    .line 314
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mPerformanceHelper:Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;

    invoke-virtual {v0}, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->onLayoutCallback()V

    .line 316
    :cond_0
    return-void
.end method

.method public onRecentsVisibilityChanged()V
    .locals 1

    .prologue
    .line 422
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mPerformanceHelper:Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;

    if-eqz v0, :cond_0

    .line 423
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mPerformanceHelper:Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;

    invoke-virtual {v0}, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->updateShowBackground()V

    .line 425
    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 396
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/HorizontalScrollView;->onSizeChanged(IIII)V

    .line 400
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v0

    .line 401
    .local v0, "transition":Landroid/animation/LayoutTransition;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/LayoutTransition;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 419
    :goto_0
    return-void

    .line 406
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->scrollPositionOfMostRecent()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mLastScrollPosition:I

    .line 409
    new-instance v1, Lcom/android/systemui/recent/RecentsHorizontalScrollView$6;

    invoke-direct {v1, p0}, Lcom/android/systemui/recent/RecentsHorizontalScrollView$6;-><init>(Lcom/android/systemui/recent/RecentsHorizontalScrollView;)V

    invoke-virtual {p0, v1}, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 257
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mSwipeHelper:Lcom/android/systemui/SwipeHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/SwipeHelper;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .prologue
    .line 429
    invoke-super {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->onVisibilityChanged(Landroid/view/View;I)V

    .line 431
    if-nez p2, :cond_0

    if-ne p1, p0, :cond_0

    .line 432
    new-instance v0, Lcom/android/systemui/recent/RecentsHorizontalScrollView$7;

    invoke-direct {v0, p0}, Lcom/android/systemui/recent/RecentsHorizontalScrollView$7;-><init>(Lcom/android/systemui/recent/RecentsHorizontalScrollView;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->post(Ljava/lang/Runnable;)Z

    .line 438
    :cond_0
    return-void
.end method

.method public removeViewInLayout(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 246
    invoke-virtual {p0, p1}, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->dismissChild(Landroid/view/View;)V

    .line 247
    return-void
.end method

.method public setAdapter(Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;)V
    .locals 2
    .param p1, "adapter"    # Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;

    .prologue
    .line 441
    iput-object p1, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mAdapter:Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;

    .line 442
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mAdapter:Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;

    new-instance v1, Lcom/android/systemui/recent/RecentsHorizontalScrollView$8;

    invoke-direct {v1, p0}, Lcom/android/systemui/recent/RecentsHorizontalScrollView$8;-><init>(Lcom/android/systemui/recent/RecentsHorizontalScrollView;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 451
    return-void
.end method

.method public setCallback(Lcom/android/systemui/recent/RecentsCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/systemui/recent/RecentsCallback;

    .prologue
    .line 463
    iput-object p1, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mCallback:Lcom/android/systemui/recent/RecentsCallback;

    .line 464
    return-void
.end method

.method public setLayoutTransition(Landroid/animation/LayoutTransition;)V
    .locals 1
    .param p1, "transition"    # Landroid/animation/LayoutTransition;

    .prologue
    .line 455
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mPerformanceHelper:Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;

    if-eqz v0, :cond_0

    .line 456
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mPerformanceHelper:Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->setLayoutTransitionCallback(Landroid/animation/LayoutTransition;)V

    .line 459
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 460
    return-void
.end method
