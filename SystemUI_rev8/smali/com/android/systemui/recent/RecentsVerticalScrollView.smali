.class public Lcom/android/systemui/recent/RecentsVerticalScrollView;
.super Landroid/widget/ScrollView;
.source "RecentsVerticalScrollView.java"

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
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x0

    .line 54
    invoke-direct {p0, p1, p2, v3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mSelectedTaskIndex:I

    .line 55
    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsVerticalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, v2, Landroid/util/DisplayMetrics;->density:F

    .line 56
    .local v0, "densityScale":F
    iget-object v2, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v2

    int-to-float v1, v2

    .line 57
    .local v1, "pagingTouchSlop":F
    new-instance v2, Lcom/android/systemui/SwipeHelper;

    invoke-direct {v2, v3, p0, v0, v1}, Lcom/android/systemui/SwipeHelper;-><init>(ILcom/android/systemui/SwipeHelper$Callback;FF)V

    iput-object v2, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mSwipeHelper:Lcom/android/systemui/SwipeHelper;

    .line 59
    const/4 v2, 0x1

    invoke-static {p1, p2, p0, v2}, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->create(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/view/View;Z)Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mPerformanceHelper:Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;

    .line 60
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/recent/RecentsVerticalScrollView;)Lcom/android/systemui/recent/RecentsCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/recent/RecentsVerticalScrollView;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mCallback:Lcom/android/systemui/recent/RecentsCallback;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/recent/RecentsVerticalScrollView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/recent/RecentsVerticalScrollView;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/systemui/recent/RecentsVerticalScrollView;->scrollPositionOfMostRecent()I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/systemui/recent/RecentsVerticalScrollView;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/recent/RecentsVerticalScrollView;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/recent/RecentsVerticalScrollView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/recent/RecentsVerticalScrollView;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/systemui/recent/RecentsVerticalScrollView;->update()V

    return-void
.end method

.method private findIndexForView(Landroid/view/View;)I
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 249
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 250
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-ne v1, p1, :cond_0

    .line 255
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 249
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 255
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private scrollPositionOfMostRecent()I
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsVerticalScrollView;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private scrollToItem(I)V
    .locals 8
    .param p1, "item"    # I

    .prologue
    const/4 v7, 0x0

    .line 225
    if-ltz p1, :cond_0

    iget-object v3, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    if-lt p1, v3, :cond_1

    .line 246
    :cond_0
    :goto_0
    return-void

    .line 229
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 230
    .local v2, "view":Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsVerticalScrollView;->isPaddingOffsetRequired()Z

    move-result v0

    .line 231
    .local v0, "offsetRequired":Z
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-double v3, v3

    const-wide v5, 0x3fd3333333333333L    # 0.3

    mul-double/2addr v3, v5

    double-to-int v1, v3

    .line 233
    .local v1, "scrollMargin":I
    if-nez p1, :cond_2

    .line 235
    invoke-virtual {p0, v7, v7}, Lcom/android/systemui/recent/RecentsVerticalScrollView;->scrollTo(II)V

    goto :goto_0

    .line 236
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne p1, v3, :cond_3

    .line 238
    iget-object v3, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v3

    invoke-virtual {p0, v7, v3}, Lcom/android/systemui/recent/RecentsVerticalScrollView;->scrollTo(II)V

    goto :goto_0

    .line 239
    :cond_3
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    iget v4, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mScrollY:I

    if-ge v3, v4, :cond_4

    .line 241
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-virtual {p0, v7, v3}, Lcom/android/systemui/recent/RecentsVerticalScrollView;->scrollTo(II)V

    goto :goto_0

    .line 242
    :cond_4
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v3

    iget v4, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mScrollY:I

    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsVerticalScrollView;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    if-le v3, v4, :cond_0

    .line 244
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsVerticalScrollView;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    add-int/2addr v3, v1

    invoke-virtual {p0, v7, v3}, Lcom/android/systemui/recent/RecentsVerticalScrollView;->scrollTo(II)V

    goto :goto_0
