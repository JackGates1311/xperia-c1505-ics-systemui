.class public abstract Lcom/sonymobile/systemui/uicomponents/Button;
.super Lcom/sonymobile/systemui/uicomponents/Component;
.source "Button.java"


# instance fields
.field protected mActive:Z

.field protected mPadBottom:F

.field protected mPadLeft:F

.field protected mPadRight:F

.field protected mPadTop:F

.field protected mPressed:Z

.field protected mPressedX:F

.field protected mPressedY:F

.field protected mSkipReleaseOnClick:Z

.field protected mTouchSlop2:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 76
    invoke-direct {p0, v0, v0}, Lcom/sonymobile/systemui/uicomponents/Button;-><init>(FF)V

    .line 77
    return-void
.end method

.method public constructor <init>(FF)V
    .locals 1
    .param p1, "width"    # F
    .param p2, "height"    # F

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/sonymobile/systemui/uicomponents/Component;-><init>()V

    .line 84
    invoke-virtual {p0, p1, p2}, Lcom/sonymobile/systemui/uicomponents/Button;->setSize(FF)V

    .line 85
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/sonymobile/systemui/uicomponents/Button;->setTouchSlop(I)V

    .line 86
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 95
    invoke-direct {p0, p1, v0, v0}, Lcom/sonymobile/systemui/uicomponents/Button;-><init>(Landroid/content/Context;FF)V

    .line 96
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;FF)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "width"    # F
    .param p3, "height"    # F

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/sonymobile/systemui/uicomponents/Component;-><init>()V

    .line 104
    invoke-virtual {p0, p2, p3}, Lcom/sonymobile/systemui/uicomponents/Button;->setSize(FF)V

    .line 105
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sonymobile/systemui/uicomponents/Button;->setTouchSlop(I)V

    .line 106
    return-void
.end method


# virtual methods
.method public containsTouch(FF)Z
    .locals 6
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 261
    iget v4, p0, Lcom/sonymobile/systemui/uicomponents/Component;->mScreenX:I

    int-to-float v4, v4

    iget v5, p0, Lcom/sonymobile/systemui/uicomponents/Button;->mPadLeft:F

    sub-float v1, v4, v5

    .line 262
    .local v1, "left":F
    iget v4, p0, Lcom/sonymobile/systemui/uicomponents/Component;->mScreenY:I

    int-to-float v4, v4

    iget v5, p0, Lcom/sonymobile/systemui/uicomponents/Button;->mPadTop:F

    sub-float v3, v4, v5

    .line 263
    .local v3, "top":F
    iget v4, p0, Lcom/sonymobile/systemui/uicomponents/Component;->mScreenX:I

    int-to-float v4, v4

    invoke-virtual {p0}, Lcom/sonymobile/systemui/uicomponents/Button;->getWidth()F

    move-result v5

    add-float/2addr v4, v5

    iget v5, p0, Lcom/sonymobile/systemui/uicomponents/Button;->mPadRight:F

    add-float v2, v4, v5

    .line 264
    .local v2, "right":F
    iget v4, p0, Lcom/sonymobile/systemui/uicomponents/Component;->mScreenY:I

    int-to-float v4, v4

    invoke-virtual {p0}, Lcom/sonymobile/systemui/uicomponents/Button;->getHeight()F

    move-result v5

    add-float/2addr v4, v5

    iget v5, p0, Lcom/sonymobile/systemui/uicomponents/Button;->mPadBottom:F

    add-float v0, v4, v5

    .line 265
    .local v0, "bottom":F
    cmpl-float v4, p1, v1

    if-ltz v4, :cond_0

    cmpl-float v4, p2, v3

    if-ltz v4, :cond_0

    cmpg-float v4, p1, v2

    if-gtz v4, :cond_0

    cmpg-float v4, p2, v0

    if-gtz v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public abstract onClick(FF)V
.end method

