.class Lcom/sony/nfx/android/systemui/smallapp/IconCache;
.super Ljava/lang/Object;
.source "IconCache.java"


# static fields
.field private static sIconCache:Lcom/sony/nfx/android/systemui/smallapp/IconCache;


# instance fields
.field private mCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mPkgManager:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/sony/nfx/android/systemui/smallapp/IconCache;->mCache:Ljava/util/HashMap;

    .line 27
    iput-object p1, p0, Lcom/sony/nfx/android/systemui/smallapp/IconCache;->mContext:Landroid/content/Context;

    .line 28
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iput-object v2, p0, Lcom/sony/nfx/android/systemui/smallapp/IconCache;->mPkgManager:Landroid/content/pm/PackageManager;

    .line 29
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 30
    .local v0, "appWidgetManager":Landroid/appwidget/AppWidgetManager;
    invoke-virtual {v0}, Landroid/appwidget/AppWidgetManager;->getInstalledProviders()Ljava/util/List;

    move-result-object v1

    .line 31
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/appwidget/AppWidgetProviderInfo;>;"
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/sony/nfx/android/systemui/smallapp/IconCache;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    sget-object v0, Lcom/sony/nfx/android/systemui/smallapp/IconCache;->sIconCache:Lcom/sony/nfx/android/systemui/smallapp/IconCache;

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Lcom/sony/nfx/android/systemui/smallapp/IconCache;

    invoke-direct {v0, p0}, Lcom/sony/nfx/android/systemui/smallapp/IconCache;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sony/nfx/android/systemui/smallapp/IconCache;->sIconCache:Lcom/sony/nfx/android/systemui/smallapp/IconCache;

    .line 37
    :cond_0
    sget-object v0, Lcom/sony/nfx/android/systemui/smallapp/IconCache;->sIconCache:Lcom/sony/nfx/android/systemui/smallapp/IconCache;

    return-object v0
.end method


# virtual methods
.method public getImage(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 64
    iget-object v2, p0, Lcom/sony/nfx/android/systemui/smallapp/IconCache;->mCache:Ljava/util/HashMap;

    monitor-enter v2

    .line 65
    :try_start_0
    iget-object v1, p0, Lcom/sony/nfx/android/systemui/smallapp/IconCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 66
    .local v0, "ref":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 67
    monitor-exit v2

    .line 70
    .end local v0    # "ref":Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v0

    .line 69
    .restart local v0    # "ref":Landroid/graphics/drawable/Drawable;
    :cond_0
    monitor-exit v2

    .line 70
    const/4 v0, 0x0

    goto :goto_0

    .line 69
    .end local v0    # "ref":Landroid/graphics/drawable/Drawable;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public hasImage(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/sony/nfx/android/systemui/smallapp/IconCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setImage(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "image"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 74
    iget-object v1, p0, Lcom/sony/nfx/android/systemui/smallapp/IconCache;->mCache:Ljava/util/HashMap;

    monitor-enter v1

    .line 75
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/sony/nfx/android/systemui/smallapp/IconCache;->hasImage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/sony/nfx/android/systemui/smallapp/IconCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/sony/nfx/android/systemui/smallapp/IconCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    monitor-exit v1

    .line 80
    return-void

    .line 79
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public updateIconCache(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/appwidget/AppWidgetProviderInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 42
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/appwidget/AppWidgetProviderInfo;>;"
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 43
    .local v2, "drawset":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/graphics/drawable/Drawable;>;"
    iget-object v6, p0, Lcom/sony/nfx/android/systemui/smallapp/IconCache;->mCache:Ljava/util/HashMap;

    monitor-enter v6

    .line 44
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/appwidget/AppWidgetProviderInfo;

    .line 45
    .local v4, "info":Landroid/appwidget/AppWidgetProviderInfo;
    iget-object v5, v4, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 47
    .local v0, "className":Ljava/lang/String;
    iget-object v5, p0, Lcom/sony/nfx/android/systemui/smallapp/IconCache;->mCache:Ljava/util/HashMap;

    if-eqz v5, :cond_0

    invoke-virtual {p0, v0}, Lcom/sony/nfx/android/systemui/smallapp/IconCache;->hasImage(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 48
    invoke-virtual {p0, v0}, Lcom/sony/nfx/android/systemui/smallapp/IconCache;->getImage(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 56
    .local v1, "draw":Landroid/graphics/drawable/Drawable;
    :goto_1
    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 59
    .end local v0    # "className":Ljava/lang/String;
    .end local v1    # "draw":Landroid/graphics/drawable/Drawable;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "info":Landroid/appwidget/AppWidgetProviderInfo;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 49
    .restart local v0    # "className":Ljava/lang/String;
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v4    # "info":Landroid/appwidget/AppWidgetProviderInfo;
    :cond_0
    :try_start_1
    iget v5, v4, Landroid/appwidget/AppWidgetProviderInfo;->previewImage:I

    if-eqz v5, :cond_1

    .line 50
    iget-object v5, p0, Lcom/sony/nfx/android/systemui/smallapp/IconCache;->mPkgManager:Landroid/content/pm/PackageManager;

    iget-object v7, v4, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    iget v8, v4, Landroid/appwidget/AppWidgetProviderInfo;->previewImage:I

    const/4 v9, 0x0

    invoke-virtual {v5, v7, v8, v9}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .restart local v1    # "draw":Landroid/graphics/drawable/Drawable;
    goto :goto_1

    .line 51
    .end local v1    # "draw":Landroid/graphics/drawable/Drawable;
    :cond_1
    iget v5, v4, Landroid/appwidget/AppWidgetProviderInfo;->icon:I

    if-eqz v5, :cond_2

    .line 52
    iget-object v5, p0, Lcom/sony/nfx/android/systemui/smallapp/IconCache;->mPkgManager:Landroid/content/pm/PackageManager;

    iget-object v7, v4, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    iget v8, v4, Landroid/appwidget/AppWidgetProviderInfo;->icon:I

    const/4 v9, 0x0

    invoke-virtual {v5, v7, v8, v9}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .restart local v1    # "draw":Landroid/graphics/drawable/Drawable;
    goto :goto_1

    .line 54
    .end local v1    # "draw":Landroid/graphics/drawable/Drawable;
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "draw":Landroid/graphics/drawable/Drawable;
    goto :goto_1

    .line 58
    .end local v0    # "className":Ljava/lang/String;
    .end local v1    # "draw":Landroid/graphics/drawable/Drawable;
    .end local v4    # "info":Landroid/appwidget/AppWidgetProviderInfo;
    :cond_3
    iget-object v5, p0, Lcom/sony/nfx/android/systemui/smallapp/IconCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    .line 59
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 60
    iput-object v2, p0, Lcom/sony/nfx/android/systemui/smallapp/IconCache;->mCache:Ljava/util/HashMap;

    .line 61
    return-void
.end method
