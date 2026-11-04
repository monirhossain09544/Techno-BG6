.class public final Landroid/security/keystore/KeyGenParameterSpec;
.super Ljava/lang/Object;
.source "KeyGenParameterSpec.java"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;
.implements Landroid/security/keystore/UserAuthArgs;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/keystore/KeyGenParameterSpec$Builder;
    }
.end annotation


# static fields
.field private static final blacklist DEFAULT_ATTESTATION_CERT_SUBJECT:Ljavax/security/auth/x500/X500Principal;

.field private static final greylist-max-o DEFAULT_CERT_NOT_AFTER:Ljava/util/Date;

.field private static final greylist-max-o DEFAULT_CERT_NOT_BEFORE:Ljava/util/Date;

.field private static final greylist-max-o DEFAULT_CERT_SERIAL_NUMBER:Ljava/math/BigInteger;

.field private static final blacklist DEFAULT_SELF_SIGNED_CERT_SUBJECT:Ljavax/security/auth/x500/X500Principal;


# instance fields
.field private final blacklist mAttestKeyAlias:Ljava/lang/String;

.field private final greylist-max-o mAttestationChallenge:[B

.field private final blacklist mAttestationIds:[I

.field private final greylist-max-o mBlockModes:[Ljava/lang/String;

.field private final blacklist mBoundToSecureUserId:J

.field private final greylist-max-o mCertificateNotAfter:Ljava/util/Date;

.field private final greylist-max-o mCertificateNotBefore:Ljava/util/Date;

.field private final greylist-max-o mCertificateSerialNumber:Ljava/math/BigInteger;

.field private final greylist-max-o mCertificateSubject:Ljavax/security/auth/x500/X500Principal;

.field private final blacklist mCriticalToDeviceEncryption:Z

.field private final blacklist mDevicePropertiesAttestationIncluded:Z

.field private final greylist-max-o mDigests:[Ljava/lang/String;

.field private final greylist-max-o mEncryptionPaddings:[Ljava/lang/String;

.field private final greylist-max-o mInvalidatedByBiometricEnrollment:Z

.field private final greylist-max-o mIsStrongBoxBacked:Z

.field private final greylist-max-o mKeySize:I

.field private final greylist-max-o mKeyValidityForConsumptionEnd:Ljava/util/Date;

.field private final greylist-max-o mKeyValidityForOriginationEnd:Ljava/util/Date;

.field private final greylist-max-o mKeyValidityStart:Ljava/util/Date;

.field private final greylist-max-o mKeystoreAlias:Ljava/lang/String;

.field private final blacklist mMaxUsageCount:I

.field private final blacklist mMgf1Digests:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mNamespace:I

.field private final greylist-max-o mPurposes:I

.field private final greylist-max-o mRandomizedEncryptionRequired:Z

.field private final greylist-max-o mSignaturePaddings:[Ljava/lang/String;

.field private final greylist-max-o mSpec:Ljava/security/spec/AlgorithmParameterSpec;

.field private final greylist-max-o mUniqueIdIncluded:Z

.field private final greylist-max-o mUnlockedDeviceRequired:Z

.field private final greylist-max-o mUserAuthenticationRequired:Z

.field private final blacklist mUserAuthenticationType:I

.field private final greylist-max-o mUserAuthenticationValidWhileOnBody:Z

.field private final greylist-max-o mUserAuthenticationValidityDurationSeconds:I

.field private final greylist-max-o mUserConfirmationRequired:Z

.field private final greylist-max-o mUserPresenceRequired:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 288
    new-instance v0, Ljavax/security/auth/x500/X500Principal;

    const-string v1, "CN=Android Keystore Key"

    invoke-direct {v0, v1}, Ljavax/security/auth/x500/X500Principal;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/security/keystore/KeyGenParameterSpec;->DEFAULT_ATTESTATION_CERT_SUBJECT:Ljavax/security/auth/x500/X500Principal;

    .line 290
    new-instance v0, Ljavax/security/auth/x500/X500Principal;

    const-string v1, "CN=Fake"

    invoke-direct {v0, v1}, Ljavax/security/auth/x500/X500Principal;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/security/keystore/KeyGenParameterSpec;->DEFAULT_SELF_SIGNED_CERT_SUBJECT:Ljavax/security/auth/x500/X500Principal;

    .line 292
    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "1"

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/security/keystore/KeyGenParameterSpec;->DEFAULT_CERT_SERIAL_NUMBER:Ljava/math/BigInteger;

    .line 293
    new-instance v0, Ljava/util/Date;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    sput-object v0, Landroid/security/keystore/KeyGenParameterSpec;->DEFAULT_CERT_NOT_BEFORE:Ljava/util/Date;

    .line 294
    new-instance v0, Ljava/util/Date;

    const-wide v1, 0x23d19d43c00L

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    sput-object v0, Landroid/security/keystore/KeyGenParameterSpec;->DEFAULT_CERT_NOT_AFTER:Ljava/util/Date;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;IILjava/security/spec/AlgorithmParameterSpec;Ljavax/security/auth/x500/X500Principal;Ljava/math/BigInteger;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;I[Ljava/lang/String;Ljava/util/Set;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ZZIIZ[BZ[IZZZZZZZILjava/lang/String;J)V
    .registers 38
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/security/spec/AlgorithmParameterSpec;",
            "Ljavax/security/auth/x500/X500Principal;",
            "Ljava/math/BigInteger;",
            "Ljava/util/Date;",
            "Ljava/util/Date;",
            "Ljava/util/Date;",
            "Ljava/util/Date;",
            "Ljava/util/Date;",
            "I[",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "ZZIIZ[BZ[IZZZZZZZI",
            "Ljava/lang/String;",
            "J)V"
        }
    .end annotation

    .line 376
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 377
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d2

    .line 381
    if-nez p5, :cond_12

    .line 382
    if-nez p23, :cond_10

    .line 383
    sget-object p5, Landroid/security/keystore/KeyGenParameterSpec;->DEFAULT_SELF_SIGNED_CERT_SUBJECT:Ljavax/security/auth/x500/X500Principal;

    goto :goto_12

    .line 385
    :cond_10
    sget-object p5, Landroid/security/keystore/KeyGenParameterSpec;->DEFAULT_ATTESTATION_CERT_SUBJECT:Ljavax/security/auth/x500/X500Principal;

    .line 388
    :cond_12
    :goto_12
    if-nez p7, :cond_16

    .line 389
    sget-object p7, Landroid/security/keystore/KeyGenParameterSpec;->DEFAULT_CERT_NOT_BEFORE:Ljava/util/Date;

    .line 391
    :cond_16
    if-nez p8, :cond_1a

    .line 392
    sget-object p8, Landroid/security/keystore/KeyGenParameterSpec;->DEFAULT_CERT_NOT_AFTER:Ljava/util/Date;

    .line 394
    :cond_1a
    if-nez p6, :cond_1e

    .line 395
    sget-object p6, Landroid/security/keystore/KeyGenParameterSpec;->DEFAULT_CERT_SERIAL_NUMBER:Ljava/math/BigInteger;

    .line 398
    :cond_1e
    invoke-virtual {p8, p7}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v0

    if-nez v0, :cond_ca

    .line 402
    iput-object p1, p0, Landroid/security/keystore/KeyGenParameterSpec;->mKeystoreAlias:Ljava/lang/String;

    .line 403
    iput p2, p0, Landroid/security/keystore/KeyGenParameterSpec;->mNamespace:I

    .line 404
    iput p3, p0, Landroid/security/keystore/KeyGenParameterSpec;->mKeySize:I

    .line 405
    iput-object p4, p0, Landroid/security/keystore/KeyGenParameterSpec;->mSpec:Ljava/security/spec/AlgorithmParameterSpec;

    .line 406
    iput-object p5, p0, Landroid/security/keystore/KeyGenParameterSpec;->mCertificateSubject:Ljavax/security/auth/x500/X500Principal;

    .line 407
    iput-object p6, p0, Landroid/security/keystore/KeyGenParameterSpec;->mCertificateSerialNumber:Ljava/math/BigInteger;

    .line 408
    invoke-static {p7}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Landroid/security/keystore/KeyGenParameterSpec;->mCertificateNotBefore:Ljava/util/Date;

    .line 409
    invoke-static {p8}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Landroid/security/keystore/KeyGenParameterSpec;->mCertificateNotAfter:Ljava/util/Date;

    .line 410
    invoke-static {p9}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Landroid/security/keystore/KeyGenParameterSpec;->mKeyValidityStart:Ljava/util/Date;

    .line 411
    invoke-static {p10}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Landroid/security/keystore/KeyGenParameterSpec;->mKeyValidityForOriginationEnd:Ljava/util/Date;

    .line 412
    invoke-static {p11}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Landroid/security/keystore/KeyGenParameterSpec;->mKeyValidityForConsumptionEnd:Ljava/util/Date;

    .line 413
    iput p12, p0, Landroid/security/keystore/KeyGenParameterSpec;->mPurposes:I

    .line 414
    invoke-static {p13}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/security/keystore/KeyGenParameterSpec;->mDigests:[Ljava/lang/String;

    .line 417
    if-eqz p14, :cond_5a

    move-object p1, p14

    goto :goto_5e

    :cond_5a
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p1

    :goto_5e
    iput-object p1, p0, Landroid/security/keystore/KeyGenParameterSpec;->mMgf1Digests:Ljava/util/Set;

    .line 418
    nop

    .line 419
    invoke-static/range {p15 .. p15}, Landroid/security/keystore/ArrayUtils;->nullToEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/security/keystore/KeyGenParameterSpec;->mEncryptionPaddings:[Ljava/lang/String;

    .line 420
    invoke-static/range {p16 .. p16}, Landroid/security/keystore/ArrayUtils;->nullToEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/security/keystore/KeyGenParameterSpec;->mSignaturePaddings:[Ljava/lang/String;

    .line 421
    invoke-static/range {p17 .. p17}, Landroid/security/keystore/ArrayUtils;->nullToEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/security/keystore/KeyGenParameterSpec;->mBlockModes:[Ljava/lang/String;

    .line 422
    move/from16 p1, p18

    iput-boolean p1, p0, Landroid/security/keystore/KeyGenParameterSpec;->mRandomizedEncryptionRequired:Z

    .line 423
    move/from16 p1, p19

    iput-boolean p1, p0, Landroid/security/keystore/KeyGenParameterSpec;->mUserAuthenticationRequired:Z

    .line 424
    move/from16 p1, p22

    iput-boolean p1, p0, Landroid/security/keystore/KeyGenParameterSpec;->mUserPresenceRequired:Z

    .line 425
    move/from16 p1, p20

    iput p1, p0, Landroid/security/keystore/KeyGenParameterSpec;->mUserAuthenticationValidityDurationSeconds:I

    .line 426
    move/from16 p1, p21

    iput p1, p0, Landroid/security/keystore/KeyGenParameterSpec;->mUserAuthenticationType:I

    .line 427
    invoke-static/range {p23 .. p23}, Landroid/security/keystore/Utils;->cloneIfNotNull([B)[B

    move-result-object p1

    iput-object p1, p0, Landroid/security/keystore/KeyGenParameterSpec;->mAttestationChallenge:[B

    .line 428
    move/from16 p1, p24

    iput-boolean p1, p0, Landroid/security/keystore/KeyGenParameterSpec;->mDevicePropertiesAttestationIncluded:Z

    .line 429
    move-object/from16 p1, p25

    iput-object p1, p0, Landroid/security/keystore/KeyGenParameterSpec;->mAttestationIds:[I

    .line 430
    move/from16 p1, p26

    iput-boolean p1, p0, Landroid/security/keystore/KeyGenParameterSpec;->mUniqueIdIncluded:Z

    .line 431
    move/from16 p1, p27

    iput-boolean p1, p0, Landroid/security/keystore/KeyGenParameterSpec;->mUserAuthenticationValidWhileOnBody:Z

    .line 432
    move/from16 p1, p28

    iput-boolean p1, p0, Landroid/security/keystore/KeyGenParameterSpec;->mInvalidatedByBiometricEnrollment:Z

    .line 433
    move/from16 p1, p29

    iput-boolean p1, p0, Landroid/security/keystore/KeyGenParameterSpec;->mIsStrongBoxBacked:Z

    .line 434
    move/from16 p1, p30

    iput-boolean p1, p0, Landroid/security/keystore/KeyGenParameterSpec;->mUserConfirmationRequired:Z

    .line 435
    move/from16 p1, p31

    iput-boolean p1, p0, Landroid/security/keystore/KeyGenParameterSpec;->mUnlockedDeviceRequired:Z

    .line 436
    move/from16 p1, p32

    iput-boolean p1, p0, Landroid/security/keystore/KeyGenParameterSpec;->mCriticalToDeviceEncryption:Z

    .line 437
    move/from16 p1, p33

    iput p1, p0, Landroid/security/keystore/KeyGenParameterSpec;->mMaxUsageCount:I

    .line 438
    move-object/from16 p1, p34

    iput-object p1, p0, Landroid/security/keystore/KeyGenParameterSpec;->mAttestKeyAlias:Ljava/lang/String;

    .line 439
    move-wide/from16 p1, p35

    iput-wide p1, p0, Landroid/security/keystore/KeyGenParameterSpec;->mBoundToSecureUserId:J

    .line 440
    return-void

    .line 399
    :cond_ca
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "certificateNotAfter < certificateNotBefore"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 378
    :cond_d2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "keyStoreAlias must not be empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public whitelist getAlgorithmParameterSpec()Ljava/security/spec/AlgorithmParameterSpec;
    .registers 2

    .line 502
    iget-object v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mSpec:Ljava/security/spec/AlgorithmParameterSpec;

    return-object v0
.end method

.method public whitelist getAttestKeyAlias()Ljava/lang/String;
    .registers 2

    .line 938
    iget-object v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mAttestKeyAlias:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getAttestationChallenge()[B
    .registers 2

    .line 799
    iget-object v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mAttestationChallenge:[B

    invoke-static {v0}, Landroid/security/keystore/Utils;->cloneIfNotNull([B)[B

    move-result-object v0

    return-object v0
.end method

.method public whitelist getAttestationIds()[I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 832
    iget-object v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mAttestationIds:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

.method public whitelist getBlockModes()[Ljava/lang/String;
    .registers 2

    .line 675
    iget-object v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mBlockModes:[Ljava/lang/String;

    invoke-static {v0}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getBoundToSpecificSecureUserId()J
    .registers 3

    .line 905
    iget-wide v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mBoundToSecureUserId:J

    return-wide v0
.end method

.method public whitelist getCertificateNotAfter()Ljava/util/Date;
    .registers 2

    .line 538
    iget-object v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mCertificateNotAfter:Ljava/util/Date;

    invoke-static {v0}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getCertificateNotBefore()Ljava/util/Date;
    .registers 2

    .line 529
    iget-object v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mCertificateNotBefore:Ljava/util/Date;

    invoke-static {v0}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getCertificateSerialNumber()Ljava/math/BigInteger;
    .registers 2

    .line 520
    iget-object v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mCertificateSerialNumber:Ljava/math/BigInteger;

    return-object v0
.end method

.method public whitelist getCertificateSubject()Ljavax/security/auth/x500/X500Principal;
    .registers 2

    .line 511
    iget-object v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mCertificateSubject:Ljavax/security/auth/x500/X500Principal;

    return-object v0
.end method

.method public whitelist getDigests()[Ljava/lang/String;
    .registers 3

    .line 590
    iget-object v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mDigests:[Ljava/lang/String;

    if-eqz v0, :cond_b

    .line 593
    iget-object v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mDigests:[Ljava/lang/String;

    invoke-static {v0}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 591
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Digests not specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getEncryptionPaddings()[Ljava/lang/String;
    .registers 2

    .line 651
    iget-object v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mEncryptionPaddings:[Ljava/lang/String;

    invoke-static {v0}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getKeySize()I
    .registers 2

    .line 493
    iget v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mKeySize:I

    return v0
.end method

.method public whitelist getKeyValidityForConsumptionEnd()Ljava/util/Date;
    .registers 2

    .line 556
    iget-object v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mKeyValidityForConsumptionEnd:Ljava/util/Date;

    invoke-static {v0}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getKeyValidityForOriginationEnd()Ljava/util/Date;
    .registers 2

    .line 565
    iget-object v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mKeyValidityForOriginationEnd:Ljava/util/Date;

    invoke-static {v0}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getKeyValidityStart()Ljava/util/Date;
    .registers 2

    .line 547
    iget-object v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mKeyValidityStart:Ljava/util/Date;

    invoke-static {v0}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getKeystoreAlias()Ljava/lang/String;
    .registers 2

    .line 448
    iget-object v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mKeystoreAlias:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getMaxUsageCount()I
    .registers 2

    .line 926
    iget v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mMaxUsageCount:I

    return v0
.end method

.method public whitelist getMgf1Digests()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 623
    iget-object v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mMgf1Digests:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    .line 626
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Landroid/security/keystore/KeyGenParameterSpec;->mMgf1Digests:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0

    .line 624
    :cond_10
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Mask generation function (MGF) not specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getNamespace()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 484
    iget v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mNamespace:I

    return v0
.end method

.method public whitelist getPurposes()I
    .registers 2

    .line 575
    iget v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mPurposes:I

    return v0
.end method

.method public whitelist getSignaturePaddings()[Ljava/lang/String;
    .registers 2

    .line 663
    iget-object v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mSignaturePaddings:[Ljava/lang/String;

    invoke-static {v0}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist getUid()I
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 465
    :try_start_0
    iget v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mNamespace:I

    invoke-static {v0}, Landroid/security/keystore/KeyProperties;->namespaceToLegacyUid(I)I

    move-result v0
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 466
    :catch_7
    move-exception v0

    .line 467
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "getUid called on KeyGenParameterSpec with non legacy keystore namespace."

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist getUserAuthenticationType()I
    .registers 2

    .line 757
    iget v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mUserAuthenticationType:I

    return v0
.end method

.method public whitelist getUserAuthenticationValidityDurationSeconds()I
    .registers 2

    .line 740
    iget v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mUserAuthenticationValidityDurationSeconds:I

    return v0
.end method

.method public blacklist isCriticalToDeviceEncryption()Z
    .registers 2

    .line 915
    iget-boolean v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mCriticalToDeviceEncryption:Z

    return v0
.end method

.method public whitelist isDevicePropertiesAttestationIncluded()Z
    .registers 2

    .line 814
    iget-boolean v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mDevicePropertiesAttestationIncluded:Z

    return v0
.end method

.method public whitelist isDigestsSpecified()Z
    .registers 2

    .line 604
    iget-object v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mDigests:[Ljava/lang/String;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public whitelist isInvalidatedByBiometricEnrollment()Z
    .registers 2

    .line 872
    iget-boolean v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mInvalidatedByBiometricEnrollment:Z

    return v0
.end method

.method public whitelist isMgf1DigestsSpecified()Z
    .registers 2

    .line 638
    iget-object v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mMgf1Digests:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public whitelist isRandomizedEncryptionRequired()Z
    .registers 2

    .line 688
    iget-boolean v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mRandomizedEncryptionRequired:Z

    return v0
.end method

.method public whitelist isStrongBoxBacked()Z
    .registers 2

    .line 879
    iget-boolean v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mIsStrongBoxBacked:Z

    return v0
.end method

.method public greylist isUniqueIdIncluded()Z
    .registers 2

    .line 842
    iget-boolean v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mUniqueIdIncluded:Z

    return v0
.end method

.method public whitelist isUnlockedDeviceRequired()Z
    .registers 2

    .line 888
    iget-boolean v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mUnlockedDeviceRequired:Z

    return v0
.end method

.method public whitelist isUserAuthenticationRequired()Z
    .registers 2

    .line 702
    iget-boolean v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mUserAuthenticationRequired:Z

    return v0
.end method

.method public whitelist isUserAuthenticationValidWhileOnBody()Z
    .registers 2

    .line 859
    iget-boolean v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mUserAuthenticationValidWhileOnBody:Z

    return v0
.end method

.method public whitelist isUserConfirmationRequired()Z
    .registers 2

    .line 722
    iget-boolean v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mUserConfirmationRequired:Z

    return v0
.end method

.method public whitelist isUserPresenceRequired()Z
    .registers 2

    .line 772
    iget-boolean v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mUserPresenceRequired:Z

    return v0
.end method
