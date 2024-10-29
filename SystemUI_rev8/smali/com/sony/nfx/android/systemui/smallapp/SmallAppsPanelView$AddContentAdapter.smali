.class Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$AddContentAdapter;
.super Landroid/widget/BaseAdapter;
.source "SmallAppsPanelView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AddContentAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$AddContentAdapter$ItemHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/BaseAdapter;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field final mDescItems:[Ljava/lang/CharSequence;

.field private final mInflater:Landroid/view/LayoutInflater;

.field final mItems:[Ljava/lang/CharSequence;

.field final synthetic this$0:Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;


# direct methods
.method public constructor <init>(Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;Landroid/content/Context;)V
    .locals 6
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .local p0, "this":Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$AddContentAdapter;, "Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$AddContentAdapter<TT;>;"
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1085
    iput-object p1, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$AddContentAdapter;->this$0:Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 1069
    new-array v0, v5, [Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$AddContentAdapter;->this$0:Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;

    invoke-virtual {v1}, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f080014

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$AddContentAdapter;->this$0:Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;

    invoke-virtual {v1}, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f080016

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$AddContentAdapter;->mItems:[Ljava/lang/CharSequence;

    .line 1074
    new-array v0, v5, [Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$AddContentAdapter;->this$0:Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;

    invoke-virtual {v1}, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f080015

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$AddContentAdapter;->this$0:Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;

    invoke-virtual {v1}, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f080017

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$AddContentAdapter;->mDescItems:[Ljava/lang/CharSequence;

    .line 1086
    iput-object p2, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$AddContentAdapter;->mContext:Landroid/content/Context;

    .line 1087
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$AddContentAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 1088
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 1092
    .local p0, "this":Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$AddContentAdapter;, "Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$AddContentAdapter<TT;>;"
    iget-object v0, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$AddContentAdapter;->mItems:[Ljava/lang/CharSequence;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 1097
    .local p0, "this":Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$AddContentAdapter;, "Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$AddContentAdapter<TT;>;"
    iget-object v0, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$AddContentAdapter;->mItems:[Ljava/lang/CharSequence;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 1102
    .local p0, "this":Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$AddContentAdapter;, "Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$AddContentAdapter<TT;>;"
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .local p0, "this":Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$AddContentAdapter;, "Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$AddContentAdapter<TT;>;"
    const v8, 0x7f0a0016

    .line 1109
    iget-object v5, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$AddContentAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v6, 0x109006f

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 1111
    new-instance v1, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$AddContentAdapter$ItemHolder;

    invoke-direct {v1, p0}, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$AddContentAdapter$ItemHolder;-><init>(Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$AddContentAdapter;)V

    .line 1112
    .local v1, "holder":Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$AddContentAdapter$ItemHolder;, "Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$AddContentAdapter<TT;>.ItemHolder;"
    const v5, 0x1020006

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, v1, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$AddContentAdapter$ItemHolder;->icon:Landroid/widget/ImageView;

    .line 1113
    iget-object v5, v1, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$AddContentAdapter$ItemHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 1114
    .local v3, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget-object v5, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$AddContentAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1115
    iget-object v5, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$AddContentAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iget-object v6, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$AddContentAdapter;->this$0:Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;

    invoke-virtual {v6}, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0017

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    add-int/2addr v5, v6

    iput v5, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1117
    iget-object v5, v1, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$AddContentAdapter$ItemHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1118
    const v5, 0x1020016

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v1, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$AddContentAdapter$ItemHolder;->title:Landroid/widget/TextView;

    .line 1119
    const v5, 0x1020010

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v1, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$AddContentAdapter$ItemHolder;->summary:Landroid/widget/TextView;

    .line 1121
    iget-object v5, v1, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$AddContentAdapter$ItemHolder;->title:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$AddContentAdapter;->mItems:[Ljava/lang/CharSequence;

    aget-object v6, v6, p1

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1122
    iget-object v5, v1, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$AddContentAdapter$ItemHolder;->summary:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$AddContentAdapter;->mDescItems:[Ljava/lang/CharSequence;

    aget-object v6, v6, p1

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1123
    if-nez p1, :cond_1

    .line 1125
    :try_start_0
    iget-object v5, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$AddContentAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string v6, "com.android.vending"

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1126
    .local v2, "icon":Landroid/graphics/drawable/Drawable;
    iget-object v5, v1, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$AddContentAdapter$ItemHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1135
    .end local v2    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_0
    :goto_0
    return-object p2

    .line 1129
    :cond_1
    const/4 v5, 0x1

    if-ne p1, v5, :cond_0

    .line 1130
    iget-object v5, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$AddContentAdapter;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 1131
    .local v0, "appWidgetManager":Landroid/appwidget/AppWidgetManager;
    invoke-virtual {v0}, Landroid/appwidget/AppWidgetManager;->getInstalledProviders()Ljava/util/List;

    move-result-object v4

    .line 1132
    .local v4, "widgetList":Ljava/util/List;, "Ljava/util/List<Landroid/appwidget/AppWidgetProviderInfo;>;"
    iget-object v5, v1, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$AddContentAdapter$ItemHolder;->title:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 1133
    iget-object v5, v1, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$AddContentAdapter$ItemHolder;->icon:Landroid/widget/ImageView;

    const v6, 0x7f020063

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 1127
    .end local v0    # "appWidgetManager":Landroid/appwidget/AppWidgetManager;
    .end local v4    # "widgetList":Ljava/util/List;, "Ljava/util/List<Landroid/appwidget/AppWidgetProviderInfo;>;"
    :catch_0
    move-exception v5

    goto :goto_0
.end method
