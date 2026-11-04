.class public abstract Landroid/media/tv/extension/scan/ITkgsInfo$Stub;
.super Landroid/os/Binder;
.source "ITkgsInfo.java"

# interfaces
.implements Landroid/media/tv/extension/scan/ITkgsInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/extension/scan/ITkgsInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/extension/scan/ITkgsInfo$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_setPrefServiceList:I = 0x1

.field static final blacklist TRANSACTION_setTkgsInfoListener:I = 0x2


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 35
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 36
    const-string v0, "android.media.tv.extension.scan.ITkgsInfo"

    invoke-virtual {p0, p0, v0}, Landroid/media/tv/extension/scan/ITkgsInfo$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 37
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/media/tv/extension/scan/ITkgsInfo;
    .registers 3

    .line 44
    if-nez p0, :cond_4

    .line 45
    const/4 p0, 0x0

    return-object p0

    .line 47
    :cond_4
    const-string v0, "android.media.tv.extension.scan.ITkgsInfo"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 48
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/media/tv/extension/scan/ITkgsInfo;

    if-eqz v1, :cond_13

    .line 49
    check-cast v0, Landroid/media/tv/extension/scan/ITkgsInfo;

    return-object v0

    .line 51
    :cond_13
    new-instance v0, Landroid/media/tv/extension/scan/ITkgsInfo$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/media/tv/extension/scan/ITkgsInfo$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 60
    packed-switch p0, :pswitch_data_e

    .line 72
    const/4 p0, 0x0

    return-object p0

    .line 68
    :pswitch_5
    const-string/jumbo p0, "setTkgsInfoListener"

    return-object p0

    .line 64
    :pswitch_9
    const-string/jumbo p0, "setPrefServiceList"

    return-object p0

    nop

    :pswitch_data_e
    .packed-switch 0x1
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 55
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 177
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 79
    invoke-static {p1}, Landroid/media/tv/extension/scan/ITkgsInfo$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 83
    nop

    .line 84
    const-string v0, "android.media.tv.extension.scan.ITkgsInfo"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 85
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 88
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 89
    return v1

    .line 91
    :cond_17
    packed-switch p1, :pswitch_data_48

    .line 115
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 106
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/media/tv/extension/scan/ITkgsInfoListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/tv/extension/scan/ITkgsInfoListener;

    move-result-object p1

    .line 107
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 108
    invoke-virtual {p0, p1}, Landroid/media/tv/extension/scan/ITkgsInfo$Stub;->setTkgsInfoListener(Landroid/media/tv/extension/scan/ITkgsInfoListener;)I

    move-result p1

    .line 109
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 110
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 111
    goto :goto_47

    .line 96
    :pswitch_35
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 97
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 98
    invoke-virtual {p0, p1}, Landroid/media/tv/extension/scan/ITkgsInfo$Stub;->setPrefServiceList(Ljava/lang/String;)I

    move-result p1

    .line 99
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 100
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 101
    nop

    .line 118
    :goto_47
    return v1

    :pswitch_data_48
    .packed-switch 0x1
        :pswitch_35
        :pswitch_1f
    .end packed-switch
.end method
