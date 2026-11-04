.class public Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi;
.super Ljava/security/KeyStoreSpi;
.source "JKSKeyStoreSpi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi$BCJKSTrustedCertEntry;,
        Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi$ErasableByteStream;
    }
.end annotation


# static fields
.field private static final blacklist NOT_IMPLEMENTED_MESSAGE:Ljava/lang/String; = "BC JKS store is read-only and only supports certificate entries"


# instance fields
.field private final blacklist certificateEntries:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi$BCJKSTrustedCertEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist helper:Lcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;)V
    .registers 3

    .line 46
    invoke-direct {p0}, Ljava/security/KeyStoreSpi;-><init>()V

    .line 42
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi;->certificateEntries:Ljava/util/Hashtable;

    .line 47
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi;->helper:Lcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;

    .line 48
    return-void
.end method

.method private blacklist addPassword(Lcom/android/internal/org/bouncycastle/crypto/Digest;[C)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 340
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    array-length v2, p2

    if-ge v1, v2, :cond_16

    .line 342
    aget-char v2, p2, v1

    shr-int/lit8 v2, v2, 0x8

    int-to-byte v2, v2

    invoke-interface {p1, v2}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->update(B)V

    .line 343
    aget-char v2, p2, v1

    int-to-byte v2, v2

    invoke-interface {p1, v2}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->update(B)V

    .line 340
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 351
    :cond_16
    const-string p2, "Mighty Aphrodite"

    invoke-static {p2}, Lcom/android/internal/org/bouncycastle/util/Strings;->toByteArray(Ljava/lang/String;)[B

    move-result-object p2

    const/16 v1, 0x10

    invoke-interface {p1, p2, v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->update([BII)V

    .line 352
    return-void
.end method

.method private blacklist createCertFactory(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 314
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi;->helper:Lcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;

    if-eqz v0, :cond_16

    .line 318
    :try_start_4
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi;->helper:Lcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;

    invoke-interface {v0, p1}, Lcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;->createCertificateFactory(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object p1
    :try_end_a
    .catch Ljava/security/NoSuchProviderException; {:try_start_4 .. :try_end_a} :catch_b

    return-object p1

    .line 320
    :catch_b
    move-exception p1

    .line 322
    new-instance v0, Ljava/security/cert/CertificateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 327
    :cond_16
    invoke-static {p1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object p1

    return-object p1
.end method

.method private blacklist validateStream(Ljava/io/InputStream;[C)Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi$ErasableByteStream;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 369
    const-string v0, "SHA-1"

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/util/DigestFactory;->getDigest(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/crypto/Digest;

    move-result-object v0

    .line 370
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/util/io/Streams;->readAll(Ljava/io/InputStream;)[B

    move-result-object p1

    .line 372
    const/4 v1, 0x0

    if-eqz p2, :cond_42

    .line 374
    invoke-direct {p0, v0, p2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi;->addPassword(Lcom/android/internal/org/bouncycastle/crypto/Digest;[C)V

    .line 375
    array-length p2, p1

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v2

    sub-int/2addr p2, v2

    invoke-interface {v0, p1, v1, p2}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->update([BII)V

    .line 377
    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result p2

    new-array v2, p2, [B

    .line 379
    invoke-interface {v0, v2, v1}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 381
    new-array v0, p2, [B

    .line 382
    array-length v3, p1

    sub-int/2addr v3, p2

    invoke-static {p1, v3, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 384
    invoke-static {v2, v0}, Lcom/android/internal/org/bouncycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 390
    new-instance v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi$ErasableByteStream;

    array-length v2, p1

    sub-int/2addr v2, p2

    invoke-direct {v0, p1, v1, v2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi$ErasableByteStream;-><init>([BII)V

    return-object v0

    .line 386
    :cond_37
    invoke-static {p1, v1}, Lcom/android/internal/org/bouncycastle/util/Arrays;->fill([BB)V

    .line 387
    new-instance p1, Ljava/io/IOException;

    const-string p2, "password incorrect or store tampered with"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 393
    :cond_42
    new-instance p2, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi$ErasableByteStream;

    array-length v2, p1

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    sub-int/2addr v2, v0

    invoke-direct {p2, p1, v1, v2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi$ErasableByteStream;-><init>([BII)V

    return-object p2
.end method


# virtual methods
.method public whitelist test-api engineAliases()Ljava/util/Enumeration;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 131
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi;->certificateEntries:Ljava/util/Hashtable;

    monitor-enter v0

    .line 133
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi;->certificateEntries:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 134
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public whitelist test-api engineContainsAlias(Ljava/lang/String;)Z
    .registers 4

    .line 139
    if-eqz p1, :cond_10

    .line 144
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi;->certificateEntries:Ljava/util/Hashtable;

    monitor-enter v0

    .line 146
    :try_start_5
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi;->certificateEntries:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    monitor-exit v0

    return p1

    .line 147
    :catchall_d
    move-exception p1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_d

    throw p1

    .line 141
    :cond_10
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "alias value is null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist test-api engineDeleteEntry(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .line 126
    new-instance p1, Ljava/security/KeyStoreException;

    const-string v0, "BC JKS store is read-only and only supports certificate entries"

    invoke-direct {p1, v0}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist test-api engineGetCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;
    .registers 4

    .line 81
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi;->certificateEntries:Ljava/util/Hashtable;

    monitor-enter v0

    .line 83
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi;->certificateEntries:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi$BCJKSTrustedCertEntry;

    .line 84
    if-eqz p1, :cond_11

    .line 86
    iget-object p1, p1, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi$BCJKSTrustedCertEntry;->cert:Ljava/security/cert/Certificate;

    monitor-exit v0

    return-object p1

    .line 88
    :cond_11
    monitor-exit v0

    .line 89
    const/4 p1, 0x0

    return-object p1

    .line 88
    :catchall_14
    move-exception p1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw p1
.end method

.method public whitelist test-api engineGetCertificateAlias(Ljava/security/cert/Certificate;)Ljava/lang/String;
    .registers 6

    .line 170
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi;->certificateEntries:Ljava/util/Hashtable;

    monitor-enter v0

    .line 172
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi;->certificateEntries:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_30

    .line 174
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 175
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi$BCJKSTrustedCertEntry;

    iget-object v3, v3, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi$BCJKSTrustedCertEntry;->cert:Ljava/security/cert/Certificate;

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 177
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    monitor-exit v0

    return-object p1

    .line 179
    :cond_2f
    goto :goto_d

    .line 180
    :cond_30
    monitor-exit v0

    const/4 p1, 0x0

    return-object p1

    .line 181
    :catchall_33
    move-exception p1

    monitor-exit v0
    :try_end_35
    .catchall {:try_start_3 .. :try_end_35} :catchall_33

    throw p1
.end method

.method public whitelist test-api engineGetCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;
    .registers 2

    .line 76
    const/4 p1, 0x0

    return-object p1
.end method

.method public whitelist test-api engineGetCreationDate(Ljava/lang/String;)Ljava/util/Date;
    .registers 4

    .line 94
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi;->certificateEntries:Ljava/util/Hashtable;

    monitor-enter v0

    .line 96
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi;->certificateEntries:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi$BCJKSTrustedCertEntry;

    .line 97
    if-eqz p1, :cond_11

    .line 99
    iget-object p1, p1, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi$BCJKSTrustedCertEntry;->date:Ljava/util/Date;

    monitor-exit v0

    return-object p1

    .line 101
    :cond_11
    monitor-exit v0

    .line 102
    const/4 p1, 0x0

    return-object p1

    .line 101
    :catchall_14
    move-exception p1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw p1
.end method

.method public whitelist test-api engineGetKey(Ljava/lang/String;[C)Ljava/security/Key;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    .line 71
    const/4 p1, 0x0

    return-object p1
.end method

.method public whitelist test-api engineIsCertificateEntry(Ljava/lang/String;)Z
    .registers 4

    .line 162
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi;->certificateEntries:Ljava/util/Hashtable;

    monitor-enter v0

    .line 164
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi;->certificateEntries:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    monitor-exit v0

    return p1

    .line 165
    :catchall_b
    move-exception p1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p1
.end method

.method public whitelist test-api engineIsKeyEntry(Ljava/lang/String;)Z
    .registers 2

    .line 157
    const/4 p1, 0x0

    return p1
.end method

.method public whitelist test-api engineLoad(Ljava/io/InputStream;[C)V
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 213
    if-nez p1, :cond_3

    .line 215
    return-void

    .line 218
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi;->validateStream(Ljava/io/InputStream;[C)Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi$ErasableByteStream;

    move-result-object p1

    .line 220
    iget-object p2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi;->certificateEntries:Ljava/util/Hashtable;

    monitor-enter p2

    .line 224
    :try_start_a
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 226
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    .line 227
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    .line 228
    const v3, -0x1120113

    if-ne v1, v3, :cond_bb

    .line 230
    nop

    .line 231
    nop

    .line 233
    const/4 v1, 0x0

    packed-switch v2, :pswitch_data_d8

    .line 242
    new-instance v0, Ljava/lang/IllegalStateException;

    goto/16 :goto_b5

    .line 239
    :pswitch_26
    new-instance v3, Ljava/util/Hashtable;

    invoke-direct {v3}, Ljava/util/Hashtable;-><init>()V

    .line 240
    goto :goto_35

    .line 236
    :pswitch_2c
    const-string v3, "X.509"

    invoke-direct {p0, v3}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi;->createCertFactory(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v3

    .line 237
    move-object v12, v3

    move-object v3, v1

    move-object v1, v12

    .line 245
    :goto_35
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    .line 246
    const/4 v5, 0x0

    move v6, v5

    :goto_3b
    if-ge v6, v4, :cond_bb

    .line 248
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    .line 249
    packed-switch v7, :pswitch_data_e0

    .line 294
    new-instance v0, Ljava/lang/IllegalStateException;

    goto :goto_af

    .line 254
    :pswitch_47
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v7

    .line 255
    new-instance v8, Ljava/util/Date;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v9

    invoke-direct {v8, v9, v10}, Ljava/util/Date;-><init>(J)V

    .line 257
    const/4 v9, 0x2

    if-ne v2, v9, :cond_70

    .line 259
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v1

    .line 260
    invoke-virtual {v3, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_68

    .line 262
    invoke-virtual {v3, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/CertificateFactory;

    goto :goto_70

    .line 266
    :cond_68
    invoke-direct {p0, v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi;->createCertFactory(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v9

    .line 267
    invoke-virtual {v3, v1, v9}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v9

    .line 271
    :cond_70
    :goto_70
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v9

    .line 272
    new-array v10, v9, [B

    .line 273
    invoke-virtual {v0, v10}, Ljava/io/DataInputStream;->readFully([B)V

    .line 275
    new-instance v11, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi$ErasableByteStream;

    invoke-direct {v11, v10, v5, v9}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi$ErasableByteStream;-><init>([BII)V
    :try_end_7e
    .catchall {:try_start_a .. :try_end_7e} :catchall_cf

    .line 279
    :try_start_7e
    invoke-virtual {v1, v11}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v9

    .line 281
    invoke-virtual {v11}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi$ErasableByteStream;->available()I

    move-result v10
    :try_end_86
    .catchall {:try_start_7e .. :try_end_86} :catchall_a2

    if-nez v10, :cond_9a

    .line 288
    :try_start_88
    invoke-virtual {v11}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi$ErasableByteStream;->erase()V

    .line 289
    nop

    .line 291
    iget-object v10, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi;->certificateEntries:Ljava/util/Hashtable;

    new-instance v11, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi$BCJKSTrustedCertEntry;

    invoke-direct {v11, v8, v9}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi$BCJKSTrustedCertEntry;-><init>(Ljava/util/Date;Ljava/security/cert/Certificate;)V

    invoke-virtual {v10, v7, v11}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_96
    .catchall {:try_start_88 .. :try_end_96} :catchall_cf

    .line 292
    nop

    .line 246
    add-int/lit8 v6, v6, 0x1

    goto :goto_3b

    .line 283
    :cond_9a
    :try_start_9a
    new-instance v0, Ljava/io/IOException;

    const-string v1, "password incorrect or store tampered with"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_a2
    .catchall {:try_start_9a .. :try_end_a2} :catchall_a2

    .line 288
    :catchall_a2
    move-exception v0

    :try_start_a3
    invoke-virtual {v11}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi$ErasableByteStream;->erase()V

    .line 289
    throw v0

    .line 252
    :pswitch_a7
    new-instance v0, Ljava/io/IOException;

    const-string v1, "BC JKS store is read-only and only supports certificate entries"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 294
    :goto_af
    const-string v1, "unable to discern entry type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 242
    :goto_b5
    const-string v1, "unable to discern store version"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 299
    :cond_bb
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi$ErasableByteStream;->available()I

    move-result v0
    :try_end_bf
    .catchall {:try_start_a3 .. :try_end_bf} :catchall_cf

    if-nez v0, :cond_c7

    .line 306
    :try_start_c1
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi$ErasableByteStream;->erase()V

    .line 307
    nop

    .line 308
    monitor-exit p2
    :try_end_c6
    .catchall {:try_start_c1 .. :try_end_c6} :catchall_d4

    .line 309
    return-void

    .line 301
    :cond_c7
    :try_start_c7
    new-instance v0, Ljava/io/IOException;

    const-string v1, "password incorrect or store tampered with"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_cf
    .catchall {:try_start_c7 .. :try_end_cf} :catchall_cf

    .line 306
    :catchall_cf
    move-exception v0

    :try_start_d0
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi$ErasableByteStream;->erase()V

    .line 307
    throw v0

    .line 308
    :catchall_d4
    move-exception p1

    monitor-exit p2
    :try_end_d6
    .catchall {:try_start_d0 .. :try_end_d6} :catchall_d4

    throw p1

    nop

    :pswitch_data_d8
    .packed-switch 0x1
        :pswitch_2c
        :pswitch_26
    .end packed-switch

    :pswitch_data_e0
    .packed-switch 0x1
        :pswitch_a7
        :pswitch_47
    .end packed-switch
.end method

.method public whitelist test-api engineLoad(Ljava/security/KeyStore$LoadStoreParameter;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 193
    if-nez p1, :cond_7

    .line 195
    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi;->engineLoad(Ljava/io/InputStream;[C)V

    goto :goto_1a

    .line 197
    :cond_7
    instance-of v0, p1, Lcom/android/internal/org/bouncycastle/jcajce/BCLoadStoreParameter;

    if-eqz v0, :cond_1b

    .line 199
    move-object v0, p1

    check-cast v0, Lcom/android/internal/org/bouncycastle/jcajce/BCLoadStoreParameter;

    .line 201
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/jcajce/BCLoadStoreParameter;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/ParameterUtil;->extractPassword(Ljava/security/KeyStore$LoadStoreParameter;)[C

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi;->engineLoad(Ljava/io/InputStream;[C)V

    .line 202
    nop

    .line 208
    :goto_1a
    return-void

    .line 205
    :cond_1b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no support for \'param\' of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 206
    invoke-interface {p1}, Ljava/security/KeyStore$LoadStoreParameter;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api engineProbe(Ljava/io/InputStream;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    instance-of v0, p1, Ljava/io/DataInputStream;

    if-eqz v0, :cond_7

    .line 56
    check-cast p1, Ljava/io/DataInputStream;

    goto :goto_d

    .line 60
    :cond_7
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    move-object p1, v0

    .line 63
    :goto_d
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 64
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result p1

    .line 65
    const v1, -0x1120113

    if-ne v0, v1, :cond_21

    const/4 v0, 0x1

    if-eq p1, v0, :cond_20

    const/4 v1, 0x2

    if-ne p1, v1, :cond_21

    :cond_20
    goto :goto_22

    :cond_21
    const/4 v0, 0x0

    :goto_22
    return v0
.end method

.method public whitelist test-api engineSetCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .line 120
    new-instance p1, Ljava/security/KeyStoreException;

    const-string p2, "BC JKS store is read-only and only supports certificate entries"

    invoke-direct {p1, p2}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist test-api engineSetKeyEntry(Ljava/lang/String;Ljava/security/Key;[C[Ljava/security/cert/Certificate;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .line 108
    new-instance p1, Ljava/security/KeyStoreException;

    const-string p2, "BC JKS store is read-only and only supports certificate entries"

    invoke-direct {p1, p2}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist test-api engineSetKeyEntry(Ljava/lang/String;[B[Ljava/security/cert/Certificate;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .line 114
    new-instance p1, Ljava/security/KeyStoreException;

    const-string p2, "BC JKS store is read-only and only supports certificate entries"

    invoke-direct {p1, p2}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist test-api engineSize()I
    .registers 2

    .line 152
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi;->certificateEntries:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    return v0
.end method

.method public whitelist test-api engineStore(Ljava/io/OutputStream;[C)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 187
    new-instance p1, Ljava/io/IOException;

    const-string p2, "BC JKS store is read-only and only supports certificate entries"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
