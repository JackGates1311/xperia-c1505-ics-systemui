.class public Lcom/sonymobile/systemui/uicomponents/Image;
.super Lcom/sonymobile/systemui/uicomponents/Component;
.source "Image.java"


# instance fields
.field protected mBitmap:Landroid/graphics/Bitmap;

.field protected final mMatrix:Landroid/graphics/Matrix;

.field protected mScalingX:F

.field protected mScalingY:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 31
    invoke-direct {p0, v0, v0}, Lcom/sonymobile/systemui/uicomponents/Image;-><init>(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "image"    # Landroid/graphics/Bitmap;

    .prologue
    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/sonymobile/systemui/uicomponents/Image;-><init>(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sonymobile/systemui/uicomponents/Image;-><init>(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "image"    # Landroid/graphics/Bitmap;

    .prologue
    const/high16 v0, 0x3f800000    # 1.0f

    .line 53
    invoke-direct {p0, p1}, Lcom/sonymobile/systemui/uicomponents/Component;-><init>(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p0, p2}, Lcom/sonymobile/systemui/uicomponents/Image;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 55
    invoke-virtual {p0, v0, v0}, Lcom/sonymobile/systemui/uicomponents/Image;->setScaling(FF)V

    .line 56
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/systemui/uicomponents/Image;->mMatrix:Landroid/graphics/Matrix;

    .line 57
    return-void
.end method


# virtual methods
.method public getHeight()F
    .locals 2

    .prologue
    .line 176
    invoke-super {p0}, Lcom/sonymobile/systemui/uicomponents/Component;->getHeight()F

    move-result v0

    iget v1, p0, Lcom/sonymobile/systemui/uicomponents/Image;->mScalingY:F

    mul-float/2addr v0, v1

    return v0
.end method

.method public getWidth()F
    .locals 2

    .prologue
    .line 171
    invoke-super {p0}, Lcom/sonymobile/systemui/uicomponents/Component;->getWidth()F

    move-result v0

    iget v1, p0, Lcom/sonymobile/systemui/uicomponents/Image;->mScalingX:F

    mul-float/2addr v0, v1

    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;FF)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 181
    iget-object v0, p0, Lcom/sonymobile/systemui/uicomponents/Image;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 182
    iget v0, p0, Lcom/sonymobile/systemui/uicomponents/Image;->mScalingX:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/sonymobile/systemui/uicomponents/Image;->mScalingY:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/systemui/uicomponents/Image;->mMatrix:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/sonymobile/systemui/uicomponents/Image;->mScalingX:F

    iget v2, p0, Lcom/sonymobile/systemui/uicomponents/Image;->mScalingY:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 184
    iget-object v0, p0, Lcom/sonymobile/systemui/uicomponents/Image;->mMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/sonymobile/systemui/uicomponents/Component;->mPadding:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    sub-float v1, p2, v1

    iget-object v2, p0, Lcom/sonymobile/systemui/uicomponents/Component;->mPadding:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    sub-float v2, p3, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 185
    iget-object v0, p0, Lcom/sonymobile/systemui/uicomponents/Image;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/sonymobile/systemui/uicomponents/Image;->mMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/sonymobile/systemui/uicomponents/Component;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 190
    :cond_1
    :goto_0
    return-void

    .line 187
    :cond_2
    iget-object v0, p0, Lcom/sonymobile/systemui/uicomponents/Image;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/sonymobile/systemui/uicomponents/Component;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p2, p3, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v1, 0x0

    .line 66
    if-eqz p1, :cond_1

    .line 67
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/sonymobile/systemui/uicomponents/Image;->setSize(FF)V

    .line 73
    :cond_0
    :goto_0
    iput-object p1, p0, Lcom/sonymobile/systemui/uicomponents/Image;->mBitmap:Landroid/graphics/Bitmap;

    .line 74
    return-void

    .line 69
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/systemui/uicomponents/Image;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 70
    invoke-virtual {p0, v1, v1}, Lcom/sonymobile/systemui/uicomponents/Image;->setSize(FF)V

    goto :goto_0
.end method

.method public setScaling(FF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 134
    iput p1, p0, Lcom/sonymobile/systemui/uicomponents/Image;->mScalingX:F

    .line 135
    iput p2, p0, Lcom/sonymobile/systemui/uicomponents/Image;->mScalingY:F

    .line 136
    return-void
.end method
