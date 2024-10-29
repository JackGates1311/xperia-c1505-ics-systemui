.class public Lcom/android/systemui/usb/StorageNotification$NotifyConsumer;
.super Ljava/lang/Object;
.source "StorageNotification.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/usb/StorageNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NotifyConsumer"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/usb/StorageNotification;


# direct methods
.method public constructor <init>(Lcom/android/systemui/usb/StorageNotification;)V
    .locals 0

    .prologue
    .line 478
    iput-object p1, p0, Lcom/android/systemui/usb/StorageNotification$NotifyConsumer;->this$0:Lcom/android/systemui/usb/StorageNotification;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private consume()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 495
    const-string v2, "StorageNotification"

    const-string v3, "Get notification from queue..."

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    iget-object v2, p0, Lcom/android/systemui/usb/StorageNotification$NotifyConsumer;->this$0:Lcom/android/systemui/usb/StorageNotification;

    invoke-static {v2}, Lcom/android/systemui/usb/StorageNotification;->access$200(Lcom/android/systemui/usb/StorageNotification;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Notification;

    .line 497
    .local v1, "notify":Landroid/app/Notification;
    const-string v2, "StorageNotification"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notification: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    iget-object v2, p0, Lcom/android/systemui/usb/StorageNotification$NotifyConsumer;->this$0:Lcom/android/systemui/usb/StorageNotification;

    invoke-static {v2}, Lcom/android/systemui/usb/StorageNotification;->access$300(Lcom/android/systemui/usb/StorageNotification;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "notification"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 500
    .local v0, "notificationManager":Landroid/app/NotificationManager;
    if-eqz v1, :cond_0

    .line 501
    monitor-enter p0

    .line 502
    const/16 v2, 0x64

    :try_start_0
    invoke-virtual {v0, v2, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 503
    const-wide/16 v2, 0x7d0

    invoke-virtual {p0, v2, v3}, Ljava/lang/Object;->wait(J)V

    .line 504
    const/16 v2, 0x64

    invoke-virtual {v0, v2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 505
    const-wide/16 v2, 0x7d0

    invoke-virtual {p0, v2, v3}, Ljava/lang/Object;->wait(J)V

    .line 506
    monitor-exit p0

    .line 508
    :cond_0
    return-void

    .line 506
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 485
    :goto_0
    :try_start_0
    invoke-direct {p0}, Lcom/android/systemui/usb/StorageNotification$NotifyConsumer;->consume()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 487
    :catch_0
    move-exception v0

    .line 488
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 490
    return-void
.end method
