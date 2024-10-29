.class public abstract Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;
.super Lcom/sonymobile/systemui/uicomponents/Button;
.source "ToolsButton.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAnimationContainer:Lcom/sonymobile/systemui/uicomponents/Container;

.field private final mAnimationHandler:Landroid/os/Handler;

.field private mAnimationIds:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[I>;"
        }
    .end annotation
.end field

.field private final mAnimationKiller:Ljava/lang/Runnable;

.field private final mAnimationRunner:Ljava/lang/Runnable;

.field private final mBackplatePressed:Lcom/sonymobile/systemui/uicomponents/NinePatchImage;

.field private final mContext:Landroid/content/Context;

.field private mCurrentAnimationImage:I

.field private final mHighlight:Lcom/sonymobile/systemui/uicomponents/NinePatchImage;

.field private final mIcon:Lcom/sonymobile/systemui/uicomponents/Image;

.field private mIsInTransition:Z

.field private mNrOfAnimationImages:I

.field protected mState:I

.field private mStateIcons:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mStopAnimation:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 68
    invoke-direct {p0}, Lcom/sonymobile/systemui/uicomponents/Button;-><init>()V

    .line 44
    const/high16 v1, -0x80000000

    iput v1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mState:I

    .line 62
    iput v3, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mCurrentAnimationImage:I

    .line 69
    iput-object p1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mContext:Landroid/content/Context;

    .line 70
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 71
    .local v0, "res":Landroid/content/res/Resources;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mStateIcons:Ljava/util/HashMap;

    .line 74
    new-instance v1, Lcom/sonymobile/systemui/uicomponents/NinePatchImage;

    const v2, 0x7f0200df

    invoke-direct {v1, v0, v2}, Lcom/sonymobile/systemui/uicomponents/NinePatchImage;-><init>(Landroid/content/res/Resources;I)V

    iput-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mBackplatePressed:Lcom/sonymobile/systemui/uicomponents/NinePatchImage;

    .line 75
    new-instance v1, Lcom/sonymobile/systemui/uicomponents/Image;

    invoke-direct {v1}, Lcom/sonymobile/systemui/uicomponents/Image;-><init>()V

    iput-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mIcon:Lcom/sonymobile/systemui/uicomponents/Image;

    .line 76
    const v1, -0xcccccd

    invoke-virtual {p0, v1}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->setBackgroundColor(I)V

    .line 77
    new-instance v1, Lcom/sonymobile/systemui/uicomponents/Container;

    invoke-direct {v1}, Lcom/sonymobile/systemui/uicomponents/Container;-><init>()V

    iput-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mAnimationContainer:Lcom/sonymobile/systemui/uicomponents/Container;

    .line 79
    new-instance v1, Lcom/sonymobile/systemui/uicomponents/NinePatchImage;

    const v2, 0x7f02000f

    invoke-direct {v1, v0, v2}, Lcom/sonymobile/systemui/uicomponents/NinePatchImage;-><init>(Landroid/content/res/Resources;I)V

    iput-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mHighlight:Lcom/sonymobile/systemui/uicomponents/NinePatchImage;

    .line 80
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mHighlight:Lcom/sonymobile/systemui/uicomponents/NinePatchImage;

    invoke-virtual {v1, v3}, Lcom/sonymobile/systemui/uicomponents/NinePatchImage;->setVisible(Z)V

    .line 83
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mBackplatePressed:Lcom/sonymobile/systemui/uicomponents/NinePatchImage;

    invoke-virtual {p0, v1}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->addChild(Lcom/sonymobile/systemui/uicomponents/Component;)V

    .line 84
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mIcon:Lcom/sonymobile/systemui/uicomponents/Image;

    invoke-virtual {p0, v1}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->addChild(Lcom/sonymobile/systemui/uicomponents/Component;)V

    .line 85
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mAnimationContainer:Lcom/sonymobile/systemui/uicomponents/Container;

    invoke-virtual {p0, v1}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->addChild(Lcom/sonymobile/systemui/uicomponents/Component;)V

    .line 86
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mHighlight:Lcom/sonymobile/systemui/uicomponents/NinePatchImage;

    invoke-virtual {p0, v1}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->addChild(Lcom/sonymobile/systemui/uicomponents/Component;)V

    .line 88
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mBackplatePressed:Lcom/sonymobile/systemui/uicomponents/NinePatchImage;

    invoke-virtual {v1, v3}, Lcom/sonymobile/systemui/uicomponents/NinePatchImage;->setVisible(Z)V

    .line 89
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mAnimationContainer:Lcom/sonymobile/systemui/uicomponents/Container;

    invoke-virtual {v1, v3}, Lcom/sonymobile/systemui/uicomponents/Container;->setVisible(Z)V

    .line 91
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mAnimationHandler:Landroid/os/Handler;

    .line 92
    new-instance v1, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$1;

    invoke-direct {v1, p0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$1;-><init>(Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;)V

    iput-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mAnimationRunner:Ljava/lang/Runnable;

    .line 127
    new-instance v1, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$2;

    invoke-direct {v1, p0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$2;-><init>(Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;)V

    iput-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mAnimationKiller:Ljava/lang/Runnable;

    .line 134
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;

    .prologue
    .line 24
    iget v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mCurrentAnimationImage:I

    return v0
.end method

.method static synthetic access$002(Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;
    .param p1, "x1"    # I

    .prologue
    .line 24
    iput p1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mCurrentAnimationImage:I

    return p1
.end method

.method static synthetic access$008(Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;)I
    .locals 2
    .param p0, "x0"    # Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;

    .prologue
    .line 24
    iget v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mCurrentAnimationImage:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mCurrentAnimationImage:I

    return v0
.end method

.method static synthetic access$100(Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;

    .prologue
    .line 24
    iget v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mNrOfAnimationImages:I

    return v0
.end method

.method static synthetic access$200(Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mStopAnimation:Z

    return v0
.end method

.method static synthetic access$300(Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;)Lcom/sonymobile/systemui/uicomponents/Container;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mAnimationContainer:Lcom/sonymobile/systemui/uicomponents/Container;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mAnimationRunner:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mAnimationHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private updateIcon()V
    .locals 5

    .prologue
    .line 239
    iget-object v3, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mStateIcons:Ljava/util/HashMap;

    iget v4, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mState:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 240
    .local v2, "iconId":Ljava/lang/Integer;
    const/4 v1, 0x0

    .line 241
    .local v1, "icon":Landroid/graphics/Bitmap;
    if-eqz v2, :cond_0

    .line 243
    :try_start_0
    iget-object v3, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 249
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mIcon:Lcom/sonymobile/systemui/uicomponents/Image;

    invoke-virtual {v3, v1}, Lcom/sonymobile/systemui/uicomponents/Image;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 250
    iget-object v3, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mIcon:Lcom/sonymobile/systemui/uicomponents/Image;

    invoke-virtual {v3}, Lcom/sonymobile/systemui/uicomponents/Image;->invalidate()V

    .line 251
    return-void

    .line 244
    :catch_0
    move-exception v0

    .line 245
    .local v0, "e":Ljava/lang/OutOfMemoryError;
    sget-object v3, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->TAG:Ljava/lang/String;

    const-string v4, "Failed to load resource : OutOfMemoryError"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method varargs addState(II[I)V
    .locals 3
    .param p1, "stateId"    # I
    .param p2, "stateIconId"    # I
    .param p3, "animationIconIds"    # [I

    .prologue
    .line 160
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mStateIcons:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    if-eqz p3, :cond_1

    .line 163
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mAnimationIds:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 164
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mAnimationIds:Ljava/util/HashMap;

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mAnimationIds:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    :cond_1
    return-void
.end method

.method public highlight()V
    .locals 2

    .prologue
    .line 254
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mHighlight:Lcom/sonymobile/systemui/uicomponents/NinePatchImage;

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mHighlight:Lcom/sonymobile/systemui/uicomponents/NinePatchImage;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonymobile/systemui/uicomponents/NinePatchImage;->setVisible(Z)V

    .line 256
    invoke-virtual {p0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->invalidate()V

    .line 258
    :cond_0
    return-void
.end method

.method protected abstract onAction()V
.end method

.method public onClick(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 269
    iget-boolean v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mIsInTransition:Z

    if-nez v0, :cond_0

    .line 270
    invoke-virtual {p0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->onAction()V

    .line 272
    :cond_0
    return-void
.end method

.method public onPress(FF)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 138
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mBackplatePressed:Lcom/sonymobile/systemui/uicomponents/NinePatchImage;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonymobile/systemui/uicomponents/NinePatchImage;->setVisible(Z)V

    .line 139
    invoke-virtual {p0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->invalidate()V

    .line 140
    return-void
.end method

.method public onRelease(FF)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 144
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mBackplatePressed:Lcom/sonymobile/systemui/uicomponents/NinePatchImage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonymobile/systemui/uicomponents/NinePatchImage;->setVisible(Z)V

    .line 145
    invoke-virtual {p0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->invalidate()V

    .line 146
    return-void
.end method

.method public setSize(FF)V
    .locals 1
    .param p1, "width"    # F
    .param p2, "height"    # F

    .prologue
    .line 150
    invoke-super {p0, p1, p2}, Lcom/sonymobile/systemui/uicomponents/Button;->setSize(FF)V

    .line 151
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mBackplatePressed:Lcom/sonymobile/systemui/uicomponents/NinePatchImage;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mBackplatePressed:Lcom/sonymobile/systemui/uicomponents/NinePatchImage;

    invoke-virtual {v0, p1, p2}, Lcom/sonymobile/systemui/uicomponents/NinePatchImage;->setSize(FF)V

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mHighlight:Lcom/sonymobile/systemui/uicomponents/NinePatchImage;

    if-eqz v0, :cond_1

    .line 155
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mHighlight:Lcom/sonymobile/systemui/uicomponents/NinePatchImage;

    invoke-virtual {v0, p1, p2}, Lcom/sonymobile/systemui/uicomponents/NinePatchImage;->setSize(FF)V

    .line 157
    :cond_1
    return-void
.end method

.method setState(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 231
    iget v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mState:I

    if-eq p1, v0, :cond_0

    .line 232
    iput p1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mState:I

    .line 233
    invoke-direct {p0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->updateIcon()V

    .line 236
    :cond_0
    return-void
.end method

.method startAnimate(I)V
    .locals 15
    .param p1, "toState"    # I

    .prologue
    .line 171
    iget-boolean v11, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mIsInTransition:Z

    if-eqz v11, :cond_1

    .line 208
    :cond_0
    :goto_0
    return-void

    .line 174
    :cond_1
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mIsInTransition:Z

    .line 175
    const/4 v2, 0x0

    .line 176
    .local v2, "animationIds":[I
    iget-object v11, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mAnimationIds:Ljava/util/HashMap;

    if-eqz v11, :cond_2

    .line 177
    iget-object v11, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mAnimationIds:Ljava/util/HashMap;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "animationIds":[I
    check-cast v2, [I

    .line 179
    .restart local v2    # "animationIds":[I
    :cond_2
    if-eqz v2, :cond_0

    .line 180
    iget-object v11, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 181
    .local v9, "res":Landroid/content/res/Resources;
    const/4 v0, 0x0

    .line 182
    .local v0, "animationId":I
    move-object v3, v2

    .local v3, "arr$":[I
    array-length v8, v3

    .local v8, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    move v1, v0

    .end local v0    # "animationId":I
    .local v1, "animationId":I
    :goto_1
    if-ge v6, v8, :cond_3

    aget v10, v3, v6

    .line 183
    .local v10, "resId":I
    const/4 v4, 0x0

    .line 185
    .local v4, "bitmap":Landroid/graphics/Bitmap;
    :try_start_0
    invoke-static {v9, v10}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 189
    :goto_2
    if-eqz v4, :cond_4

    .line 190
    new-instance v7, Lcom/sonymobile/systemui/uicomponents/Image;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "ANIM"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "animationId":I
    .restart local v0    # "animationId":I
    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v7, v11, v4}, Lcom/sonymobile/systemui/uicomponents/Image;-><init>(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 191
    .local v7, "image":Lcom/sonymobile/systemui/uicomponents/Image;
    const/4 v11, 0x0

    invoke-virtual {v7, v11}, Lcom/sonymobile/systemui/uicomponents/Image;->setVisible(Z)V

    .line 192
    iget-object v11, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mAnimationContainer:Lcom/sonymobile/systemui/uicomponents/Container;

    invoke-virtual {v11, v7}, Lcom/sonymobile/systemui/uicomponents/Container;->addChild(Lcom/sonymobile/systemui/uicomponents/Component;)V

    .line 182
    .end local v7    # "image":Lcom/sonymobile/systemui/uicomponents/Image;
    :goto_3
    add-int/lit8 v6, v6, 0x1

    move v1, v0

    .end local v0    # "animationId":I
    .restart local v1    # "animationId":I
    goto :goto_1

    .line 186
    :catch_0
    move-exception v5

    .line 187
    .local v5, "e":Ljava/lang/OutOfMemoryError;
    sget-object v11, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->TAG:Ljava/lang/String;

    const-string v12, "Failed to load anim resource : OutOfMemoryError"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 195
    .end local v4    # "bitmap":Landroid/graphics/Bitmap;
    .end local v5    # "e":Ljava/lang/OutOfMemoryError;
    .end local v10    # "resId":I
    :cond_3
    if-lez v1, :cond_0

    .line 196
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mStopAnimation:Z

    .line 197
    iget-object v11, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mAnimationContainer:Lcom/sonymobile/systemui/uicomponents/Container;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/sonymobile/systemui/uicomponents/Container;->setVisible(Z)V

    .line 198
    iget-object v11, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mIcon:Lcom/sonymobile/systemui/uicomponents/Image;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/sonymobile/systemui/uicomponents/Image;->setVisible(Z)V

    .line 199
    iput v1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mNrOfAnimationImages:I

    .line 200
    const/4 v11, -0x1

    iput v11, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mCurrentAnimationImage:I

    .line 201
    iget-object v11, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mAnimationHandler:Landroid/os/Handler;

    iget-object v12, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mAnimationRunner:Ljava/lang/Runnable;

    invoke-virtual {v11, v12}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 205
    iget-object v11, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mAnimationHandler:Landroid/os/Handler;

    iget-object v12, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mAnimationKiller:Ljava/lang/Runnable;

    const-wide/16 v13, 0x2710

    invoke-virtual {v11, v12, v13, v14}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .restart local v4    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v10    # "resId":I
    :cond_4
    move v0, v1

    .end local v1    # "animationId":I
    .restart local v0    # "animationId":I
    goto :goto_3
.end method

.method stopAnimate(Z)V
    .locals 5
    .param p1, "kill"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 211
    iget-boolean v1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mIsInTransition:Z

    if-nez v1, :cond_0

    .line 228
    :goto_0
    return-void

    .line 214
    :cond_0
    if-eqz p1, :cond_2

    .line 215
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mAnimationHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mAnimationKiller:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 216
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mAnimationHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mAnimationRunner:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 217
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mAnimationContainer:Lcom/sonymobile/systemui/uicomponents/Container;

    invoke-virtual {v1, v4}, Lcom/sonymobile/systemui/uicomponents/Container;->setVisible(Z)V

    .line 218
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mIcon:Lcom/sonymobile/systemui/uicomponents/Image;

    invoke-virtual {v1, v3}, Lcom/sonymobile/systemui/uicomponents/Image;->setVisible(Z)V

    .line 219
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mNrOfAnimationImages:I

    if-ge v0, v1, :cond_1

    .line 220
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mAnimationContainer:Lcom/sonymobile/systemui/uicomponents/Container;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ANIM"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/systemui/uicomponents/Container;->removeChild(Ljava/lang/String;)Lcom/sonymobile/systemui/uicomponents/Component;

    .line 219
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 222
    :cond_1
    iput v4, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mNrOfAnimationImages:I

    .line 223
    iput-boolean v4, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mIsInTransition:Z

    .line 224
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mAnimationContainer:Lcom/sonymobile/systemui/uicomponents/Container;

    invoke-virtual {v1}, Lcom/sonymobile/systemui/uicomponents/Container;->invalidate()V

    goto :goto_0

    .line 226
    .end local v0    # "i":I
    :cond_2
    iput-boolean v3, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mStopAnimation:Z

    goto :goto_0
.end method

.method public unHighlight()V
    .locals 2

    .prologue
    .line 261
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mHighlight:Lcom/sonymobile/systemui/uicomponents/NinePatchImage;

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mHighlight:Lcom/sonymobile/systemui/uicomponents/NinePatchImage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonymobile/systemui/uicomponents/NinePatchImage;->setVisible(Z)V

    .line 263
    invoke-virtual {p0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->invalidate()V

    .line 265
    :cond_0
    return-void
.end method
