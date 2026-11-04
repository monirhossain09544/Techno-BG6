.class public abstract Landroid/os/IHintManager$Stub;
.super Landroid/os/Binder;
.source "IHintManager.java"

# interfaces
.implements Landroid/os/IHintManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IHintManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IHintManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_closeSessionChannel:I = 0x5

.field static final blacklist TRANSACTION_createHintSessionWithConfig:I = 0x1

.field static final blacklist TRANSACTION_getClientData:I = 0xc

.field static final blacklist TRANSACTION_getCpuHeadroom:I = 0x6

.field static final blacklist TRANSACTION_getCpuHeadroomMinIntervalMillis:I = 0x7

.field static final blacklist TRANSACTION_getGpuHeadroom:I = 0x8

.field static final blacklist TRANSACTION_getGpuHeadroomMinIntervalMillis:I = 0x9

.field static final blacklist TRANSACTION_getHintSessionThreadIds:I = 0x3

.field static final blacklist TRANSACTION_getSessionChannel:I = 0x4

.field static final blacklist TRANSACTION_passSessionManagerBinder:I = 0xa

.field static final blacklist TRANSACTION_registerClient:I = 0xb

.field static final blacklist TRANSACTION_setHintSessionThreads:I = 0x2


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 93
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 94
    const-string v0, "android.os.IHintManager"

    invoke-virtual {p0, p0, v0}, Landroid/os/IHintManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 95
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/os/IHintManager;
    .registers 3

    .line 102
    if-nez p0, :cond_4

    .line 103
    const/4 p0, 0x0

    return-object p0

    .line 105
    :cond_4
    const-string v0, "android.os.IHintManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 106
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/os/IHintManager;

    if-eqz v1, :cond_13

    .line 107
    check-cast v0, Landroid/os/IHintManager;

    return-object v0

    .line 109
    :cond_13
    new-instance v0, Landroid/os/IHintManager$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/os/IHintManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 118
    packed-switch p0, :pswitch_data_2c

    .line 170
    const/4 p0, 0x0

    return-object p0

    .line 166
    :pswitch_5
    const-string p0, "getClientData"

    return-object p0

    .line 162
    :pswitch_8
    const-string/jumbo p0, "registerClient"

    return-object p0

    .line 158
    :pswitch_c
    const-string/jumbo p0, "passSessionManagerBinder"

    return-object p0

    .line 154
    :pswitch_10
    const-string p0, "getGpuHeadroomMinIntervalMillis"

    return-object p0

    .line 150
    :pswitch_13
    const-string p0, "getGpuHeadroom"

    return-object p0

    .line 146
    :pswitch_16
    const-string p0, "getCpuHeadroomMinIntervalMillis"

    return-object p0

    .line 142
    :pswitch_19
    const-string p0, "getCpuHeadroom"

    return-object p0

    .line 138
    :pswitch_1c
    const-string p0, "closeSessionChannel"

    return-object p0

    .line 134
    :pswitch_1f
    const-string p0, "getSessionChannel"

    return-object p0

    .line 130
    :pswitch_22
    const-string p0, "getHintSessionThreadIds"

    return-object p0

    .line 126
    :pswitch_25
    const-string/jumbo p0, "setHintSessionThreads"

    return-object p0

    .line 122
    :pswitch_29
    const-string p0, "createHintSessionWithConfig"

    return-object p0

    :pswitch_data_2c
    .packed-switch 0x1
        :pswitch_29
        :pswitch_25
        :pswitch_22
        :pswitch_1f
        :pswitch_1c
        :pswitch_19
        :pswitch_16
        :pswitch_13
        :pswitch_10
        :pswitch_c
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 113
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 565
    const/16 v0, 0xb

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 177
    invoke-static {p1}, Landroid/os/IHintManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 181
    nop

    .line 182
    const-string v0, "android.os.IHintManager"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 183
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 185
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 186
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 187
    return v1

    .line 189
    :cond_17
    packed-switch p1, :pswitch_data_fc

    .line 305
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 298
    :pswitch_1f
    invoke-virtual {p0}, Landroid/os/IHintManager$Stub;->getClientData()Landroid/os/IHintManager$HintManagerClientData;

    move-result-object p1

    .line 299
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 300
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 301
    goto/16 :goto_fb

    .line 289
    :pswitch_2b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/os/IHintManager$IHintManagerClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IHintManager$IHintManagerClient;

    move-result-object p1

    .line 290
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 291
    invoke-virtual {p0, p1}, Landroid/os/IHintManager$Stub;->registerClient(Landroid/os/IHintManager$IHintManagerClient;)Landroid/os/IHintManager$HintManagerClientData;

    move-result-object p1

    .line 292
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 293
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 294
    goto/16 :goto_fb

    .line 281
    :pswitch_42
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 282
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 283
    invoke-virtual {p0, p1}, Landroid/os/IHintManager$Stub;->passSessionManagerBinder(Landroid/os/IBinder;)V

    .line 284
    goto/16 :goto_fb

    .line 273
    :pswitch_4e
    invoke-virtual {p0}, Landroid/os/IHintManager$Stub;->getGpuHeadroomMinIntervalMillis()J

    move-result-wide p1

    .line 274
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 275
    invoke-virtual {p3, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 276
    goto/16 :goto_fb

    .line 264
    :pswitch_5a
    sget-object p1, Landroid/os/GpuHeadroomParamsInternal;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/GpuHeadroomParamsInternal;

    .line 265
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 266
    invoke-virtual {p0, p1}, Landroid/os/IHintManager$Stub;->getGpuHeadroom(Landroid/os/GpuHeadroomParamsInternal;)Landroid/hardware/power/GpuHeadroomResult;

    move-result-object p1

    .line 267
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 268
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 269
    goto/16 :goto_fb

    .line 256
    :pswitch_71
    invoke-virtual {p0}, Landroid/os/IHintManager$Stub;->getCpuHeadroomMinIntervalMillis()J

    move-result-wide p1

    .line 257
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 258
    invoke-virtual {p3, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 259
    goto/16 :goto_fb

    .line 247
    :pswitch_7d
    sget-object p1, Landroid/os/CpuHeadroomParamsInternal;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/CpuHeadroomParamsInternal;

    .line 248
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 249
    invoke-virtual {p0, p1}, Landroid/os/IHintManager$Stub;->getCpuHeadroom(Landroid/os/CpuHeadroomParamsInternal;)Landroid/hardware/power/CpuHeadroomResult;

    move-result-object p1

    .line 250
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 251
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 252
    goto :goto_fb

    .line 241
    :pswitch_93
    invoke-virtual {p0}, Landroid/os/IHintManager$Stub;->closeSessionChannel()V

    .line 242
    goto :goto_fb

    .line 232
    :pswitch_97
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 233
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 234
    invoke-virtual {p0, p1}, Landroid/os/IHintManager$Stub;->getSessionChannel(Landroid/os/IBinder;)Landroid/hardware/power/ChannelConfig;

    move-result-object p1

    .line 235
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 236
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 237
    goto :goto_fb

    .line 222
    :pswitch_a9
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/os/IHintSession$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IHintSession;

    move-result-object p1

    .line 223
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 224
    invoke-virtual {p0, p1}, Landroid/os/IHintManager$Stub;->getHintSessionThreadIds(Landroid/os/IHintSession;)[I

    move-result-object p1

    .line 225
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 226
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 227
    goto :goto_fb

    .line 211
    :pswitch_bf
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/os/IHintSession$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IHintSession;

    move-result-object p1

    .line 213
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object p4

    .line 214
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 215
    invoke-virtual {p0, p1, p4}, Landroid/os/IHintManager$Stub;->setHintSessionThreads(Landroid/os/IHintSession;[I)V

    .line 216
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 217
    goto :goto_fb

    .line 194
    :pswitch_d5
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 196
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 198
    sget-object v0, Landroid/os/SessionCreationConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/SessionCreationConfig;

    .line 200
    new-instance v2, Landroid/hardware/power/SessionConfig;

    invoke-direct {v2}, Landroid/hardware/power/SessionConfig;-><init>()V

    .line 201
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 202
    invoke-virtual {p0, p1, p4, v0, v2}, Landroid/os/IHintManager$Stub;->createHintSessionWithConfig(Landroid/os/IBinder;ILandroid/os/SessionCreationConfig;Landroid/hardware/power/SessionConfig;)Landroid/os/IHintManager$SessionCreationReturn;

    move-result-object p1

    .line 203
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 204
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 205
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 206
    nop

    .line 308
    :goto_fb
    return v1

    :pswitch_data_fc
    .packed-switch 0x1
        :pswitch_d5
        :pswitch_bf
        :pswitch_a9
        :pswitch_97
        :pswitch_93
        :pswitch_7d
        :pswitch_71
        :pswitch_5a
        :pswitch_4e
        :pswitch_42
        :pswitch_2b
        :pswitch_1f
    .end packed-switch
.end method
