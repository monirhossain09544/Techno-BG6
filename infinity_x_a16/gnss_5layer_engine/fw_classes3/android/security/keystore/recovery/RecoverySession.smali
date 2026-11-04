.class public Landroid/security/keystore/recovery/RecoverySession;
.super Ljava/lang/Object;
.source "RecoverySession.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field private static final greylist-max-o SESSION_ID_LENGTH_BYTES:I = 0x10

.field private static final greylist-max-o TAG:Ljava/lang/String; = "RecoverySession"


# instance fields
.field private final greylist-max-o mRecoveryController:Landroid/security/keystore/recovery/RecoveryController;

.field private final greylist-max-o mSessionId:Ljava/lang/String;


# direct methods
.method private constructor greylist-max-o <init>(Landroid/security/keystore/recovery/RecoveryController;Ljava/lang/String;)V
    .registers 3

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Landroid/security/keystore/recovery/RecoverySession;->mRecoveryController:Landroid/security/keystore/recovery/RecoveryController;

    .line 58
    iput-object p2, p0, Landroid/security/keystore/recovery/RecoverySession;->mSessionId:Ljava/lang/String;

    .line 59
    return-void
.end method

.method private greylist-max-o getKeysFromGrants(Ljava/util/Map;)Ljava/util/Map;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/security/Key;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/keystore/recovery/InternalRecoveryServiceException;
        }
    .end annotation

    .line 170
    new-instance v0, Landroid/util/ArrayMap;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    .line 171
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_41

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 172
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 175
    :try_start_23
    iget-object v4, p0, Landroid/security/keystore/recovery/RecoverySession;->mRecoveryController:Landroid/security/keystore/recovery/RecoveryController;

    invoke-virtual {v4, v3}, Landroid/security/keystore/recovery/RecoveryController;->getKeyFromGrant(Ljava/lang/String;)Ljava/security/Key;

    move-result-object v3
    :try_end_29
    .catch Landroid/security/keystore/KeyPermanentlyInvalidatedException; {:try_start_23 .. :try_end_29} :catch_2e
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_23 .. :try_end_29} :catch_2e

    .line 183
    nop

    .line 184
    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    goto :goto_11

    .line 176
    :catch_2e
    move-exception p1

    .line 177
    new-instance v0, Landroid/security/keystore/recovery/InternalRecoveryServiceException;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    .line 178
    const-string v3, "Failed to get key \'%s\' from grant \'%s\'"

    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/security/keystore/recovery/InternalRecoveryServiceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 186
    :cond_41
    return-object v0
.end method

.method static greylist-max-o newInstance(Landroid/security/keystore/recovery/RecoveryController;)Landroid/security/keystore/recovery/RecoverySession;
    .registers 3

    .line 66
    new-instance v0, Landroid/security/keystore/recovery/RecoverySession;

    invoke-static {}, Landroid/security/keystore/recovery/RecoverySession;->newSessionId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/security/keystore/recovery/RecoverySession;-><init>(Landroid/security/keystore/recovery/RecoveryController;Ljava/lang/String;)V

    return-object v0
.end method

