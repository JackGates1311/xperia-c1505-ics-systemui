.class Lcom/sony/nfx/android/systemui/smallapp/EditLabel$3;
.super Ljava/lang/Object;
.source "EditLabel.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sony/nfx/android/systemui/smallapp/EditLabel;
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
    .line 134
    iput-object p1, p0, Lcom/sony/nfx/android/systemui/smallapp/EditLabel$3;->this$0:Lcom/sony/nfx/android/systemui/smallapp/EditLabel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 11
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    const/4 v10, 0x1

    .line 137
    iget-object v4, p0, Lcom/sony/nfx/android/systemui/smallapp/EditLabel$3;->this$0:Lcom/sony/nfx/android/systemui/smallapp/EditLabel;

    invoke-static {v4}, Lcom/sony/nfx/android/systemui/smallapp/EditLabel;->access$500(Lcom/sony/nfx/android/systemui/smallapp/EditLabel;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 138
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 139
    .local v3, "values":Landroid/content/ContentValues;
    const-string v4, "label"

    iget-object v5, p0, Lcom/sony/nfx/android/systemui/smallapp/EditLabel$3;->this$0:Lcom/sony/nfx/android/systemui/smallapp/EditLabel;

    invoke-static {v5}, Lcom/sony/nfx/android/systemui/smallapp/EditLabel;->access$100(Lcom/sony/nfx/android/systemui/smallapp/EditLabel;)Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    iget-object v4, p0, Lcom/sony/nfx/android/systemui/smallapp/EditLabel$3;->this$0:Lcom/sony/nfx/android/systemui/smallapp/EditLabel;

    invoke-virtual {v4}, Lcom/sony/nfx/android/systemui/smallapp/EditLabel;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, p0, Lcom/sony/nfx/android/systemui/smallapp/EditLabel$3;->this$0:Lcom/sony/nfx/android/systemui/smallapp/EditLabel;

    invoke-static {v5}, Lcom/sony/nfx/android/systemui/smallapp/EditLabel;->access$200(Lcom/sony/nfx/android/systemui/smallapp/EditLabel;)Landroid/net/Uri;

    move-result-object v5

    const-string v6, "_id = ?"

    new-array v7, v10, [Ljava/lang/String;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/sony/nfx/android/systemui/smallapp/EditLabel$3;->this$0:Lcom/sony/nfx/android/systemui/smallapp/EditLabel;

    invoke-static {v9}, Lcom/sony/nfx/android/systemui/smallapp/EditLabel;->access$300(Lcom/sony/nfx/android/systemui/smallapp/EditLabel;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 147
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 148
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "com.sony.nfx.app.smallappwidget"

    .line 149
    .local v2, "pkg":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".SmallAppWidgetHostService"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 150
    .local v0, "cls":Ljava/lang/String;
    new-instance v4, Landroid/content/ComponentName;

    invoke-direct {v4, v2, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 151
    const-string v4, "_id"

    iget-object v5, p0, Lcom/sony/nfx/android/systemui/smallapp/EditLabel$3;->this$0:Lcom/sony/nfx/android/systemui/smallapp/EditLabel;

    invoke-static {v5}, Lcom/sony/nfx/android/systemui/smallapp/EditLabel;->access$300(Lcom/sony/nfx/android/systemui/smallapp/EditLabel;)I

    move-result v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 152
    const-string v4, "cmd"

    const-string v5, "del"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 153
    iget-object v4, p0, Lcom/sony/nfx/android/systemui/smallapp/EditLabel$3;->this$0:Lcom/sony/nfx/android/systemui/smallapp/EditLabel;

    invoke-virtual {v4, v1}, Lcom/sony/nfx/android/systemui/smallapp/EditLabel;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 155
    .end local v0    # "cls":Ljava/lang/String;
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "pkg":Ljava/lang/String;
    .end local v3    # "values":Landroid/content/ContentValues;
    :cond_0
    iget-object v4, p0, Lcom/sony/nfx/android/systemui/smallapp/EditLabel$3;->this$0:Lcom/sony/nfx/android/systemui/smallapp/EditLabel;

    invoke-static {v4, v10}, Lcom/sony/nfx/android/systemui/smallapp/EditLabel;->access$402(Lcom/sony/nfx/android/systemui/smallapp/EditLabel;Z)Z

    .line 156
    iget-object v4, p0, Lcom/sony/nfx/android/systemui/smallapp/EditLabel$3;->this$0:Lcom/sony/nfx/android/systemui/smallapp/EditLabel;

    invoke-virtual {v4}, Lcom/sony/nfx/android/systemui/smallapp/EditLabel;->finish()V

    .line 157
    return-void
.end method
