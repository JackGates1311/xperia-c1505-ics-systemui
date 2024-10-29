.class public Lcom/sonymobile/systemui/uicomponents/Container;
.super Lcom/sonymobile/systemui/uicomponents/Component;
.source "Container.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 20
    const/4 v0, 0x0

    invoke-direct {p0, v0, v1, v1}, Lcom/sonymobile/systemui/uicomponents/Container;-><init>(Ljava/lang/String;FF)V

    .line 21
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 28
    invoke-direct {p0, p1, v0, v0}, Lcom/sonymobile/systemui/uicomponents/Container;-><init>(Ljava/lang/String;FF)V

    .line 29
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;FF)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "width"    # F
    .param p3, "height"    # F

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/sonymobile/systemui/uicomponents/Component;-><init>(Ljava/lang/String;)V

    .line 47
    invoke-virtual {p0, p2, p3}, Lcom/sonymobile/systemui/uicomponents/Container;->setSize(FF)V

    .line 48
    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;FF)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    .line 52
    return-void
.end method
