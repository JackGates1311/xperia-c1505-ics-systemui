.class Lcom/sony/nfx/android/systemui/statusbar/AttStatusBar$1;
.super Ljava/lang/Object;
.source "AttStatusBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sony/nfx/android/systemui/statusbar/AttStatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sony/nfx/android/systemui/statusbar/AttStatusBar;


# direct methods
.method constructor <init>(Lcom/sony/nfx/android/systemui/statusbar/AttStatusBar;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/sony/nfx/android/systemui/statusbar/AttStatusBar$1;->this$0:Lcom/sony/nfx/android/systemui/statusbar/AttStatusBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/sony/nfx/android/systemui/statusbar/AttStatusBar$1;->this$0:Lcom/sony/nfx/android/systemui/statusbar/AttStatusBar;

    iget-object v0, v0, Lcom/sony/nfx/android/systemui/statusbar/AttStatusBar;->mSyncButton:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/sony/nfx/android/systemui/statusbar/AttStatusBar$1;->this$0:Lcom/sony/nfx/android/systemui/statusbar/AttStatusBar;

    invoke-static {v0}, Lcom/sony/nfx/android/systemui/statusbar/AttStatusBar;->access$000(Lcom/sony/nfx/android/systemui/statusbar/AttStatusBar;)V

    .line 70
    :cond_0
    return-void
.end method
