.class Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$SmallAppInfo;
.super Ljava/lang/Object;
.source "SmallAppsPanelView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SmallAppInfo"
.end annotation


# instance fields
.field public component:Landroid/content/ComponentName;

.field public has_star:Z

.field public icon:Landroid/graphics/drawable/Drawable;

.field public id:I

.field public intent:Landroid/content/Intent;

.field public kind:I

.field public name:Ljava/lang/String;

.field final synthetic this$0:Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;

.field public widgetId:I


# direct methods
.method private constructor <init>(Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;)V
    .locals 0

    .prologue
    .line 154
    iput-object p1, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$SmallAppInfo;->this$0:Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;
    .param p2, "x1"    # Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$1;

    .prologue
    .line 154
    invoke-direct {p0, p1}, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$SmallAppInfo;-><init>(Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;)V

    return-void
.end method
