.class public Landroid/net/http/X509TrustManagerExtensions;
.super Ljava/lang/Object;
.source "X509TrustManagerExtensions.java"


# instance fields
.field private final greylist-max-o mCheckServerTrusted:Ljava/lang/reflect/Method;

.field private final blacklist mCheckServerTrustedOcspAndTlsData:Ljava/lang/reflect/Method;

.field private final greylist-max-o mDelegate:Lcom/android/org/conscrypt/TrustManagerImpl;

.field private final greylist-max-o mIsSameTrustConfiguration:Ljava/lang/reflect/Method;

.field private final greylist-max-o mTrustManager:Ljavax/net/ssl/X509TrustManager;


# direct methods
.method public constructor whitelist <init>(Ljavax/net/ssl/X509TrustManager;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 61
    const-class v0, [B

    const-string v1, "checkServerTrusted"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    instance-of v2, p1, Lcom/android/org/conscrypt/TrustManagerImpl;

    const/4 v3, 0x0

    if-eqz v2, :cond_19

    .line 63
    check-cast p1, Lcom/android/org/conscrypt/TrustManagerImpl;

    iput-object p1, p0, Landroid/net/http/X509TrustManagerExtensions;->mDelegate:Lcom/android/org/conscrypt/TrustManagerImpl;

    .line 64
    iput-object v3, p0, Landroid/net/http/X509TrustManagerExtensions;->mTrustManager:Ljavax/net/ssl/X509TrustManager;

    .line 65
    iput-object v3, p0, Landroid/net/http/X509TrustManagerExtensions;->mCheckServerTrusted:Ljava/lang/reflect/Method;

    .line 66
    iput-object v3, p0, Landroid/net/http/X509TrustManagerExtensions;->mCheckServerTrustedOcspAndTlsData:Ljava/lang/reflect/Method;

    .line 67
    iput-object v3, p0, Landroid/net/http/X509TrustManagerExtensions;->mIsSameTrustConfiguration:Ljava/lang/reflect/Method;

    .line 68
    return-void

    .line 71
    :cond_19
    iput-object v3, p0, Landroid/net/http/X509TrustManagerExtensions;->mDelegate:Lcom/android/org/conscrypt/TrustManagerImpl;

    .line 72
    iput-object p1, p0, Landroid/net/http/X509TrustManagerExtensions;->mTrustManager:Ljavax/net/ssl/X509TrustManager;

    .line 75
    :try_start_1d
    invoke-interface {p1}, Ljavax/net/ssl/X509TrustManager;->getClass()Ljava/lang/Class;

    move-result-object v2

    const/4 v4, 0x3

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, [Ljava/security/cert/X509Certificate;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const-class v6, Ljava/lang/String;

    const/4 v8, 0x1

    aput-object v6, v5, v8

    const-class v6, Ljava/lang/String;

    const/4 v9, 0x2

    aput-object v6, v5, v9

    invoke-virtual {v2, v1, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Landroid/net/http/X509TrustManagerExtensions;->mCheckServerTrusted:Ljava/lang/reflect/Method;
    :try_end_39
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1d .. :try_end_39} :catch_76

    .line 82
    nop

    .line 84
    nop

    .line 86
    :try_start_3b
    invoke-interface {p1}, Ljavax/net/ssl/X509TrustManager;->getClass()Ljava/lang/Class;

    move-result-object v2

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Class;

    const-class v6, [Ljava/security/cert/X509Certificate;

    aput-object v6, v5, v7

    aput-object v0, v5, v8

    aput-object v0, v5, v9

    const-class v0, Ljava/lang/String;

    aput-object v0, v5, v4

    const-class v0, Ljava/lang/String;

    const/4 v4, 0x4

    aput-object v0, v5, v4

    invoke-virtual {v2, v1, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0
    :try_end_57
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_3b .. :try_end_57} :catch_58

    .line 92
    goto :goto_5a

    :catch_58
    move-exception v0

    move-object v0, v3

    .line 93
    :goto_5a
    iput-object v0, p0, Landroid/net/http/X509TrustManagerExtensions;->mCheckServerTrustedOcspAndTlsData:Ljava/lang/reflect/Method;

    .line 95
    nop

    .line 97
    :try_start_5d
    invoke-interface {p1}, Ljavax/net/ssl/X509TrustManager;->getClass()Ljava/lang/Class;

    move-result-object p1

    const-string v0, "isSameTrustConfiguration"

    new-array v1, v9, [Ljava/lang/Class;

    const-class v2, Ljava/lang/String;

    aput-object v2, v1, v7

    const-class v2, Ljava/lang/String;

    aput-object v2, v1, v8

    invoke-virtual {p1, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3
    :try_end_71
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_5d .. :try_end_71} :catch_72

    .line 101
    goto :goto_73

    .line 100
    :catch_72
    move-exception p1

    .line 102
    :goto_73
    iput-object v3, p0, Landroid/net/http/X509TrustManagerExtensions;->mIsSameTrustConfiguration:Ljava/lang/reflect/Method;

    .line 103
    return-void

    .line 79
    :catch_76
    move-exception p1

    .line 80
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Required method checkServerTrusted(X509Certificate[], String, String) missing"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public whitelist checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 6
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

    .line 117
    iget-object v0, p0, Landroid/net/http/X509TrustManagerExtensions;->mDelegate:Lcom/android/org/conscrypt/TrustManagerImpl;

    if-eqz v0, :cond_b

    .line 118
    iget-object v0, p0, Landroid/net/http/X509TrustManagerExtensions;->mDelegate:Lcom/android/org/conscrypt/TrustManagerImpl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/org/conscrypt/TrustManagerImpl;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 121
    :cond_b
    :try_start_b
    iget-object v0, p0, Landroid/net/http/X509TrustManagerExtensions;->mCheckServerTrusted:Ljava/lang/reflect/Method;

    iget-object v1, p0, Landroid/net/http/X509TrustManagerExtensions;->mTrustManager:Ljavax/net/ssl/X509TrustManager;

    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;
    :try_end_19
    .catch Ljava/lang/IllegalAccessException; {:try_start_b .. :try_end_19} :catch_45
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_b .. :try_end_19} :catch_1a

    return-object p1

    .line 125
    :catch_1a
    move-exception p1

    .line 126
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    instance-of p2, p2, Ljava/security/cert/CertificateException;

    if-nez p2, :cond_3e

    .line 129
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    instance-of p2, p2, Ljava/lang/RuntimeException;

    if-eqz p2, :cond_32

    .line 130
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    check-cast p1, Ljava/lang/RuntimeException;

    throw p1

    .line 132
    :cond_32
    new-instance p2, Ljava/security/cert/CertificateException;

    const-string p3, "checkServerTrusted failed"

    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {p2, p3, p1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 127
    :cond_3e
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    check-cast p1, Ljava/security/cert/CertificateException;

    throw p1

    .line 123
    :catch_45
    move-exception p1

    .line 124
    new-instance p2, Ljava/security/cert/CertificateException;

    const-string p3, "Failed to call checkServerTrusted"

    invoke-direct {p2, p3, p1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public whitelist checkServerTrusted([Ljava/security/cert/X509Certificate;[B[BLjava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 8
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

    .line 162
    iget-object v0, p0, Landroid/net/http/X509TrustManagerExtensions;->mDelegate:Lcom/android/org/conscrypt/TrustManagerImpl;

    if-eqz v0, :cond_20

    .line 163
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/org/conscrypt/flags/Flags;->certificateTransparencyCheckservertrustedApi()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 164
    iget-object v0, p0, Landroid/net/http/X509TrustManagerExtensions;->mDelegate:Lcom/android/org/conscrypt/TrustManagerImpl;

    move-object p0, v0

    invoke-virtual/range {p0 .. p5}, Lcom/android/org/conscrypt/TrustManagerImpl;->checkServerTrusted([Ljava/security/cert/X509Certificate;[B[BLjava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 165
    if-nez p1, :cond_17

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    :cond_17
    return-object p1

    .line 168
    :cond_18
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Required method checkServerTrusted(X509Certificate[], byte[], byte[], String, String) not available in TrustManagerImpl"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 173
    :cond_20
    iget-object v0, p0, Landroid/net/http/X509TrustManagerExtensions;->mCheckServerTrustedOcspAndTlsData:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_6f

    .line 179
    :try_start_24
    iget-object v0, p0, Landroid/net/http/X509TrustManagerExtensions;->mCheckServerTrustedOcspAndTlsData:Ljava/lang/reflect/Method;

    iget-object v1, p0, Landroid/net/http/X509TrustManagerExtensions;->mTrustManager:Ljavax/net/ssl/X509TrustManager;

    filled-new-array {p1, p2, p3, p4, p5}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 181
    if-nez p1, :cond_38

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1
    :try_end_38
    .catch Ljava/lang/IllegalAccessException; {:try_start_24 .. :try_end_38} :catch_65
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_24 .. :try_end_38} :catch_39

    :cond_38
    return-object p1

    .line 184
    :catch_39
    move-exception v0

    move-object p1, v0

    .line 185
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    instance-of p2, p2, Ljava/security/cert/CertificateException;

    if-nez p2, :cond_5e

    .line 188
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    instance-of p2, p2, Ljava/lang/RuntimeException;

    if-eqz p2, :cond_52

    .line 189
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    check-cast p1, Ljava/lang/RuntimeException;

    throw p1

    .line 191
    :cond_52
    new-instance p2, Ljava/security/cert/CertificateException;

    const-string p3, "checkServerTrusted failed"

    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {p2, p3, p1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 186
    :cond_5e
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    check-cast p1, Ljava/security/cert/CertificateException;

    throw p1

    .line 182
    :catch_65
    move-exception v0

    move-object p1, v0

    .line 183
    new-instance p2, Ljava/security/cert/CertificateException;

    const-string p3, "Failed to call checkServerTrusted"

    invoke-direct {p2, p3, p1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 174
    :cond_6f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Required method checkServerTrusted(X509Certificate[], byte[], byte[], String, String) missing"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist isSameTrustConfiguration(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    .line 214
    iget-object v0, p0, Landroid/net/http/X509TrustManagerExtensions;->mIsSameTrustConfiguration:Ljava/lang/reflect/Method;

    if-nez v0, :cond_6

    .line 215
    const/4 p1, 0x1

    return p1

    .line 218
    :cond_6
    :try_start_6
    iget-object v0, p0, Landroid/net/http/X509TrustManagerExtensions;->mIsSameTrustConfiguration:Ljava/lang/reflect/Method;

    iget-object v1, p0, Landroid/net/http/X509TrustManagerExtensions;->mTrustManager:Ljavax/net/ssl/X509TrustManager;

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_18
    .catch Ljava/lang/IllegalAccessException; {:try_start_6 .. :try_end_18} :catch_35
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_6 .. :try_end_18} :catch_19

    return p1

    .line 221
    :catch_19
    move-exception p1

    .line 222
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    instance-of p2, p2, Ljava/lang/RuntimeException;

    if-eqz p2, :cond_29

    .line 223
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    check-cast p1, Ljava/lang/RuntimeException;

    throw p1

    .line 225
    :cond_29
    new-instance p2, Ljava/lang/RuntimeException;

    const-string v0, "isSameTrustConfiguration failed"

    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {p2, v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 219
    :catch_35
    move-exception p1

    .line 220
    new-instance p2, Ljava/lang/RuntimeException;

    const-string v0, "Failed to call isSameTrustConfiguration"

    invoke-direct {p2, v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public whitelist isUserAddedCertificate(Ljava/security/cert/X509Certificate;)Z
    .registers 3

    .line 206
    invoke-static {}, Landroid/security/net/config/UserCertificateSource;->getInstance()Landroid/security/net/config/UserCertificateSource;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/security/net/config/UserCertificateSource;->findBySubjectAndPublicKey(Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;

    move-result-object p1

    if-eqz p1, :cond_c

    const/4 p1, 0x1

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    :goto_d
    return p1
.end method
