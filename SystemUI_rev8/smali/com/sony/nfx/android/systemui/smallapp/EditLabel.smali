.class public Lcom/sony/nfx/android/systemui/smallapp/EditLabel;
.super Landroid/app/Activity;
.source "EditLabel.java"


# instance fields
.field private final EDIT_LABEL_DIALOG:I

.field private final KEY_EDIT:Ljava/lang/String;

.field private mAppWidgetDialog:Landroid/app/AlertDialog;

.field private mBuilder:Landroid/app/AlertDialog$Builder;

.field private mContentProviderUri:Landroid/net/Uri;

.field private mContext:Landroid/content/Context;

.field private mId:I

.field private mIsNewWidget:Z

.field private mIsRet:Z

.field private mLabel:Landroid/widget/EditText;

.field private mOnDialogCancelListner:Landroid/content/DialogInterface$OnCancelListener;

.field private mOnDialogClickListner:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 41
    const-string v0, "key_edit"

    iput-object v0, p0, Lcom/sony/nfx/android/systemui/smallapp/EditLabel;->KEY_EDIT:Ljava/lang/String;

    .line 42
    const/4 v0, 0x1

    iput v0, p0, Lcom/sony/nfx/android/systemui/smallapp/EditLabel;->EDIT_LABEL_DIALOG:I

    .line 117
    new-instance v0, Lcom/sony/nfx/android/systemui/smallapp/EditLabel$2;

    invoke-direct {v0, p0}, Lcom/sony/nfx/android/systemui/smallapp/EditLabel$2;-><init>(Lcom/sony/nfx/android/systemui/smallapp/EditLabel;)V

    iput-object v0, p0, Lcom/sony/nfx/android/systemui/smallapp/EditLabel;->mOnDialogClickListner:Landroid/content/DialogInterface$OnClickListener;

    .line 134
    new-instance v0, Lcom/sony/nfx/android/systemui/smallapp/EditLabel$3;

    invoke-direct {v0, p0}, Lcom/sony/nfx/android/systemui/smallapp/EditLabel$3;-><init>(Lcom/sony/nfx/android/systemui/smallapp/EditLabel;)V

    iput-object v0, p0, Lcom/sony/nfx/android/systemui/smallapp/EditLabel;->mOnDialogCancelListner:Landroid/content/DialogInterface$OnCancelListener;

    return-void
.end method

.method static synthetic access$000(Lcom/sony/nfx/android/systemui/smallapp/EditLabel;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/sony/nfx/android/systemui/smallapp/EditLabel;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/sony/nfx/android/systemui/smallapp/EditLabel;->mAppWidgetDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sony/nfx/android/systemui/smallapp/EditLabel;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/sony/nfx/android/systemui/smallapp/EditLabel;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/sony/nfx/android/systemui/smallapp/EditLabel;->mLabel:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sony/nfx/android/systemui/smallapp/EditLabel;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/sony/nfx/android/systemui/smallapp/EditLabel;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/sony/nfx/android/systemui/smallapp/EditLabel;->mContentProviderUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sony/nfx/android/systemui/smallapp/EditLabel;)I
    .locals 1
    .param p0, "x0"    # Lcom/sony/nfx/android/systemui/smallapp/EditLabel;

    .prologue
    .line 30
    iget v0, p0, Lcom/sony/nfx/android/systemui/smallapp/EditLabel;->mId:I

    return v0
.end method

