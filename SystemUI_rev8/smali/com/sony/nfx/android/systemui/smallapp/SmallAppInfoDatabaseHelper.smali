.class Lcom/sony/nfx/android/systemui/smallapp/SmallAppInfoDatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SmallAppInfoDatabaseHelper.java"


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-string v0, "content://com.sony.nfx.android.systemui.smallapp.appinfoprovider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppInfoDatabaseHelper;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    const-string v0, "smallappinfo.db"

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 29
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 33
    const-string v0, "CREATE TABLE appinfo (_id INTEGER PRIMARY KEY AUTOINCREMENT,label TEXT NOT NULL, kind INTEGER, componentname TEXT NOT NULL, widgetid INTEGER, has_star INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "currentVersion"    # I

    .prologue
    .line 44
    const-string v0, "DROP TABLE IF EXISTS appinfo"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 45
    invoke-virtual {p0, p1}, Lcom/sony/nfx/android/systemui/smallapp/SmallAppInfoDatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 46
    return-void
.end method
