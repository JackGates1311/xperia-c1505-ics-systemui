.class Lcom/android/systemui/usb/StorageNotification$InteralStorageNotificationStringGetter;
.super Lcom/android/systemui/usb/StorageNotification$StorageNotificationStringGetter;
.source "StorageNotification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/usb/StorageNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InteralStorageNotificationStringGetter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/usb/StorageNotification;


# direct methods
.method private constructor <init>(Lcom/android/systemui/usb/StorageNotification;)V
    .locals 1

    .prologue
    .line 680
    iput-object p1, p0, Lcom/android/systemui/usb/StorageNotification$InteralStorageNotificationStringGetter;->this$0:Lcom/android/systemui/usb/StorageNotification;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/usb/StorageNotification$StorageNotificationStringGetter;-><init>(Lcom/android/systemui/usb/StorageNotification$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/usb/StorageNotification;Lcom/android/systemui/usb/StorageNotification$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/usb/StorageNotification;
    .param p2, "x1"    # Lcom/android/systemui/usb/StorageNotification$1;

    .prologue
    .line 680
    invoke-direct {p0, p1}, Lcom/android/systemui/usb/StorageNotification$InteralStorageNotificationStringGetter;-><init>(Lcom/android/systemui/usb/StorageNotification;)V

    return-void
.end method


# virtual methods
.method getMessageIdOnNofs()I
    .locals 1

    .prologue
    .line 698
    const v0, 0x1040a8b

    return v0
.end method

.method getMessageIdOnUnmountable()I
    .locals 1

    .prologue
    .line 690
    const v0, 0x1040a89

    return v0
.end method

.method getTitleIdOnChecking()I
    .locals 1

    .prologue
    .line 682
    const v0, 0x1040a87

    return v0
.end method

.method getTitleIdOnNofs()I
    .locals 1

    .prologue
    .line 694
    const v0, 0x1040a8a

    return v0
.end method

.method getTitleIdOnUnmountable()I
    .locals 1

    .prologue
    .line 686
    const v0, 0x1040a88

    return v0
.end method