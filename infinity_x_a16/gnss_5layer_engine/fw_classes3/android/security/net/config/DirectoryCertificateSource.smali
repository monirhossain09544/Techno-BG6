.class abstract Landroid/security/net/config/DirectoryCertificateSource;
.super Ljava/lang/Object;
.source "DirectoryCertificateSource.java"

# interfaces
.implements Landroid/security/net/config/CertificateSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/net/config/DirectoryCertificateSource$CertSelector;
    }
.end annotation


# static fields
.field private static final blacklist DIGITS:[C

.field private static final greylist-max-o LOG_TAG:Ljava/lang/String; = "DirectoryCertificateSrc"


# instance fields
.field private final greylist-max-o mCertFactory:Ljava/security/cert/CertificateFactory;

.field private greylist-max-o mCertificates:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mDir:Ljava/io/File;

.field private final greylist-max-o mLock:Ljava/lang/Object;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 196
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_a

    sput-object v0, Landroid/security/net/config/DirectoryCertificateSource;->DIGITS:[C

    return-void

    :array_a
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method protected constructor greylist-max-o <init>(Ljava/io/File;)V
    .registers 4

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/security/net/config/DirectoryCertificateSource;->mLock:Ljava/lang/Object;

    .line 53
    iput-object p1, p0, Landroid/security/net/config/DirectoryCertificateSource;->mDir:Ljava/io/File;

    .line 55
    :try_start_c
    const-string p1, "X.509"

    invoke-static {p1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object p1

    iput-object p1, p0, Landroid/security/net/config/DirectoryCertificateSource;->mCertFactory:Ljava/security/cert/CertificateFactory;
    :try_end_14
    .catch Ljava/security/cert/CertificateException; {:try_start_c .. :try_end_14} :catch_16

    .line 58
    nop

    .line 59
    return-void

    .line 56
    :catch_16
    move-exception p1

    .line 57
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Failed to obtain X.509 CertificateFactory"

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private greylist-max-o findCert(Ljavax/security/auth/x500/X500Principal;Landroid/security/net/config/DirectoryCertificateSource$CertSelector;)Ljava/security/cert/X509Certificate;
    .registers 8

    .line 168
    invoke-direct {p0, p1}, Landroid/security/net/config/DirectoryCertificateSource;->getHash(Ljavax/security/auth/x500/X500Principal;)Ljava/lang/String;

    move-result-object v0

    .line 169
    const/4 v1, 0x0

    :goto_5
    if-ltz v1, :cond_4f

    .line 170
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 171
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Landroid/security/net/config/DirectoryCertificateSource;->mDir:Ljava/io/File;

    invoke-direct {v3, v4, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2c

    .line 172
    goto :goto_4f

    .line 174
    :cond_2c
    invoke-virtual {p0, v2}, Landroid/security/net/config/DirectoryCertificateSource;->isCertMarkedAsRemoved(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_33

    .line 175
    goto :goto_4c

    .line 177
    :cond_33
    invoke-direct {p0, v2}, Landroid/security/net/config/DirectoryCertificateSource;->readCertificate(Ljava/lang/String;)Ljava/security/cert/X509Certificate;

    move-result-object v2

    .line 178
    if-nez v2, :cond_3a

    .line 179
    goto :goto_4c

    .line 181
    :cond_3a
    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_45

    .line 182
    goto :goto_4c

    .line 184
    :cond_45
    invoke-interface {p2, v2}, Landroid/security/net/config/DirectoryCertificateSource$CertSelector;->match(Ljava/security/cert/X509Certificate;)Z

    move-result v3

    if-eqz v3, :cond_4c

    .line 185
    return-object v2

    .line 169
    :cond_4c
    :goto_4c
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 188
    :cond_4f
    :goto_4f
    const/4 p1, 0x0

    return-object p1
.end method

.method private greylist-max-o findCerts(Ljavax/security/auth/x500/X500Principal;Landroid/security/net/config/DirectoryCertificateSource$CertSelector;)Ljava/util/Set;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/security/auth/x500/X500Principal;",
            "Landroid/security/net/config/DirectoryCertificateSource$CertSelector;",
            ")",
            "Ljava/util/Set<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .line 140
    invoke-direct {p0, p1}, Landroid/security/net/config/DirectoryCertificateSource;->getHash(Ljavax/security/auth/x500/X500Principal;)Ljava/lang/String;

    move-result-object v0

    .line 141
    nop

    .line 142
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_7
    if-ltz v2, :cond_5a

    .line 143
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 144
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Landroid/security/net/config/DirectoryCertificateSource;->mDir:Ljava/io/File;

    invoke-direct {v4, v5, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_2e

    .line 145
    goto :goto_5a

    .line 147
    :cond_2e
    invoke-virtual {p0, v3}, Landroid/security/net/config/DirectoryCertificateSource;->isCertMarkedAsRemoved(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_35

    .line 148
    goto :goto_57

    .line 150
    :cond_35
    invoke-direct {p0, v3}, Landroid/security/net/config/DirectoryCertificateSource;->readCertificate(Ljava/lang/String;)Ljava/security/cert/X509Certificate;

    move-result-object v3

    .line 151
    if-nez v3, :cond_3c

    .line 152
    goto :goto_57

    .line 154
    :cond_3c
    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_47

    .line 155
    goto :goto_57

    .line 157
    :cond_47
    invoke-interface {p2, v3}, Landroid/security/net/config/DirectoryCertificateSource$CertSelector;->match(Ljava/security/cert/X509Certificate;)Z

    move-result v4

    if-eqz v4, :cond_57

    .line 158
    if-nez v1, :cond_54

    .line 159
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 161
    :cond_54
    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 142
    :cond_57
    :goto_57
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 164
    :cond_5a
    :goto_5a
    if-eqz v1, :cond_5d

    goto :goto_61

    :cond_5d
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    :goto_61
    return-object v1
.end method

.method private greylist-max-o getHash(Ljavax/security/auth/x500/X500Principal;)Ljava/lang/String;
    .registers 3

    .line 192
    invoke-static {p1}, Landroid/security/net/config/DirectoryCertificateSource;->hashName(Ljavax/security/auth/x500/X500Principal;)I

    move-result p1

    .line 193
    const/16 v0, 0x8

    invoke-static {p1, v0}, Landroid/security/net/config/DirectoryCertificateSource;->intToHexString(II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private static blacklist hashName(Ljavax/security/auth/x500/X500Principal;)I
    .registers 3

    .line 215
    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {p0}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    .line 216
    nop

    .line 217
    const/4 v0, 0x0

    aget-byte v1, p0, v0

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v0, v1, 0x0

    const/4 v1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    const/4 v1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    const/4 v1, 0x3

    aget-byte p0, p0, v1
    :try_end_29
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_29} :catch_2f

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x18

    or-int/2addr p0, v0

    return p0

    .line 219
    :catch_2f
    move-exception p0

    .line 220
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method private static blacklist intToHexString(II)Ljava/lang/String;
    .registers 6

    .line 200
    nop

    .line 201
    const/16 v0, 0x8

    new-array v1, v0, [C

    .line 202
    nop

    .line 205
    :cond_6
    add-int/lit8 v0, v0, -0x1

    sget-object v2, Landroid/security/net/config/DirectoryCertificateSource;->DIGITS:[C

    and-int/lit8 v3, p0, 0xf

    aget-char v2, v2, v3

    aput-char v2, v1, v0

    .line 206
    ushr-int/lit8 p0, p0, 0x4

    if-nez p0, :cond_6

    rsub-int/lit8 v2, v0, 0x8

    if-lt v2, p1, :cond_6

    .line 208
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1, v0, v2}, Ljava/lang/String;-><init>([CII)V

    return-object p0
.end method

.method private greylist-max-o readCertificate(Ljava/lang/String;)Ljava/security/cert/X509Certificate;
    .registers 8

    .line 225
    nop

    .line 227
    const/4 v0, 0x0

    :try_start_2
    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Landroid/security/net/config/DirectoryCertificateSource;->mDir:Ljava/io/File;

    invoke-direct {v3, v4, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_13
    .catch Ljava/security/cert/CertificateException; {:try_start_2 .. :try_end_13} :catch_23
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_13} :catch_23
    .catchall {:try_start_2 .. :try_end_13} :catchall_21

    .line 228
    :try_start_13
    iget-object v2, p0, Landroid/security/net/config/DirectoryCertificateSource;->mCertFactory:Ljava/security/cert/CertificateFactory;

    invoke-virtual {v2, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v2

    check-cast v2, Ljava/security/cert/X509Certificate;
    :try_end_1b
    .catch Ljava/security/cert/CertificateException; {:try_start_13 .. :try_end_1b} :catch_1f
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_1b} :catch_1f
    .catchall {:try_start_13 .. :try_end_1b} :catchall_42

    .line 233
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 228
    return-object v2

    .line 229
    :catch_1f
    move-exception v2

    goto :goto_25

    .line 233
    :catchall_21
    move-exception p1

    goto :goto_44

    .line 229
    :catch_23
    move-exception v2

    move-object v1, v0

    .line 230
    :goto_25
    :try_start_25
    const-string v3, "DirectoryCertificateSrc"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to read certificate from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3d
    .catchall {:try_start_25 .. :try_end_3d} :catchall_42

    .line 231
    nop

    .line 233
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 231
    return-object v0

    .line 233
    :catchall_42
    move-exception p1

    move-object v0, v1

    :goto_44
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 234
    throw p1
.end method


# virtual methods
.method public greylist-max-o findAllByIssuerAndSignature(Ljava/security/cert/X509Certificate;)Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/X509Certificate;",
            ")",
            "Ljava/util/Set<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .line 115
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    new-instance v1, Landroid/security/net/config/DirectoryCertificateSource$3;

    invoke-direct {v1, p0, p1}, Landroid/security/net/config/DirectoryCertificateSource$3;-><init>(Landroid/security/net/config/DirectoryCertificateSource;Ljava/security/cert/X509Certificate;)V

    invoke-direct {p0, v0, v1}, Landroid/security/net/config/DirectoryCertificateSource;->findCerts(Ljavax/security/auth/x500/X500Principal;Landroid/security/net/config/DirectoryCertificateSource$CertSelector;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public greylist-max-o findByIssuerAndSignature(Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;
    .registers 4

    .line 100
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    new-instance v1, Landroid/security/net/config/DirectoryCertificateSource$2;

    invoke-direct {v1, p0, p1}, Landroid/security/net/config/DirectoryCertificateSource$2;-><init>(Landroid/security/net/config/DirectoryCertificateSource;Ljava/security/cert/X509Certificate;)V

    invoke-direct {p0, v0, v1}, Landroid/security/net/config/DirectoryCertificateSource;->findCert(Ljavax/security/auth/x500/X500Principal;Landroid/security/net/config/DirectoryCertificateSource$CertSelector;)Ljava/security/cert/X509Certificate;

    move-result-object p1

    return-object p1
.end method

.method public greylist-max-o findBySubjectAndPublicKey(Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;
    .registers 4

    .line 90
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    new-instance v1, Landroid/security/net/config/DirectoryCertificateSource$1;

    invoke-direct {v1, p0, p1}, Landroid/security/net/config/DirectoryCertificateSource$1;-><init>(Landroid/security/net/config/DirectoryCertificateSource;Ljava/security/cert/X509Certificate;)V

    invoke-direct {p0, v0, v1}, Landroid/security/net/config/DirectoryCertificateSource;->findCert(Ljavax/security/auth/x500/X500Principal;Landroid/security/net/config/DirectoryCertificateSource$CertSelector;)Ljava/security/cert/X509Certificate;

    move-result-object p1

    return-object p1
.end method

.method public greylist-max-o getCertificates()Ljava/util/Set;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .line 66
    iget-object v0, p0, Landroid/security/net/config/DirectoryCertificateSource;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 67
    :try_start_3
    iget-object v1, p0, Landroid/security/net/config/DirectoryCertificateSource;->mCertificates:Ljava/util/Set;

    if-eqz v1, :cond_b

    .line 68
    iget-object v1, p0, Landroid/security/net/config/DirectoryCertificateSource;->mCertificates:Ljava/util/Set;

    monitor-exit v0

    return-object v1

    .line 71
    :cond_b
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 72
    iget-object v2, p0, Landroid/security/net/config/DirectoryCertificateSource;->mDir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_37

    .line 73
    iget-object v2, p0, Landroid/security/net/config/DirectoryCertificateSource;->mDir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_20
    if-ge v4, v3, :cond_37

    aget-object v5, v2, v4

    .line 74
    invoke-virtual {p0, v5}, Landroid/security/net/config/DirectoryCertificateSource;->isCertMarkedAsRemoved(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2b

    .line 75
    goto :goto_34

    .line 77
    :cond_2b
    invoke-direct {p0, v5}, Landroid/security/net/config/DirectoryCertificateSource;->readCertificate(Ljava/lang/String;)Ljava/security/cert/X509Certificate;

    move-result-object v5

    .line 78
    if-eqz v5, :cond_34

    .line 79
    invoke-interface {v1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 73
    :cond_34
    :goto_34
    add-int/lit8 v4, v4, 0x1

    goto :goto_20

    .line 83
    :cond_37
    iput-object v1, p0, Landroid/security/net/config/DirectoryCertificateSource;->mCertificates:Ljava/util/Set;

    .line 84
    iget-object v1, p0, Landroid/security/net/config/DirectoryCertificateSource;->mCertificates:Ljava/util/Set;

    monitor-exit v0

    return-object v1

    .line 85
    :catchall_3d
    move-exception v1

    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_3 .. :try_end_3f} :catchall_3d

    throw v1
.end method

.method public greylist-max-o handleTrustStorageUpdate()V
    .registers 3

    .line 130
    iget-object v0, p0, Landroid/security/net/config/DirectoryCertificateSource;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 131
    const/4 v1, 0x0

    :try_start_4
    iput-object v1, p0, Landroid/security/net/config/DirectoryCertificateSource;->mCertificates:Ljava/util/Set;

    .line 132
    monitor-exit v0

    .line 133
    return-void

    .line 132
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_8

    throw v1
.end method

.method protected abstract greylist-max-o isCertMarkedAsRemoved(Ljava/lang/String;)Z
.end method
