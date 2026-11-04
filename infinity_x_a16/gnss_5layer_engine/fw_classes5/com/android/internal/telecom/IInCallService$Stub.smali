.class public abstract Lcom/android/internal/telecom/IInCallService$Stub;
.super Landroid/os/Binder;
.source "IInCallService.java"

# interfaces
.implements Lcom/android/internal/telecom/IInCallService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telecom/IInCallService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telecom/IInCallService$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telecom.IInCallService"

.field static final greylist-max-o TRANSACTION_addCall:I = 0x2

.field static final greylist-max-o TRANSACTION_bringToForeground:I = 0xa

.field static final blacklist TRANSACTION_onAvailableCallEndpointsChanged:I = 0x8

.field static final greylist-max-o TRANSACTION_onCallAudioStateChanged:I = 0x6

.field static final blacklist TRANSACTION_onCallEndpointChanged:I = 0x7

.field static final greylist-max-o TRANSACTION_onCanAddCallChanged:I = 0xb

.field static final greylist-max-o TRANSACTION_onConnectionEvent:I = 0xd

.field static final greylist-max-o TRANSACTION_onHandoverComplete:I = 0x11

.field static final greylist-max-o TRANSACTION_onHandoverFailed:I = 0x10

.field static final blacklist TRANSACTION_onMuteStateChanged:I = 0x9

.field static final greylist-max-o TRANSACTION_onRttInitiationFailure:I = 0xf

.field static final greylist-max-o TRANSACTION_onRttUpgradeRequest:I = 0xe

.field static final greylist-max-o TRANSACTION_setInCallAdapter:I = 0x1

.field static final greylist-max-o TRANSACTION_setPostDial:I = 0x4

.field static final greylist-max-o TRANSACTION_setPostDialWait:I = 0x5

.field static final greylist-max-o TRANSACTION_silenceRinger:I = 0xc

