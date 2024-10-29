.class Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SmallAppsPanelView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->animateClickFeedback(Landroid/view/View;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;

.field final synthetic val$r:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 615
    iput-object p1, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$3;->this$0:Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;

    iput-object p2, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$3;->val$r:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 617
    iget-object v0, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$3;->val$r:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 618
    return-void
.end method
