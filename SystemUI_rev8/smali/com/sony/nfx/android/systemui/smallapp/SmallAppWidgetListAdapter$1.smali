.class Lcom/sony/nfx/android/systemui/smallapp/SmallAppWidgetListAdapter$1;
.super Landroid/os/AsyncTask;
.source "SmallAppWidgetListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sony/nfx/android/systemui/smallapp/SmallAppWidgetListAdapter;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/sony/nfx/android/systemui/smallapp/IconCache;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sony/nfx/android/systemui/smallapp/SmallAppWidgetListAdapter;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/sony/nfx/android/systemui/smallapp/SmallAppWidgetListAdapter;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppWidgetListAdapter$1;->this$0:Lcom/sony/nfx/android/systemui/smallapp/SmallAppWidgetListAdapter;

    iput-object p2, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppWidgetListAdapter$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 65
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sony/nfx/android/systemui/smallapp/SmallAppWidgetListAdapter$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 14
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 74
    iget-object v10, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppWidgetListAdapter$1;->val$context:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 75
    .local v8, "pkgManager":Landroid/content/pm/PackageManager;
    iget-object v10, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppWidgetListAdapter$1;->val$context:Landroid/content/Context;

    invoke-static {v10}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 76
    .local v0, "appWidgetManager":Landroid/appwidget/AppWidgetManager;
    new-instance v5, Ljava/util/Vector;

    invoke-direct {v5}, Ljava/util/Vector;-><init>()V

    .line 77
    .local v5, "items":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/sony/nfx/android/systemui/smallapp/SmallAppWidgetListAdapter$Item;>;"
    invoke-virtual {v0}, Landroid/appwidget/AppWidgetManager;->getInstalledProviders()Ljava/util/List;

    move-result-object v6

    .line 78
    .local v6, "list":Ljava/util/List;, "Ljava/util/List<Landroid/appwidget/AppWidgetProviderInfo;>;"
    iget-object v10, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppWidgetListAdapter$1;->this$0:Lcom/sony/nfx/android/systemui/smallapp/SmallAppWidgetListAdapter;

    iget-object v10, v10, Lcom/sony/nfx/android/systemui/smallapp/SmallAppWidgetListAdapter;->mImgCache:Lcom/sony/nfx/android/systemui/smallapp/IconCache;

    invoke-virtual {v10, v6}, Lcom/sony/nfx/android/systemui/smallapp/IconCache;->updateIconCache(Ljava/util/List;)V

    .line 79
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/appwidget/AppWidgetProviderInfo;

    .line 80
    .local v3, "info":Landroid/appwidget/AppWidgetProviderInfo;
    new-instance v4, Lcom/sony/nfx/android/systemui/smallapp/SmallAppWidgetListAdapter$Item;

    invoke-direct {v4}, Lcom/sony/nfx/android/systemui/smallapp/SmallAppWidgetListAdapter$Item;-><init>()V

    .line 81
    .local v4, "item":Lcom/sony/nfx/android/systemui/smallapp/SmallAppWidgetListAdapter$Item;
    iget-object v10, v3, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    iput-object v10, v4, Lcom/sony/nfx/android/systemui/smallapp/SmallAppWidgetListAdapter$Item;->label:Ljava/lang/String;

    .line 82
    iget-object v10, v3, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v10}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 83
    .local v7, "packageName":Ljava/lang/String;
    iget-object v10, v3, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v10}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 84
    .local v1, "className":Ljava/lang/String;
    iget-object v10, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppWidgetListAdapter$1;->this$0:Lcom/sony/nfx/android/systemui/smallapp/SmallAppWidgetListAdapter;

    iget-object v10, v10, Lcom/sony/nfx/android/systemui/smallapp/SmallAppWidgetListAdapter;->mImgCache:Lcom/sony/nfx/android/systemui/smallapp/IconCache;

    invoke-virtual {v10, v1}, Lcom/sony/nfx/android/systemui/smallapp/IconCache;->hasImage(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 85
    iget-object v10, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppWidgetListAdapter$1;->this$0:Lcom/sony/nfx/android/systemui/smallapp/SmallAppWidgetListAdapter;

    iget-object v10, v10, Lcom/sony/nfx/android/systemui/smallapp/SmallAppWidgetListAdapter;->mImgCache:Lcom/sony/nfx/android/systemui/smallapp/IconCache;

    invoke-virtual {v10, v1}, Lcom/sony/nfx/android/systemui/smallapp/IconCache;->getImage(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    iput-object v10, v4, Lcom/sony/nfx/android/systemui/smallapp/SmallAppWidgetListAdapter$Item;->icon:Landroid/graphics/drawable/Drawable;

    .line 95
    :goto_1
    iget-object v10, v4, Lcom/sony/nfx/android/systemui/smallapp/SmallAppWidgetListAdapter$Item;->icon:Landroid/graphics/drawable/Drawable;

    if-nez v10, :cond_0

    .line 96
    iget-object v10, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppWidgetListAdapter$1;->val$context:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 97
    .local v9, "resources":Landroid/content/res/Resources;
    const v10, 0x7f02005d

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    iput-object v10, v4, Lcom/sony/nfx/android/systemui/smallapp/SmallAppWidgetListAdapter$Item;->icon:Landroid/graphics/drawable/Drawable;

    .line 99
    .end local v9    # "resources":Landroid/content/res/Resources;
    :cond_0
    iget-object v10, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppWidgetListAdapter$1;->this$0:Lcom/sony/nfx/android/systemui/smallapp/SmallAppWidgetListAdapter;

    iget-object v11, v3, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    iget v12, v3, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    iget v13, v3, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    invoke-static {v10, v11, v12, v13}, Lcom/sony/nfx/android/systemui/smallapp/SmallAppWidgetListAdapter;->access$200(Lcom/sony/nfx/android/systemui/smallapp/SmallAppWidgetListAdapter;Landroid/content/ComponentName;II)[I

    move-result-object v10

    iput-object v10, v4, Lcom/sony/nfx/android/systemui/smallapp/SmallAppWidgetListAdapter$Item;->spanXY:[I

    .line 100
    iget-object v10, v3, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    iput-object v10, v4, Lcom/sony/nfx/android/systemui/smallapp/SmallAppWidgetListAdapter$Item;->component:Landroid/content/ComponentName;

    .line 101
    iget-object v10, v3, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    iput-object v10, v4, Lcom/sony/nfx/android/systemui/smallapp/SmallAppWidgetListAdapter$Item;->configure:Landroid/content/ComponentName;

    .line 102
    invoke-virtual {v5, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 87
    :cond_1
    iget v10, v3, Landroid/appwidget/AppWidgetProviderInfo;->previewImage:I

    if-eqz v10, :cond_3

    .line 88
    iget v10, v3, Landroid/appwidget/AppWidgetProviderInfo;->previewImage:I

    const/4 v11, 0x0

    invoke-virtual {v8, v7, v10, v11}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    iput-object v10, v4, Lcom/sony/nfx/android/systemui/smallapp/SmallAppWidgetListAdapter$Item;->icon:Landroid/graphics/drawable/Drawable;

    .line 93
    :cond_2
    :goto_2
    iget-object v10, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppWidgetListAdapter$1;->this$0:Lcom/sony/nfx/android/systemui/smallapp/SmallAppWidgetListAdapter;

    iget-object v10, v10, Lcom/sony/nfx/android/systemui/smallapp/SmallAppWidgetListAdapter;->mImgCache:Lcom/sony/nfx/android/systemui/smallapp/IconCache;

    iget-object v11, v4, Lcom/sony/nfx/android/systemui/smallapp/SmallAppWidgetListAdapter$Item;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10, v1, v11}, Lcom/sony/nfx/android/systemui/smallapp/IconCache;->setImage(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 90
    :cond_3
    iget v10, v3, Landroid/appwidget/AppWidgetProviderInfo;->icon:I

    if-eqz v10, :cond_2

    .line 91
    iget v10, v3, Landroid/appwidget/AppWidgetProviderInfo;->icon:I

    const/4 v11, 0x0

    invoke-virtual {v8, v7, v10, v11}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    iput-object v10, v4, Lcom/sony/nfx/android/systemui/smallapp/SmallAppWidgetListAdapter$Item;->icon:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    .line 104
    .end local v1    # "className":Ljava/lang/String;
    .end local v3    # "info":Landroid/appwidget/AppWidgetProviderInfo;
    .end local v4    # "item":Lcom/sony/nfx/android/systemui/smallapp/SmallAppWidgetListAdapter$Item;
    .end local v7    # "packageName":Ljava/lang/String;
    :cond_4
    new-instance v10, Lcom/sony/nfx/android/systemui/smallapp/SmallAppWidgetListAdapter$1$1;

    invoke-direct {v10, p0}, Lcom/sony/nfx/android/systemui/smallapp/SmallAppWidgetListAdapter$1$1;-><init>(Lcom/sony/nfx/android/systemui/smallapp/SmallAppWidgetListAdapter$1;)V

    invoke-static {v5, v10}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 110
    iget-object v10, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppWidgetListAdapter$1;->this$0:Lcom/sony/nfx/android/systemui/smallapp/SmallAppWidgetListAdapter;

    invoke-static {v10, v5}, Lcom/sony/nfx/android/systemui/smallapp/SmallAppWidgetListAdapter;->access$302(Lcom/sony/nfx/android/systemui/smallapp/SmallAppWidgetListAdapter;Ljava/util/Vector;)Ljava/util/Vector;

    .line 111
    const/4 v10, 0x0

    return-object v10
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 65
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sony/nfx/android/systemui/smallapp/SmallAppWidgetListAdapter$1;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 116
    iget-object v0, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppWidgetListAdapter$1;->this$0:Lcom/sony/nfx/android/systemui/smallapp/SmallAppWidgetListAdapter;

    invoke-virtual {v0}, Lcom/sony/nfx/android/systemui/smallapp/SmallAppWidgetListAdapter;->notifyDataSetChanged()V

    .line 117
    iget-object v0, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppWidgetListAdapter$1;->this$0:Lcom/sony/nfx/android/systemui/smallapp/SmallAppWidgetListAdapter;

    invoke-static {v0}, Lcom/sony/nfx/android/systemui/smallapp/SmallAppWidgetListAdapter;->access$000(Lcom/sony/nfx/android/systemui/smallapp/SmallAppWidgetListAdapter;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 118
    iget-object v0, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppWidgetListAdapter$1;->this$0:Lcom/sony/nfx/android/systemui/smallapp/SmallAppWidgetListAdapter;

    invoke-static {v0}, Lcom/sony/nfx/android/systemui/smallapp/SmallAppWidgetListAdapter;->access$100(Lcom/sony/nfx/android/systemui/smallapp/SmallAppWidgetListAdapter;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 119
    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppWidgetListAdapter$1;->this$0:Lcom/sony/nfx/android/systemui/smallapp/SmallAppWidgetListAdapter;

    invoke-static {v0}, Lcom/sony/nfx/android/systemui/smallapp/SmallAppWidgetListAdapter;->access$000(Lcom/sony/nfx/android/systemui/smallapp/SmallAppWidgetListAdapter;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 69
    iget-object v0, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppWidgetListAdapter$1;->this$0:Lcom/sony/nfx/android/systemui/smallapp/SmallAppWidgetListAdapter;

    invoke-static {v0}, Lcom/sony/nfx/android/systemui/smallapp/SmallAppWidgetListAdapter;->access$100(Lcom/sony/nfx/android/systemui/smallapp/SmallAppWidgetListAdapter;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 70
    return-void
.end method
