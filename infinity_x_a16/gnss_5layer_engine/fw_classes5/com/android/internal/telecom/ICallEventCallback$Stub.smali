.class public abstract Lcom/android/internal/telecom/ICallEventCallback$Stub;
.super Landroid/os/Binder;
.source "ICallEventCallback.java"

# interfaces
.implements Lcom/android/internal/telecom/ICallEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telecom/ICallEventCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telecom/ICallEventCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onAddCallControl:I = 0x1

.field static final blacklist TRANSACTION_onAnswer:I = 0x4

.field static final blacklist TRANSACTION_onAvailableCallEndpointsChanged:I = 0x9

.field static final blacklist TRANSACTION_onCallEndpointChanged:I = 0x8

.field static final blacklist TRANSACTION_onCallStreamingFailed:I = 0x7

.field static final blacklist TRANSACTION_onCallStreamingStarted:I = 0x6

.field static final blacklist TRANSACTION_onDisconnect:I = 0x5

.field static final blacklist TRANSACTION_onEvent:I = 0xc

.field static final blacklist TRANSACTION_onMuteStateChanged:I = 0xa

.field static final blacklist TRANSACTION_onSetActive:I = 0x2

.field static final blacklist TRANSACTION_onSetInactive:I = 0x3

.field static final blacklist TRANSACTION_onVideoStateChanged:I = 0xb

