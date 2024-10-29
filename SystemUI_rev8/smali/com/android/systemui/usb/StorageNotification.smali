.class public Lcom/android/systemui/usb/StorageNotification;
.super Landroid/os/storage/StorageEventListener;
.source "StorageNotification.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/usb/StorageNotification$InteralStorageNotificationStringGetter;,
        Lcom/android/systemui/usb/StorageNotification$StorageNotificationStringGetter;,
        Lcom/android/systemui/usb/StorageNotification$NotifyConsumer;
    }
.end annotation


# instance fields
.field private mAsyncEventHandler:Landroid/os/Handler;

.field private mContext:Landroid/content/Context;

.field private mMediaStorageNotification:Landroid/app/Notification;

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private final mSuppressUsbMscNotifications:Z

.field private mUmsAvailable:Z

.field private mUsbStorageNotification:Landroid/app/Notification;

.field private notificationQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Landroid/app/Notification;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 86
    invoke-direct {p0}, Landroid/os/storage/StorageEventListener;-><init>()V

    .line 87
    iput-object p1, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    .line 89
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1110035

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/systemui/usb/StorageNotification;->mSuppressUsbMscNotifications:Z

    .line 91
    const-string v2, "storage"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/StorageManager;

    iput-object v2, p0, Lcom/android/systemui/usb/StorageNotification;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 92
    iget-object v2, p0, Lcom/android/systemui/usb/StorageNotification;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v2}, Landroid/os/storage/StorageManager;->isUsbMassStorageConnected()Z

    move-result v0

    .line 93
    .local v0, "connected":Z
    const-string v2, "StorageNotification"

    const-string v3, "Startup with UMS connection %s (media state %s)"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-boolean v6, p0, Lcom/android/systemui/usb/StorageNotification;->mUmsAvailable:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "SystemUI StorageNotification"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 97
    .local v1, "thr":Landroid/os/HandlerThread;
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 98
    new-instance v2, Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/systemui/usb/StorageNotification;->mAsyncEventHandler:Landroid/os/Handler;

    .line 102
    new-instance v2, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v3, 0xa

    invoke-direct {v2, v3}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object v2, p0, Lcom/android/systemui/usb/StorageNotification;->notificationQueue:Ljava/util/concurrent/BlockingQueue;

    .line 104
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/android/systemui/usb/StorageNotification$NotifyConsumer;

    invoke-direct {v3, p0}, Lcom/android/systemui/usb/StorageNotification$NotifyConsumer;-><init>(Lcom/android/systemui/usb/StorageNotification;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 107
    invoke-virtual {p0, v0}, Lcom/android/systemui/usb/StorageNotification;->onUsbMassStorageConnectionChanged(Z)V

    .line 108
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/usb/StorageNotification;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/usb/StorageNotification;
    .param p1, "x1"    # Z

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/android/systemui/usb/StorageNotification;->onUsbMassStorageConnectionChangedAsync(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/usb/StorageNotification;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/usb/StorageNotification;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/usb/StorageNotification;->onStorageStateChangedAsync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/usb/StorageNotification;)Ljava/util/concurrent/BlockingQueue;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/usb/StorageNotification;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/systemui/usb/StorageNotification;->notificationQueue:Ljava/util/concurrent/BlockingQueue;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/usb/StorageNotification;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/usb/StorageNotification;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private getStringGetter(Ljava/lang/String;)Lcom/android/systemui/usb/StorageNotification$StorageNotificationStringGetter;
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 585
    invoke-static {p1}, Landroid/os/Environment;->getExternalStorageType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 586
    .local v0, "storageType":Ljava/lang/String;
    const-string v1, "Emmc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 587
    new-instance v1, Lcom/android/systemui/usb/StorageNotification$InteralStorageNotificationStringGetter;

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/usb/StorageNotification$InteralStorageNotificationStringGetter;-><init>(Lcom/android/systemui/usb/StorageNotification;Lcom/android/systemui/usb/StorageNotification$1;)V

    .line 592
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lcom/android/systemui/usb/StorageNotification$StorageNotificationStringGetter;

    invoke-direct {v1, v2}, Lcom/android/systemui/usb/StorageNotification$StorageNotificationStringGetter;-><init>(Lcom/android/systemui/usb/StorageNotification$1;)V

    goto :goto_0
.end method

.method private onStorageStateChangedAsync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 158
    const-string v0, "StorageNotification"

    const-string v1, "Media {%s} state changed from {%s} -> {%s}"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    invoke-direct {p0, p1}, Lcom/android/systemui/usb/StorageNotification;->getStringGetter(Ljava/lang/String;)Lcom/android/systemui/usb/StorageNotification$StorageNotificationStringGetter;

    move-result-object v0

    .line 163
    invoke-static {p1}, Landroid/os/Environment;->getExternalStorageType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 165
    const v3, 0x108007b

    .line 166
    const-string v2, "checking"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 167
    const v3, 0x10800ab

    .line 175
    :cond_0
    :goto_0
    const-string v2, "shared"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/systemui/usb/StorageNotification;->mSuppressUsbMscNotifications:Z

    if-nez v2, :cond_2

    .line 180
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 181
    iget-object v1, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/systemui/usb/UsbStorageActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 182
    iget-object v1, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 183
    const v1, 0x1040c85

    const v2, 0x1040c86

    const v3, 0x108008a

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/usb/StorageNotification;->setUsbStorageNotification(IIIZZLandroid/app/PendingIntent;)V

    .line 297
    :goto_1
    return-void

    .line 168
    :cond_1
    const-string v2, "unmounted"

    invoke-virtual {p0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 169
    iget-object v2, p0, Lcom/android/systemui/usb/StorageNotification;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v2}, Landroid/os/storage/StorageManager;->isUsbMassStorageEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 170
    const-string v2, "shared"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 171
    const v3, 0x108007a

    goto :goto_0

    .line 187
    :cond_2
    const-string v2, "checking"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 194
    invoke-virtual {v0}, Lcom/android/systemui/usb/StorageNotification$StorageNotificationStringGetter;->getTitleIdOnChecking()I

    move-result v1

    invoke-virtual {v0}, Lcom/android/systemui/usb/StorageNotification$StorageNotificationStringGetter;->getMessageIdOnChecking()I

    move-result v2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/usb/StorageNotification;->setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;Z)V

    .line 197
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/usb/StorageNotification;->updateUsbMassStorageNotification(Z)V

    goto :goto_1

    .line 198
    :cond_3
    const-string v2, "mounted"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 210
    iget-boolean v0, p0, Lcom/android/systemui/usb/StorageNotification;->mUmsAvailable:Z

    invoke-virtual {p0, v0}, Lcom/android/systemui/usb/StorageNotification;->updateUsbMassStorageNotification(Z)V

    goto :goto_1

    .line 211
    :cond_4
    const-string v2, "unmounted"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 217
    iget-object v2, p0, Lcom/android/systemui/usb/StorageNotification;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v2}, Landroid/os/storage/StorageManager;->isUsbMassStorageEnabled()Z

    move-result v2

    if-nez v2, :cond_7

    .line 218
    const-string v2, "shared"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 224
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/usb/StorageNotification;->setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;)V

    .line 225
    iget-boolean v0, p0, Lcom/android/systemui/usb/StorageNotification;->mUmsAvailable:Z

    invoke-virtual {p0, v0}, Lcom/android/systemui/usb/StorageNotification;->updateUsbMassStorageNotification(Z)V

    goto :goto_1

    .line 231
    :cond_5
    const-string v2, "Emmc"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 232
    invoke-virtual {v0}, Lcom/android/systemui/usb/StorageNotification$StorageNotificationStringGetter;->getTitleIdOnSafeUnmount()I

    move-result v1

    invoke-virtual {v0}, Lcom/android/systemui/usb/StorageNotification$StorageNotificationStringGetter;->getMessageIdOnSafeUnmount()I

    move-result v2

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/usb/StorageNotification;->setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;)V

    .line 239
    :goto_2
    iget-boolean v0, p0, Lcom/android/systemui/usb/StorageNotification;->mUmsAvailable:Z

    invoke-virtual {p0, v0}, Lcom/android/systemui/usb/StorageNotification;->updateUsbMassStorageNotification(Z)V

    goto/16 :goto_1

    .line 237
    :cond_6
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/usb/StorageNotification;->setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;)V

    goto :goto_2

    .line 246
    :cond_7
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/usb/StorageNotification;->setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;)V

    .line 247
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/usb/StorageNotification;->updateUsbMassStorageNotification(Z)V

    goto/16 :goto_1

    .line 249
    :cond_8
    const-string v1, "nofs"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 254
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 255
    iget-object v2, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    const-class v4, Lcom/android/internal/app/ExternalMediaFormatActivity;

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 256
    const-string v2, "path"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 257
    iget-object v2, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v2, v4, v1, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 259
    invoke-virtual {v0}, Lcom/android/systemui/usb/StorageNotification$StorageNotificationStringGetter;->getTitleIdOnNofs()I

    move-result v1

    invoke-virtual {v0}, Lcom/android/systemui/usb/StorageNotification$StorageNotificationStringGetter;->getMessageIdOnNofs()I

    move-result v2

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/usb/StorageNotification;->setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;)V

    .line 261
    iget-boolean v0, p0, Lcom/android/systemui/usb/StorageNotification;->mUmsAvailable:Z

    invoke-virtual {p0, v0}, Lcom/android/systemui/usb/StorageNotification;->updateUsbMassStorageNotification(Z)V

    goto/16 :goto_1

    .line 262
    :cond_9
    const-string v1, "unmountable"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 267
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 268
    iget-object v2, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    const-class v4, Lcom/android/internal/app/ExternalMediaFormatActivity;

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 269
    const-string v2, "path"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 270
    iget-object v2, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v2, v4, v1, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 272
    invoke-virtual {v0}, Lcom/android/systemui/usb/StorageNotification$StorageNotificationStringGetter;->getTitleIdOnUnmountable()I

    move-result v1

    invoke-virtual {v0}, Lcom/android/systemui/usb/StorageNotification$StorageNotificationStringGetter;->getMessageIdOnUnmountable()I

    move-result v2

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/usb/StorageNotification;->setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;)V

    .line 274
    iget-boolean v0, p0, Lcom/android/systemui/usb/StorageNotification;->mUmsAvailable:Z

    invoke-virtual {p0, v0}, Lcom/android/systemui/usb/StorageNotification;->updateUsbMassStorageNotification(Z)V

    goto/16 :goto_1

    .line 275
    :cond_a
    const-string v1, "removed"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 280
    const/4 v5, 0x0

    .line 281
    invoke-virtual {v0}, Lcom/android/systemui/usb/StorageNotification$StorageNotificationStringGetter;->getTitleIdOnNoMedia()I

    move-result v1

    invoke-virtual {v0}, Lcom/android/systemui/usb/StorageNotification$StorageNotificationStringGetter;->getMessageIdOnNoMedia()I

    move-result v2

    const/4 v4, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/usb/StorageNotification;->setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;)V

    .line 283
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/usb/StorageNotification;->updateUsbMassStorageNotification(Z)V

    goto/16 :goto_1

    .line 284
    :cond_b
    const-string v1, "bad_removal"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 290
    invoke-virtual {v0}, Lcom/android/systemui/usb/StorageNotification$StorageNotificationStringGetter;->getTitleIdOnBadRemoval()I

    move-result v1

    invoke-virtual {v0}, Lcom/android/systemui/usb/StorageNotification$StorageNotificationStringGetter;->getMessageIdOnBadRemoval()I

    move-result v2

    const v3, 0x108008a

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/usb/StorageNotification;->setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;)V

    .line 293
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/usb/StorageNotification;->updateUsbMassStorageNotification(Z)V

    goto/16 :goto_1

    .line 295
    :cond_c
    const-string v0, "StorageNotification"

    const-string v1, "Ignoring unknown state {%s}"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p3, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method private onUsbMassStorageConnectionChangedAsync(Z)V
    .locals 6
    .param p1, "connected"    # Z

    .prologue
    .line 124
    iput-boolean p1, p0, Lcom/android/systemui/usb/StorageNotification;->mUmsAvailable:Z

    .line 129
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 131
    .local v0, "st":Ljava/lang/String;
    const-string v1, "StorageNotification"

    const-string v2, "UMS connection changed to %s (media state %s)"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    if-eqz p1, :cond_1

    const-string v1, "removed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "checking"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 138
    :cond_0
    const/4 p1, 0x0

    .line 140
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/systemui/usb/StorageNotification;->updateUsbMassStorageNotification(Z)V

    .line 141
    return-void