.method static synthetic access$402(Lcom/sony/nfx/android/systemui/smallapp/EditLabel;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sony/nfx/android/systemui/smallapp/EditLabel;
    .param p1, "x1"    # Z

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/sony/nfx/android/systemui/smallapp/EditLabel;->mIsRet:Z

    return p1
.end method

.method static synthetic access$500(Lcom/sony/nfx/android/systemui/smallapp/EditLabel;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sony/nfx/android/systemui/smallapp/EditLabel;

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/sony/nfx/android/systemui/smallapp/EditLabel;->mIsNewWidget:Z

    return v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x0

    .line 48
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    iput-object p0, p0, Lcom/sony/nfx/android/systemui/smallapp/EditLabel;->mContext:Landroid/content/Context;

    .line 51
    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Lcom/sony/nfx/android/systemui/smallapp/EditLabel;->requestWindowFeature(I)Z

    .line 52
    invoke-virtual {p0}, Lcom/sony/nfx/android/systemui/smallapp/EditLabel;->getWindow()Landroid/view/Window;

    move-result-object v6

    new-instance v7, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v7, v8}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v6, v7}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 54
    const-string v6, "layout_inflater"

    invoke-virtual {p0, v6}, Lcom/sony/nfx/android/systemui/smallapp/EditLabel;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    .line 55
    .local v4, "mInflater":Landroid/view/LayoutInflater;
    const v6, 0x7f030009

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 56
    .local v5, "textEntryView":Landroid/view/View;
    const v6, 0x7f0e0024

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    iput-object v6, p0, Lcom/sony/nfx/android/systemui/smallapp/EditLabel;->mLabel:Landroid/widget/EditText;

    .line 57
    invoke-virtual {p0}, Lcom/sony/nfx/android/systemui/smallapp/EditLabel;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 58
    .local v1, "intent":Landroid/content/Intent;
    const-string v6, "original_label"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 59
    .local v2, "label":Ljava/lang/String;
    iget-object v6, p0, Lcom/sony/nfx/android/systemui/smallapp/EditLabel;->mLabel:Landroid/widget/EditText;

    invoke-virtual {v6, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 61
    const-string v6, "_id"

    const/4 v7, -0x1

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/sony/nfx/android/systemui/smallapp/EditLabel;->mId:I

    .line 62
    const-string v6, "add_new_widget"

    invoke-virtual {v1, v6, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/sony/nfx/android/systemui/smallapp/EditLabel;->mIsNewWidget:Z

    .line 64
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-direct {v6, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/sony/nfx/android/systemui/smallapp/EditLabel;->mBuilder:Landroid/app/AlertDialog$Builder;

    .line 65
    iget-object v6, p0, Lcom/sony/nfx/android/systemui/smallapp/EditLabel;->mBuilder:Landroid/app/AlertDialog$Builder;

    const v7, 0x7f080019

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 66
    iget-object v6, p0, Lcom/sony/nfx/android/systemui/smallapp/EditLabel;->mBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v6, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 68
    invoke-virtual {p0}, Lcom/sony/nfx/android/systemui/smallapp/EditLabel;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x104000a

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 69
    .local v0, "buttonText":Ljava/lang/String;
    iget-object v6, p0, Lcom/sony/nfx/android/systemui/smallapp/EditLabel;->mBuilder:Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Lcom/sony/nfx/android/systemui/smallapp/EditLabel;->mOnDialogClickListner:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v6, v0, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 71
    invoke-virtual {p0}, Lcom/sony/nfx/android/systemui/smallapp/EditLabel;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 72
    .local v3, "lp":Landroid/view/WindowManager$LayoutParams;
    const v6, 0x40020

    iput v6, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 74
    invoke-virtual {p0}, Lcom/sony/nfx/android/systemui/smallapp/EditLabel;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 76
    const-string v6, "content://com.sony.nfx.android.systemui.smallapp.appinfoprovider"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    iput-object v6, p0, Lcom/sony/nfx/android/systemui/smallapp/EditLabel;->mContentProviderUri:Landroid/net/Uri;

    .line 77
    return-void
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/sony/nfx/android/systemui/smallapp/EditLabel;->mBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sony/nfx/android/systemui/smallapp/EditLabel;->mAppWidgetDialog:Landroid/app/AlertDialog;

    .line 95
    iget-object v0, p0, Lcom/sony/nfx/android/systemui/smallapp/EditLabel;->mLabel:Landroid/widget/EditText;

    new-instance v1, Lcom/sony/nfx/android/systemui/smallapp/EditLabel$1;

    invoke-direct {v1, p0}, Lcom/sony/nfx/android/systemui/smallapp/EditLabel$1;-><init>(Lcom/sony/nfx/android/systemui/smallapp/EditLabel;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 110
    iget-object v0, p0, Lcom/sony/nfx/android/systemui/smallapp/EditLabel;->mAppWidgetDialog:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/sony/nfx/android/systemui/smallapp/EditLabel;->mOnDialogCancelListner:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 111
    iget-object v0, p0, Lcom/sony/nfx/android/systemui/smallapp/EditLabel;->mAppWidgetDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 114
    iget-object v0, p0, Lcom/sony/nfx/android/systemui/smallapp/EditLabel;->mAppWidgetDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 162
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 163
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sony.nfx.intent.action.SMALLAPP_WIDGET_EDIT_LABEL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 164
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "label_ret"

    iget-boolean v2, p0, Lcom/sony/nfx/android/systemui/smallapp/EditLabel;->mIsRet:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 165
    invoke-virtual {p0, v0}, Lcom/sony/nfx/android/systemui/smallapp/EditLabel;->sendBroadcast(Landroid/content/Intent;)V

    .line 166
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sony/nfx/android/systemui/smallapp/EditLabel;->mIsNewWidget:Z

    .line 167
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 87
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 88
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sony/nfx/android/systemui/smallapp/EditLabel;->dismissDialog(I)V

    .line 89
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 171
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 172
    iget-object v0, p0, Lcom/sony/nfx/android/systemui/smallapp/EditLabel;->mLabel:Landroid/widget/EditText;

    const-string v1, "key_edit"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 173
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 81
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 82
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sony/nfx/android/systemui/smallapp/EditLabel;->showDialog(I)V

    .line 83
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 177
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 178
    iget-object v1, p0, Lcom/sony/nfx/android/systemui/smallapp/EditLabel;->mLabel:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 179
    .local v0, "editLabel":Ljava/lang/String;
    const-string v1, "key_edit"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    return-void
.end method
