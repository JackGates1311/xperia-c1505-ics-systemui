.class public interface abstract Lcom/sony/nfx/app/smallappwidget/ISmallAppWidgetManager;
.super Ljava/lang/Object;
.source "ISmallAppWidgetManager.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sony/nfx/app/smallappwidget/ISmallAppWidgetManager$Stub;
    }
.end annotation


# virtual methods
.method public abstract create(ILandroid/content/ComponentName;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract delete(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract registerCallback(Lcom/sony/nfx/app/smallappwidget/ISmallAppWidgetCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract unregisterCallback(Lcom/sony/nfx/app/smallappwidget/ISmallAppWidgetCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
