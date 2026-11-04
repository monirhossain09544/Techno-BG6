.class public abstract Lcom/android/internal/telecom/ICallControl$Stub;
.super Landroid/os/Binder;
.source "ICallControl.java"

# interfaces
.implements Lcom/android/internal/telecom/ICallControl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telecom/ICallControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telecom/ICallControl$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_answer:I = 0x2

.field static final blacklist TRANSACTION_disconnect:I = 0x4

.field static final blacklist TRANSACTION_requestCallEndpointChange:I = 0x6

.field static final blacklist TRANSACTION_requestVideoState:I = 0x9

.field static final blacklist TRANSACTION_sendEvent:I = 0x8

.field static final blacklist TRANSACTION_setActive:I = 0x1

.field static final blacklist TRANSACTION_setInactive:I = 0x3

.field static final blacklist TRANSACTION_setMuteState:I = 0x7

.field static final blacklist TRANSACTION_startCallStreaming:I = 0x5


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 54
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 55
    const-string v0, "com.android.internal.telecom.ICallControl"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telecom/ICallControl$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/android/internal/telecom/ICallControl;
    .registers 3

    .line 63
    if-nez p0, :cond_4

    .line 64
    const/4 p0, 0x0

    return-object p0

    .line 66
    :cond_4
    const-string v0, "com.android.internal.telecom.ICallControl"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 67
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/android/internal/telecom/ICallControl;

    if-eqz v1, :cond_13

    .line 68
    check-cast v0, Lcom/android/internal/telecom/ICallControl;

    return-object v0

    .line 70
    :cond_13
    new-instance v0, Lcom/android/internal/telecom/ICallControl$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/android/internal/telecom/ICallControl$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 79
    packed-switch p0, :pswitch_data_20

    .line 119
    const/4 p0, 0x0

    return-object p0

    .line 115
    :pswitch_5
    const-string p0, "requestVideoState"

    return-object p0

    .line 111
    :pswitch_8
    const-string p0, "sendEvent"

    return-object p0

    .line 107
    :pswitch_b
    const-string p0, "setMuteState"

    return-object p0

    .line 103
    :pswitch_e
    const-string p0, "requestCallEndpointChange"

    return-object p0

    .line 99
    :pswitch_11
    const-string p0, "startCallStreaming"

    return-object p0

    .line 95
    :pswitch_14
    const-string p0, "disconnect"

    return-object p0

    .line 91
    :pswitch_17
    const-string p0, "setInactive"

    return-object p0

    .line 87
    :pswitch_1a
    const-string p0, "answer"

    return-object p0

    .line 83
    :pswitch_1d
    const-string p0, "setActive"

    return-object p0

    :pswitch_data_20
    .packed-switch 0x1
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

    .line 74
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 394
    const/16 v0, 0x8

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 126
    invoke-static {p1}, Lcom/android/internal/telecom/ICallControl$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 130
    nop

    .line 131
    const-string v0, "com.android.internal.telecom.ICallControl"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 132
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 134
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 135
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 136
    return v1

    .line 138
    :cond_17
    packed-switch p1, :pswitch_data_e6

    .line 240
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 229
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 231
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p3

    .line 233
    sget-object p4, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/os/ResultReceiver;

    .line 234
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 235
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/internal/telecom/ICallControl$Stub;->requestVideoState(ILjava/lang/String;Landroid/os/ResultReceiver;)V

    .line 236
    goto/16 :goto_e5

    .line 217
    :pswitch_37
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 219
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p3

    .line 221
    sget-object p4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/os/Bundle;

    .line 222
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 223
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/internal/telecom/ICallControl$Stub;->sendEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 224
    goto/16 :goto_e5

    .line 207
    :pswitch_4f
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 209
    sget-object p3, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/os/ResultReceiver;

    .line 210
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 211
    invoke-virtual {p0, p1, p3}, Lcom/android/internal/telecom/ICallControl$Stub;->setMuteState(ZLandroid/os/ResultReceiver;)V

    .line 212
    goto/16 :goto_e5

    .line 197
    :pswitch_63
    sget-object p1, Landroid/telecom/CallEndpoint;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telecom/CallEndpoint;

    .line 199
    sget-object p3, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/os/ResultReceiver;

    .line 200
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 201
    invoke-virtual {p0, p1, p3}, Lcom/android/internal/telecom/ICallControl$Stub;->requestCallEndpointChange(Landroid/telecom/CallEndpoint;Landroid/os/ResultReceiver;)V

    .line 202
    goto :goto_e5

    .line 187
    :pswitch_7a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 189
    sget-object p3, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/os/ResultReceiver;

    .line 190
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 191
    invoke-virtual {p0, p1, p3}, Lcom/android/internal/telecom/ICallControl$Stub;->startCallStreaming(Ljava/lang/String;Landroid/os/ResultReceiver;)V

    .line 192
    goto :goto_e5

    .line 175
    :pswitch_8d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 177
    sget-object p3, Landroid/telecom/DisconnectCause;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/telecom/DisconnectCause;

    .line 179
    sget-object p4, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/os/ResultReceiver;

    .line 180
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 181
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/internal/telecom/ICallControl$Stub;->disconnect(Ljava/lang/String;Landroid/telecom/DisconnectCause;Landroid/os/ResultReceiver;)V

    .line 182
    goto :goto_e5

    .line 165
    :pswitch_a8
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 167
    sget-object p3, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/os/ResultReceiver;

    .line 168
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 169
    invoke-virtual {p0, p1, p3}, Lcom/android/internal/telecom/ICallControl$Stub;->setInactive(Ljava/lang/String;Landroid/os/ResultReceiver;)V

    .line 170
    goto :goto_e5

    .line 153
    :pswitch_bb
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 155
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p3

    .line 157
    sget-object p4, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/os/ResultReceiver;

    .line 158
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 159
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/internal/telecom/ICallControl$Stub;->answer(ILjava/lang/String;Landroid/os/ResultReceiver;)V

    .line 160
    goto :goto_e5

    .line 143
    :pswitch_d2
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 145
    sget-object p3, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/os/ResultReceiver;

    .line 146
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 147
    invoke-virtual {p0, p1, p3}, Lcom/android/internal/telecom/ICallControl$Stub;->setActive(Ljava/lang/String;Landroid/os/ResultReceiver;)V

    .line 148
    nop

    .line 243
    :goto_e5
    return v1

    :pswitch_data_e6
    .packed-switch 0x1
        :pswitch_d2
        :pswitch_bb
        :pswitch_a8
        :pswitch_8d
        :pswitch_7a
        :pswitch_63
        :pswitch_4f
        :pswitch_37
        :pswitch_1f
    .end packed-switch
.end method
