.class Lcom/android/systemui/usb/StorageNotification$StorageNotificationStringGetter;
.super Ljava/lang/Object;
.source "StorageNotification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/usb/StorageNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StorageNotificationStringGetter"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 630
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/usb/StorageNotification$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/usb/StorageNotification$1;

    .prologue
    .line 630
    invoke-direct {p0}, Lcom/android/systemui/usb/StorageNotification$StorageNotificationStringGetter;-><init>()V

    return-void
.end method


# virtual methods
.method getMessageIdOnBadRemoval()I
    .locals 1

    .prologue
    .line 644
    const v0, 0x1040e10

    return v0
.end method

.method getMessageIdOnChecking()I
    .locals 1

    .prologue
    .line 636
    const v0, 0x1040e0a

    return v0
.end method

.method getMessageIdOnNoMedia()I
    .locals 1

    .prologue
    .line 676
    const v0, 0x1040e14

    return v0
.end method

.method getMessageIdOnNofs()I
    .locals 1

    .prologue
    .line 668
    const v0, 0x1040e0c

    return v0
.end method

.method getMessageIdOnSafeUnmount()I
    .locals 1

    .prologue
    .line 660
    const v0, 0x1040e12

    return v0
.end method

.method getMessageIdOnUnmountable()I
    .locals 1

    .prologue
    .line 652
    const v0, 0x1040e0e

    return v0
.end method

.method getTitleIdOnBadRemoval()I
    .locals 1

    .prologue
    .line 640
    const v0, 0x1040e0f

    return v0
.end method

.method getTitleIdOnChecking()I
    .locals 1

    .prologue
    .line 632
    const v0, 0x1040e09

    return v0
.end method

.method getTitleIdOnNoMedia()I
    .locals 1

    .prologue
    .line 672
    const v0, 0x1040e13

    return v0
.end method

.method getTitleIdOnNofs()I
    .locals 1

    .prologue
    .line 664
    const v0, 0x1040e0b

    return v0
.end method

.method getTitleIdOnSafeUnmount()I
    .locals 1

    .prologue
    .line 656
    const v0, 0x1040e11

    return v0
.end method

.method getTitleIdOnUnmountable()I
    .locals 1

    .prologue
    .line 648
    const v0, 0x1040e0d

    return v0
.end method