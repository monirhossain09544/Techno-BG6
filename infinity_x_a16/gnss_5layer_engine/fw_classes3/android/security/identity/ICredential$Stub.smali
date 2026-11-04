.class public abstract Landroid/security/identity/ICredential$Stub;
.super Landroid/os/Binder;
.source "ICredential.java"

# interfaces
.implements Landroid/security/identity/ICredential;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/identity/ICredential;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/identity/ICredential$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_createEphemeralKeyPair:I = 0x1

.field static final blacklist TRANSACTION_deleteCredential:I = 0x3

.field static final blacklist TRANSACTION_deleteWithChallenge:I = 0x4

.field static final blacklist TRANSACTION_getAuthKeysNeedingCertification:I = 0xa

.field static final blacklist TRANSACTION_getAuthenticationDataExpirations:I = 0xe

.field static final blacklist TRANSACTION_getAuthenticationDataUsageCount:I = 0xd

.field static final blacklist TRANSACTION_getCredentialKeyCertificateChain:I = 0x6

.field static final blacklist TRANSACTION_getEntries:I = 0x8

.field static final blacklist TRANSACTION_proveOwnership:I = 0x5

.field static final blacklist TRANSACTION_selectAuthKey:I = 0x7

.field static final blacklist TRANSACTION_setAvailableAuthenticationKeys:I = 0x9

.field static final blacklist TRANSACTION_setReaderEphemeralPublicKey:I = 0x2

.field static final blacklist TRANSACTION_storeStaticAuthenticationData:I = 0xb

.field static final blacklist TRANSACTION_storeStaticAuthenticationDataWithExpiration:I = 0xc

