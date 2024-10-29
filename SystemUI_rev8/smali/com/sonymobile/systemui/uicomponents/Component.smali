.class public Lcom/sonymobile/systemui/uicomponents/Component;
.super Ljava/lang/Object;
.source "Component.java"


# static fields
.field protected static final SRC_MODE:Landroid/graphics/PorterDuffXfermode;

.field protected static final TAG:Ljava/lang/String;


# instance fields
.field protected mBackgroundPaint:Landroid/graphics/Paint;

.field protected mChildOrderingConsidered:Z

.field protected mChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/systemui/uicomponents/Component;",
            ">;"
        }
    .end annotation
.end field

.field protected mClip:Landroid/graphics/RectF;

.field protected mClipMode:I

.field protected mHeight:F

.field protected mId:Ljava/lang/String;

.field protected mMargin:Landroid/graphics/RectF;

.field protected mOrder:F

.field protected mPadding:Landroid/graphics/RectF;

.field protected mPaint:Landroid/graphics/Paint;

.field protected mParent:Lcom/sonymobile/systemui/uicomponents/Component;

.field protected mPivotX:F

.field protected mPivotY:F

.field protected mScreenX:I

.field protected mScreenY:I

.field protected mSorted:[Lcom/sonymobile/systemui/uicomponents/Component;

.field protected mVisible:Z

.field protected mWidth:F

.field protected mX:F

.field protected mY:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 37
    const-class v0, Lcom/sonymobile/systemui/uicomponents/Component;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/systemui/uicomponents/Component;->TAG:Ljava/lang/String;

    .line 96
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    sput-object v0, Lcom/sonymobile/systemui/uicomponents/Component;->SRC_MODE:Landroid/graphics/PorterDuffXfermode;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 154
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sonymobile/systemui/uicomponents/Component;-><init>(Ljava/lang/String;)V

    .line 155
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    const/high16 v1, 0x3f000000    # 0.5f

    .line 160
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 161
    invoke-virtual {p0, p1}, Lcom/sonymobile/systemui/uicomponents/Component;->setId(Ljava/lang/String;)V

    .line 162
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/systemui/uicomponents/Component;->mPaint:Landroid/graphics/Paint;

    .line 163
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/systemui/uicomponents/Component;->mPadding:Landroid/graphics/RectF;

    .line 164
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/systemui/uicomponents/Component;->mMargin:Landroid/graphics/RectF;

    .line 165
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sonymobile/systemui/uicomponents/Component;->setVisible(Z)V

    .line 166
    invoke-virtual {p0, v1, v1}, Lcom/sonymobile/systemui/uicomponents/Component;->setPivotPoint(FF)V

    .line 167
    return-void
.end method


# virtual methods
.method public addChild(Lcom/sonymobile/systemui/uicomponents/Component;)V
    .locals 1
    .param p1, "child"    # Lcom/sonymobile/systemui/uicomponents/Component;

    .prologue
    .line 638
    iget-object v0, p0, Lcom/sonymobile/systemui/uicomponents/Component;->mChildren:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 639
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/systemui/uicomponents/Component;->mChildren:Ljava/util/ArrayList;

    .line 641
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/systemui/uicomponents/Component;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 642
    iput-object p0, p1, Lcom/sonymobile/systemui/uicomponents/Component;->mParent:Lcom/sonymobile/systemui/uicomponents/Component;

    .line 643
    invoke-virtual {p1, p0}, Lcom/sonymobile/systemui/uicomponents/Component;->onAddedTo(Lcom/sonymobile/systemui/uicomponents/Component;)V

    .line 644
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1551
    iget-object v2, p0, Lcom/sonymobile/systemui/uicomponents/Component;->mChildren:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sonymobile/systemui/uicomponents/Component;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1552
    .local v1, "nbrChildren":I
    :goto_0
    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_2

    .line 1553
    iget-object v2, p0, Lcom/sonymobile/systemui/uicomponents/Component;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/systemui/uicomponents/Component;

    invoke-virtual {v2, p1}, Lcom/sonymobile/systemui/uicomponents/Component;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1554
    const/4 v2, 0x1

    .line 1557
    :goto_2
    return v2

    .line 1551
    .end local v0    # "i":I
    .end local v1    # "nbrChildren":I
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 1552
    .restart local v0    # "i":I
    .restart local v1    # "nbrChildren":I
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 1557
    :cond_2
    invoke-virtual {p0, p1}, Lcom/sonymobile/systemui/uicomponents/Component;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_2
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v0, 0x0

    .line 1566
    invoke-virtual {p0, p1, v0, v0}, Lcom/sonymobile/systemui/uicomponents/Component;->draw(Landroid/graphics/Canvas;FF)V

    .line 1567
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;FF)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    const/4 v4, 0x2

    .line 1581
    iget-boolean v0, p0, Lcom/sonymobile/systemui/uicomponents/Component;->mVisible:Z

    if-eqz v0, :cond_5

    .line 1582
    invoke-virtual {p0}, Lcom/sonymobile/systemui/uicomponents/Component;->getWidth()F

    move-result v9

    .line 1583
    .local v9, "width":F
    invoke-virtual {p0}, Lcom/sonymobile/systemui/uicomponents/Component;->getHeight()F

    move-result v6

    .line 1584
    .local v6, "height":F
    iget v0, p0, Lcom/sonymobile/systemui/uicomponents/Component;->mX:F

    add-float/2addr v0, p2

    iget v3, p0, Lcom/sonymobile/systemui/uicomponents/Component;->mPivotX:F

    mul-float/2addr v3, v9

    sub-float v7, v0, v3

    .line 1585
    .local v7, "scrX":F
    iget v0, p0, Lcom/sonymobile/systemui/uicomponents/Component;->mY:F

    add-float/2addr v0, p3

    iget v3, p0, Lcom/sonymobile/systemui/uicomponents/Component;->mPivotY:F

    mul-float/2addr v3, v6

    sub-float v8, v0, v3

    .line 1586
    .local v8, "scrY":F
    float-to-int v0, v7

    iput v0, p0, Lcom/sonymobile/systemui/uicomponents/Component;->mScreenX:I

    .line 1587
    float-to-int v0, v8

    iput v0, p0, Lcom/sonymobile/systemui/uicomponents/Component;->mScreenY:I

    .line 1590
    iget v0, p0, Lcom/sonymobile/systemui/uicomponents/Component;->mClipMode:I

    if-eqz v0, :cond_1

    .line 1591
    iget-object v0, p0, Lcom/sonymobile/systemui/uicomponents/Component;->mClip:Landroid/graphics/RectF;

    if-nez v0, :cond_0

    .line 1592
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/systemui/uicomponents/Component;->mClip:Landroid/graphics/RectF;

    .line 1595
    :cond_0
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->save(I)I

    .line 1596
    iget v0, p0, Lcom/sonymobile/systemui/uicomponents/Component;->mClipMode:I

    const/4 v3, 0x1

    if-ne v0, v3, :cond_6

    .line 1598
    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v0

    add-float/2addr v0, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v3

    add-float/2addr v3, v8

    invoke-virtual {p1, v7, v8, v0, v3}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 1608
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sonymobile/systemui/uicomponents/Component;->mPadding:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    add-float v1, v7, v0

    .line 1609
    .local v1, "left":F
    iget-object v0, p0, Lcom/sonymobile/systemui/uicomponents/Component;->mPadding:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    add-float v2, v8, v0

    .line 1610
    .local v2, "top":F
    iget-object v0, p0, Lcom/sonymobile/systemui/uicomponents/Component;->mBackgroundPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_2

    .line 1613
    add-float v3, v1, v9

    add-float v4, v2, v6

    iget-object v5, p0, Lcom/sonymobile/systemui/uicomponents/Component;->mBackgroundPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 1615
    :cond_2
    iget-object v0, p0, Lcom/sonymobile/systemui/uicomponents/Component;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    if-eqz v0, :cond_3

    .line 1617
    invoke-virtual {p0, p1, v1, v2}, Lcom/sonymobile/systemui/uicomponents/Component;->onDraw(Landroid/graphics/Canvas;FF)V

    .line 1620
    :cond_3
    iget-object v0, p0, Lcom/sonymobile/systemui/uicomponents/Component;->mChildren:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sonymobile/systemui/uicomponents/Component;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_4

    .line 1622
    iget-boolean v0, p0, Lcom/sonymobile/systemui/uicomponents/Component;->mChildOrderingConsidered:Z

    if-eqz v0, :cond_8

    .line 1623
    iget v0, p0, Lcom/sonymobile/systemui/uicomponents/Component;->mX:F

    add-float/2addr v0, p2

    iget v3, p0, Lcom/sonymobile/systemui/uicomponents/Component;->mY:F

    add-float/2addr v3, p3

    invoke-virtual {p0, p1, v0, v3}, Lcom/sonymobile/systemui/uicomponents/Component;->drawChildrenSorted(Landroid/graphics/Canvas;FF)V

    .line 1629
    :cond_4
    :goto_1
    iget v0, p0, Lcom/sonymobile/systemui/uicomponents/Component;->mClipMode:I

    if-eqz v0, :cond_5

    .line 1631
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 1634
    .end local v1    # "left":F
    .end local v2    # "top":F
    .end local v6    # "height":F
    .end local v7    # "scrX":F
    .end local v8    # "scrY":F
    .end local v9    # "width":F
    :cond_5
    return-void

    .line 1599
    .restart local v6    # "height":F
    .restart local v7    # "scrX":F
    .restart local v8    # "scrY":F
    .restart local v9    # "width":F
    :cond_6
    iget v0, p0, Lcom/sonymobile/systemui/uicomponents/Component;->mClipMode:I

    if-ne v0, v4, :cond_7

    .line 1601
    iget-object v0, p0, Lcom/sonymobile/systemui/uicomponents/Component;->mClip:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, v7

    iget-object v3, p0, Lcom/sonymobile/systemui/uicomponents/Component;->mClip:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, v8

    iget-object v4, p0, Lcom/sonymobile/systemui/uicomponents/Component;->mClip:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    add-float/2addr v4, v7

    iget-object v5, p0, Lcom/sonymobile/systemui/uicomponents/Component;->mClip:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v5, v8

    invoke-virtual {p1, v0, v3, v4, v5}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    goto :goto_0

    .line 1605
    :cond_7
    iget-object v0, p0, Lcom/sonymobile/systemui/uicomponents/Component;->mClip:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v3, p0, Lcom/sonymobile/systemui/uicomponents/Component;->mClip:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/sonymobile/systemui/uicomponents/Component;->mClip:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    iget-object v5, p0, Lcom/sonymobile/systemui/uicomponents/Component;->mClip:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p1, v0, v3, v4, v5}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    goto :goto_0

    .line 1625
    .restart local v1    # "left":F
    .restart local v2    # "top":F
    :cond_8
    iget v0, p0, Lcom/sonymobile/systemui/uicomponents/Component;->mX:F

    add-float/2addr v0, p2

    iget v3, p0, Lcom/sonymobile/systemui/uicomponents/Component;->mY:F

    add-float/2addr v3, p3

    invoke-virtual {p0, p1, v0, v3}, Lcom/sonymobile/systemui/uicomponents/Component;->drawChildren(Landroid/graphics/Canvas;FF)V

    goto :goto_1
