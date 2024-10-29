.class Lcom/sony/nfx/android/systemui/smallapp/EditLabel$1;
.super Ljava/lang/Object;
.source "EditLabel.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sony/nfx/android/systemui/smallapp/EditLabel;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sony/nfx/android/systemui/smallapp/EditLabel;


# direct methods
.method constructor <init>(Lcom/sony/nfx/android/systemui/smallapp/EditLabel;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/sony/nfx/android/systemui/smallapp/EditLabel$1;->this$0:Lcom/sony/nfx/android/systemui/smallapp/EditLabel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 106
    iget-object v1, p0, Lcom/sony/nfx/android/systemui/smallapp/EditLabel$1;->this$0:Lcom/sony/nfx/android/systemui/smallapp/EditLabel;

    invoke-static {v1}, Lcom/sony/nfx/android/systemui/smallapp/EditLabel;->access$000(Lcom/sony/nfx/android/systemui/smallapp/EditLabel;)Landroid/app/AlertDialog;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 107
    .local v0, "botton":Landroid/widget/Button;
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 108
    return-void

    .line 107
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 102
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 98
    return-void
.end method