.field static final greylist-max-o TRANSACTION_updateCall:I = 0x3


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 84
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 85
    const-string v0, "com.android.internal.telecom.IInCallService"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telecom/IInCallService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 86
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Lcom/android/internal/telecom/IInCallService;
    .registers 3

    .line 93
    if-nez p0, :cond_4

    .line 94
    const/4 p0, 0x0

    return-object p0

    .line 96
    :cond_4
    const-string v0, "com.android.internal.telecom.IInCallService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 97
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/android/internal/telecom/IInCallService;

    if-eqz v1, :cond_13

    .line 98
    check-cast v0, Lcom/android/internal/telecom/IInCallService;

    return-object v0

    .line 100
    :cond_13
    new-instance v0, Lcom/android/internal/telecom/IInCallService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/android/internal/telecom/IInCallService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 109
    packed-switch p0, :pswitch_data_38

    .line 181
    const/4 p0, 0x0

    return-object p0

    .line 177
    :pswitch_5
    const-string p0, "onHandoverComplete"

    return-object p0

    .line 173
    :pswitch_8
    const-string p0, "onHandoverFailed"

    return-object p0

    .line 169
    :pswitch_b
    const-string p0, "onRttInitiationFailure"

    return-object p0

    .line 165
    :pswitch_e
    const-string p0, "onRttUpgradeRequest"

    return-object p0

    .line 161
    :pswitch_11
    const-string p0, "onConnectionEvent"

    return-object p0

    .line 157
    :pswitch_14
    const-string p0, "silenceRinger"

    return-object p0

    .line 153
    :pswitch_17
    const-string p0, "onCanAddCallChanged"

    return-object p0

    .line 149
    :pswitch_1a
    const-string p0, "bringToForeground"

    return-object p0

    .line 145
    :pswitch_1d
    const-string p0, "onMuteStateChanged"

    return-object p0

    .line 141
    :pswitch_20
    const-string p0, "onAvailableCallEndpointsChanged"

    return-object p0

    .line 137
    :pswitch_23
    const-string p0, "onCallEndpointChanged"

    return-object p0

    .line 133
    :pswitch_26
    const-string p0, "onCallAudioStateChanged"

    return-object p0

    .line 129
    :pswitch_29
    const-string p0, "setPostDialWait"

    return-object p0

    .line 125
    :pswitch_2c
    const-string p0, "setPostDial"

    return-object p0

    .line 121
    :pswitch_2f
    const-string p0, "updateCall"

    return-object p0

    .line 117
    :pswitch_32
    const-string p0, "addCall"

    return-object p0

    .line 113
    :pswitch_35
    const-string p0, "setInCallAdapter"

    return-object p0

    :pswitch_data_38
    .packed-switch 0x1
        :pswitch_35
        :pswitch_32
        :pswitch_2f
        :pswitch_2c
        :pswitch_29
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

    .line 104
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 604
    const/16 v0, 0x10

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 188
    invoke-static {p1}, Lcom/android/internal/telecom/IInCallService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 192
    nop

    .line 193
    const-string v0, "com.android.internal.telecom.IInCallService"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 194
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 196
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 197
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 198
    return v1

    .line 200
    :cond_17
    packed-switch p1, :pswitch_data_114

    .line 351
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 344
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 345
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 346
    invoke-virtual {p0, p1}, Lcom/android/internal/telecom/IInCallService$Stub;->onHandoverComplete(Ljava/lang/String;)V

    .line 347
    goto/16 :goto_112

    .line 334
    :pswitch_2b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 336
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 337
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 338
    invoke-virtual {p0, p1, p3}, Lcom/android/internal/telecom/IInCallService$Stub;->onHandoverFailed(Ljava/lang/String;I)V

    .line 339
    goto/16 :goto_112

    .line 324
    :pswitch_3b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 326
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 327
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 328
    invoke-virtual {p0, p1, p3}, Lcom/android/internal/telecom/IInCallService$Stub;->onRttInitiationFailure(Ljava/lang/String;I)V

    .line 329
    goto/16 :goto_112

    .line 314
    :pswitch_4b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 316
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 317
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 318
    invoke-virtual {p0, p1, p3}, Lcom/android/internal/telecom/IInCallService$Stub;->onRttUpgradeRequest(Ljava/lang/String;I)V

    .line 319
    goto/16 :goto_112

    .line 302
    :pswitch_5b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 304
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p3

    .line 306
    sget-object p4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/os/Bundle;

    .line 307
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 308
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/internal/telecom/IInCallService$Stub;->onConnectionEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 309
    goto/16 :goto_112

    .line 296
    :pswitch_73
    invoke-virtual {p0}, Lcom/android/internal/telecom/IInCallService$Stub;->silenceRinger()V

    .line 297
    goto/16 :goto_112

    .line 289
    :pswitch_78
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 290
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 291
    invoke-virtual {p0, p1}, Lcom/android/internal/telecom/IInCallService$Stub;->onCanAddCallChanged(Z)V

    .line 292
    goto/16 :goto_112

    .line 281
    :pswitch_84
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 282
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 283
    invoke-virtual {p0, p1}, Lcom/android/internal/telecom/IInCallService$Stub;->bringToForeground(Z)V

    .line 284
    goto/16 :goto_112

    .line 273
    :pswitch_90
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 274
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 275
    invoke-virtual {p0, p1}, Lcom/android/internal/telecom/IInCallService$Stub;->onMuteStateChanged(Z)V

    .line 276
    goto/16 :goto_112

    .line 265
    :pswitch_9c
    sget-object p1, Landroid/telecom/CallEndpoint;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1

    .line 266
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 267
    invoke-virtual {p0, p1}, Lcom/android/internal/telecom/IInCallService$Stub;->onAvailableCallEndpointsChanged(Ljava/util/List;)V

    .line 268
    goto :goto_112

    .line 257
    :pswitch_a9
    sget-object p1, Landroid/telecom/CallEndpoint;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telecom/CallEndpoint;

    .line 258
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 259
    invoke-virtual {p0, p1}, Lcom/android/internal/telecom/IInCallService$Stub;->onCallEndpointChanged(Landroid/telecom/CallEndpoint;)V

    .line 260
    goto :goto_112

    .line 249
    :pswitch_b8
    sget-object p1, Landroid/telecom/CallAudioState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telecom/CallAudioState;

    .line 250
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 251
    invoke-virtual {p0, p1}, Lcom/android/internal/telecom/IInCallService$Stub;->onCallAudioStateChanged(Landroid/telecom/CallAudioState;)V

    .line 252
    goto :goto_112

    .line 239
    :pswitch_c7
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 241
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p3

    .line 242
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 243
    invoke-virtual {p0, p1, p3}, Lcom/android/internal/telecom/IInCallService$Stub;->setPostDialWait(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    goto :goto_112

    .line 229
    :pswitch_d6
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 231
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p3

    .line 232
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 233
    invoke-virtual {p0, p1, p3}, Lcom/android/internal/telecom/IInCallService$Stub;->setPostDial(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    goto :goto_112

    .line 221
    :pswitch_e5
    sget-object p1, Landroid/telecom/ParcelableCall;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telecom/ParcelableCall;

    .line 222
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 223
    invoke-virtual {p0, p1}, Lcom/android/internal/telecom/IInCallService$Stub;->updateCall(Landroid/telecom/ParcelableCall;)V

    .line 224
    goto :goto_112

    .line 213
    :pswitch_f4
    sget-object p1, Landroid/telecom/ParcelableCall;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telecom/ParcelableCall;

    .line 214
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 215
    invoke-virtual {p0, p1}, Lcom/android/internal/telecom/IInCallService$Stub;->addCall(Landroid/telecom/ParcelableCall;)V

    .line 216
    goto :goto_112

    .line 205
    :pswitch_103
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telecom/IInCallAdapter;

    move-result-object p1

    .line 206
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 207
    invoke-virtual {p0, p1}, Lcom/android/internal/telecom/IInCallService$Stub;->setInCallAdapter(Lcom/android/internal/telecom/IInCallAdapter;)V

    .line 208
    nop

    .line 354
    :goto_112
    return v1

    nop

    :pswitch_data_114
    .packed-switch 0x1
        :pswitch_103
        :pswitch_f4
        :pswitch_e5
        :pswitch_d6
        :pswitch_c7
        :pswitch_b8
        :pswitch_a9
        :pswitch_9c
        :pswitch_90
        :pswitch_84
        :pswitch_78
        :pswitch_73
        :pswitch_5b
        :pswitch_4b
        :pswitch_3b
        :pswitch_2b
        :pswitch_1f
    .end packed-switch
.end method
