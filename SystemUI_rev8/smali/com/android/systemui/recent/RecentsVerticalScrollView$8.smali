.class Lcom/android/systemui/recent/RecentsVerticalScrollView$8;
.super Landroid/database/DataSetObserver;
.source "RecentsVerticalScrollView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recent/RecentsVerticalScrollView;->setAdapter(Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recent/RecentsVerticalScrollView;


# direct methods
.method constructor <init>(Lcom/android/systemui/recent/RecentsVerticalScrollView;)V
    .locals 0

    .prologue
    .line 457
    iput-object p1, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView$8;->this$0:Lcom/android/systemui/recent/RecentsVerticalScrollView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 459
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView$8;->this$0:Lcom/android/systemui/recent/RecentsVerticalScrollView;

    invoke-static {v0}, Lcom/android/systemui/recent/RecentsVerticalScrollView;->access$300(Lcom/android/systemui/recent/RecentsVerticalScrollView;)V

    .line 460
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 463
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView$8;->this$0:Lcom/android/systemui/recent/RecentsVerticalScrollView;

    invoke-static {v0}, Lcom/android/systemui/recent/RecentsVerticalScrollView;->access$300(Lcom/android/systemui/recent/RecentsVerticalScrollView;)V

    .line 464
    return-void
.end method
