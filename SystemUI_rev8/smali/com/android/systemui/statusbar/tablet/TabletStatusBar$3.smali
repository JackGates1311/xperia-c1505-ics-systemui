.class Lcom/android/systemui/statusbar/tablet/TabletStatusBar$3;
.super Ljava/lang/Object;
.source "TabletStatusBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->showCompatibilityHelp()V
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
    .line 1155
    iput-object p1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$3;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1158
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$3;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    invoke-static {v1}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->access$900(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)V

    .line 1159
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$3;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    iget-object v1, v1, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/Prefs;->edit(Landroid/content/Context;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1160
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "shown_compat_mode_help"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1161
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1162
    return-void
.end method
