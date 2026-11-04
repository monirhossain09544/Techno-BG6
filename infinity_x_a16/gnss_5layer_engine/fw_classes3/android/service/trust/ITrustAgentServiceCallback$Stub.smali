.class public abstract Landroid/service/trust/ITrustAgentServiceCallback$Stub;
.super Landroid/os/Binder;
.source "ITrustAgentServiceCallback.java"

# interfaces
.implements Landroid/service/trust/ITrustAgentServiceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/trust/ITrustAgentServiceCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/trust/ITrustAgentServiceCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.service.trust.ITrustAgentServiceCallback"

.field static final greylist-max-o TRANSACTION_addEscrowToken:I = 0x6

.field static final greylist-max-o TRANSACTION_grantTrust:I = 0x1

.field static final greylist-max-o TRANSACTION_isEscrowTokenActive:I = 0x7

.field static final blacklist TRANSACTION_lockUser:I = 0x3

.field static final greylist-max-o TRANSACTION_onConfigureCompleted:I = 0x5

.field static final greylist-max-o TRANSACTION_removeEscrowToken:I = 0x8

.field static final greylist-max-o TRANSACTION_revokeTrust:I = 0x2

.field static final greylist-max-o TRANSACTION_setManagingTrust:I = 0x4

.field static final greylist-max-o TRANSACTION_showKeyguardErrorMessage:I = 0xa

.field static final greylist-max-o TRANSACTION_unlockUserWithToken:I = 0x9


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 60
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 61
    const-string v0, "android.service.trust.ITrustAgentServiceCallback"

    invoke-virtual {p0, p0, v0}, Landroid/service/trust/ITrustAgentServiceCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 62
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/service/trust/ITrustAgentServiceCallback;
    .registers 3

    .line 69
    if-nez p0, :cond_4

    .line 70
    const/4 p0, 0x0

    return-object p0

    .line 72
    :cond_4
    const-string v0, "android.service.trust.ITrustAgentServiceCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 73
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/service/trust/ITrustAgentServiceCallback;

    if-eqz v1, :cond_13

    .line 74
    check-cast v0, Landroid/service/trust/ITrustAgentServiceCallback;

    return-object v0

    .line 76
    :cond_13
    new-instance v0, Landroid/service/trust/ITrustAgentServiceCallback$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/service/trust/ITrustAgentServiceCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 85
    packed-switch p0, :pswitch_data_2a

    .line 129
    const/4 p0, 0x0

    return-object p0

    .line 125
    :pswitch_5
    const-string/jumbo p0, "showKeyguardErrorMessage"

    return-object p0

    .line 121
    :pswitch_9
    const-string/jumbo p0, "unlockUserWithToken"

    return-object p0

    .line 117
    :pswitch_d
    const-string/jumbo p0, "removeEscrowToken"

    return-object p0

    .line 113
    :pswitch_11
    const-string p0, "isEscrowTokenActive"

    return-object p0

    .line 109
    :pswitch_14
    const-string p0, "addEscrowToken"

    return-object p0

    .line 105
    :pswitch_17
    const-string/jumbo p0, "onConfigureCompleted"

    return-object p0

    .line 101
    :pswitch_1b
    const-string/jumbo p0, "setManagingTrust"

    return-object p0

    .line 97
    :pswitch_1f
    const-string p0, "lockUser"

    return-object p0

    .line 93
    :pswitch_22
    const-string/jumbo p0, "revokeTrust"

    return-object p0

    .line 89
    :pswitch_26
    const-string p0, "grantTrust"

    return-object p0

    nop

    :pswitch_data_2a
    .packed-switch 0x1
        :pswitch_26
        :pswitch_22
        :pswitch_1f
        :pswitch_1b
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_d
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 80
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 419
    const/16 v0, 0x9

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 136
    invoke-static {p1}, Landroid/service/trust/ITrustAgentServiceCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 140
    nop

    .line 141
    const-string v0, "android.service.trust.ITrustAgentServiceCallback"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 142
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 144
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 145
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 146
    return v1

    .line 148
    :cond_17
    packed-switch p1, :pswitch_data_b6

    .line 244
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 237
    :pswitch_1f
    sget-object p1, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    .line 238
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 239
    invoke-virtual {p0, p1}, Landroid/service/trust/ITrustAgentServiceCallback$Stub;->showKeyguardErrorMessage(Ljava/lang/CharSequence;)V

    .line 240
    goto/16 :goto_b4

    .line 225
    :pswitch_2f
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide p3

    .line 227
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    .line 229
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 230
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 231
    invoke-virtual {p0, p3, p4, p1, v0}, Landroid/service/trust/ITrustAgentServiceCallback$Stub;->unlockUserWithToken(J[BI)V

    .line 232
    goto/16 :goto_b4

    .line 215
    :pswitch_43
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide p3

    .line 217
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 218
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 219
    invoke-virtual {p0, p3, p4, p1}, Landroid/service/trust/ITrustAgentServiceCallback$Stub;->removeEscrowToken(JI)V

    .line 220
    goto :goto_b4

    .line 205
    :pswitch_52
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide p3

    .line 207
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 208
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 209
    invoke-virtual {p0, p3, p4, p1}, Landroid/service/trust/ITrustAgentServiceCallback$Stub;->isEscrowTokenActive(JI)V

    .line 210
    goto :goto_b4

    .line 195
    :pswitch_61
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    .line 197
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 198
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 199
    invoke-virtual {p0, p1, p3}, Landroid/service/trust/ITrustAgentServiceCallback$Stub;->addEscrowToken([BI)V

    .line 200
    goto :goto_b4

    .line 185
    :pswitch_70
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 187
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p3

    .line 188
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 189
    invoke-virtual {p0, p1, p3}, Landroid/service/trust/ITrustAgentServiceCallback$Stub;->onConfigureCompleted(ZLandroid/os/IBinder;)V

    .line 190
    goto :goto_b4

    .line 177
    :pswitch_7f
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 178
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 179
    invoke-virtual {p0, p1}, Landroid/service/trust/ITrustAgentServiceCallback$Stub;->setManagingTrust(Z)V

    .line 180
    goto :goto_b4

    .line 171
    :pswitch_8a
    invoke-virtual {p0}, Landroid/service/trust/ITrustAgentServiceCallback$Stub;->lockUser()V

    .line 172
    goto :goto_b4

    .line 166
    :pswitch_8e
    invoke-virtual {p0}, Landroid/service/trust/ITrustAgentServiceCallback$Stub;->revokeTrust()V

    .line 167
    goto :goto_b4

    .line 153
    :pswitch_92
    sget-object p1, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Ljava/lang/CharSequence;

    .line 155
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 157
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 159
    sget-object p1, Lcom/android/internal/infra/AndroidFuture;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    move-object v7, p1

    check-cast v7, Lcom/android/internal/infra/AndroidFuture;

    .line 160
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 161
    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Landroid/service/trust/ITrustAgentServiceCallback$Stub;->grantTrust(Ljava/lang/CharSequence;JILcom/android/internal/infra/AndroidFuture;)V

    .line 162
    nop

    .line 247
    :goto_b4
    return v1

    nop

    :pswitch_data_b6
    .packed-switch 0x1
        :pswitch_92
        :pswitch_8e
        :pswitch_8a
        :pswitch_7f
        :pswitch_70
        :pswitch_61
        :pswitch_52
        :pswitch_43
        :pswitch_2f
        :pswitch_1f
    .end packed-switch
.end method