.end method

.method private setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;)V
    .locals 8
    .param p1, "titleId"    # I
    .param p2, "messageId"    # I
    .param p3, "icon"    # I
    .param p4, "visible"    # Z
    .param p5, "dismissable"    # Z
    .param p6, "pi"    # Landroid/app/PendingIntent;

    .prologue
    .line 473
    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/usb/StorageNotification;->setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;Z)V

    .line 474
    return-void
.end method

.method private declared-synchronized setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;Z)V
    .locals 11
    .param p1, "titleId"    # I
    .param p2, "messageId"    # I
    .param p3, "icon"    # I
    .param p4, "visible"    # Z
    .param p5, "dismissable"    # Z
    .param p6, "pi"    # Landroid/app/PendingIntent;
    .param p7, "autoCancel"    # Z

    .prologue
    .line 406
    monitor-enter p0

    if-nez p4, :cond_1

    :try_start_0
    iget-object v8, p0, Lcom/android/systemui/usb/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v8, :cond_1

    .line 468
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 410
    :cond_1
    :try_start_1
    iget-object v8, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    const-string v9, "notification"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationManager;

    .line 413
    .local v5, "notificationManager":Landroid/app/NotificationManager;
    if-eqz v5, :cond_0

    .line 417
    iget-object v8, p0, Lcom/android/systemui/usb/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;

    if-eqz v8, :cond_2

    if-eqz p4, :cond_2

    .line 421
    iget-object v8, p0, Lcom/android/systemui/usb/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;

    iget v4, v8, Landroid/app/Notification;->icon:I

    .line 422
    .local v4, "notificationId":I
    invoke-virtual {v5, v4}, Landroid/app/NotificationManager;->cancel(I)V

    .line 425
    .end local v4    # "notificationId":I
    :cond_2
    if-eqz p4, :cond_5

    .line 426
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v6

    .line 427
    .local v6, "r":Landroid/content/res/Resources;
    invoke-virtual {v6, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    .line 428
    .local v7, "title":Ljava/lang/CharSequence;
    invoke-virtual {v6, p2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 430
    .local v3, "message":Ljava/lang/CharSequence;
    iget-object v8, p0, Lcom/android/systemui/usb/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;

    if-nez v8, :cond_3

    .line 431
    new-instance v8, Landroid/app/Notification;

    invoke-direct {v8}, Landroid/app/Notification;-><init>()V

    iput-object v8, p0, Lcom/android/systemui/usb/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;

    .line 432
    iget-object v8, p0, Lcom/android/systemui/usb/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;

    const-wide/16 v9, 0x0

    iput-wide v9, v8, Landroid/app/Notification;->when:J

    .line 435
    :cond_3
    iget-object v8, p0, Lcom/android/systemui/usb/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;

    iget v9, v8, Landroid/app/Notification;->defaults:I

    and-int/lit8 v9, v9, -0x2

    iput v9, v8, Landroid/app/Notification;->defaults:I

    .line 437
    if-eqz p5, :cond_6

    .line 438
    iget-object v8, p0, Lcom/android/systemui/usb/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;

    const/16 v9, 0x10

    iput v9, v8, Landroid/app/Notification;->flags:I

    .line 443
    :goto_1
    iget-object v8, p0, Lcom/android/systemui/usb/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;

    iput-object v7, v8, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 444
    if-nez p6, :cond_4

    .line 445
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 446
    .local v2, "intent":Landroid/content/Intent;
    iget-object v8, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v8, v9, v2, v10}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p6

    .line 449
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_4
    iget-object v8, p0, Lcom/android/systemui/usb/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;

    iput p3, v8, Landroid/app/Notification;->icon:I

    .line 450
    iget-object v8, p0, Lcom/android/systemui/usb/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;

    iget-object v9, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    move-object/from16 v0, p6

    invoke-virtual {v8, v9, v7, v3, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 453
    .end local v3    # "message":Ljava/lang/CharSequence;
    .end local v6    # "r":Landroid/content/res/Resources;
    .end local v7    # "title":Ljava/lang/CharSequence;
    :cond_5
    iget-object v8, p0, Lcom/android/systemui/usb/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;

    iget v4, v8, Landroid/app/Notification;->icon:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 454
    .restart local v4    # "notificationId":I
    if-eqz p4, :cond_8

    .line 455
    if-eqz p7, :cond_7

    .line 457
    :try_start_2
    iget-object v8, p0, Lcom/android/systemui/usb/StorageNotification;->notificationQueue:Ljava/util/concurrent/BlockingQueue;

    iget-object v9, p0, Lcom/android/systemui/usb/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;

    invoke-interface {v8, v9}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 458
    :catch_0
    move-exception v1

    .line 460
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 406
    .end local v1    # "e":Ljava/lang/InterruptedException;
    .end local v4    # "notificationId":I
    .end local v5    # "notificationManager":Landroid/app/NotificationManager;
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8

    .line 440
    .restart local v3    # "message":Ljava/lang/CharSequence;
    .restart local v5    # "notificationManager":Landroid/app/NotificationManager;
    .restart local v6    # "r":Landroid/content/res/Resources;
    .restart local v7    # "title":Ljava/lang/CharSequence;
    :cond_6
    :try_start_4
    iget-object v8, p0, Lcom/android/systemui/usb/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;

    const/4 v9, 0x2

    iput v9, v8, Landroid/app/Notification;->flags:I

    goto :goto_1

    .line 463
    .end local v3    # "message":Ljava/lang/CharSequence;
    .end local v6    # "r":Landroid/content/res/Resources;
    .end local v7    # "title":Ljava/lang/CharSequence;
    .restart local v4    # "notificationId":I
    :cond_7
    iget-object v8, p0, Lcom/android/systemui/usb/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;

    invoke-virtual {v5, v4, v8}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0

    .line 466
    :cond_8
    invoke-virtual {v5, v4}, Landroid/app/NotificationManager;->cancel(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0
.end method

.method private declared-synchronized setUsbStorageNotification(IIIZZLandroid/app/PendingIntent;)V
    .locals 12
    .param p1, "titleId"    # I
    .param p2, "messageId"    # I
    .param p3, "icon"    # I
    .param p4, "sound"    # Z
    .param p5, "visible"    # Z
    .param p6, "pi"    # Landroid/app/PendingIntent;

    .prologue
    .line 324
    monitor-enter p0

    if-nez p5, :cond_1

    :try_start_0
    iget-object v8, p0, Lcom/android/systemui/usb/StorageNotification;->mUsbStorageNotification:Landroid/app/Notification;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v8, :cond_1

    .line 390
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 328
    :cond_1
    :try_start_1
    iget-object v8, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    const-string v9, "notification"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationManager;

    .line 331
    .local v5, "notificationManager":Landroid/app/NotificationManager;
    if-eqz v5, :cond_0

    .line 335
    if-eqz p5, :cond_4

    .line 336
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v6

    .line 337
    .local v6, "r":Landroid/content/res/Resources;
    invoke-virtual {v6, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    .line 338
    .local v7, "title":Ljava/lang/CharSequence;
    invoke-virtual {v6, p2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 340
    .local v3, "message":Ljava/lang/CharSequence;
    iget-object v8, p0, Lcom/android/systemui/usb/StorageNotification;->mUsbStorageNotification:Landroid/app/Notification;

    if-nez v8, :cond_2

    .line 341
    new-instance v8, Landroid/app/Notification;

    invoke-direct {v8}, Landroid/app/Notification;-><init>()V

    iput-object v8, p0, Lcom/android/systemui/usb/StorageNotification;->mUsbStorageNotification:Landroid/app/Notification;

    .line 342
    iget-object v8, p0, Lcom/android/systemui/usb/StorageNotification;->mUsbStorageNotification:Landroid/app/Notification;

    iput p3, v8, Landroid/app/Notification;->icon:I

    .line 343
    iget-object v8, p0, Lcom/android/systemui/usb/StorageNotification;->mUsbStorageNotification:Landroid/app/Notification;

    const-wide/16 v9, 0x0

    iput-wide v9, v8, Landroid/app/Notification;->when:J

    .line 346
    :cond_2
    if-eqz p4, :cond_5

    .line 347
    iget-object v8, p0, Lcom/android/systemui/usb/StorageNotification;->mUsbStorageNotification:Landroid/app/Notification;

    iget v9, v8, Landroid/app/Notification;->defaults:I

    or-int/lit8 v9, v9, 0x1

    iput v9, v8, Landroid/app/Notification;->defaults:I

    .line 352
    :goto_1
    iget-object v8, p0, Lcom/android/systemui/usb/StorageNotification;->mUsbStorageNotification:Landroid/app/Notification;

    const/4 v9, 0x2

    iput v9, v8, Landroid/app/Notification;->flags:I

    .line 354
    iget-object v8, p0, Lcom/android/systemui/usb/StorageNotification;->mUsbStorageNotification:Landroid/app/Notification;

    iput-object v7, v8, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 355
    if-nez p6, :cond_3

    .line 356
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 357
    .local v2, "intent":Landroid/content/Intent;
    iget-object v8, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v8, v9, v2, v10}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p6

    .line 360
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_3
    iget-object v8, p0, Lcom/android/systemui/usb/StorageNotification;->mUsbStorageNotification:Landroid/app/Notification;

    iget-object v9, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    move-object/from16 v0, p6

    invoke-virtual {v8, v9, v7, v3, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 361
    const/4 v8, 0x1

    iget-object v9, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "adb_enabled"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-ne v8, v9, :cond_6

    const/4 v1, 0x1

    .line 364
    .local v1, "adbOn":Z
    :goto_2
    if-nez v1, :cond_4

    .line 380
    iget-object v8, p0, Lcom/android/systemui/usb/StorageNotification;->mUsbStorageNotification:Landroid/app/Notification;

    move-object/from16 v0, p6

    iput-object v0, v8, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    .line 384
    .end local v1    # "adbOn":Z
    .end local v3    # "message":Ljava/lang/CharSequence;
    .end local v6    # "r":Landroid/content/res/Resources;
    .end local v7    # "title":Ljava/lang/CharSequence;
    :cond_4
    iget-object v8, p0, Lcom/android/systemui/usb/StorageNotification;->mUsbStorageNotification:Landroid/app/Notification;

    iget v4, v8, Landroid/app/Notification;->icon:I

    .line 385
    .local v4, "notificationId":I
    if-eqz p5, :cond_7

    .line 386
    iget-object v8, p0, Lcom/android/systemui/usb/StorageNotification;->mUsbStorageNotification:Landroid/app/Notification;

    invoke-virtual {v5, v4, v8}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 324
    .end local v4    # "notificationId":I
    .end local v5    # "notificationManager":Landroid/app/NotificationManager;
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8

    .line 349
    .restart local v3    # "message":Ljava/lang/CharSequence;
    .restart local v5    # "notificationManager":Landroid/app/NotificationManager;
    .restart local v6    # "r":Landroid/content/res/Resources;
    .restart local v7    # "title":Ljava/lang/CharSequence;
    :cond_5
    :try_start_2
    iget-object v8, p0, Lcom/android/systemui/usb/StorageNotification;->mUsbStorageNotification:Landroid/app/Notification;

    iget v9, v8, Landroid/app/Notification;->defaults:I

    and-int/lit8 v9, v9, -0x2

    iput v9, v8, Landroid/app/Notification;->defaults:I

    goto :goto_1

    .line 361
    :cond_6
    const/4 v1, 0x0

    goto :goto_2

    .line 388
    .end local v3    # "message":Ljava/lang/CharSequence;
    .end local v6    # "r":Landroid/content/res/Resources;
    .end local v7    # "title":Ljava/lang/CharSequence;
    .restart local v4    # "notificationId":I
    :cond_7
    invoke-virtual {v5, v4}, Landroid/app/NotificationManager;->cancel(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method


# virtual methods
.method public onStorageStateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "oldState"    # Ljava/lang/String;
    .param p3, "newState"    # Ljava/lang/String;

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/systemui/usb/StorageNotification;->mAsyncEventHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/usb/StorageNotification$2;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/systemui/usb/StorageNotification$2;-><init>(Lcom/android/systemui/usb/StorageNotification;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 155
    return-void
.end method

.method public onUsbMassStorageConnectionChanged(Z)V
    .locals 2
    .param p1, "connected"    # Z

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/systemui/usb/StorageNotification;->mAsyncEventHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/usb/StorageNotification$1;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/usb/StorageNotification$1;-><init>(Lcom/android/systemui/usb/StorageNotification;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 121
    return-void
.end method

.method updateUsbMassStorageNotification(Z)V
    .locals 10

    .prologue
    const/4 v4, 0x0

    .line 304
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/usb/StorageNotification;->mSuppressUsbMscNotifications:Z

    if-nez v0, :cond_0

    .line 305
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 306
    iget-object v1, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/systemui/usb/UsbStorageActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 307
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 309
    iget-object v1, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    invoke-static {v1, v4, v0, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 310
    const v1, 0x1040c83

    const v2, 0x1040c84

    const v3, 0x10806f5

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/usb/StorageNotification;->setUsbStorageNotification(IIIZZLandroid/app/PendingIntent;)V

    .line 316
    :goto_0
    return-void

    .line 314
    :cond_0
    const/4 v9, 0x0

    move-object v3, p0

    move v5, v4

    move v6, v4

    move v7, v4

    move v8, v4

    invoke-direct/range {v3 .. v9}, Lcom/android/systemui/usb/StorageNotification;->setUsbStorageNotification(IIIZZLandroid/app/PendingIntent;)V

    goto :goto_0
.end method
