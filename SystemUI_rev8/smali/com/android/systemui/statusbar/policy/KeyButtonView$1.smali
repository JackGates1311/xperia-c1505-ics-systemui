.class Lcom/android/systemui/statusbar/policy/KeyButtonView$1;
.super Ljava/lang/Object;
.source "KeyButtonView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/KeyButtonView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/KeyButtonView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/KeyButtonView;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView$1;->this$0:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView$1;->this$0:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView$1;->this$0:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    iget v0, v0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mCode:I

    if-eqz v0, :cond_1

    .line 64
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView$1;->this$0:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    const/4 v1, 0x0

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->sendEvent(II)V

    .line 65
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView$1;->this$0:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->sendAccessibilityEvent(I)V

    .line 71
    :cond_0
    :goto_0
    return-void

    .line 68
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView$1;->this$0:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->performLongClick()Z

    goto :goto_0
.end method
