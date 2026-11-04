.class public abstract Landroid/os/IUpdateEngine$Stub;
.super Landroid/os/Binder;
.source "IUpdateEngine.java"

# interfaces
.implements Landroid/os/IUpdateEngine;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IUpdateEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IUpdateEngine$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.os.IUpdateEngine"

.field static final blacklist TRANSACTION_allocateSpaceForPayload:I = 0xc

.field static final greylist-max-o TRANSACTION_applyPayload:I = 0x1

.field static final blacklist TRANSACTION_applyPayloadFd:I = 0x2

.field static final greylist-max-o TRANSACTION_bind:I = 0x3

.field static final greylist-max-o TRANSACTION_cancel:I = 0x7

.field static final blacklist TRANSACTION_cleanupSuccessfulUpdate:I = 0xd

.field static final blacklist TRANSACTION_resetShouldSwitchSlotOnReboot:I = 0xa

.field static final greylist-max-o TRANSACTION_resetStatus:I = 0x8

.field static final greylist-max-o TRANSACTION_resume:I = 0x6

.field static final blacklist TRANSACTION_setPerformanceMode:I = 0xf

.field static final blacklist TRANSACTION_setShouldSwitchSlotOnReboot:I = 0x9

.field static final greylist-max-o TRANSACTION_suspend:I = 0x5

.field static final blacklist TRANSACTION_triggerPostinstall:I = 0xe

.field static final greylist-max-o TRANSACTION_unbind:I = 0x4

.field static final greylist-max-o TRANSACTION_verifyPayloadApplicable:I = 0xb


