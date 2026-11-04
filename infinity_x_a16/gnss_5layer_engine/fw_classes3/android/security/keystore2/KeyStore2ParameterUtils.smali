.class public final Landroid/security/keystore2/KeyStore2ParameterUtils;
.super Ljava/lang/Object;
.source "KeyStore2ParameterUtils.java"


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist addSids(Ljava/util/List;Landroid/security/keystore/UserAuthArgs;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/security/keymint/KeyParameter;",
            ">;",
            "Landroid/security/keystore/UserAuthArgs;",
            ")V"
        }
    .end annotation

    .line 245
    invoke-interface {p1}, Landroid/security/keystore/UserAuthArgs;->getUserAuthenticationType()I

    move-result v0

    const/4 v1, 0x3

    const-wide/16 v2, 0x0

    const v4, -0x5ffffe0a

    if-ne v0, v1, :cond_2f

    .line 247
    invoke-interface {p1}, Landroid/security/keystore/UserAuthArgs;->getBoundToSpecificSecureUserId()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_22

    .line 248
    nop

    .line 250
    invoke-interface {p1}, Landroid/security/keystore/UserAuthArgs;->getBoundToSpecificSecureUserId()J

    move-result-wide v0

    .line 248
    invoke-static {v4, v0, v1}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeLong(IJ)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_bc

    .line 255
    :cond_22
    invoke-static {}, Landroid/security/keystore2/KeyStore2ParameterUtils;->getRootSid()J

    move-result-wide v0

    invoke-static {v4, v0, v1}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeLong(IJ)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_bc

    .line 258
    :cond_2f
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 259
    invoke-interface {p1}, Landroid/security/keystore/UserAuthArgs;->getUserAuthenticationType()I

    move-result v1

    and-int/lit8 v1, v1, 0x2

    const/4 v5, 0x0

    if-eqz v1, :cond_8e

    .line 260
    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object v1

    const-class v6, Landroid/hardware/biometrics/BiometricManager;

    .line 261
    invoke-virtual {v1, v6}, Landroid/app/Application;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/biometrics/BiometricManager;

    .line 266
    invoke-virtual {v1}, Landroid/hardware/biometrics/BiometricManager;->getAuthenticatorIds()[J

    move-result-object v1

    .line 268
    array-length v6, v1

    if-eqz v6, :cond_86

    .line 274
    invoke-interface {p1}, Landroid/security/keystore/UserAuthArgs;->getBoundToSpecificSecureUserId()J

    move-result-wide v6

    cmp-long v2, v6, v2

    if-eqz v2, :cond_64

    .line 275
    invoke-interface {p1}, Landroid/security/keystore/UserAuthArgs;->getBoundToSpecificSecureUserId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_85

    .line 276
    :cond_64
    invoke-interface {p1}, Landroid/security/keystore/UserAuthArgs;->isInvalidatedByBiometricEnrollment()Z

    move-result p1

    if-eqz p1, :cond_7a

    .line 279
    array-length p1, v1

    move v2, v5

    :goto_6c
    if-ge v2, p1, :cond_85

    aget-wide v6, v1, v2

    .line 280
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 279
    add-int/lit8 v2, v2, 0x1

    goto :goto_6c

    .line 285
    :cond_7a
    invoke-static {}, Landroid/security/keystore2/KeyStore2ParameterUtils;->getRootSid()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 287
    :cond_85
    :goto_85
    goto :goto_a1

    .line 269
    :cond_86
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "At least one biometric must be enrolled to create keys requiring user authentication for every use"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 287
    :cond_8e
    invoke-interface {p1}, Landroid/security/keystore/UserAuthArgs;->getUserAuthenticationType()I

    move-result p1

    and-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_bd

    .line 289
    invoke-static {}, Landroid/security/keystore2/KeyStore2ParameterUtils;->getRootSid()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 294
    :goto_a1
    nop

    :goto_a2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-ge v5, p1, :cond_bc

    .line 295
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v4, v1, v2}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeLong(IJ)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 294
    add-int/lit8 v5, v5, 0x1

    goto :goto_a2

    .line 298
    :cond_bc
    :goto_bc
    return-void

    .line 291
    :cond_bd
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Invalid or no authentication type specified."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static blacklist addUserAuthArgs(Ljava/util/List;Landroid/security/keystore/UserAuthArgs;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/security/keymint/KeyParameter;",
            ">;",
            "Landroid/security/keystore/UserAuthArgs;",
            ")V"
        }
    .end annotation

    .line 314
    invoke-interface {p1}, Landroid/security/keystore/UserAuthArgs;->isUserConfirmationRequired()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 315
    const v0, 0x700001fc

    invoke-static {v0}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeBool(I)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 318
    :cond_10
    invoke-interface {p1}, Landroid/security/keystore/UserAuthArgs;->isUserPresenceRequired()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 319
    const v0, 0x700001fb

    invoke-static {v0}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeBool(I)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 322
    :cond_20
    invoke-interface {p1}, Landroid/security/keystore/UserAuthArgs;->isUnlockedDeviceRequired()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 323
    const v0, 0x700001fd

    invoke-static {v0}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeBool(I)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 326
    :cond_30
    invoke-interface {p1}, Landroid/security/keystore/UserAuthArgs;->isUserAuthenticationRequired()Z

    move-result v0

    if-nez v0, :cond_41

    .line 327
    const p1, 0x700001f7

    invoke-static {p1}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeBool(I)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_87

    .line 330
    :cond_41
    invoke-static {p0, p1}, Landroid/security/keystore2/KeyStore2ParameterUtils;->addSids(Ljava/util/List;Landroid/security/keystore/UserAuthArgs;)V

    .line 331
    nop

    .line 332
    invoke-interface {p1}, Landroid/security/keystore/UserAuthArgs;->getUserAuthenticationType()I

    move-result v0

    .line 331
    const v1, 0x100001f8

    invoke-static {v1, v0}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 334
    invoke-interface {p1}, Landroid/security/keystore/UserAuthArgs;->getUserAuthenticationValidityDurationSeconds()I

    move-result v0

    if-eqz v0, :cond_68

    .line 335
    nop

    .line 337
    invoke-interface {p1}, Landroid/security/keystore/UserAuthArgs;->getUserAuthenticationValidityDurationSeconds()I

    move-result v0

    .line 335
    const v1, 0x300001f9

    invoke-static {v1, v0}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeInt(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 340
    :cond_68
    invoke-interface {p1}, Landroid/security/keystore/UserAuthArgs;->isUserAuthenticationValidWhileOnBody()Z

    move-result v0

    if-eqz v0, :cond_87

    .line 341
    invoke-interface {p1}, Landroid/security/keystore/UserAuthArgs;->getUserAuthenticationValidityDurationSeconds()I

    move-result p1

    if-eqz p1, :cond_7f

    .line 346
    const p1, 0x700001fa

    invoke-static {p1}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeBool(I)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_87

    .line 342
    :cond_7f
    new-instance p0, Ljava/security/ProviderException;

    const-string p1, "Key validity extension while device is on-body is not supported for keys requiring fingerprint authentication"

    invoke-direct {p0, p1}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 351
    :cond_87
    :goto_87
    return-void
.end method

.method static blacklist forEachSetFlag(ILjava/util/function/Consumer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 224
    const/4 v0, 0x0

    .line 225
    :goto_1
    if-eqz p0, :cond_16

    .line 226
    and-int/lit8 v1, p0, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_11

    .line 227
    shl-int v1, v2, v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 229
    :cond_11
    add-int/lit8 v0, v0, 0x1

    .line 230
    ushr-int/lit8 p0, p0, 0x1

    goto :goto_1

    .line 232
    :cond_16
    return-void
.end method

.method static blacklist getDate(Landroid/system/keystore2/Authorization;)Ljava/util/Date;
    .registers 5

    .line 213
    iget-object v0, p0, Landroid/system/keystore2/Authorization;->keyParameter:Landroid/hardware/security/keymint/KeyParameter;

    iget v0, v0, Landroid/hardware/security/keymint/KeyParameter;->tag:I

    invoke-static {v0}, Landroid/security/keymaster/KeymasterDefs;->getTagType(I)I

    move-result v0

    const/high16 v1, 0x60000000

    if-ne v0, v1, :cond_49

    .line 216
    iget-object v0, p0, Landroid/system/keystore2/Authorization;->keyParameter:Landroid/hardware/security/keymint/KeyParameter;

    iget-object v0, v0, Landroid/hardware/security/keymint/KeyParameter;->value:Landroid/hardware/security/keymint/KeyParameterValue;

    invoke-virtual {v0}, Landroid/hardware/security/keymint/KeyParameterValue;->getDateTime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_28

    .line 220
    new-instance v0, Ljava/util/Date;

    iget-object p0, p0, Landroid/system/keystore2/Authorization;->keyParameter:Landroid/hardware/security/keymint/KeyParameter;

    iget-object p0, p0, Landroid/hardware/security/keymint/KeyParameter;->value:Landroid/hardware/security/keymint/KeyParameterValue;

    invoke-virtual {p0}, Landroid/hardware/security/keymint/KeyParameterValue;->getDateTime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0

    .line 217
    :cond_28
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Date Value too large: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object p0, p0, Landroid/system/keystore2/Authorization;->keyParameter:Landroid/hardware/security/keymint/KeyParameter;

    iget-object p0, p0, Landroid/hardware/security/keymint/KeyParameter;->value:Landroid/hardware/security/keymint/KeyParameterValue;

    .line 218
    invoke-virtual {p0}, Landroid/hardware/security/keymint/KeyParameterValue;->getDateTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 214
    :cond_49
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not a date tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object p0, p0, Landroid/system/keystore2/Authorization;->keyParameter:Landroid/hardware/security/keymint/KeyParameter;

    iget p0, p0, Landroid/hardware/security/keymint/KeyParameter;->tag:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist getRootSid()J
    .registers 4

    .line 235
    invoke-static {}, Landroid/security/GateKeeper;->getSecureUserId()J

    move-result-wide v0

    .line 236
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_b

    .line 240
    return-wide v0

    .line 237
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Secure lock screen must be enabled to create keys requiring user authentication"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static blacklist getUnsignedInt(Landroid/system/keystore2/Authorization;)J
    .registers 5

    .line 205
    iget-object v0, p0, Landroid/system/keystore2/Authorization;->keyParameter:Landroid/hardware/security/keymint/KeyParameter;

    iget v0, v0, Landroid/hardware/security/keymint/KeyParameter;->tag:I

    invoke-static {v0}, Landroid/security/keymaster/KeymasterDefs;->getTagType(I)I

    move-result v0

    const/high16 v1, 0x30000000

    if-ne v0, v1, :cond_1c

    .line 209
    iget-object p0, p0, Landroid/system/keystore2/Authorization;->keyParameter:Landroid/hardware/security/keymint/KeyParameter;

    iget-object p0, p0, Landroid/hardware/security/keymint/KeyParameter;->value:Landroid/hardware/security/keymint/KeyParameterValue;

    invoke-virtual {p0}, Landroid/hardware/security/keymint/KeyParameterValue;->getInteger()I

    move-result p0

    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0

    .line 206
    :cond_1c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not an int tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object p0, p0, Landroid/system/keystore2/Authorization;->keyParameter:Landroid/hardware/security/keymint/KeyParameter;

    iget p0, p0, Landroid/hardware/security/keymint/KeyParameter;->tag:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static blacklist isSecureHardware(I)Z
    .registers 3

    .line 200
    const/4 v0, 0x1

    if-eq p0, v0, :cond_8

    const/4 v1, 0x2

    if-ne p0, v1, :cond_7

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :cond_8
    :goto_8
    return v0
.end method

.method static blacklist makeBignum(ILjava/math/BigInteger;)Landroid/hardware/security/keymint/KeyParameter;
    .registers 4

    .line 168
    invoke-static {p0}, Landroid/security/keymaster/KeymasterDefs;->getTagType(I)I

    move-result v0

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_1a

    .line 171
    new-instance v0, Landroid/hardware/security/keymint/KeyParameter;

    invoke-direct {v0}, Landroid/hardware/security/keymint/KeyParameter;-><init>()V

    .line 172
    iput p0, v0, Landroid/hardware/security/keymint/KeyParameter;->tag:I

    .line 173
    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p0

    invoke-static {p0}, Landroid/hardware/security/keymint/KeyParameterValue;->blob([B)Landroid/hardware/security/keymint/KeyParameterValue;

    move-result-object p0

    iput-object p0, v0, Landroid/hardware/security/keymint/KeyParameter;->value:Landroid/hardware/security/keymint/KeyParameterValue;

    .line 174
    return-object v0

    .line 169
    :cond_1a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Not a bignum tag: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static blacklist makeBool(I)Landroid/hardware/security/keymint/KeyParameter;
    .registers 4

    .line 52
    invoke-static {p0}, Landroid/security/keymaster/KeymasterDefs;->getTagType(I)I

    move-result v0

    .line 53
    const/high16 v1, 0x70000000

    if-ne v0, v1, :cond_17

    .line 56
    new-instance v0, Landroid/hardware/security/keymint/KeyParameter;

    invoke-direct {v0}, Landroid/hardware/security/keymint/KeyParameter;-><init>()V

    .line 57
    iput p0, v0, Landroid/hardware/security/keymint/KeyParameter;->tag:I

    .line 58
    const/4 p0, 0x1

    invoke-static {p0}, Landroid/hardware/security/keymint/KeyParameterValue;->boolValue(Z)Landroid/hardware/security/keymint/KeyParameterValue;

    move-result-object p0

    iput-object p0, v0, Landroid/hardware/security/keymint/KeyParameter;->value:Landroid/hardware/security/keymint/KeyParameterValue;

    .line 59
    return-object v0

    .line 54
    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not a boolean tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static blacklist makeBytes(I[B)Landroid/hardware/security/keymint/KeyParameter;
    .registers 4

    .line 151
    invoke-static {p0}, Landroid/security/keymaster/KeymasterDefs;->getTagType(I)I

    move-result v0

    const/high16 v1, -0x70000000

    if-ne v0, v1, :cond_16

    .line 154
    new-instance v0, Landroid/hardware/security/keymint/KeyParameter;

    invoke-direct {v0}, Landroid/hardware/security/keymint/KeyParameter;-><init>()V

    .line 155
    iput p0, v0, Landroid/hardware/security/keymint/KeyParameter;->tag:I

    .line 156
    invoke-static {p1}, Landroid/hardware/security/keymint/KeyParameterValue;->blob([B)Landroid/hardware/security/keymint/KeyParameterValue;

    move-result-object p0

    iput-object p0, v0, Landroid/hardware/security/keymint/KeyParameter;->value:Landroid/hardware/security/keymint/KeyParameterValue;

    .line 157
    return-object v0

    .line 152
    :cond_16
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Not a bytes tag: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static blacklist makeDate(ILjava/util/Date;)Landroid/hardware/security/keymint/KeyParameter;
    .registers 4

    .line 185
    invoke-static {p0}, Landroid/security/keymaster/KeymasterDefs;->getTagType(I)I

    move-result v0

    const/high16 v1, 0x60000000

    if-ne v0, v1, :cond_1a

    .line 188
    new-instance v0, Landroid/hardware/security/keymint/KeyParameter;

    invoke-direct {v0}, Landroid/hardware/security/keymint/KeyParameter;-><init>()V

    .line 189
    iput p0, v0, Landroid/hardware/security/keymint/KeyParameter;->tag:I

    .line 190
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide p0

    invoke-static {p0, p1}, Landroid/hardware/security/keymint/KeyParameterValue;->dateTime(J)Landroid/hardware/security/keymint/KeyParameterValue;

    move-result-object p0

    iput-object p0, v0, Landroid/hardware/security/keymint/KeyParameter;->value:Landroid/hardware/security/keymint/KeyParameterValue;

    .line 191
    return-object v0

    .line 186
    :cond_1a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Not a date tag: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static blacklist makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;
    .registers 4

    .line 70
    new-instance v0, Landroid/hardware/security/keymint/KeyParameter;

    invoke-direct {v0}, Landroid/hardware/security/keymint/KeyParameter;-><init>()V

    .line 71
    iput p0, v0, Landroid/hardware/security/keymint/KeyParameter;->tag:I

    .line 72
    sparse-switch p0, :sswitch_data_64

    .line 102
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Not an enum or repeatable enum tag: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 93
    :sswitch_23
    invoke-static {p1}, Landroid/hardware/security/keymint/KeyParameterValue;->paddingMode(I)Landroid/hardware/security/keymint/KeyParameterValue;

    move-result-object p0

    iput-object p0, v0, Landroid/hardware/security/keymint/KeyParameter;->value:Landroid/hardware/security/keymint/KeyParameterValue;

    .line 94
    goto :goto_62

    .line 84
    :sswitch_2a
    invoke-static {p1}, Landroid/hardware/security/keymint/KeyParameterValue;->digest(I)Landroid/hardware/security/keymint/KeyParameterValue;

    move-result-object p0

    iput-object p0, v0, Landroid/hardware/security/keymint/KeyParameter;->value:Landroid/hardware/security/keymint/KeyParameterValue;

    .line 85
    goto :goto_62

    .line 80
    :sswitch_31
    invoke-static {p1}, Landroid/hardware/security/keymint/KeyParameterValue;->blockMode(I)Landroid/hardware/security/keymint/KeyParameterValue;

    move-result-object p0

    iput-object p0, v0, Landroid/hardware/security/keymint/KeyParameter;->value:Landroid/hardware/security/keymint/KeyParameterValue;

    .line 81
    goto :goto_62

    .line 74
    :sswitch_38
    invoke-static {p1}, Landroid/hardware/security/keymint/KeyParameterValue;->keyPurpose(I)Landroid/hardware/security/keymint/KeyParameterValue;

    move-result-object p0

    iput-object p0, v0, Landroid/hardware/security/keymint/KeyParameter;->value:Landroid/hardware/security/keymint/KeyParameterValue;

    .line 75
    goto :goto_62

    .line 90
    :sswitch_3f
    invoke-static {p1}, Landroid/hardware/security/keymint/KeyParameterValue;->origin(I)Landroid/hardware/security/keymint/KeyParameterValue;

    move-result-object p0

    iput-object p0, v0, Landroid/hardware/security/keymint/KeyParameter;->value:Landroid/hardware/security/keymint/KeyParameterValue;

    .line 91
    goto :goto_62

    .line 96
    :sswitch_46
    invoke-static {p1}, Landroid/hardware/security/keymint/KeyParameterValue;->hardwareAuthenticatorType(I)Landroid/hardware/security/keymint/KeyParameterValue;

    move-result-object p0

    iput-object p0, v0, Landroid/hardware/security/keymint/KeyParameter;->value:Landroid/hardware/security/keymint/KeyParameterValue;

    .line 97
    goto :goto_62

    .line 99
    :sswitch_4d
    invoke-static {p1}, Landroid/hardware/security/keymint/KeyParameterValue;->securityLevel(I)Landroid/hardware/security/keymint/KeyParameterValue;

    move-result-object p0

    iput-object p0, v0, Landroid/hardware/security/keymint/KeyParameter;->value:Landroid/hardware/security/keymint/KeyParameterValue;

    .line 100
    goto :goto_62

    .line 87
    :sswitch_54
    invoke-static {p1}, Landroid/hardware/security/keymint/KeyParameterValue;->ecCurve(I)Landroid/hardware/security/keymint/KeyParameterValue;

    move-result-object p0

    iput-object p0, v0, Landroid/hardware/security/keymint/KeyParameter;->value:Landroid/hardware/security/keymint/KeyParameterValue;

    .line 88
    goto :goto_62

    .line 77
    :sswitch_5b
    invoke-static {p1}, Landroid/hardware/security/keymint/KeyParameterValue;->algorithm(I)Landroid/hardware/security/keymint/KeyParameterValue;

    move-result-object p0

    iput-object p0, v0, Landroid/hardware/security/keymint/KeyParameter;->value:Landroid/hardware/security/keymint/KeyParameterValue;

    .line 78
    nop

    .line 104
    :goto_62
    return-object v0

    nop

    :sswitch_data_64
    .sparse-switch
        0x10000002 -> :sswitch_5b
        0x1000000a -> :sswitch_54
        0x10000130 -> :sswitch_4d
        0x100001f8 -> :sswitch_46
        0x100002be -> :sswitch_3f
        0x20000001 -> :sswitch_38
        0x20000004 -> :sswitch_31
        0x20000005 -> :sswitch_2a
        0x20000006 -> :sswitch_23
        0x200000cb -> :sswitch_2a
    .end sparse-switch
.end method

.method static blacklist makeInt(II)Landroid/hardware/security/keymint/KeyParameter;
    .registers 4

    .line 115
    invoke-static {p0}, Landroid/security/keymaster/KeymasterDefs;->getTagType(I)I

    move-result v0

    .line 116
    const/high16 v1, 0x30000000

    if-eq v0, v1, :cond_26

    const/high16 v1, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_d

    goto :goto_26

    .line 117
    :cond_d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Not an int or repeatable int tag: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 119
    :cond_26
    :goto_26
    new-instance v0, Landroid/hardware/security/keymint/KeyParameter;

    invoke-direct {v0}, Landroid/hardware/security/keymint/KeyParameter;-><init>()V

    .line 120
    iput p0, v0, Landroid/hardware/security/keymint/KeyParameter;->tag:I

    .line 121
    invoke-static {p1}, Landroid/hardware/security/keymint/KeyParameterValue;->integer(I)Landroid/hardware/security/keymint/KeyParameterValue;

    move-result-object p0

    iput-object p0, v0, Landroid/hardware/security/keymint/KeyParameter;->value:Landroid/hardware/security/keymint/KeyParameterValue;

    .line 122
    return-object v0
.end method

.method static blacklist makeLong(IJ)Landroid/hardware/security/keymint/KeyParameter;
    .registers 5

    .line 133
    invoke-static {p0}, Landroid/security/keymaster/KeymasterDefs;->getTagType(I)I

    move-result v0

    .line 134
    const/high16 v1, 0x50000000

    if-eq v0, v1, :cond_26

    const/high16 v1, -0x60000000

    if-ne v0, v1, :cond_d

    goto :goto_26

    .line 135
    :cond_d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Not a long or repeatable long tag: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 137
    :cond_26
    :goto_26
    new-instance v0, Landroid/hardware/security/keymint/KeyParameter;

    invoke-direct {v0}, Landroid/hardware/security/keymint/KeyParameter;-><init>()V

    .line 138
    iput p0, v0, Landroid/hardware/security/keymint/KeyParameter;->tag:I

    .line 139
    invoke-static {p1, p2}, Landroid/hardware/security/keymint/KeyParameterValue;->longInteger(J)Landroid/hardware/security/keymint/KeyParameterValue;

    move-result-object p0

    iput-object p0, v0, Landroid/hardware/security/keymint/KeyParameter;->value:Landroid/hardware/security/keymint/KeyParameterValue;

    .line 140
    return-object v0
.end method