.field static final blacklist TRANSACTION_update:I = 0xf


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 83
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 84
    const-string v0, "android.security.identity.ICredential"

    invoke-virtual {p0, p0, v0}, Landroid/security/identity/ICredential$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 85
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/security/identity/ICredential;
    .registers 3

    .line 92
    if-nez p0, :cond_4

    .line 93
    const/4 p0, 0x0

    return-object p0

    .line 95
    :cond_4
    const-string v0, "android.security.identity.ICredential"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 96
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/security/identity/ICredential;

    if-eqz v1, :cond_13

    .line 97
    check-cast v0, Landroid/security/identity/ICredential;

    return-object v0

    .line 99
    :cond_13
    new-instance v0, Landroid/security/identity/ICredential$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/security/identity/ICredential$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 108
    packed-switch p0, :pswitch_data_3a

    .line 172
    const/4 p0, 0x0

    return-object p0

    .line 168
    :pswitch_5
    const-string/jumbo p0, "update"

    return-object p0

    .line 164
    :pswitch_9
    const-string p0, "getAuthenticationDataExpirations"

    return-object p0

    .line 160
    :pswitch_c
    const-string p0, "getAuthenticationDataUsageCount"

    return-object p0

    .line 156
    :pswitch_f
    const-string/jumbo p0, "storeStaticAuthenticationDataWithExpiration"

    return-object p0

    .line 152
    :pswitch_13
    const-string/jumbo p0, "storeStaticAuthenticationData"

    return-object p0

    .line 148
    :pswitch_17
    const-string p0, "getAuthKeysNeedingCertification"

    return-object p0

    .line 144
    :pswitch_1a
    const-string/jumbo p0, "setAvailableAuthenticationKeys"

    return-object p0

    .line 140
    :pswitch_1e
    const-string p0, "getEntries"

    return-object p0

    .line 136
    :pswitch_21
    const-string/jumbo p0, "selectAuthKey"

    return-object p0

    .line 132
    :pswitch_25
    const-string p0, "getCredentialKeyCertificateChain"

    return-object p0

    .line 128
    :pswitch_28
    const-string/jumbo p0, "proveOwnership"

    return-object p0

    .line 124
    :pswitch_2c
    const-string p0, "deleteWithChallenge"

    return-object p0

    .line 120
    :pswitch_2f
    const-string p0, "deleteCredential"

    return-object p0

    .line 116
    :pswitch_32
    const-string/jumbo p0, "setReaderEphemeralPublicKey"

    return-object p0

    .line 112
    :pswitch_36
    const-string p0, "createEphemeralKeyPair"

    return-object p0

    nop

    :pswitch_data_3a
    .packed-switch 0x1
        :pswitch_36
        :pswitch_32
        :pswitch_2f
        :pswitch_2c
        :pswitch_28
        :pswitch_25
        :pswitch_21
        :pswitch_1e
        :pswitch_1a
        :pswitch_17
        :pswitch_13
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 103
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 649
    const/16 v0, 0xe

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 179
    invoke-static {p1}, Landroid/security/identity/ICredential$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 183
    nop

    .line 184
    const-string v3, "android.security.identity.ICredential"

    const/4 v8, 0x1

    if-lt p1, v8, :cond_e

    const v4, 0xffffff

    if-gt p1, v4, :cond_e

    .line 185
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 187
    :cond_e
    const v4, 0x5f4e5446

    if-ne p1, v4, :cond_17

    .line 188
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 189
    return v8

    .line 191
    :cond_17
    packed-switch p1, :pswitch_data_136

    .line 346
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 339
    :pswitch_1f
    invoke-virtual {p0}, Landroid/security/identity/ICredential$Stub;->update()Landroid/security/identity/IWritableCredential;

    move-result-object v0

    .line 340
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 341
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 342
    goto/16 :goto_135

    .line 332
    :pswitch_2b
    invoke-virtual {p0}, Landroid/security/identity/ICredential$Stub;->getAuthenticationDataExpirations()[J

    move-result-object v0

    .line 333
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 334
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 335
    goto/16 :goto_135

    .line 325
    :pswitch_37
    invoke-virtual {p0}, Landroid/security/identity/ICredential$Stub;->getAuthenticationDataUsageCount()[I

    move-result-object v0

    .line 326
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 327
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 328
    goto/16 :goto_135

    .line 313
    :pswitch_43
    sget-object v1, Landroid/security/identity/AuthKeyParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/security/identity/AuthKeyParcel;

    .line 315
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 317
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    .line 318
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 319
    invoke-virtual {p0, v1, v3, v4, v5}, Landroid/security/identity/ICredential$Stub;->storeStaticAuthenticationDataWithExpiration(Landroid/security/identity/AuthKeyParcel;J[B)V

    .line 320
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 321
    goto/16 :goto_135

    .line 302
    :pswitch_5e
    sget-object v1, Landroid/security/identity/AuthKeyParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/security/identity/AuthKeyParcel;

    .line 304
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 305
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 306
    invoke-virtual {p0, v1, v3}, Landroid/security/identity/ICredential$Stub;->storeStaticAuthenticationData(Landroid/security/identity/AuthKeyParcel;[B)V

    .line 307
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 308
    goto/16 :goto_135

    .line 294
    :pswitch_75
    invoke-virtual {p0}, Landroid/security/identity/ICredential$Stub;->getAuthKeysNeedingCertification()[Landroid/security/identity/AuthKeyParcel;

    move-result-object v0

    .line 295
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 296
    invoke-virtual {p3, v0, v8}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 297
    goto/16 :goto_135

    .line 282
    :pswitch_81
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 284
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 286
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 287
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 288
    invoke-virtual {p0, v1, v3, v4, v5}, Landroid/security/identity/ICredential$Stub;->setAvailableAuthenticationKeys(IIJ)V

    .line 289
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 290
    goto/16 :goto_135

    .line 260
    :pswitch_98
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 262
    sget-object v3, Landroid/security/identity/RequestNamespaceParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/security/identity/RequestNamespaceParcel;

    .line 264
    move-object v2, v3

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 266
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    .line 268
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    .line 270
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v6

    .line 272
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v7

    .line 273
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 274
    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Landroid/security/identity/ICredential$Stub;->getEntries([B[Landroid/security/identity/RequestNamespaceParcel;[B[BZZZ)Landroid/security/identity/GetEntriesResultParcel;

    move-result-object v0

    .line 275
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 276
    invoke-virtual {p3, v0, v8}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 277
    goto :goto_135

    .line 246
    :pswitch_c8
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 248
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 250
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 251
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 252
    invoke-virtual {p0, v1, v2, v3}, Landroid/security/identity/ICredential$Stub;->selectAuthKey(ZZZ)J

    move-result-wide v0

    .line 253
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 254
    invoke-virtual {p3, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 255
    goto :goto_135

    .line 238
    :pswitch_e2
    invoke-virtual {p0}, Landroid/security/identity/ICredential$Stub;->getCredentialKeyCertificateChain()[B

    move-result-object v0

    .line 239
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 240
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 241
    goto :goto_135

    .line 229
    :pswitch_ed
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 230
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 231
    invoke-virtual {p0, v1}, Landroid/security/identity/ICredential$Stub;->proveOwnership([B)[B

    move-result-object v0

    .line 232
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 233
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 234
    goto :goto_135

    .line 219
    :pswitch_ff
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 220
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 221
    invoke-virtual {p0, v1}, Landroid/security/identity/ICredential$Stub;->deleteWithChallenge([B)[B

    move-result-object v0

    .line 222
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 223
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 224
    goto :goto_135

    .line 211
    :pswitch_111
    invoke-virtual {p0}, Landroid/security/identity/ICredential$Stub;->deleteCredential()[B

    move-result-object v0

    .line 212
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 213
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 214
    goto :goto_135

    .line 203
    :pswitch_11c
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 204
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 205
    invoke-virtual {p0, v1}, Landroid/security/identity/ICredential$Stub;->setReaderEphemeralPublicKey([B)V

    .line 206
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 207
    goto :goto_135

    .line 195
    :pswitch_12a
    invoke-virtual {p0}, Landroid/security/identity/ICredential$Stub;->createEphemeralKeyPair()[B

    move-result-object v0

    .line 196
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 197
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 198
    nop

    .line 349
    :goto_135
    return v8

    :pswitch_data_136
    .packed-switch 0x1
        :pswitch_12a
        :pswitch_11c
        :pswitch_111
        :pswitch_ff
        :pswitch_ed
        :pswitch_e2
        :pswitch_c8
        :pswitch_98
        :pswitch_81
        :pswitch_75
        :pswitch_5e
        :pswitch_43
        :pswitch_37
        :pswitch_2b
        :pswitch_1f
    .end packed-switch
.end method
