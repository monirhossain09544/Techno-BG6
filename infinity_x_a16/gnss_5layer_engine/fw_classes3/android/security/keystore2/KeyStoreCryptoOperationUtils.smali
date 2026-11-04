.class abstract Landroid/security/keystore2/KeyStoreCryptoOperationUtils;
.super Ljava/lang/Object;
.source "KeyStoreCryptoOperationUtils.java"


# static fields
.field private static volatile blacklist sRng:Ljava/security/SecureRandom;


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist abortOperation(Landroid/security/KeyStoreOperation;)V
    .registers 3

    .line 177
    if-eqz p0, :cond_16

    .line 179
    :try_start_2
    invoke-virtual {p0}, Landroid/security/KeyStoreOperation;->abort()V
    :try_end_5
    .catch Landroid/security/KeyStoreException; {:try_start_2 .. :try_end_5} :catch_6

    .line 194
    goto :goto_16

    .line 180
    :catch_6
    move-exception p0

    .line 183
    invoke-virtual {p0}, Landroid/security/KeyStoreException;->getErrorCode()I

    move-result v0

    const/16 v1, -0x1c

    if-eq v0, v1, :cond_16

    .line 188
    const-string v0, "KeyStoreCryptoOperationUtils"

    const-string v1, "Encountered error trying to abort a keystore operation."

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 196
    :cond_16
    :goto_16
    return-void
.end method

