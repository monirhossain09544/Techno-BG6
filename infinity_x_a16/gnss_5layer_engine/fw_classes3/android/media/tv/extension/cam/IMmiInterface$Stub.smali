.class public abstract Landroid/media/tv/extension/cam/IMmiInterface$Stub;
.super Landroid/os/Binder;
.source "IMmiInterface.java"

# interfaces
.implements Landroid/media/tv/extension/cam/IMmiInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/extension/cam/IMmiInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/extension/cam/IMmiInterface$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_appInfoEnterMenu:I = 0x2

.field static final blacklist TRANSACTION_openSession:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 36
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 37
    const-string v0, "android.media.tv.extension.cam.IMmiInterface"

    invoke-virtual {p0, p0, v0}, Landroid/media/tv/extension/cam/IMmiInterface$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/media/tv/extension/cam/IMmiInterface;
    .registers 3

    .line 45
    if-nez p0, :cond_4

    .line 46
    const/4 p0, 0x0

    return-object p0

    .line 48
    :cond_4
    const-string v0, "android.media.tv.extension.cam.IMmiInterface"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 49
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/media/tv/extension/cam/IMmiInterface;

    if-eqz v1, :cond_13

    .line 50
    check-cast v0, Landroid/media/tv/extension/cam/IMmiInterface;

    return-object v0

    .line 52
    :cond_13
    new-instance v0, Landroid/media/tv/extension/cam/IMmiInterface$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/media/tv/extension/cam/IMmiInterface$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 61
    packed-switch p0, :pswitch_data_c

    .line 73
    const/4 p0, 0x0

    return-object p0

    .line 69
    :pswitch_5
    const-string p0, "appInfoEnterMenu"

    return-object p0

    .line 65
    :pswitch_8
    const-string/jumbo p0, "openSession"

    return-object p0

    :pswitch_data_c
    .packed-switch 0x1
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 56
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 182
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 80
    invoke-static {p1}, Landroid/media/tv/extension/cam/IMmiInterface$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 84
    nop

    .line 85
    const-string v0, "android.media.tv.extension.cam.IMmiInterface"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 86
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 89
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 90
    return v1

    .line 92
    :cond_17
    packed-switch p1, :pswitch_data_50

    .line 119
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 109
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 111
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    invoke-static {p4}, Landroid/media/tv/extension/cam/IEnterMenuErrorCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/tv/extension/cam/IEnterMenuErrorCallback;

    move-result-object p4

    .line 112
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 113
    invoke-virtual {p0, p1, p4}, Landroid/media/tv/extension/cam/IMmiInterface$Stub;->appInfoEnterMenu(ILandroid/media/tv/extension/cam/IEnterMenuErrorCallback;)V

    .line 114
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 115
    goto :goto_4f

    .line 97
    :pswitch_35
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 99
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    invoke-static {p4}, Landroid/media/tv/extension/cam/IMmiStatusCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/tv/extension/cam/IMmiStatusCallback;

    move-result-object p4

    .line 100
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 101
    invoke-virtual {p0, p1, p4}, Landroid/media/tv/extension/cam/IMmiInterface$Stub;->openSession(ILandroid/media/tv/extension/cam/IMmiStatusCallback;)Landroid/media/tv/extension/cam/IMmiSession;

    move-result-object p1

    .line 102
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 103
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 104
    nop

    .line 122
    :goto_4f
    return v1

    :pswitch_data_50
    .packed-switch 0x1
        :pswitch_35
        :pswitch_1f
    .end packed-switch
.end method
