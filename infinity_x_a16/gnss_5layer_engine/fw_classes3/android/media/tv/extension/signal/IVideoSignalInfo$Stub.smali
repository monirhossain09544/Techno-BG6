.class public abstract Landroid/media/tv/extension/signal/IVideoSignalInfo$Stub;
.super Landroid/os/Binder;
.source "IVideoSignalInfo.java"

# interfaces
.implements Landroid/media/tv/extension/signal/IVideoSignalInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/extension/signal/IVideoSignalInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/extension/signal/IVideoSignalInfo$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_addVideoSignalInfoListener:I = 0x1

.field static final blacklist TRANSACTION_getVideoSignalInfo:I = 0x3

.field static final blacklist TRANSACTION_removeVideoSignalInfoListener:I = 0x2


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 37
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 38
    const-string v0, "android.media.tv.extension.signal.IVideoSignalInfo"

    invoke-virtual {p0, p0, v0}, Landroid/media/tv/extension/signal/IVideoSignalInfo$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/media/tv/extension/signal/IVideoSignalInfo;
    .registers 3

    .line 46
    if-nez p0, :cond_4

    .line 47
    const/4 p0, 0x0

    return-object p0

    .line 49
    :cond_4
    const-string v0, "android.media.tv.extension.signal.IVideoSignalInfo"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 50
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/media/tv/extension/signal/IVideoSignalInfo;

    if-eqz v1, :cond_13

    .line 51
    check-cast v0, Landroid/media/tv/extension/signal/IVideoSignalInfo;

    return-object v0

    .line 53
    :cond_13
    new-instance v0, Landroid/media/tv/extension/signal/IVideoSignalInfo$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/media/tv/extension/signal/IVideoSignalInfo$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 62
    packed-switch p0, :pswitch_data_10

    .line 78
    const/4 p0, 0x0

    return-object p0

    .line 74
    :pswitch_5
    const-string p0, "getVideoSignalInfo"

    return-object p0

    .line 70
    :pswitch_8
    const-string/jumbo p0, "removeVideoSignalInfoListener"

    return-object p0

    .line 66
    :pswitch_c
    const-string p0, "addVideoSignalInfoListener"

    return-object p0

    nop

    :pswitch_data_10
    .packed-switch 0x1
        :pswitch_c
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 57
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 207
    const/4 v0, 0x2

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 85
    invoke-static {p1}, Landroid/media/tv/extension/signal/IVideoSignalInfo$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 89
    nop

    .line 90
    const-string v0, "android.media.tv.extension.signal.IVideoSignalInfo"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 91
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 94
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 95
    return v1

    .line 97
    :cond_17
    packed-switch p1, :pswitch_data_5a

    .line 131
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 122
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 123
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 124
    invoke-virtual {p0, p1}, Landroid/media/tv/extension/signal/IVideoSignalInfo$Stub;->getVideoSignalInfo(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 125
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 126
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 127
    goto :goto_59

    .line 113
    :pswitch_31
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/media/tv/extension/signal/IVideoSignalInfoListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/tv/extension/signal/IVideoSignalInfoListener;

    move-result-object p1

    .line 114
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 115
    invoke-virtual {p0, p1}, Landroid/media/tv/extension/signal/IVideoSignalInfo$Stub;->removeVideoSignalInfoListener(Landroid/media/tv/extension/signal/IVideoSignalInfoListener;)V

    .line 116
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 117
    goto :goto_59

    .line 102
    :pswitch_43
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 104
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    invoke-static {p4}, Landroid/media/tv/extension/signal/IVideoSignalInfoListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/tv/extension/signal/IVideoSignalInfoListener;

    move-result-object p4

    .line 105
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 106
    invoke-virtual {p0, p1, p4}, Landroid/media/tv/extension/signal/IVideoSignalInfo$Stub;->addVideoSignalInfoListener(Ljava/lang/String;Landroid/media/tv/extension/signal/IVideoSignalInfoListener;)V

    .line 107
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 108
    nop

    .line 134
    :goto_59
    return v1

    :pswitch_data_5a
    .packed-switch 0x1
        :pswitch_43
        :pswitch_31
        :pswitch_1f
    .end packed-switch
.end method
