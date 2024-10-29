.class public Lcom/android/systemui/recent/ExternalTaskSwitcher;
.super Ljava/lang/Object;
.source "ExternalTaskSwitcher.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createExternalContext(Ljava/lang/String;Landroid/content/Context;)Landroid/content/Context;
    .locals 2
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 61
    const/4 v0, 0x0

    .line 64
    .local v0, "newContext":Landroid/content/Context;
    const/4 v1, 0x3

    :try_start_0
    invoke-virtual {p1, p0, v1}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 72
    :goto_0
    return-object v0

    .line 66
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static getExternalPackage(Landroid/content/Context;)Landroid/content/ComponentName;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 81
    const/4 v0, 0x0

    .line 82
    .local v0, "className":Ljava/lang/String;
    const/4 v2, 0x0

    .line 84
    .local v2, "info":Landroid/content/ComponentName;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 85
    .local v5, "pm":Landroid/content/pm/PackageManager;
    const/16 v6, 0x80

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v3

    .line 87
    .local v3, "packageInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageInfo;

    .line 88
    .local v4, "pi":Landroid/content/pm/PackageInfo;
    if-eqz v4, :cond_0

    iget-object v6, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v6, :cond_0

    iget-object v6, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v6, :cond_0

    .line 89
    iget-object v6, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v7, "com.sonymobile.taskswitcher.ENTRYCLASS"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 91
    if-eqz v0, :cond_0

    .line 93
    new-instance v2, Landroid/content/ComponentName;

    .end local v2    # "info":Landroid/content/ComponentName;
    iget-object v6, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-direct {v2, v6, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    .end local v4    # "pi":Landroid/content/pm/PackageInfo;
    .restart local v2    # "info":Landroid/content/ComponentName;
    :cond_1
    return-object v2
.end method

.method public static getExternalTaskSwitcher(Landroid/content/Context;)Landroid/view/View;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 182
    const/4 v1, 0x0

    .line 183
    .local v1, "taskSwitcher":Landroid/view/View;
    invoke-static {p0}, Lcom/android/systemui/recent/ExternalTaskSwitcher;->getExternalPackage(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v3

    .line 186
    .local v3, "taskSwitcherInfo":Landroid/content/ComponentName;
    invoke-static {p0, v3}, Lcom/android/systemui/recent/ExternalTaskSwitcher;->validateExternal(Landroid/content/Context;Landroid/content/ComponentName;)Z

    move-result v4

    .line 190
    .local v4, "validationOk":Z
    if-eqz v4, :cond_0

    .line 191
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p0}, Lcom/android/systemui/recent/ExternalTaskSwitcher;->createExternalContext(Ljava/lang/String;Landroid/content/Context;)Landroid/content/Context;

    move-result-object v2

    .line 193
    .local v2, "taskSwitcherContext":Landroid/content/Context;
    if-eqz v2, :cond_0

    .line 194
    invoke-virtual {v2}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 195
    .local v0, "classLoader":Ljava/lang/ClassLoader;
    invoke-static {v0, v3, v2}, Lcom/android/systemui/recent/ExternalTaskSwitcher;->instantiateExternalTaskSwitcher(Ljava/lang/ClassLoader;Landroid/content/ComponentName;Landroid/content/Context;)Landroid/view/View;

    move-result-object v1

    .line 200
    .end local v0    # "classLoader":Ljava/lang/ClassLoader;
    .end local v2    # "taskSwitcherContext":Landroid/content/Context;
    :cond_0
    return-object v1
.end method

.method private static instantiateExternalTaskSwitcher(Ljava/lang/ClassLoader;Landroid/content/ComponentName;Landroid/content/Context;)Landroid/view/View;
    .locals 5

    .prologue
    .line 127
    const/4 v1, 0x0

    .line 133
    :try_start_0
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 134
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 135
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_6

    .line 171
    :goto_0
    return-object v0

    .line 136
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 169
    goto :goto_0

    .line 141
    :catch_1
    move-exception v0

    move-object v0, v1

    .line 169
    goto :goto_0

    .line 145
    :catch_2
    move-exception v0

    move-object v0, v1

    .line 169
    goto :goto_0

    .line 149
    :catch_3
    move-exception v0

    move-object v0, v1

    .line 169
    goto :goto_0

    .line 154
    :catch_4
    move-exception v0

    move-object v0, v1

    .line 169
    goto :goto_0

    .line 159
    :catch_5
    move-exception v0

    move-object v0, v1

    .line 169
    goto :goto_0

    .line 164
    :catch_6
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method

.method private static validateExternal(Landroid/content/Context;Landroid/content/ComponentName;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "info"    # Landroid/content/ComponentName;

    .prologue
    .line 107
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 108
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 109
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const-string v1, "com.sonymobile.permission.EXTERNAL_TASK_SWITCHER"

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 111
    const/4 v1, 0x1

    .line 117
    .end local v0    # "pm":Landroid/content/pm/PackageManager;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
