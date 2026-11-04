.class public abstract Landroid/security/authorization/IKeystoreAuthorization$Stub;
.super Landroid/os/Binder;
.source "IKeystoreAuthorization.java"

# interfaces
.implements Landroid/security/authorization/IKeystoreAuthorization;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/authorization/IKeystoreAuthorization;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/authorization/IKeystoreAuthorization$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_addAuthToken:I = 0x1

.field static final blacklist TRANSACTION_getAuthTokensForCredStore:I = 0x7

.field static final blacklist TRANSACTION_getLastAuthTime:I = 0x8

.field static final blacklist TRANSACTION_onDeviceLocked:I = 0x3

.field static final blacklist TRANSACTION_onDeviceUnlocked:I = 0x2

.field static final blacklist TRANSACTION_onNonLskfUnlockMethodsExpired:I = 0x6

.field static final blacklist TRANSACTION_onUserStorageLocked:I = 0x4

.field static final blacklist TRANSACTION_onWeakUnlockMethodsExpired:I = 0x5


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 203
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 204
    const-string v0, "android.security.authorization.IKeystoreAuthorization"

    invoke-virtual {p0, p0, v0}, Landroid/security/authorization/IKeystoreAuthorization$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 205
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/security/authorization/IKeystoreAuthorization;
    .registers 3

    .line 212
    if-nez p0, :cond_4

    .line 213
    const/4 p0, 0x0

    return-object p0

    .line 215
    :cond_4
    const-string v0, "android.security.authorization.IKeystoreAuthorization"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 216
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/security/authorization/IKeystoreAuthorization;

    if-eqz v1, :cond_13

    .line 217
    check-cast v0, Landroid/security/authorization/IKeystoreAuthorization;

    return-object v0

    .line 219
    :cond_13
    new-instance v0, Landroid/security/authorization/IKeystoreAuthorization$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/security/authorization/IKeystoreAuthorization$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 228
    packed-switch p0, :pswitch_data_22

    .line 264
    const/4 p0, 0x0

    return-object p0

    .line 260
    :pswitch_5
    const-string p0, "getLastAuthTime"

    return-object p0

    .line 256
    :pswitch_8
    const-string p0, "getAuthTokensForCredStore"

    return-object p0

    .line 252
    :pswitch_b
    const-string/jumbo p0, "onNonLskfUnlockMethodsExpired"

    return-object p0

    .line 248
    :pswitch_f
    const-string/jumbo p0, "onWeakUnlockMethodsExpired"

    return-object p0

    .line 244
    :pswitch_13
    const-string/jumbo p0, "onUserStorageLocked"

    return-object p0

    .line 240
    :pswitch_17
    const-string/jumbo p0, "onDeviceLocked"

    return-object p0

    .line 236
    :pswitch_1b
    const-string/jumbo p0, "onDeviceUnlocked"

    return-object p0

    .line 232
    :pswitch_1f
    const-string p0, "addAuthToken"

    return-object p0

    :pswitch_data_22
    .packed-switch 0x1
        :pswitch_1f
        :pswitch_1b
        :pswitch_17
        :pswitch_13
        :pswitch_f
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 223
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 691
    const/4 v0, 0x7

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 271
    invoke-static {p1}, Landroid/security/authorization/IKeystoreAuthorization$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 275
    nop

    .line 276
    const-string v0, "android.security.authorization.IKeystoreAuthorization"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 277
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 279
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 280
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 281
    return v1

    .line 283
    :cond_17
    packed-switch p1, :pswitch_data_be

    .line 373
    move-object v2, p0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 362
    :pswitch_20
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 364
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object p1

    .line 365
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 366
    invoke-virtual {p0, v2, v3, p1}, Landroid/security/authorization/IKeystoreAuthorization$Stub;->getLastAuthTime(J[I)J

    move-result-wide p1

    .line 367
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 368
    invoke-virtual {p3, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 369
    goto/16 :goto_bd

    .line 348
    :pswitch_37
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 350
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    .line 352
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    .line 353
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 354
    move-object v2, p0

    invoke-virtual/range {v2 .. v8}, Landroid/security/authorization/IKeystoreAuthorization$Stub;->getAuthTokensForCredStore(JJJ)Landroid/security/authorization/AuthorizationTokens;

    move-result-object p1

    .line 355
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 356
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 357
    goto/16 :goto_bd

    .line 339
    :pswitch_53
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 340
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 341
    invoke-virtual {p0, p1}, Landroid/security/authorization/IKeystoreAuthorization$Stub;->onNonLskfUnlockMethodsExpired(I)V

    .line 342
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 343
    goto :goto_bd

    .line 330
    :pswitch_62
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 331
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 332
    invoke-virtual {p0, p1}, Landroid/security/authorization/IKeystoreAuthorization$Stub;->onWeakUnlockMethodsExpired(I)V

    .line 333
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 334
    goto :goto_bd

    .line 321
    :pswitch_71
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 322
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 323
    invoke-virtual {p0, p1}, Landroid/security/authorization/IKeystoreAuthorization$Stub;->onUserStorageLocked(I)V

    .line 324
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 325
    goto :goto_bd

    .line 308
    :pswitch_80
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 310
    invoke-virtual {p2}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object p4

    .line 312
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 313
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 314
    invoke-virtual {p0, p1, p4, v0}, Landroid/security/authorization/IKeystoreAuthorization$Stub;->onDeviceLocked(I[JZ)V

    .line 315
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 316
    goto :goto_bd

    .line 297
    :pswitch_97
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 299
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p4

    .line 300
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 301
    invoke-virtual {p0, p1, p4}, Landroid/security/authorization/IKeystoreAuthorization$Stub;->onDeviceUnlocked(I[B)V

    .line 302
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 303
    goto :goto_bd

    .line 288
    :pswitch_aa
    move-object v2, p0

    sget-object p1, Landroid/hardware/security/keymint/HardwareAuthToken;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/security/keymint/HardwareAuthToken;

    .line 289
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 290
    invoke-virtual {p0, p1}, Landroid/security/authorization/IKeystoreAuthorization$Stub;->addAuthToken(Landroid/hardware/security/keymint/HardwareAuthToken;)V

    .line 291
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 292
    nop

    .line 376
    :goto_bd
    return v1

    :pswitch_data_be
    .packed-switch 0x1
        :pswitch_aa
        :pswitch_97
        :pswitch_80
        :pswitch_71
        :pswitch_62
        :pswitch_53
        :pswitch_37
        :pswitch_20
    .end packed-switch
.end method
