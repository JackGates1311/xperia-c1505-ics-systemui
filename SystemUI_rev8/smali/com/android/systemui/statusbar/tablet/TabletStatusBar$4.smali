.class Lcom/android/systemui/statusbar/tablet/TabletStatusBar$4;
.super Ljava/lang/Object;
.source "TabletStatusBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/tablet/TabletStatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)V
    .locals 0

    .prologue
    .line 1272
    iput-object p1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$4;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1274
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$4;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mRecentButton:Landroid/view/View;

    if-ne p1, v0, :cond_1

    .line 1275
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$4;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->onClickRecentButton()V

    .line 1281
    :cond_0
    :goto_0
    return-void

    .line 1276
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$4;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mInputMethodSwitchButton:Lcom/android/systemui/statusbar/tablet/InputMethodButton;

    if-ne p1, v0, :cond_2

    .line 1277
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$4;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->onClickInputMethodSwitchButton()V

    goto :goto_0

    .line 1278
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$4;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mCompatModeButton:Lcom/android/systemui/statusbar/policy/CompatModeButton;

    if-ne p1, v0, :cond_0

    .line 1279
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$4;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->onClickCompatModeButton()V

    goto :goto_0
.end method
