.class public abstract Landroid/media/tv/ITvRemoteServiceInput$Stub;
.super Landroid/os/Binder;
.source "ITvRemoteServiceInput.java"

# interfaces
.implements Landroid/media/tv/ITvRemoteServiceInput;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/ITvRemoteServiceInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/ITvRemoteServiceInput$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.media.tv.ITvRemoteServiceInput"

.field static final greylist-max-o TRANSACTION_clearInputBridge:I = 0x3

.field static final greylist-max-o TRANSACTION_closeInputBridge:I = 0x2

.field static final blacklist TRANSACTION_openGamepadBridge:I = 0xa

.field static final greylist-max-o TRANSACTION_openInputBridge:I = 0x1

.field static final blacklist TRANSACTION_sendGamepadAxisValue:I = 0xd

.field static final blacklist TRANSACTION_sendGamepadKeyDown:I = 0xb

.field static final blacklist TRANSACTION_sendGamepadKeyUp:I = 0xc

.field static final greylist-max-o TRANSACTION_sendKeyDown:I = 0x5

.field static final greylist-max-o TRANSACTION_sendKeyUp:I = 0x6

.field static final greylist-max-o TRANSACTION_sendPointerDown:I = 0x7

.field static final greylist-max-o TRANSACTION_sendPointerSync:I = 0x9

.field static final greylist-max-o TRANSACTION_sendPointerUp:I = 0x8