.end method

.method protected drawChildren(Landroid/graphics/Canvas;FF)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "parentX"    # F
    .param p3, "parentY"    # F

    .prologue
    .line 1637
    iget-object v0, p0, Lcom/sonymobile/systemui/uicomponents/Component;->mChildren:Ljava/util/ArrayList;

    .line 1638
    .local v0, "children":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/systemui/uicomponents/Component;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1639
    .local v2, "nbrChildren":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 1640
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonymobile/systemui/uicomponents/Component;

    invoke-virtual {v3, p1, p2, p3}, Lcom/sonymobile/systemui/uicomponents/Component;->draw(Landroid/graphics/Canvas;FF)V

    .line 1639
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1642
    :cond_0
    return-void
.end method

.method protected drawChildrenSorted(Landroid/graphics/Canvas;FF)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "parentX"    # F
    .param p3, "parentY"    # F

    .prologue
    .line 1645
    invoke-virtual {p0}, Lcom/sonymobile/systemui/uicomponents/Component;->sortChildren()V

    .line 1646
    iget-object v3, p0, Lcom/sonymobile/systemui/uicomponents/Component;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1647
    .local v1, "nbrChildren":I
    iget-object v2, p0, Lcom/sonymobile/systemui/uicomponents/Component;->mSorted:[Lcom/sonymobile/systemui/uicomponents/Component;

    .line 1648
    .local v2, "sorted":[Lcom/sonymobile/systemui/uicomponents/Component;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 1649
    aget-object v3, v2, v0

    invoke-virtual {v3, p1, p2, p3}, Lcom/sonymobile/systemui/uicomponents/Component;->draw(Landroid/graphics/Canvas;FF)V

    .line 1648
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1653
    :cond_0
    iget-object v3, p0, Lcom/sonymobile/systemui/uicomponents/Component;->mSorted:[Lcom/sonymobile/systemui/uicomponents/Component;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1654
    return-void
.end method

.method public findById(Ljava/lang/String;)Lcom/sonymobile/systemui/uicomponents/Component;
    .locals 6
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 195
    if-nez p1, :cond_1

    move-object v0, v5

    .line 213
    :cond_0
    :goto_0
    return-object v0

    .line 199
    :cond_1
    iget-object v4, p0, Lcom/sonymobile/systemui/uicomponents/Component;->mChildren:Ljava/util/ArrayList;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/sonymobile/systemui/uicomponents/Component;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 200
    .local v2, "nbrChildren":I
    :goto_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, v2, :cond_3

    .line 201
    iget-object v4, p0, Lcom/sonymobile/systemui/uicomponents/Component;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/systemui/uicomponents/Component;

    .line 202
    .local v0, "child":Lcom/sonymobile/systemui/uicomponents/Component;
    iget-object v4, v0, Lcom/sonymobile/systemui/uicomponents/Component;->mId:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 200
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 199
    .end local v0    # "child":Lcom/sonymobile/systemui/uicomponents/Component;
    .end local v1    # "i":I
    .end local v2    # "nbrChildren":I
    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .line 207
    .restart local v1    # "i":I
    .restart local v2    # "nbrChildren":I
    :cond_3
    const/4 v1, 0x0

    :goto_3
    if-ge v1, v2, :cond_5

    .line 208
    iget-object v4, p0, Lcom/sonymobile/systemui/uicomponents/Component;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sonymobile/systemui/uicomponents/Component;

    invoke-virtual {v4, p1}, Lcom/sonymobile/systemui/uicomponents/Component;->findById(Ljava/lang/String;)Lcom/sonymobile/systemui/uicomponents/Component;

    move-result-object v3

    .line 209
    .local v3, "result":Lcom/sonymobile/systemui/uicomponents/Component;
    if-eqz v3, :cond_4

    move-object v0, v3

    .line 210
    goto :goto_0

    .line 207
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .end local v3    # "result":Lcom/sonymobile/systemui/uicomponents/Component;
    :cond_5
    move-object v0, v5

    .line 213
    goto :goto_0
.end method

.method public getChild(I)Lcom/sonymobile/systemui/uicomponents/Component;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 851
    iget-object v0, p0, Lcom/sonymobile/systemui/uicomponents/Component;->mChildren:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 852
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Component has no children."

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 854
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/systemui/uicomponents/Component;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/systemui/uicomponents/Component;

    return-object v0
.end method

.method public getHeight()F
    .locals 2

    .prologue
    .line 1744
    iget v0, p0, Lcom/sonymobile/systemui/uicomponents/Component;->mHeight:F

    iget-object v1, p0, Lcom/sonymobile/systemui/uicomponents/Component;->mPadding:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/sonymobile/systemui/uicomponents/Component;->mPadding:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v0, v1

    return v0
.end method

.method public getInnerHeight()F
    .locals 2

    .prologue
    .line 1395
    invoke-virtual {p0}, Lcom/sonymobile/systemui/uicomponents/Component;->getHeight()F

    move-result v0

    iget-object v1, p0, Lcom/sonymobile/systemui/uicomponents/Component;->mPadding:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/sonymobile/systemui/uicomponents/Component;->mPadding:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/sonymobile/systemui/uicomponents/Component;->mMargin:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/sonymobile/systemui/uicomponents/Component;->mMargin:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, v1

    return v0
.end method

.method public getInnerWidth()F
    .locals 2

    .prologue
    .line 1384
    invoke-virtual {p0}, Lcom/sonymobile/systemui/uicomponents/Component;->getWidth()F

    move-result v0

    iget-object v1, p0, Lcom/sonymobile/systemui/uicomponents/Component;->mPadding:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/sonymobile/systemui/uicomponents/Component;->mPadding:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/sonymobile/systemui/uicomponents/Component;->mMargin:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/sonymobile/systemui/uicomponents/Component;->mMargin:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v1

    return v0
.end method

.method public getInnerX(F)F
    .locals 3
    .param p1, "point"    # F

    .prologue
    .line 1025
    iget v0, p0, Lcom/sonymobile/systemui/uicomponents/Component;->mX:F

    iget v1, p0, Lcom/sonymobile/systemui/uicomponents/Component;->mPivotX:F

    invoke-virtual {p0}, Lcom/sonymobile/systemui/uicomponents/Component;->getWidth()F

    move-result v2

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/sonymobile/systemui/uicomponents/Component;->mPadding:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/sonymobile/systemui/uicomponents/Component;->mMargin:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/sonymobile/systemui/uicomponents/Component;->getInnerWidth()F

    move-result v1

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    return v0
.end method

.method public getInnerY(F)F
    .locals 3
    .param p1, "point"    # F

    .prologue
    .line 1037
    iget v0, p0, Lcom/sonymobile/systemui/uicomponents/Component;->mY:F

    iget v1, p0, Lcom/sonymobile/systemui/uicomponents/Component;->mPivotY:F

    invoke-virtual {p0}, Lcom/sonymobile/systemui/uicomponents/Component;->getHeight()F

    move-result v2

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/sonymobile/systemui/uicomponents/Component;->mPadding:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/sonymobile/systemui/uicomponents/Component;->mMargin:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    add-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/sonymobile/systemui/uicomponents/Component;->getInnerHeight()F

    move-result v1

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    return v0
.end method

.method public getOriginX()F
    .locals 3

    .prologue
    .line 1050
    const/4 v1, 0x0

    .line 1051
    .local v1, "x":F
    iget-object v0, p0, Lcom/sonymobile/systemui/uicomponents/Component;->mParent:Lcom/sonymobile/systemui/uicomponents/Component;

    .line 1052
    .local v0, "c":Lcom/sonymobile/systemui/uicomponents/Component;
    :goto_0
    if-eqz v0, :cond_0

    .line 1053
    iget v2, v0, Lcom/sonymobile/systemui/uicomponents/Component;->mX:F

    add-float/2addr v1, v2

    .line 1054
    iget-object v0, v0, Lcom/sonymobile/systemui/uicomponents/Component;->mParent:Lcom/sonymobile/systemui/uicomponents/Component;

    goto :goto_0

    .line 1056
    :cond_0
    return v1
.end method

.method public getOriginY()F
    .locals 3

    .prologue
    .line 1069
    const/4 v1, 0x0

    .line 1070
    .local v1, "y":F
    iget-object v0, p0, Lcom/sonymobile/systemui/uicomponents/Component;->mParent:Lcom/sonymobile/systemui/uicomponents/Component;

    .line 1071
    .local v0, "c":Lcom/sonymobile/systemui/uicomponents/Component;
    :goto_0
    if-eqz v0, :cond_0

    .line 1072
    iget v2, v0, Lcom/sonymobile/systemui/uicomponents/Component;->mY:F

    add-float/2addr v1, v2

    .line 1073
    iget-object v0, v0, Lcom/sonymobile/systemui/uicomponents/Component;->mParent:Lcom/sonymobile/systemui/uicomponents/Component;

    goto :goto_0

    .line 1075
    :cond_0
    return v1
.end method

.method public getWidth()F
    .locals 2

    .prologue
    .line 1733
    iget v0, p0, Lcom/sonymobile/systemui/uicomponents/Component;->mWidth:F

    iget-object v1, p0, Lcom/sonymobile/systemui/uicomponents/Component;->mPadding:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/sonymobile/systemui/uicomponents/Component;->mPadding:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    add-float/2addr v0, v1

    return v0
.end method

.method public getX(F)F
    .locals 3
    .param p1, "point"    # F

    .prologue
    .line 1001
    iget v0, p0, Lcom/sonymobile/systemui/uicomponents/Component;->mX:F

    iget v1, p0, Lcom/sonymobile/systemui/uicomponents/Component;->mPivotX:F

    sub-float v1, p1, v1

    invoke-virtual {p0}, Lcom/sonymobile/systemui/uicomponents/Component;->getWidth()F

    move-result v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public getY(F)F
    .locals 3
    .param p1, "point"    # F

    .prologue
    .line 1013
    iget v0, p0, Lcom/sonymobile/systemui/uicomponents/Component;->mY:F

    iget v1, p0, Lcom/sonymobile/systemui/uicomponents/Component;->mPivotY:F

    sub-float v1, p1, v1

    invoke-virtual {p0}, Lcom/sonymobile/systemui/uicomponents/Component;->getHeight()F

    move-result v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public invalidate()V
    .locals 1

    .prologue
    .line 1657
    iget-object v0, p0, Lcom/sonymobile/systemui/uicomponents/Component;->mParent:Lcom/sonymobile/systemui/uicomponents/Component;

    if-eqz v0, :cond_0

    .line 1658
    iget-object v0, p0, Lcom/sonymobile/systemui/uicomponents/Component;->mParent:Lcom/sonymobile/systemui/uicomponents/Component;

    invoke-virtual {v0}, Lcom/sonymobile/systemui/uicomponents/Component;->invalidate()V

    .line 1660
    :cond_0
    return-void
.end method

.method public layout(Lcom/sonymobile/systemui/uicomponents/Component;FFFF)V
    .locals 7
    .param p1, "basedOn"    # Lcom/sonymobile/systemui/uicomponents/Component;
    .param p2, "basedOnPivotX"    # F
    .param p3, "basedOnPivotY"    # F
    .param p4, "myPivotX"    # F
    .param p5, "myPivotY"    # F

    .prologue
    .line 466
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/sonymobile/systemui/uicomponents/Component;->layout(Lcom/sonymobile/systemui/uicomponents/Component;FFFFZ)V

    .line 467
    return-void
.end method

.method protected layout(Lcom/sonymobile/systemui/uicomponents/Component;FFFFZ)V
    .locals 8
    .param p1, "basedOn"    # Lcom/sonymobile/systemui/uicomponents/Component;
    .param p2, "basedOnPivotX"    # F
    .param p3, "basedOnPivotY"    # F
    .param p4, "myPivotX"    # F
    .param p5, "myPivotY"    # F
    .param p6, "inside"    # Z

    .prologue
    const/4 v7, 0x1

    .line 519
    iget-object v4, p0, Lcom/sonymobile/systemui/uicomponents/Component;->mParent:Lcom/sonymobile/systemui/uicomponents/Component;

    if-nez v4, :cond_0

    .line 520
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Component must be added to scene before layout."

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 523
    :cond_0
    iget v2, p0, Lcom/sonymobile/systemui/uicomponents/Component;->mX:F

    .line 524
    .local v2, "newX":F
    iget v3, p0, Lcom/sonymobile/systemui/uicomponents/Component;->mY:F

    .line 525
    .local v3, "newY":F
    cmpl-float v4, p2, v7

    if-eqz v4, :cond_1

    cmpl-float v4, p4, v7

    if-eqz v4, :cond_1

    .line 526
    invoke-virtual {p1}, Lcom/sonymobile/systemui/uicomponents/Component;->getOriginX()F

    move-result v5

    if-eqz p6, :cond_3

    invoke-virtual {p1, p2}, Lcom/sonymobile/systemui/uicomponents/Component;->getInnerX(F)F

    move-result v4

    :goto_0
    add-float v0, v5, v4

    .line 531
    .local v0, "basedOnX":F
    invoke-virtual {p0}, Lcom/sonymobile/systemui/uicomponents/Component;->getOriginX()F

    move-result v4

    sub-float v4, v0, v4

    iget v5, p0, Lcom/sonymobile/systemui/uicomponents/Component;->mPivotX:F

    sub-float v5, p4, v5

    invoke-virtual {p0}, Lcom/sonymobile/systemui/uicomponents/Component;->getWidth()F

    move-result v6

    mul-float/2addr v5, v6

    sub-float v2, v4, v5

    .line 533
    .end local v0    # "basedOnX":F
    :cond_1
    cmpl-float v4, p3, v7

    if-eqz v4, :cond_2

    cmpl-float v4, p5, v7

    if-eqz v4, :cond_2

    .line 534
    invoke-virtual {p1}, Lcom/sonymobile/systemui/uicomponents/Component;->getOriginY()F

    move-result v5

    if-eqz p6, :cond_4

    invoke-virtual {p1, p3}, Lcom/sonymobile/systemui/uicomponents/Component;->getInnerY(F)F

    move-result v4

    :goto_1
    add-float v1, v5, v4

    .line 539
    .local v1, "basedOnY":F
    invoke-virtual {p0}, Lcom/sonymobile/systemui/uicomponents/Component;->getOriginY()F

    move-result v4

    sub-float v4, v1, v4

    iget v5, p0, Lcom/sonymobile/systemui/uicomponents/Component;->mPivotY:F

    sub-float v5, p5, v5

    invoke-virtual {p0}, Lcom/sonymobile/systemui/uicomponents/Component;->getHeight()F

    move-result v6

    mul-float/2addr v5, v6

    sub-float v3, v4, v5

    .line 541
    .end local v1    # "basedOnY":F
    :cond_2
    invoke-virtual {p0, v2, v3}, Lcom/sonymobile/systemui/uicomponents/Component;->setPosition(FF)V

    .line 542
    return-void

    .line 526
    :cond_3
    invoke-virtual {p1, p2}, Lcom/sonymobile/systemui/uicomponents/Component;->getX(F)F

    move-result v4

    goto :goto_0

    .line 534
    :cond_4
    invoke-virtual {p1, p3}, Lcom/sonymobile/systemui/uicomponents/Component;->getY(F)F

    move-result v4

    goto :goto_1
.end method

.method public onAddedTo(Lcom/sonymobile/systemui/uicomponents/Component;)V
    .locals 0
    .param p1, "parent"    # Lcom/sonymobile/systemui/uicomponents/Component;

    .prologue
    .line 1712
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;FF)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    .line 1757
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1700
    const/4 v0, 0x0

    return v0
.end method

.method public removeChild(Lcom/sonymobile/systemui/uicomponents/Component;)Lcom/sonymobile/systemui/uicomponents/Component;
    .locals 1
    .param p1, "child"    # Lcom/sonymobile/systemui/uicomponents/Component;

    .prologue
    .line 739
    iget-object v0, p0, Lcom/sonymobile/systemui/uicomponents/Component;->mChildren:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/systemui/uicomponents/Component;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 742
    .end local p1    # "child":Lcom/sonymobile/systemui/uicomponents/Component;
    :goto_0
    return-object p1

    .restart local p1    # "child":Lcom/sonymobile/systemui/uicomponents/Component;
    :cond_0
    const/4 p1, 0x0

    goto :goto_0
.end method

.method public removeChild(Ljava/lang/String;)Lcom/sonymobile/systemui/uicomponents/Component;
    .locals 2
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 752
    iget-object v1, p0, Lcom/sonymobile/systemui/uicomponents/Component;->mChildren:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 753
    invoke-virtual {p0, p1}, Lcom/sonymobile/systemui/uicomponents/Component;->findById(Ljava/lang/String;)Lcom/sonymobile/systemui/uicomponents/Component;

    move-result-object v0

    .line 754
    .local v0, "child":Lcom/sonymobile/systemui/uicomponents/Component;
    if-eqz v0, :cond_0

    .line 755
    invoke-virtual {p0, v0}, Lcom/sonymobile/systemui/uicomponents/Component;->removeChild(Lcom/sonymobile/systemui/uicomponents/Component;)Lcom/sonymobile/systemui/uicomponents/Component;

    move-result-object v1

    .line 758
    .end local v0    # "child":Lcom/sonymobile/systemui/uicomponents/Component;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setBackgroundColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 960
    if-nez p1, :cond_0

    .line 961
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/systemui/uicomponents/Component;->mBackgroundPaint:Landroid/graphics/Paint;

    .line 968
    :goto_0
    return-void

    .line 963
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/systemui/uicomponents/Component;->mBackgroundPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_1

    .line 964
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/systemui/uicomponents/Component;->mBackgroundPaint:Landroid/graphics/Paint;

    .line 966
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/systemui/uicomponents/Component;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 176
    iput-object p1, p0, Lcom/sonymobile/systemui/uicomponents/Component;->mId:Ljava/lang/String;

    .line 177
    return-void
.end method

.method public setMargin(FFFF)V
    .locals 1
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F

    .prologue
    .line 1361
    iget-object v0, p0, Lcom/sonymobile/systemui/uicomponents/Component;->mMargin:Landroid/graphics/RectF;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1362
    return-void
.end method

.method public setPivotPoint(FF)V
    .locals 0
    .param p1, "pivotX"    # F
    .param p2, "pivotY"    # F

    .prologue
    .line 1252
    iput p1, p0, Lcom/sonymobile/systemui/uicomponents/Component;->mPivotX:F

    .line 1253
    iput p2, p0, Lcom/sonymobile/systemui/uicomponents/Component;->mPivotY:F

    .line 1254
    return-void
.end method

.method public setPosition(FF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 333
    iput p1, p0, Lcom/sonymobile/systemui/uicomponents/Component;->mX:F

    .line 334
    iput p2, p0, Lcom/sonymobile/systemui/uicomponents/Component;->mY:F

    .line 335
    return-void
.end method

.method public setSize(FF)V
    .locals 0
    .param p1, "width"    # F
    .param p2, "height"    # F

    .prologue
    .line 372
    iput p1, p0, Lcom/sonymobile/systemui/uicomponents/Component;->mWidth:F

    .line 373
    iput p2, p0, Lcom/sonymobile/systemui/uicomponents/Component;->mHeight:F

    .line 374
    return-void
.end method

.method public setVisible(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 901
    iput-boolean p1, p0, Lcom/sonymobile/systemui/uicomponents/Component;->mVisible:Z

    .line 902
    return-void
.end method

.method protected sortChildren()V
    .locals 9

    .prologue
    .line 1663
    iget-object v1, p0, Lcom/sonymobile/systemui/uicomponents/Component;->mChildren:Ljava/util/ArrayList;

    .line 1664
    .local v1, "children":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/systemui/uicomponents/Component;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 1666
    .local v5, "nbrChildren":I
    iget-object v7, p0, Lcom/sonymobile/systemui/uicomponents/Component;->mSorted:[Lcom/sonymobile/systemui/uicomponents/Component;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/sonymobile/systemui/uicomponents/Component;->mSorted:[Lcom/sonymobile/systemui/uicomponents/Component;

    array-length v7, v7

    if-ge v7, v5, :cond_1

    .line 1667
    :cond_0
    new-array v7, v5, [Lcom/sonymobile/systemui/uicomponents/Component;

    iput-object v7, p0, Lcom/sonymobile/systemui/uicomponents/Component;->mSorted:[Lcom/sonymobile/systemui/uicomponents/Component;

    .line 1670
    :cond_1
    iget-object v7, p0, Lcom/sonymobile/systemui/uicomponents/Component;->mChildren:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/sonymobile/systemui/uicomponents/Component;->mSorted:[Lcom/sonymobile/systemui/uicomponents/Component;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Lcom/sonymobile/systemui/uicomponents/Component;

    iput-object v7, p0, Lcom/sonymobile/systemui/uicomponents/Component;->mSorted:[Lcom/sonymobile/systemui/uicomponents/Component;

    .line 1672
    iget-object v6, p0, Lcom/sonymobile/systemui/uicomponents/Component;->mSorted:[Lcom/sonymobile/systemui/uicomponents/Component;

    .line 1673
    .local v6, "sorted":[Lcom/sonymobile/systemui/uicomponents/Component;
    const/4 v3, 0x1

    .local v3, "index":I
    :goto_0
    if-ge v3, v5, :cond_5

    .line 1674
    aget-object v0, v6, v3

    .line 1675
    .local v0, "child":Lcom/sonymobile/systemui/uicomponents/Component;
    iget v4, v0, Lcom/sonymobile/systemui/uicomponents/Component;->mOrder:F

    .line 1676
    .local v4, "myOrder":F
    add-int/lit8 v7, v3, -0x1

    aget-object v7, v6, v7

    iget v7, v7, Lcom/sonymobile/systemui/uicomponents/Component;->mOrder:F

    cmpg-float v7, v4, v7

    if-gez v7, :cond_3

    .line 1677
    add-int/lit8 v7, v3, -0x1

    aget-object v7, v6, v7

    aput-object v7, v6, v3

    .line 1679
    add-int/lit8 v2, v3, -0x2

    .local v2, "compare":I
    :goto_1
    if-ltz v2, :cond_2

    .line 1680
    aget-object v7, v6, v2

    iget v7, v7, Lcom/sonymobile/systemui/uicomponents/Component;->mOrder:F

    cmpl-float v7, v4, v7

    if-ltz v7, :cond_4

    .line 1685
    :cond_2
    add-int/lit8 v7, v2, 0x1

    aput-object v0, v6, v7

    .line 1673
    .end local v2    # "compare":I
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1683
    .restart local v2    # "compare":I
    :cond_4
    add-int/lit8 v7, v2, 0x1

    aget-object v8, v6, v2

    aput-object v8, v6, v7

    .line 1679
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 1688
    .end local v0    # "child":Lcom/sonymobile/systemui/uicomponents/Component;
    .end local v2    # "compare":I
    .end local v4    # "myOrder":F
    :cond_5
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1870
    iget-object v1, p0, Lcom/sonymobile/systemui/uicomponents/Component;->mChildren:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sonymobile/systemui/uicomponents/Component;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1871
    .local v0, "nbrChildren":I
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sonymobile/systemui/uicomponents/Component;->mId:Ljava/lang/String;

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sonymobile/systemui/uicomponents/Component;->mId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ") "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " [x="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sonymobile/systemui/uicomponents/Component;->mX:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", y="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sonymobile/systemui/uicomponents/Component;->mY:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", w="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sonymobile/systemui/uicomponents/Component;->mWidth:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", h="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sonymobile/systemui/uicomponents/Component;->mHeight:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", visible="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sonymobile/systemui/uicomponents/Component;->mVisible:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", order="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sonymobile/systemui/uicomponents/Component;->mOrder:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", children="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1870
    .end local v0    # "nbrChildren":I
    :cond_0
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 1871
    .restart local v0    # "nbrChildren":I
    :cond_1
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method