.method public onPress(FF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 275
    return-void
.end method

.method public onRelease(FF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 284
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x0

    .line 161
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 162
    .local v2, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 163
    .local v3, "y":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 206
    :cond_0
    :goto_0
    iget-boolean v4, p0, Lcom/sonymobile/systemui/uicomponents/Button;->mActive:Z

    return v4

    .line 165
    :pswitch_0
    invoke-virtual {p0, v2, v3}, Lcom/sonymobile/systemui/uicomponents/Button;->containsTouch(FF)Z

    move-result v4

    iput-boolean v4, p0, Lcom/sonymobile/systemui/uicomponents/Button;->mActive:Z

    .line 166
    iget-boolean v4, p0, Lcom/sonymobile/systemui/uicomponents/Button;->mActive:Z

    if-eqz v4, :cond_0

    .line 167
    iput v2, p0, Lcom/sonymobile/systemui/uicomponents/Button;->mPressedX:F

    .line 168
    iput v3, p0, Lcom/sonymobile/systemui/uicomponents/Button;->mPressedY:F

    .line 169
    iget v4, p0, Lcom/sonymobile/systemui/uicomponents/Component;->mScreenX:I

    int-to-float v4, v4

    sub-float v4, v2, v4

    iget v5, p0, Lcom/sonymobile/systemui/uicomponents/Component;->mScreenY:I

    int-to-float v5, v5

    sub-float v5, v3, v5

    const/4 v6, 0x1

    invoke-virtual {p0, v4, v5, v6}, Lcom/sonymobile/systemui/uicomponents/Button;->setPressed(FFZ)V

    goto :goto_0

    .line 173
    :pswitch_1
    iget-boolean v4, p0, Lcom/sonymobile/systemui/uicomponents/Button;->mActive:Z

    if-eqz v4, :cond_0

    .line 174
    iget v4, p0, Lcom/sonymobile/systemui/uicomponents/Button;->mTouchSlop2:I

    if-ltz v4, :cond_1

    .line 175
    iget v4, p0, Lcom/sonymobile/systemui/uicomponents/Button;->mPressedX:F

    sub-float v0, v2, v4

    .line 176
    .local v0, "dx":F
    iget v4, p0, Lcom/sonymobile/systemui/uicomponents/Button;->mPressedY:F

    sub-float v1, v3, v4

    .line 177
    .local v1, "dy":F
    mul-float v4, v0, v0

    mul-float v5, v1, v1

    add-float/2addr v4, v5

    iget v5, p0, Lcom/sonymobile/systemui/uicomponents/Button;->mTouchSlop2:I

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_0

    .line 178
    iput-boolean v6, p0, Lcom/sonymobile/systemui/uicomponents/Button;->mActive:Z

    .line 179
    iget v4, p0, Lcom/sonymobile/systemui/uicomponents/Component;->mScreenX:I

    int-to-float v4, v4

    sub-float v4, v2, v4

    iget v5, p0, Lcom/sonymobile/systemui/uicomponents/Component;->mScreenY:I

    int-to-float v5, v5

    sub-float v5, v3, v5

    invoke-virtual {p0, v4, v5, v6}, Lcom/sonymobile/systemui/uicomponents/Button;->setPressed(FFZ)V

    goto :goto_0

    .line 182
    .end local v0    # "dx":F
    .end local v1    # "dy":F
    :cond_1
    invoke-virtual {p0, v2, v3}, Lcom/sonymobile/systemui/uicomponents/Button;->containsTouch(FF)Z

    move-result v4

    invoke-virtual {p0, v2, v3, v4}, Lcom/sonymobile/systemui/uicomponents/Button;->setPressed(FFZ)V

    goto :goto_0

    .line 187
    :pswitch_2
    iget-boolean v4, p0, Lcom/sonymobile/systemui/uicomponents/Button;->mActive:Z

    if-eqz v4, :cond_0

    .line 188
    iput-boolean v6, p0, Lcom/sonymobile/systemui/uicomponents/Button;->mPressed:Z

    .line 189
    invoke-virtual {p0, v2, v3}, Lcom/sonymobile/systemui/uicomponents/Button;->containsTouch(FF)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 190
    iget v4, p0, Lcom/sonymobile/systemui/uicomponents/Component;->mScreenX:I

    int-to-float v4, v4

    sub-float v4, v2, v4

    iget v5, p0, Lcom/sonymobile/systemui/uicomponents/Component;->mScreenY:I

    int-to-float v5, v5

    sub-float v5, v3, v5

    invoke-virtual {p0, v4, v5}, Lcom/sonymobile/systemui/uicomponents/Button;->onClick(FF)V

    .line 191
    iget-boolean v4, p0, Lcom/sonymobile/systemui/uicomponents/Button;->mSkipReleaseOnClick:Z

    if-nez v4, :cond_0

    .line 192
    iget v4, p0, Lcom/sonymobile/systemui/uicomponents/Component;->mScreenX:I

    int-to-float v4, v4

    sub-float v4, v2, v4

    iget v5, p0, Lcom/sonymobile/systemui/uicomponents/Component;->mScreenY:I

    int-to-float v5, v5

    sub-float v5, v3, v5

    invoke-virtual {p0, v4, v5}, Lcom/sonymobile/systemui/uicomponents/Button;->onRelease(FF)V

    goto :goto_0

    .line 195
    :cond_2
    iget v4, p0, Lcom/sonymobile/systemui/uicomponents/Component;->mScreenX:I

    int-to-float v4, v4

    sub-float v4, v2, v4

    iget v5, p0, Lcom/sonymobile/systemui/uicomponents/Component;->mScreenY:I

    int-to-float v5, v5

    sub-float v5, v3, v5

    invoke-virtual {p0, v4, v5}, Lcom/sonymobile/systemui/uicomponents/Button;->onRelease(FF)V

    goto/16 :goto_0

    .line 200
    :pswitch_3
    iget-boolean v4, p0, Lcom/sonymobile/systemui/uicomponents/Button;->mActive:Z

    if-eqz v4, :cond_0

    .line 201
    iget v4, p0, Lcom/sonymobile/systemui/uicomponents/Component;->mScreenX:I

    int-to-float v4, v4

    sub-float v4, v2, v4

    iget v5, p0, Lcom/sonymobile/systemui/uicomponents/Component;->mScreenY:I

    int-to-float v5, v5

    sub-float v5, v3, v5

    invoke-virtual {p0, v4, v5, v6}, Lcom/sonymobile/systemui/uicomponents/Button;->setPressed(FFZ)V

    goto/16 :goto_0

    .line 163
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public setPressed(FFZ)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "pressed"    # Z

    .prologue
    .line 233
    iget-boolean v0, p0, Lcom/sonymobile/systemui/uicomponents/Button;->mPressed:Z

    if-eq p3, v0, :cond_0

    .line 234
    iput-boolean p3, p0, Lcom/sonymobile/systemui/uicomponents/Button;->mPressed:Z

    .line 235
    if-eqz p3, :cond_1

    .line 236
    invoke-virtual {p0, p1, p2}, Lcom/sonymobile/systemui/uicomponents/Button;->onPress(FF)V

    .line 241
    :cond_0
    :goto_0
    return-void

    .line 238
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/sonymobile/systemui/uicomponents/Button;->onRelease(FF)V

    goto :goto_0
.end method

.method public setTouchSlop(I)V
    .locals 0
    .param p1, "touchSlop"    # I

    .prologue
    .line 128
    if-gez p1, :cond_0

    .end local p1    # "touchSlop":I
    :goto_0
    iput p1, p0, Lcom/sonymobile/systemui/uicomponents/Button;->mTouchSlop2:I

    .line 129
    return-void

    .line 128
    .restart local p1    # "touchSlop":I
    :cond_0
    mul-int/2addr p1, p1

    goto :goto_0
.end method
