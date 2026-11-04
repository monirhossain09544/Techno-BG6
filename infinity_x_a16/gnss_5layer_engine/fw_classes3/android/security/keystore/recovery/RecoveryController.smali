.class public Landroid/security/keystore/recovery/RecoveryController;
.super Ljava/lang/Object;
.source "RecoveryController.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field private static final blacklist APPLICATION_KEY_GRANT_PREFIX:Ljava/lang/String; = "recoverable_key:"

.field public static final greylist-max-o ERROR_BAD_CERTIFICATE_FORMAT:I = 0x19

.field public static final greylist-max-o ERROR_DECRYPTION_FAILED:I = 0x1a

.field public static final greylist-max-o ERROR_DOWNGRADE_CERTIFICATE:I = 0x1d

.field public static final greylist-max-o ERROR_INSECURE_USER:I = 0x17

.field public static final greylist-max-o ERROR_INVALID_CERTIFICATE:I = 0x1c

.field public static final greylist-max-o ERROR_INVALID_KEY_FORMAT:I = 0x1b

.field public static final blacklist ERROR_KEY_NOT_FOUND:I = 0x1e

.field public static final greylist-max-o ERROR_NO_SNAPSHOT_PENDING:I = 0x15

.field public static final greylist-max-o ERROR_SERVICE_INTERNAL_ERROR:I = 0x16

.field public static final greylist-max-o ERROR_SESSION_EXPIRED:I = 0x18

.field public static final whitelist RECOVERY_STATUS_PERMANENT_FAILURE:I = 0x3

.field public static final whitelist RECOVERY_STATUS_SYNCED:I = 0x0

.field public static final whitelist RECOVERY_STATUS_SYNC_IN_PROGRESS:I = 0x1

.field private static final greylist-max-o TAG:Ljava/lang/String; = "RecoveryController"


# instance fields
.field private final greylist-max-o mBinder:Lcom/android/internal/widget/ILockSettings;


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/widget/ILockSettings;)V
    .registers 2

    .line 275
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 276
    iput-object p1, p0, Landroid/security/keystore/recovery/RecoveryController;->mBinder:Lcom/android/internal/widget/ILockSettings;

    .line 277
    return-void
.end method

