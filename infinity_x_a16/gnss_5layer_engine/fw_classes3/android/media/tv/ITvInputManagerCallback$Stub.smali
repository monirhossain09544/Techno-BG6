.class public abstract Landroid/media/tv/ITvInputManagerCallback$Stub;
.super Landroid/os/Binder;
.source "ITvInputManagerCallback.java"

# interfaces
.implements Landroid/media/tv/ITvInputManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/ITvInputManagerCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/ITvInputManagerCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.media.tv.ITvInputManagerCallback"

.field static final blacklist TRANSACTION_onCurrentTunedInfosUpdated:I = 0x6

.field static final greylist-max-o TRANSACTION_onInputAdded:I = 0x1

.field static final greylist-max-o TRANSACTION_onInputRemoved:I = 0x2

.field static final greylist-max-o TRANSACTION_onInputStateChanged:I = 0x4

.field static final greylist-max-o TRANSACTION_onInputUpdated:I = 0x3

.field static final greylist-max-o TRANSACTION_onTvInputInfoUpdated:I = 0x5


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 48
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 49
    const-string v0, "android.media.tv.ITvInputManagerCallback"

    invoke-virtual {p0, p0, v0}, Landroid/media/tv/ITvInputManagerCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/media/tv/ITvInputManagerCallback;
    .registers 3

    .line 57
    if-nez p0, :cond_4

    .line 58
    const/4 p0, 0x0

    return-object p0

    .line 60
    :cond_4
    const-string v0, "android.media.tv.ITvInputManagerCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 61
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/media/tv/ITvInputManagerCallback;

    if-eqz v1, :cond_13

    .line 62
    check-cast v0, Landroid/media/tv/ITvInputManagerCallback;

    return-object v0

    .line 64
    :cond_13
    new-instance v0, Landroid/media/tv/ITvInputManagerCallback$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/media/tv/ITvInputManagerCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 73
    packed-switch p0, :pswitch_data_1e

    .line 101
    const/4 p0, 0x0

    return-object p0

    .line 97
    :pswitch_5
    const-string/jumbo p0, "onCurrentTunedInfosUpdated"

    return-object p0

    .line 93
    :pswitch_9
    const-string/jumbo p0, "onTvInputInfoUpdated"

    return-object p0

    .line 89
    :pswitch_d
    const-string/jumbo p0, "onInputStateChanged"

    return-object p0

    .line 85
    :pswitch_11
    const-string/jumbo p0, "onInputUpdated"

    return-object p0

    .line 81
    :pswitch_15
    const-string/jumbo p0, "onInputRemoved"

    return-object p0

    .line 77
    :pswitch_19
    const-string/jumbo p0, "onInputAdded"

    return-object p0

    nop

    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_19
        :pswitch_15
        :pswitch_11
        :pswitch_d
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 68
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 279
    const/4 v0, 0x5

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 108
    invoke-static {p1}, Landroid/media/tv/ITvInputManagerCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 112
    nop

    .line 113
    const-string v0, "android.media.tv.ITvInputManagerCallback"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 114
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 116
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 117
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 118
    return v1

    .line 120
    :cond_17
    packed-switch p1, :pswitch_data_6c

    .line 174
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 167
    :pswitch_1f
    sget-object p1, Landroid/media/tv/TunedInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1

    .line 168
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 169
    invoke-virtual {p0, p1}, Landroid/media/tv/ITvInputManagerCallback$Stub;->onCurrentTunedInfosUpdated(Ljava/util/List;)V

    .line 170
    goto :goto_6b

    .line 159
    :pswitch_2c
    sget-object p1, Landroid/media/tv/TvInputInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/tv/TvInputInfo;

    .line 160
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 161
    invoke-virtual {p0, p1}, Landroid/media/tv/ITvInputManagerCallback$Stub;->onTvInputInfoUpdated(Landroid/media/tv/TvInputInfo;)V

    .line 162
    goto :goto_6b

    .line 149
    :pswitch_3b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 151
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 152
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 153
    invoke-virtual {p0, p1, p3}, Landroid/media/tv/ITvInputManagerCallback$Stub;->onInputStateChanged(Ljava/lang/String;I)V

    .line 154
    goto :goto_6b

    .line 141
    :pswitch_4a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 142
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 143
    invoke-virtual {p0, p1}, Landroid/media/tv/ITvInputManagerCallback$Stub;->onInputUpdated(Ljava/lang/String;)V

    .line 144
    goto :goto_6b

    .line 133
    :pswitch_55
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 134
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 135
    invoke-virtual {p0, p1}, Landroid/media/tv/ITvInputManagerCallback$Stub;->onInputRemoved(Ljava/lang/String;)V

    .line 136
    goto :goto_6b

    .line 125
    :pswitch_60
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 126
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 127
    invoke-virtual {p0, p1}, Landroid/media/tv/ITvInputManagerCallback$Stub;->onInputAdded(Ljava/lang/String;)V

    .line 128
    nop

    .line 177
    :goto_6b
    return v1

    :pswitch_data_6c
    .packed-switch 0x1
        :pswitch_60
        :pswitch_55
        :pswitch_4a
        :pswitch_3b
        :pswitch_2c
        :pswitch_1f
    .end packed-switch
.end method
