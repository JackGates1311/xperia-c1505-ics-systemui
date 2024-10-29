.class Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$7;
.super Ljava/lang/Object;
.source "SmallAppsPanelView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->addContent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;


# direct methods
.method constructor <init>(Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;)V
    .locals 0

    .prologue
    .line 811
    iput-object p1, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$7;->this$0:Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 814
    packed-switch p2, :pswitch_data_0

    .line 829
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 830
    return-void

    .line 816
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 817
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x18000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 819
    const-string v1, "market://search?q=\"Small apps extension for Sony products\""

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 820
    iget-object v1, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$7;->this$0:Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;

    invoke-virtual {v1}, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 821
    iget-object v1, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$7;->this$0:Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;

    invoke-static {v1}, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->access$400(Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;)V

    goto :goto_0

    .line 824
    .end local v0    # "intent":Landroid/content/Intent;
    :pswitch_1
    iget-object v1, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$7;->this$0:Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;

    invoke-static {v1}, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->access$1500(Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;)V

    goto :goto_0

    .line 814
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
