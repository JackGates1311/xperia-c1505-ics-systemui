.class public Lcom/android/systemui/statusbar/tablet/InputMethodButton;
.super Landroid/widget/ImageView;
.source "InputMethodButton.java"


# instance fields
.field private mHardKeyboardAvailable:Z

.field private mIcon:Landroid/widget/ImageView;

.field private final mId:I

.field private final mImm:Landroid/view/inputmethod/InputMethodManager;

.field private mScreenLocked:Z

.field private mShowButton:Z

.field private mToken:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 56
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/tablet/InputMethodButton;->mShowButton:Z

    .line 49
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/tablet/InputMethodButton;->mScreenLocked:Z

    .line 59
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/InputMethodButton;->getId()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/tablet/InputMethodButton;->mId:I

    .line 61
    const-string v0, "input_method"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/tablet/InputMethodButton;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 62
    return-void
.end method

.method private loadInputMethodSelectorVisibility()I
    .locals 3

    .prologue
    .line 149
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/InputMethodButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "input_method_selector_visibility"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private needsToShowIMEButton()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 117
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/tablet/InputMethodButton;->mShowButton:Z

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/tablet/InputMethodButton;->mScreenLocked:Z

    if-eqz v3, :cond_2

    :cond_0
    move v1, v2

    .line 132
    :cond_1
    :goto_0
    :pswitch_0
    return v1

    .line 119
    :cond_2
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/tablet/InputMethodButton;->mHardKeyboardAvailable:Z

    if-nez v3, :cond_1

    .line 123
    invoke-direct {p0}, Lcom/android/systemui/statusbar/tablet/InputMethodButton;->loadInputMethodSelectorVisibility()I

    move-result v0

    .line 124
    .local v0, "visibility":I
    packed-switch v0, :pswitch_data_0

    move v1, v2

    .line 132
    goto :goto_0

    .line 126
    :pswitch_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/tablet/InputMethodButton;->needsToShowIMEButtonWhenVisibilityAuto()Z

    move-result v1

    goto :goto_0

    :pswitch_2
    move v1, v2

    .line 130
    goto :goto_0

    .line 124
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private needsToShowIMEButtonWhenVisibilityAuto()Z
    .locals 14

    .prologue
    .line 73
    iget-object v12, p0, Lcom/android/systemui/statusbar/tablet/InputMethodButton;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v12}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodList()Ljava/util/List;

    move-result-object v5

    .line 74
    .local v5, "imis":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    .line 75
    .local v0, "N":I
    const/4 v12, 0x2

    if-le v0, v12, :cond_0

    const/4 v12, 0x1

    .line 113
    :goto_0
    return v12

    .line 76
    :cond_0
    const/4 v12, 0x1

    if-ge v0, v12, :cond_1

    const/4 v12, 0x0

    goto :goto_0

    .line 77
    :cond_1
    const/4 v7, 0x0

    .line 78
    .local v7, "nonAuxCount":I
    const/4 v1, 0x0

    .line 79
    .local v1, "auxCount":I
    const/4 v8, 0x0

    .line 80
    .local v8, "nonAuxSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    const/4 v2, 0x0

    .line 81
    .local v2, "auxSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v0, :cond_5

    .line 82
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/InputMethodInfo;

    .line 83
    .local v4, "imi":Landroid/view/inputmethod/InputMethodInfo;
    iget-object v12, p0, Lcom/android/systemui/statusbar/tablet/InputMethodButton;->mImm:Landroid/view/inputmethod/InputMethodManager;

    const/4 v13, 0x1

    invoke-virtual {v12, v4, v13}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v11

    .line 85
    .local v11, "subtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v10

    .line 86
    .local v10, "subtypeCount":I
    if-nez v10, :cond_3

    .line 87
    add-int/lit8 v7, v7, 0x1

    .line 81
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 89
    :cond_3
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_2
    if-ge v6, v10, :cond_2

    .line 90
    invoke-interface {v11, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/inputmethod/InputMethodSubtype;

    .line 91
    .local v9, "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v9}, Landroid/view/inputmethod/InputMethodSubtype;->isAuxiliary()Z

    move-result v12

    if-nez v12, :cond_4

    .line 92
    add-int/lit8 v7, v7, 0x1

    .line 93
    move-object v8, v9

    .line 89
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 95
    :cond_4
    add-int/lit8 v1, v1, 0x1

    .line 96
    move-object v2, v9

    goto :goto_3

    .line 101
    .end local v4    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    .end local v6    # "j":I
    .end local v9    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    .end local v10    # "subtypeCount":I
    .end local v11    # "subtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    :cond_5
    const/4 v12, 0x1

    if-gt v7, v12, :cond_6

    const/4 v12, 0x1

    if-le v1, v12, :cond_7

    .line 102
    :cond_6
    const/4 v12, 0x1

    goto :goto_0

    .line 103
    :cond_7
    const/4 v12, 0x1

    if-ne v7, v12, :cond_a

    const/4 v12, 0x1

    if-ne v1, v12, :cond_a

    .line 104
    if-eqz v8, :cond_9

    if-eqz v2, :cond_9

    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_8

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodSubtype;->overridesImplicitlyEnabledSubtype()Z

    move-result v12

    if-nez v12, :cond_8

    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodSubtype;->overridesImplicitlyEnabledSubtype()Z

    move-result v12

    if-eqz v12, :cond_9

    :cond_8
    const-string v12, "TrySuppressingImeSwitcher"

    invoke-virtual {v8, v12}, Landroid/view/inputmethod/InputMethodSubtype;->containsExtraValueKey(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 109
    const/4 v12, 0x0

    goto :goto_0

    .line 111
    :cond_9
    const/4 v12, 0x1

    goto :goto_0

    .line 113
    :cond_a
    const/4 v12, 0x0

    goto :goto_0
.end method

.method private refreshStatusIcon()V
    .locals 2

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/InputMethodButton;->mIcon:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 146
    :goto_0
    return-void

    .line 139
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/tablet/InputMethodButton;->needsToShowIMEButton()Z

    move-result v0

    if-nez v0, :cond_1

    .line 140
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/tablet/InputMethodButton;->setVisibility(I)V

    goto :goto_0

    .line 143
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/tablet/InputMethodButton;->setVisibility(I)V

    .line 145
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/InputMethodButton;->mIcon:Landroid/widget/ImageView;

    const v1, 0x7f020027

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/android/systemui/statusbar/tablet/InputMethodButton;->mId:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/tablet/InputMethodButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/tablet/InputMethodButton;->mIcon:Landroid/widget/ImageView;

    .line 68
    invoke-direct {p0}, Lcom/android/systemui/statusbar/tablet/InputMethodButton;->refreshStatusIcon()V

    .line 69
    return-void
.end method

.method public setHardKeyboardStatus(Z)V
    .locals 1
    .param p1, "available"    # Z

    .prologue
    .line 166
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/tablet/InputMethodButton;->mHardKeyboardAvailable:Z

    if-eq v0, p1, :cond_0

    .line 167
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/tablet/InputMethodButton;->mHardKeyboardAvailable:Z

    .line 168
    invoke-direct {p0}, Lcom/android/systemui/statusbar/tablet/InputMethodButton;->refreshStatusIcon()V

    .line 170
    :cond_0
    return-void
.end method

.method public setIconImage(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/InputMethodButton;->mIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/InputMethodButton;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 157
    :cond_0
    return-void
.end method

.method public setImeWindowStatus(Landroid/os/IBinder;Z)V
    .locals 0
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "showButton"    # Z

    .prologue
    .line 160
    iput-object p1, p0, Lcom/android/systemui/statusbar/tablet/InputMethodButton;->mToken:Landroid/os/IBinder;

    .line 161
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/tablet/InputMethodButton;->mShowButton:Z

    .line 162
    invoke-direct {p0}, Lcom/android/systemui/statusbar/tablet/InputMethodButton;->refreshStatusIcon()V

    .line 163
    return-void
.end method

.method public setScreenLocked(Z)V
    .locals 0
    .param p1, "locked"    # Z

    .prologue
    .line 173
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/tablet/InputMethodButton;->mScreenLocked:Z

    .line 174
    invoke-direct {p0}, Lcom/android/systemui/statusbar/tablet/InputMethodButton;->refreshStatusIcon()V

    .line 175
    return-void
.end method