.end method

.method private setOverScrollEffectPadding(II)V
    .locals 0
    .param p1, "leftPadding"    # I
    .param p2, "i"    # I

    .prologue
    .line 407
    return-void
.end method

.method private switchSelected(II)V
    .locals 2
    .param p1, "oldIndex"    # I
    .param p2, "newIndex"    # I

    .prologue
    .line 207
    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 208
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 210
    .local v0, "v":Landroid/view/View;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 213
    .end local v0    # "v":Landroid/view/View;
    :cond_0
    if-ltz p2, :cond_1

    iget-object v1, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge p2, v1, :cond_1

    .line 214
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 216
    .restart local v0    # "v":Landroid/view/View;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 218
    .end local v0    # "v":Landroid/view/View;
    :cond_1
    return-void
.end method

.method private update()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 67
    iget-object v9, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 68
    const/4 v9, -0x1

    iput v9, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mSelectedTaskIndex:I

    .line 72
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v9, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mAdapter:Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;

    invoke-virtual {v9}, Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;->getCount()I

    move-result v9

    if-ge v2, v9, :cond_3

    .line 73
    const/4 v6, 0x0

    .line 74
    .local v6, "old":Landroid/view/View;
    iget-object v9, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v9

    if-ge v2, v9, :cond_0

    .line 75
    iget-object v9, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 76
    invoke-virtual {v6, v11}, Landroid/view/View;->setVisibility(I)V

    .line 78
    :cond_0
    iget-object v9, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mAdapter:Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;

    iget-object v10, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v2, v6, v10}, Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 80
    .local v8, "view":Landroid/view/View;
    iget-object v9, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mPerformanceHelper:Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;

    if-eqz v9, :cond_1

    .line 81
    iget-object v9, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mPerformanceHelper:Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;

    invoke-virtual {v9, v8}, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->addViewCallback(Landroid/view/View;)V

    .line 84
    :cond_1
    if-nez v6, :cond_2

    .line 85
    new-instance v5, Lcom/android/systemui/recent/RecentsVerticalScrollView$1;

    invoke-direct {v5, p0}, Lcom/android/systemui/recent/RecentsVerticalScrollView$1;-><init>(Lcom/android/systemui/recent/RecentsVerticalScrollView;)V

    .line 92
    .local v5, "noOpListener":Landroid/view/View$OnTouchListener;
    new-instance v9, Lcom/android/systemui/recent/RecentsVerticalScrollView$2;

    invoke-direct {v9, p0}, Lcom/android/systemui/recent/RecentsVerticalScrollView$2;-><init>(Lcom/android/systemui/recent/RecentsVerticalScrollView;)V

    invoke-virtual {v8, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    invoke-virtual {v8, v11}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    .line 100
    new-instance v3, Lcom/android/systemui/recent/RecentsVerticalScrollView$3;

    invoke-direct {v3, p0, v8}, Lcom/android/systemui/recent/RecentsVerticalScrollView$3;-><init>(Lcom/android/systemui/recent/RecentsVerticalScrollView;Landroid/view/View;)V

    .line 106
    .local v3, "launchAppListener":Landroid/view/View$OnClickListener;
    const v9, 0x7f0e006b

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 107
    .local v7, "thumbnailView":Landroid/view/View;
    new-instance v4, Lcom/android/systemui/recent/RecentsVerticalScrollView$4;

    invoke-direct {v4, p0, v8, v7}, Lcom/android/systemui/recent/RecentsVerticalScrollView$4;-><init>(Lcom/android/systemui/recent/RecentsVerticalScrollView;Landroid/view/View;Landroid/view/View;)V

    .line 114
    .local v4, "longClickListener":Landroid/view/View$OnLongClickListener;
    const/4 v9, 0x1

    invoke-virtual {v7, v9}, Landroid/view/View;->setClickable(Z)V

    .line 115
    invoke-virtual {v7, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    invoke-virtual {v7, v4}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 121
    const v9, 0x7f0e006e

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 122
    .local v0, "appTitle":Landroid/view/View;
    const-string v9, " "

    invoke-virtual {v0, v9}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 123
    invoke-virtual {v0, v5}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 124
    const v9, 0x7f0e0070

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 125
    .local v1, "calloutLine":Landroid/view/View;
    invoke-virtual {v1, v5}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 126
    iget-object v9, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 72
    .end local v0    # "appTitle":Landroid/view/View;
    .end local v1    # "calloutLine":Landroid/view/View;
    .end local v3    # "launchAppListener":Landroid/view/View$OnClickListener;
    .end local v4    # "longClickListener":Landroid/view/View$OnLongClickListener;
    .end local v5    # "noOpListener":Landroid/view/View$OnTouchListener;
    .end local v7    # "thumbnailView":Landroid/view/View;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 129
    .end local v6    # "old":Landroid/view/View;
    .end local v8    # "view":Landroid/view/View;
    :cond_3
    iget-object v9, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mAdapter:Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;

    invoke-virtual {v9}, Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;->getCount()I

    move-result v2

    :goto_1
    iget-object v9, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v9

    if-ge v2, v9, :cond_4

    .line 130
    iget-object v9, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 129
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 133
    :cond_4
    new-instance v9, Lcom/android/systemui/recent/RecentsVerticalScrollView$5;

    invoke-direct {v9, p0}, Lcom/android/systemui/recent/RecentsVerticalScrollView$5;-><init>(Lcom/android/systemui/recent/RecentsVerticalScrollView;)V

    invoke-virtual {p0, v9}, Lcom/android/systemui/recent/RecentsVerticalScrollView;->post(Ljava/lang/Runnable;)Z

    .line 139
    return-void
.end method


# virtual methods
.method public canChildBeDismissed(Landroid/view/View;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 276
    const/4 v0, 0x1

    return v0
.end method

.method public dismissChild(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 280
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mSwipeHelper:Lcom/android/systemui/SwipeHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/SwipeHelper;->dismissChild(Landroid/view/View;F)V

    .line 281
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 14
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v10, 0x0

    .line 335
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->draw(Landroid/graphics/Canvas;)V

    .line 337
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mPerformanceHelper:Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;

    if-eqz v0, :cond_2

    .line 338
    iget v13, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mPaddingLeft:I

    .line 339
    .local v13, "paddingLeft":I
    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsVerticalScrollView;->isPaddingOffsetRequired()Z

    move-result v12

    .line 340
    .local v12, "offsetRequired":Z
    if-eqz v12, :cond_0

    .line 341
    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsVerticalScrollView;->getLeftPaddingOffset()I

    move-result v0

    add-int/2addr v13, v0

    .line 344
    :cond_0
    iget v0, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mScrollX:I

    add-int v2, v0, v13

    .line 345
    .local v2, "left":I
    iget v0, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mRight:I

    add-int/2addr v0, v2

    iget v1, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mLeft:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mPaddingRight:I

    sub-int/2addr v0, v1

    sub-int v3, v0, v13

    .line 346
    .local v3, "right":I
    iget v0, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mScrollY:I

    invoke-virtual {p0, v12}, Lcom/android/systemui/recent/RecentsVerticalScrollView;->getFadeTop(Z)I

    move-result v1

    add-int v4, v0, v1

    .line 347
    .local v4, "top":I
    invoke-virtual {p0, v12}, Lcom/android/systemui/recent/RecentsVerticalScrollView;->getFadeHeight(Z)I

    move-result v0

    add-int v5, v4, v0

    .line 349
    .local v5, "bottom":I
    if-eqz v12, :cond_1

    .line 350
    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsVerticalScrollView;->getRightPaddingOffset()I

    move-result v0

    add-int/2addr v3, v0

    .line 351
    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsVerticalScrollView;->getBottomPaddingOffset()I

    move-result v0

    add-int/2addr v5, v0

    .line 353
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mPerformanceHelper:Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;

    iget v6, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mScrollX:I

    iget v7, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mScrollY:I

    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsVerticalScrollView;->getTopFadingEdgeStrength()F

    move-result v8

    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsVerticalScrollView;->getBottomFadingEdgeStrength()F

    move-result v9

    move-object v1, p1

    move v11, v10

    invoke-virtual/range {v0 .. v11}, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->drawCallback(Landroid/graphics/Canvas;IIIIIIFFFF)V

    .line 358
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
    .line 308
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsVerticalScrollView;->getScrollX()I

    move-result v5

    int-to-float v5, v5

    add-float v2, v4, v5

    .line 309
    .local v2, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsVerticalScrollView;->getScrollY()I

    move-result v5

    int-to-float v5, v5

    add-float v3, v4, v5

    .line 310
    .local v3, "y":F
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 311
    iget-object v4, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 312
    .local v1, "item":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

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

    .line 318
    .end local v1    # "item":Landroid/view/View;
    :goto_1
    return-object v1

    .line 310
    .restart local v1    # "item":Landroid/view/View;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 318
    .end local v1    # "item":Landroid/view/View;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getChildContentView(Landroid/view/View;)Landroid/view/View;
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 322
    const v0, 0x7f0e006a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getHorizontalFadingEdgeLength()I
    .locals 1

    .prologue
    .line 371
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mPerformanceHelper:Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;

    if-eqz v0, :cond_0

    .line 372
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mPerformanceHelper:Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;

    invoke-virtual {v0}, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->getHorizontalFadingEdgeLengthCallback()I

    move-result v0

    .line 374
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/widget/ScrollView;->getHorizontalFadingEdgeLength()I

    move-result v0

    goto :goto_0
.end method

.method public getVerticalFadingEdgeLength()I
    .locals 1

    .prologue
    .line 362
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mPerformanceHelper:Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;

    if-eqz v0, :cond_0

    .line 363
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mPerformanceHelper:Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;

    invoke-virtual {v0}, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->getVerticalFadingEdgeLengthCallback()I

    move-result v0

    .line 365
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/widget/ScrollView;->getVerticalFadingEdgeLength()I

    move-result v0

    goto :goto_0
.end method

.method public onAttachedToWindow()V
    .locals 4

    .prologue
    .line 390
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mPerformanceHelper:Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;

    if-eqz v0, :cond_0

    .line 391
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mPerformanceHelper:Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;

    iget-object v1, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mCallback:Lcom/android/systemui/recent/RecentsCallback;

    iget-object v2, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsVerticalScrollView;->isHardwareAccelerated()Z

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->onAttachedToWindowCallback(Lcom/android/systemui/recent/RecentsCallback;Landroid/widget/LinearLayout;Z)V

    .line 394
    :cond_0
    return-void
.end method

.method public onBeginDrag(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x1

    .line 299
    invoke-virtual {p0, v0}, Lcom/android/systemui/recent/RecentsVerticalScrollView;->requestDisallowInterceptTouchEvent(Z)V

    .line 300
    invoke-virtual {p1, v0}, Landroid/view/View;->setActivated(Z)V

    .line 301
    return-void
.end method

.method public onChildDismissed(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 284
    invoke-direct {p0, p1}, Lcom/android/systemui/recent/RecentsVerticalScrollView;->findIndexForView(Landroid/view/View;)I

    move-result v0

    .line 285
    .local v0, "viewIndex":I
    iget v1, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mSelectedTaskIndex:I

    if-gt v0, v1, :cond_0

    iget v1, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mSelectedTaskIndex:I

    if-nez v1, :cond_1

    :cond_0
    iget v1, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mSelectedTaskIndex:I

    iget-object v2, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 287
    :cond_1
    iget v1, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mSelectedTaskIndex:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mSelectedTaskIndex:I

    .line 290
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 291
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mCallback:Lcom/android/systemui/recent/RecentsCallback;

    invoke-interface {v1, p1}, Lcom/android/systemui/recent/RecentsCallback;->handleSwipe(Landroid/view/View;)V

    .line 293
    const/4 v1, -0x1

    iget v2, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mSelectedTaskIndex:I

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/recent/RecentsVerticalScrollView;->switchSelected(II)V

    .line 294
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 398
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 399
    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsVerticalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, v2, Landroid/util/DisplayMetrics;->density:F

    .line 400
    .local v0, "densityScale":F
    iget-object v2, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mSwipeHelper:Lcom/android/systemui/SwipeHelper;

    invoke-virtual {v2, v0}, Lcom/android/systemui/SwipeHelper;->setDensityScale(F)V

    .line 401
    iget-object v2, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v2

    int-to-float v1, v2

    .line 402
    .local v1, "pagingTouchSlop":F
    iget-object v2, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mSwipeHelper:Lcom/android/systemui/SwipeHelper;

    invoke-virtual {v2, v1}, Lcom/android/systemui/SwipeHelper;->setPagingTouchSlop(F)V

    .line 403
    return-void
.end method

.method public onDragCancelled(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 304
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setActivated(Z)V

    .line 305
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 380
    invoke-super {p0}, Landroid/widget/ScrollView;->onFinishInflate()V

    .line 381
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/systemui/recent/RecentsVerticalScrollView;->setScrollbarFadingEnabled(Z)V

    .line 382
    const v1, 0x7f0e0074

    invoke-virtual {p0, v1}, Lcom/android/systemui/recent/RecentsVerticalScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    .line 383
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a001c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 385
    .local v0, "leftPadding":I
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/recent/RecentsVerticalScrollView;->setOverScrollEffectPadding(II)V

    .line 386
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 265
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mSwipeHelper:Lcom/android/systemui/SwipeHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/SwipeHelper;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

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

    .line 143
    const/16 v2, 0x13

    if-ne p1, v2, :cond_4

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v2

    if-nez v2, :cond_4

    .line 144
    iget v0, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mSelectedTaskIndex:I

    .line 145
    .local v0, "oldIndex":I
    iget-object v2, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mAdapter:Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;

    invoke-virtual {v2}, Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;->getCount()I

    move-result v2

    if-nez v2, :cond_1

    .line 146
    iput v3, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mSelectedTaskIndex:I

    .line 154
    :cond_0
    :goto_0
    iget v2, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mSelectedTaskIndex:I

    invoke-direct {p0, v0, v2}, Lcom/android/systemui/recent/RecentsVerticalScrollView;->switchSelected(II)V

    .line 155
    iget v2, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mSelectedTaskIndex:I

    invoke-direct {p0, v2}, Lcom/android/systemui/recent/RecentsVerticalScrollView;->scrollToItem(I)V

    .line 172
    .end local v0    # "oldIndex":I
    :goto_1
    return v1

    .line 147
    .restart local v0    # "oldIndex":I
    :cond_1
    iget v2, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mSelectedTaskIndex:I

    if-ltz v2, :cond_2

    iget v2, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mSelectedTaskIndex:I

    iget-object v3, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mAdapter:Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;

    invoke-virtual {v3}, Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;->getCount()I

    move-result v3

    if-lt v2, v3, :cond_3

    .line 149
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mAdapter:Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;

    invoke-virtual {v2}, Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mSelectedTaskIndex:I

    goto :goto_0

    .line 150
    :cond_3
    iget v2, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mSelectedTaskIndex:I

    if-lez v2, :cond_0

    .line 151
    iget v2, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mSelectedTaskIndex:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mSelectedTaskIndex:I

    goto :goto_0

    .line 157
    .end local v0    # "oldIndex":I
    :cond_4
    const/16 v2, 0x14

    if-ne p1, v2, :cond_9

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v2

    if-nez v2, :cond_9

    .line 158
    iget v0, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mSelectedTaskIndex:I

    .line 159
    .restart local v0    # "oldIndex":I
    iget-object v2, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mAdapter:Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;

    invoke-virtual {v2}, Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;->getCount()I

    move-result v2

    if-nez v2, :cond_6

    .line 160
    iput v3, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mSelectedTaskIndex:I

    .line 167
    :cond_5
    :goto_2
    iget v2, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mSelectedTaskIndex:I

    invoke-direct {p0, v0, v2}, Lcom/android/systemui/recent/RecentsVerticalScrollView;->switchSelected(II)V

    .line 168
    iget v2, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mSelectedTaskIndex:I

    invoke-direct {p0, v2}, Lcom/android/systemui/recent/RecentsVerticalScrollView;->scrollToItem(I)V

    goto :goto_1

    .line 161
    :cond_6
    iget v2, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mSelectedTaskIndex:I

    if-ltz v2, :cond_7

    iget v2, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mSelectedTaskIndex:I

    iget-object v3, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mAdapter:Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;

    invoke-virtual {v3}, Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;->getCount()I

    move-result v3

    if-lt v2, v3, :cond_8

    .line 162
    :cond_7
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mSelectedTaskIndex:I

    goto :goto_2

    .line 163
    :cond_8
    iget v2, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mSelectedTaskIndex:I

    iget-object v3, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mAdapter:Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;

    invoke-virtual {v3}, Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_5

    .line 164
    iget v2, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mSelectedTaskIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mSelectedTaskIndex:I

    goto :goto_2

    .line 172
    .end local v0    # "oldIndex":I
    :cond_9
    invoke-super {p0, p1, p2}, Landroid/widget/ScrollView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x1

    .line 176
    const/16 v4, 0x17

    if-eq p1, v4, :cond_0

    const/16 v4, 0x42

    if-ne p1, v4, :cond_3

    :cond_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v4

    if-nez v4, :cond_3

    .line 178
    iget v4, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mSelectedTaskIndex:I

    if-ltz v4, :cond_1

    iget v4, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mSelectedTaskIndex:I

    iget-object v5, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v5

    if-lt v4, v5, :cond_2

    .line 203
    :cond_1
    :goto_0
    return v3

    .line 182
    :cond_2
    iget-object v4, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    iget v5, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mSelectedTaskIndex:I

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 184
    .local v2, "view":Landroid/view/View;
    if-eqz v2, :cond_1

    .line 185
    iget-object v4, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mCallback:Lcom/android/systemui/recent/RecentsCallback;

    invoke-interface {v4, v2}, Lcom/android/systemui/recent/RecentsCallback;->handleOnClick(Landroid/view/View;)V

    goto :goto_0

    .line 188
    .end local v2    # "view":Landroid/view/View;
    :cond_3
    const/16 v4, 0x52

    if-ne p1, v4, :cond_4

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v4

    if-nez v4, :cond_4

    .line 189
    iget v4, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mSelectedTaskIndex:I

    if-ltz v4, :cond_1

    iget v4, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mSelectedTaskIndex:I

    iget-object v5, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 193
    iget-object v4, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    iget v5, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mSelectedTaskIndex:I

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 195
    .restart local v2    # "view":Landroid/view/View;
    if-eqz v2, :cond_1

    .line 196
    const v4, 0x7f0e006b

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 197
    .local v1, "thumbnailView":Landroid/view/View;
    const v4, 0x7f0e006f

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 198
    .local v0, "anchorView":Landroid/view/View;
    iget-object v4, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mCallback:Lcom/android/systemui/recent/RecentsCallback;

    invoke-interface {v4, v2, v0, v1}, Lcom/android/systemui/recent/RecentsCallback;->handleLongPress(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    goto :goto_0

    .line 203
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
    .line 327
    invoke-super/range {p0 .. p5}, Landroid/widget/ScrollView;->onLayout(ZIIII)V

    .line 328
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mPerformanceHelper:Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;

    if-eqz v0, :cond_0

    .line 329
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mPerformanceHelper:Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;

    invoke-virtual {v0}, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->onLayoutCallback()V

    .line 331
    :cond_0
    return-void
.end method

.method public onRecentsVisibilityChanged()V
    .locals 1

    .prologue
    .line 437
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mPerformanceHelper:Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;

    if-eqz v0, :cond_0

    .line 438
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mPerformanceHelper:Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;

    invoke-virtual {v0}, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->updateShowBackground()V

    .line 440
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
    .line 411
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onSizeChanged(IIII)V

    .line 415
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v0

    .line 416
    .local v0, "transition":Landroid/animation/LayoutTransition;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/LayoutTransition;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 434
    :goto_0
    return-void

    .line 421
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/recent/RecentsVerticalScrollView;->scrollPositionOfMostRecent()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mLastScrollPosition:I

    .line 424
    new-instance v1, Lcom/android/systemui/recent/RecentsVerticalScrollView$6;

    invoke-direct {v1, p0}, Lcom/android/systemui/recent/RecentsVerticalScrollView$6;-><init>(Lcom/android/systemui/recent/RecentsVerticalScrollView;)V

    invoke-virtual {p0, v1}, Lcom/android/systemui/recent/RecentsVerticalScrollView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 271
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mSwipeHelper:Lcom/android/systemui/SwipeHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/SwipeHelper;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

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
    .line 444
    invoke-super {p0, p1, p2}, Landroid/widget/ScrollView;->onVisibilityChanged(Landroid/view/View;I)V

    .line 446
    if-nez p2, :cond_0

    if-ne p1, p0, :cond_0

    .line 447
    new-instance v0, Lcom/android/systemui/recent/RecentsVerticalScrollView$7;

    invoke-direct {v0, p0}, Lcom/android/systemui/recent/RecentsVerticalScrollView$7;-><init>(Lcom/android/systemui/recent/RecentsVerticalScrollView;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/recent/RecentsVerticalScrollView;->post(Ljava/lang/Runnable;)Z

    .line 453
    :cond_0
    return-void
.end method

.method public removeViewInLayout(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 260
    invoke-virtual {p0, p1}, Lcom/android/systemui/recent/RecentsVerticalScrollView;->dismissChild(Landroid/view/View;)V

    .line 261
    return-void
.end method

.method public setAdapter(Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;)V
    .locals 2
    .param p1, "adapter"    # Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;

    .prologue
    .line 456
    iput-object p1, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mAdapter:Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;

    .line 457
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mAdapter:Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;

    new-instance v1, Lcom/android/systemui/recent/RecentsVerticalScrollView$8;

    invoke-direct {v1, p0}, Lcom/android/systemui/recent/RecentsVerticalScrollView$8;-><init>(Lcom/android/systemui/recent/RecentsVerticalScrollView;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 466
    return-void
.end method

.method public setCallback(Lcom/android/systemui/recent/RecentsCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/systemui/recent/RecentsCallback;

    .prologue
    .line 478
    iput-object p1, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mCallback:Lcom/android/systemui/recent/RecentsCallback;

    .line 479
    return-void
.end method

.method public setLayoutTransition(Landroid/animation/LayoutTransition;)V
    .locals 1
    .param p1, "transition"    # Landroid/animation/LayoutTransition;

    .prologue
    .line 470
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mPerformanceHelper:Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;

    if-eqz v0, :cond_0

    .line 471
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mPerformanceHelper:Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->setLayoutTransitionCallback(Landroid/animation/LayoutTransition;)V

    .line 474
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 475
    return-void
.end method
