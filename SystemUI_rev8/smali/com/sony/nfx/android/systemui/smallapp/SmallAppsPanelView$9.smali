.class Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$9;
.super Ljava/lang/Object;
.source "SmallAppsPanelView.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;
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
        "Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$SmallAppInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;


# direct methods
.method constructor <init>(Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;)V
    .locals 0

    .prologue
    .line 935
    iput-object p1, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$9;->this$0:Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$SmallAppInfo;Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$SmallAppInfo;)I
    .locals 4
    .param p1, "info1"    # Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$SmallAppInfo;
    .param p2, "info2"    # Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$SmallAppInfo;

    .prologue
    .line 937
    iget-object v1, p0, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$9;->this$0:Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;

    invoke-static {v1}, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;->access$1700(Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView;)Ljava/text/Collator;

    move-result-object v1

    iget-object v2, p1, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$SmallAppInfo;->name:Ljava/lang/String;

    iget-object v3, p2, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$SmallAppInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 938
    .local v0, "result":I
    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 935
    check-cast p1, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$SmallAppInfo;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$SmallAppInfo;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$9;->compare(Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$SmallAppInfo;Lcom/sony/nfx/android/systemui/smallapp/SmallAppsPanelView$SmallAppInfo;)I

    move-result v0

    return v0
.end method