.method private static blacklist getGrantDescriptor(Ljava/lang/String;)Landroid/system/keystore2/KeyDescriptor;
    .registers 5

    .line 731
    new-instance v0, Landroid/system/keystore2/KeyDescriptor;

    invoke-direct {v0}, Landroid/system/keystore2/KeyDescriptor;-><init>()V

    .line 732
    const/4 v1, 0x1

    iput v1, v0, Landroid/system/keystore2/KeyDescriptor;->domain:I

    .line 733
    const/4 v1, 0x0

    iput-object v1, v0, Landroid/system/keystore2/KeyDescriptor;->blob:[B

    .line 734
    iput-object v1, v0, Landroid/system/keystore2/KeyDescriptor;->alias:Ljava/lang/String;

    .line 736
    :try_start_d
    const-string/jumbo v2, "recoverable_key:"

    .line 737
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 736
    const/16 v2, 0x10

    invoke-static {p0, v2}, Ljava/lang/Long;->parseUnsignedLong(Ljava/lang/String;I)J

    move-result-wide v2

    iput-wide v2, v0, Landroid/system/keystore2/KeyDescriptor;->nspace:J
    :try_end_20
    .catch Ljava/lang/NumberFormatException; {:try_start_d .. :try_end_20} :catch_22

    .line 740
    nop

    .line 741
    return-object v0

    .line 738
    :catch_22
    move-exception p0

    .line 739
    return-object v1
.end method

.method public static whitelist getInstance(Landroid/content/Context;)Landroid/security/keystore/recovery/RecoveryController;
    .registers 2

    .line 294
    nop

    .line 295
    const-string p0, "lock_settings"

    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/widget/ILockSettings$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ILockSettings;

    move-result-object p0

    .line 296
    new-instance v0, Landroid/security/keystore/recovery/RecoveryController;

    invoke-direct {v0, p0}, Landroid/security/keystore/recovery/RecoveryController;-><init>(Lcom/android/internal/widget/ILockSettings;)V

    return-object v0
.end method

.method public static whitelist isRecoverableKeyStoreEnabled(Landroid/content/Context;)Z
    .registers 2

    .line 307
    const-class v0, Landroid/app/KeyguardManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/KeyguardManager;

    .line 308
    if-eqz p0, :cond_12

    invoke-virtual {p0}, Landroid/app/KeyguardManager;->isDeviceSecure()Z

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method


# virtual methods
.method public whitelist createRecoverySession()Landroid/security/keystore/recovery/RecoverySession;
    .registers 2

    .line 769
    invoke-static {p0}, Landroid/security/keystore/recovery/RecoverySession;->newInstance(Landroid/security/keystore/recovery/RecoveryController;)Landroid/security/keystore/recovery/RecoverySession;

    move-result-object v0

    return-object v0
.end method

.method public whitelist generateKey(Ljava/lang/String;)Ljava/security/Key;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/keystore/recovery/InternalRecoveryServiceException;,
            Landroid/security/keystore/recovery/LockScreenRequiredException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 553
    :try_start_0
    iget-object v0, p0, Landroid/security/keystore/recovery/RecoveryController;->mBinder:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/ILockSettings;->generateKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 554
    if-eqz p1, :cond_d

    .line 557
    invoke-virtual {p0, p1}, Landroid/security/keystore/recovery/RecoveryController;->getKeyFromGrant(Ljava/lang/String;)Ljava/security/Key;

    move-result-object p1

    return-object p1

    .line 555
    :cond_d
    new-instance p1, Landroid/security/keystore/recovery/InternalRecoveryServiceException;

    const-string/jumbo v0, "null grant alias"

    invoke-direct {p1, v0}, Landroid/security/keystore/recovery/InternalRecoveryServiceException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_16} :catch_35
    .catch Landroid/security/keystore/KeyPermanentlyInvalidatedException; {:try_start_0 .. :try_end_16} :catch_2c
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_0 .. :try_end_16} :catch_2c
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_16} :catch_16

    .line 562
    :catch_16
    move-exception p1

    .line 563
    iget v0, p1, Landroid/os/ServiceSpecificException;->errorCode:I

    const/16 v1, 0x17

    if-ne v0, v1, :cond_27

    .line 564
    new-instance v0, Landroid/security/keystore/recovery/LockScreenRequiredException;

    invoke-virtual {p1}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/security/keystore/recovery/LockScreenRequiredException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 566
    :cond_27
    invoke-virtual {p0, p1}, Landroid/security/keystore/recovery/RecoveryController;->wrapUnexpectedServiceSpecificException(Landroid/os/ServiceSpecificException;)Landroid/security/keystore/recovery/InternalRecoveryServiceException;

    move-result-object p1

    throw p1

    .line 560
    :catch_2c
    move-exception p1

    .line 561
    new-instance v0, Landroid/security/keystore/recovery/InternalRecoveryServiceException;

    const-string v1, "Failed to get key from keystore"

    invoke-direct {v0, v1, p1}, Landroid/security/keystore/recovery/InternalRecoveryServiceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 558
    :catch_35
    move-exception p1

    .line 559
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist generateKey(Ljava/lang/String;[B)Ljava/security/Key;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/keystore/recovery/InternalRecoveryServiceException;,
            Landroid/security/keystore/recovery/LockScreenRequiredException;
        }
    .end annotation

    .line 594
    :try_start_0
    iget-object v0, p0, Landroid/security/keystore/recovery/RecoveryController;->mBinder:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/widget/ILockSettings;->generateKeyWithMetadata(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object p1

    .line 595
    if-eqz p1, :cond_d

    .line 598
    invoke-virtual {p0, p1}, Landroid/security/keystore/recovery/RecoveryController;->getKeyFromGrant(Ljava/lang/String;)Ljava/security/Key;

    move-result-object p1

    return-object p1

    .line 596
    :cond_d
    new-instance p1, Landroid/security/keystore/recovery/InternalRecoveryServiceException;

    const-string/jumbo p2, "null grant alias"

    invoke-direct {p1, p2}, Landroid/security/keystore/recovery/InternalRecoveryServiceException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_16} :catch_35
    .catch Landroid/security/keystore/KeyPermanentlyInvalidatedException; {:try_start_0 .. :try_end_16} :catch_2c
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_0 .. :try_end_16} :catch_2c
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_16} :catch_16

    .line 603
    :catch_16
    move-exception p1

    .line 604
    iget p2, p1, Landroid/os/ServiceSpecificException;->errorCode:I

    const/16 v0, 0x17

    if-ne p2, v0, :cond_27

    .line 605
    new-instance p2, Landroid/security/keystore/recovery/LockScreenRequiredException;

    invoke-virtual {p1}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/security/keystore/recovery/LockScreenRequiredException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 607
    :cond_27
    invoke-virtual {p0, p1}, Landroid/security/keystore/recovery/RecoveryController;->wrapUnexpectedServiceSpecificException(Landroid/os/ServiceSpecificException;)Landroid/security/keystore/recovery/InternalRecoveryServiceException;

    move-result-object p1

    throw p1

    .line 601
    :catch_2c
    move-exception p1

    .line 602
    new-instance p2, Landroid/security/keystore/recovery/InternalRecoveryServiceException;

    const-string v0, "Failed to get key from keystore"

    invoke-direct {p2, v0, p1}, Landroid/security/keystore/recovery/InternalRecoveryServiceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 599
    :catch_35
    move-exception p1

    .line 600
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist getAliases()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/keystore/recovery/InternalRecoveryServiceException;
        }
    .end annotation

    .line 434
    :try_start_0
    iget-object v0, p0, Landroid/security/keystore/recovery/RecoveryController;->mBinder:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v0}, Lcom/android/internal/widget/ILockSettings;->getRecoveryStatus()Ljava/util/Map;

    move-result-object v0

    .line 435
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_16
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_f} :catch_10

    return-object v1

    .line 438
    :catch_10
    move-exception v0

    .line 439
    invoke-virtual {p0, v0}, Landroid/security/keystore/recovery/RecoveryController;->wrapUnexpectedServiceSpecificException(Landroid/os/ServiceSpecificException;)Landroid/security/keystore/recovery/InternalRecoveryServiceException;

    move-result-object v0

    throw v0

    .line 436
    :catch_16
    move-exception v0

    .line 437
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method greylist-max-o getBinder()Lcom/android/internal/widget/ILockSettings;
    .registers 2

    .line 285
    iget-object v0, p0, Landroid/security/keystore/recovery/RecoveryController;->mBinder:Lcom/android/internal/widget/ILockSettings;

    return-object v0
