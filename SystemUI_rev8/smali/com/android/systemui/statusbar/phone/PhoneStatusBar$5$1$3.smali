.class Lcom/android/systemui/statusbar/phone/PhoneStatusBar$5$1$3;
.super Ljava/lang/Object;
.source "PhoneStatusBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBar$5$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$5$1;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar$5$1;)V
    .locals 0

    .prologue
    .line 2195
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$5$1$3;->this$2:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$5$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2197
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$5$1$3;->this$2:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$5$1;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$5$1;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$5;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$5;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateCollapse(Z)V

    .line 2198
    return-void
.end method
