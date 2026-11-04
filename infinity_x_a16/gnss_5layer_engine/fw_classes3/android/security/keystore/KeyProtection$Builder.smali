.class public final Landroid/security/keystore/KeyProtection$Builder;
.super Ljava/lang/Object;
.source "KeyProtection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/keystore/KeyProtection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAttestKeyAlias:Ljava/lang/String;

.field private greylist-max-o mBlockModes:[Ljava/lang/String;

.field private greylist-max-o mBoundToSecureUserId:J

.field private greylist-max-o mCriticalToDeviceEncryption:Z

.field private greylist-max-o mDigests:[Ljava/lang/String;

.field private greylist-max-o mEncryptionPaddings:[Ljava/lang/String;

.field private greylist-max-o mInvalidatedByBiometricEnrollment:Z

.field private greylist-max-o mIsStrongBoxBacked:Z

.field private greylist-max-o mKeyValidityForConsumptionEnd:Ljava/util/Date;

.field private greylist-max-o mKeyValidityForOriginationEnd:Ljava/util/Date;

.field private greylist-max-o mKeyValidityStart:Ljava/util/Date;

.field private blacklist mMaxUsageCount:I

.field private blacklist mMgf1Digests:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mPurposes:I

.field private greylist-max-o mRandomizedEncryptionRequired:Z

.field private blacklist mRollbackResistant:Z

.field private greylist-max-o mSignaturePaddings:[Ljava/lang/String;

.field private greylist-max-o mUnlockedDeviceRequired:Z

.field private greylist-max-o mUserAuthenticationRequired:Z

.field private blacklist mUserAuthenticationType:I

.field private greylist-max-o mUserAuthenticationValidWhileOnBody:Z

.field private greylist-max-o mUserAuthenticationValidityDurationSeconds:I

.field private greylist-max-o mUserConfirmationRequired:Z

.field private greylist-max-o mUserPresenceRequired:Z


# direct methods
.method public constructor whitelist <init>(I)V
    .registers 6

    .line 659
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 630
    nop

    .line 631
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroid/security/keystore/KeyProtection$Builder;->mMgf1Digests:Ljava/util/Set;

    .line 633
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/security/keystore/KeyProtection$Builder;->mRandomizedEncryptionRequired:Z

    .line 635
    const/4 v1, 0x0

    iput v1, p0, Landroid/security/keystore/KeyProtection$Builder;->mUserAuthenticationValidityDurationSeconds:I

    .line 636
    const/4 v2, 0x2

    iput v2, p0, Landroid/security/keystore/KeyProtection$Builder;->mUserAuthenticationType:I

    .line 638
    iput-boolean v1, p0, Landroid/security/keystore/KeyProtection$Builder;->mUserPresenceRequired:Z

    .line 640
    iput-boolean v0, p0, Landroid/security/keystore/KeyProtection$Builder;->mInvalidatedByBiometricEnrollment:Z

    .line 642
    iput-boolean v1, p0, Landroid/security/keystore/KeyProtection$Builder;->mUnlockedDeviceRequired:Z

    .line 644
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Landroid/security/keystore/KeyProtection$Builder;->mBoundToSecureUserId:J

    .line 645
    iput-boolean v1, p0, Landroid/security/keystore/KeyProtection$Builder;->mCriticalToDeviceEncryption:Z

    .line 646
    iput-boolean v1, p0, Landroid/security/keystore/KeyProtection$Builder;->mIsStrongBoxBacked:Z

    .line 647
    const/4 v0, -0x1

    iput v0, p0, Landroid/security/keystore/KeyProtection$Builder;->mMaxUsageCount:I

    .line 648
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/security/keystore/KeyProtection$Builder;->mAttestKeyAlias:Ljava/lang/String;

    .line 649
    iput-boolean v1, p0, Landroid/security/keystore/KeyProtection$Builder;->mRollbackResistant:Z

    .line 660
    iput p1, p0, Landroid/security/keystore/KeyProtection$Builder;->mPurposes:I

    .line 661
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/security/keystore/KeyProtection;
    .registers 30

    .line 1240
    move-object/from16 v0, p0

    new-instance v1, Landroid/security/keystore/KeyProtection;

    move-object v2, v1

    iget-object v1, v0, Landroid/security/keystore/KeyProtection$Builder;->mKeyValidityStart:Ljava/util/Date;

    move-object v3, v2

    iget-object v2, v0, Landroid/security/keystore/KeyProtection$Builder;->mKeyValidityForOriginationEnd:Ljava/util/Date;

    move-object v4, v3

    iget-object v3, v0, Landroid/security/keystore/KeyProtection$Builder;->mKeyValidityForConsumptionEnd:Ljava/util/Date;

    move-object v5, v4

    iget v4, v0, Landroid/security/keystore/KeyProtection$Builder;->mPurposes:I

    move-object v6, v5

    iget-object v5, v0, Landroid/security/keystore/KeyProtection$Builder;->mEncryptionPaddings:[Ljava/lang/String;

    move-object v7, v6

    iget-object v6, v0, Landroid/security/keystore/KeyProtection$Builder;->mSignaturePaddings:[Ljava/lang/String;

    move-object v8, v7

    iget-object v7, v0, Landroid/security/keystore/KeyProtection$Builder;->mDigests:[Ljava/lang/String;

    move-object v9, v8

    iget-object v8, v0, Landroid/security/keystore/KeyProtection$Builder;->mMgf1Digests:Ljava/util/Set;

    move-object v10, v9

    iget-object v9, v0, Landroid/security/keystore/KeyProtection$Builder;->mBlockModes:[Ljava/lang/String;

    move-object v11, v10

    iget-boolean v10, v0, Landroid/security/keystore/KeyProtection$Builder;->mRandomizedEncryptionRequired:Z

    move-object v12, v11

    iget-boolean v11, v0, Landroid/security/keystore/KeyProtection$Builder;->mUserAuthenticationRequired:Z

    move-object v13, v12

    iget v12, v0, Landroid/security/keystore/KeyProtection$Builder;->mUserAuthenticationType:I

    move-object v14, v13

    iget v13, v0, Landroid/security/keystore/KeyProtection$Builder;->mUserAuthenticationValidityDurationSeconds:I

    move-object v15, v14

    iget-boolean v14, v0, Landroid/security/keystore/KeyProtection$Builder;->mUserPresenceRequired:Z

    move-object/from16 v16, v15

    iget-boolean v15, v0, Landroid/security/keystore/KeyProtection$Builder;->mUserAuthenticationValidWhileOnBody:Z

    move-object/from16 v17, v1

    iget-boolean v1, v0, Landroid/security/keystore/KeyProtection$Builder;->mInvalidatedByBiometricEnrollment:Z

    move/from16 v19, v1

    move-object/from16 v18, v2

    iget-wide v1, v0, Landroid/security/keystore/KeyProtection$Builder;->mBoundToSecureUserId:J

    move-wide/from16 v20, v1

    iget-boolean v1, v0, Landroid/security/keystore/KeyProtection$Builder;->mCriticalToDeviceEncryption:Z

    iget-boolean v2, v0, Landroid/security/keystore/KeyProtection$Builder;->mUserConfirmationRequired:Z

    move/from16 v22, v1

    iget-boolean v1, v0, Landroid/security/keystore/KeyProtection$Builder;->mUnlockedDeviceRequired:Z

    move/from16 v23, v1

    iget-boolean v1, v0, Landroid/security/keystore/KeyProtection$Builder;->mIsStrongBoxBacked:Z

    move/from16 v24, v1

    iget v1, v0, Landroid/security/keystore/KeyProtection$Builder;->mMaxUsageCount:I

    iget-boolean v0, v0, Landroid/security/keystore/KeyProtection$Builder;->mRollbackResistant:Z

    const/16 v25, 0x0

    move/from16 v26, v24

    move/from16 v24, v0

    move-object/from16 v0, v16

    move/from16 v16, v19

    move/from16 v19, v22

    move/from16 v22, v26

    move/from16 v26, v23

    move/from16 v23, v1

    move-object/from16 v1, v17

    move-wide/from16 v27, v20

    move/from16 v20, v2

    move-object/from16 v2, v18

    move-wide/from16 v17, v27

    move/from16 v21, v26

    invoke-direct/range {v0 .. v25}, Landroid/security/keystore/KeyProtection;-><init>(Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;I[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/util/Set;[Ljava/lang/String;ZZIIZZZJZZZZIZLandroid/security/keystore/KeyProtection-IA;)V

    return-object v0
.end method

.method public varargs whitelist setBlockModes([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;
    .registers 2

    .line 817
    invoke-static {p1}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/security/keystore/KeyProtection$Builder;->mBlockModes:[Ljava/lang/String;

    .line 818
    return-object p0
.end method

.method public blacklist setBoundToSpecificSecureUserId(J)Landroid/security/keystore/KeyProtection$Builder;
    .registers 3

    .line 1098
    iput-wide p1, p0, Landroid/security/keystore/KeyProtection$Builder;->mBoundToSecureUserId:J

    .line 1099
    return-object p0
.end method

.method public greylist-max-o setCriticalToDeviceEncryption(Z)Landroid/security/keystore/KeyProtection$Builder;
    .registers 2

    .line 1113
    iput-boolean p1, p0, Landroid/security/keystore/KeyProtection$Builder;->mCriticalToDeviceEncryption:Z

    .line 1114
    return-object p0
.end method

.method public varargs whitelist setDigests([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;
    .registers 2

    .line 778
    invoke-static {p1}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/security/keystore/KeyProtection$Builder;->mDigests:[Ljava/lang/String;

    .line 779
    return-object p0
.end method

.method public varargs whitelist setEncryptionPaddings([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;
    .registers 2

    .line 738
    invoke-static {p1}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/security/keystore/KeyProtection$Builder;->mEncryptionPaddings:[Ljava/lang/String;

    .line 739
    return-object p0
.end method

.method public whitelist setInvalidatedByBiometricEnrollment(Z)Landroid/security/keystore/KeyProtection$Builder;
    .registers 2

    .line 1077
    iput-boolean p1, p0, Landroid/security/keystore/KeyProtection$Builder;->mInvalidatedByBiometricEnrollment:Z

    .line 1078
    return-object p0
.end method

.method public whitelist setIsStrongBoxBacked(Z)Landroid/security/keystore/KeyProtection$Builder;
    .registers 2

    .line 1173
    iput-boolean p1, p0, Landroid/security/keystore/KeyProtection$Builder;->mIsStrongBoxBacked:Z

    .line 1174
    return-object p0
.end method

.method public whitelist setKeyValidityEnd(Ljava/util/Date;)Landroid/security/keystore/KeyProtection$Builder;
    .registers 2

    .line 687
    invoke-virtual {p0, p1}, Landroid/security/keystore/KeyProtection$Builder;->setKeyValidityForOriginationEnd(Ljava/util/Date;)Landroid/security/keystore/KeyProtection$Builder;

    .line 688
    invoke-virtual {p0, p1}, Landroid/security/keystore/KeyProtection$Builder;->setKeyValidityForConsumptionEnd(Ljava/util/Date;)Landroid/security/keystore/KeyProtection$Builder;

    .line 689
    return-object p0
.end method

.method public whitelist setKeyValidityForConsumptionEnd(Ljava/util/Date;)Landroid/security/keystore/KeyProtection$Builder;
    .registers 2

    .line 715
    invoke-static {p1}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Landroid/security/keystore/KeyProtection$Builder;->mKeyValidityForConsumptionEnd:Ljava/util/Date;

    .line 716
    return-object p0
.end method

.method public whitelist setKeyValidityForOriginationEnd(Ljava/util/Date;)Landroid/security/keystore/KeyProtection$Builder;
    .registers 2

    .line 701
    invoke-static {p1}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Landroid/security/keystore/KeyProtection$Builder;->mKeyValidityForOriginationEnd:Ljava/util/Date;

    .line 702
    return-object p0
.end method

.method public whitelist setKeyValidityStart(Ljava/util/Date;)Landroid/security/keystore/KeyProtection$Builder;
    .registers 2

    .line 672
    invoke-static {p1}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Landroid/security/keystore/KeyProtection$Builder;->mKeyValidityStart:Ljava/util/Date;

    .line 673
    return-object p0
.end method

.method public whitelist setMaxUsageCount(I)Landroid/security/keystore/KeyProtection$Builder;
    .registers 3

    .line 1211
    const/4 v0, -0x1

    if-eq p1, v0, :cond_e

    if-lez p1, :cond_6

    goto :goto_e

    .line 1215
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "maxUsageCount is not valid"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1212
    :cond_e
    :goto_e
    iput p1, p0, Landroid/security/keystore/KeyProtection$Builder;->mMaxUsageCount:I

    .line 1213
    return-object p0
.end method

.method public varargs whitelist setMgf1Digests([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;
    .registers 2

    .line 802
    invoke-static {p1}, Ljava/util/Set;->of([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Landroid/security/keystore/KeyProtection$Builder;->mMgf1Digests:Ljava/util/Set;

    .line 803
    return-object p0
.end method

.method public whitelist setRandomizedEncryptionRequired(Z)Landroid/security/keystore/KeyProtection$Builder;
    .registers 2

    .line 857
    iput-boolean p1, p0, Landroid/security/keystore/KeyProtection$Builder;->mRandomizedEncryptionRequired:Z

    .line 858
    return-object p0
.end method

.method public blacklist setRollbackResistant(Z)Landroid/security/keystore/KeyProtection$Builder;
    .registers 2

    .line 1229
    iput-boolean p1, p0, Landroid/security/keystore/KeyProtection$Builder;->mRollbackResistant:Z

    .line 1230
    return-object p0
.end method

.method public varargs whitelist setSignaturePaddings([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;
    .registers 2

    .line 754
    invoke-static {p1}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/security/keystore/KeyProtection$Builder;->mSignaturePaddings:[Ljava/lang/String;

    .line 755
    return-object p0
.end method

.method public whitelist setUnlockedDeviceRequired(Z)Landroid/security/keystore/KeyProtection$Builder;
    .registers 2

    .line 1164
    iput-boolean p1, p0, Landroid/security/keystore/KeyProtection$Builder;->mUnlockedDeviceRequired:Z

    .line 1165
    return-object p0
.end method

.method public whitelist setUserAuthenticationParameters(II)Landroid/security/keystore/KeyProtection$Builder;
    .registers 3

    .line 1008
    if-ltz p1, :cond_7

    .line 1011
    iput p1, p0, Landroid/security/keystore/KeyProtection$Builder;->mUserAuthenticationValidityDurationSeconds:I

    .line 1012
    iput p2, p0, Landroid/security/keystore/KeyProtection$Builder;->mUserAuthenticationType:I

    .line 1013
    return-object p0

    .line 1009
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "timeout must be 0 or larger"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist setUserAuthenticationRequired(Z)Landroid/security/keystore/KeyProtection$Builder;
    .registers 2

    .line 898
    iput-boolean p1, p0, Landroid/security/keystore/KeyProtection$Builder;->mUserAuthenticationRequired:Z

    .line 899
    return-object p0
.end method

.method public whitelist setUserAuthenticationValidWhileOnBody(Z)Landroid/security/keystore/KeyProtection$Builder;
    .registers 2

    .line 1053
    iput-boolean p1, p0, Landroid/security/keystore/KeyProtection$Builder;->mUserAuthenticationValidWhileOnBody:Z

    .line 1054
    return-object p0
.end method

.method public whitelist setUserAuthenticationValidityDurationSeconds(I)Landroid/security/keystore/KeyProtection$Builder;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 965
    const/4 v0, -0x1

    if-lt p1, v0, :cond_12

    .line 968
    if-ne p1, v0, :cond_c

    .line 969
    const/4 p1, 0x0

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Landroid/security/keystore/KeyProtection$Builder;->setUserAuthenticationParameters(II)Landroid/security/keystore/KeyProtection$Builder;

    move-result-object p1

    return-object p1

    .line 971
    :cond_c
    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Landroid/security/keystore/KeyProtection$Builder;->setUserAuthenticationParameters(II)Landroid/security/keystore/KeyProtection$Builder;

    move-result-object p1

    return-object p1

    .line 966
    :cond_12
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "seconds must be -1 or larger"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist setUserConfirmationRequired(Z)Landroid/security/keystore/KeyProtection$Builder;
    .registers 2

    .line 921
    iput-boolean p1, p0, Landroid/security/keystore/KeyProtection$Builder;->mUserConfirmationRequired:Z

    .line 922
    return-object p0
.end method

.method public whitelist setUserPresenceRequired(Z)Landroid/security/keystore/KeyProtection$Builder;
    .registers 2

    .line 1030
    iput-boolean p1, p0, Landroid/security/keystore/KeyProtection$Builder;->mUserPresenceRequired:Z

    .line 1031
    return-object p0
.end method
