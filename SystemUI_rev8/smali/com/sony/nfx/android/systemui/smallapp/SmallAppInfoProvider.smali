.class public Lcom/sony/nfx/android/systemui/smallapp/SmallAppInfoProvider;
.super Landroid/content/ContentProvider;
.source "SmallAppInfoProvider.java"


# instance fields
.field private mOpenHelper:Lcom/sony/nfx/android/systemui/smallapp/SmallAppInfoDatabaseHelper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 25
    return-void
.end method

.method static getTableName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    const-string v0, "appinfo"

    return-object v0
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "where"    # Ljava/lang/String;
    .param p3, "whereArgs"    # [Ljava/lang/String;

    .prologue
    .line 82
    iget-object v2, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppInfoProvider;->mOpenHelper:Lcom/sony/nfx/android/systemui/smallapp/SmallAppInfoDatabaseHelper;

    invoke-virtual {v2}, Lcom/sony/nfx/android/systemui/smallapp/SmallAppInfoDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 83
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v0, 0x0

    .line 85
    .local v0, "count":I
    const-string v2, "appinfo"

    invoke-virtual {v1, v2, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 86
    invoke-virtual {p0}, Lcom/sony/nfx/android/systemui/smallapp/SmallAppInfoProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 88
    return v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .param p1, "url"    # Landroid/net/Uri;

    .prologue
    .line 57
    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 3
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "initialValues"    # Landroid/content/ContentValues;

    .prologue
    .line 74
    iget-object v1, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppInfoProvider;->mOpenHelper:Lcom/sony/nfx/android/systemui/smallapp/SmallAppInfoDatabaseHelper;

    invoke-virtual {v1}, Lcom/sony/nfx/android/systemui/smallapp/SmallAppInfoDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 75
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "appinfo"

    const-string v2, ""

    invoke-virtual {v0, v1, v2, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 77
    return-object p1
.end method

.method public onCreate()Z
    .locals 2

    .prologue
    .line 42
    new-instance v0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppInfoDatabaseHelper;

    invoke-virtual {p0}, Lcom/sony/nfx/android/systemui/smallapp/SmallAppInfoProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sony/nfx/android/systemui/smallapp/SmallAppInfoDatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppInfoProvider;->mOpenHelper:Lcom/sony/nfx/android/systemui/smallapp/SmallAppInfoDatabaseHelper;

    .line 43
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "projectionIn"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sort"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 49
    iget-object v1, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppInfoProvider;->mOpenHelper:Lcom/sony/nfx/android/systemui/smallapp/SmallAppInfoDatabaseHelper;

    invoke-virtual {v1}, Lcom/sony/nfx/android/systemui/smallapp/SmallAppInfoDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 50
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "appinfo"

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v5

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 52
    .local v8, "ret":Landroid/database/Cursor;
    return-object v8
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "where"    # Ljava/lang/String;
    .param p4, "whereArgs"    # [Ljava/lang/String;

    .prologue
    .line 62
    iget-object v2, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppInfoProvider;->mOpenHelper:Lcom/sony/nfx/android/systemui/smallapp/SmallAppInfoDatabaseHelper;

    invoke-virtual {v2}, Lcom/sony/nfx/android/systemui/smallapp/SmallAppInfoDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 63
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v0, 0x0

    .line 65
    .local v0, "count":I
    const-string v2, "appinfo"

    invoke-virtual {v1, v2, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 66
    invoke-virtual {p0}, Lcom/sony/nfx/android/systemui/smallapp/SmallAppInfoProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 68
    return v0
.end method
