.class public abstract Lcom/android/internal/telecom/IVideoProvider$Stub;
.super Landroid/os/Binder;
.source "IVideoProvider.java"

# interfaces
.implements Lcom/android/internal/telecom/IVideoProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telecom/IVideoProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telecom/IVideoProvider$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telecom.IVideoProvider"

.field static final greylist-max-o TRANSACTION_addVideoCallback:I = 0x1

.field static final greylist-max-o TRANSACTION_removeVideoCallback:I = 0x2

.field static final greylist-max-o TRANSACTION_requestCallDataUsage:I = 0xb

.field static final greylist-max-o TRANSACTION_requestCameraCapabilities:I = 0xa

.field static final greylist-max-o TRANSACTION_sendSessionModifyRequest:I = 0x8

.field static final greylist-max-o TRANSACTION_sendSessionModifyResponse:I = 0x9

.field static final greylist-max-o TRANSACTION_setCamera:I = 0x3

.field static final greylist-max-o TRANSACTION_setDeviceOrientation:I = 0x6

.field static final greylist-max-o TRANSACTION_setDisplaySurface:I = 0x5

.field static final greylist-max-o TRANSACTION_setPauseImage:I = 0xc

.field static final greylist-max-o TRANSACTION_setPreviewSurface:I = 0x4

