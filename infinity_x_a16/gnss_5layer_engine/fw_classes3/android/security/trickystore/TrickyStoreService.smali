.class public Landroid/security/trickystore/TrickyStoreService;
.super Ljava/lang/Object;
.source "TrickyStoreService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/trickystore/TrickyStoreService$CustomPatchLevel;,
        Landroid/security/trickystore/TrickyStoreService$Fetcher;,
        Landroid/security/trickystore/TrickyStoreService$Mode;
    }
.end annotation


# static fields
.field private static final blacklist REVOCATION_CHECK_COOLDOWN_MS:J = 0x5265c00L

.field private static final blacklist TAG:Ljava/lang/String; = "TrickyStoreService"

.field private static blacklist sInstance:Landroid/security/trickystore/TrickyStoreService;


# instance fields
.field private volatile blacklist mCustomPatchLevel:Landroid/security/trickystore/TrickyStoreService$CustomPatchLevel;

.field private final blacklist mGeneratePackages:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mHackPackages:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mKeyBoxManager:Landroid/security/trickystore/KeyBoxManager;

.field private volatile blacklist mLastKeyboxFingerprint:Ljava/lang/String;

.field private volatile blacklist mLastRevocationCheckMs:J

.field private final blacklist mPackageModes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/security/trickystore/TrickyStoreService$Mode;",
            ">;"
        }
    .end annotation
.end field

.field private volatile blacklist mTeeBroken:Ljava/lang/Boolean;