.method private static greylist-max-o newSessionId()Ljava/lang/String;
    .registers 2

    .line 73
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    .line 74
    const/16 v1, 0x10

    new-array v1, v1, [B

    .line 75
    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 76
    const/4 v0, 0x0

    invoke-static {v1, v0}, Llibcore/util/HexEncoding;->encodeToString([BZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 4

    .line 205
    :try_start_0
    iget-object v0, p0, Landroid/security/keystore/recovery/RecoverySession;->mRecoveryController:Landroid/security/keystore/recovery/RecoveryController;

    invoke-virtual {v0}, Landroid/security/keystore/recovery/RecoveryController;->getBinder()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    iget-object v1, p0, Landroid/security/keystore/recovery/RecoverySession;->mSessionId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/android/internal/widget/ILockSettings;->closeSession(Ljava/lang/String;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_b} :catch_c

    .line 208
    goto :goto_14

    .line 206
    :catch_c
    move-exception v0

    .line 207
    const-string v1, "RecoverySession"

    const-string v2, "Unexpected error trying to close session"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 209
    :goto_14
    return-void
.end method

.method greylist-max-o getSessionId()Ljava/lang/String;
    .registers 2

    .line 195
    iget-object v0, p0, Landroid/security/keystore/recovery/RecoverySession;->mSessionId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist recoverKeyChainSnapshot([BLjava/util/List;)Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/List<",
            "Landroid/security/keystore/recovery/WrappedApplicationKey;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/security/Key;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/keystore/recovery/SessionExpiredException;,
            Landroid/security/keystore/recovery/DecryptionFailedException;,
            Landroid/security/keystore/recovery/InternalRecoveryServiceException;
        }
    .end annotation

    .line 150
    :try_start_0
    iget-object v0, p0, Landroid/security/keystore/recovery/RecoverySession;->mRecoveryController:Landroid/security/keystore/recovery/RecoveryController;

    .line 151
    invoke-virtual {v0}, Landroid/security/keystore/recovery/RecoveryController;->getBinder()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    iget-object v1, p0, Landroid/security/keystore/recovery/RecoverySession;->mSessionId:Ljava/lang/String;

    .line 152
    invoke-interface {v0, v1, p1, p2}, Lcom/android/internal/widget/ILockSettings;->recoverKeyChainSnapshot(Ljava/lang/String;[BLjava/util/List;)Ljava/util/Map;

    move-result-object p1

    .line 153
    invoke-direct {p0, p1}, Landroid/security/keystore/recovery/RecoverySession;->getKeysFromGrants(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_10} :catch_39
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_10} :catch_11

    return-object p1

    .line 156
    :catch_11
    move-exception p1

    .line 157
    iget p2, p1, Landroid/os/ServiceSpecificException;->errorCode:I

    const/16 v0, 0x1a

    if-eq p2, v0, :cond_2f

    .line 160
    iget p2, p1, Landroid/os/ServiceSpecificException;->errorCode:I

    const/16 v0, 0x18

    if-ne p2, v0, :cond_28

    .line 161
    new-instance p2, Landroid/security/keystore/recovery/SessionExpiredException;

    invoke-virtual {p1}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/security/keystore/recovery/SessionExpiredException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 163
    :cond_28
    iget-object p2, p0, Landroid/security/keystore/recovery/RecoverySession;->mRecoveryController:Landroid/security/keystore/recovery/RecoveryController;

    invoke-virtual {p2, p1}, Landroid/security/keystore/recovery/RecoveryController;->wrapUnexpectedServiceSpecificException(Landroid/os/ServiceSpecificException;)Landroid/security/keystore/recovery/InternalRecoveryServiceException;

    move-result-object p1

    throw p1

    .line 158
    :cond_2f
    new-instance p2, Landroid/security/keystore/recovery/DecryptionFailedException;

    invoke-virtual {p1}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/security/keystore/recovery/DecryptionFailedException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 154
    :catch_39
    move-exception p1

    .line 155
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist start(Ljava/lang/String;Ljava/security/cert/CertPath;[B[BLjava/util/List;)[B
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/security/cert/CertPath;",
            "[B[B",
            "Ljava/util/List<",
            "Landroid/security/keystore/recovery/KeyChainProtectionParams;",
            ">;)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Landroid/security/keystore/recovery/InternalRecoveryServiceException;
        }
    .end annotation

    .line 110
    nop

    .line 111
    invoke-static {p2}, Landroid/security/keystore/recovery/RecoveryCertPath;->createRecoveryCertPath(Ljava/security/cert/CertPath;)Landroid/security/keystore/recovery/RecoveryCertPath;

    move-result-object v3

    .line 113
    :try_start_5
    iget-object p2, p0, Landroid/security/keystore/recovery/RecoverySession;->mRecoveryController:Landroid/security/keystore/recovery/RecoveryController;

    .line 114
    invoke-virtual {p2}, Landroid/security/keystore/recovery/RecoveryController;->getBinder()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    iget-object v1, p0, Landroid/security/keystore/recovery/RecoverySession;->mSessionId:Ljava/lang/String;

    move-object v2, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/widget/ILockSettings;->startRecoverySessionWithCertPath(Ljava/lang/String;Ljava/lang/String;Landroid/security/keystore/recovery/RecoveryCertPath;[B[BLjava/util/List;)[B

    move-result-object p1
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_15} :catch_34
    .catch Landroid/os/ServiceSpecificException; {:try_start_5 .. :try_end_15} :catch_16

    .line 121
    return-object p1

    .line 124
    :catch_16
    move-exception v0

    move-object p1, v0

    .line 125
    iget p2, p1, Landroid/os/ServiceSpecificException;->errorCode:I

    const/16 p3, 0x19

    if-eq p2, p3, :cond_2c

    iget p2, p1, Landroid/os/ServiceSpecificException;->errorCode:I

    const/16 p3, 0x1c

    if-ne p2, p3, :cond_25

    goto :goto_2c

    .line 129
    :cond_25
    iget-object p2, p0, Landroid/security/keystore/recovery/RecoverySession;->mRecoveryController:Landroid/security/keystore/recovery/RecoveryController;

    invoke-virtual {p2, p1}, Landroid/security/keystore/recovery/RecoveryController;->wrapUnexpectedServiceSpecificException(Landroid/os/ServiceSpecificException;)Landroid/security/keystore/recovery/InternalRecoveryServiceException;

    move-result-object p1

    throw p1

    .line 127
    :cond_2c
    :goto_2c
    new-instance p2, Ljava/security/cert/CertificateException;

    const-string p3, "Invalid certificate for recovery session"

    invoke-direct {p2, p3, p1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 122
    :catch_34
    move-exception v0

    move-object p1, v0

    .line 123
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method
