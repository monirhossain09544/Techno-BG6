.class public Landroid/net/SSLCertificateSocketFactory;
.super Ljavax/net/ssl/SSLSocketFactory;
.source "SSLCertificateSocketFactory.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final greylist INSECURE_TRUST_MANAGER:[Ljavax/net/ssl/TrustManager;

.field private static final greylist-max-p TAG:Ljava/lang/String; = "SSLCertificateSocketFactory"


# instance fields
.field private greylist-max-r mAlpnProtocols:[B

.field private greylist-max-r mChannelIdPrivateKey:Ljava/security/PrivateKey;

.field private final greylist mHandshakeTimeoutMillis:I

.field private greylist mInsecureFactory:Ljavax/net/ssl/SSLSocketFactory;

.field private greylist-max-r mKeyManagers:[Ljavax/net/ssl/KeyManager;

.field private greylist-max-r mNpnProtocols:[B

.field private final greylist mSecure:Z

.field private greylist mSecureFactory:Ljavax/net/ssl/SSLSocketFactory;

.field private final greylist-max-r mSessionCache:Lcom/android/org/conscrypt/SSLClientSessionCache;

.field private greylist-max-r mTrustManagers:[Ljavax/net/ssl/TrustManager;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 106
    const/4 v0, 0x1

    new-array v0, v0, [Ljavax/net/ssl/TrustManager;

    new-instance v1, Landroid/net/SSLCertificateSocketFactory$1;

    invoke-direct {v1}, Landroid/net/SSLCertificateSocketFactory$1;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Landroid/net/SSLCertificateSocketFactory;->INSECURE_TRUST_MANAGER:[Ljavax/net/ssl/TrustManager;

    return-void
.end method

.method public constructor whitelist <init>(I)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 139
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Landroid/net/SSLCertificateSocketFactory;-><init>(ILandroid/net/SSLSessionCache;Z)V

    .line 140
    return-void
.end method

.method private constructor greylist <init>(ILandroid/net/SSLSessionCache;Z)V
    .registers 5

    .line 144
    invoke-direct {p0}, Ljavax/net/ssl/SSLSocketFactory;-><init>()V

    .line 114
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/SSLCertificateSocketFactory;->mInsecureFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 116
    iput-object v0, p0, Landroid/net/SSLCertificateSocketFactory;->mSecureFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 118
    iput-object v0, p0, Landroid/net/SSLCertificateSocketFactory;->mTrustManagers:[Ljavax/net/ssl/TrustManager;

    .line 120
    iput-object v0, p0, Landroid/net/SSLCertificateSocketFactory;->mKeyManagers:[Ljavax/net/ssl/KeyManager;

    .line 122
    iput-object v0, p0, Landroid/net/SSLCertificateSocketFactory;->mNpnProtocols:[B

    .line 124
    iput-object v0, p0, Landroid/net/SSLCertificateSocketFactory;->mAlpnProtocols:[B

    .line 126
    iput-object v0, p0, Landroid/net/SSLCertificateSocketFactory;->mChannelIdPrivateKey:Ljava/security/PrivateKey;

    .line 145
    iput p1, p0, Landroid/net/SSLCertificateSocketFactory;->mHandshakeTimeoutMillis:I

    .line 146
    if-nez p2, :cond_17

    goto :goto_19

    :cond_17
    iget-object v0, p2, Landroid/net/SSLSessionCache;->mSessionCache:Lcom/android/org/conscrypt/SSLClientSessionCache;

    :goto_19
    iput-object v0, p0, Landroid/net/SSLCertificateSocketFactory;->mSessionCache:Lcom/android/org/conscrypt/SSLClientSessionCache;

    .line 147
    iput-boolean p3, p0, Landroid/net/SSLCertificateSocketFactory;->mSecure:Z

    .line 148
    return-void
.end method

.method private static greylist-max-r castToOpenSSLSocket(Ljava/net/Socket;)Lcom/android/org/conscrypt/OpenSSLSocketImpl;
    .registers 4

    .line 475
    instance-of v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;

    if-eqz v0, :cond_7

    .line 480
    check-cast p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;

    return-object p0

    .line 476
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Socket not created by this factory: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist getDefault(I)Ljavax/net/SocketFactory;
    .registers 4

    .line 158
    new-instance v0, Landroid/net/SSLCertificateSocketFactory;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Landroid/net/SSLCertificateSocketFactory;-><init>(ILandroid/net/SSLSessionCache;Z)V

    return-object v0
.end method

.method public static whitelist getDefault(ILandroid/net/SSLSessionCache;)Ljavax/net/ssl/SSLSocketFactory;
    .registers 4

    .line 171
    new-instance v0, Landroid/net/SSLCertificateSocketFactory;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Landroid/net/SSLCertificateSocketFactory;-><init>(ILandroid/net/SSLSessionCache;Z)V

    return-object v0
.end method

.method private declared-synchronized greylist getDelegate()Ljavax/net/ssl/SSLSocketFactory;
    .registers 3

    monitor-enter p0

    .line 276
    :try_start_1
    iget-boolean v0, p0, Landroid/net/SSLCertificateSocketFactory;->mSecure:Z

    if-eqz v0, :cond_1e

    invoke-static {}, Landroid/net/SSLCertificateSocketFactory;->isSslCheckRelaxed()Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_1e

    .line 287
    :cond_c
    iget-object v0, p0, Landroid/net/SSLCertificateSocketFactory;->mSecureFactory:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v0, :cond_1a

    .line 288
    iget-object v0, p0, Landroid/net/SSLCertificateSocketFactory;->mKeyManagers:[Ljavax/net/ssl/KeyManager;

    iget-object v1, p0, Landroid/net/SSLCertificateSocketFactory;->mTrustManagers:[Ljavax/net/ssl/TrustManager;

    invoke-direct {p0, v0, v1}, Landroid/net/SSLCertificateSocketFactory;->makeSocketFactory([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    iput-object v0, p0, Landroid/net/SSLCertificateSocketFactory;->mSecureFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 290
    :cond_1a
    iget-object v0, p0, Landroid/net/SSLCertificateSocketFactory;->mSecureFactory:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_43

    monitor-exit p0

    return-object v0

    .line 277
    :cond_1e
    :goto_1e
    :try_start_1e
    iget-object v0, p0, Landroid/net/SSLCertificateSocketFactory;->mInsecureFactory:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v0, :cond_3f

    .line 278
    iget-boolean v0, p0, Landroid/net/SSLCertificateSocketFactory;->mSecure:Z

    if-eqz v0, :cond_2e

    .line 279
    const-string v0, "SSLCertificateSocketFactory"

    const-string v1, "*** BYPASSING SSL SECURITY CHECKS (socket.relaxsslcheck=yes) ***"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_35

    .line 281
    :cond_2e
    const-string v0, "SSLCertificateSocketFactory"

    const-string v1, "Bypassing SSL security checks at caller\'s request"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    :goto_35
    iget-object v0, p0, Landroid/net/SSLCertificateSocketFactory;->mKeyManagers:[Ljavax/net/ssl/KeyManager;

    sget-object v1, Landroid/net/SSLCertificateSocketFactory;->INSECURE_TRUST_MANAGER:[Ljavax/net/ssl/TrustManager;

    invoke-direct {p0, v0, v1}, Landroid/net/SSLCertificateSocketFactory;->makeSocketFactory([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    iput-object v0, p0, Landroid/net/SSLCertificateSocketFactory;->mInsecureFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 285
    :cond_3f
    iget-object v0, p0, Landroid/net/SSLCertificateSocketFactory;->mInsecureFactory:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_41
    .catchall {:try_start_1e .. :try_end_41} :catchall_43

    monitor-exit p0

    return-object v0

    .line 275
    :catchall_43
    move-exception v0

    :try_start_44
    monitor-exit p0
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_43

    throw v0
.end method

.method public static greylist getHttpSocketFactory(ILandroid/net/SSLSessionCache;)Lorg/apache/http/conn/ssl/SSLSocketFactory;
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 209
    new-instance v0, Lorg/apache/http/conn/ssl/SSLSocketFactory;

    new-instance v1, Landroid/net/SSLCertificateSocketFactory;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, Landroid/net/SSLCertificateSocketFactory;-><init>(ILandroid/net/SSLSessionCache;Z)V

    invoke-direct {v0, v1}, Lorg/apache/http/conn/ssl/SSLSocketFactory;-><init>(Ljavax/net/ssl/SSLSocketFactory;)V

    return-object v0
.end method

.method public static whitelist getInsecure(ILandroid/net/SSLSessionCache;)Ljavax/net/ssl/SSLSocketFactory;
    .registers 4

    .line 187
    new-instance v0, Landroid/net/SSLCertificateSocketFactory;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroid/net/SSLCertificateSocketFactory;-><init>(ILandroid/net/SSLSessionCache;Z)V

    return-object v0
.end method

.method private static greylist isSslCheckRelaxed()Z
    .registers 2

    .line 269
    sget-boolean v0, Lcom/android/internal/os/RoSystemProperties;->DEBUGGABLE:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    .line 270
    const-string/jumbo v0, "socket.relaxsslcheck"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v1, 0x1

    goto :goto_11

    :cond_10
    nop

    .line 269
    :goto_11
    return v1
.end method

.method private greylist-max-r makeSocketFactory([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;)Ljavax/net/ssl/SSLSocketFactory;
    .registers 5

    .line 256
    :try_start_0
    const-string v0, "TLS"

    const-string v1, "AndroidOpenSSL"

    invoke-static {v0, v1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    .line 257
    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 258
    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getClientSessionContext()Ljavax/net/ssl/SSLSessionContext;

    move-result-object p1

    check-cast p1, Lcom/android/org/conscrypt/ClientSessionContext;

    iget-object p2, p0, Landroid/net/SSLCertificateSocketFactory;->mSessionCache:Lcom/android/org/conscrypt/SSLClientSessionCache;

    .line 259
    invoke-virtual {p1, p2}, Lcom/android/org/conscrypt/ClientSessionContext;->setPersistentCache(Lcom/android/org/conscrypt/SSLClientSessionCache;)V

    .line 260
    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object p1
    :try_end_1b
    .catch Ljava/security/KeyManagementException; {:try_start_0 .. :try_end_1b} :catch_1c
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_1b} :catch_1c
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_1b} :catch_1c

    return-object p1

    .line 261
    :catch_1c
    move-exception p1

    .line 262
    const-string p2, "SSLCertificateSocketFactory"

    invoke-static {p2, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 263
    invoke-static {}, Ljavax/net/ssl/SSLSocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object p1

    check-cast p1, Ljavax/net/ssl/SSLSocketFactory;

    return-object p1
.end method

.method public static varargs blacklist toLengthPrefixedList([[B)[B
    .registers 11

    .line 358
    array-length v0, p0

    if-eqz v0, :cond_59

    .line 361
    nop

    .line 362
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_8
    if-ge v2, v0, :cond_36

    aget-object v4, p0, v2

    .line 363
    array-length v5, v4

    if-eqz v5, :cond_1b

    array-length v5, v4

    const/16 v6, 0xff

    if-gt v5, v6, :cond_1b

    .line 366
    array-length v4, v4

    add-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    .line 362
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 364
    :cond_1b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "s.length == 0 || s.length > 255: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    array-length v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 368
    :cond_36
    new-array v0, v3, [B

    .line 369
    nop

    .line 370
    array-length v2, p0

    move v3, v1

    move v4, v3

    :goto_3c
    if-ge v3, v2, :cond_58

    aget-object v5, p0, v3

    .line 371
    add-int/lit8 v6, v4, 0x1

    array-length v7, v5

    int-to-byte v7, v7

    aput-byte v7, v0, v4

    .line 372
    array-length v4, v5

    move v7, v1

    :goto_48
    if-ge v7, v4, :cond_54

    aget-byte v8, v5, v7

    .line 373
    add-int/lit8 v9, v6, 0x1

    aput-byte v8, v0, v6

    .line 372
    add-int/lit8 v7, v7, 0x1

    move v6, v9

    goto :goto_48

    .line 370
    :cond_54
    add-int/lit8 v3, v3, 0x1

    move v4, v6

    goto :goto_3c

    .line 376
    :cond_58
    return-object v0

    .line 359
    :cond_59
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "items.length == 0"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static greylist verifyHostname(Ljava/net/Socket;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 232
    instance-of v0, p0, Ljavax/net/ssl/SSLSocket;

    if-eqz v0, :cond_42

    .line 236
    invoke-static {}, Landroid/net/SSLCertificateSocketFactory;->isSslCheckRelaxed()Z

    move-result v0

    if-nez v0, :cond_41

    .line 239
    check-cast p0, Ljavax/net/ssl/SSLSocket;

    .line 240
    invoke-virtual {p0}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    .line 242
    invoke-virtual {p0}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object p0

    .line 243
    if-eqz p0, :cond_39

    .line 246
    invoke-static {}, Ljavax/net/ssl/HttpsURLConnection;->getDefaultHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result p0

    if-eqz p0, :cond_20

    goto :goto_41

    .line 247
    :cond_20
    new-instance p0, Ljavax/net/ssl/SSLPeerUnverifiedException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot verify hostname: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 244
    :cond_39
    new-instance p0, Ljavax/net/ssl/SSLException;

    const-string p1, "Cannot verify SSL socket without session"

    invoke-direct {p0, p1}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 250
    :cond_41
    :goto_41
    return-void

    .line 233
    :cond_42
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Attempt to verify non-SSL socket"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public whitelist test-api createSocket()Ljava/net/Socket;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 515
    invoke-direct {p0}, Landroid/net/SSLCertificateSocketFactory;->getDelegate()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v0

    check-cast v0, Lcom/android/org/conscrypt/OpenSSLSocketImpl;

    .line 516
    iget-object v1, p0, Landroid/net/SSLCertificateSocketFactory;->mNpnProtocols:[B

    invoke-virtual {v0, v1}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->setNpnProtocols([B)V

    .line 517
    iget-object v1, p0, Landroid/net/SSLCertificateSocketFactory;->mAlpnProtocols:[B

    invoke-virtual {v0, v1}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->setAlpnProtocols([B)V

    .line 518
    iget v1, p0, Landroid/net/SSLCertificateSocketFactory;->mHandshakeTimeoutMillis:I

    invoke-virtual {v0, v1}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->setHandshakeTimeout(I)V

    .line 519
    iget-object v1, p0, Landroid/net/SSLCertificateSocketFactory;->mChannelIdPrivateKey:Ljava/security/PrivateKey;

    invoke-virtual {v0, v1}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->setChannelIdPrivateKey(Ljava/security/PrivateKey;)V

    .line 520
    return-object v0
.end method

.method public whitelist test-api createSocket(Ljava/lang/String;I)Ljava/net/Socket;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 598
    invoke-direct {p0}, Landroid/net/SSLCertificateSocketFactory;->getDelegate()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object p2

    check-cast p2, Lcom/android/org/conscrypt/OpenSSLSocketImpl;

    .line 599
    iget-object v0, p0, Landroid/net/SSLCertificateSocketFactory;->mNpnProtocols:[B

    invoke-virtual {p2, v0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->setNpnProtocols([B)V

    .line 600
    iget-object v0, p0, Landroid/net/SSLCertificateSocketFactory;->mAlpnProtocols:[B

    invoke-virtual {p2, v0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->setAlpnProtocols([B)V

    .line 601
    iget v0, p0, Landroid/net/SSLCertificateSocketFactory;->mHandshakeTimeoutMillis:I

    invoke-virtual {p2, v0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->setHandshakeTimeout(I)V

    .line 602
    iget-object v0, p0, Landroid/net/SSLCertificateSocketFactory;->mChannelIdPrivateKey:Ljava/security/PrivateKey;

    invoke-virtual {p2, v0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->setChannelIdPrivateKey(Ljava/security/PrivateKey;)V

    .line 603
    iget-boolean v0, p0, Landroid/net/SSLCertificateSocketFactory;->mSecure:Z

    if-eqz v0, :cond_25

    .line 604
    invoke-static {p2, p1}, Landroid/net/SSLCertificateSocketFactory;->verifyHostname(Ljava/net/Socket;Ljava/lang/String;)V

    .line 606
    :cond_25
    return-object p2
.end method

.method public whitelist test-api createSocket(Ljava/lang/String;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 575
    invoke-direct {p0}, Landroid/net/SSLCertificateSocketFactory;->getDelegate()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/lang/String;ILjava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object p2

    check-cast p2, Lcom/android/org/conscrypt/OpenSSLSocketImpl;

    .line 577
    iget-object p3, p0, Landroid/net/SSLCertificateSocketFactory;->mNpnProtocols:[B

    invoke-virtual {p2, p3}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->setNpnProtocols([B)V

    .line 578
    iget-object p3, p0, Landroid/net/SSLCertificateSocketFactory;->mAlpnProtocols:[B

    invoke-virtual {p2, p3}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->setAlpnProtocols([B)V

    .line 579
    iget p3, p0, Landroid/net/SSLCertificateSocketFactory;->mHandshakeTimeoutMillis:I

    invoke-virtual {p2, p3}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->setHandshakeTimeout(I)V

    .line 580
    iget-object p3, p0, Landroid/net/SSLCertificateSocketFactory;->mChannelIdPrivateKey:Ljava/security/PrivateKey;

    invoke-virtual {p2, p3}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->setChannelIdPrivateKey(Ljava/security/PrivateKey;)V

    .line 581
    iget-boolean p3, p0, Landroid/net/SSLCertificateSocketFactory;->mSecure:Z

    if-eqz p3, :cond_25

    .line 582
    invoke-static {p2, p1}, Landroid/net/SSLCertificateSocketFactory;->verifyHostname(Ljava/net/Socket;Ljava/lang/String;)V

    .line 584
    :cond_25
    return-object p2
.end method

.method public whitelist test-api createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 555
    invoke-direct {p0}, Landroid/net/SSLCertificateSocketFactory;->getDelegate()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object p1

    check-cast p1, Lcom/android/org/conscrypt/OpenSSLSocketImpl;

    .line 556
    iget-object p2, p0, Landroid/net/SSLCertificateSocketFactory;->mNpnProtocols:[B

    invoke-virtual {p1, p2}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->setNpnProtocols([B)V

    .line 557
    iget-object p2, p0, Landroid/net/SSLCertificateSocketFactory;->mAlpnProtocols:[B

    invoke-virtual {p1, p2}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->setAlpnProtocols([B)V

    .line 558
    iget p2, p0, Landroid/net/SSLCertificateSocketFactory;->mHandshakeTimeoutMillis:I

    invoke-virtual {p1, p2}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->setHandshakeTimeout(I)V

    .line 559
    iget-object p2, p0, Landroid/net/SSLCertificateSocketFactory;->mChannelIdPrivateKey:Ljava/security/PrivateKey;

    invoke-virtual {p1, p2}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->setChannelIdPrivateKey(Ljava/security/PrivateKey;)V

    .line 560
    return-object p1
.end method

.method public whitelist test-api createSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 535
    invoke-direct {p0}, Landroid/net/SSLCertificateSocketFactory;->getDelegate()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object p1

    check-cast p1, Lcom/android/org/conscrypt/OpenSSLSocketImpl;

    .line 537
    iget-object p2, p0, Landroid/net/SSLCertificateSocketFactory;->mNpnProtocols:[B

    invoke-virtual {p1, p2}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->setNpnProtocols([B)V

    .line 538
    iget-object p2, p0, Landroid/net/SSLCertificateSocketFactory;->mAlpnProtocols:[B

    invoke-virtual {p1, p2}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->setAlpnProtocols([B)V

    .line 539
    iget p2, p0, Landroid/net/SSLCertificateSocketFactory;->mHandshakeTimeoutMillis:I

    invoke-virtual {p1, p2}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->setHandshakeTimeout(I)V

    .line 540
    iget-object p2, p0, Landroid/net/SSLCertificateSocketFactory;->mChannelIdPrivateKey:Ljava/security/PrivateKey;

    invoke-virtual {p1, p2}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->setChannelIdPrivateKey(Ljava/security/PrivateKey;)V

    .line 541
    return-object p1
.end method

.method public whitelist test-api createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 494
    invoke-direct {p0}, Landroid/net/SSLCertificateSocketFactory;->getDelegate()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object p1

    check-cast p1, Lcom/android/org/conscrypt/OpenSSLSocketImpl;

    .line 495
    iget-object p3, p0, Landroid/net/SSLCertificateSocketFactory;->mNpnProtocols:[B

    invoke-virtual {p1, p3}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->setNpnProtocols([B)V

    .line 496
    iget-object p3, p0, Landroid/net/SSLCertificateSocketFactory;->mAlpnProtocols:[B

    invoke-virtual {p1, p3}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->setAlpnProtocols([B)V

    .line 497
    iget p3, p0, Landroid/net/SSLCertificateSocketFactory;->mHandshakeTimeoutMillis:I

    invoke-virtual {p1, p3}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->setHandshakeTimeout(I)V

    .line 498
    iget-object p3, p0, Landroid/net/SSLCertificateSocketFactory;->mChannelIdPrivateKey:Ljava/security/PrivateKey;

    invoke-virtual {p1, p3}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->setChannelIdPrivateKey(Ljava/security/PrivateKey;)V

    .line 499
    iget-boolean p3, p0, Landroid/net/SSLCertificateSocketFactory;->mSecure:Z

    if-eqz p3, :cond_25

    .line 500
    invoke-static {p1, p2}, Landroid/net/SSLCertificateSocketFactory;->verifyHostname(Ljava/net/Socket;Ljava/lang/String;)V

    .line 502
    :cond_25
    return-object p1
.end method

.method public greylist-max-p getAlpnSelectedProtocol(Ljava/net/Socket;)[B
    .registers 2

    .line 403
    invoke-static {p1}, Landroid/net/SSLCertificateSocketFactory;->castToOpenSSLSocket(Ljava/net/Socket;)Lcom/android/org/conscrypt/OpenSSLSocketImpl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->getAlpnSelectedProtocol()[B

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api getDefaultCipherSuites()[Ljava/lang/String;
    .registers 2

    .line 611
    invoke-direct {p0}, Landroid/net/SSLCertificateSocketFactory;->getDelegate()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocketFactory;->getDefaultCipherSuites()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getNpnSelectedProtocol(Ljava/net/Socket;)[B
    .registers 2

    .line 388
    invoke-static {p1}, Landroid/net/SSLCertificateSocketFactory;->castToOpenSSLSocket(Ljava/net/Socket;)Lcom/android/org/conscrypt/OpenSSLSocketImpl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->getNpnSelectedProtocol()[B

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api getSupportedCipherSuites()[Ljava/lang/String;
    .registers 2

    .line 616
    invoke-direct {p0}, Landroid/net/SSLCertificateSocketFactory;->getDelegate()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocketFactory;->getSupportedCipherSuites()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-r setAlpnProtocols([[B)V
    .registers 2

    .line 348
    invoke-static {p1}, Landroid/net/SSLCertificateSocketFactory;->toLengthPrefixedList([[B)[B

    move-result-object p1

    iput-object p1, p0, Landroid/net/SSLCertificateSocketFactory;->mAlpnProtocols:[B

    .line 349
    return-void
.end method

.method public greylist-max-p setChannelIdPrivateKey(Ljava/security/PrivateKey;)V
    .registers 2

    .line 429
    iput-object p1, p0, Landroid/net/SSLCertificateSocketFactory;->mChannelIdPrivateKey:Ljava/security/PrivateKey;

    .line 430
    return-void
.end method

.method public whitelist setHostname(Ljava/net/Socket;Ljava/lang/String;)V
    .registers 3

    .line 453
    invoke-static {p1}, Landroid/net/SSLCertificateSocketFactory;->castToOpenSSLSocket(Ljava/net/Socket;)Lcom/android/org/conscrypt/OpenSSLSocketImpl;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->setHostname(Ljava/lang/String;)V

    .line 454
    return-void
.end method

.method public whitelist setKeyManagers([Ljavax/net/ssl/KeyManager;)V
    .registers 2

    .line 410
    iput-object p1, p0, Landroid/net/SSLCertificateSocketFactory;->mKeyManagers:[Ljavax/net/ssl/KeyManager;

    .line 413
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/net/SSLCertificateSocketFactory;->mSecureFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 414
    iput-object p1, p0, Landroid/net/SSLCertificateSocketFactory;->mInsecureFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 415
    return-void
.end method

.method public whitelist setNpnProtocols([[B)V
    .registers 2

    .line 324
    invoke-static {p1}, Landroid/net/SSLCertificateSocketFactory;->toLengthPrefixedList([[B)[B

    move-result-object p1

    iput-object p1, p0, Landroid/net/SSLCertificateSocketFactory;->mNpnProtocols:[B

    .line 325
    return-void
.end method

.method public greylist-max-r setSoWriteTimeout(Ljava/net/Socket;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 470
    invoke-static {p1}, Landroid/net/SSLCertificateSocketFactory;->castToOpenSSLSocket(Ljava/net/Socket;)Lcom/android/org/conscrypt/OpenSSLSocketImpl;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->setSoWriteTimeout(I)V

    .line 471
    return-void
.end method

.method public whitelist setTrustManagers([Ljavax/net/ssl/TrustManager;)V
    .registers 2

    .line 298
    iput-object p1, p0, Landroid/net/SSLCertificateSocketFactory;->mTrustManagers:[Ljavax/net/ssl/TrustManager;

    .line 301
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/net/SSLCertificateSocketFactory;->mSecureFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 304
    return-void
.end method

.method public whitelist setUseSessionTickets(Ljava/net/Socket;Z)V
    .registers 3

    .line 441
    invoke-static {p1}, Landroid/net/SSLCertificateSocketFactory;->castToOpenSSLSocket(Ljava/net/Socket;)Lcom/android/org/conscrypt/OpenSSLSocketImpl;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->setUseSessionTickets(Z)V

    .line 442
    return-void
.end method
