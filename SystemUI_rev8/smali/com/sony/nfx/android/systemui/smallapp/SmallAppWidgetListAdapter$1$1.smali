.class Lcom/sony/nfx/android/systemui/smallapp/SmallAppWidgetListAdapter$1$1;
.super Ljava/lang/Object;
.source "SmallAppWidgetListAdapter.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sony/nfx/android/systemui/smallapp/SmallAppWidgetListAdapter$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/sony/nfx/android/systemui/smallapp/SmallAppWidgetListAdapter$Item;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sony/nfx/android/systemui/smallapp/SmallAppWidgetListAdapter$1;


# direct methods
.method constructor <init>(Lcom/sony/nfx/android/systemui/smallapp/SmallAppWidgetListAdapter$1;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppWidgetListAdapter$1$1;->this$1:Lcom/sony/nfx/android/systemui/smallapp/SmallAppWidgetListAdapter$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/sony/nfx/android/systemui/smallapp/SmallAppWidgetListAdapter$Item;Lcom/sony/nfx/android/systemui/smallapp/SmallAppWidgetListAdapter$Item;)I
    .locals 2
    .param p1, "lhs"    # Lcom/sony/nfx/android/systemui/smallapp/SmallAppWidgetListAdapter$Item;
    .param p2, "rhs"    # Lcom/sony/nfx/android/systemui/smallapp/SmallAppWidgetListAdapter$Item;

    .prologue
    .line 107
    iget-object v0, p1, Lcom/sony/nfx/android/systemui/smallapp/SmallAppWidgetListAdapter$Item;->label:Ljava/lang/String;

    iget-object v1, p2, Lcom/sony/nfx/android/systemui/smallapp/SmallAppWidgetListAdapter$Item;->label:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 104
    check-cast p1, Lcom/sony/nfx/android/systemui/smallapp/SmallAppWidgetListAdapter$Item;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/sony/nfx/android/systemui/smallapp/SmallAppWidgetListAdapter$Item;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/sony/nfx/android/systemui/smallapp/SmallAppWidgetListAdapter$1$1;->compare(Lcom/sony/nfx/android/systemui/smallapp/SmallAppWidgetListAdapter$Item;Lcom/sony/nfx/android/systemui/smallapp/SmallAppWidgetListAdapter$Item;)I

    move-result v0

    return v0
.end method