.field static final greylist-max-o TRANSACTION_sendTimestamp:I = 0x4


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 68
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 69
    const-string v0, "android.media.tv.ITvRemoteServiceInput"

    invoke-virtual {p0, p0, v0}, Landroid/media/tv/ITvRemoteServiceInput$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 70
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/media/tv/ITvRemoteServiceInput;
    .registers 3

    .line 77
    if-nez p0, :cond_4

    .line 78
    const/4 p0, 0x0

    return-object p0

    .line 80
    :cond_4
    const-string v0, "android.media.tv.ITvRemoteServiceInput"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 81
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/media/tv/ITvRemoteServiceInput;

    if-eqz v1, :cond_13

    .line 82
    check-cast v0, Landroid/media/tv/ITvRemoteServiceInput;

    return-object v0

    .line 84
    :cond_13
    new-instance v0, Landroid/media/tv/ITvRemoteServiceInput$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/media/tv/ITvRemoteServiceInput$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 93
    packed-switch p0, :pswitch_data_38

    .line 149
    const/4 p0, 0x0

    return-object p0

    .line 145
    :pswitch_5
    const-string/jumbo p0, "sendGamepadAxisValue"

    return-object p0

    .line 141
    :pswitch_9
    const-string/jumbo p0, "sendGamepadKeyUp"

    return-object p0

    .line 137
    :pswitch_d
    const-string/jumbo p0, "sendGamepadKeyDown"

    return-object p0

    .line 133
    :pswitch_11
    const-string/jumbo p0, "openGamepadBridge"

    return-object p0

    .line 129
    :pswitch_15
    const-string/jumbo p0, "sendPointerSync"

    return-object p0

    .line 125
    :pswitch_19
    const-string/jumbo p0, "sendPointerUp"

    return-object p0

    .line 121
    :pswitch_1d
    const-string/jumbo p0, "sendPointerDown"

    return-object p0

    .line 117
    :pswitch_21
    const-string/jumbo p0, "sendKeyUp"

    return-object p0

    .line 113
    :pswitch_25
    const-string/jumbo p0, "sendKeyDown"

    return-object p0

    .line 109
    :pswitch_29
    const-string/jumbo p0, "sendTimestamp"

    return-object p0

    .line 105
    :pswitch_2d
    const-string p0, "clearInputBridge"

    return-object p0

    .line 101
    :pswitch_30
    const-string p0, "closeInputBridge"

    return-object p0

    .line 97
    :pswitch_33
    const-string/jumbo p0, "openInputBridge"

    return-object p0

    nop

    :pswitch_data_38
    .packed-switch 0x1
        :pswitch_33
        :pswitch_30
        :pswitch_2d
        :pswitch_29
        :pswitch_25
        :pswitch_21
        :pswitch_1d
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

    .line 88
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 521
    const/16 v0, 0xc

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 156
    invoke-static {p1}, Landroid/media/tv/ITvRemoteServiceInput$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 160
    nop

    .line 161
    const-string v0, "android.media.tv.ITvRemoteServiceInput"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 162
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 164
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 165
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 166
    return v1

    .line 168
    :cond_17
    packed-switch p1, :pswitch_data_f6

    .line 308
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 297
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 299
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 301
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result p4

    .line 302
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 303
    invoke-virtual {p0, p1, p3, p4}, Landroid/media/tv/ITvRemoteServiceInput$Stub;->sendGamepadAxisValue(Landroid/os/IBinder;IF)V

    .line 304
    goto/16 :goto_f5

    .line 287
    :pswitch_33
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 289
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 290
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 291
    invoke-virtual {p0, p1, p3}, Landroid/media/tv/ITvRemoteServiceInput$Stub;->sendGamepadKeyUp(Landroid/os/IBinder;I)V

    .line 292
    goto/16 :goto_f5

    .line 277
    :pswitch_43
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 279
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 280
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 281
    invoke-virtual {p0, p1, p3}, Landroid/media/tv/ITvRemoteServiceInput$Stub;->sendGamepadKeyDown(Landroid/os/IBinder;I)V

    .line 282
    goto/16 :goto_f5

    .line 267
    :pswitch_53
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 269
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p3

    .line 270
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 271
    invoke-virtual {p0, p1, p3}, Landroid/media/tv/ITvRemoteServiceInput$Stub;->openGamepadBridge(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 272
    goto/16 :goto_f5

    .line 259
    :pswitch_63
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 260
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 261
    invoke-virtual {p0, p1}, Landroid/media/tv/ITvRemoteServiceInput$Stub;->sendPointerSync(Landroid/os/IBinder;)V

    .line 262
    goto/16 :goto_f5

    .line 249
    :pswitch_6f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 251
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 252
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 253
    invoke-virtual {p0, p1, p3}, Landroid/media/tv/ITvRemoteServiceInput$Stub;->sendPointerUp(Landroid/os/IBinder;I)V

    .line 254
    goto/16 :goto_f5

    .line 235
    :pswitch_7f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 237
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 239
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 241
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 242
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 243
    invoke-virtual {p0, p1, p3, p4, v0}, Landroid/media/tv/ITvRemoteServiceInput$Stub;->sendPointerDown(Landroid/os/IBinder;III)V

    .line 244
    goto :goto_f5

    .line 225
    :pswitch_96
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 227
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 228
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 229
    invoke-virtual {p0, p1, p3}, Landroid/media/tv/ITvRemoteServiceInput$Stub;->sendKeyUp(Landroid/os/IBinder;I)V

    .line 230
    goto :goto_f5

    .line 215
    :pswitch_a5
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 217
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 218
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 219
    invoke-virtual {p0, p1, p3}, Landroid/media/tv/ITvRemoteServiceInput$Stub;->sendKeyDown(Landroid/os/IBinder;I)V

    .line 220
    goto :goto_f5

    .line 205
    :pswitch_b4
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 207
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide p3

    .line 208
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 209
    invoke-virtual {p0, p1, p3, p4}, Landroid/media/tv/ITvRemoteServiceInput$Stub;->sendTimestamp(Landroid/os/IBinder;J)V

    .line 210
    goto :goto_f5

    .line 197
    :pswitch_c3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 198
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 199
    invoke-virtual {p0, p1}, Landroid/media/tv/ITvRemoteServiceInput$Stub;->clearInputBridge(Landroid/os/IBinder;)V

    .line 200
    goto :goto_f5

    .line 189
    :pswitch_ce
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 190
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 191
    invoke-virtual {p0, p1}, Landroid/media/tv/ITvRemoteServiceInput$Stub;->closeInputBridge(Landroid/os/IBinder;)V

    .line 192
    goto :goto_f5

    .line 173
    :pswitch_d9
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 175
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 177
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 179
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 181
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 182
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 183
    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Landroid/media/tv/ITvRemoteServiceInput$Stub;->openInputBridge(Landroid/os/IBinder;Ljava/lang/String;III)V

    .line 184
    nop

    .line 311
    :goto_f5
    return v1

    :pswitch_data_f6
    .packed-switch 0x1
        :pswitch_d9
        :pswitch_ce
        :pswitch_c3
        :pswitch_b4
        :pswitch_a5
        :pswitch_96
        :pswitch_7f
        :pswitch_6f
        :pswitch_63
        :pswitch_53
        :pswitch_43
        :pswitch_33
        :pswitch_1f
    .end packed-switch
.end method