.method public static blacklist canUserAuthorizationSucceed(Landroid/security/keystore2/AndroidKeyStoreKey;)Z
    .registers 9

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 57
    invoke-virtual {p0}, Landroid/security/keystore2/AndroidKeyStoreKey;->getAuthorizations()[Landroid/system/keystore2/Authorization;

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_c
    if-ge v3, v1, :cond_2b

    aget-object v4, p0, v3

    .line 58
    iget-object v5, v4, Landroid/system/keystore2/Authorization;->keyParameter:Landroid/hardware/security/keymint/KeyParameter;

    iget v5, v5, Landroid/hardware/security/keymint/KeyParameter;->tag:I

    packed-switch v5, :pswitch_data_78

    goto :goto_28

    .line 60
    :pswitch_18
    iget-object v4, v4, Landroid/system/keystore2/Authorization;->keyParameter:Landroid/hardware/security/keymint/KeyParameter;

    iget-object v4, v4, Landroid/hardware/security/keymint/KeyParameter;->value:Landroid/hardware/security/keymint/KeyParameterValue;

    invoke-virtual {v4}, Landroid/hardware/security/keymint/KeyParameterValue;->getLongInteger()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    nop

    .line 57
    :goto_28
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 66
    :cond_2b
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_32

    .line 68
    return v2

    .line 70
    :cond_32
    invoke-static {}, Landroid/security/GateKeeper;->getSecureUserId()J

    move-result-wide v3

    .line 71
    const-wide/16 v5, 0x0

    cmp-long p0, v3, v5

    const/4 v1, 0x1

    if-eqz p0, :cond_48

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_48

    .line 74
    return v1

    .line 78
    :cond_48
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object p0

    const-class v3, Landroid/hardware/biometrics/BiometricManager;

    .line 79
    invoke-virtual {p0, v3}, Landroid/app/Application;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/biometrics/BiometricManager;

    .line 80
    invoke-virtual {p0}, Landroid/hardware/biometrics/BiometricManager;->getAuthenticatorIds()[J

    move-result-object p0

    .line 89
    array-length v3, p0

    if-lez v3, :cond_5d

    move v3, v1

    goto :goto_5e

    :cond_5d
    move v3, v2

    .line 90
    :goto_5e
    array-length v4, p0

    move v5, v2

    :goto_60
    if-ge v5, v4, :cond_74

    aget-wide v6, p0, v5

    .line 91
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_71

    .line 92
    nop

    .line 93
    move v3, v2

    goto :goto_74

    .line 90
    :cond_71
    add-int/lit8 v5, v5, 0x1

    goto :goto_60

    .line 97
    :cond_74
    :goto_74
    if-eqz v3, :cond_77

    .line 99
    return v1

    .line 103
    :cond_77
    return v2

    :pswitch_data_78
    .packed-switch -0x5ffffe0a
        :pswitch_18
    .end packed-switch
.end method

.method public static blacklist getExceptionForCipherInit(Landroid/security/keystore2/AndroidKeyStoreKey;Landroid/security/KeyStoreException;)Ljava/security/GeneralSecurityException;
    .registers 3

    .line 138
    invoke-virtual {p1}, Landroid/security/KeyStoreException;->getErrorCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_1c

    .line 146
    invoke-static {p0, p1}, Landroid/security/keystore2/KeyStoreCryptoOperationUtils;->getInvalidKeyException(Landroid/security/keystore2/AndroidKeyStoreKey;Landroid/security/KeyStoreException;)Ljava/security/InvalidKeyException;

    move-result-object p0

    return-object p0

    .line 140
    :sswitch_c
    new-instance p0, Ljava/security/InvalidAlgorithmParameterException;

    const-string p1, "Invalid IV"

    invoke-direct {p0, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 142
    :sswitch_14
    new-instance p0, Ljava/security/InvalidAlgorithmParameterException;

    const-string p1, "Caller-provided IV not permitted"

    invoke-direct {p0, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    return-object p0

    :sswitch_data_1c
    .sparse-switch
        -0x37 -> :sswitch_14
        -0x34 -> :sswitch_c
    .end sparse-switch
.end method

.method public static blacklist getInvalidKeyException(Landroid/security/keystore2/AndroidKeyStoreKey;Landroid/security/KeyStoreException;)Ljava/security/InvalidKeyException;
    .registers 3

    .line 112
    invoke-virtual {p1}, Landroid/security/KeyStoreException;->getErrorCode()I

    move-result p0

    sparse-switch p0, :sswitch_data_28

    .line 127
    new-instance p0, Ljava/security/InvalidKeyException;

    const-string v0, "Keystore operation failed"

    invoke-direct {p0, v0, p1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object p0

    .line 120
    :sswitch_f
    new-instance p0, Landroid/security/keystore/KeyPermanentlyInvalidatedException;

    invoke-direct {p0}, Landroid/security/keystore/KeyPermanentlyInvalidatedException;-><init>()V

    return-object p0

    .line 116
    :sswitch_15
    new-instance p0, Landroid/security/keystore/KeyNotYetValidException;

    invoke-direct {p0}, Landroid/security/keystore/KeyNotYetValidException;-><init>()V

    return-object p0

    .line 114
    :sswitch_1b
    new-instance p0, Landroid/security/keystore/KeyExpiredException;

    invoke-direct {p0}, Landroid/security/keystore/KeyExpiredException;-><init>()V

    return-object p0

    .line 125
    :sswitch_21
    new-instance p0, Landroid/security/keystore/UserNotAuthenticatedException;

    invoke-direct {p0}, Landroid/security/keystore/UserNotAuthenticatedException;-><init>()V

    return-object p0

    nop

    :sswitch_data_28
    .sparse-switch
        -0x1a -> :sswitch_21
        -0x19 -> :sswitch_1b
        -0x18 -> :sswitch_15
        0x2 -> :sswitch_21
        0x3 -> :sswitch_21
        0x7 -> :sswitch_f
        0x11 -> :sswitch_f
    .end sparse-switch
.end method

.method static blacklist getOrMakeOperationChallenge(Landroid/security/KeyStoreOperation;Landroid/security/keystore2/AndroidKeyStoreKey;)J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/keystore/KeyPermanentlyInvalidatedException;
        }
    .end annotation

    .line 200
    invoke-virtual {p0}, Landroid/security/KeyStoreOperation;->getChallenge()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 201
    invoke-static {p1}, Landroid/security/keystore2/KeyStoreCryptoOperationUtils;->canUserAuthorizationSucceed(Landroid/security/keystore2/AndroidKeyStoreKey;)Z

    move-result p1

    if-eqz p1, :cond_15

    .line 204
    invoke-virtual {p0}, Landroid/security/KeyStoreOperation;->getChallenge()Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0

    .line 202
    :cond_15
    new-instance p0, Landroid/security/keystore/KeyPermanentlyInvalidatedException;

    invoke-direct {p0}, Landroid/security/keystore/KeyPermanentlyInvalidatedException;-><init>()V

    throw p0

    .line 208
    :cond_1b
    invoke-static {}, Landroid/security/keystore2/KeyStoreCryptoOperationUtils;->getRng()Ljava/security/SecureRandom;

    move-result-object p0

    invoke-virtual {p0}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide p0

    return-wide p0
.end method

.method static blacklist getRandomBytesToMixIntoKeystoreRng(Ljava/security/SecureRandom;I)[B
    .registers 2

    .line 156
    if-gtz p1, :cond_5

    .line 157
    sget-object p0, Llibcore/util/EmptyArray;->BYTE:[B

    return-object p0

    .line 159
    :cond_5
    if-nez p0, :cond_b

    .line 160
    invoke-static {}, Landroid/security/keystore2/KeyStoreCryptoOperationUtils;->getRng()Ljava/security/SecureRandom;

    move-result-object p0

    .line 162
    :cond_b
    new-array p1, p1, [B

    .line 163
    invoke-virtual {p0, p1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 164
    return-object p1
.end method

.method private static blacklist getRng()Ljava/security/SecureRandom;
    .registers 1

    .line 170
    sget-object v0, Landroid/security/keystore2/KeyStoreCryptoOperationUtils;->sRng:Ljava/security/SecureRandom;

    if-nez v0, :cond_b

    .line 171
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Landroid/security/keystore2/KeyStoreCryptoOperationUtils;->sRng:Ljava/security/SecureRandom;

    .line 173
    :cond_b
    sget-object v0, Landroid/security/keystore2/KeyStoreCryptoOperationUtils;->sRng:Ljava/security/SecureRandom;

    return-object v0
.end method