.end method

.method public whitelist getKey(Ljava/lang/String;)Ljava/security/Key;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/keystore/recovery/InternalRecoveryServiceException;,
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    .line 700
    :try_start_0
    iget-object v0, p0, Landroid/security/keystore/recovery/RecoveryController;->mBinder:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/ILockSettings;->getKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 701
    if-eqz p1, :cond_16

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_16

    .line 704
    :cond_11
    invoke-virtual {p0, p1}, Landroid/security/keystore/recovery/RecoveryController;->getKeyFromGrant(Ljava/lang/String;)Ljava/security/Key;

    move-result-object p1
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_15} :catch_39
    .catch Landroid/security/keystore/KeyPermanentlyInvalidatedException; {:try_start_0 .. :try_end_15} :catch_2e
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_0 .. :try_end_15} :catch_2e
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_15} :catch_18

    return-object p1

    .line 702
    :cond_16
    :goto_16
    const/4 p1, 0x0

    return-object p1

    .line 709
    :catch_18
    move-exception p1

    .line 710
    iget v0, p1, Landroid/os/ServiceSpecificException;->errorCode:I

    const/16 v1, 0x1e

    if-ne v0, v1, :cond_29

    .line 711
    new-instance v0, Ljava/security/UnrecoverableKeyException;

    invoke-virtual {p1}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/security/UnrecoverableKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 713
    :cond_29
    invoke-virtual {p0, p1}, Landroid/security/keystore/recovery/RecoveryController;->wrapUnexpectedServiceSpecificException(Landroid/os/ServiceSpecificException;)Landroid/security/keystore/recovery/InternalRecoveryServiceException;

    move-result-object p1

    throw p1

    .line 707
    :catch_2e
    move-exception p1

    .line 708
    new-instance v0, Ljava/security/UnrecoverableKeyException;

    invoke-virtual {p1}, Ljava/security/GeneralSecurityException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/security/UnrecoverableKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 705
    :catch_39
    move-exception p1

    .line 706
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist getKeyChainSnapshot()Landroid/security/keystore/recovery/KeyChainSnapshot;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/keystore/recovery/InternalRecoveryServiceException;
        }
    .end annotation

    .line 373
    :try_start_0
    iget-object v0, p0, Landroid/security/keystore/recovery/RecoveryController;->mBinder:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v0}, Lcom/android/internal/widget/ILockSettings;->getKeyChainSnapshot()Landroid/security/keystore/recovery/KeyChainSnapshot;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_15
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 376
    :catch_7
    move-exception v0

    .line 377
    iget v1, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    const/16 v2, 0x15

    if-ne v1, v2, :cond_10

    .line 378
    const/4 v0, 0x0

    return-object v0

    .line 380
    :cond_10
    invoke-virtual {p0, v0}, Landroid/security/keystore/recovery/RecoveryController;->wrapUnexpectedServiceSpecificException(Landroid/os/ServiceSpecificException;)Landroid/security/keystore/recovery/InternalRecoveryServiceException;

    move-result-object v0

    throw v0

    .line 374
    :catch_15
    move-exception v0

    .line 375
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method greylist-max-o getKeyFromGrant(Ljava/lang/String;)Ljava/security/Key;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/UnrecoverableKeyException;,
            Landroid/security/keystore/KeyPermanentlyInvalidatedException;
        }
    .end annotation

    .line 724
    invoke-static {}, Landroid/security/KeyStore2;->getInstance()Landroid/security/KeyStore2;

    move-result-object v0

    .line 725
    invoke-static {p1}, Landroid/security/keystore/recovery/RecoveryController;->getGrantDescriptor(Ljava/lang/String;)Landroid/system/keystore2/KeyDescriptor;

    move-result-object p1

    .line 723
    invoke-static {v0, p1}, Landroid/security/keystore2/AndroidKeyStoreProvider;->loadAndroidKeyStoreSecretKeyFromKeystore(Landroid/security/KeyStore2;Landroid/system/keystore2/KeyDescriptor;)Ljavax/crypto/SecretKey;

    move-result-object p1

    .line 722
    return-object p1
