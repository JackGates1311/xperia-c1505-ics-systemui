.class public final Lcom/android/systemui/recent/TaskDescription;
.super Ljava/lang/Object;
.source "TaskDescription.java"


# instance fields
.field final description:Ljava/lang/CharSequence;

.field final intent:Landroid/content/Intent;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mLabel:Ljava/lang/CharSequence;

.field private mThumbnail:Landroid/graphics/Bitmap;

.field final packageName:Ljava/lang/String;

.field final persistentTaskId:I

.field final resolveInfo:Landroid/content/pm/ResolveInfo;

.field final taskId:I


# direct methods
.method public constructor <init>(IILandroid/content/pm/ResolveInfo;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "_taskId"    # I
    .param p2, "_persistentTaskId"    # I
    .param p3, "_resolveInfo"    # Landroid/content/pm/ResolveInfo;
    .param p4, "_intent"    # Landroid/content/Intent;
    .param p5, "_packageName"    # Ljava/lang/String;
    .param p6, "_description"    # Ljava/lang/CharSequence;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p3, p0, Lcom/android/systemui/recent/TaskDescription;->resolveInfo:Landroid/content/pm/ResolveInfo;

    .line 40
    iput-object p4, p0, Lcom/android/systemui/recent/TaskDescription;->intent:Landroid/content/Intent;

    .line 41
    iput p1, p0, Lcom/android/systemui/recent/TaskDescription;->taskId:I

    .line 42
    iput p2, p0, Lcom/android/systemui/recent/TaskDescription;->persistentTaskId:I

    .line 44
    iput-object p6, p0, Lcom/android/systemui/recent/TaskDescription;->description:Ljava/lang/CharSequence;

    .line 45
    iput-object p5, p0, Lcom/android/systemui/recent/TaskDescription;->packageName:Ljava/lang/String;

    .line 46
    return-void
.end method


# virtual methods
.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/systemui/recent/TaskDescription;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getLabel()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/systemui/recent/TaskDescription;->mLabel:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getThumbnail()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/systemui/recent/TaskDescription;->mThumbnail:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/android/systemui/recent/TaskDescription;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 63
    return-void
.end method

.method public setLabel(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "label"    # Ljava/lang/CharSequence;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/android/systemui/recent/TaskDescription;->mLabel:Ljava/lang/CharSequence;

    .line 55
    return-void
.end method

.method public setThumbnail(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "thumbnail"    # Landroid/graphics/Bitmap;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/android/systemui/recent/TaskDescription;->mThumbnail:Landroid/graphics/Bitmap;

    .line 67
    return-void
.end method
