.class public interface abstract Lcom/sony/nfx/app/smallappwidget/ISmallAppWidgetCallback;
.super Ljava/lang/Object;
.source "ISmallAppWidgetCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sony/nfx/app/smallappwidget/ISmallAppWidgetCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onAddWidget(ILandroid/content/ComponentName;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onDeleteWidget(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