# direct methods
.method public constructor greylist <init>()V
    .registers 2

    .line 130
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 131
    const-string v0, "android.os.IUpdateEngine"

    invoke-virtual {p0, p0, v0}, Landroid/os/IUpdateEngine$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 132
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/os/IUpdateEngine;
    .registers 3

    .line 139
    if-nez p0, :cond_4

    .line 140
    const/4 p0, 0x0

    return-object p0

    .line 142
    :cond_4
    const-string v0, "android.os.IUpdateEngine"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 143
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/os/IUpdateEngine;

    if-eqz v1, :cond_13

    .line 144
    check-cast v0, Landroid/os/IUpdateEngine;

    return-object v0

    .line 146
    :cond_13
    new-instance v0, Landroid/os/IUpdateEngine$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/os/IUpdateEngine$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 155
    packed-switch p0, :pswitch_data_3c

    .line 219
    const/4 p0, 0x0

    return-object p0

    .line 215
    :pswitch_5
    const-string/jumbo p0, "setPerformanceMode"

    return-object p0

    .line 211
    :pswitch_9
    const-string/jumbo p0, "triggerPostinstall"

    return-object p0

    .line 207
    :pswitch_d
    const-string p0, "cleanupSuccessfulUpdate"

    return-object p0

    .line 203
    :pswitch_10
    const-string p0, "allocateSpaceForPayload"

    return-object p0

    .line 199
    :pswitch_13
    const-string/jumbo p0, "verifyPayloadApplicable"

    return-object p0

    .line 195
    :pswitch_17
    const-string/jumbo p0, "resetShouldSwitchSlotOnReboot"

    return-object p0

    .line 191
    :pswitch_1b
    const-string/jumbo p0, "setShouldSwitchSlotOnReboot"

    return-object p0

    .line 187
    :pswitch_1f
    const-string/jumbo p0, "resetStatus"

    return-object p0

    .line 183
    :pswitch_23
    const-string p0, "cancel"

    return-object p0

    .line 179
    :pswitch_26
    const-string/jumbo p0, "resume"

    return-object p0

    .line 175
    :pswitch_2a
    const-string/jumbo p0, "suspend"

    return-object p0

    .line 171
    :pswitch_2e
    const-string/jumbo p0, "unbind"

    return-object p0

    .line 167
    :pswitch_32
    const-string p0, "bind"

    return-object p0

    .line 163
    :pswitch_35
    const-string p0, "applyPayloadFd"

    return-object p0

    .line 159
    :pswitch_38
    const-string p0, "applyPayload"

    return-object p0

    nop

    :pswitch_data_3c
    .packed-switch 0x1
        :pswitch_38
        :pswitch_35
        :pswitch_32
        :pswitch_2e
        :pswitch_2a
        :pswitch_26
        :pswitch_23
        :pswitch_1f
        :pswitch_1b
        :pswitch_17
        :pswitch_13
        :pswitch_10
        :pswitch_d
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 150
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 714
    const/16 v0, 0xe

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 226
    invoke-static {p1}, Landroid/os/IUpdateEngine$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 230
    nop

    .line 231
    const-string v3, "android.os.IUpdateEngine"

    const/4 v7, 0x1

    if-lt p1, v7, :cond_e

    const v4, 0xffffff

    if-gt p1, v4, :cond_e

    .line 232
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 234
    :cond_e
    const v4, 0x5f4e5446

    if-ne p1, v4, :cond_17

    .line 235
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 236
    return v7

    .line 238
    :cond_17
    packed-switch p1, :pswitch_data_116

    .line 380
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 372
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 373
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 374
    invoke-virtual {p0, v1}, Landroid/os/IUpdateEngine$Stub;->setPerformanceMode(Z)V

    .line 375
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 376
    goto/16 :goto_115

    .line 363
    :pswitch_2e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 364
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 365
    invoke-virtual {p0, v1}, Landroid/os/IUpdateEngine$Stub;->triggerPostinstall(Ljava/lang/String;)V

    .line 366
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 367
    goto/16 :goto_115

    .line 354
    :pswitch_3d
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IUpdateEngineCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IUpdateEngineCallback;

    move-result-object v1

    .line 355
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 356
    invoke-virtual {p0, v1}, Landroid/os/IUpdateEngine$Stub;->cleanupSuccessfulUpdate(Landroid/os/IUpdateEngineCallback;)V

    .line 357
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 358
    goto/16 :goto_115

    .line 342
    :pswitch_50
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 344
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3

    .line 345
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 346
    invoke-virtual {p0, v1, v3}, Landroid/os/IUpdateEngine$Stub;->allocateSpaceForPayload(Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v0

    .line 347
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 348
    invoke-virtual {p3, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 349
    goto/16 :goto_115

    .line 332
    :pswitch_67
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 333
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 334
    invoke-virtual {p0, v1}, Landroid/os/IUpdateEngine$Stub;->verifyPayloadApplicable(Ljava/lang/String;)Z

    move-result v0

    .line 335
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 336
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 337
    goto/16 :goto_115

    .line 325
    :pswitch_7a
    invoke-virtual {p0}, Landroid/os/IUpdateEngine$Stub;->resetShouldSwitchSlotOnReboot()V

    .line 326
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 327
    goto/16 :goto_115

    .line 317
    :pswitch_82
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 318
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 319
    invoke-virtual {p0, v1}, Landroid/os/IUpdateEngine$Stub;->setShouldSwitchSlotOnReboot(Ljava/lang/String;)V

    .line 320
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 321
    goto/16 :goto_115

    .line 310
    :pswitch_91
    invoke-virtual {p0}, Landroid/os/IUpdateEngine$Stub;->resetStatus()V

    .line 311
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 312
    goto/16 :goto_115

    .line 304
    :pswitch_99
    invoke-virtual {p0}, Landroid/os/IUpdateEngine$Stub;->cancel()V

    .line 305
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 306
    goto/16 :goto_115

    .line 298
    :pswitch_a1
    invoke-virtual {p0}, Landroid/os/IUpdateEngine$Stub;->resume()V

    .line 299
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 300
    goto :goto_115

    .line 292
    :pswitch_a8
    invoke-virtual {p0}, Landroid/os/IUpdateEngine$Stub;->suspend()V

    .line 293
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 294
    goto :goto_115

    .line 283
    :pswitch_af
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IUpdateEngineCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IUpdateEngineCallback;

    move-result-object v1

    .line 284
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 285
    invoke-virtual {p0, v1}, Landroid/os/IUpdateEngine$Stub;->unbind(Landroid/os/IUpdateEngineCallback;)Z

    move-result v0

    .line 286
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 287
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 288
    goto :goto_115

    .line 273
    :pswitch_c5
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IUpdateEngineCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IUpdateEngineCallback;

    move-result-object v1

    .line 274
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 275
    invoke-virtual {p0, v1}, Landroid/os/IUpdateEngine$Stub;->bind(Landroid/os/IUpdateEngineCallback;)Z

    move-result v0

    .line 276
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 277
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 278
    goto :goto_115

    .line 258
    :pswitch_db
    sget-object v1, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelFileDescriptor;

    .line 260
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 262
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 264
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v6

    .line 265
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 266
    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/os/IUpdateEngine$Stub;->applyPayloadFd(Landroid/os/ParcelFileDescriptor;JJ[Ljava/lang/String;)V

    .line 267
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 268
    goto :goto_115

    .line 243
    :pswitch_fa
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 245
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 247
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 249
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v6

    .line 250
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 251
    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/os/IUpdateEngine$Stub;->applyPayload(Ljava/lang/String;JJ[Ljava/lang/String;)V

    .line 252
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 253
    nop

    .line 383
    :goto_115
    return v7

    :pswitch_data_116
    .packed-switch 0x1
        :pswitch_fa
        :pswitch_db
        :pswitch_c5
        :pswitch_af
        :pswitch_a8
        :pswitch_a1
        :pswitch_99
        :pswitch_91
        :pswitch_82
        :pswitch_7a
        :pswitch_67
        :pswitch_50
        :pswitch_3d
        :pswitch_2e
        :pswitch_1f
    .end packed-switch
.end method
