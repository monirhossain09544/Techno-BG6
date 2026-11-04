.class public abstract Landroid/service/persistentdata/IPersistentDataBlockService$Stub;
.super Landroid/os/Binder;
.source "IPersistentDataBlockService.java"

# interfaces
.implements Landroid/service/persistentdata/IPersistentDataBlockService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/persistentdata/IPersistentDataBlockService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/persistentdata/IPersistentDataBlockService$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.service.persistentdata.IPersistentDataBlockService"

.field static final blacklist TRANSACTION_deactivateFactoryResetProtection:I = 0xc

.field static final greylist-max-o TRANSACTION_getDataBlockSize:I = 0x4

.field static final greylist-max-o TRANSACTION_getFlashLockState:I = 0x8

.field static final greylist-max-o TRANSACTION_getMaximumDataBlockSize:I = 0x5

.field static final greylist-max-o TRANSACTION_getOemUnlockEnabled:I = 0x7

.field static final blacklist TRANSACTION_getPersistentDataPackageName:I = 0xa

.field static final greylist-max-o TRANSACTION_hasFrpCredentialHandle:I = 0x9

.field static final blacklist TRANSACTION_isFactoryResetProtectionActive:I = 0xb

.field static final greylist-max-o TRANSACTION_read:I = 0x2

.field static final blacklist TRANSACTION_setFactoryResetProtectionSecret:I = 0xd

.field static final greylist-max-o TRANSACTION_setOemUnlockEnabled:I = 0x6

.field static final greylist-max-o TRANSACTION_wipe:I = 0x3