# direct methods
.method public static synthetic blacklist $r8$lambda$OQ1tyfj6nfBIaqzgggAW8W_H5QE(Landroid/security/trickystore/TrickyStoreService;)V
    .registers 1

    invoke-direct {p0}, Landroid/security/trickystore/TrickyStoreService;->lambda$initialize$0()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$tqe7i6-eHgub5lb_AMfZtBv2tNc(Landroid/security/trickystore/TrickyStoreService;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/security/trickystore/TrickyStoreService;->lambda$checkKeyboxRevocation$4(Ljava/lang/String;)V

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 4

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    invoke-static {}, Ljava/util/concurrent/ConcurrentHashMap;->newKeySet()Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    move-result-object v0

    iput-object v0, p0, Landroid/security/trickystore/TrickyStoreService;->mHackPackages:Ljava/util/Set;

    .line 49
    invoke-static {}, Ljava/util/concurrent/ConcurrentHashMap;->newKeySet()Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    move-result-object v0

    iput-object v0, p0, Landroid/security/trickystore/TrickyStoreService;->mGeneratePackages:Ljava/util/Set;

    .line 50
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Landroid/security/trickystore/TrickyStoreService;->mPackageModes:Ljava/util/Map;

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/security/trickystore/TrickyStoreService;->mTeeBroken:Ljava/lang/Boolean;

    .line 53
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/security/trickystore/TrickyStoreService;->mLastRevocationCheckMs:J

    .line 55
    iput-object v0, p0, Landroid/security/trickystore/TrickyStoreService;->mCustomPatchLevel:Landroid/security/trickystore/TrickyStoreService$CustomPatchLevel;

    .line 56
    iput-object v0, p0, Landroid/security/trickystore/TrickyStoreService;->mLastKeyboxFingerprint:Ljava/lang/String;

    .line 81
    new-instance v0, Landroid/security/trickystore/KeyBoxManager;

    invoke-direct {v0}, Landroid/security/trickystore/KeyBoxManager;-><init>()V

    iput-object v0, p0, Landroid/security/trickystore/TrickyStoreService;->mKeyBoxManager:Landroid/security/trickystore/KeyBoxManager;

    .line 82
    return-void
.end method

.method private blacklist checkKeyboxRevocation(Ljava/lang/String;)V
    .registers 8

    .line 374
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 375
    iget-wide v2, p0, Landroid/security/trickystore/TrickyStoreService;->mLastRevocationCheckMs:J

    sub-long v2, v0, v2

    const-wide/32 v4, 0x5265c00

    cmp-long v2, v2, v4

    if-gez v2, :cond_17

    .line 376
    const-string p1, "TrickyStoreService"

    const-string v0, "Skipping revocation check \u2014 ran within 24h"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    return-void

    .line 379
    :cond_17
    iput-wide v0, p0, Landroid/security/trickystore/TrickyStoreService;->mLastRevocationCheckMs:J

    .line 380
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Landroid/security/trickystore/TrickyStoreService$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Landroid/security/trickystore/TrickyStoreService$$ExternalSyntheticLambda1;-><init>(Landroid/security/trickystore/TrickyStoreService;Ljava/lang/String;)V

    const-string p1, "TrickyStore-RevocationCheck"

    invoke-direct {v0, v1, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 408
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 409
    return-void
.end method

.method private blacklist checkTeeBroken()Z
    .registers 8

    .line 438
    const-string v0, "AndroidKeyStore"

    const-string v1, "TrickyStoreService"

    :try_start_4
    const-string v2, "TrickyStoreTeeCheck"

    .line 439
    const-string v3, "EC"

    invoke-static {v3, v0}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v3

    .line 441
    new-instance v4, Landroid/security/keystore/KeyGenParameterSpec$Builder;

    const/4 v5, 0x4

    invoke-direct {v4, v2, v5}, Landroid/security/keystore/KeyGenParameterSpec$Builder;-><init>(Ljava/lang/String;I)V

    new-instance v5, Ljava/security/spec/ECGenParameterSpec;

    const-string/jumbo v6, "secp256r1"

    invoke-direct {v5, v6}, Ljava/security/spec/ECGenParameterSpec;-><init>(Ljava/lang/String;)V

    .line 443
    invoke-virtual {v4, v5}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setAlgorithmParameterSpec(Ljava/security/spec/AlgorithmParameterSpec;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v4

    const-string v5, "SHA-256"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    .line 444
    invoke-virtual {v4, v5}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setDigests([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v4

    const/16 v5, 0x10

    new-array v5, v5, [B

    .line 445
    invoke-virtual {v4, v5}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setAttestationChallenge([B)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v4

    .line 447
    invoke-virtual {v4}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->build()Landroid/security/keystore/KeyGenParameterSpec;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 448
    invoke-virtual {v3}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    .line 450
    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    .line 451
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 452
    invoke-virtual {v0, v2}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V

    .line 454
    const-string v0, "TEE verification successful"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4a} :catch_4c

    .line 455
    const/4 v0, 0x0

    return v0

    .line 456
    :catch_4c
    move-exception v0

    .line 457
    const-string v2, "TEE verification failed, TEE is broken"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 458
    const/4 v0, 0x1

    return v0
.end method

.method private blacklist decodeKeybox(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 242
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 243
    const-string v0, "<"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 244
    return-object p1

    .line 247
    :cond_d
    :try_start_d
    invoke-static {}, Ljava/util/Base64;->getDecoder()Ljava/util/Base64$Decoder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/Base64$Decoder;->decode(Ljava/lang/String;)[B

    move-result-object p1

    .line 248
    new-instance v1, Ljava/lang/String;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, p1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 249
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0
    :try_end_24
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d .. :try_end_24} :catch_28

    if-eqz v0, :cond_27

    .line 250
    return-object p1

    .line 253
    :cond_27
    goto :goto_29

    .line 252
    :catch_28
    move-exception p1

    .line 254
    :goto_29
    const/4 p1, 0x0

    return-object p1
.end method

.method private blacklist ensureTeeStatus()V
    .registers 2

    .line 344
    iget-object v0, p0, Landroid/security/trickystore/TrickyStoreService;->mTeeBroken:Ljava/lang/Boolean;

    if-nez v0, :cond_24

    .line 345
    monitor-enter p0

    .line 346
    :try_start_5
    iget-object v0, p0, Landroid/security/trickystore/TrickyStoreService;->mTeeBroken:Ljava/lang/Boolean;

    if-nez v0, :cond_1f

    .line 347
    invoke-direct {p0}, Landroid/security/trickystore/TrickyStoreService;->checkTeeBroken()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroid/security/trickystore/TrickyStoreService;->mTeeBroken:Ljava/lang/Boolean;

    .line 348
    iget-object v0, p0, Landroid/security/trickystore/TrickyStoreService;->mTeeBroken:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 349
    const/4 v0, 0x1

    invoke-static {v0}, Landroid/security/trickystore/AttestationUtils;->setTeeBroken(Z)V

    .line 352
    :cond_1f
    monitor-exit p0

    goto :goto_24

    :catchall_21
    move-exception v0

    monitor-exit p0
    :try_end_23
    .catchall {:try_start_5 .. :try_end_23} :catchall_21

    throw v0

    .line 354
    :cond_24
    :goto_24
    return-void
.end method

.method private blacklist extractCertSerials(Ljava/lang/String;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 412
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 413
    const-string v1, "-----BEGIN CERTIFICATE-----([\\s\\S]+?)-----END CERTIFICATE-----"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 415
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 418
    :try_start_f
    const-string v1, "X.509"

    invoke-static {v1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_15} :catch_53

    .line 421
    nop

    .line 422
    :goto_16
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_52

    .line 424
    :try_start_1c
    invoke-static {}, Ljava/util/Base64;->getDecoder()Ljava/util/Base64$Decoder;

    move-result-object v2

    .line 425
    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\\s"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 424
    invoke-virtual {v2, v3}, Ljava/util/Base64$Decoder;->decode(Ljava/lang/String;)[B

    move-result-object v2

    .line 426
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 428
    invoke-virtual {v1, v3}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v2

    check-cast v2, Ljava/security/cert/X509Certificate;

    .line 430
    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v2

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_4f} :catch_50

    goto :goto_51

    .line 431
    :catch_50
    move-exception v2

    :goto_51
    goto :goto_16

    .line 433
    :cond_52
    return-object v0

    .line 419
    :catch_53
    move-exception p1

    .line 420
    return-object v0
.end method

.method private blacklist fetchFromAms(Landroid/security/trickystore/TrickyStoreService$Fetcher;)Ljava/lang/String;
    .registers 5

    .line 109
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    .line 110
    const/4 v1, 0x0

    const-string v2, "TrickyStoreService"

    if-nez v0, :cond_f

    .line 111
    const-string p1, "ActivityManager not ready, skipping trickystore fetch"

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    return-object v1

    .line 115
    :cond_f
    :try_start_f
    invoke-interface {p1, v0}, Landroid/security/trickystore/TrickyStoreService$Fetcher;->fetch(Landroid/app/IActivityManager;)Ljava/lang/String;

    move-result-object p1
    :try_end_13
    .catchall {:try_start_f .. :try_end_13} :catchall_14

    return-object p1

    .line 116
    :catchall_14
    move-exception p1

    .line 117
    const-string v0, "Failed to fetch trickystore config from system_server"

    invoke-static {v2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 118
    return-object v1
.end method

.method public static declared-synchronized blacklist getInstance()Landroid/security/trickystore/TrickyStoreService;
    .registers 2

    const-class v0, Landroid/security/trickystore/TrickyStoreService;

    monitor-enter v0

    .line 85
    :try_start_3
    sget-object v1, Landroid/security/trickystore/TrickyStoreService;->sInstance:Landroid/security/trickystore/TrickyStoreService;

    if-nez v1, :cond_13

    .line 86
    new-instance v1, Landroid/security/trickystore/TrickyStoreService;

    invoke-direct {v1}, Landroid/security/trickystore/TrickyStoreService;-><init>()V

    sput-object v1, Landroid/security/trickystore/TrickyStoreService;->sInstance:Landroid/security/trickystore/TrickyStoreService;

    .line 87
    sget-object v1, Landroid/security/trickystore/TrickyStoreService;->sInstance:Landroid/security/trickystore/TrickyStoreService;

    invoke-virtual {v1}, Landroid/security/trickystore/TrickyStoreService;->initialize()V

    .line 89
    :cond_13
    sget-object v1, Landroid/security/trickystore/TrickyStoreService;->sInstance:Landroid/security/trickystore/TrickyStoreService;
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_17

    monitor-exit v0

    return-object v1

    .line 84
    :catchall_17
    move-exception v1

    :try_start_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    throw v1
.end method

.method private blacklist isValidKeyboxXml(Ljava/lang/String;)Z
    .registers 7

    .line 357
    const-string v0, "<Key algorithm=\"ecdsa\">"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 358
    const-string v1, "<Key algorithm=\"rsa\">"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 359
    const-string v2, "<serial>"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_21

    const-string v2, "DeviceID"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1f

    goto :goto_21

    :cond_1f
    move p1, v4

    goto :goto_22

    :cond_21
    :goto_21
    move p1, v3

    .line 360
    :goto_22
    const-string v2, "TrickyStoreService"

    if-nez v0, :cond_2e

    if-nez v1, :cond_2e

    .line 361
    const-string p1, "Keybox validation failed: no ECDSA or RSA key block found"

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    return v4

    .line 364
    :cond_2e
    if-nez p1, :cond_36

    .line 365
    const-string p1, "Keybox validation failed: no identifier field (serial/DeviceID)"

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    return v4

    .line 368
    :cond_36
    if-nez v0, :cond_3d

    const-string p1, "Keybox warning: missing ECDSA key block"

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    :cond_3d
    if-nez v1, :cond_44

    const-string p1, "Keybox warning: missing RSA key block"

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    :cond_44
    return v3
.end method

.method private synthetic blacklist lambda$checkKeyboxRevocation$4(Ljava/lang/String;)V
    .registers 8

    .line 382
    const-string v0, "TrickyStoreService"

    :try_start_2
    invoke-direct {p0, p1}, Landroid/security/trickystore/TrickyStoreService;->extractCertSerials(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 383
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_d

    return-void

    .line 384
    :cond_d
    new-instance v1, Ljava/net/URL;

    const-string v2, "https://android.googleapis.com/attestation/status"

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 386
    nop

    .line 387
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    .line 388
    const/16 v2, 0x2710

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 389
    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 390
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    const/16 v3, 0xc8

    if-eq v2, v3, :cond_2c

    return-void

    .line 391
    :cond_2c
    new-instance v2, Ljava/lang/String;

    .line 392
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/InputStream;->readAllBytes()[B

    move-result-object v1

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, v1, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 393
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "entries"

    .line 394
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 395
    if-nez v1, :cond_49

    return-void

    .line 396
    :cond_49
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 397
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 398
    if-nez v3, :cond_60

    goto :goto_4d

    .line 399
    :cond_60
    const-string/jumbo v4, "status"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    .line 400
    const-string v4, "REVOKED"

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7f

    const-string v4, "SUSPENDED"

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a5

    .line 401
    :cond_7f
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Keybox serial "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " is "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " \u2014 attestation may fail"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_a5} :catch_a7

    .line 404
    :cond_a5
    goto :goto_4d

    .line 407
    :cond_a6
    goto :goto_ad

    .line 405
    :catch_a7
    move-exception p1

    .line 406
    const-string v1, "Keybox revocation check failed"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 408
    :goto_ad
    return-void
.end method

.method private synthetic blacklist lambda$initialize$0()V
    .registers 4

    .line 100
    :try_start_0
    invoke-direct {p0}, Landroid/security/trickystore/TrickyStoreService;->ensureTeeStatus()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    .line 103
    goto :goto_c

    .line 101
    :catch_4
    move-exception v0

    .line 102
    const-string v1, "TrickyStoreService"

    const-string v2, "Background TEE check failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 104
    :goto_c
    return-void
.end method

.method static synthetic blacklist lambda$refreshKeyBox$2(Landroid/app/IActivityManager;)Ljava/lang/String;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 205
    invoke-interface {p0}, Landroid/app/IActivityManager;->getSpoofTrickyStoreKeyBox()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic blacklist lambda$refreshPatchLevel$3(Landroid/app/IActivityManager;)Ljava/lang/String;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 258
    invoke-interface {p0}, Landroid/app/IActivityManager;->getSpoofTrickyStorePatch()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic blacklist lambda$refreshTargets$1(Landroid/app/IActivityManager;)Ljava/lang/String;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 127
    invoke-interface {p0}, Landroid/app/IActivityManager;->getSpoofTrickyStoreTarget()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private blacklist parsePatchJson(Ljava/lang/String;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 320
    nop

    .line 321
    new-instance v0, Landroid/util/JsonReader;

    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V

    .line 322
    :try_start_b
    invoke-virtual {v0}, Landroid/util/JsonReader;->beginObject()V

    const/4 p1, 0x0

    move-object v1, p1

    move-object v2, v1

    move-object v3, v2

    .line 323
    :goto_12
    invoke-virtual {v0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6a

    .line 324
    invoke-virtual {v0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v4

    .line 325
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_8e

    :cond_23
    goto :goto_4e

    :sswitch_24
    const-string v5, "boot"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_23

    const/4 v4, 0x2

    goto :goto_4f

    :sswitch_2e
    const-string v5, "all"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_23

    const/4 v4, 0x3

    goto :goto_4f

    :sswitch_38
    const-string/jumbo v5, "vendor"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_23

    const/4 v4, 0x1

    goto :goto_4f

    :sswitch_43
    const-string/jumbo v5, "system"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_23

    const/4 v4, 0x0

    goto :goto_4f

    :goto_4e
    const/4 v4, -0x1

    :goto_4f
    packed-switch v4, :pswitch_data_a0

    .line 330
    invoke-virtual {v0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_69

    .line 329
    :pswitch_56
    invoke-virtual {v0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    goto :goto_69

    .line 328
    :pswitch_5b
    invoke-virtual {v0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v3

    goto :goto_69

    .line 327
    :pswitch_60
    invoke-virtual {v0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    goto :goto_69

    .line 326
    :pswitch_65
    invoke-virtual {v0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object p1

    .line 332
    :goto_69
    goto :goto_12

    .line 333
    :cond_6a
    invoke-virtual {v0}, Landroid/util/JsonReader;->endObject()V
    :try_end_6d
    .catchall {:try_start_b .. :try_end_6d} :catchall_84

    .line 334
    invoke-virtual {v0}, Landroid/util/JsonReader;->close()V

    .line 335
    new-instance v0, Landroid/security/trickystore/TrickyStoreService$CustomPatchLevel;

    .line 336
    if-eqz p1, :cond_75

    goto :goto_76

    :cond_75
    move-object p1, v1

    .line 337
    :goto_76
    if-eqz v2, :cond_79

    goto :goto_7a

    :cond_79
    move-object v2, v1

    .line 338
    :goto_7a
    if-eqz v3, :cond_7d

    goto :goto_7e

    :cond_7d
    move-object v3, v1

    :goto_7e
    invoke-direct {v0, p1, v2, v3, v1}, Landroid/security/trickystore/TrickyStoreService$CustomPatchLevel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/security/trickystore/TrickyStoreService;->mCustomPatchLevel:Landroid/security/trickystore/TrickyStoreService$CustomPatchLevel;

    .line 341
    return-void

    .line 321
    :catchall_84
    move-exception p1

    :try_start_85
    invoke-virtual {v0}, Landroid/util/JsonReader;->close()V
    :try_end_88
    .catchall {:try_start_85 .. :try_end_88} :catchall_89

    goto :goto_8d

    :catchall_89
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_8d
    throw p1

    :sswitch_data_8e
    .sparse-switch
        -0x34e38dd1 -> :sswitch_43
        -0x30e15ab8 -> :sswitch_38
        0x179a1 -> :sswitch_2e
        0x2e3af2 -> :sswitch_24
    .end sparse-switch

    :pswitch_data_a0
    .packed-switch 0x0
        :pswitch_65
        :pswitch_60
        :pswitch_5b
        :pswitch_56
    .end packed-switch
.end method

.method private blacklist parsePatchText(Ljava/lang/String;)V
    .registers 13

    .line 277
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 278
    const-string v1, "\n"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v2, p1

    const/4 v3, 0x0

    move v4, v3

    :goto_e
    if-ge v4, v2, :cond_2e

    aget-object v5, p1, v4

    .line 279
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 280
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2b

    const-string v6, "#"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2b

    .line 281
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    :cond_2b
    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    .line 285
    :cond_2e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 286
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_40

    .line 287
    iput-object v2, p0, Landroid/security/trickystore/TrickyStoreService;->mCustomPatchLevel:Landroid/security/trickystore/TrickyStoreService$CustomPatchLevel;

    .line 288
    return-void

    .line 291
    :cond_40
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 292
    array-length v0, p1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_62

    aget-object v0, p1, v3

    const-string v4, "="

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_62

    .line 293
    new-instance v0, Landroid/security/trickystore/TrickyStoreService$CustomPatchLevel;

    aget-object v1, p1, v3

    aget-object v2, p1, v3

    aget-object v4, p1, v3

    aget-object p1, p1, v3

    invoke-direct {v0, v1, v2, v4, p1}, Landroid/security/trickystore/TrickyStoreService$CustomPatchLevel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/security/trickystore/TrickyStoreService;->mCustomPatchLevel:Landroid/security/trickystore/TrickyStoreService$CustomPatchLevel;

    .line 294
    return-void

    .line 297
    :cond_62
    nop

    .line 298
    array-length v0, p1

    move-object v4, v2

    move-object v5, v4

    move-object v6, v5

    move v7, v3

    :goto_68
    if-ge v7, v0, :cond_cb

    aget-object v8, p1, v7

    .line 299
    const/16 v9, 0x3d

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    .line 300
    if-lez v9, :cond_c8

    .line 301
    invoke-virtual {v8, v3, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    .line 302
    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 303
    invoke-virtual {v10}, Ljava/lang/Object;->hashCode()I

    move-result v9

    sparse-switch v9, :sswitch_data_e0

    :cond_91
    goto :goto_bc

    :sswitch_92
    const-string v9, "boot"

    invoke-virtual {v10, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_91

    const/4 v9, 0x2

    goto :goto_bd

    :sswitch_9c
    const-string v9, "all"

    invoke-virtual {v10, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_91

    const/4 v9, 0x3

    goto :goto_bd

    :sswitch_a6
    const-string/jumbo v9, "vendor"

    invoke-virtual {v10, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_91

    move v9, v1

    goto :goto_bd

    :sswitch_b1
    const-string/jumbo v9, "system"

    invoke-virtual {v10, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_91

    move v9, v3

    goto :goto_bd

    :goto_bc
    const/4 v9, -0x1

    :goto_bd
    packed-switch v9, :pswitch_data_f2

    goto :goto_c8

    .line 307
    :pswitch_c1
    move-object v4, v8

    goto :goto_c8

    .line 306
    :pswitch_c3
    move-object v6, v8

    goto :goto_c8

    .line 305
    :pswitch_c5
    move-object v5, v8

    goto :goto_c8

    .line 304
    :pswitch_c7
    move-object v2, v8

    .line 298
    :cond_c8
    :goto_c8
    add-int/lit8 v7, v7, 0x1

    goto :goto_68

    .line 311
    :cond_cb
    new-instance p1, Landroid/security/trickystore/TrickyStoreService$CustomPatchLevel;

    .line 312
    if-eqz v2, :cond_d0

    goto :goto_d1

    :cond_d0
    move-object v2, v4

    .line 313
    :goto_d1
    if-eqz v5, :cond_d4

    goto :goto_d5

    :cond_d4
    move-object v5, v4

    .line 314
    :goto_d5
    if-eqz v6, :cond_d8

    goto :goto_d9

    :cond_d8
    move-object v6, v4

    :goto_d9
    invoke-direct {p1, v2, v5, v6, v4}, Landroid/security/trickystore/TrickyStoreService$CustomPatchLevel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Landroid/security/trickystore/TrickyStoreService;->mCustomPatchLevel:Landroid/security/trickystore/TrickyStoreService$CustomPatchLevel;

    .line 317
    return-void

    nop

    :sswitch_data_e0
    .sparse-switch
        -0x34e38dd1 -> :sswitch_b1
        -0x30e15ab8 -> :sswitch_a6
        0x179a1 -> :sswitch_9c
        0x2e3af2 -> :sswitch_92
    .end sparse-switch

    :pswitch_data_f2
    .packed-switch 0x0
        :pswitch_c7
        :pswitch_c5
        :pswitch_c3
        :pswitch_c1
    .end packed-switch
.end method

.method private blacklist parseTargetsJson(Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 172
    new-instance v0, Landroid/util/JsonReader;

    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V

    .line 173
    :try_start_a
    invoke-virtual {v0}, Landroid/util/JsonReader;->beginArray()V

    .line 174
    :goto_d
    invoke-virtual {v0}, Landroid/util/JsonReader;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_6d

    .line 175
    invoke-virtual {v0}, Landroid/util/JsonReader;->beginObject()V

    .line 176
    nop

    .line 177
    const-string p1, "AUTO"

    const/4 v1, 0x0

    .line 178
    :goto_1a
    invoke-virtual {v0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_43

    .line 179
    invoke-virtual {v0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v2

    .line 180
    const-string/jumbo v3, "package"

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_32

    .line 181
    invoke-virtual {v0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    goto :goto_42

    .line 182
    :cond_32
    const-string v3, "mode"

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 183
    invoke-virtual {v0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object p1

    goto :goto_42

    .line 185
    :cond_3f
    invoke-virtual {v0}, Landroid/util/JsonReader;->skipValue()V

    .line 187
    :goto_42
    goto :goto_1a

    .line 188
    :cond_43
    invoke-virtual {v0}, Landroid/util/JsonReader;->endObject()V
    :try_end_46
    .catchall {:try_start_a .. :try_end_46} :catchall_74

    .line 189
    if-nez v1, :cond_49

    goto :goto_d

    .line 192
    :cond_49
    :try_start_49
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/security/trickystore/TrickyStoreService$Mode;->valueOf(Ljava/lang/String;)Landroid/security/trickystore/TrickyStoreService$Mode;

    move-result-object p1
    :try_end_51
    .catch Ljava/lang/IllegalArgumentException; {:try_start_49 .. :try_end_51} :catch_52
    .catchall {:try_start_49 .. :try_end_51} :catchall_74

    .line 195
    goto :goto_55

    .line 193
    :catch_52
    move-exception p1

    .line 194
    :try_start_53
    sget-object p1, Landroid/security/trickystore/TrickyStoreService$Mode;->AUTO:Landroid/security/trickystore/TrickyStoreService$Mode;

    .line 196
    :goto_55
    iget-object v2, p0, Landroid/security/trickystore/TrickyStoreService;->mPackageModes:Ljava/util/Map;

    invoke-interface {v2, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    sget-object v2, Landroid/security/trickystore/TrickyStoreService$Mode;->LEAF_HACK:Landroid/security/trickystore/TrickyStoreService$Mode;

    if-ne p1, v2, :cond_63

    iget-object v2, p0, Landroid/security/trickystore/TrickyStoreService;->mHackPackages:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 198
    :cond_63
    sget-object v2, Landroid/security/trickystore/TrickyStoreService$Mode;->GENERATE:Landroid/security/trickystore/TrickyStoreService$Mode;

    if-ne p1, v2, :cond_6c

    iget-object p1, p0, Landroid/security/trickystore/TrickyStoreService;->mGeneratePackages:Ljava/util/Set;

    invoke-interface {p1, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 199
    :cond_6c
    goto :goto_d

    .line 200
    :cond_6d
    invoke-virtual {v0}, Landroid/util/JsonReader;->endArray()V
    :try_end_70
    .catchall {:try_start_53 .. :try_end_70} :catchall_74

    .line 201
    invoke-virtual {v0}, Landroid/util/JsonReader;->close()V

    .line 202
    return-void

    .line 172
    :catchall_74
    move-exception p1

    :try_start_75
    invoke-virtual {v0}, Landroid/util/JsonReader;->close()V
    :try_end_78
    .catchall {:try_start_75 .. :try_end_78} :catchall_79

    goto :goto_7d

    :catchall_79
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_7d
    throw p1
.end method

.method private blacklist parseTargetsText(Ljava/lang/String;)V
    .registers 8

    .line 151
    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_9
    if-ge v2, v0, :cond_70

    aget-object v3, p1, v2

    .line 152
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 153
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_6d

    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 154
    goto :goto_6d

    .line 157
    :cond_20
    const-string v4, "!"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_43

    .line 158
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 159
    iget-object v4, p0, Landroid/security/trickystore/TrickyStoreService;->mGeneratePackages:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 160
    iget-object v4, p0, Landroid/security/trickystore/TrickyStoreService;->mPackageModes:Ljava/util/Map;

    sget-object v5, Landroid/security/trickystore/TrickyStoreService$Mode;->GENERATE:Landroid/security/trickystore/TrickyStoreService$Mode;

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    goto :goto_6d

    :cond_43
    const-string v4, "?"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_66

    .line 162
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 163
    iget-object v4, p0, Landroid/security/trickystore/TrickyStoreService;->mHackPackages:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 164
    iget-object v4, p0, Landroid/security/trickystore/TrickyStoreService;->mPackageModes:Ljava/util/Map;

    sget-object v5, Landroid/security/trickystore/TrickyStoreService$Mode;->LEAF_HACK:Landroid/security/trickystore/TrickyStoreService$Mode;

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    goto :goto_6d

    .line 166
    :cond_66
    iget-object v4, p0, Landroid/security/trickystore/TrickyStoreService;->mPackageModes:Ljava/util/Map;

    sget-object v5, Landroid/security/trickystore/TrickyStoreService$Mode;->AUTO:Landroid/security/trickystore/TrickyStoreService$Mode;

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    :cond_6d
    :goto_6d
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 169
    :cond_70
    return-void
.end method


# virtual methods
.method public blacklist getCustomPatchLevel()Landroid/security/trickystore/TrickyStoreService$CustomPatchLevel;
    .registers 2

    .line 492
    invoke-virtual {p0}, Landroid/security/trickystore/TrickyStoreService;->refreshPatchLevel()V

    .line 493
    iget-object v0, p0, Landroid/security/trickystore/TrickyStoreService;->mCustomPatchLevel:Landroid/security/trickystore/TrickyStoreService$CustomPatchLevel;

    return-object v0
.end method

.method public blacklist getKeyBoxManager()Landroid/security/trickystore/KeyBoxManager;
    .registers 2

    .line 487
    invoke-virtual {p0}, Landroid/security/trickystore/TrickyStoreService;->refreshKeyBox()V

    .line 488
    iget-object v0, p0, Landroid/security/trickystore/TrickyStoreService;->mKeyBoxManager:Landroid/security/trickystore/KeyBoxManager;

    return-object v0
.end method

.method public blacklist hasKeyboxes()Z
    .registers 2

    .line 497
    iget-object v0, p0, Landroid/security/trickystore/TrickyStoreService;->mKeyBoxManager:Landroid/security/trickystore/KeyBoxManager;

    invoke-virtual {v0}, Landroid/security/trickystore/KeyBoxManager;->hasKeyboxes()Z

    move-result v0

    return v0
.end method

.method public blacklist initialize()V
    .registers 4

    .line 93
    invoke-virtual {p0}, Landroid/security/trickystore/TrickyStoreService;->refreshTargets()V

    .line 94
    invoke-virtual {p0}, Landroid/security/trickystore/TrickyStoreService;->refreshKeyBox()V

    .line 95
    invoke-virtual {p0}, Landroid/security/trickystore/TrickyStoreService;->refreshPatchLevel()V

    .line 98
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Landroid/security/trickystore/TrickyStoreService$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Landroid/security/trickystore/TrickyStoreService$$ExternalSyntheticLambda2;-><init>(Landroid/security/trickystore/TrickyStoreService;)V

    const-string v2, "TrickyStore-TeeInit"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 104
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 105
    const-string v0, "TrickyStoreService"

    const-string v1, "TrickyStoreService initialized"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    return-void
.end method

.method public blacklist isTeeBroken()Z
    .registers 3

    .line 505
    invoke-direct {p0}, Landroid/security/trickystore/TrickyStoreService;->ensureTeeStatus()V

    .line 506
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v1, p0, Landroid/security/trickystore/TrickyStoreService;->mTeeBroken:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public blacklist needGenerate(I[Ljava/lang/String;)Z
    .registers 8

    .line 475
    const/4 p1, 0x0

    if-nez p2, :cond_4

    return p1

    .line 476
    :cond_4
    invoke-virtual {p0}, Landroid/security/trickystore/TrickyStoreService;->refreshTargets()V

    .line 477
    invoke-direct {p0}, Landroid/security/trickystore/TrickyStoreService;->ensureTeeStatus()V

    .line 478
    array-length v0, p2

    move v1, p1

    :goto_c
    if-ge v1, v0, :cond_2e

    aget-object v2, p2, v1

    .line 479
    iget-object v3, p0, Landroid/security/trickystore/TrickyStoreService;->mPackageModes:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/security/trickystore/TrickyStoreService$Mode;

    .line 480
    sget-object v3, Landroid/security/trickystore/TrickyStoreService$Mode;->GENERATE:Landroid/security/trickystore/TrickyStoreService$Mode;

    const/4 v4, 0x1

    if-ne v2, v3, :cond_1e

    return v4

    .line 481
    :cond_1e
    sget-object v3, Landroid/security/trickystore/TrickyStoreService$Mode;->AUTO:Landroid/security/trickystore/TrickyStoreService$Mode;

    if-ne v2, v3, :cond_2b

    iget-object v2, p0, Landroid/security/trickystore/TrickyStoreService;->mTeeBroken:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2b

    return v4

    .line 478
    :cond_2b
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 483
    :cond_2e
    return p1
.end method

.method public blacklist needHack(I[Ljava/lang/String;)Z
    .registers 8

    .line 463
    const/4 p1, 0x0

    if-nez p2, :cond_4

    return p1

    .line 464
    :cond_4
    invoke-virtual {p0}, Landroid/security/trickystore/TrickyStoreService;->refreshTargets()V

    .line 465
    invoke-direct {p0}, Landroid/security/trickystore/TrickyStoreService;->ensureTeeStatus()V

    .line 466
    array-length v0, p2

    move v1, p1

    :goto_c
    if-ge v1, v0, :cond_2e

    aget-object v2, p2, v1

    .line 467
    iget-object v3, p0, Landroid/security/trickystore/TrickyStoreService;->mPackageModes:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/security/trickystore/TrickyStoreService$Mode;

    .line 468
    sget-object v3, Landroid/security/trickystore/TrickyStoreService$Mode;->LEAF_HACK:Landroid/security/trickystore/TrickyStoreService$Mode;

    const/4 v4, 0x1

    if-ne v2, v3, :cond_1e

    return v4

    .line 469
    :cond_1e
    sget-object v3, Landroid/security/trickystore/TrickyStoreService$Mode;->AUTO:Landroid/security/trickystore/TrickyStoreService$Mode;

    if-ne v2, v3, :cond_2b

    iget-object v2, p0, Landroid/security/trickystore/TrickyStoreService;->mTeeBroken:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_2b

    return v4

    .line 466
    :cond_2b
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 471
    :cond_2e
    return p1
.end method

.method public blacklist refreshKeyBox()V
    .registers 6

    .line 205
    new-instance v0, Landroid/security/trickystore/TrickyStoreService$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/security/trickystore/TrickyStoreService$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {p0, v0}, Landroid/security/trickystore/TrickyStoreService;->fetchFromAms(Landroid/security/trickystore/TrickyStoreService$Fetcher;)Ljava/lang/String;

    move-result-object v0

    .line 206
    const/4 v1, 0x0

    if-eqz v0, :cond_84

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_13

    goto :goto_84

    .line 211
    :cond_13
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 212
    iget-object v3, p0, Landroid/security/trickystore/TrickyStoreService;->mLastKeyboxFingerprint:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3f

    .line 213
    return-void

    .line 215
    :cond_3f
    invoke-direct {p0, v0}, Landroid/security/trickystore/TrickyStoreService;->decodeKeybox(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 216
    const-string v3, "TrickyStoreService"

    if-nez v0, :cond_4d

    .line 217
    const-string v0, "Keybox payload not recognised as XML or base64-encoded XML"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    return-void

    .line 221
    :cond_4d
    :try_start_4d
    invoke-direct {p0, v0}, Landroid/security/trickystore/TrickyStoreService;->isValidKeyboxXml(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5b

    .line 222
    iput-object v1, p0, Landroid/security/trickystore/TrickyStoreService;->mLastKeyboxFingerprint:Ljava/lang/String;

    .line 223
    const-string v0, "Keybox XML failed structural validation (missing keys or identifier)"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    return-void

    .line 226
    :cond_5b
    invoke-direct {p0, v0}, Landroid/security/trickystore/TrickyStoreService;->checkKeyboxRevocation(Ljava/lang/String;)V

    .line 227
    iget-object v4, p0, Landroid/security/trickystore/TrickyStoreService;->mKeyBoxManager:Landroid/security/trickystore/KeyBoxManager;

    invoke-virtual {v4, v0}, Landroid/security/trickystore/KeyBoxManager;->parseKeybox(Ljava/lang/String;)V

    .line 228
    iget-object v0, p0, Landroid/security/trickystore/TrickyStoreService;->mKeyBoxManager:Landroid/security/trickystore/KeyBoxManager;

    invoke-virtual {v0}, Landroid/security/trickystore/KeyBoxManager;->hasKeyboxes()Z

    move-result v0

    if-eqz v0, :cond_73

    .line 229
    iput-object v2, p0, Landroid/security/trickystore/TrickyStoreService;->mLastKeyboxFingerprint:Ljava/lang/String;

    .line 230
    const-string v0, "Keybox updated successfully"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7a

    .line 232
    :cond_73
    iput-object v1, p0, Landroid/security/trickystore/TrickyStoreService;->mLastKeyboxFingerprint:Ljava/lang/String;

    .line 233
    const-string v0, "Keybox parse produced no usable entries"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_7a} :catch_7b

    .line 238
    :goto_7a
    goto :goto_83

    .line 235
    :catch_7b
    move-exception v0

    .line 236
    iput-object v1, p0, Landroid/security/trickystore/TrickyStoreService;->mLastKeyboxFingerprint:Ljava/lang/String;

    .line 237
    const-string v1, "Failed to update keybox"

    invoke-static {v3, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 239
    :goto_83
    return-void

    .line 207
    :cond_84
    :goto_84
    iget-object v0, p0, Landroid/security/trickystore/TrickyStoreService;->mKeyBoxManager:Landroid/security/trickystore/KeyBoxManager;

    invoke-virtual {v0}, Landroid/security/trickystore/KeyBoxManager;->clear()V

    .line 208
    iput-object v1, p0, Landroid/security/trickystore/TrickyStoreService;->mLastKeyboxFingerprint:Ljava/lang/String;

    .line 209
    return-void
.end method

.method public blacklist refreshPatchLevel()V
    .registers 4

    .line 258
    new-instance v0, Landroid/security/trickystore/TrickyStoreService$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Landroid/security/trickystore/TrickyStoreService$$ExternalSyntheticLambda3;-><init>()V

    invoke-direct {p0, v0}, Landroid/security/trickystore/TrickyStoreService;->fetchFromAms(Landroid/security/trickystore/TrickyStoreService$Fetcher;)Ljava/lang/String;

    move-result-object v0

    .line 259
    if-eqz v0, :cond_30

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_12

    goto :goto_30

    .line 265
    :cond_12
    :try_start_12
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 266
    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 267
    invoke-direct {p0, v0}, Landroid/security/trickystore/TrickyStoreService;->parsePatchJson(Ljava/lang/String;)V

    goto :goto_26

    .line 269
    :cond_23
    invoke-direct {p0, v0}, Landroid/security/trickystore/TrickyStoreService;->parsePatchText(Ljava/lang/String;)V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_26} :catch_27

    .line 273
    :goto_26
    goto :goto_2f

    .line 271
    :catch_27
    move-exception v0

    .line 272
    const-string v1, "TrickyStoreService"

    const-string v2, "Failed to parse patch level"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 274
    :goto_2f
    return-void

    .line 260
    :cond_30
    :goto_30
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/security/trickystore/TrickyStoreService;->mCustomPatchLevel:Landroid/security/trickystore/TrickyStoreService$CustomPatchLevel;

    .line 261
    return-void
.end method

.method public blacklist refreshTargets()V
    .registers 4

    .line 127
    const-string v0, "TrickyStoreService"

    new-instance v1, Landroid/security/trickystore/TrickyStoreService$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Landroid/security/trickystore/TrickyStoreService$$ExternalSyntheticLambda4;-><init>()V

    invoke-direct {p0, v1}, Landroid/security/trickystore/TrickyStoreService;->fetchFromAms(Landroid/security/trickystore/TrickyStoreService$Fetcher;)Ljava/lang/String;

    move-result-object v1

    .line 128
    iget-object v2, p0, Landroid/security/trickystore/TrickyStoreService;->mHackPackages:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 129
    iget-object v2, p0, Landroid/security/trickystore/TrickyStoreService;->mGeneratePackages:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 130
    iget-object v2, p0, Landroid/security/trickystore/TrickyStoreService;->mPackageModes:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 132
    if-eqz v1, :cond_78

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_23

    goto :goto_78

    .line 136
    :cond_23
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 138
    :try_start_27
    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3d

    const-string/jumbo v2, "{"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_39

    goto :goto_3d

    .line 141
    :cond_39
    invoke-direct {p0, v1}, Landroid/security/trickystore/TrickyStoreService;->parseTargetsText(Ljava/lang/String;)V

    goto :goto_40

    .line 139
    :cond_3d
    :goto_3d
    invoke-direct {p0, v1}, Landroid/security/trickystore/TrickyStoreService;->parseTargetsJson(Ljava/lang/String;)V

    .line 143
    :goto_40
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Updated target packages: hack="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/security/trickystore/TrickyStoreService;->mHackPackages:Ljava/util/Set;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", generate="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/security/trickystore/TrickyStoreService;->mGeneratePackages:Ljava/util/Set;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", modes="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/security/trickystore/TrickyStoreService;->mPackageModes:Ljava/util/Map;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_70} :catch_71

    .line 147
    goto :goto_77

    .line 145
    :catch_71
    move-exception v1

    .line 146
    const-string v2, "Failed to parse target packages"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 148
    :goto_77
    return-void

    .line 133
    :cond_78
    :goto_78
    return-void
.end method
