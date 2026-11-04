.class public abstract Landroid/media/tv/extension/servicedb/IServiceListTransferInterface$Stub;
.super Landroid/os/Binder;
.source "IServiceListTransferInterface.java"

# interfaces
.implements Landroid/media/tv/extension/servicedb/IServiceListTransferInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/extension/servicedb/IServiceListTransferInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/extension/servicedb/IServiceListTransferInterface$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_createExportSession:I = 0x1

.field static final blacklist TRANSACTION_createImportSession:I = 0x2

.field static final blacklist TRANSACTION_createSetChannelListSession:I = 0x3


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 39
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 40
    const-string v0, "android.media.tv.extension.servicedb.IServiceListTransferInterface"

    invoke-virtual {p0, p0, v0}, Landroid/media/tv/extension/servicedb/IServiceListTransferInterface$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/media/tv/extension/servicedb/IServiceListTransferInterface;
    .registers 3

    .line 48
    if-nez p0, :cond_4

    .line 49
    const/4 p0, 0x0

    return-object p0

    .line 51
    :cond_4
    const-string v0, "android.media.tv.extension.servicedb.IServiceListTransferInterface"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 52
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/media/tv/extension/servicedb/IServiceListTransferInterface;

    if-eqz v1, :cond_13

    .line 53
    check-cast v0, Landroid/media/tv/extension/servicedb/IServiceListTransferInterface;

    return-object v0

    .line 55
    :cond_13
    new-instance v0, Landroid/media/tv/extension/servicedb/IServiceListTransferInterface$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/media/tv/extension/servicedb/IServiceListTransferInterface$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 64
    packed-switch p0, :pswitch_data_e

    .line 80
    const/4 p0, 0x0

    return-object p0

    .line 76
    :pswitch_5
    const-string p0, "createSetChannelListSession"

    return-object p0

    .line 72
    :pswitch_8
    const-string p0, "createImportSession"

    return-object p0

    .line 68
    :pswitch_b
    const-string p0, "createExportSession"

    return-object p0

    :pswitch_data_e
    .packed-switch 0x1
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 59
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 214
    const/4 v0, 0x2

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 87
    invoke-static {p1}, Landroid/media/tv/extension/servicedb/IServiceListTransferInterface$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 91
    nop

    .line 92
    const-string v0, "android.media.tv.extension.servicedb.IServiceListTransferInterface"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 93
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 95
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 96
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 97
    return v1

    .line 99
    :cond_17
    packed-switch p1, :pswitch_data_62

    .line 133
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 124
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/media/tv/extension/servicedb/IServiceListSetChannelListListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/tv/extension/servicedb/IServiceListSetChannelListListener;

    move-result-object p1

    .line 125
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 126
    invoke-virtual {p0, p1}, Landroid/media/tv/extension/servicedb/IServiceListTransferInterface$Stub;->createSetChannelListSession(Landroid/media/tv/extension/servicedb/IServiceListSetChannelListListener;)Landroid/os/IBinder;

    move-result-object p1

    .line 127
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 128
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 129
    goto :goto_61

    .line 114
    :pswitch_35
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/media/tv/extension/servicedb/IServiceListImportListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/tv/extension/servicedb/IServiceListImportListener;

    move-result-object p1

    .line 115
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 116
    invoke-virtual {p0, p1}, Landroid/media/tv/extension/servicedb/IServiceListTransferInterface$Stub;->createImportSession(Landroid/media/tv/extension/servicedb/IServiceListImportListener;)Landroid/os/IBinder;

    move-result-object p1

    .line 117
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 118
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 119
    goto :goto_61

    .line 104
    :pswitch_4b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/media/tv/extension/servicedb/IServiceListExportListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/tv/extension/servicedb/IServiceListExportListener;

    move-result-object p1

    .line 105
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 106
    invoke-virtual {p0, p1}, Landroid/media/tv/extension/servicedb/IServiceListTransferInterface$Stub;->createExportSession(Landroid/media/tv/extension/servicedb/IServiceListExportListener;)Landroid/os/IBinder;

    move-result-object p1

    .line 107
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 108
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 109
    nop

    .line 136
    :goto_61
    return v1

    :pswitch_data_62
    .packed-switch 0x1
        :pswitch_4b
        :pswitch_35
        :pswitch_1f
    .end packed-switch
.end method
