.class public final Landroid/security/keystore/KeyProtection;
.super Ljava/lang/Object;
.source "KeyProtection.java"

# interfaces
.implements Ljava/security/KeyStore$ProtectionParameter;
.implements Landroid/security/keystore/UserAuthArgs;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/keystore/KeyProtection$Builder;
    }
.end annotation


# instance fields
.field private final greylist-max-o mBlockModes:[Ljava/lang/String;

.field private final greylist-max-o mBoundToSecureUserId:J

.field private final greylist-max-o mCriticalToDeviceEncryption:Z

.field private final greylist-max-o mDigests:[Ljava/lang/String;

.field private final greylist-max-o mEncryptionPaddings:[Ljava/lang/String;

.field private final greylist-max-o mInvalidatedByBiometricEnrollment:Z

.field private final greylist-max-o mIsStrongBoxBacked:Z

.field private final greylist-max-o mKeyValidityForConsumptionEnd:Ljava/util/Date;

.field private final greylist-max-o mKeyValidityForOriginationEnd:Ljava/util/Date;

.field private final greylist-max-o mKeyValidityStart:Ljava/util/Date;

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

.field private final greylist-max-o mPurposes:I

.field private final greylist-max-o mRandomizedEncryptionRequired:Z

.field private final blacklist mRollbackResistant:Z

.field private final greylist-max-o mSignaturePaddings:[Ljava/lang/String;

.field private final greylist-max-o mUnlockedDeviceRequired:Z

.field private final greylist-max-o mUserAuthenticationRequired:Z

.field private final blacklist mUserAuthenticationType:I

.field private final greylist-max-o mUserAuthenticationValidWhileOnBody:Z

.field private final greylist-max-o mUserAuthenticationValidityDurationSeconds:I

.field private final greylist-max-o mUserConfirmationRequired:Z

.field private final greylist-max-o mUserPresenceRequred:Z


# direct methods
.method private constructor blacklist <init>(Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;I[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/util/Set;[Ljava/lang/String;ZZIIZZZJZZZZIZ)V
    .registers 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Date;",
            "Ljava/util/Date;",
            "Ljava/util/Date;",
            "I[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            "ZZIIZZZJZZZZIZ)V"
        }
    .end annotation

    .line 270
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 271
    invoke-static {p1}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Landroid/security/keystore/KeyProtection;->mKeyValidityStart:Ljava/util/Date;

    .line 272
    invoke-static {p2}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Landroid/security/keystore/KeyProtection;->mKeyValidityForOriginationEnd:Ljava/util/Date;

    .line 273
    invoke-static {p3}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Landroid/security/keystore/KeyProtection;->mKeyValidityForConsumptionEnd:Ljava/util/Date;

    .line 274
    iput p4, p0, Landroid/security/keystore/KeyProtection;->mPurposes:I

    .line 275
    nop

    .line 276
    invoke-static {p5}, Landroid/security/keystore/ArrayUtils;->nullToEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/security/keystore/KeyProtection;->mEncryptionPaddings:[Ljava/lang/String;

    .line 277
    nop

    .line 278
    invoke-static {p6}, Landroid/security/keystore/ArrayUtils;->nullToEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/security/keystore/KeyProtection;->mSignaturePaddings:[Ljava/lang/String;

    .line 279
    invoke-static {p7}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/security/keystore/KeyProtection;->mDigests:[Ljava/lang/String;

    .line 280
    iput-object p8, p0, Landroid/security/keystore/KeyProtection;->mMgf1Digests:Ljava/util/Set;

    .line 281
    invoke-static {p9}, Landroid/security/keystore/ArrayUtils;->nullToEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/security/keystore/KeyProtection;->mBlockModes:[Ljava/lang/String;

    .line 282
    iput-boolean p10, p0, Landroid/security/keystore/KeyProtection;->mRandomizedEncryptionRequired:Z

    .line 283
    iput-boolean p11, p0, Landroid/security/keystore/KeyProtection;->mUserAuthenticationRequired:Z

    .line 284
    iput p12, p0, Landroid/security/keystore/KeyProtection;->mUserAuthenticationType:I

    .line 285
    iput p13, p0, Landroid/security/keystore/KeyProtection;->mUserAuthenticationValidityDurationSeconds:I

    .line 286
    iput-boolean p14, p0, Landroid/security/keystore/KeyProtection;->mUserPresenceRequred:Z

    .line 287
    iput-boolean p15, p0, Landroid/security/keystore/KeyProtection;->mUserAuthenticationValidWhileOnBody:Z

    .line 288
    move/from16 p1, p16

    iput-boolean p1, p0, Landroid/security/keystore/KeyProtection;->mInvalidatedByBiometricEnrollment:Z

    .line 289
    move-wide/from16 p1, p17

    iput-wide p1, p0, Landroid/security/keystore/KeyProtection;->mBoundToSecureUserId:J

    .line 290
    move/from16 p1, p19

    iput-boolean p1, p0, Landroid/security/keystore/KeyProtection;->mCriticalToDeviceEncryption:Z

    .line 291
    move/from16 p1, p20

    iput-boolean p1, p0, Landroid/security/keystore/KeyProtection;->mUserConfirmationRequired:Z

    .line 292
    move/from16 p1, p21

    iput-boolean p1, p0, Landroid/security/keystore/KeyProtection;->mUnlockedDeviceRequired:Z

    .line 293
    move/from16 p1, p22

    iput-boolean p1, p0, Landroid/security/keystore/KeyProtection;->mIsStrongBoxBacked:Z

    .line 294
    move/from16 p1, p23

    iput p1, p0, Landroid/security/keystore/KeyProtection;->mMaxUsageCount:I

    .line 295
    move/from16 p1, p24

    iput-boolean p1, p0, Landroid/security/keystore/KeyProtection;->mRollbackResistant:Z

    .line 296
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;I[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/util/Set;[Ljava/lang/String;ZZIIZZZJZZZZIZLandroid/security/keystore/KeyProtection-IA;)V
    .registers 26

    invoke-direct/range {p0 .. p24}, Landroid/security/keystore/KeyProtection;-><init>(Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;I[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/util/Set;[Ljava/lang/String;ZZIIZZZJZZZZIZ)V

    return-void
.end method


# virtual methods
.method public whitelist getBlockModes()[Ljava/lang/String;
    .registers 2

    .line 433
    iget-object v0, p0, Landroid/security/keystore/KeyProtection;->mBlockModes:[Ljava/lang/String;

    invoke-static {v0}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getBoundToSpecificSecureUserId()J
    .registers 3

    .line 566
    iget-wide v0, p0, Landroid/security/keystore/KeyProtection;->mBoundToSecureUserId:J

    return-wide v0
.end method

.method public whitelist getDigests()[Ljava/lang/String;
    .registers 3

    .line 374
    iget-object v0, p0, Landroid/security/keystore/KeyProtection;->mDigests:[Ljava/lang/String;

    if-eqz v0, :cond_b

    .line 377
    iget-object v0, p0, Landroid/security/keystore/KeyProtection;->mDigests:[Ljava/lang/String;

    invoke-static {v0}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 375
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Digests not specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getEncryptionPaddings()[Ljava/lang/String;
    .registers 2

    .line 347
    iget-object v0, p0, Landroid/security/keystore/KeyProtection;->mEncryptionPaddings:[Ljava/lang/String;

    invoke-static {v0}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getKeyValidityForConsumptionEnd()Ljava/util/Date;
    .registers 2

    .line 315
    iget-object v0, p0, Landroid/security/keystore/KeyProtection;->mKeyValidityForConsumptionEnd:Ljava/util/Date;

    invoke-static {v0}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getKeyValidityForOriginationEnd()Ljava/util/Date;
    .registers 2

    .line 325
    iget-object v0, p0, Landroid/security/keystore/KeyProtection;->mKeyValidityForOriginationEnd:Ljava/util/Date;

    invoke-static {v0}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getKeyValidityStart()Ljava/util/Date;
    .registers 2

    .line 305
    iget-object v0, p0, Landroid/security/keystore/KeyProtection;->mKeyValidityStart:Ljava/util/Date;

    invoke-static {v0}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getMaxUsageCount()I
    .registers 2

    .line 604
    iget v0, p0, Landroid/security/keystore/KeyProtection;->mMaxUsageCount:I

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

    .line 406
    iget-object v0, p0, Landroid/security/keystore/KeyProtection;->mMgf1Digests:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    .line 409
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Landroid/security/keystore/KeyProtection;->mMgf1Digests:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0

    .line 407
    :cond_10
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Mask generation function (MGF) not specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getPurposes()I
    .registers 2

    .line 335
    iget v0, p0, Landroid/security/keystore/KeyProtection;->mPurposes:I

    return v0
.end method

.method public whitelist getSignaturePaddings()[Ljava/lang/String;
    .registers 2

    .line 359
    iget-object v0, p0, Landroid/security/keystore/KeyProtection;->mSignaturePaddings:[Ljava/lang/String;

    invoke-static {v0}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getUserAuthenticationType()I
    .registers 2

    .line 484
    iget v0, p0, Landroid/security/keystore/KeyProtection;->mUserAuthenticationType:I

    return v0
.end method

.method public whitelist getUserAuthenticationValidityDurationSeconds()I
    .registers 2

    .line 502
    iget v0, p0, Landroid/security/keystore/KeyProtection;->mUserAuthenticationValidityDurationSeconds:I

    return v0
.end method

.method public greylist-max-o isCriticalToDeviceEncryption()Z
    .registers 2

    .line 576
    iget-boolean v0, p0, Landroid/security/keystore/KeyProtection;->mCriticalToDeviceEncryption:Z

    return v0
.end method

.method public whitelist isDigestsSpecified()Z
    .registers 2

    .line 387
    iget-object v0, p0, Landroid/security/keystore/KeyProtection;->mDigests:[Ljava/lang/String;

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

    .line 547
    iget-boolean v0, p0, Landroid/security/keystore/KeyProtection;->mInvalidatedByBiometricEnrollment:Z

    return v0
.end method

.method public whitelist isMgf1DigestsSpecified()Z
    .registers 2

    .line 421
    iget-object v0, p0, Landroid/security/keystore/KeyProtection;->mMgf1Digests:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public whitelist isRandomizedEncryptionRequired()Z
    .registers 2

    .line 446
    iget-boolean v0, p0, Landroid/security/keystore/KeyProtection;->mRandomizedEncryptionRequired:Z

    return v0
.end method

.method public blacklist isRollbackResistant()Z
    .registers 2

    .line 615
    iget-boolean v0, p0, Landroid/security/keystore/KeyProtection;->mRollbackResistant:Z

    return v0
.end method

.method public greylist-max-o isStrongBoxBacked()Z
    .registers 2

    .line 593
    iget-boolean v0, p0, Landroid/security/keystore/KeyProtection;->mIsStrongBoxBacked:Z

    return v0
.end method

.method public whitelist isUnlockedDeviceRequired()Z
    .registers 2

    .line 585
    iget-boolean v0, p0, Landroid/security/keystore/KeyProtection;->mUnlockedDeviceRequired:Z

    return v0
.end method

.method public whitelist isUserAuthenticationRequired()Z
    .registers 2

    .line 460
    iget-boolean v0, p0, Landroid/security/keystore/KeyProtection;->mUserAuthenticationRequired:Z

    return v0
.end method

.method public whitelist isUserAuthenticationValidWhileOnBody()Z
    .registers 2

    .line 534
    iget-boolean v0, p0, Landroid/security/keystore/KeyProtection;->mUserAuthenticationValidWhileOnBody:Z

    return v0
.end method

.method public whitelist isUserConfirmationRequired()Z
    .registers 2

    .line 480
    iget-boolean v0, p0, Landroid/security/keystore/KeyProtection;->mUserConfirmationRequired:Z

    return v0
.end method

.method public whitelist isUserPresenceRequired()Z
    .registers 2

    .line 518
    iget-boolean v0, p0, Landroid/security/keystore/KeyProtection;->mUserPresenceRequred:Z

    return v0
.end method
