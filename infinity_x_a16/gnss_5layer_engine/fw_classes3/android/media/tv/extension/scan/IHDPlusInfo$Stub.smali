.class public abstract Landroid/media/tv/extension/scan/IHDPlusInfo$Stub;
.super Landroid/os/Binder;
.source "IHDPlusInfo.java"

# interfaces
.implements Landroid/media/tv/extension/scan/IHDPlusInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/extension/scan/IHDPlusInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/extension/scan/IHDPlusInfo$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_setHDPlusInfo:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 32
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 33
    const-string v0, "android.media.tv.extension.scan.IHDPlusInfo"

    invoke-virtual {p0, p0, v0}, Landroid/media/tv/extension/scan/IHDPlusInfo$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 34
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/media/tv/extension/scan/IHDPlusInfo;
    .registers 3

    .line 41
    if-nez p0, :cond_4

    .line 42
    const/4 p0, 0x0

    return-object p0

    .line 44
    :cond_4
    const-string v0, "android.media.tv.extension.scan.IHDPlusInfo"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 45
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/media/tv/extension/scan/IHDPlusInfo;

    if-eqz v1, :cond_13

    .line 46
    check-cast v0, Landroid/media/tv/extension/scan/IHDPlusInfo;

    return-object v0

    .line 48
    :cond_13
    new-instance v0, Landroid/media/tv/extension/scan/IHDPlusInfo$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/media/tv/extension/scan/IHDPlusInfo$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 57
    packed-switch p0, :pswitch_data_a

    .line 65
    const/4 p0, 0x0

    return-object p0

    .line 61
    :pswitch_5
    const-string/jumbo p0, "setHDPlusInfo"

    return-object p0

    nop

    :pswitch_data_a
    .packed-switch 0x1
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 52
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 145
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 72
    invoke-static {p1}, Landroid/media/tv/extension/scan/IHDPlusInfo$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 76
    nop

    .line 77
    const-string v0, "android.media.tv.extension.scan.IHDPlusInfo"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 78
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 81
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 82
    return v1

    .line 84
    :cond_17
    packed-switch p1, :pswitch_data_36

    .line 100
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 89
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 91
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p4

    .line 92
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 93
    invoke-virtual {p0, p1, p4}, Landroid/media/tv/extension/scan/IHDPlusInfo$Stub;->setHDPlusInfo(ZZ)I

    move-result p1

    .line 94
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 95
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 96
    nop

    .line 103
    return v1

    :pswitch_data_36
    .packed-switch 0x1
        :pswitch_1f
    .end packed-switch
.end method
