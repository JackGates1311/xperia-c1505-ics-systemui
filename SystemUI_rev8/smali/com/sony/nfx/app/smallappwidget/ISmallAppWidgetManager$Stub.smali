.class public abstract Lcom/sony/nfx/app/smallappwidget/ISmallAppWidgetManager$Stub;
.super Landroid/os/Binder;
.source "ISmallAppWidgetManager.java"

# interfaces
.implements Lcom/sony/nfx/app/smallappwidget/ISmallAppWidgetManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sony/nfx/app/smallappwidget/ISmallAppWidgetManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sony/nfx/app/smallappwidget/ISmallAppWidgetManager$Stub$Proxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "com.sony.nfx.app.smallappwidget.ISmallAppWidgetManager"

    invoke-virtual {p0, p0, v0}, Lcom/sony/nfx/app/smallappwidget/ISmallAppWidgetManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/sony/nfx/app/smallappwidget/ISmallAppWidgetManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 28
    if-nez p0, :cond_0

    .line 29
    const/4 v0, 0x0

    .line 35
    :goto_0
    return-object v0

    .line 31
    :cond_0
    const-string v1, "com.sony.nfx.app.smallappwidget.ISmallAppWidgetManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/sony/nfx/app/smallappwidget/ISmallAppWidgetManager;

    if-eqz v1, :cond_1

    .line 33
    check-cast v0, Lcom/sony/nfx/app/smallappwidget/ISmallAppWidgetManager;

    goto :goto_0

    .line 35
    :cond_1
    new-instance v0, Lcom/sony/nfx/app/smallappwidget/ISmallAppWidgetManager$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/sony/nfx/app/smallappwidget/ISmallAppWidgetManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 43
    sparse-switch p1, :sswitch_data_0

    .line 94
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_0
    return v2

    .line 47
    :sswitch_0
    const-string v3, "com.sony.nfx.app.smallappwidget.ISmallAppWidgetManager"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 52
    :sswitch_1
    const-string v3, "com.sony.nfx.app.smallappwidget.ISmallAppWidgetManager"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 56
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 57
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 62
    .local v1, "_arg1":Landroid/content/ComponentName;
    :goto_1
    invoke-virtual {p0, v0, v1}, Lcom/sony/nfx/app/smallappwidget/ISmallAppWidgetManager$Stub;->create(ILandroid/content/ComponentName;)V

    .line 63
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 60
    .end local v1    # "_arg1":Landroid/content/ComponentName;
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Landroid/content/ComponentName;
    goto :goto_1

    .line 68
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/content/ComponentName;
    :sswitch_2
    const-string v3, "com.sony.nfx.app.smallappwidget.ISmallAppWidgetManager"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 71
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/sony/nfx/app/smallappwidget/ISmallAppWidgetManager$Stub;->delete(I)V

    .line 72
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 77
    .end local v0    # "_arg0":I
    :sswitch_3
    const-string v3, "com.sony.nfx.app.smallappwidget.ISmallAppWidgetManager"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/sony/nfx/app/smallappwidget/ISmallAppWidgetCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sony/nfx/app/smallappwidget/ISmallAppWidgetCallback;

    move-result-object v0

    .line 80
    .local v0, "_arg0":Lcom/sony/nfx/app/smallappwidget/ISmallAppWidgetCallback;
    invoke-virtual {p0, v0}, Lcom/sony/nfx/app/smallappwidget/ISmallAppWidgetManager$Stub;->registerCallback(Lcom/sony/nfx/app/smallappwidget/ISmallAppWidgetCallback;)V

    .line 81
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 86
    .end local v0    # "_arg0":Lcom/sony/nfx/app/smallappwidget/ISmallAppWidgetCallback;
    :sswitch_4
    const-string v3, "com.sony.nfx.app.smallappwidget.ISmallAppWidgetManager"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/sony/nfx/app/smallappwidget/ISmallAppWidgetCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sony/nfx/app/smallappwidget/ISmallAppWidgetCallback;

    move-result-object v0

    .line 89
    .restart local v0    # "_arg0":Lcom/sony/nfx/app/smallappwidget/ISmallAppWidgetCallback;
    invoke-virtual {p0, v0}, Lcom/sony/nfx/app/smallappwidget/ISmallAppWidgetManager$Stub;->unregisterCallback(Lcom/sony/nfx/app/smallappwidget/ISmallAppWidgetCallback;)V

    .line 90
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 43
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
