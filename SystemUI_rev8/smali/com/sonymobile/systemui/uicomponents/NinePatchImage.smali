.class public Lcom/sonymobile/systemui/uicomponents/NinePatchImage;
.super Lcom/sonymobile/systemui/uicomponents/Image;
.source "NinePatchImage.java"


# instance fields
.field protected mNinePatch:Landroid/graphics/NinePatch;

.field protected mNinePatchPadding:Landroid/graphics/Rect;

.field protected mRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 48
    invoke-direct {p0, v0, v0, v0}, Lcom/sonymobile/systemui/uicomponents/NinePatchImage;-><init>(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Rect;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;I)V
    .locals 1
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "resId"    # I

    .prologue
    .line 64
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/sonymobile/systemui/uicomponents/NinePatchImage;-><init>(Ljava/lang/String;Landroid/content/res/Resources;I)V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v0, 0x0

    .line 56
    invoke-direct {p0, v0, p1, v0}, Lcom/sonymobile/systemui/uicomponents/NinePatchImage;-><init>(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Rect;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 52
    invoke-direct {p0, p1, v0, v0}, Lcom/sonymobile/systemui/uicomponents/NinePatchImage;-><init>(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Rect;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/res/Resources;I)V
    .locals 3
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "resId"    # I

    .prologue
    .line 68
    const/4 v2, 0x0

    invoke-direct {p0, p1, v2}, Lcom/sonymobile/systemui/uicomponents/Image;-><init>(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 69
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 70
    .local v1, "ninePatchPadding":Landroid/graphics/Rect;
    invoke-static {p2, p3, v1}, Lcom/sonymobile/systemui/uicomponents/NinePatchImage;->decodeNinePatch(Landroid/content/res/Resources;ILandroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 71
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p0, p1, v0, v1}, Lcom/sonymobile/systemui/uicomponents/NinePatchImage;->init(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Rect;)V

    .line 72
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 60
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sonymobile/systemui/uicomponents/NinePatchImage;-><init>(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Rect;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "ninePatchPadding"    # Landroid/graphics/Rect;

    .prologue
    .line 75
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sonymobile/systemui/uicomponents/Image;-><init>(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 76
    invoke-virtual {p0, p1, p2, p3}, Lcom/sonymobile/systemui/uicomponents/NinePatchImage;->init(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Rect;)V

    .line 77
    return-void
.end method

.method public static decodeNinePatch(Landroid/content/res/Resources;ILandroid/graphics/Rect;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "resId"    # I
    .param p2, "outPadding"    # Landroid/graphics/Rect;

    .prologue
    .line 140
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/sonymobile/systemui/uicomponents/NinePatchImage;->decodeNinePatch(Landroid/content/res/Resources;ILandroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static decodeNinePatch(Landroid/content/res/Resources;ILandroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 4
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "resId"    # I
    .param p2, "outPadding"    # Landroid/graphics/Rect;
    .param p3, "options"    # Landroid/graphics/BitmapFactory$Options;

    .prologue
    .line 145
    const/4 v0, 0x0

    .line 146
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 147
    .local v2, "value":Landroid/util/TypedValue;
    invoke-virtual {p0, p1, v2}, Landroid/content/res/Resources;->openRawResource(ILandroid/util/TypedValue;)Ljava/io/InputStream;

    move-result-object v1

    .line 148
    .local v1, "in":Ljava/io/InputStream;
    if-nez p2, :cond_0

    .line 149
    new-instance p2, Landroid/graphics/Rect;

    .end local p2    # "outPadding":Landroid/graphics/Rect;
    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    .line 151
    .restart local p2    # "outPadding":Landroid/graphics/Rect;
    :cond_0
    if-nez p3, :cond_1

    .line 152
    new-instance p3, Landroid/graphics/BitmapFactory$Options;

    .end local p3    # "options":Landroid/graphics/BitmapFactory$Options;
    invoke-direct {p3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 155
    .restart local p3    # "options":Landroid/graphics/BitmapFactory$Options;
    :cond_1
    :try_start_0
    invoke-static {p0, v2, v1, p2, p3}, Landroid/graphics/BitmapFactory;->decodeResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 156
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    :goto_0
    return-object v0

    .line 157
    :catch_0
    move-exception v3

    goto :goto_0
.end method


# virtual methods
.method protected init(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "ninePatchPadding"    # Landroid/graphics/Rect;

    .prologue
    .line 80
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/systemui/uicomponents/NinePatchImage;->mRect:Landroid/graphics/Rect;

    .line 81
    if-eqz p3, :cond_1

    .line 82
    iget v0, p3, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget v1, p3, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    iget v2, p3, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    iget v3, p3, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/sonymobile/systemui/uicomponents/NinePatchImage;->setMargin(FFFF)V

    .line 84
    iput-object p3, p0, Lcom/sonymobile/systemui/uicomponents/NinePatchImage;->mNinePatchPadding:Landroid/graphics/Rect;

    .line 88
    :goto_0
    if-eqz p2, :cond_0

    .line 89
    invoke-virtual {p0, p2}, Lcom/sonymobile/systemui/uicomponents/NinePatchImage;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 90
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/sonymobile/systemui/uicomponents/NinePatchImage;->setSize(FF)V

    .line 92
    :cond_0
    return-void

    .line 86
    :cond_1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/systemui/uicomponents/NinePatchImage;->mNinePatchPadding:Landroid/graphics/Rect;

    goto :goto_0
.end method

.method public onDraw(Landroid/graphics/Canvas;FF)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    .line 132
    iget-object v0, p0, Lcom/sonymobile/systemui/uicomponents/Image;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/sonymobile/systemui/uicomponents/NinePatchImage;->mRect:Landroid/graphics/Rect;

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {p0}, Lcom/sonymobile/systemui/uicomponents/NinePatchImage;->getWidth()F

    move-result v3

    add-float/2addr v3, p2

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-virtual {p0}, Lcom/sonymobile/systemui/uicomponents/NinePatchImage;->getHeight()F

    move-result v4

    add-float/2addr v4, p3

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 135
    iget-object v0, p0, Lcom/sonymobile/systemui/uicomponents/NinePatchImage;->mNinePatch:Landroid/graphics/NinePatch;

    iget-object v1, p0, Lcom/sonymobile/systemui/uicomponents/NinePatchImage;->mRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/sonymobile/systemui/uicomponents/Component;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, v1, v2}, Landroid/graphics/NinePatch;->draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 137
    :cond_0
    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 96
    invoke-super {p0, p1}, Lcom/sonymobile/systemui/uicomponents/Image;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 97
    if-eqz p1, :cond_0

    .line 98
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v0

    .line 99
    .local v0, "ninePatchChunk":[B
    invoke-static {v0}, Landroid/graphics/NinePatch;->isNinePatchChunk([B)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 100
    new-instance v1, Landroid/graphics/NinePatch;

    iget-object v2, p0, Lcom/sonymobile/systemui/uicomponents/Image;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Landroid/graphics/NinePatch;-><init>(Landroid/graphics/Bitmap;[BLjava/lang/String;)V

    iput-object v1, p0, Lcom/sonymobile/systemui/uicomponents/NinePatchImage;->mNinePatch:Landroid/graphics/NinePatch;

    .line 105
    .end local v0    # "ninePatchChunk":[B
    :cond_0
    return-void

    .line 102
    .restart local v0    # "ninePatchChunk":[B
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Bitmap is not a nine-patch"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
