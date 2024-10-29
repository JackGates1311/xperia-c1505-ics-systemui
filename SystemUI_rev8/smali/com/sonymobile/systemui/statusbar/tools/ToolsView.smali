.class public Lcom/sonymobile/systemui/statusbar/tools/ToolsView;
.super Landroid/view/View;
.source "ToolsView.java"


# instance fields
.field private mButtonWidth:F

.field private final mContainer:Lcom/sonymobile/systemui/uicomponents/Container;

.field private mFocusedButton:I

.field private final mHorizontalDividersBottom:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/sonymobile/systemui/uicomponents/NinePatchImage;",
            ">;"
        }
    .end annotation
.end field

.field private final mHorizontalDividersTop:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/sonymobile/systemui/uicomponents/NinePatchImage;",
            ">;"
        }
    .end annotation
.end field

.field private mIsLayoutCreated:Z

.field private final mNrOfButtons:I

.field private final mTools:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;",
            ">;"
        }
    .end annotation
.end field

.field private final mVerticalDividers:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/sonymobile/systemui/uicomponents/NinePatchImage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 48
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    const/4 v3, 0x0

    iput v3, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsView;->mFocusedButton:I

    .line 53
    const/4 v3, 0x5

    iput v3, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsView;->mNrOfButtons:I

    .line 54
    new-instance v3, Lcom/sonymobile/systemui/statusbar/tools/ToolsView$1;

    invoke-direct {v3, p0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsView$1;-><init>(Lcom/sonymobile/systemui/statusbar/tools/ToolsView;)V

    iput-object v3, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsView;->mContainer:Lcom/sonymobile/systemui/uicomponents/Container;

    .line 60
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    iput-object v3, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsView;->mTools:Ljava/util/LinkedList;

    .line 61
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    iput-object v3, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsView;->mVerticalDividers:Ljava/util/LinkedList;

    .line 62
    iget-object v3, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0200eb

    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 64
    .local v2, "vBitmap":Landroid/graphics/Bitmap;
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    iput-object v3, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsView;->mHorizontalDividersTop:Ljava/util/LinkedList;

    .line 65
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    iput-object v3, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsView;->mHorizontalDividersBottom:Ljava/util/LinkedList;

    .line 66
    iget-object v3, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020013

    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 69
    .local v0, "hBitmap":Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v3, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsView;->mNrOfButtons:I

    if-ge v1, v3, :cond_1

    .line 70
    iget v3, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsView;->mNrOfButtons:I

    add-int/lit8 v3, v3, -0x1

    if-ge v1, v3, :cond_0

    .line 71
    iget-object v3, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsView;->mVerticalDividers:Ljava/util/LinkedList;

    new-instance v4, Lcom/sonymobile/systemui/uicomponents/NinePatchImage;

    invoke-direct {v4, v2}, Lcom/sonymobile/systemui/uicomponents/NinePatchImage;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v3, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 73
    :cond_0
    iget-object v3, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsView;->mHorizontalDividersTop:Ljava/util/LinkedList;

    new-instance v4, Lcom/sonymobile/systemui/uicomponents/NinePatchImage;

    invoke-direct {v4, v0}, Lcom/sonymobile/systemui/uicomponents/NinePatchImage;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v3, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 74
    iget-object v3, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsView;->mHorizontalDividersBottom:Ljava/util/LinkedList;

    new-instance v4, Lcom/sonymobile/systemui/uicomponents/NinePatchImage;

    invoke-direct {v4, v0}, Lcom/sonymobile/systemui/uicomponents/NinePatchImage;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v3, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 69
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 77
    :cond_1
    new-instance v3, Lcom/sonymobile/systemui/statusbar/tools/ToolsView$2;

    invoke-direct {v3, p0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsView$2;-><init>(Lcom/sonymobile/systemui/statusbar/tools/ToolsView;)V

    invoke-virtual {p0, v3}, Lcom/sonymobile/systemui/statusbar/tools/ToolsView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 96
    new-instance v3, Lcom/sonymobile/systemui/statusbar/tools/ToolsView$3;

    invoke-direct {v3, p0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsView$3;-><init>(Lcom/sonymobile/systemui/statusbar/tools/ToolsView;)V

    invoke-virtual {p0, v3}, Lcom/sonymobile/systemui/statusbar/tools/ToolsView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 157
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/sonymobile/systemui/statusbar/tools/ToolsView;->setFocusable(Z)V

    .line 158
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/systemui/statusbar/tools/ToolsView;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/systemui/statusbar/tools/ToolsView;

    .prologue
    .line 25
    iget v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsView;->mFocusedButton:I

    return v0
.end method

.method static synthetic access$002(Lcom/sonymobile/systemui/statusbar/tools/ToolsView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/systemui/statusbar/tools/ToolsView;
    .param p1, "x1"    # I

    .prologue
    .line 25
    iput p1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsView;->mFocusedButton:I

    return p1
.end method

.method static synthetic access$008(Lcom/sonymobile/systemui/statusbar/tools/ToolsView;)I
    .locals 2
    .param p0, "x0"    # Lcom/sonymobile/systemui/statusbar/tools/ToolsView;

    .prologue
    .line 25
    iget v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsView;->mFocusedButton:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsView;->mFocusedButton:I

    return v0
.end method

.method static synthetic access$010(Lcom/sonymobile/systemui/statusbar/tools/ToolsView;)I
    .locals 2
    .param p0, "x0"    # Lcom/sonymobile/systemui/statusbar/tools/ToolsView;

    .prologue
    .line 25
    iget v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsView;->mFocusedButton:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsView;->mFocusedButton:I

    return v0
.end method

.method static synthetic access$100(Lcom/sonymobile/systemui/statusbar/tools/ToolsView;)Ljava/util/LinkedList;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/systemui/statusbar/tools/ToolsView;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsView;->mTools:Ljava/util/LinkedList;

    return-object v0
.end method

.method private layoutHorizontalBorder(Lcom/sonymobile/systemui/uicomponents/Button;I)V
    .locals 10
    .param p1, "button"    # Lcom/sonymobile/systemui/uicomponents/Button;
    .param p2, "index"    # I

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/high16 v2, 0x3f000000    # 0.5f

    .line 179
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsView;->mHorizontalDividersTop:Ljava/util/LinkedList;

    invoke-virtual {v1, p2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/systemui/uicomponents/NinePatchImage;

    .line 180
    .local v0, "dividerTop":Lcom/sonymobile/systemui/uicomponents/NinePatchImage;
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsView;->mHorizontalDividersBottom:Ljava/util/LinkedList;

    invoke-virtual {v1, p2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sonymobile/systemui/uicomponents/NinePatchImage;

    .line 182
    .local v9, "dividerBottom":Lcom/sonymobile/systemui/uicomponents/NinePatchImage;
    iget v1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsView;->mButtonWidth:F

    invoke-virtual {v0}, Lcom/sonymobile/systemui/uicomponents/NinePatchImage;->getHeight()F

    move-result v4

    invoke-virtual {v0, v1, v4}, Lcom/sonymobile/systemui/uicomponents/NinePatchImage;->setSize(FF)V

    .line 183
    iget v1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsView;->mButtonWidth:F

    invoke-virtual {v9}, Lcom/sonymobile/systemui/uicomponents/NinePatchImage;->getHeight()F

    move-result v4

    invoke-virtual {v9, v1, v4}, Lcom/sonymobile/systemui/uicomponents/NinePatchImage;->setSize(FF)V

    move-object v1, p1

    move v4, v2

    move v5, v3

    .line 185
    invoke-virtual/range {v0 .. v5}, Lcom/sonymobile/systemui/uicomponents/NinePatchImage;->layout(Lcom/sonymobile/systemui/uicomponents/Component;FFFF)V

    move-object v3, v9

    move-object v4, p1

    move v5, v2

    move v7, v2

    move v8, v6

    .line 187
    invoke-virtual/range {v3 .. v8}, Lcom/sonymobile/systemui/uicomponents/NinePatchImage;->layout(Lcom/sonymobile/systemui/uicomponents/Component;FFFF)V

    .line 189
    return-void
.end method


# virtual methods
.method public addButton(Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;)V
    .locals 6
    .param p1, "button"    # Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;

    .prologue
    .line 161
    iget-object v4, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsView;->mTools:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v3

    .line 162
    .local v3, "previousSize":I
    iget v4, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsView;->mNrOfButtons:I

    if-ge v3, v4, :cond_0

    .line 163
    iget-object v4, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsView;->mTools:Ljava/util/LinkedList;

    invoke-virtual {v4, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 164
    iget-object v4, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsView;->mContainer:Lcom/sonymobile/systemui/uicomponents/Container;

    invoke-virtual {v4, p1}, Lcom/sonymobile/systemui/uicomponents/Container;->addChild(Lcom/sonymobile/systemui/uicomponents/Component;)V

    .line 166
    iget-object v4, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsView;->mHorizontalDividersTop:Ljava/util/LinkedList;

    invoke-virtual {v4, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/systemui/uicomponents/NinePatchImage;

    .line 167
    .local v2, "dividerTop":Lcom/sonymobile/systemui/uicomponents/NinePatchImage;
    iget-object v4, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsView;->mHorizontalDividersBottom:Ljava/util/LinkedList;

    invoke-virtual {v4, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/systemui/uicomponents/NinePatchImage;

    .line 168
    .local v1, "dividerBottom":Lcom/sonymobile/systemui/uicomponents/NinePatchImage;
    invoke-virtual {p1, v2}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->addChild(Lcom/sonymobile/systemui/uicomponents/Component;)V

    .line 169
    invoke-virtual {p1, v1}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->addChild(Lcom/sonymobile/systemui/uicomponents/Component;)V

    .line 171
    if-lez v3, :cond_0

    .line 172
    iget-object v4, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsView;->mVerticalDividers:Ljava/util/LinkedList;

    add-int/lit8 v5, v3, -0x1

    invoke-virtual {v4, v5}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/systemui/uicomponents/NinePatchImage;

    .line 173
    .local v0, "divider":Lcom/sonymobile/systemui/uicomponents/NinePatchImage;
    invoke-virtual {p1, v0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->addChild(Lcom/sonymobile/systemui/uicomponents/Component;)V

    .line 176
    .end local v0    # "divider":Lcom/sonymobile/systemui/uicomponents/NinePatchImage;
    .end local v1    # "dividerBottom":Lcom/sonymobile/systemui/uicomponents/NinePatchImage;
    .end local v2    # "dividerTop":Lcom/sonymobile/systemui/uicomponents/NinePatchImage;
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 193
    iget-boolean v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsView;->mIsLayoutCreated:Z

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsView;->mContainer:Lcom/sonymobile/systemui/uicomponents/Container;

    invoke-virtual {v0, p1}, Lcom/sonymobile/systemui/uicomponents/Container;->draw(Landroid/graphics/Canvas;)V

    .line 196
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 12
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 200
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 201
    iget-boolean v3, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsView;->mIsLayoutCreated:Z

    if-eqz v3, :cond_0

    if-eqz p1, :cond_2

    .line 202
    :cond_0
    invoke-virtual {p0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsView;->getWidth()I

    move-result v11

    .line 203
    .local v11, "width":I
    invoke-virtual {p0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsView;->getHeight()I

    move-result v8

    .line 204
    .local v8, "height":I
    iget v3, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsView;->mNrOfButtons:I

    div-int v3, v11, v3

    int-to-float v3, v3

    iput v3, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsView;->mButtonWidth:F

    .line 206
    iget-object v3, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsView;->mContainer:Lcom/sonymobile/systemui/uicomponents/Container;

    int-to-float v4, v11

    int-to-float v5, v8

    invoke-virtual {v3, v4, v5}, Lcom/sonymobile/systemui/uicomponents/Container;->setSize(FF)V

    .line 207
    iget-object v3, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsView;->mContainer:Lcom/sonymobile/systemui/uicomponents/Container;

    int-to-float v4, v11

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    int-to-float v5, v8

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/sonymobile/systemui/uicomponents/Container;->setPosition(FF)V

    .line 210
    iget-object v3, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsView;->mTools:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v10

    .line 211
    .local v10, "toolSize":I
    if-lez v10, :cond_1

    .line 212
    iget-object v3, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsView;->mTools:Ljava/util/LinkedList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/systemui/uicomponents/Button;

    .line 213
    .local v0, "button":Lcom/sonymobile/systemui/uicomponents/Button;
    iget v3, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsView;->mButtonWidth:F

    iget-object v4, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsView;->mContainer:Lcom/sonymobile/systemui/uicomponents/Container;

    invoke-virtual {v4}, Lcom/sonymobile/systemui/uicomponents/Container;->getHeight()F

    move-result v4

    invoke-virtual {v0, v3, v4}, Lcom/sonymobile/systemui/uicomponents/Button;->setSize(FF)V

    .line 214
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsView;->mContainer:Lcom/sonymobile/systemui/uicomponents/Container;

    const/4 v2, 0x0

    const/high16 v3, 0x3f000000    # 0.5f

    const/4 v4, 0x0

    const/high16 v5, 0x3f000000    # 0.5f

    invoke-virtual/range {v0 .. v5}, Lcom/sonymobile/systemui/uicomponents/Button;->layout(Lcom/sonymobile/systemui/uicomponents/Component;FFFF)V

    .line 216
    const/4 v3, 0x0

    invoke-direct {p0, v0, v3}, Lcom/sonymobile/systemui/statusbar/tools/ToolsView;->layoutHorizontalBorder(Lcom/sonymobile/systemui/uicomponents/Button;I)V

    .line 217
    const/4 v9, 0x1

    .local v9, "i":I
    :goto_0
    if-ge v9, v10, :cond_1

    .line 218
    iget-object v3, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsView;->mTools:Ljava/util/LinkedList;

    add-int/lit8 v4, v9, -0x1

    invoke-virtual {v3, v4}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/systemui/uicomponents/Button;

    .line 219
    .local v1, "before":Lcom/sonymobile/systemui/uicomponents/Button;
    iget-object v3, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsView;->mTools:Ljava/util/LinkedList;

    invoke-virtual {v3, v9}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "button":Lcom/sonymobile/systemui/uicomponents/Button;
    check-cast v0, Lcom/sonymobile/systemui/uicomponents/Button;

    .line 220
    .restart local v0    # "button":Lcom/sonymobile/systemui/uicomponents/Button;
    iget v3, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsView;->mButtonWidth:F

    iget-object v4, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsView;->mContainer:Lcom/sonymobile/systemui/uicomponents/Container;

    invoke-virtual {v4}, Lcom/sonymobile/systemui/uicomponents/Container;->getHeight()F

    move-result v4

    invoke-virtual {v0, v3, v4}, Lcom/sonymobile/systemui/uicomponents/Button;->setSize(FF)V

    .line 221
    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f000000    # 0.5f

    const/4 v4, 0x0

    const/high16 v5, 0x3f000000    # 0.5f

    invoke-virtual/range {v0 .. v5}, Lcom/sonymobile/systemui/uicomponents/Button;->layout(Lcom/sonymobile/systemui/uicomponents/Component;FFFF)V

    .line 224
    invoke-direct {p0, v0, v9}, Lcom/sonymobile/systemui/statusbar/tools/ToolsView;->layoutHorizontalBorder(Lcom/sonymobile/systemui/uicomponents/Button;I)V

    .line 226
    iget-object v3, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsView;->mVerticalDividers:Ljava/util/LinkedList;

    add-int/lit8 v4, v9, -0x1

    invoke-virtual {v3, v4}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/systemui/uicomponents/NinePatchImage;

    .line 227
    .local v2, "divider":Lcom/sonymobile/systemui/uicomponents/NinePatchImage;
    invoke-virtual {v2}, Lcom/sonymobile/systemui/uicomponents/NinePatchImage;->getWidth()F

    move-result v4

    iget-object v3, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsView;->mHorizontalDividersBottom:Ljava/util/LinkedList;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonymobile/systemui/uicomponents/NinePatchImage;

    const/high16 v5, 0x3f000000    # 0.5f

    invoke-virtual {v3, v5}, Lcom/sonymobile/systemui/uicomponents/NinePatchImage;->getY(F)F

    move-result v5

    iget-object v3, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsView;->mHorizontalDividersTop:Ljava/util/LinkedList;

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonymobile/systemui/uicomponents/NinePatchImage;

    const/high16 v6, 0x3f000000    # 0.5f

    invoke-virtual {v3, v6}, Lcom/sonymobile/systemui/uicomponents/NinePatchImage;->getY(F)F

    move-result v3

    sub-float v3, v5, v3

    invoke-virtual {v2, v4, v3}, Lcom/sonymobile/systemui/uicomponents/NinePatchImage;->setSize(FF)V

    .line 230
    const/4 v4, 0x0

    const/high16 v5, 0x3f000000    # 0.5f

    const/high16 v6, 0x3f000000    # 0.5f

    const/high16 v7, 0x3f000000    # 0.5f

    move-object v3, v0

    invoke-virtual/range {v2 .. v7}, Lcom/sonymobile/systemui/uicomponents/NinePatchImage;->layout(Lcom/sonymobile/systemui/uicomponents/Component;FFFF)V

    .line 217
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 234
    .end local v0    # "button":Lcom/sonymobile/systemui/uicomponents/Button;
    .end local v1    # "before":Lcom/sonymobile/systemui/uicomponents/Button;
    .end local v2    # "divider":Lcom/sonymobile/systemui/uicomponents/NinePatchImage;
    .end local v9    # "i":I
    :cond_1
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsView;->mIsLayoutCreated:Z

    .line 236
    .end local v8    # "height":I
    .end local v10    # "toolSize":I
    .end local v11    # "width":I
    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 244
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a001c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 245
    .local v0, "toolsHeight":F
    float-to-int v1, v0

    invoke-virtual {p0, p1, v1}, Lcom/sonymobile/systemui/statusbar/tools/ToolsView;->setMeasuredDimension(II)V

    .line 246
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 250
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsView;->mContainer:Lcom/sonymobile/systemui/uicomponents/Container;

    invoke-virtual {v0, p1}, Lcom/sonymobile/systemui/uicomponents/Container;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