.field static final greylist-max-o TRANSACTION_write:I = 0x1


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 107
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 108
    const-string v0, "android.service.persistentdata.IPersistentDataBlockService"

    invoke-virtual {p0, p0, v0}, Landroid/service/persistentdata/IPersistentDataBlockService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 109
    return-void
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Landroid/service/persistentdata/IPersistentDataBlockService;
    .registers 3

    .line 116
    if-nez p0, :cond_4

    .line 117
    const/4 p0, 0x0

    return-object p0

    .line 119
    :cond_4
    const-string v0, "android.service.persistentdata.IPersistentDataBlockService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 120
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/service/persistentdata/IPersistentDataBlockService;

    if-eqz v1, :cond_13

    .line 121
    check-cast v0, Landroid/service/persistentdata/IPersistentDataBlockService;

    return-object v0

    .line 123
    :cond_13
    new-instance v0, Landroid/service/persistentdata/IPersistentDataBlockService$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/service/persistentdata/IPersistentDataBlockService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 132
    packed-switch p0, :pswitch_data_32

    .line 188
    const/4 p0, 0x0

    return-object p0

    .line 184
    :pswitch_5
    const-string/jumbo p0, "setFactoryResetProtectionSecret"

    return-object p0

    .line 180
    :pswitch_9
    const-string p0, "deactivateFactoryResetProtection"

    return-object p0

    .line 176
    :pswitch_c
    const-string p0, "isFactoryResetProtectionActive"

    return-object p0

    .line 172
    :pswitch_f
    const-string p0, "getPersistentDataPackageName"

    return-object p0

    .line 168
    :pswitch_12
    const-string p0, "hasFrpCredentialHandle"

    return-object p0

    .line 164
    :pswitch_15
    const-string p0, "getFlashLockState"

    return-object p0

    .line 160
    :pswitch_18
    const-string p0, "getOemUnlockEnabled"

    return-object p0

    .line 156
    :pswitch_1b
    const-string/jumbo p0, "setOemUnlockEnabled"

    return-object p0

    .line 152
    :pswitch_1f
    const-string p0, "getMaximumDataBlockSize"

    return-object p0

    .line 148
    :pswitch_22
    const-string p0, "getDataBlockSize"

    return-object p0

    .line 144
    :pswitch_25
    const-string/jumbo p0, "wipe"

    return-object p0

    .line 140
    :pswitch_29
    const-string/jumbo p0, "read"

    return-object p0

    .line 136
    :pswitch_2d
    const-string/jumbo p0, "write"

    return-object p0

    nop

    :pswitch_data_32
    .packed-switch 0x1
        :pswitch_2d
        :pswitch_29
        :pswitch_25
        :pswitch_22
        :pswitch_1f
        :pswitch_1b
        :pswitch_18
        :pswitch_15
        :pswitch_12
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 127
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 593
    const/16 v0, 0xc

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 195
    invoke-static {p1}, Landroid/service/persistentdata/IPersistentDataBlockService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 199
    nop

    .line 200
    const-string v0, "android.service.persistentdata.IPersistentDataBlockService"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 201
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 203
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 204
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 205
    return v1

    .line 207
    :cond_17
    packed-switch p1, :pswitch_data_c6

    .line 312
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 303
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    .line 304
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 305
    invoke-virtual {p0, p1}, Landroid/service/persistentdata/IPersistentDataBlockService$Stub;->setFactoryResetProtectionSecret([B)Z

    move-result p1

    .line 306
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 307
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 308
    goto/16 :goto_c5

    .line 293
    :pswitch_32
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    .line 294
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 295
    invoke-virtual {p0, p1}, Landroid/service/persistentdata/IPersistentDataBlockService$Stub;->deactivateFactoryResetProtection([B)Z

    move-result p1

    .line 296
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 297
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 298
    goto/16 :goto_c5

    .line 285
    :pswitch_45
    invoke-virtual {p0}, Landroid/service/persistentdata/IPersistentDataBlockService$Stub;->isFactoryResetProtectionActive()Z

    move-result p1

    .line 286
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 287
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 288
    goto/16 :goto_c5

    .line 278
    :pswitch_51
    invoke-virtual {p0}, Landroid/service/persistentdata/IPersistentDataBlockService$Stub;->getPersistentDataPackageName()Ljava/lang/String;

    move-result-object p1

    .line 279
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 280
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 281
    goto :goto_c5

    .line 271
    :pswitch_5c
    invoke-virtual {p0}, Landroid/service/persistentdata/IPersistentDataBlockService$Stub;->hasFrpCredentialHandle()Z

    move-result p1

    .line 272
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 273
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 274
    goto :goto_c5

    .line 264
    :pswitch_67
    invoke-virtual {p0}, Landroid/service/persistentdata/IPersistentDataBlockService$Stub;->getFlashLockState()I

    move-result p1

    .line 265
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 266
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 267
    goto :goto_c5

    .line 257
    :pswitch_72
    invoke-virtual {p0}, Landroid/service/persistentdata/IPersistentDataBlockService$Stub;->getOemUnlockEnabled()Z

    move-result p1

    .line 258
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 259
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 260
    goto :goto_c5

    .line 249
    :pswitch_7d
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 250
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 251
    invoke-virtual {p0, p1}, Landroid/service/persistentdata/IPersistentDataBlockService$Stub;->setOemUnlockEnabled(Z)V

    .line 252
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 253
    goto :goto_c5

    .line 241
    :pswitch_8b
    invoke-virtual {p0}, Landroid/service/persistentdata/IPersistentDataBlockService$Stub;->getMaximumDataBlockSize()J

    move-result-wide p1

    .line 242
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 243
    invoke-virtual {p3, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 244
    goto :goto_c5

    .line 234
    :pswitch_96
    invoke-virtual {p0}, Landroid/service/persistentdata/IPersistentDataBlockService$Stub;->getDataBlockSize()I

    move-result p1

    .line 235
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 236
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 237
    goto :goto_c5

    .line 228
    :pswitch_a1
    invoke-virtual {p0}, Landroid/service/persistentdata/IPersistentDataBlockService$Stub;->wipe()V

    .line 229
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 230
    goto :goto_c5

    .line 221
    :pswitch_a8
    invoke-virtual {p0}, Landroid/service/persistentdata/IPersistentDataBlockService$Stub;->read()[B

    move-result-object p1

    .line 222
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 223
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 224
    goto :goto_c5

    .line 212
    :pswitch_b3
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    .line 213
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 214
    invoke-virtual {p0, p1}, Landroid/service/persistentdata/IPersistentDataBlockService$Stub;->write([B)I

    move-result p1

    .line 215
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 216
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 217
    nop

    .line 315
    :goto_c5
    return v1

    :pswitch_data_c6
    .packed-switch 0x1
        :pswitch_b3
        :pswitch_a8
        :pswitch_a1
        :pswitch_96
        :pswitch_8b
        :pswitch_7d
        :pswitch_72
        :pswitch_67
        :pswitch_5c
        :pswitch_51
        :pswitch_45
        :pswitch_32
        :pswitch_1f
    .end packed-switch
.end method
