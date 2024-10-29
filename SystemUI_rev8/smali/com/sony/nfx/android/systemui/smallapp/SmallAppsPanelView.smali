.class public Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;
.super Landroid/widget/RelativeLayout;
.source "SmallAppsPanelView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/android/systemui/statusbar/tablet/StatusBarPanel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$AddContentAdapter;,
        Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$SmallAppItemAdapter;,
        Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$ViewHolder;,
        Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$SmallAppInfo;
    }
.end annotation


# instance fields
.field private final ADD_SMALLAPP_INDEX:I

.field private final ADD_WIDGET_INDEX:I

.field private final PACKAGE_GOOGLE_PLAY:Ljava/lang/String;

.field private final SEARCH_QUERY:Ljava/lang/String;

.field private final SERCH_URI:Ljava/lang/String;

.field private final SMALLAPP_NAME_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$SmallAppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mAdapter:Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$SmallAppItemAdapter;

.field private mAddSmallAppDialog:Landroid/app/AlertDialog;

.field private mAppFilter:Landroid/widget/Spinner;

.field private mAppFilterListner:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mAppInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$SmallAppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mAppWidgetDialog:Landroid/app/AlertDialog;

.field private final mCacheIntentFilter:Landroid/content/IntentFilter;

.field private mCollator:Ljava/text/Collator;

.field private mContentProviderUri:Landroid/net/Uri;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private final mCreateIntentFilter:Landroid/content/IntentFilter;

.field private mCurrentOrientation:I

.field private final mEditLabelReceiver:Landroid/content/BroadcastReceiver;

.field private mFilterType:I

.field private mGridView:Landroid/widget/GridView;

.field private mGridViewWidget:Landroid/widget/GridView;

.field private mIconCache:Lcom/sony/nfx/android/systemui/smallapp/IconCache;

.field mIsDualScreen:Z

.field private mItemLongPressListner:Landroid/widget/AdapterView$OnItemLongClickListener;

.field private final mLabelIntentFilter:Landroid/content/IntentFilter;

.field private mMenuAdd:Landroid/widget/TextView;

.field private mMenuButton:Landroid/view/View;

.field private mMenuListener:Landroid/view/View$OnClickListener;

.field private mMenuWindow:Landroid/widget/ListPopupWindow;

.field private mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private final mOpenHelper:Lcom/sony/nfx/android/systemui/smallapp/SmallAppInfoDatabaseHelper;

.field private mPanelContent:Landroid/view/ViewGroup;

.field private mPanelMessage:Landroid/view/ViewGroup;

.field private mShowing:Z

.field private final mShutdownReceiver:Landroid/content/BroadcastReceiver;

.field private mSmallAppContainer:Landroid/view/ViewGroup;

.field private mStatusBar:Lcom/android/systemui/statusbar/StatusBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 218
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->mAppInfos:Ljava/util/ArrayList;

    .line 104
    iput-boolean v1, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->mIsDualScreen:Z

    .line 108
    iput v1, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->mCurrentOrientation:I

    .line 126
    iput v1, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->mFilterType:I

    .line 135
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->mCollator:Ljava/text/Collator;

    .line 137
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->mCreateIntentFilter:Landroid/content/IntentFilter;

    .line 138
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->mLabelIntentFilter:Landroid/content/IntentFilter;

    .line 139
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->mCacheIntentFilter:Landroid/content/IntentFilter;

    .line 144
    const-string v0, "\"Small apps extension for Sony products\""

    iput-object v0, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->SEARCH_QUERY:Ljava/lang/String;

    .line 145
    const-string v0, "market://search?q=\"Small apps extension for Sony products\""

    iput-object v0, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->SERCH_URI:Ljava/lang/String;

    .line 146
    const-string v0, "com.android.vending"

    iput-object v0, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->PACKAGE_GOOGLE_PLAY:Ljava/lang/String;

    .line 147
    iput v1, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->ADD_SMALLAPP_INDEX:I

    .line 148
    const/4 v0, 0x1

    iput v0, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->ADD_WIDGET_INDEX:I

    .line 152
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->mIconCache:Lcom/sony/nfx/android/systemui/smallapp/IconCache;

    .line 165
    new-instance v0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppInfoDatabaseHelper;

    invoke-virtual {p0}, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sony/nfx/android/systemui/smallapp/SmallAppInfoDatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->mOpenHelper:Lcom/sony/nfx/android/systemui/smallapp/SmallAppInfoDatabaseHelper;

    .line 582
    new-instance v0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$2;

    invoke-direct {v0, p0}, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$2;-><init>(Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;)V

    iput-object v0, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 623
    new-instance v0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$4;

    invoke-direct {v0, p0}, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$4;-><init>(Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;)V

    iput-object v0, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->mAppFilterListner:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 633
    new-instance v0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$5;

    invoke-direct {v0, p0}, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$5;-><init>(Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;)V

    iput-object v0, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->mItemLongPressListner:Landroid/widget/AdapterView$OnItemLongClickListener;

    .line 698
    new-instance v0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$6;

    invoke-direct {v0, p0}, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$6;-><init>(Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;)V

    iput-object v0, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->mMenuListener:Landroid/view/View$OnClickListener;

    .line 934
    new-instance v0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$9;

    invoke-direct {v0, p0}, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$9;-><init>(Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;)V

    iput-object v0, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->SMALLAPP_NAME_COMPARATOR:Ljava/util/Comparator;

    .line 1032
    new-instance v0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$10;

    invoke-direct {v0, p0}, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$10;-><init>(Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;)V

    iput-object v0, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->mEditLabelReceiver:Landroid/content/BroadcastReceiver;

    .line 1042
    new-instance v0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$11;

    invoke-direct {v0, p0}, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$11;-><init>(Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;)V

    iput-object v0, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->mShutdownReceiver:Landroid/content/BroadcastReceiver;

    .line 219
    invoke-direct {p0}, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->initialize()V

    .line 220
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 213
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->mAppInfos:Ljava/util/ArrayList;

    .line 104
    iput-boolean v1, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->mIsDualScreen:Z

    .line 108
    iput v1, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->mCurrentOrientation:I

    .line 126
    iput v1, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->mFilterType:I

    .line 135
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->mCollator:Ljava/text/Collator;

    .line 137
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->mCreateIntentFilter:Landroid/content/IntentFilter;

    .line 138
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->mLabelIntentFilter:Landroid/content/IntentFilter;

    .line 139
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->mCacheIntentFilter:Landroid/content/IntentFilter;

    .line 144
    const-string v0, "\"Small apps extension for Sony products\""

    iput-object v0, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->SEARCH_QUERY:Ljava/lang/String;

    .line 145
    const-string v0, "market://search?q=\"Small apps extension for Sony products\""

    iput-object v0, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->SERCH_URI:Ljava/lang/String;

    .line 146
    const-string v0, "com.android.vending"

    iput-object v0, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->PACKAGE_GOOGLE_PLAY:Ljava/lang/String;

    .line 147
    iput v1, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->ADD_SMALLAPP_INDEX:I

    .line 148
    const/4 v0, 0x1

    iput v0, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->ADD_WIDGET_INDEX:I

    .line 152
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->mIconCache:Lcom/sony/nfx/android/systemui/smallapp/IconCache;

    .line 165
    new-instance v0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppInfoDatabaseHelper;

    invoke-virtual {p0}, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sony/nfx/android/systemui/smallapp/SmallAppInfoDatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->mOpenHelper:Lcom/sony/nfx/android/systemui/smallapp/SmallAppInfoDatabaseHelper;

    .line 582
    new-instance v0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$2;

    invoke-direct {v0, p0}, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$2;-><init>(Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;)V

    iput-object v0, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 623
    new-instance v0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$4;

    invoke-direct {v0, p0}, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$4;-><init>(Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;)V

    iput-object v0, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->mAppFilterListner:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 633
    new-instance v0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$5;

    invoke-direct {v0, p0}, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$5;-><init>(Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;)V

    iput-object v0, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->mItemLongPressListner:Landroid/widget/AdapterView$OnItemLongClickListener;

    .line 698
    new-instance v0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$6;

    invoke-direct {v0, p0}, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$6;-><init>(Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;)V

    iput-object v0, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->mMenuListener:Landroid/view/View$OnClickListener;

    .line 934
    new-instance v0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$9;

    invoke-direct {v0, p0}, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$9;-><init>(Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;)V

    iput-object v0, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->SMALLAPP_NAME_COMPARATOR:Ljava/util/Comparator;

    .line 1032
    new-instance v0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$10;

    invoke-direct {v0, p0}, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$10;-><init>(Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;)V

    iput-object v0, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->mEditLabelReceiver:Landroid/content/BroadcastReceiver;

    .line 1042
    new-instance v0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$11;

    invoke-direct {v0, p0}, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$11;-><init>(Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;)V

    iput-object v0, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->mShutdownReceiver:Landroid/content/BroadcastReceiver;

    .line 214
    invoke-direct {p0}, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->initialize()V

    .line 215
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x0

    .line 208
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->mAppInfos:Ljava/util/ArrayList;

    .line 104
    iput-boolean v1, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->mIsDualScreen:Z

    .line 108
    iput v1, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->mCurrentOrientation:I

    .line 126
    iput v1, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->mFilterType:I

    .line 135
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->mCollator:Ljava/text/Collator;

    .line 137
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->mCreateIntentFilter:Landroid/content/IntentFilter;

    .line 138
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->mLabelIntentFilter:Landroid/content/IntentFilter;

    .line 139
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->mCacheIntentFilter:Landroid/content/IntentFilter;

    .line 144
    const-string v0, "\"Small apps extension for Sony products\""

    iput-object v0, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->SEARCH_QUERY:Ljava/lang/String;

    .line 145
    const-string v0, "market://search?q=\"Small apps extension for Sony products\""

    iput-object v0, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->SERCH_URI:Ljava/lang/String;

    .line 146
    const-string v0, "com.android.vending"

    iput-object v0, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->PACKAGE_GOOGLE_PLAY:Ljava/lang/String;

    .line 147
    iput v1, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->ADD_SMALLAPP_INDEX:I

    .line 148
    const/4 v0, 0x1

    iput v0, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->ADD_WIDGET_INDEX:I

    .line 152
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->mIconCache:Lcom/sony/nfx/android/systemui/smallapp/IconCache;

    .line 165
    new-instance v0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppInfoDatabaseHelper;

    invoke-virtual {p0}, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sony/nfx/android/systemui/smallapp/SmallAppInfoDatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->mOpenHelper:Lcom/sony/nfx/android/systemui/smallapp/SmallAppInfoDatabaseHelper;

    .line 582
    new-instance v0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$2;

    invoke-direct {v0, p0}, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$2;-><init>(Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;)V

    iput-object v0, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 623
    new-instance v0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$4;

    invoke-direct {v0, p0}, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$4;-><init>(Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;)V

    iput-object v0, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->mAppFilterListner:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 633
    new-instance v0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$5;

    invoke-direct {v0, p0}, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$5;-><init>(Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;)V

    iput-object v0, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->mItemLongPressListner:Landroid/widget/AdapterView$OnItemLongClickListener;

    .line 698
    new-instance v0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$6;

    invoke-direct {v0, p0}, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$6;-><init>(Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;)V

    iput-object v0, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->mMenuListener:Landroid/view/View$OnClickListener;

    .line 934
    new-instance v0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$9;

    invoke-direct {v0, p0}, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$9;-><init>(Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;)V

    iput-object v0, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->SMALLAPP_NAME_COMPARATOR:Ljava/util/Comparator;

    .line 1032
    new-instance v0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$10;

    invoke-direct {v0, p0}, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$10;-><init>(Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;)V

    iput-object v0, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->mEditLabelReceiver:Landroid/content/BroadcastReceiver;

    .line 1042
    new-instance v0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$11;

    invoke-direct {v0, p0}, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$11;-><init>(Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;)V

    iput-object v0, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->mShutdownReceiver:Landroid/content/BroadcastReceiver;

    .line 209
    invoke-direct {p0}, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->initialize()V

    .line 210
    return-void
