.class Lcom/android/systemui/statusbar/tablet/NotificationPanel$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "NotificationPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/tablet/NotificationPanel;->swapPanels()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

.field final synthetic val$toHide:Landroid/view/View;

.field final synthetic val$toShow:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/tablet/NotificationPanel;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 275
    iput-object p1, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel$4;->this$0:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    iput-object p2, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel$4;->val$toHide:Landroid/view/View;

    iput-object p3, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel$4;->val$toShow:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 5
    .param p1, "_a"    # Landroid/animation/Animator;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 278
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel$4;->val$toHide:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 279
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel$4;->val$toShow:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 280
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel$4;->this$0:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    iget v0, v0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mNotificationCount:I

    if-nez v0, :cond_0

    .line 282
    iget-object v3, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel$4;->this$0:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel$4;->val$toShow:Landroid/view/View;

    iget-object v4, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel$4;->this$0:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    iget-object v4, v4, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mSettingsView:Landroid/view/View;

    if-ne v0, v4, :cond_4

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0, v1}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->setContentFrameVisible(ZZ)V

    .line 285
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel$4;->val$toShow:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 286
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel$4;->val$toShow:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel$4;->this$0:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    iget-object v1, v1, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mSettingsView:Landroid/view/View;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel$4;->this$0:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    iget v0, v0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mNotificationCount:I

    if-lez v0, :cond_2

    .line 287
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel$4;->val$toShow:Landroid/view/View;

    const-string v1, "alpha"

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 292
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel$4;->val$toHide:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel$4;->this$0:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    iget-object v1, v1, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mSettingsView:Landroid/view/View;

    if-ne v0, v1, :cond_3

    .line 293
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel$4;->this$0:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->removeSettingsView()V

    .line 296
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel$4;->this$0:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->updateClearButton()V

    .line 297
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel$4;->this$0:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->updatePanelModeButtons()V

    .line 298
    return-void

    :cond_4
    move v0, v2

    .line 282
    goto :goto_0

    .line 287
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