.field static final blacklist TRANSACTION_removeCallFromTransactionalServiceWrapper:I = 0xd


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 73
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 74
    const-string v0, "com.android.internal.telecom.ICallEventCallback"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telecom/ICallEventCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 75
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/android/internal/telecom/ICallEventCallback;
    .registers 3

    .line 82
    if-nez p0, :cond_4

    .line 83
    const/4 p0, 0x0

    return-object p0

    .line 85
    :cond_4
    const-string v0, "com.android.internal.telecom.ICallEventCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 86
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/android/internal/telecom/ICallEventCallback;

    if-eqz v1, :cond_13

    .line 87
    check-cast v0, Lcom/android/internal/telecom/ICallEventCallback;

    return-object v0

    .line 89
    :cond_13
    new-instance v0, Lcom/android/internal/telecom/ICallEventCallback$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/android/internal/telecom/ICallEventCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 98
    packed-switch p0, :pswitch_data_2c

    .line 154
    const/4 p0, 0x0

    return-object p0

    .line 150
    :pswitch_5
    const-string p0, "removeCallFromTransactionalServiceWrapper"

    return-object p0

    .line 146
    :pswitch_8
    const-string p0, "onEvent"

    return-object p0

    .line 142
    :pswitch_b
    const-string p0, "onVideoStateChanged"

    return-object p0

    .line 138
    :pswitch_e
    const-string p0, "onMuteStateChanged"

    return-object p0

    .line 134
    :pswitch_11
    const-string p0, "onAvailableCallEndpointsChanged"

    return-object p0

    .line 130
    :pswitch_14
    const-string p0, "onCallEndpointChanged"

    return-object p0

    .line 126
    :pswitch_17
    const-string p0, "onCallStreamingFailed"

    return-object p0

    .line 122
    :pswitch_1a
    const-string p0, "onCallStreamingStarted"

    return-object p0

    .line 118
    :pswitch_1d
    const-string p0, "onDisconnect"

    return-object p0

    .line 114
    :pswitch_20
    const-string p0, "onAnswer"

    return-object p0

    .line 110
    :pswitch_23
    const-string p0, "onSetInactive"

    return-object p0

    .line 106
    :pswitch_26
    const-string p0, "onSetActive"

    return-object p0

    .line 102
    :pswitch_29
    const-string p0, "onAddCallControl"

    return-object p0

    :pswitch_data_2c
    .packed-switch 0x1
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

    .line 93
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 532
    const/16 v0, 0xc

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 161
    invoke-static {p1}, Lcom/android/internal/telecom/ICallEventCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 165
    nop

    .line 166
    const-string v0, "com.android.internal.telecom.ICallEventCallback"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 167
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 169
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 170
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 171
    return v1

    .line 173
    :cond_17
    packed-switch p1, :pswitch_data_126

    .line 315
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 308
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 309
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 310
    invoke-virtual {p0, p1}, Lcom/android/internal/telecom/ICallEventCallback$Stub;->removeCallFromTransactionalServiceWrapper(Ljava/lang/String;)V

    .line 311
    goto/16 :goto_124

    .line 296
    :pswitch_2b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 298
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p3

    .line 300
    sget-object p4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/os/Bundle;

    .line 301
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 302
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/internal/telecom/ICallEventCallback$Stub;->onEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 303
    goto/16 :goto_124

    .line 286
    :pswitch_43
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 288
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 289
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 290
    invoke-virtual {p0, p1, p3}, Lcom/android/internal/telecom/ICallEventCallback$Stub;->onVideoStateChanged(Ljava/lang/String;I)V

    .line 291
    goto/16 :goto_124

    .line 276
    :pswitch_53
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 278
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p3

    .line 279
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 280
    invoke-virtual {p0, p1, p3}, Lcom/android/internal/telecom/ICallEventCallback$Stub;->onMuteStateChanged(Ljava/lang/String;Z)V

    .line 281
    goto/16 :goto_124

    .line 266
    :pswitch_63
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 268
    sget-object p3, Landroid/telecom/CallEndpoint;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p3

    .line 269
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 270
    invoke-virtual {p0, p1, p3}, Lcom/android/internal/telecom/ICallEventCallback$Stub;->onAvailableCallEndpointsChanged(Ljava/lang/String;Ljava/util/List;)V

    .line 271
    goto/16 :goto_124

    .line 256
    :pswitch_75
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 258
    sget-object p3, Landroid/telecom/CallEndpoint;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/telecom/CallEndpoint;

    .line 259
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 260
    invoke-virtual {p0, p1, p3}, Lcom/android/internal/telecom/ICallEventCallback$Stub;->onCallEndpointChanged(Ljava/lang/String;Landroid/telecom/CallEndpoint;)V

    .line 261
    goto/16 :goto_124

    .line 246
    :pswitch_89
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 248
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 249
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 250
    invoke-virtual {p0, p1, p3}, Lcom/android/internal/telecom/ICallEventCallback$Stub;->onCallStreamingFailed(Ljava/lang/String;I)V

    .line 251
    goto/16 :goto_124

    .line 236
    :pswitch_99
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 238
    sget-object p3, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/os/ResultReceiver;

    .line 239
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 240
    invoke-virtual {p0, p1, p3}, Lcom/android/internal/telecom/ICallEventCallback$Stub;->onCallStreamingStarted(Ljava/lang/String;Landroid/os/ResultReceiver;)V

    .line 241
    goto/16 :goto_124

    .line 224
    :pswitch_ad
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 226
    sget-object p3, Landroid/telecom/DisconnectCause;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/telecom/DisconnectCause;

    .line 228
    sget-object p4, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/os/ResultReceiver;

    .line 229
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 230
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/internal/telecom/ICallEventCallback$Stub;->onDisconnect(Ljava/lang/String;Landroid/telecom/DisconnectCause;Landroid/os/ResultReceiver;)V

    .line 231
    goto :goto_124

    .line 212
    :pswitch_c8
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 214
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 216
    sget-object p4, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/os/ResultReceiver;

    .line 217
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 218
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/internal/telecom/ICallEventCallback$Stub;->onAnswer(Ljava/lang/String;ILandroid/os/ResultReceiver;)V

    .line 219
    goto :goto_124

    .line 202
    :pswitch_df
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 204
    sget-object p3, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/os/ResultReceiver;

    .line 205
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 206
    invoke-virtual {p0, p1, p3}, Lcom/android/internal/telecom/ICallEventCallback$Stub;->onSetInactive(Ljava/lang/String;Landroid/os/ResultReceiver;)V

    .line 207
    goto :goto_124

    .line 192
    :pswitch_f2
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 194
    sget-object p3, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/os/ResultReceiver;

    .line 195
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 196
    invoke-virtual {p0, p1, p3}, Lcom/android/internal/telecom/ICallEventCallback$Stub;->onSetActive(Ljava/lang/String;Landroid/os/ResultReceiver;)V

    .line 197
    goto :goto_124

    .line 178
    :pswitch_105
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 180
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 182
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    invoke-static {p4}, Lcom/android/internal/telecom/ICallControl$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telecom/ICallControl;

    move-result-object p4

    .line 184
    sget-object v0, Landroid/telecom/CallException;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/CallException;

    .line 185
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 186
    invoke-virtual {p0, p1, p3, p4, v0}, Lcom/android/internal/telecom/ICallEventCallback$Stub;->onAddCallControl(Ljava/lang/String;ILcom/android/internal/telecom/ICallControl;Landroid/telecom/CallException;)V

    .line 187
    nop

    .line 318
    :goto_124
    return v1

    nop

    :pswitch_data_126
    .packed-switch 0x1
        :pswitch_105
        :pswitch_f2
        :pswitch_df
        :pswitch_c8
        :pswitch_ad
        :pswitch_99
        :pswitch_89
        :pswitch_75
        :pswitch_63
        :pswitch_53
        :pswitch_43
        :pswitch_2b
        :pswitch_1f
    .end packed-switch
.end method