.end method

.method static synthetic access$100(Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;)V
    .locals 0
    .param p0, "x0"    # Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->addContent()V

    return-void
.end method

.method static synthetic access$1000(Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$SmallAppInfo;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;
    .param p1, "x1"    # Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$SmallAppInfo;
    .param p2, "x2"    # Z

    .prologue
    .line 88
    invoke-direct {p0, p1, p2}, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->editSmallAppLabel(Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$SmallAppInfo;Z)V

    return-void
.end method

.method static synthetic access$1100(Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$SmallAppInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;
    .param p1, "x1"    # Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$SmallAppInfo;

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->deleteWidgetInfo(Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$SmallAppInfo;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;)Landroid/widget/ListPopupWindow;
    .locals 1
    .param p0, "x0"    # Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->mMenuWindow:Landroid/widget/ListPopupWindow;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;)V
    .locals 0
    .param p0, "x0"    # Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->unsetShortcutButton()V

    return-void
.end method

.method static synthetic access$1500(Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;)V
    .locals 0
    .param p0, "x0"    # Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->addNewWidgetDialog()V

    return-void
.end method

.method static synthetic access$1600(Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->mAppWidgetDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;)Ljava/text/Collator;
    .locals 1
    .param p0, "x0"    # Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->mCollator:Ljava/text/Collator;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->mAppInfos:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;)Lcom/android/systemui/statusbar/StatusBar;
    .locals 1
    .param p0, "x0"    # Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->mStatusBar:Lcom/android/systemui/statusbar/StatusBar;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;)V
    .locals 0
    .param p0, "x0"    # Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->hide()V

    return-void
.end method

.method static synthetic access$502(Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;
    .param p1, "x1"    # I

    .prologue
    .line 88
    iput p1, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->mFilterType:I

    return p1
.end method

.method static synthetic access$600(Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;)V
    .locals 0
    .param p0, "x0"    # Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->updateSmallAppsList()V

    return-void
.end method

.method static synthetic access$700(Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;
    .param p1, "x1"    # I

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->getResourcesString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$SmallAppInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;
    .param p1, "x1"    # Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$SmallAppInfo;

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->setShortcutButton(Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$SmallAppInfo;)V

    return-void
.end method

.method static synthetic access$900(Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$SmallAppInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;
    .param p1, "x1"    # Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$SmallAppInfo;

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->setStar(Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$SmallAppInfo;)V

    return-void
.end method

.method private addContent()V
    .locals 3

    .prologue
    .line 806
    invoke-virtual {p0}, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 808
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 809
    const v0, 0x7f080013

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 810
    new-instance v0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$AddContentAdapter;

    invoke-virtual {p0}, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$AddContentAdapter;-><init>(Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;Landroid/content/Context;)V

    .line 811
    new-instance v2, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$7;

    invoke-direct {v2, p0}, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$7;-><init>(Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 833
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->mAddSmallAppDialog:Landroid/app/AlertDialog;

    .line 834
    iget-object v0, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->mAddSmallAppDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7de

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 835
    iget-object v0, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->mAddSmallAppDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 836
    return-void
.end method

.method private addNewWidgetDialog()V
    .locals 8

    .prologue
    const v7, 0x102000a

    .line 839
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 840
    invoke-virtual {p0}, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a000e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 842
    invoke-virtual {p0}, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "layout_inflater"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 843
    iget-object v3, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->mIconCache:Lcom/sony/nfx/android/systemui/smallapp/IconCache;

    if-nez v3, :cond_0

    .line 844
    invoke-virtual {p0}, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/sony/nfx/android/systemui/smallapp/IconCache;->getInstance(Landroid/content/Context;)Lcom/sony/nfx/android/systemui/smallapp/IconCache;

    move-result-object v3

    iput-object v3, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->mIconCache:Lcom/sony/nfx/android/systemui/smallapp/IconCache;

    .line 847
    :cond_0
    const v3, 0x7f03000b

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 848
    new-instance v4, Lcom/sony/nfx/android/systemui/smallapp/SmallAppWidgetListAdapter;

    invoke-virtual {p0}, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v5, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->mIconCache:Lcom/sony/nfx/android/systemui/smallapp/IconCache;

    invoke-direct {v4, v3, v1, v5}, Lcom/sony/nfx/android/systemui/smallapp/SmallAppWidgetListAdapter;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/sony/nfx/android/systemui/smallapp/IconCache;)V

    .line 850
    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/GridView;

    iput-object v3, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->mGridViewWidget:Landroid/widget/GridView;

    .line 851
    iget-object v3, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->mGridViewWidget:Landroid/widget/GridView;

    invoke-virtual {p0}, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090002

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 853
    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/AdapterView;

    .line 856
    const v5, 0x1020004

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/AdapterView;->setEmptyView(Landroid/view/View;)V

    .line 857
    invoke-virtual {v3, v4}, Landroid/widget/AdapterView;->setAdapter(Landroid/widget/Adapter;)V

    .line 859
    new-instance v5, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$8;

    invoke-direct {v5, p0, v4}, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$8;-><init>(Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;Lcom/sony/nfx/android/systemui/smallapp/SmallAppWidgetListAdapter;)V

    invoke-virtual {v3, v5}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    move v3, v2

    move v4, v2

    move v5, v2

    .line 868
    invoke-virtual/range {v0 .. v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;IIII)Landroid/app/AlertDialog$Builder;

    .line 869
    const v1, 0x7f080018

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 871
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->mAppWidgetDialog:Landroid/app/AlertDialog;

    .line 872
    iget-object v0, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->mAppWidgetDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7de

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 874
    iget-object v0, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->mAppWidgetDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 875
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 876
    const/16 v2, 0x31

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 877
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 879
    iget-object v0, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->mAppWidgetDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 880
    return-void
.end method

.method private deleteWidget(I)I
    .locals 7
    .param p1, "id"    # I

    .prologue
    .line 200
    iget-object v2, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->mOpenHelper:Lcom/sony/nfx/android/systemui/smallapp/SmallAppInfoDatabaseHelper;

    invoke-virtual {v2}, Lcom/sony/nfx/android/systemui/smallapp/SmallAppInfoDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 201
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v0, 0x0

    .line 202
    .local v0, "count":I
    invoke-static {}, Lcom/sony/nfx/android/systemui/smallapp/SmallAppInfoProvider;->getTableName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "_id = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 203
    invoke-virtual {p0}, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->mContentProviderUri:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 204
    return v0
.end method

.method private deleteWidgetInfo(Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$SmallAppInfo;)V
    .locals 1

    .prologue
    .line 920
    iget v0, p1, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$SmallAppInfo;->id:I

    invoke-virtual {p0, v0}, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->deleteContent(I)V

    .line 921
    iget-object v0, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->mAdapter:Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$SmallAppItemAdapter;

    invoke-virtual {v0}, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$SmallAppItemAdapter;->notifyDataSetChanged()V

    .line 923
    const-string v0, "del"

    invoke-direct {p0, p1, v0}, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->sendSmallAppWidgetHostService(Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$SmallAppInfo;Ljava/lang/String;)V

    .line 924
    return-void
.end method

.method private editSmallAppLabel(Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$SmallAppInfo;Z)V
    .locals 3

    .prologue
    .line 689
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/sony/nfx/android/systemui/smallapp/EditLabel;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 690
    const-string v1, "_id"

    iget v2, p1, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$SmallAppInfo;->id:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 691
    const-string v1, "original_label"

    iget-object v2, p1, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$SmallAppInfo;->name:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 692
    const-string v1, "add_new_widget"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 693
    const/high16 v1, 0x14000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 694
    invoke-virtual {p0}, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 695
    invoke-direct {p0}, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->hide()V

    .line 696
    return-void
.end method

.method private getResourcesString(I)Ljava/lang/String;
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 1062
    invoke-virtual {p0}, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private hide()V
    .locals 1

    .prologue
    .line 353
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->setVisibility(I)V

    .line 354
    return-void
.end method

.method private initialize()V
    .locals 4

    .prologue
    .line 223
    new-instance v0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$SmallAppItemAdapter;

    invoke-virtual {p0}, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f030007

    iget-object v3, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->mAppInfos:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$SmallAppItemAdapter;-><init>(Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;Landroid/content/Context;ILjava/util/List;)V

    iput-object v0, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->mAdapter:Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$SmallAppItemAdapter;

    .line 224
    const-string v0, "content://com.sony.nfx.android.systemui.smallapp.appinfoprovider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->mContentProviderUri:Landroid/net/Uri;

    .line 225
    invoke-virtual {p0}, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->mContentResolver:Landroid/content/ContentResolver;

    .line 226
    return-void
.end method

.method private insertSmallAppInfo(Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$SmallAppInfo;)V
    .locals 4
    .param p1, "appinfo"    # Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$SmallAppInfo;

    .prologue
    .line 1051
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1052
    .local v1, "values":Landroid/content/ContentValues;
    const-string v2, "label"

    iget-object v3, p1, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$SmallAppInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1053
    const-string v2, "kind"

    iget v3, p1, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$SmallAppInfo;->kind:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1054
    const-string v2, "componentname"

    iget-object v3, p1, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$SmallAppInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1055
    const-string v2, "widgetid"

    iget v3, p1, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$SmallAppInfo;->widgetId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1056
    const-string v2, "has_star"

    iget-boolean v3, p1, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$SmallAppInfo;->has_star:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1058
    iget-object v2, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->mContentProviderUri:Landroid/net/Uri;

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 1059
    .local v0, "uri":Landroid/net/Uri;
    return-void
.end method

.method private loadSmallAppInfo()V
    .locals 25

    .prologue
    .line 440
    invoke-virtual/range {p0 .. p0}, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v23

    .line 441
    .local v23, "pm":Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sony.smallapp.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.sony.smallapp.intent.category.LAUNCHER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v16

    .line 443
    .local v16, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v22

    .line 444
    .local v22, "numTasks":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    move/from16 v0, v22

    if-ge v12, v0, :cond_a

    .line 445
    move-object/from16 v0, v16

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/pm/ResolveInfo;

    .line 446
    .local v15, "info":Landroid/content/pm/ResolveInfo;
    iget-object v1, v15, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-boolean v1, v1, Landroid/content/pm/ServiceInfo;->exported:Z

    if-nez v1, :cond_1

    .line 444
    :cond_0
    :goto_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 449
    :cond_1
    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v24

    .line 450
    .local v24, "title":Ljava/lang/String;
    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    .line 451
    .local v13, "icon":Landroid/graphics/drawable/Drawable;
    new-instance v8, Landroid/content/ComponentName;

    iget-object v1, v15, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v2, v15, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v8, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    .local v8, "component":Landroid/content/ComponentName;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v1, v8}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v17

    .line 454
    .local v17, "intent":Landroid/content/Intent;
    if-eqz v24, :cond_0

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    if-eqz v13, :cond_0

    .line 455
    new-instance v7, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$SmallAppInfo;

    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-direct {v7, v0, v1}, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$SmallAppInfo;-><init>(Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$1;)V

    .line 456
    .local v7, "appinfo":Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$SmallAppInfo;
    move-object/from16 v0, v24

    iput-object v0, v7, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$SmallAppInfo;->name:Ljava/lang/String;

    .line 457
    move-object/from16 v0, v17

    iput-object v0, v7, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$SmallAppInfo;->intent:Landroid/content/Intent;

    .line 458
    iput-object v13, v7, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$SmallAppInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 459
    const/4 v1, 0x0

    iput v1, v7, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$SmallAppInfo;->kind:I

    .line 460
    const/4 v1, 0x0

    iput-boolean v1, v7, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$SmallAppInfo;->has_star:Z

    .line 461
    iput-object v8, v7, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$SmallAppInfo;->component:Landroid/content/ComponentName;

    .line 463
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->mContentProviderUri:Landroid/net/Uri;

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "label"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "kind"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-string v5, "has_star"

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string v5, "componentname"

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 473
    .local v10, "cursor":Landroid/database/Cursor;
    const/16 v18, 0x0

    .line 474
    .local v18, "isExist":Z
    if-eqz v10, :cond_2

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_2

    .line 475
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 476
    const/16 v19, 0x0

    .local v19, "j":I
    :goto_2
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v1

    move/from16 v0, v19

    if-ge v0, v1, :cond_2

    .line 477
    const/4 v1, 0x0

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 478
    .local v14, "id":I
    iput v14, v7, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$SmallAppInfo;->id:I

    .line 479
    const/4 v1, 0x1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 480
    .local v21, "label":Ljava/lang/String;
    const/4 v1, 0x2

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    .line 481
    .local v20, "kind":I
    const/4 v1, 0x3

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 482
    .local v11, "has_star":I
    const/4 v1, 0x1

    if-ne v11, v1, :cond_7

    .line 483
    const/4 v1, 0x1

    iput-boolean v1, v7, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$SmallAppInfo;->has_star:Z

    .line 488
    :goto_3
    if-nez v20, :cond_9

    .line 489
    const/4 v1, 0x4

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 490
    .local v9, "componentName":Ljava/lang/String;
    iget-object v1, v7, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$SmallAppInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 491
    const/16 v18, 0x1

    .line 492
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->mFilterType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_8

    const/4 v1, 0x1

    if-ne v11, v1, :cond_8

    .line 493
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->mAppInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 504
    .end local v9    # "componentName":Ljava/lang/String;
    .end local v11    # "has_star":I
    .end local v14    # "id":I
    .end local v19    # "j":I
    .end local v20    # "kind":I
    .end local v21    # "label":Ljava/lang/String;
    :cond_2
    :goto_4
    if-nez v18, :cond_6

    .line 505
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->mFilterType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    iget-boolean v1, v7, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$SmallAppInfo;->has_star:Z

    if-nez v1, :cond_4

    :cond_3
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->mFilterType:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_5

    .line 507
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->mAppInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 509
    :cond_5
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->insertSmallAppInfo(Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$SmallAppInfo;)V

    .line 511
    :cond_6
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 485
    .restart local v11    # "has_star":I
    .restart local v14    # "id":I
    .restart local v19    # "j":I
    .restart local v20    # "kind":I
    .restart local v21    # "label":Ljava/lang/String;
    :cond_7
    const/4 v1, 0x0

    iput-boolean v1, v7, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$SmallAppInfo;->has_star:Z

    goto :goto_3

    .line 494
    .restart local v9    # "componentName":Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->mFilterType:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    .line 495
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->mAppInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 500
    .end local v9    # "componentName":Ljava/lang/String;
    :cond_9
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    .line 476
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_2

    .line 514
    .end local v7    # "appinfo":Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$SmallAppInfo;
    .end local v8    # "component":Landroid/content/ComponentName;
    .end local v10    # "cursor":Landroid/database/Cursor;
    .end local v11    # "has_star":I
    .end local v13    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v14    # "id":I
    .end local v15    # "info":Landroid/content/pm/ResolveInfo;
    .end local v17    # "intent":Landroid/content/Intent;
    .end local v18    # "isExist":Z
    .end local v19    # "j":I
    .end local v20    # "kind":I
    .end local v21    # "label":Ljava/lang/String;
    .end local v24    # "title":Ljava/lang/String;
    :cond_a
    return-void
.end method

.method private loadWidgetInfo()V
    .locals 18

    .prologue
    .line 943
    invoke-virtual/range {p0 .. p0}, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->getContext()Landroid/content/Context;

    move-result-object v11

    .line 944
    .local v11, "context":Landroid/content/Context;
    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v17

    .line 945
    .local v17, "pm":Landroid/content/pm/PackageManager;
    invoke-static {v11}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v7

    .line 947
    .local v7, "appWidgetManager":Landroid/appwidget/AppWidgetManager;
    const/4 v1, 0x6

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v3, v1

    const/4 v1, 0x1

    const-string v2, "label"

    aput-object v2, v3, v1

    const/4 v1, 0x2

    const-string v2, "kind"

    aput-object v2, v3, v1

    const/4 v1, 0x3

    const-string v2, "widgetid"

    aput-object v2, v3, v1

    const/4 v1, 0x4

    const-string v2, "componentname"

    aput-object v2, v3, v1

    const/4 v1, 0x5

    const-string v2, "has_star"

    aput-object v2, v3, v1

    .line 955
    .local v3, "ALARM_QUERY_COLUMNS":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->mContentProviderUri:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 960
    .local v12, "cursor":Landroid/database/Cursor;
    if-nez v12, :cond_0

    .line 1009
    :goto_0
    return-void

    .line 964
    :cond_0
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    .line 965
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_1
    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-ge v13, v1, :cond_8

    .line 966
    new-instance v8, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$SmallAppInfo;

    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-direct {v8, v0, v1}, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$SmallAppInfo;-><init>(Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$1;)V

    .line 967
    .local v8, "appinfo":Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$SmallAppInfo;
    const/4 v1, 0x0

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v8, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$SmallAppInfo;->id:I

    .line 968
    iget v1, v8, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$SmallAppInfo;->id:I

    if-gez v1, :cond_1

    .line 969
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    .line 971
    :cond_1
    const/4 v1, 0x1

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v8, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$SmallAppInfo;->name:Ljava/lang/String;

    .line 972
    const/4 v1, 0x2

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v8, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$SmallAppInfo;->kind:I

    .line 973
    const/4 v1, 0x5

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_6

    .line 974
    const/4 v1, 0x1

    iput-boolean v1, v8, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$SmallAppInfo;->has_star:Z

    .line 978
    :goto_2
    const/4 v1, 0x3

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v8, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$SmallAppInfo;->widgetId:I

    .line 980
    const/4 v1, 0x4

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 981
    .local v10, "componentName":Ljava/lang/String;
    invoke-static {v10}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v9

    .line 983
    .local v9, "component":Landroid/content/ComponentName;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v1, v9}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v1

    iput-object v1, v8, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$SmallAppInfo;->intent:Landroid/content/Intent;

    .line 984
    iput-object v9, v8, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$SmallAppInfo;->component:Landroid/content/ComponentName;

    .line 986
    iget v1, v8, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$SmallAppInfo;->kind:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_5

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->mFilterType:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_5

    .line 987
    invoke-virtual {v7}, Landroid/appwidget/AppWidgetManager;->getInstalledProviders()Ljava/util/List;

    move-result-object v16

    .line 988
    .local v16, "list":Ljava/util/List;, "Ljava/util/List<Landroid/appwidget/AppWidgetProviderInfo;>;"
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/appwidget/AppWidgetProviderInfo;

    .line 989
    .local v15, "info":Landroid/appwidget/AppWidgetProviderInfo;
    iget-object v1, v8, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$SmallAppInfo;->component:Landroid/content/ComponentName;

    iget-object v2, v15, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/content/ComponentName;->compareTo(Landroid/content/ComponentName;)I

    move-result v1

    if-nez v1, :cond_2

    .line 990
    iget-object v1, v8, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$SmallAppInfo;->name:Ljava/lang/String;

    if-nez v1, :cond_3

    .line 991
    iget-object v1, v15, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    iput-object v1, v8, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$SmallAppInfo;->name:Ljava/lang/String;

    .line 993
    :cond_3
    iget v1, v15, Landroid/appwidget/AppWidgetProviderInfo;->icon:I

    if-eqz v1, :cond_4

    .line 994
    iget-object v1, v15, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget v2, v15, Landroid/appwidget/AppWidgetProviderInfo;->icon:I

    const/4 v4, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v8, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$SmallAppInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 997
    :cond_4
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->mFilterType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_7

    iget-boolean v1, v8, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$SmallAppInfo;->has_star:Z

    if-eqz v1, :cond_7

    .line 998
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->mAppInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1006
    .end local v14    # "i$":Ljava/util/Iterator;
    .end local v15    # "info":Landroid/appwidget/AppWidgetProviderInfo;
    .end local v16    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/appwidget/AppWidgetProviderInfo;>;"
    :cond_5
    :goto_3
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    .line 965
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_1

    .line 976
    .end local v9    # "component":Landroid/content/ComponentName;
    .end local v10    # "componentName":Ljava/lang/String;
    :cond_6
    const/4 v1, 0x0

    iput-boolean v1, v8, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$SmallAppInfo;->has_star:Z

    goto :goto_2

    .line 999
    .restart local v9    # "component":Landroid/content/ComponentName;
    .restart local v10    # "componentName":Ljava/lang/String;
    .restart local v14    # "i$":Ljava/util/Iterator;
    .restart local v15    # "info":Landroid/appwidget/AppWidgetProviderInfo;
    .restart local v16    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/appwidget/AppWidgetProviderInfo;>;"
    :cond_7
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->mFilterType:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_5

    .line 1000
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->mAppInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1008
    .end local v8    # "appinfo":Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$SmallAppInfo;
    .end local v9    # "component":Landroid/content/ComponentName;
    .end local v10    # "componentName":Ljava/lang/String;
    .end local v14    # "i$":Ljava/util/Iterator;
    .end local v15    # "info":Landroid/appwidget/AppWidgetProviderInfo;
    .end local v16    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/appwidget/AppWidgetProviderInfo;>;"
    :cond_8
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0
.end method

.method private refreshDatabase()V
    .locals 25

    .prologue
    .line 372
    invoke-virtual/range {p0 .. p0}, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v21

    .line 373
    .local v21, "pm":Landroid/content/pm/PackageManager;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.sony.smallapp.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "com.sony.smallapp.intent.category.LAUNCHER"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v15

    .line 374
    .local v15, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v20

    .line 376
    .local v20, "numTasks":I
    const/4 v2, 0x5

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "_id"

    aput-object v3, v4, v2

    const/4 v2, 0x1

    const-string v3, "label"

    aput-object v3, v4, v2

    const/4 v2, 0x2

    const-string v3, "kind"

    aput-object v3, v4, v2

    const/4 v2, 0x3

    const-string v3, "widgetid"

    aput-object v3, v4, v2

    const/4 v2, 0x4

    const-string v3, "componentname"

    aput-object v3, v4, v2

    .line 383
    .local v4, "ALARM_QUERY_COLUMNS":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->mContentProviderUri:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 388
    .local v11, "cursor":Landroid/database/Cursor;
    if-nez v11, :cond_0

    .line 437
    :goto_0
    return-void

    .line 392
    :cond_0
    const/16 v16, 0x0

    .line 393
    .local v16, "isExist":Z
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    .line 394
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-ge v12, v2, :cond_8

    .line 395
    const/4 v2, 0x0

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 396
    .local v13, "id":I
    const/4 v2, -0x1

    if-ne v13, v2, :cond_1

    .line 397
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    .line 399
    :cond_1
    const/4 v2, 0x1

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 400
    .local v19, "label":Ljava/lang/String;
    const/4 v2, 0x2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    .line 402
    .local v18, "kind":I
    if-nez v18, :cond_6

    .line 403
    const/4 v2, 0x4

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 404
    .local v10, "componentName":Ljava/lang/String;
    const/16 v17, 0x0

    .local v17, "j":I
    :goto_2
    move/from16 v0, v17

    move/from16 v1, v20

    if-ge v0, v1, :cond_2

    .line 405
    move/from16 v0, v17

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/pm/ResolveInfo;

    .line 406
    .local v14, "info":Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v22

    .line 407
    .local v22, "title":Ljava/lang/String;
    new-instance v9, Landroid/content/ComponentName;

    iget-object v2, v14, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v3, v14, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v9, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    .local v9, "component":Landroid/content/ComponentName;
    invoke-virtual {v9}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 410
    const/16 v16, 0x1

    .line 415
    .end local v9    # "component":Landroid/content/ComponentName;
    .end local v14    # "info":Landroid/content/pm/ResolveInfo;
    .end local v22    # "title":Ljava/lang/String;
    :cond_2
    if-nez v16, :cond_3

    .line 416
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->deleteContent(I)V

    .line 418
    :cond_3
    const/16 v16, 0x0

    .line 434
    .end local v10    # "componentName":Ljava/lang/String;
    .end local v17    # "j":I
    :cond_4
    :goto_3
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    .line 394
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 404
    .restart local v9    # "component":Landroid/content/ComponentName;
    .restart local v10    # "componentName":Ljava/lang/String;
    .restart local v14    # "info":Landroid/content/pm/ResolveInfo;
    .restart local v17    # "j":I
    .restart local v22    # "title":Ljava/lang/String;
    :cond_5
    add-int/lit8 v17, v17, 0x1

    goto :goto_2

    .line 419
    .end local v9    # "component":Landroid/content/ComponentName;
    .end local v10    # "componentName":Ljava/lang/String;
    .end local v14    # "info":Landroid/content/pm/ResolveInfo;
    .end local v17    # "j":I
    .end local v22    # "title":Ljava/lang/String;
    :cond_6
    const/4 v2, 0x1

    move/from16 v0, v18

    if-ne v0, v2, :cond_4

    .line 420
    new-instance v14, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$SmallAppInfo;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v2}, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$SmallAppInfo;-><init>(Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$1;)V

    .line 421
    .local v14, "info":Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$SmallAppInfo;
    const/4 v2, 0x3

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v23

    .line 422
    .local v23, "widgetId":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v8

    .line 423
    .local v8, "appWidgetManager":Landroid/appwidget/AppWidgetManager;
    if-gtz v23, :cond_7

    .line 424
    iput v13, v14, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$SmallAppInfo;->id:I

    .line 425
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->deleteWidgetInfo(Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$SmallAppInfo;)V

    goto :goto_3

    .line 427
    :cond_7
    move/from16 v0, v23

    invoke-virtual {v8, v0}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v24

    .line 428
    .local v24, "widgetinfo":Landroid/appwidget/AppWidgetProviderInfo;
    if-nez v24, :cond_4

    .line 429
    iput v13, v14, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$SmallAppInfo;->id:I

    .line 430
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->deleteWidgetInfo(Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$SmallAppInfo;)V

    goto :goto_3

    .line 436
    .end local v8    # "appWidgetManager":Landroid/appwidget/AppWidgetManager;
    .end local v13    # "id":I
    .end local v14    # "info":Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$SmallAppInfo;
    .end local v18    # "kind":I
    .end local v19    # "label":Ljava/lang/String;
    .end local v23    # "widgetId":I
    .end local v24    # "widgetinfo":Landroid/appwidget/AppWidgetProviderInfo;
    :cond_8
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0
.end method

.method private sendSmallAppWidgetHostService(Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$SmallAppInfo;Ljava/lang/String;)V
    .locals 3
    .param p1, "info"    # Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$SmallAppInfo;
    .param p2, "command"    # Ljava/lang/String;

    .prologue
    .line 914
    iget-object v0, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->mStatusBar:Lcom/android/systemui/statusbar/StatusBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->mStatusBar:Lcom/android/systemui/statusbar/StatusBar;

    instance-of v0, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    if-eqz v0, :cond_0

    .line 915
    iget-object v0, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->mStatusBar:Lcom/android/systemui/statusbar/StatusBar;

    check-cast v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    iget v1, p1, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$SmallAppInfo;->id:I

    iget-object v2, p1, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$SmallAppInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v0, v1, v2, p2}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->sendSmallAppWidgetManager(ILandroid/content/ComponentName;Ljava/lang/String;)V

    .line 917
    :cond_0
    return-void
.end method

.method private setShortcutButton(Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$SmallAppInfo;)V
    .locals 5
    .param p1, "info"    # Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$SmallAppInfo;

    .prologue
    const/4 v3, 0x1

    .line 791
    iget v0, p1, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$SmallAppInfo;->kind:I

    if-nez v0, :cond_1

    .line 792
    iget-object v0, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->mStatusBar:Lcom/android/systemui/statusbar/StatusBar;

    check-cast v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    iget-object v1, p1, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$SmallAppInfo;->icon:Landroid/graphics/drawable/Drawable;

    iget-object v2, p1, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$SmallAppInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->setShortcutButton(Landroid/graphics/drawable/Drawable;Landroid/content/Intent;Z)V

    .line 797
    :cond_0
    :goto_0
    return-void

    .line 793
    :cond_1
    iget v0, p1, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$SmallAppInfo;->kind:I

    if-ne v0, v3, :cond_0

    .line 794
    iget-object v0, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->mStatusBar:Lcom/android/systemui/statusbar/StatusBar;

    check-cast v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    iget-object v1, p1, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$SmallAppInfo;->icon:Landroid/graphics/drawable/Drawable;

    iget-object v2, p1, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$SmallAppInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    iget v3, p1, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$SmallAppInfo;->widgetId:I

    iget v4, p1, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$SmallAppInfo;->id:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->setSmallWidgetShortcutButton(Landroid/graphics/drawable/Drawable;Ljava/lang/String;II)V

    goto :goto_0
.end method

.method private setStar(Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$SmallAppInfo;)V
    .locals 7
    .param p1, "info"    # Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$SmallAppInfo;

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 1012
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1013
    .local v0, "values":Landroid/content/ContentValues;
    iget-boolean v1, p1, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$SmallAppInfo;->has_star:Z

    if-eqz v1, :cond_0

    .line 1014
    const-string v1, "has_star"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1015
    iput-boolean v6, p1, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$SmallAppInfo;->has_star:Z

    .line 1021
    :goto_0
    iget-object v1, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->mContentProviderUri:Landroid/net/Uri;

    const-string v3, "_id = ?"

    new-array v4, v4, [Ljava/lang/String;

    iget v5, p1, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$SmallAppInfo;->id:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1028
    iget-object v1, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->mAdapter:Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$SmallAppItemAdapter;

    invoke-virtual {v1}, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$SmallAppItemAdapter;->notifyDataSetChanged()V

    .line 1029
    invoke-direct {p0}, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->updateSmallAppsList()V

    .line 1030
    return-void

    .line 1017
    :cond_0
    const-string v1, "has_star"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1018
    iput-boolean v4, p1, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$SmallAppInfo;->has_star:Z

    goto :goto_0
.end method

.method private unsetShortcutButton()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 800
    iget-object v0, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->mStatusBar:Lcom/android/systemui/statusbar/StatusBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->mStatusBar:Lcom/android/systemui/statusbar/StatusBar;

    instance-of v0, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    if-eqz v0, :cond_0

    .line 801
    iget-object v0, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->mStatusBar:Lcom/android/systemui/statusbar/StatusBar;

    check-cast v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v2, v1}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->setShortcutButton(Landroid/graphics/drawable/Drawable;Landroid/content/Intent;Z)V

    .line 803
    :cond_0
    return-void
.end method

.method private updateSmallAppsInfo()V
    .locals 2

    .prologue
    .line 357
    iget-object v0, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->mAppInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 358
    invoke-direct {p0}, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->refreshDatabase()V

    .line 360
    iget v0, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->mFilterType:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 361
    invoke-direct {p0}, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->loadSmallAppInfo()V

    .line 364
    :cond_0
    iget v0, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->mFilterType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 365
    invoke-direct {p0}, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->loadWidgetInfo()V

    .line 368
    :cond_1
    iget-object v0, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->mAppInfos:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->SMALLAPP_NAME_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 369
    return-void
.end method

.method private updateSmallAppsList()V
    .locals 26

    .prologue
    .line 251
    invoke-direct/range {p0 .. p0}, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->updateSmallAppsInfo()V

    .line 253
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->mAppInfos:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v18

    .line 255
    .local v18, "numItems":I
    const v23, 0x7f0e009e

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/view/ViewGroup;

    .line 256
    .local v22, "viewRoot":Landroid/view/ViewGroup;
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/view/WindowManagerImpl;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    .line 257
    .local v5, "d":Landroid/view/Display;
    invoke-virtual {v5}, Landroid/view/Display;->getWidth()I

    move-result v23

    invoke-virtual/range {v22 .. v22}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v24

    invoke-virtual/range {v22 .. v22}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v25

    add-int v24, v24, v25

    add-int/lit8 v24, v24, 0x4c

    sub-int v10, v23, v24

    .line 258
    .local v10, "gridWidth":I
    div-int/lit8 v16, v10, 0x7c

    .line 260
    .local v16, "maxNum":I
    if-nez v18, :cond_3

    .line 261
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->mPanelContent:Landroid/view/ViewGroup;

    move-object/from16 v23, v0

    const/16 v24, 0x8

    invoke-virtual/range {v23 .. v24}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 262
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->mPanelMessage:Landroid/view/ViewGroup;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 269
    :goto_0
    move/from16 v0, v18

    move/from16 v1, v16

    if-ge v0, v1, :cond_4

    .line 270
    if-nez v18, :cond_0

    const/16 v18, 0x1

    .line 271
    :cond_0
    move/from16 v17, v18

    .line 277
    .local v17, "num":I
    :goto_1
    :try_start_0
    const-string v23, "com.sony.nfx.android.internal.util.MultiDisplayInfoImpl"

    invoke-static/range {v23 .. v23}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 278
    .local v3, "clsMultiDisplayInfoImpl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v23, "getInstance"

    const/16 v24, 0x0

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v24, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v3, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    .line 279
    .local v8, "getInstance":Ljava/lang/reflect/Method;
    const/16 v23, 0x0

    const/16 v24, 0x0

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v8, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .line 281
    .local v14, "instance":Ljava/lang/Object;
    const-string v23, "getCount"

    const/16 v24, 0x0

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v24, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v3, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 282
    .local v7, "getCount":Ljava/lang/reflect/Method;
    const/16 v23, 0x0

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v7, v14, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Integer;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 283
    .local v4, "count":I
    const/16 v23, 0x2

    move/from16 v0, v23

    if-ne v4, v0, :cond_5

    const/16 v23, 0x1

    :goto_2
    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->mIsDualScreen:Z

    .line 284
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->mIsDualScreen:Z

    move/from16 v23, v0

    if-eqz v23, :cond_2

    .line 285
    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v2, v0, [Ljava/lang/Class;

    .line 286
    .local v2, "c":[Ljava/lang/Class;
    const/16 v23, 0x0

    sget-object v24, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v24, v2, v23

    .line 287
    const-string v23, "getOffset"

    move-object/from16 v0, v23

    invoke-virtual {v3, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    .line 288
    .local v9, "getOffset":Ljava/lang/reflect/Method;
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_3
    if-ge v13, v4, :cond_2

    .line 289
    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v23, v24

    move-object/from16 v0, v23

    invoke-virtual {v9, v14, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/Point;

    .line 290
    .local v12, "hingePoint":Landroid/graphics/Point;
    iget v0, v12, Landroid/graphics/Point;->x:I

    move/from16 v23, v0

    if-eqz v23, :cond_7

    .line 291
    move/from16 v0, v18

    move/from16 v1, v16

    if-ge v0, v1, :cond_6

    .line 292
    move/from16 v16, v18

    .line 293
    rem-int/lit8 v23, v16, 0x2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_1

    .line 294
    add-int/lit8 v16, v16, 0x1

    .line 301
    :cond_1
    :goto_4
    move/from16 v17, v16

    .line 310
    .end local v2    # "c":[Ljava/lang/Class;
    .end local v3    # "clsMultiDisplayInfoImpl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "count":I
    .end local v7    # "getCount":Ljava/lang/reflect/Method;
    .end local v8    # "getInstance":Ljava/lang/reflect/Method;
    .end local v9    # "getOffset":Ljava/lang/reflect/Method;
    .end local v12    # "hingePoint":Landroid/graphics/Point;
    .end local v13    # "i":I
    .end local v14    # "instance":Ljava/lang/Object;
    :cond_2
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->mGridView:Landroid/widget/GridView;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 312
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->mGridView:Landroid/widget/GridView;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/widget/GridView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 313
    .local v11, "gridparams":Landroid/view/ViewGroup$MarginLayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->mGridView:Landroid/widget/GridView;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/widget/GridView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    .end local v11    # "gridparams":Landroid/view/ViewGroup$MarginLayoutParams;
    check-cast v11, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 314
    .restart local v11    # "gridparams":Landroid/view/ViewGroup$MarginLayoutParams;
    mul-int/lit8 v23, v17, 0x7c

    move/from16 v0, v23

    iput v0, v11, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 315
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->mGridView:Landroid/widget/GridView;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Landroid/widget/GridView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 317
    const v23, 0x7f0e00a3

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v20

    .line 318
    .local v20, "spaceLeftView":Landroid/view/View;
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 319
    .local v15, "leftparams":Landroid/view/ViewGroup$MarginLayoutParams;
    const/16 v23, 0x26

    move/from16 v0, v23

    iput v0, v15, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 320
    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 322
    const v23, 0x7f0e00a5

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v21

    .line 323
    .local v21, "spaceRightView":Landroid/view/View;
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v19

    check-cast v19, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 324
    .local v19, "rightparams":Landroid/view/ViewGroup$MarginLayoutParams;
    const/16 v23, 0x26

    move/from16 v0, v23

    move-object/from16 v1, v19

    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 325
    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 327
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->mAdapter:Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$SmallAppItemAdapter;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$SmallAppItemAdapter;->notifyDataSetChanged()V

    .line 328
    return-void

    .line 264
    .end local v11    # "gridparams":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v15    # "leftparams":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v17    # "num":I
    .end local v19    # "rightparams":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v20    # "spaceLeftView":Landroid/view/View;
    .end local v21    # "spaceRightView":Landroid/view/View;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->mPanelContent:Landroid/view/ViewGroup;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 265
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->mPanelMessage:Landroid/view/ViewGroup;

    move-object/from16 v23, v0

    const/16 v24, 0x8

    invoke-virtual/range {v23 .. v24}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_0

    .line 273
    :cond_4
    move/from16 v17, v16

    .restart local v17    # "num":I
    goto/16 :goto_1

    .line 283
    .restart local v3    # "clsMultiDisplayInfoImpl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v4    # "count":I
    .restart local v7    # "getCount":Ljava/lang/reflect/Method;
    .restart local v8    # "getInstance":Ljava/lang/reflect/Method;
    .restart local v14    # "instance":Ljava/lang/Object;
    :cond_5
    const/16 v23, 0x0

    goto/16 :goto_2

    .line 297
    .restart local v2    # "c":[Ljava/lang/Class;
    .restart local v9    # "getOffset":Ljava/lang/reflect/Method;
    .restart local v12    # "hingePoint":Landroid/graphics/Point;
    .restart local v13    # "i":I
    :cond_6
    :try_start_1
    rem-int/lit8 v23, v16, 0x2
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_1

    .line 298
    add-int/lit8 v16, v16, -0x1

    goto/16 :goto_4

    .line 288
    :cond_7
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_3

    .line 306
    .end local v2    # "c":[Ljava/lang/Class;
    .end local v3    # "clsMultiDisplayInfoImpl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "count":I
    .end local v7    # "getCount":Ljava/lang/reflect/Method;
    .end local v8    # "getInstance":Ljava/lang/reflect/Method;
    .end local v9    # "getOffset":Ljava/lang/reflect/Method;
    .end local v12    # "hingePoint":Landroid/graphics/Point;
    .end local v13    # "i":I
    .end local v14    # "instance":Ljava/lang/Object;
    :catch_0
    move-exception v6

    .line 307
    .local v6, "e":Ljava/lang/Throwable;
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_5
.end method


# virtual methods
.method protected addNewWidget(Lcom/sony/nfx/android/systemui/smallapp/SmallAppWidgetListAdapter$Item;)V
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/4 v7, 0x0

    const/4 v3, 0x0

    .line 883
    iget-object v0, p1, Lcom/sony/nfx/android/systemui/smallapp/SmallAppWidgetListAdapter$Item;->label:Ljava/lang/String;

    .line 884
    iget-object v1, p1, Lcom/sony/nfx/android/systemui/smallapp/SmallAppWidgetListAdapter$Item;->icon:Landroid/graphics/drawable/Drawable;

    .line 885
    iget-object v2, p1, Lcom/sony/nfx/android/systemui/smallapp/SmallAppWidgetListAdapter$Item;->component:Landroid/content/ComponentName;

    .line 886
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v4, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v4

    .line 888
    new-instance v6, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$SmallAppInfo;

    invoke-direct {v6, p0, v3}, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$SmallAppInfo;-><init>(Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$1;)V

    .line 889
    iput-object v0, v6, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$SmallAppInfo;->name:Ljava/lang/String;

    .line 890
    iput-object v4, v6, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$SmallAppInfo;->intent:Landroid/content/Intent;

    .line 891
    iput-object v1, v6, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$SmallAppInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 892
    iput v5, v6, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$SmallAppInfo;->kind:I

    .line 893
    iput-boolean v7, v6, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$SmallAppInfo;->has_star:Z

    .line 894
    iput-object v2, v6, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$SmallAppInfo;->component:Landroid/content/ComponentName;

    .line 896
    invoke-direct {p0, v6}, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->insertSmallAppInfo(Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$SmallAppInfo;)V

    .line 897
    iget-object v0, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->mContentProviderUri:Landroid/net/Uri;

    new-array v2, v5, [Ljava/lang/String;

    const-string v4, "_id"

    aput-object v4, v2, v7

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 902
    invoke-interface {v0}, Landroid/database/Cursor;->moveToLast()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 903
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v6, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$SmallAppInfo;->id:I

    .line 905
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 907
    const-string v0, "create"

    invoke-direct {p0, v6, v0}, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->sendSmallAppWidgetHostService(Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$SmallAppInfo;Ljava/lang/String;)V

    .line 908
    iget-object v0, p1, Lcom/sony/nfx/android/systemui/smallapp/SmallAppWidgetListAdapter$Item;->configure:Landroid/content/ComponentName;

    if-eqz v0, :cond_1

    .line 909
    invoke-direct {p0}, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->hide()V

    .line 911
    :cond_1
    return-void
.end method

.method protected animateClickFeedback(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 612
    invoke-virtual {p0}, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f040009

    invoke-static {v1, v2}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    check-cast v0, Landroid/animation/ObjectAnimator;

    .line 614
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v0, p1}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    .line 615
    new-instance v1, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$3;

    invoke-direct {v1, p0, p2}, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$3;-><init>(Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 620
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 621
    return-void
.end method

.method public deleteContent(I)V
    .locals 6
    .param p1, "id"    # I

    .prologue
    .line 927
    iget-object v0, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->mContentProviderUri:Landroid/net/Uri;

    const-string v2, "_id = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 932
    return-void
.end method

.method public isInContentArea(II)Z
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 230
    iget-object v4, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->mSmallAppContainer:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getLeft()I

    move-result v1

    .line 231
    .local v1, "l":I
    iget-object v4, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->mSmallAppContainer:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getRight()I

    move-result v2

    .line 232
    .local v2, "r":I
    iget-object v4, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->mSmallAppContainer:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getTop()I

    move-result v3

    .line 233
    .local v3, "t":I
    iget-object v4, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->mSmallAppContainer:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getBottom()I

    move-result v0

    .line 234
    .local v0, "b":I
    if-lt p1, v1, :cond_0

    if-ge p1, v2, :cond_0

    if-lt p2, v3, :cond_0

    if-ge p2, v0, :cond_0

    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 247
    iget-boolean v0, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->mShowing:Z

    return v0
.end method

.method public onAddWidget(ILandroid/content/ComponentName;I)V
    .locals 11
    .param p1, "id"    # I
    .param p2, "component"    # Landroid/content/ComponentName;
    .param p3, "widgetId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 168
    invoke-virtual {p0}, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 169
    .local v3, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {p0}, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 171
    .local v0, "appWidgetManager":Landroid/appwidget/AppWidgetManager;
    new-instance v2, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$SmallAppInfo;

    const/4 v6, 0x0

    invoke-direct {v2, p0, v6}, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$SmallAppInfo;-><init>(Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$1;)V

    .line 172
    .local v2, "info":Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$SmallAppInfo;
    iput p1, v2, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$SmallAppInfo;->id:I

    .line 173
    iput p3, v2, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$SmallAppInfo;->widgetId:I

    .line 175
    iget v6, v2, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$SmallAppInfo;->widgetId:I

    if-gez v6, :cond_1

    .line 176
    iget v6, v2, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$SmallAppInfo;->id:I

    invoke-virtual {p0, v6}, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->deleteContent(I)V

    .line 192
    :cond_0
    :goto_0
    return-void

    .line 180
    :cond_1
    iget v6, v2, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$SmallAppInfo;->widgetId:I

    invoke-virtual {v0, v6}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v5

    .line 181
    .local v5, "widgetinfo":Landroid/appwidget/AppWidgetProviderInfo;
    if-eqz v5, :cond_0

    .line 182
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 183
    .local v4, "values":Landroid/content/ContentValues;
    const-string v6, "widgetid"

    iget v7, v2, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$SmallAppInfo;->widgetId:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 185
    iget-object v6, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->mOpenHelper:Lcom/sony/nfx/android/systemui/smallapp/SmallAppInfoDatabaseHelper;

    invoke-virtual {v6}, Lcom/sony/nfx/android/systemui/smallapp/SmallAppInfoDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 186
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {}, Lcom/sony/nfx/android/systemui/smallapp/SmallAppInfoProvider;->getTableName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "_id = ?"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v1, v6, v4, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 187
    invoke-virtual {p0}, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    iget-object v7, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->mContentProviderUri:Landroid/net/Uri;

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 189
    iget-object v6, v5, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    iput-object v6, v2, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$SmallAppInfo;->name:Ljava/lang/String;

    .line 190
    const/4 v6, 0x1

    invoke-direct {p0, v2, v6}, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->editSmallAppLabel(Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$SmallAppInfo;Z)V

    goto :goto_0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 519
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 521
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iget v1, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->mCurrentOrientation:I

    if-eq v0, v1, :cond_0

    .line 522
    if-eqz p0, :cond_0

    .line 523
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->show(ZZ)V

    .line 524
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->mCurrentOrientation:I

    .line 527
    :cond_0
    return-void
.end method

.method public onDeleteWidget(I)V
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 195
    invoke-direct {p0, p1}, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->deleteWidget(I)I

    .line 196
    iget-object v0, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->mAdapter:Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$SmallAppItemAdapter;

    invoke-virtual {v0}, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$SmallAppItemAdapter;->notifyDataSetChanged()V

    .line 197
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 1141
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 1143
    invoke-virtual {p0}, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->mEditLabelReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1144
    invoke-virtual {p0}, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->mShutdownReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1145
    return-void
.end method

.method protected onFinishInflate()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 536
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 537
    const v2, 0x7f0e009f

    invoke-virtual {p0, v2}, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->mSmallAppContainer:Landroid/view/ViewGroup;

    .line 538
    const v2, 0x7f0e00a4

    invoke-virtual {p0, v2}, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/GridView;

    iput-object v2, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->mGridView:Landroid/widget/GridView;

    .line 539
    iget-object v2, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->mGridView:Landroid/widget/GridView;

    iget-object v3, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->mAdapter:Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$SmallAppItemAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 540
    iget-object v2, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->mGridView:Landroid/widget/GridView;

    iget-object v3, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 541
    iget-object v2, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->mGridView:Landroid/widget/GridView;

    iget-object v3, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->mItemLongPressListner:Landroid/widget/AdapterView$OnItemLongClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 542
    iget-object v2, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->mGridView:Landroid/widget/GridView;

    const v3, 0x7f02005b

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setSelector(I)V

    .line 544
    const v2, 0x7f0e00a2

    invoke-virtual {p0, v2}, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->mPanelContent:Landroid/view/ViewGroup;

    .line 545
    const v2, 0x7f0e00a6

    invoke-virtual {p0, v2}, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->mPanelMessage:Landroid/view/ViewGroup;

    .line 547
    const v2, 0x7f0e0014

    invoke-virtual {p0, v2}, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->mMenuButton:Landroid/view/View;

    .line 548
    iget-object v2, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->mMenuButton:Landroid/view/View;

    iget-object v3, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->mMenuListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 549
    new-instance v2, Landroid/widget/ListPopupWindow;

    invoke-virtual {p0}, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->mMenuWindow:Landroid/widget/ListPopupWindow;

    .line 551
    const v2, 0x7f0e00a0

    invoke-virtual {p0, v2}, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    iput-object v2, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->mAppFilter:Landroid/widget/Spinner;

    .line 553
    const/4 v2, 0x4

    new-array v1, v2, [Ljava/lang/CharSequence;

    const v2, 0x7f080009

    invoke-direct {p0, v2}, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->getResourcesString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const/4 v2, 0x1

    const v3, 0x7f08000c

    invoke-direct {p0, v3}, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->getResourcesString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const v3, 0x7f08000a

    invoke-direct {p0, v3}, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->getResourcesString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const v3, 0x7f08000b

    invoke-direct {p0, v3}, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->getResourcesString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 559
    .local v1, "filterLabels":[Ljava/lang/CharSequence;
    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f030008

    invoke-direct {v0, v2, v3, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 561
    .local v0, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    const v2, 0x1090009

    invoke-virtual {v0, v2}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 562
    iget-object v2, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->mAppFilter:Landroid/widget/Spinner;

    invoke-virtual {v2, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 564
    iget-object v2, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->mAppFilter:Landroid/widget/Spinner;

    invoke-virtual {v2, v4}, Landroid/widget/Spinner;->setSelection(I)V

    .line 565
    iget-object v2, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->mAppFilter:Landroid/widget/Spinner;

    iget-object v3, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->mAppFilterListner:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 567
    const v2, 0x7f0e00a1

    invoke-virtual {p0, v2}, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->mMenuAdd:Landroid/widget/TextView;

    .line 568
    iget-object v2, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->mMenuAdd:Landroid/widget/TextView;

    new-instance v3, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$1;

    invoke-direct {v3, p0}, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$1;-><init>(Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 576
    iget-object v2, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->mLabelIntentFilter:Landroid/content/IntentFilter;

    const-string v3, "com.sony.nfx.intent.action.SMALLAPP_WIDGET_EDIT_LABEL"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 577
    invoke-virtual {p0}, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->mEditLabelReceiver:Landroid/content/BroadcastReceiver;

    iget-object v4, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->mLabelIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 578
    iget-object v2, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->mCacheIntentFilter:Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 579
    invoke-virtual {p0}, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->mShutdownReceiver:Landroid/content/BroadcastReceiver;

    iget-object v4, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->mCacheIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 580
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 531
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;->onSizeChanged(IIII)V

    .line 532
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 239
    const/4 v0, 0x0

    return v0
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 341
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onWindowVisibilityChanged(I)V

    .line 342
    if-eqz p1, :cond_1

    .line 343
    iget-object v0, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->mAppWidgetDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 344
    iget-object v0, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->mAppWidgetDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 346
    :cond_0
    iget-object v0, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->mAddSmallAppDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 347
    iget-object v0, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->mAddSmallAppDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 350
    :cond_1
    return-void
.end method

.method public setBar(Lcom/android/systemui/statusbar/StatusBar;)V
    .locals 0
    .param p1, "statusbar"    # Lcom/android/systemui/statusbar/StatusBar;

    .prologue
    .line 243
    iput-object p1, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->mStatusBar:Lcom/android/systemui/statusbar/StatusBar;

    .line 244
    return-void
.end method

.method public show(ZZ)V
    .locals 1
    .param p1, "show"    # Z
    .param p2, "animate"    # Z

    .prologue
    .line 332
    iput-boolean p1, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->mShowing:Z

    .line 333
    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->setVisibility(I)V

    .line 334
    if-eqz p1, :cond_0

    .line 335
    invoke-direct {p0}, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->updateSmallAppsList()V

    .line 337
    :cond_0
    return-void

    .line 333
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method
