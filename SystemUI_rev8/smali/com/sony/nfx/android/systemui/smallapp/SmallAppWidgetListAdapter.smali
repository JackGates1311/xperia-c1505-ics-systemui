.class public Lcom/sony/nfx/android/systemui/smallapp/SmallAppWidgetListAdapter;
.super Landroid/widget/BaseAdapter;
.source "SmallAppWidgetListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sony/nfx/android/systemui/smallapp/SmallAppWidgetListAdapter$Item;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDimensionsFormatString:Ljava/lang/String;

.field private mEmptyText:Landroid/widget/TextView;

.field public mImgCache:Lcom/sony/nfx/android/systemui/smallapp/IconCache;

.field private mItems:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/sony/nfx/android/systemui/smallapp/SmallAppWidgetListAdapter$Item;",
            ">;"
        }
    .end annotation
.end field

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/sony/nfx/android/systemui/smallapp/IconCache;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "ic"    # Lcom/sony/nfx/android/systemui/smallapp/IconCache;

    .prologue
    const/4 v1, 0x0

    const/16 v3, 0x8

    .line 54
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 37
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppWidgetListAdapter;->mItems:Ljava/util/Vector;

    .line 44
    iput-object v1, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppWidgetListAdapter;->mImgCache:Lcom/sony/nfx/android/systemui/smallapp/IconCache;

    .line 55
    iput-object p1, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppWidgetListAdapter;->mContext:Landroid/content/Context;

    .line 56
    iput-object p2, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppWidgetListAdapter;->mView:Landroid/view/View;

    .line 58
    iget-object v0, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppWidgetListAdapter;->mView:Landroid/view/View;

    const v2, 0x7f0e0028

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppWidgetListAdapter;->mProgressBar:Landroid/widget/ProgressBar;

    .line 59
    iget-object v0, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppWidgetListAdapter;->mView:Landroid/view/View;

    const v2, 0x7f0e0029

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppWidgetListAdapter;->mEmptyText:Landroid/widget/TextView;

    .line 60
    iget-object v0, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppWidgetListAdapter;->mEmptyText:Landroid/widget/TextView;

    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 61
    iget-object v0, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppWidgetListAdapter;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 62
    iget-object v0, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppWidgetListAdapter;->mEmptyText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 63
    iput-object p3, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppWidgetListAdapter;->mImgCache:Lcom/sony/nfx/android/systemui/smallapp/IconCache;

    .line 65
    new-instance v2, Lcom/sony/nfx/android/systemui/smallapp/SmallAppWidgetListAdapter$1;

    invoke-direct {v2, p0, p1}, Lcom/sony/nfx/android/systemui/smallapp/SmallAppWidgetListAdapter$1;-><init>(Lcom/sony/nfx/android/systemui/smallapp/SmallAppWidgetListAdapter;Landroid/content/Context;)V

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/Void;

    const/4 v4, 0x0

    move-object v0, v1

    check-cast v0, Ljava/lang/Void;

    aput-object v0, v3, v4

    invoke-virtual {v2, v3}, Lcom/sony/nfx/android/systemui/smallapp/SmallAppWidgetListAdapter$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 121
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08001a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppWidgetListAdapter;->mDimensionsFormatString:Ljava/lang/String;

    .line 122
    return-void
.end method

