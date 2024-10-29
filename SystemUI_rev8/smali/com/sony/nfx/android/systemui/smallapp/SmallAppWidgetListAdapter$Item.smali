.class public Lcom/sony/nfx/android/systemui/smallapp/SmallAppWidgetListAdapter$Item;
.super Ljava/lang/Object;
.source "SmallAppWidgetListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sony/nfx/android/systemui/smallapp/SmallAppWidgetListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Item"
.end annotation


# instance fields
.field public component:Landroid/content/ComponentName;

.field public configure:Landroid/content/ComponentName;

.field public icon:Landroid/graphics/drawable/Drawable;

.field public label:Ljava/lang/String;

.field public spanXY:[I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
