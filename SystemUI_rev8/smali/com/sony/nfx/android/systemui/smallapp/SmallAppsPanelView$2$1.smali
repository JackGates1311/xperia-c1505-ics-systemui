.class Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$2$1;
.super Ljava/lang/Object;
.source "SmallAppsPanelView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$2;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$2;


# direct methods
.method constructor <init>(Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$2;)V
    .locals 0

    .prologue
    .line 588
    iput-object p1, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$2$1;->this$1:Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 591
    iget-object v3, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$2$1;->this$1:Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$2;

    iget-object v3, v3, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$2;->info:Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$SmallAppInfo;

    iget v3, v3, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$SmallAppInfo;->kind:I

    if-nez v3, :cond_1

    .line 592
    iget-object v3, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$2$1;->this$1:Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$2;

    iget-object v3, v3, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$2;->this$0:Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;

    invoke-static {v3}, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->access$300(Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;)Lcom/android/systemui/statusbar/StatusBar;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$2$1;->this$1:Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$2;

    iget-object v3, v3, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$2;->this$0:Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;

    invoke-static {v3}, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->access$300(Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;)Lcom/android/systemui/statusbar/StatusBar;

    move-result-object v3

    instance-of v3, v3, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    if-eqz v3, :cond_0

    .line 593
    iget-object v3, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$2$1;->this$1:Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$2;

    iget-object v3, v3, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$2;->this$0:Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;

    invoke-static {v3}, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->access$300(Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;)Lcom/android/systemui/statusbar/StatusBar;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    iget-object v4, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$2$1;->this$1:Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$2;

    iget-object v4, v4, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$2;->info:Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$SmallAppInfo;

    iget-object v4, v4, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$SmallAppInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->startSmallApplication(Landroid/content/Intent;)V

    .line 605
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$2$1;->this$1:Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$2;

    iget-object v3, v3, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$2;->this$0:Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;

    invoke-static {v3}, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->access$400(Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;)V

    .line 606
    return-void

    .line 595
    :cond_1
    iget-object v3, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$2$1;->this$1:Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$2;

    iget-object v3, v3, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$2;->info:Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$SmallAppInfo;

    iget v3, v3, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$SmallAppInfo;->kind:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 596
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 597
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "com.sony.nfx.app.smallappwidget"

    .line 598
    .local v2, "pkg":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".SmallAppWidgetHostService"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 599
    .local v0, "cls":Ljava/lang/String;
    new-instance v3, Landroid/content/ComponentName;

    invoke-direct {v3, v2, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 600
    const-string v3, "_id"

    iget-object v4, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$2$1;->this$1:Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$2;

    iget-object v4, v4, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$2;->info:Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$SmallAppInfo;

    iget v4, v4, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$SmallAppInfo;->id:I

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 601
    const-string v3, "component"

    iget-object v4, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$2$1;->this$1:Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$2;

    iget-object v4, v4, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$2;->info:Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$SmallAppInfo;

    iget-object v4, v4, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$SmallAppInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 602
    const-string v3, "cmd"

    const-string v4, "start"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 603
    iget-object v3, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$2$1;->this$1:Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$2;

    iget-object v3, v3, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$2;->this$0:Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;

    invoke-virtual {v3}, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method