.method static synthetic access$000(Lcom/sony/nfx/android/systemui/smallapp/SmallAppWidgetListAdapter;)Landroid/widget/ProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/sony/nfx/android/systemui/smallapp/SmallAppWidgetListAdapter;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppWidgetListAdapter;->mProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sony/nfx/android/systemui/smallapp/SmallAppWidgetListAdapter;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/sony/nfx/android/systemui/smallapp/SmallAppWidgetListAdapter;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppWidgetListAdapter;->mEmptyText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sony/nfx/android/systemui/smallapp/SmallAppWidgetListAdapter;Landroid/content/ComponentName;II)[I
    .locals 1
    .param p0, "x0"    # Lcom/sony/nfx/android/systemui/smallapp/SmallAppWidgetListAdapter;
    .param p1, "x1"    # Landroid/content/ComponentName;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3}, Lcom/sony/nfx/android/systemui/smallapp/SmallAppWidgetListAdapter;->getSpanForWidget(Landroid/content/ComponentName;II)[I

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$302(Lcom/sony/nfx/android/systemui/smallapp/SmallAppWidgetListAdapter;Ljava/util/Vector;)Ljava/util/Vector;
    .locals 0
    .param p0, "x0"    # Lcom/sony/nfx/android/systemui/smallapp/SmallAppWidgetListAdapter;
    .param p1, "x1"    # Ljava/util/Vector;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppWidgetListAdapter;->mItems:Ljava/util/Vector;

    return-object p1
.end method

.method private applyFromAppWidgetProviderInfo(Landroid/view/View;Lcom/sony/nfx/android/systemui/smallapp/SmallAppWidgetListAdapter$Item;)V
    .locals 16
    .param p1, "view"    # Landroid/view/View;
    .param p2, "item"    # Lcom/sony/nfx/android/systemui/smallapp/SmallAppWidgetListAdapter$Item;

    .prologue
    .line 162
    const v1, 0x7f0e0026

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 163
    .local v10, "name":Landroid/widget/TextView;
    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppWidgetListAdapter$Item;->label:Ljava/lang/String;

    invoke-virtual {v10, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    const v1, 0x7f0e0027

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 165
    .local v8, "dims":Landroid/widget/TextView;
    if-eqz v8, :cond_0

    .line 166
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppWidgetListAdapter;->mDimensionsFormatString:Ljava/lang/String;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    move-object/from16 v0, p2

    iget-object v14, v0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppWidgetListAdapter$Item;->spanXY:[I

    const/4 v15, 0x0

    aget v14, v14, v15

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v4, v5

    const/4 v5, 0x1

    move-object/from16 v0, p2

    iget-object v14, v0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppWidgetListAdapter$Item;->spanXY:[I

    const/4 v15, 0x1

    aget v14, v14, v15

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v4, v5

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    :cond_0
    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppWidgetListAdapter$Item;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    .line 170
    .local v6, "bitmapWidth":I
    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppWidgetListAdapter$Item;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    .line 171
    .local v7, "bitmapHeight":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppWidgetListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0a000a

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v12, v1

    .line 172
    .local v12, "previewWidth":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppWidgetListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0a000b

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v11, v1

    .line 173
    .local v11, "previewHeight":I
    add-int/lit8 v12, v12, -0x1c

    .line 174
    const/high16 v13, 0x3f800000    # 1.0f

    .line 175
    .local v13, "scale":F
    if-le v6, v12, :cond_1

    .line 176
    int-to-float v1, v12

    int-to-float v4, v6

    div-float v13, v1, v4

    .line 178
    :cond_1
    int-to-float v1, v7

    mul-float/2addr v1, v13

    int-to-float v4, v11

    cmpl-float v1, v1, v4

    if-lez v1, :cond_2

    .line 179
    int-to-float v1, v11

    int-to-float v4, v7

    div-float v13, v1, v4

    .line 181
    :cond_2
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, v13, v1

    if-eqz v1, :cond_3

    .line 182
    int-to-float v1, v6

    mul-float/2addr v1, v13

    float-to-int v6, v1

    .line 183
    int-to-float v1, v7

    mul-float/2addr v1, v13

    float-to-int v7, v1

    .line 185
    :cond_3
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v7, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 186
    .local v3, "previewBitmap":Landroid/graphics/Bitmap;
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppWidgetListAdapter$Item;->icon:Landroid/graphics/drawable/Drawable;

    .line 187
    .local v2, "previewDrawable":Landroid/graphics/drawable/Drawable;
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/sony/nfx/android/systemui/smallapp/SmallAppWidgetListAdapter;->renderDrawableToBitmap(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;IIII)V

    .line 188
    move-object/from16 v0, p2

    iput-object v2, v0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppWidgetListAdapter$Item;->icon:Landroid/graphics/drawable/Drawable;

    .line 190
    const v1, 0x7f0e0025

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    .line 191
    .local v9, "image":Landroid/widget/ImageView;
    invoke-virtual {v9, v6}, Landroid/widget/ImageView;->setMaxWidth(I)V

    .line 192
    invoke-virtual {v9, v7}, Landroid/widget/ImageView;->setMaxHeight(I)V

    .line 193
    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppWidgetListAdapter$Item;->label:Ljava/lang/String;

    invoke-virtual {v9, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 194
    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppWidgetListAdapter$Item;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 195
    return-void
.end method

.method private getSpanForWidget(Landroid/content/ComponentName;II)[I
    .locals 6
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "minWidth"    # I
    .param p3, "minHeight"    # I

    .prologue
    const/4 v5, 0x0

    .line 198
    iget-object v3, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppWidgetListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3, p1, v5}, Landroid/appwidget/AppWidgetHostView;->getDefaultPaddingForWidget(Landroid/content/Context;Landroid/content/ComponentName;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    .line 199
    .local v0, "padding":Landroid/graphics/Rect;
    iget v3, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, p2

    iget v4, v0, Landroid/graphics/Rect;->right:I

    add-int v2, v3, v4

    .line 200
    .local v2, "requiredWidth":I
    iget v3, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, p3

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    add-int v1, v3, v4

    .line 201
    .local v1, "requiredHeight":I
    iget-object v3, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppWidgetListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3, v2, v1, v5}, Lcom/sony/nfx/android/systemui/smallapp/SmallAppWidgetListAdapter;->rectToCell(Landroid/content/res/Resources;II[I)[I

    move-result-object v3

    return-object v3
.end method

.method private static rectToCell(Landroid/content/res/Resources;II[I)[I
    .locals 9
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "result"    # [I

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 205
    const/high16 v5, 0x7f0a0000

    invoke-virtual {p0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 206
    .local v1, "actualWidth":I
    const v5, 0x7f0a0001

    invoke-virtual {p0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 207
    .local v0, "actualHeight":I
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 210
    .local v2, "smallerSize":I
    int-to-float v5, p1

    int-to-float v6, v2

    div-float/2addr v5, v6

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v3, v5

    .line 211
    .local v3, "spanX":I
    int-to-float v5, p2

    int-to-float v6, v2

    div-float/2addr v5, v6

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v4, v5

    .line 213
    .local v4, "spanY":I
    if-nez p3, :cond_0

    .line 214
    const/4 v5, 0x2

    new-array p3, v5, [I

    .end local p3    # "result":[I
    aput v3, p3, v7

    aput v4, p3, v8

    .line 218
    :goto_0
    return-object p3

    .line 216
    .restart local p3    # "result":[I
    :cond_0
    aput v3, p3, v7

    .line 217
    aput v4, p3, v8

    goto :goto_0
.end method

.method private renderDrawableToBitmap(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;IIII)V
    .locals 4
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "w"    # I
    .param p6, "h"    # I

    .prologue
    .line 151
    if-eqz p2, :cond_0

    .line 152
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 153
    .local v0, "c":Landroid/graphics/Canvas;
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->copyBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 154
    .local v1, "oldBounds":Landroid/graphics/Rect;
    add-int v2, p3, p5

    add-int v3, p4, p6

    invoke-virtual {p1, p3, p4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 155
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 156
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 157
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 159
    .end local v0    # "c":Landroid/graphics/Canvas;
    .end local v1    # "oldBounds":Landroid/graphics/Rect;
    :cond_0
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppWidgetListAdapter;->mItems:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "idx"    # I

    .prologue
    .line 131
    iget-object v0, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppWidgetListAdapter;->mItems:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "idx"    # I

    .prologue
    .line 136
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "idx"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 141
    if-nez p2, :cond_0

    .line 142
    iget-object v1, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppWidgetListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f03000a

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 144
    :cond_0
    iget-object v1, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppWidgetListAdapter;->mItems:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppWidgetListAdapter$Item;

    .line 145
    .local v0, "item":Lcom/sony/nfx/android/systemui/smallapp/SmallAppWidgetListAdapter$Item;
    invoke-direct {p0, p2, v0}, Lcom/sony/nfx/android/systemui/smallapp/SmallAppWidgetListAdapter;->applyFromAppWidgetProviderInfo(Landroid/view/View;Lcom/sony/nfx/android/systemui/smallapp/SmallAppWidgetListAdapter$Item;)V

    .line 146
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 147
    return-object p2
.end method
