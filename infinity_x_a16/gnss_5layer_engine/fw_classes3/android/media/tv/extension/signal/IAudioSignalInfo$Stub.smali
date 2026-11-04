.class public abstract Landroid/media/tv/extension/signal/IAudioSignalInfo$Stub;
.super Landroid/os/Binder;
.source "IAudioSignalInfo.java"

# interfaces
.implements Landroid/media/tv/extension/signal/IAudioSignalInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/extension/signal/IAudioSignalInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/extension/signal/IAudioSignalInfo$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_addAudioSignalInfoListener:I = 0x4

.field static final blacklist TRANSACTION_getAudioSignalInfo:I = 0x1

.field static final blacklist TRANSACTION_getMtsSelectedTrackId:I = 0x3

.field static final blacklist TRANSACTION_notifyMtsSelectTrackFlag:I = 0x2

.field static final blacklist TRANSACTION_removeAudioSignalInfoListener:I = 0x5


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 49
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 50
    const-string v0, "android.media.tv.extension.signal.IAudioSignalInfo"

    invoke-virtual {p0, p0, v0}, Landroid/media/tv/extension/signal/IAudioSignalInfo$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 51
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/media/tv/extension/signal/IAudioSignalInfo;
    .registers 3

    .line 58
    if-nez p0, :cond_4

    .line 59
    const/4 p0, 0x0

    return-object p0

    .line 61
    :cond_4
    const-string v0, "android.media.tv.extension.signal.IAudioSignalInfo"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 62
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/media/tv/extension/signal/IAudioSignalInfo;

    if-eqz v1, :cond_13

    .line 63
    check-cast v0, Landroid/media/tv/extension/signal/IAudioSignalInfo;

    return-object v0

    .line 65
    :cond_13
    new-instance v0, Landroid/media/tv/extension/signal/IAudioSignalInfo$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/media/tv/extension/signal/IAudioSignalInfo$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 74
    packed-switch p0, :pswitch_data_16

    .line 98
    const/4 p0, 0x0

    return-object p0

    .line 94
    :pswitch_5
    const-string/jumbo p0, "removeAudioSignalInfoListener"

    return-object p0

    .line 90
    :pswitch_9
    const-string p0, "addAudioSignalInfoListener"

    return-object p0

    .line 86
    :pswitch_c
    const-string p0, "getMtsSelectedTrackId"

    return-object p0

    .line 82
    :pswitch_f
    const-string/jumbo p0, "notifyMtsSelectTrackFlag"

    return-object p0

    .line 78
    :pswitch_13
    const-string p0, "getAudioSignalInfo"

    return-object p0

    :pswitch_data_16
    .packed-switch 0x1
        :pswitch_13
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 69
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 282
    const/4 v0, 0x4

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 105
    invoke-static {p1}, Landroid/media/tv/extension/signal/IAudioSignalInfo$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 109
    nop

    .line 110
    const-string v0, "android.media.tv.extension.signal.IAudioSignalInfo"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 111
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 113
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 114
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 115
    return v1

    .line 117
    :cond_17
    packed-switch p1, :pswitch_data_74

    .line 167
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 159
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/media/tv/extension/signal/IAudioSignalInfoListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/tv/extension/signal/IAudioSignalInfoListener;

    move-result-object p1

    .line 160
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 161
    invoke-virtual {p0, p1}, Landroid/media/tv/extension/signal/IAudioSignalInfo$Stub;->removeAudioSignalInfoListener(Landroid/media/tv/extension/signal/IAudioSignalInfoListener;)V

    .line 162
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 163
    goto :goto_72

    .line 148
    :pswitch_31
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 150
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    invoke-static {p4}, Landroid/media/tv/extension/signal/IAudioSignalInfoListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/tv/extension/signal/IAudioSignalInfoListener;

    move-result-object p4

    .line 151
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 152
    invoke-virtual {p0, p1, p4}, Landroid/media/tv/extension/signal/IAudioSignalInfo$Stub;->addAudioSignalInfoListener(Ljava/lang/String;Landroid/media/tv/extension/signal/IAudioSignalInfoListener;)V

    .line 153
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 154
    goto :goto_72

    .line 140
    :pswitch_47
    invoke-virtual {p0}, Landroid/media/tv/extension/signal/IAudioSignalInfo$Stub;->getMtsSelectedTrackId()Ljava/lang/String;

    move-result-object p1

    .line 141
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 142
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 143
    goto :goto_72

    .line 132
    :pswitch_52
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 133
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 134
    invoke-virtual {p0, p1}, Landroid/media/tv/extension/signal/IAudioSignalInfo$Stub;->notifyMtsSelectTrackFlag(Z)V

    .line 135
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 136
    goto :goto_72

    .line 122
    :pswitch_60
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 123
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 124
    invoke-virtual {p0, p1}, Landroid/media/tv/extension/signal/IAudioSignalInfo$Stub;->getAudioSignalInfo(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 125
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 126
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 127
    nop

    .line 170
    :goto_72
    return v1

    nop

    :pswitch_data_74
    .packed-switch 0x1
        :pswitch_60
        :pswitch_52
        :pswitch_47
        :pswitch_31
        :pswitch_1f
    .end packed-switch
.end method
