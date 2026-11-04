.class public abstract Landroid/media/tv/extension/teletext/IDataServiceSignalInfo$Stub;
.super Landroid/os/Binder;
.source "IDataServiceSignalInfo.java"

# interfaces
.implements Landroid/media/tv/extension/teletext/IDataServiceSignalInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/extension/teletext/IDataServiceSignalInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/extension/teletext/IDataServiceSignalInfo$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_addDataServiceSignalInfoListener:I = 0x2

.field static final blacklist TRANSACTION_getDataServiceSignalInfo:I = 0x1

.field static final blacklist TRANSACTION_removeDataServiceSignalInfoListener:I = 0x3


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 40
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 41
    const-string v0, "android.media.tv.extension.teletext.IDataServiceSignalInfo"

    invoke-virtual {p0, p0, v0}, Landroid/media/tv/extension/teletext/IDataServiceSignalInfo$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 42
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/media/tv/extension/teletext/IDataServiceSignalInfo;
    .registers 3

    .line 49
    if-nez p0, :cond_4

    .line 50
    const/4 p0, 0x0

    return-object p0

    .line 52
    :cond_4
    const-string v0, "android.media.tv.extension.teletext.IDataServiceSignalInfo"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 53
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/media/tv/extension/teletext/IDataServiceSignalInfo;

    if-eqz v1, :cond_13

    .line 54
    check-cast v0, Landroid/media/tv/extension/teletext/IDataServiceSignalInfo;

    return-object v0

    .line 56
    :cond_13
    new-instance v0, Landroid/media/tv/extension/teletext/IDataServiceSignalInfo$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/media/tv/extension/teletext/IDataServiceSignalInfo$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 65
    packed-switch p0, :pswitch_data_10

    .line 81
    const/4 p0, 0x0

    return-object p0

    .line 77
    :pswitch_5
    const-string/jumbo p0, "removeDataServiceSignalInfoListener"

    return-object p0

    .line 73
    :pswitch_9
    const-string p0, "addDataServiceSignalInfoListener"

    return-object p0

    .line 69
    :pswitch_c
    const-string p0, "getDataServiceSignalInfo"

    return-object p0

    nop

    :pswitch_data_10
    .packed-switch 0x1
        :pswitch_c
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 60
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 216
    const/4 v0, 0x2

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 88
    invoke-static {p1}, Landroid/media/tv/extension/teletext/IDataServiceSignalInfo$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 92
    nop

    .line 93
    const-string v0, "android.media.tv.extension.teletext.IDataServiceSignalInfo"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 94
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 97
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 98
    return v1

    .line 100
    :cond_17
    packed-switch p1, :pswitch_data_5e

    .line 136
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 126
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 128
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    invoke-static {p4}, Landroid/media/tv/extension/teletext/IDataServiceSignalInfoListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/tv/extension/teletext/IDataServiceSignalInfoListener;

    move-result-object p4

    .line 129
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 130
    invoke-virtual {p0, p1, p4}, Landroid/media/tv/extension/teletext/IDataServiceSignalInfo$Stub;->removeDataServiceSignalInfoListener(Ljava/lang/String;Landroid/media/tv/extension/teletext/IDataServiceSignalInfoListener;)V

    .line 131
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 132
    goto :goto_5d

    .line 115
    :pswitch_35
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 117
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    invoke-static {p4}, Landroid/media/tv/extension/teletext/IDataServiceSignalInfoListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/tv/extension/teletext/IDataServiceSignalInfoListener;

    move-result-object p4

    .line 118
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 119
    invoke-virtual {p0, p1, p4}, Landroid/media/tv/extension/teletext/IDataServiceSignalInfo$Stub;->addDataServiceSignalInfoListener(Ljava/lang/String;Landroid/media/tv/extension/teletext/IDataServiceSignalInfoListener;)V

    .line 120
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 121
    goto :goto_5d

    .line 105
    :pswitch_4b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 106
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 107
    invoke-virtual {p0, p1}, Landroid/media/tv/extension/teletext/IDataServiceSignalInfo$Stub;->getDataServiceSignalInfo(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 108
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 109
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 110
    nop

    .line 139
    :goto_5d
    return v1

    :pswitch_data_5e
    .packed-switch 0x1
        :pswitch_4b
        :pswitch_35
        :pswitch_1f
    .end packed-switch
.end method
