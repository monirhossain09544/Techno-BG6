.class public Landroid/security/net/config/NetworkSecurityTrustManager;
.super Ljavax/net/ssl/X509ExtendedTrustManager;
.source "NetworkSecurityTrustManager.java"


# instance fields
.field private final greylist-max-o mDelegate:Lcom/android/org/conscrypt/TrustManagerImpl;

.field private greylist-max-o mIssuers:[Ljava/security/cert/X509Certificate;

.field private final greylist-max-o mIssuersLock:Ljava/lang/Object;

.field private final greylist-max-o mNetworkSecurityConfig:Landroid/security/net/config/NetworkSecurityConfig;


# direct methods
.method public constructor greylist-max-o <init>(Landroid/security/net/config/NetworkSecurityConfig;)V
    .registers 5

    .line 50
    invoke-direct {p0}, Ljavax/net/ssl/X509ExtendedTrustManager;-><init>()V

    .line 46
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/security/net/config/NetworkSecurityTrustManager;->mIssuersLock:Ljava/lang/Object;

    .line 51
    if-eqz p1, :cond_2f

    .line 54
    iput-object p1, p0, Landroid/security/net/config/NetworkSecurityTrustManager;->mNetworkSecurityConfig:Landroid/security/net/config/NetworkSecurityConfig;

    .line 56
    :try_start_e
    new-instance v0, Landroid/security/net/config/TrustedCertificateStoreAdapter;

    invoke-direct {v0, p1}, Landroid/security/net/config/TrustedCertificateStoreAdapter;-><init>(Landroid/security/net/config/NetworkSecurityConfig;)V

    .line 59
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object p1

    .line 60
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 61
    new-instance v2, Lcom/android/org/conscrypt/TrustManagerImpl;

    invoke-direct {v2, p1, v1, v0}, Lcom/android/org/conscrypt/TrustManagerImpl;-><init>(Ljava/security/KeyStore;Lcom/android/org/conscrypt/CertPinManager;Lcom/android/org/conscrypt/ConscryptCertStore;)V

    iput-object v2, p0, Landroid/security/net/config/NetworkSecurityTrustManager;->mDelegate:Lcom/android/org/conscrypt/TrustManagerImpl;
    :try_end_26
    .catch Ljava/security/GeneralSecurityException; {:try_start_e .. :try_end_26} :catch_28
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_26} :catch_28

    .line 64
    nop

    .line 65
    return-void

    .line 62
    :catch_28
    move-exception p1

    .line 63
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 52
    :cond_2f
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "config must not be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private greylist-max-o checkPins(Ljava/util/List;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 133
    iget-object v0, p0, Landroid/security/net/config/NetworkSecurityTrustManager;->mNetworkSecurityConfig:Landroid/security/net/config/NetworkSecurityConfig;

    invoke-virtual {v0}, Landroid/security/net/config/NetworkSecurityConfig;->getPins()Landroid/security/net/config/PinSet;

    move-result-object v0

    .line 134
    iget-object v1, v0, Landroid/security/net/config/PinSet;->pins:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_88

    .line 135
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, v0, Landroid/security/net/config/PinSet;->expirationTime:J

    cmp-long v1, v1, v3

    if-gtz v1, :cond_88

    .line 136
    invoke-direct {p0, p1}, Landroid/security/net/config/NetworkSecurityTrustManager;->isPinningEnforced(Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_1f

    goto :goto_88

    .line 139
    :cond_1f
    invoke-virtual {v0}, Landroid/security/net/config/PinSet;->getPinAlgorithms()Ljava/util/Set;

    move-result-object v1

    .line 140
    new-instance v2, Landroid/util/ArrayMap;

    .line 141
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v3

    invoke-direct {v2, v3}, Landroid/util/ArrayMap;-><init>(I)V

    .line 142
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_32
    if-ltz v3, :cond_80

    .line 143
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/cert/X509Certificate;

    .line 144
    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v4

    invoke-interface {v4}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v4

    .line 145
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_46
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 146
    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/security/MessageDigest;

    .line 147
    if-nez v7, :cond_6a

    .line 149
    :try_start_5a
    invoke-static {v6}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v7
    :try_end_5e
    .catch Ljava/security/GeneralSecurityException; {:try_start_5a .. :try_end_5e} :catch_63

    .line 152
    nop

    .line 153
    invoke-interface {v2, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6a

    .line 150
    :catch_63
    move-exception p1

    .line 151
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 155
    :cond_6a
    :goto_6a
    iget-object v8, v0, Landroid/security/net/config/PinSet;->pins:Ljava/util/Set;

    new-instance v9, Landroid/security/net/config/Pin;

    invoke-virtual {v7, v4}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v7

    invoke-direct {v9, v6, v7}, Landroid/security/net/config/Pin;-><init>(Ljava/lang/String;[B)V

    invoke-interface {v8, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7c

    .line 156
    return-void

    .line 158
    :cond_7c
    goto :goto_46

    .line 142
    :cond_7d
    add-int/lit8 v3, v3, -0x1

    goto :goto_32

    .line 162
    :cond_80
    new-instance p1, Ljava/security/cert/CertificateException;

    const-string v0, "Pin verification failed"

    invoke-direct {p1, v0}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 137
    :cond_88
    :goto_88
    return-void
.end method

.method private greylist-max-o isPinningEnforced(Ljava/util/List;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 166
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 167
    const/4 p1, 0x0

    return p1

    .line 169
    :cond_8
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/security/cert/X509Certificate;

    .line 170
    iget-object v0, p0, Landroid/security/net/config/NetworkSecurityTrustManager;->mNetworkSecurityConfig:Landroid/security/net/config/NetworkSecurityConfig;

    .line 171
    invoke-virtual {v0, p1}, Landroid/security/net/config/NetworkSecurityConfig;->findTrustAnchorBySubjectAndPublicKey(Ljava/security/cert/X509Certificate;)Landroid/security/net/config/TrustAnchor;

    move-result-object p1

    .line 172
    if-eqz p1, :cond_21

    .line 175
    iget-boolean p1, p1, Landroid/security/net/config/TrustAnchor;->overridesPins:Z

    xor-int/lit8 p1, p1, 0x1

    return p1

    .line 173
    :cond_21
    new-instance p1, Ljava/security/cert/CertificateException;

    const-string v0, "Trusted chain does not end in a TrustAnchor"

    invoke-direct {p1, v0}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public whitelist test-api checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 70
    iget-object v0, p0, Landroid/security/net/config/NetworkSecurityTrustManager;->mDelegate:Lcom/android/org/conscrypt/TrustManagerImpl;

    invoke-virtual {v0, p1, p2}, Lcom/android/org/conscrypt/TrustManagerImpl;->checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    .line 71
    return-void
.end method

.method public whitelist test-api checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/net/Socket;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 76
    iget-object v0, p0, Landroid/security/net/config/NetworkSecurityTrustManager;->mDelegate:Lcom/android/org/conscrypt/TrustManagerImpl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/org/conscrypt/TrustManagerImpl;->checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/net/Socket;)V

    .line 77
    return-void
.end method

.method public whitelist test-api checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLEngine;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 82
    iget-object v0, p0, Landroid/security/net/config/NetworkSecurityTrustManager;->mDelegate:Lcom/android/org/conscrypt/TrustManagerImpl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/org/conscrypt/TrustManagerImpl;->checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLEngine;)V

    .line 83
    return-void
.end method

.method public greylist-max-o checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/security/cert/X509Certificate;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 114
    iget-object v0, p0, Landroid/security/net/config/NetworkSecurityTrustManager;->mDelegate:Lcom/android/org/conscrypt/TrustManagerImpl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/org/conscrypt/TrustManagerImpl;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 115
    invoke-direct {p0, p1}, Landroid/security/net/config/NetworkSecurityTrustManager;->checkPins(Ljava/util/List;)V

    .line 116
    return-object p1
.end method

.method public blacklist checkServerTrusted([Ljava/security/cert/X509Certificate;[B[BLjava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/security/cert/X509Certificate;",
            "[B[B",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 126
    iget-object v0, p0, Landroid/security/net/config/NetworkSecurityTrustManager;->mDelegate:Lcom/android/org/conscrypt/TrustManagerImpl;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/org/conscrypt/TrustManagerImpl;->checkServerTrusted([Ljava/security/cert/X509Certificate;[B[BLjava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 128
    invoke-direct {p0, p1}, Landroid/security/net/config/NetworkSecurityTrustManager;->checkPins(Ljava/util/List;)V

    .line 129
    return-object p1
.end method

.method public whitelist test-api checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 88
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, v0}, Landroid/security/net/config/NetworkSecurityTrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    .line 89
    return-void
.end method

.method public whitelist test-api checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/net/Socket;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 94
    iget-object v0, p0, Landroid/security/net/config/NetworkSecurityTrustManager;->mDelegate:Lcom/android/org/conscrypt/TrustManagerImpl;

    .line 95
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/org/conscrypt/TrustManagerImpl;->getTrustedChainForServer([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/net/Socket;)Ljava/util/List;

    move-result-object p1

    .line 96
    invoke-direct {p0, p1}, Landroid/security/net/config/NetworkSecurityTrustManager;->checkPins(Ljava/util/List;)V

    .line 97
    return-void
.end method

.method public whitelist test-api checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLEngine;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 102
    iget-object v0, p0, Landroid/security/net/config/NetworkSecurityTrustManager;->mDelegate:Lcom/android/org/conscrypt/TrustManagerImpl;

    .line 103
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/org/conscrypt/TrustManagerImpl;->getTrustedChainForServer([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLEngine;)Ljava/util/List;

    move-result-object p1

    .line 104
    invoke-direct {p0, p1}, Landroid/security/net/config/NetworkSecurityTrustManager;->checkPins(Ljava/util/List;)V

    .line 105
    return-void
.end method

.method public whitelist test-api getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .registers 7

    .line 182
    iget-object v0, p0, Landroid/security/net/config/NetworkSecurityTrustManager;->mIssuersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 183
    :try_start_3
    iget-object v1, p0, Landroid/security/net/config/NetworkSecurityTrustManager;->mIssuers:[Ljava/security/cert/X509Certificate;

    if-nez v1, :cond_2f

    .line 184
    iget-object v1, p0, Landroid/security/net/config/NetworkSecurityTrustManager;->mNetworkSecurityConfig:Landroid/security/net/config/NetworkSecurityConfig;

    invoke-virtual {v1}, Landroid/security/net/config/NetworkSecurityConfig;->getTrustAnchors()Ljava/util/Set;

    move-result-object v1

    .line 185
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v2

    new-array v2, v2, [Ljava/security/cert/X509Certificate;

    .line 186
    nop

    .line 187
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v3, 0x0

    :goto_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/security/net/config/TrustAnchor;

    .line 188
    add-int/lit8 v5, v3, 0x1

    iget-object v4, v4, Landroid/security/net/config/TrustAnchor;->certificate:Ljava/security/cert/X509Certificate;

    aput-object v4, v2, v3

    .line 189
    move v3, v5

    goto :goto_19

    .line 190
    :cond_2d
    iput-object v2, p0, Landroid/security/net/config/NetworkSecurityTrustManager;->mIssuers:[Ljava/security/cert/X509Certificate;

    .line 192
    :cond_2f
    iget-object v1, p0, Landroid/security/net/config/NetworkSecurityTrustManager;->mIssuers:[Ljava/security/cert/X509Certificate;

    invoke-virtual {v1}, [Ljava/security/cert/X509Certificate;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/security/cert/X509Certificate;

    monitor-exit v0

    return-object v1

    .line 193
    :catchall_39
    move-exception v1

    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_3 .. :try_end_3b} :catchall_39

    throw v1
.end method

.method public greylist-max-o handleTrustStorageUpdate()V
    .registers 3

    .line 197
    iget-object v0, p0, Landroid/security/net/config/NetworkSecurityTrustManager;->mIssuersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 198
    const/4 v1, 0x0

    :try_start_4
    iput-object v1, p0, Landroid/security/net/config/NetworkSecurityTrustManager;->mIssuers:[Ljava/security/cert/X509Certificate;

    .line 199
    iget-object v1, p0, Landroid/security/net/config/NetworkSecurityTrustManager;->mDelegate:Lcom/android/org/conscrypt/TrustManagerImpl;

    invoke-virtual {v1}, Lcom/android/org/conscrypt/TrustManagerImpl;->handleTrustStorageUpdate()V

    .line 200
    monitor-exit v0

    .line 201
    return-void

    .line 200
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_4 .. :try_end_f} :catchall_d

    throw v1
.end method
