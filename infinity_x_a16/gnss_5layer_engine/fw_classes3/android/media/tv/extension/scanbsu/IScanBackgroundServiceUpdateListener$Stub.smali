.class public abstract Landroid/media/tv/extension/scanbsu/IScanBackgroundServiceUpdateListener$Stub;
.super Landroid/os/Binder;
.source "IScanBackgroundServiceUpdateListener.java"

# interfaces
.implements Landroid/media/tv/extension/scanbsu/IScanBackgroundServiceUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/extension/scanbsu/IScanBackgroundServiceUpdateListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/extension/scanbsu/IScanBackgroundServiceUpdateListener$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onChannelListUpdate:I = 0x1

.field static final blacklist TRANSACTION_onNetworkListUpdate:I = 0x2

.field static final blacklist TRANSACTION_onTransportStreamingListUpdate:I = 0x3


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 39
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 40
    const-string v0, "android.media.tv.extension.scanbsu.IScanBackgroundServiceUpdateListener"

    invoke-virtual {p0, p0, v0}, Landroid/media/tv/extension/scanbsu/IScanBackgroundServiceUpdateListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/media/tv/extension/scanbsu/IScanBackgroundServiceUpdateListener;
    .registers 3

    .line 48
    if-nez p0, :cond_4

    .line 49
    const/4 p0, 0x0

    return-object p0

    .line 51
    :cond_4
    const-string v0, "android.media.tv.extension.scanbsu.IScanBackgroundServiceUpdateListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 52
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/media/tv/extension/scanbsu/IScanBackgroundServiceUpdateListener;

    if-eqz v1, :cond_13

    .line 53
    check-cast v0, Landroid/media/tv/extension/scanbsu/IScanBackgroundServiceUpdateListener;

    return-object v0

    .line 55
    :cond_13
    new-instance v0, Landroid/media/tv/extension/scanbsu/IScanBackgroundServiceUpdateListener$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/media/tv/extension/scanbsu/IScanBackgroundServiceUpdateListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 64
    packed-switch p0, :pswitch_data_12

    .line 80
    const/4 p0, 0x0

    return-object p0

    .line 76
    :pswitch_5
    const-string/jumbo p0, "onTransportStreamingListUpdate"

    return-object p0

    .line 72
    :pswitch_9
    const-string/jumbo p0, "onNetworkListUpdate"

    return-object p0

    .line 68
    :pswitch_d
    const-string/jumbo p0, "onChannelListUpdate"

    return-object p0

    nop

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_d
        :pswitch_9
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

    .line 241
    const/4 v0, 0x2

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 87
    invoke-static {p1}, Landroid/media/tv/extension/scanbsu/IScanBackgroundServiceUpdateListener$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 91
    nop

    .line 92
    const-string v0, "android.media.tv.extension.scanbsu.IScanBackgroundServiceUpdateListener"

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
    const/4 v0, 0x0

    const-string v2, "Array too large: "

    const v3, 0xf4240

    packed-switch p1, :pswitch_data_c0

    .line 160
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 142
    :pswitch_25
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 144
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 145
    if-gt p4, v3, :cond_41

    .line 147
    if-gez p4, :cond_32

    .line 148
    goto :goto_34

    .line 150
    :cond_32
    new-array v0, p4, [Landroid/os/Bundle;

    .line 152
    :goto_34
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 153
    invoke-virtual {p0, p1, v0}, Landroid/media/tv/extension/scanbsu/IScanBackgroundServiceUpdateListener$Stub;->onTransportStreamingListUpdate(Ljava/lang/String;[Landroid/os/Bundle;)V

    .line 154
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 155
    invoke-virtual {p3, v0, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 156
    goto :goto_a7

    .line 146
    :cond_41
    new-instance p1, Landroid/os/BadParcelableException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 123
    :pswitch_58
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 125
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 126
    if-gt p4, v3, :cond_74

    .line 128
    if-gez p4, :cond_65

    .line 129
    goto :goto_67

    .line 131
    :cond_65
    new-array v0, p4, [Landroid/os/Bundle;

    .line 133
    :goto_67
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 134
    invoke-virtual {p0, p1, v0}, Landroid/media/tv/extension/scanbsu/IScanBackgroundServiceUpdateListener$Stub;->onNetworkListUpdate(Ljava/lang/String;[Landroid/os/Bundle;)V

    .line 135
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 136
    invoke-virtual {p3, v0, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 137
    goto :goto_a7

    .line 127
    :cond_74
    new-instance p1, Landroid/os/BadParcelableException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 104
    :pswitch_8b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 106
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 107
    if-gt p4, v3, :cond_a8

    .line 109
    if-gez p4, :cond_98

    .line 110
    goto :goto_9a

    .line 112
    :cond_98
    new-array v0, p4, [Landroid/os/Bundle;

    .line 114
    :goto_9a
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 115
    invoke-virtual {p0, p1, v0}, Landroid/media/tv/extension/scanbsu/IScanBackgroundServiceUpdateListener$Stub;->onChannelListUpdate(Ljava/lang/String;[Landroid/os/Bundle;)V

    .line 116
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 117
    invoke-virtual {p3, v0, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 118
    nop

    .line 163
    :goto_a7
    return v1

    .line 108
    :cond_a8
    new-instance p1, Landroid/os/BadParcelableException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :pswitch_data_c0
    .packed-switch 0x1
        :pswitch_8b
        :pswitch_58
        :pswitch_25
    .end packed-switch
.end method
