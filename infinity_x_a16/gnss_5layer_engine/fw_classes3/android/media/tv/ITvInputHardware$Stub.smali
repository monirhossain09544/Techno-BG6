.class public abstract Landroid/media/tv/ITvInputHardware$Stub;
.super Landroid/os/Binder;
.source "ITvInputHardware.java"

# interfaces
.implements Landroid/media/tv/ITvInputHardware;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/ITvInputHardware;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/ITvInputHardware$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.media.tv.ITvInputHardware"

.field static final greylist-max-o TRANSACTION_overrideAudioSink:I = 0x3

.field static final greylist-max-o TRANSACTION_setStreamVolume:I = 0x2

.field static final greylist-max-o TRANSACTION_setSurface:I = 0x1


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 62
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 63
    const-string v0, "android.media.tv.ITvInputHardware"

    invoke-virtual {p0, p0, v0}, Landroid/media/tv/ITvInputHardware$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 64
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/media/tv/ITvInputHardware;
    .registers 3

    .line 71
    if-nez p0, :cond_4

    .line 72
    const/4 p0, 0x0

    return-object p0

    .line 74
    :cond_4
    const-string v0, "android.media.tv.ITvInputHardware"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 75
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/media/tv/ITvInputHardware;

    if-eqz v1, :cond_13

    .line 76
    check-cast v0, Landroid/media/tv/ITvInputHardware;

    return-object v0

    .line 78
    :cond_13
    new-instance v0, Landroid/media/tv/ITvInputHardware$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/media/tv/ITvInputHardware$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 87
    packed-switch p0, :pswitch_data_12

    .line 103
    const/4 p0, 0x0

    return-object p0

    .line 99
    :pswitch_5
    const-string/jumbo p0, "overrideAudioSink"

    return-object p0

    .line 95
    :pswitch_9
    const-string/jumbo p0, "setStreamVolume"

    return-object p0

    .line 91
    :pswitch_d
    const-string/jumbo p0, "setSurface"

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

    .line 82
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 265
    const/4 v0, 0x2

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 110
    invoke-static {p1}, Landroid/media/tv/ITvInputHardware$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 114
    nop

    .line 115
    const-string v0, "android.media.tv.ITvInputHardware"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 116
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 118
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 119
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 120
    return v1

    .line 122
    :cond_17
    packed-switch p1, :pswitch_data_6e

    .line 164
    move-object v3, p0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 148
    :pswitch_20
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 150
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 152
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 154
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 156
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 157
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 158
    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Landroid/media/tv/ITvInputHardware$Stub;->overrideAudioSink(ILjava/lang/String;III)V

    .line 159
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 160
    goto :goto_6d

    .line 139
    :pswitch_3f
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    .line 140
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 141
    invoke-virtual {p0, p1}, Landroid/media/tv/ITvInputHardware$Stub;->setStreamVolume(F)V

    .line 142
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 143
    goto :goto_6d

    .line 127
    :pswitch_4e
    move-object v3, p0

    sget-object p1, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/Surface;

    .line 129
    sget-object p4, Landroid/media/tv/TvStreamConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/media/tv/TvStreamConfig;

    .line 130
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 131
    invoke-virtual {p0, p1, p4}, Landroid/media/tv/ITvInputHardware$Stub;->setSurface(Landroid/view/Surface;Landroid/media/tv/TvStreamConfig;)Z

    move-result p1

    .line 132
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 133
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 134
    nop

    .line 167
    :goto_6d
    return v1

    :pswitch_data_6e
    .packed-switch 0x1
        :pswitch_4e
        :pswitch_3f
        :pswitch_20
    .end packed-switch
.end method
