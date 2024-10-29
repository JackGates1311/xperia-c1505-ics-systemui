.class Lcom/sony/nfx/android/systemui/statusbar/SubNetworkController$1;
.super Landroid/telephony/PhoneStateListener;
.source "SubNetworkController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sony/nfx/android/systemui/statusbar/SubNetworkController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sony/nfx/android/systemui/statusbar/SubNetworkController;


# direct methods
.method constructor <init>(Lcom/sony/nfx/android/systemui/statusbar/SubNetworkController;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/sony/nfx/android/systemui/statusbar/SubNetworkController$1;->this$0:Lcom/sony/nfx/android/systemui/statusbar/SubNetworkController;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 1
    .param p1, "state"    # Landroid/telephony/ServiceState;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/sony/nfx/android/systemui/statusbar/SubNetworkController$1;->this$0:Lcom/sony/nfx/android/systemui/statusbar/SubNetworkController;

    invoke-static {v0, p1}, Lcom/sony/nfx/android/systemui/statusbar/SubNetworkController;->access$002(Lcom/sony/nfx/android/systemui/statusbar/SubNetworkController;Landroid/telephony/ServiceState;)Landroid/telephony/ServiceState;

    .line 75
    iget-object v0, p0, Lcom/sony/nfx/android/systemui/statusbar/SubNetworkController$1;->this$0:Lcom/sony/nfx/android/systemui/statusbar/SubNetworkController;

    invoke-static {v0}, Lcom/sony/nfx/android/systemui/statusbar/SubNetworkController;->access$100(Lcom/sony/nfx/android/systemui/statusbar/SubNetworkController;)V

    .line 76
    return-void
.end method
