.class Lcom/sony/nfx/android/systemui/smallapp/EditLabel$2;
.super Ljava/lang/Object;
.source "EditLabel.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 117
    iput-object p1, p0, Lcom/sony/nfx/android/systemui/smallapp/EditLabel$2;->this$0:Lcom/sony/nfx/android/systemui/smallapp/EditLabel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    const/4 v7, 0x1

    .line 120
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 121
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "label"

    iget-object v2, p0, Lcom/sony/nfx/android/systemui/smallapp/EditLabel$2;->this$0:Lcom/sony/nfx/android/systemui/smallapp/EditLabel;

    invoke-static {v2}, Lcom/sony/nfx/android/systemui/smallapp/EditLabel;->access$100(Lcom/sony/nfx/android/systemui/smallapp/EditLabel;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    iget-object v1, p0, Lcom/sony/nfx/android/systemui/smallapp/EditLabel$2;->this$0:Lcom/sony/nfx/android/systemui/smallapp/EditLabel;

    invoke-virtual {v1}, Lcom/sony/nfx/android/systemui/smallapp/EditLabel;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/sony/nfx/android/systemui/smallapp/EditLabel$2;->this$0:Lcom/sony/nfx/android/systemui/smallapp/EditLabel;

    invoke-static {v2}, Lcom/sony/nfx/android/systemui/smallapp/EditLabel;->access$200(Lcom/sony/nfx/android/systemui/smallapp/EditLabel;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "_id = ?"

    new-array v4, v7, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/sony/nfx/android/systemui/smallapp/EditLabel$2;->this$0:Lcom/sony/nfx/android/systemui/smallapp/EditLabel;

    invoke-static {v6}, Lcom/sony/nfx/android/systemui/smallapp/EditLabel;->access$300(Lcom/sony/nfx/android/systemui/smallapp/EditLabel;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 129
    iget-object v1, p0, Lcom/sony/nfx/android/systemui/smallapp/EditLabel$2;->this$0:Lcom/sony/nfx/android/systemui/smallapp/EditLabel;

    invoke-static {v1, v7}, Lcom/sony/nfx/android/systemui/smallapp/EditLabel;->access$402(Lcom/sony/nfx/android/systemui/smallapp/EditLabel;Z)Z

    .line 130
    iget-object v1, p0, Lcom/sony/nfx/android/systemui/smallapp/EditLabel$2;->this$0:Lcom/sony/nfx/android/systemui/smallapp/EditLabel;

    invoke-virtual {v1}, Lcom/sony/nfx/android/systemui/smallapp/EditLabel;->finish()V

    .line 131
    return-void
.end method