.end method

.method public whitelist getRecoverySecretTypes()[I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/keystore/recovery/InternalRecoveryServiceException;
        }
    .end annotation

    .line 530
    :try_start_0
    iget-object v0, p0, Landroid/security/keystore/recovery/RecoveryController;->mBinder:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v0}, Lcom/android/internal/widget/ILockSettings;->getRecoverySecretTypes()[I

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_d
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 533
    :catch_7
    move-exception v0

    .line 534
    invoke-virtual {p0, v0}, Landroid/security/keystore/recovery/RecoveryController;->wrapUnexpectedServiceSpecificException(Landroid/os/ServiceSpecificException;)Landroid/security/keystore/recovery/InternalRecoveryServiceException;

    move-result-object v0

    throw v0

    .line 531
    :catch_d
    move-exception v0

    .line 532
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public whitelist getRecoveryStatus(Ljava/lang/String;)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/keystore/recovery/InternalRecoveryServiceException;
        }
    .end annotation

    .line 482
    :try_start_0
    iget-object v0, p0, Landroid/security/keystore/recovery/RecoveryController;->mBinder:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v0}, Lcom/android/internal/widget/ILockSettings;->getRecoveryStatus()Ljava/util/Map;

    move-result-object v0

    .line 483
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    .line 484
    if-nez p1, :cond_10

    .line 485
    const/4 p1, 0x3

    return p1

    .line 487
    :cond_10
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_14} :catch_1b
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_14} :catch_15

    return p1

    .line 491
    :catch_15
    move-exception p1

    .line 492
    invoke-virtual {p0, p1}, Landroid/security/keystore/recovery/RecoveryController;->wrapUnexpectedServiceSpecificException(Landroid/os/ServiceSpecificException;)Landroid/security/keystore/recovery/InternalRecoveryServiceException;

    move-result-object p1

    throw p1

    .line 489
    :catch_1b
    move-exception p1

    .line 490
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist getRootCertificates()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .line 774
    invoke-static {}, Landroid/security/keystore/recovery/TrustedRootCertificates;->getRootCertificates()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public whitelist importKey(Ljava/lang/String;[B)Ljava/security/Key;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/keystore/recovery/InternalRecoveryServiceException;,
            Landroid/security/keystore/recovery/LockScreenRequiredException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 627
    :try_start_0
    iget-object v0, p0, Landroid/security/keystore/recovery/RecoveryController;->mBinder:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/widget/ILockSettings;->importKey(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object p1

    .line 628
    if-eqz p1, :cond_d

    .line 631
    invoke-virtual {p0, p1}, Landroid/security/keystore/recovery/RecoveryController;->getKeyFromGrant(Ljava/lang/String;)Ljava/security/Key;

    move-result-object p1

    return-object p1

    .line 629
    :cond_d
    new-instance p1, Landroid/security/keystore/recovery/InternalRecoveryServiceException;

    const-string p2, "Null grant alias"

    invoke-direct {p1, p2}, Landroid/security/keystore/recovery/InternalRecoveryServiceException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_15} :catch_34
    .catch Landroid/security/keystore/KeyPermanentlyInvalidatedException; {:try_start_0 .. :try_end_15} :catch_2b
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_0 .. :try_end_15} :catch_2b
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_15} :catch_15

    .line 636
    :catch_15
    move-exception p1

    .line 637
    iget p2, p1, Landroid/os/ServiceSpecificException;->errorCode:I

    const/16 v0, 0x17

    if-ne p2, v0, :cond_26

    .line 638
    new-instance p2, Landroid/security/keystore/recovery/LockScreenRequiredException;

    invoke-virtual {p1}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/security/keystore/recovery/LockScreenRequiredException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 640
    :cond_26
    invoke-virtual {p0, p1}, Landroid/security/keystore/recovery/RecoveryController;->wrapUnexpectedServiceSpecificException(Landroid/os/ServiceSpecificException;)Landroid/security/keystore/recovery/InternalRecoveryServiceException;

    move-result-object p1

    throw p1

    .line 634
    :catch_2b
    move-exception p1

    .line 635
    new-instance p2, Landroid/security/keystore/recovery/InternalRecoveryServiceException;

    const-string v0, "Failed to get key from keystore"

    invoke-direct {p2, v0, p1}, Landroid/security/keystore/recovery/InternalRecoveryServiceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 632
    :catch_34
    move-exception p1

    .line 633
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist importKey(Ljava/lang/String;[B[B)Ljava/security/Key;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/keystore/recovery/InternalRecoveryServiceException;,
            Landroid/security/keystore/recovery/LockScreenRequiredException;
        }
    .end annotation

    .line 670
    :try_start_0
    iget-object v0, p0, Landroid/security/keystore/recovery/RecoveryController;->mBinder:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/widget/ILockSettings;->importKeyWithMetadata(Ljava/lang/String;[B[B)Ljava/lang/String;

    move-result-object p1

    .line 671
    if-eqz p1, :cond_d

    .line 674
    invoke-virtual {p0, p1}, Landroid/security/keystore/recovery/RecoveryController;->getKeyFromGrant(Ljava/lang/String;)Ljava/security/Key;

    move-result-object p1

    return-object p1

    .line 672
    :cond_d
    new-instance p1, Landroid/security/keystore/recovery/InternalRecoveryServiceException;

    const-string p2, "Null grant alias"

    invoke-direct {p1, p2}, Landroid/security/keystore/recovery/InternalRecoveryServiceException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_15} :catch_34
    .catch Landroid/security/keystore/KeyPermanentlyInvalidatedException; {:try_start_0 .. :try_end_15} :catch_2b
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_0 .. :try_end_15} :catch_2b
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_15} :catch_15

    .line 679
    :catch_15
    move-exception p1

    .line 680
    iget p2, p1, Landroid/os/ServiceSpecificException;->errorCode:I

    const/16 p3, 0x17

    if-ne p2, p3, :cond_26

    .line 681
    new-instance p2, Landroid/security/keystore/recovery/LockScreenRequiredException;

    invoke-virtual {p1}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/security/keystore/recovery/LockScreenRequiredException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 683
    :cond_26
    invoke-virtual {p0, p1}, Landroid/security/keystore/recovery/RecoveryController;->wrapUnexpectedServiceSpecificException(Landroid/os/ServiceSpecificException;)Landroid/security/keystore/recovery/InternalRecoveryServiceException;

    move-result-object p1

    throw p1

    .line 677
    :catch_2b
    move-exception p1

    .line 678
    new-instance p2, Landroid/security/keystore/recovery/InternalRecoveryServiceException;

    const-string p3, "Failed to get key from keystore"

    invoke-direct {p2, p3, p1}, Landroid/security/keystore/recovery/InternalRecoveryServiceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 675
    :catch_34
    move-exception p1

    .line 676
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist initRecoveryService(Ljava/lang/String;[B[B)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Landroid/security/keystore/recovery/InternalRecoveryServiceException;
        }
    .end annotation

    .line 344
    :try_start_0
    iget-object v0, p0, Landroid/security/keystore/recovery/RecoveryController;->mBinder:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/widget/ILockSettings;->initRecoveryServiceWithSigFile(Ljava/lang/String;[B[B)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_2f
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_5} :catch_7

    .line 358
    nop

    .line 359
    return-void

    .line 348
    :catch_7
    move-exception p1

    .line 349
    iget p2, p1, Landroid/os/ServiceSpecificException;->errorCode:I

    const/16 p3, 0x19

    if-eq p2, p3, :cond_27

    iget p2, p1, Landroid/os/ServiceSpecificException;->errorCode:I

    const/16 p3, 0x1c

    if-eq p2, p3, :cond_27

    .line 353
    iget p2, p1, Landroid/os/ServiceSpecificException;->errorCode:I

    const/16 p3, 0x1d

    if-ne p2, p3, :cond_22

    .line 354
    new-instance p2, Ljava/security/cert/CertificateException;

    const-string p3, "Downgrading certificate serial version isn\'t supported."

    invoke-direct {p2, p3, p1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 357
    :cond_22
    invoke-virtual {p0, p1}, Landroid/security/keystore/recovery/RecoveryController;->wrapUnexpectedServiceSpecificException(Landroid/os/ServiceSpecificException;)Landroid/security/keystore/recovery/InternalRecoveryServiceException;

    move-result-object p1

    throw p1

    .line 351
    :cond_27
    new-instance p2, Ljava/security/cert/CertificateException;

    const-string p3, "Invalid certificate for recovery service"

    invoke-direct {p2, p3, p1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 346
    :catch_2f
    move-exception p1

    .line 347
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist removeKey(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/keystore/recovery/InternalRecoveryServiceException;
        }
    .end annotation

    .line 754
    :try_start_0
    iget-object v0, p0, Landroid/security/keystore/recovery/RecoveryController;->mBinder:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/ILockSettings;->removeKey(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_d
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_5} :catch_7

    .line 759
    nop

    .line 760
    return-void

    .line 757
    :catch_7
    move-exception p1

    .line 758
    invoke-virtual {p0, p1}, Landroid/security/keystore/recovery/RecoveryController;->wrapUnexpectedServiceSpecificException(Landroid/os/ServiceSpecificException;)Landroid/security/keystore/recovery/InternalRecoveryServiceException;

    move-result-object p1

    throw p1

    .line 755
    :catch_d
    move-exception p1

    .line 756
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist setRecoverySecretTypes([I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/keystore/recovery/InternalRecoveryServiceException;
        }
    .end annotation

    .line 509
    :try_start_0
    iget-object v0, p0, Landroid/security/keystore/recovery/RecoveryController;->mBinder:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/ILockSettings;->setRecoverySecretTypes([I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_d
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_5} :catch_7

    .line 514
    nop

    .line 515
    return-void

    .line 512
    :catch_7
    move-exception p1

    .line 513
    invoke-virtual {p0, p1}, Landroid/security/keystore/recovery/RecoveryController;->wrapUnexpectedServiceSpecificException(Landroid/os/ServiceSpecificException;)Landroid/security/keystore/recovery/InternalRecoveryServiceException;

    move-result-object p1

    throw p1

    .line 510
    :catch_d
    move-exception p1

    .line 511
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist setRecoveryStatus(Ljava/lang/String;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/keystore/recovery/InternalRecoveryServiceException;
        }
    .end annotation

    .line 458
    :try_start_0
    iget-object v0, p0, Landroid/security/keystore/recovery/RecoveryController;->mBinder:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/widget/ILockSettings;->setRecoveryStatus(Ljava/lang/String;I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_d
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_5} :catch_7

    .line 463
    nop

    .line 464
    return-void

    .line 461
    :catch_7
    move-exception p1

    .line 462
    invoke-virtual {p0, p1}, Landroid/security/keystore/recovery/RecoveryController;->wrapUnexpectedServiceSpecificException(Landroid/os/ServiceSpecificException;)Landroid/security/keystore/recovery/InternalRecoveryServiceException;

    move-result-object p1

    throw p1

    .line 459
    :catch_d
    move-exception p1

    .line 460
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist setServerParams([B)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/keystore/recovery/InternalRecoveryServiceException;
        }
    .end annotation

    .line 420
    :try_start_0
    iget-object v0, p0, Landroid/security/keystore/recovery/RecoveryController;->mBinder:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/ILockSettings;->setServerParams([B)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_d
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_5} :catch_7

    .line 425
    nop

    .line 426
    return-void

    .line 423
    :catch_7
    move-exception p1

    .line 424
    invoke-virtual {p0, p1}, Landroid/security/keystore/recovery/RecoveryController;->wrapUnexpectedServiceSpecificException(Landroid/os/ServiceSpecificException;)Landroid/security/keystore/recovery/InternalRecoveryServiceException;

    move-result-object p1

    throw p1

    .line 421
    :catch_d
    move-exception p1

    .line 422
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist setSnapshotCreatedPendingIntent(Landroid/app/PendingIntent;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/keystore/recovery/InternalRecoveryServiceException;
        }
    .end annotation

    .line 398
    :try_start_0
    iget-object v0, p0, Landroid/security/keystore/recovery/RecoveryController;->mBinder:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/ILockSettings;->setSnapshotCreatedPendingIntent(Landroid/app/PendingIntent;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_d
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_5} :catch_7

    .line 403
    nop

    .line 404
    return-void

    .line 401
    :catch_7
    move-exception p1

    .line 402
    invoke-virtual {p0, p1}, Landroid/security/keystore/recovery/RecoveryController;->wrapUnexpectedServiceSpecificException(Landroid/os/ServiceSpecificException;)Landroid/security/keystore/recovery/InternalRecoveryServiceException;

    move-result-object p1

    throw p1

    .line 399
    :catch_d
    move-exception p1

    .line 400
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method greylist-max-o wrapUnexpectedServiceSpecificException(Landroid/os/ServiceSpecificException;)Landroid/security/keystore/recovery/InternalRecoveryServiceException;
    .registers 5

    .line 779
    iget v0, p1, Landroid/os/ServiceSpecificException;->errorCode:I

    const/16 v1, 0x16

    if-ne v0, v1, :cond_10

    .line 780
    new-instance v0, Landroid/security/keystore/recovery/InternalRecoveryServiceException;

    invoke-virtual {p1}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/security/keystore/recovery/InternalRecoveryServiceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0

    .line 785
    :cond_10
    new-instance v0, Landroid/security/keystore/recovery/InternalRecoveryServiceException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected error code for method: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/ServiceSpecificException;->errorCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/security/keystore/recovery/InternalRecoveryServiceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method
