.class public Lcom/android/systemui/statusbar/tablet/NotificationIconArea;
.super Landroid/widget/RelativeLayout;
.source "NotificationIconArea.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/tablet/NotificationIconArea$IconLayout;
    }
.end annotation


# instance fields
.field mIconLayout:Lcom/android/systemui/statusbar/tablet/NotificationIconArea$IconLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    const v0, 0x7f0e0021

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/tablet/NotificationIconArea;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/tablet/NotificationIconArea$IconLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/tablet/NotificationIconArea;->mIconLayout:Lcom/android/systemui/statusbar/tablet/NotificationIconArea$IconLayout;

    .line 42
    return-void
.end method
