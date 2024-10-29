.class Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$1;
.super Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;
.source "ToolsMain.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->createSettingsShortcut()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;


# direct methods
.method constructor <init>(Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;Landroid/content/Context;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$1;->this$0:Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;

    invoke-direct {p0, p2}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onAction()V
    .locals 3

    .prologue
    .line 77
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$1;->this$0:Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;

    invoke-static {v0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->access$000(Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->access$100(Landroid/content/Context;)V

    .line 78
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$1;->this$0:Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;

    invoke-static {v0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->access$000(Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 80
    return-void
.end method