.field static final greylist-max-o TRANSACTION_setZoom:I = 0x7


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 67
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 68
    const-string v0, "com.android.internal.telecom.IVideoProvider"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telecom/IVideoProvider$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 69
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Lcom/android/internal/telecom/IVideoProvider;
    .registers 3

    .line 76
    if-nez p0, :cond_4

    .line 77
    const/4 p0, 0x0

    return-object p0

    .line 79
    :cond_4
    const-string v0, "com.android.internal.telecom.IVideoProvider"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 80
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/android/internal/telecom/IVideoProvider;

    if-eqz v1, :cond_13

    .line 81
    check-cast v0, Lcom/android/internal/telecom/IVideoProvider;

    return-object v0

    .line 83
    :cond_13
    new-instance v0, Lcom/android/internal/telecom/IVideoProvider$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/android/internal/telecom/IVideoProvider$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 92
    packed-switch p0, :pswitch_data_2a

    .line 144
    const/4 p0, 0x0

    return-object p0

    .line 140
    :pswitch_5
    const-string p0, "setPauseImage"

    return-object p0

    .line 136
    :pswitch_8
    const-string p0, "requestCallDataUsage"

    return-object p0

    .line 132
    :pswitch_b
    const-string p0, "requestCameraCapabilities"

    return-object p0

    .line 128
    :pswitch_e
    const-string p0, "sendSessionModifyResponse"

    return-object p0

    .line 124
    :pswitch_11
    const-string p0, "sendSessionModifyRequest"

    return-object p0

    .line 120
    :pswitch_14
    const-string p0, "setZoom"

    return-object p0

    .line 116
    :pswitch_17
    const-string p0, "setDeviceOrientation"

    return-object p0

    .line 112
    :pswitch_1a
    const-string p0, "setDisplaySurface"

    return-object p0

    .line 108
    :pswitch_1d
    const-string p0, "setPreviewSurface"

    return-object p0

    .line 104
    :pswitch_20
    const-string p0, "setCamera"

    return-object p0

    .line 100
    :pswitch_23
    const-string p0, "removeVideoCallback"

    return-object p0

    .line 96
    :pswitch_26
    const-string p0, "addVideoCallback"

    return-object p0

    nop

    :pswitch_data_2a
    .packed-switch 0x1
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 87
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 446
    const/16 v0, 0xb

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 151
    invoke-static {p1}, Lcom/android/internal/telecom/IVideoProvider$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 155
    nop

    .line 156
    const-string v0, "com.android.internal.telecom.IVideoProvider"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 157
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 159
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 160
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 161
    return v1

    .line 163
    :cond_17
    packed-switch p1, :pswitch_data_be

    .line 263
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 256
    :pswitch_1f
    sget-object p1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    .line 257
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 258
    invoke-virtual {p0, p1}, Lcom/android/internal/telecom/IVideoProvider$Stub;->setPauseImage(Landroid/net/Uri;)V

    .line 259
    goto/16 :goto_bd

    .line 250
    :pswitch_2f
    invoke-virtual {p0}, Lcom/android/internal/telecom/IVideoProvider$Stub;->requestCallDataUsage()V

    .line 251
    goto/16 :goto_bd

    .line 245
    :pswitch_34
    invoke-virtual {p0}, Lcom/android/internal/telecom/IVideoProvider$Stub;->requestCameraCapabilities()V

    .line 246
    goto/16 :goto_bd

    .line 238
    :pswitch_39
    sget-object p1, Landroid/telecom/VideoProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telecom/VideoProfile;

    .line 239
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 240
    invoke-virtual {p0, p1}, Lcom/android/internal/telecom/IVideoProvider$Stub;->sendSessionModifyResponse(Landroid/telecom/VideoProfile;)V

    .line 241
    goto/16 :goto_bd

    .line 228
    :pswitch_49
    sget-object p1, Landroid/telecom/VideoProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telecom/VideoProfile;

    .line 230
    sget-object p3, Landroid/telecom/VideoProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/telecom/VideoProfile;

    .line 231
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 232
    invoke-virtual {p0, p1, p3}, Lcom/android/internal/telecom/IVideoProvider$Stub;->sendSessionModifyRequest(Landroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V

    .line 233
    goto :goto_bd

    .line 220
    :pswitch_60
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    .line 221
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 222
    invoke-virtual {p0, p1}, Lcom/android/internal/telecom/IVideoProvider$Stub;->setZoom(F)V

    .line 223
    goto :goto_bd

    .line 212
    :pswitch_6b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 213
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 214
    invoke-virtual {p0, p1}, Lcom/android/internal/telecom/IVideoProvider$Stub;->setDeviceOrientation(I)V

    .line 215
    goto :goto_bd

    .line 204
    :pswitch_76
    sget-object p1, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/Surface;

    .line 205
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 206
    invoke-virtual {p0, p1}, Lcom/android/internal/telecom/IVideoProvider$Stub;->setDisplaySurface(Landroid/view/Surface;)V

    .line 207
    goto :goto_bd

    .line 196
    :pswitch_85
    sget-object p1, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/Surface;

    .line 197
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 198
    invoke-virtual {p0, p1}, Lcom/android/internal/telecom/IVideoProvider$Stub;->setPreviewSurface(Landroid/view/Surface;)V

    .line 199
    goto :goto_bd

    .line 184
    :pswitch_94
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 186
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p3

    .line 188
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 189
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 190
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/internal/telecom/IVideoProvider$Stub;->setCamera(Ljava/lang/String;Ljava/lang/String;I)V

    .line 191
    goto :goto_bd

    .line 176
    :pswitch_a7
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 177
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 178
    invoke-virtual {p0, p1}, Lcom/android/internal/telecom/IVideoProvider$Stub;->removeVideoCallback(Landroid/os/IBinder;)V

    .line 179
    goto :goto_bd

    .line 168
    :pswitch_b2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 169
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 170
    invoke-virtual {p0, p1}, Lcom/android/internal/telecom/IVideoProvider$Stub;->addVideoCallback(Landroid/os/IBinder;)V

    .line 171
    nop

    .line 266
    :goto_bd
    return v1

    :pswitch_data_be
    .packed-switch 0x1
        :pswitch_b2
        :pswitch_a7
        :pswitch_94
        :pswitch_85
        :pswitch_76
        :pswitch_6b
        :pswitch_60
        :pswitch_49
        :pswitch_39
        :pswitch_34
        :pswitch_2f
        :pswitch_1f
    .end packed-switch
.end method
