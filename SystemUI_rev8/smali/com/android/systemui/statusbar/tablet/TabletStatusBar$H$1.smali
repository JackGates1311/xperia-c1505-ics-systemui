.class Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H$1;
.super Ljava/lang/Object;
.source "TabletStatusBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;)V
    .locals 0

    .prologue
    .line 670
    iput-object p1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H$1;->this$1:Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 672
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H$1;->this$1:Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;

    iget-object v1, v1, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    iget-object v1, v1, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/Prefs;->edit(Landroid/content/Context;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 673
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "do_not_disturb"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 674
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 675
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H$1;->this$1:Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;

    iget-object v1, v1, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->animateCollapse()V

    .line 676
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H$1;->this$1:Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;

    iget-object v1, v1, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->visibilityChanged(Z)V

    .line 677
    return-void
.end method
