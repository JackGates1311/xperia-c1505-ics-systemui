.class public abstract Lcom/sonymobile/systemui/statusbar/tools/ToolsService;
.super Ljava/lang/Object;
.source "ToolsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/systemui/statusbar/tools/ToolsService$ToolsServiceListener;
    }
.end annotation


# instance fields
.field protected final mContext:Landroid/content/Context;

.field protected mToolsListener:Lcom/sonymobile/systemui/statusbar/tools/ToolsService$ToolsServiceListener;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsService;->mContext:Landroid/content/Context;

    .line 20
    return-void
.end method


# virtual methods
.method protected final notifyStateChanged(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 57
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsService;->mToolsListener:Lcom/sonymobile/systemui/statusbar/tools/ToolsService$ToolsServiceListener;

    .line 58
    .local v0, "listener":Lcom/sonymobile/systemui/statusbar/tools/ToolsService$ToolsServiceListener;
    if-eqz v0, :cond_0

    .line 59
    const/4 v1, -0x1

    if-eq p1, v1, :cond_1

    .line 60
    invoke-interface {v0, p1}, Lcom/sonymobile/systemui/statusbar/tools/ToolsService$ToolsServiceListener;->onStateChanged(I)V

    .line 65
    :cond_0
    :goto_0
    return-void

    .line 62
    :cond_1
    invoke-interface {v0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsService$ToolsServiceListener;->onError()V

    goto :goto_0
.end method

.method protected final notifyStateChanging(I)V
    .locals 1
    .param p1, "toState"    # I

    .prologue
    .line 73
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsService;->mToolsListener:Lcom/sonymobile/systemui/statusbar/tools/ToolsService$ToolsServiceListener;

    .line 74
    .local v0, "listener":Lcom/sonymobile/systemui/statusbar/tools/ToolsService$ToolsServiceListener;
    if-eqz v0, :cond_0

    .line 75
    invoke-interface {v0, p1}, Lcom/sonymobile/systemui/statusbar/tools/ToolsService$ToolsServiceListener;->onChangingTo(I)V

    .line 77
    :cond_0
    return-void
.end method

.method public setListener(Lcom/sonymobile/systemui/statusbar/tools/ToolsService$ToolsServiceListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sonymobile/systemui/statusbar/tools/ToolsService$ToolsServiceListener;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsService;->mToolsListener:Lcom/sonymobile/systemui/statusbar/tools/ToolsService$ToolsServiceListener;

    .line 49
    return-void
.end method

.method abstract start()V
.end method
