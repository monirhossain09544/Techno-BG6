.class public Landroid/security/trickystore/KeyBoxManager;
.super Ljava/lang/Object;
.source "KeyBoxManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/trickystore/KeyBoxManager$KeyBox;
    }
.end annotation


# static fields
.field private static final blacklist PEM_HEADER:Ljava/util/regex/Pattern;

.field private static final blacklist TAG:Ljava/lang/String; = "KeyBoxManager"

.field private static final blacklist XML_COMMENT:Ljava/util/regex/Pattern;


# instance fields
.field private final blacklist mKeyboxes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/security/trickystore/KeyBoxManager$KeyBox;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 49
    const-string v0, "-----BEGIN ([^-]+)-----"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/security/trickystore/KeyBoxManager;->PEM_HEADER:Ljava/util/regex/Pattern;

    .line 50
    const-string v0, "<!--.*?-->"

    const/16 v1, 0x20

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/security/trickystore/KeyBoxManager;->XML_COMMENT:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Landroid/security/trickystore/KeyBoxManager;->mKeyboxes:Ljava/util/Map;

    return-void
.end method

.method private blacklist detectPemType(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 283
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    .line 284
    :cond_4
    sget-object v1, Landroid/security/trickystore/KeyBoxManager;->PEM_HEADER:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 285
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_1d

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    :cond_1d
    return-object v0
.end method

.method private blacklist parseEcPrivateKey([BLjava/lang/String;)Ljava/security/PrivateKey;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 242
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    .line 243
    :try_start_5
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p1
    :try_end_9
    .catchall {:try_start_5 .. :try_end_9} :catchall_52

    .line 245
    :try_start_9
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/asn1/sec/ECPrivateKey;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/sec/ECPrivateKey;

    move-result-object v1

    .line 246
    nop

    .line 247
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/sec/ECPrivateKey;->getParameters()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    check-cast v2, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 246
    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/asn1/x9/ECNamedCurveTable;->getByOID(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object v2

    .line 248
    new-instance v3, Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;

    .line 249
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;->getCurve()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v4

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;->getG()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v5

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;->getN()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;->getH()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v3, v4, v5, v6, v2}, Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 250
    new-instance v2, Lcom/android/internal/org/bouncycastle/crypto/params/ECPrivateKeyParameters;

    .line 251
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/sec/ECPrivateKey;->getKey()Ljava/math/BigInteger;

    move-result-object v1

    invoke-direct {v2, v1, v3}, Lcom/android/internal/org/bouncycastle/crypto/params/ECPrivateKeyParameters;-><init>(Ljava/math/BigInteger;Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;)V

    .line 252
    new-instance v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;

    const/4 v3, 0x0

    invoke-direct {v1, p2, v2, v3}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;-><init>(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/crypto/params/ECPrivateKeyParameters;Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;)V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_3c} :catch_40
    .catchall {:try_start_9 .. :try_end_3c} :catchall_52

    .line 257
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->close()V

    .line 252
    return-object v1

    .line 253
    :catch_40
    move-exception p2

    .line 254
    :try_start_41
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    move-result-object p1

    .line 255
    new-instance p2, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyFactorySpi$EC;

    invoke-direct {p2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyFactorySpi$EC;-><init>()V

    invoke-virtual {p2, p1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyFactorySpi$EC;->generatePrivate(Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;)Ljava/security/PrivateKey;

    move-result-object p1
    :try_end_4e
    .catchall {:try_start_41 .. :try_end_4e} :catchall_52

    .line 257
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->close()V

    .line 255
    return-object p1

    .line 242
    :catchall_52
    move-exception p1

    :try_start_53
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->close()V
    :try_end_56
    .catchall {:try_start_53 .. :try_end_56} :catchall_57

    goto :goto_5b

    :catchall_57
    move-exception p2

    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_5b
    throw p1
.end method

.method private blacklist parsePemContent(Ljava/lang/String;)[B
    .registers 4

    .line 289
    nop

    .line 290
    const-string v0, "-----BEGIN [^-]+-----"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 291
    const-string v0, "-----END [^-]+-----"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 292
    const-string v0, "\\s"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 293
    invoke-static {}, Ljava/util/Base64;->getDecoder()Ljava/util/Base64$Decoder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/Base64$Decoder;->decode(Ljava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method

.method private blacklist parsePrivateKey(Ljava/lang/String;Ljava/lang/String;)Ljava/security/PrivateKey;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 212
    invoke-direct {p0, p1}, Landroid/security/trickystore/KeyBoxManager;->detectPemType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 213
    invoke-direct {p0, p1}, Landroid/security/trickystore/KeyBoxManager;->parsePemContent(Ljava/lang/String;)[B

    move-result-object p1

    .line 215
    const-string v1, "EC PRIVATE KEY"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_84

    .line 216
    const-string v1, "EC"

    invoke-virtual {v1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    if-nez v0, :cond_1b

    goto :goto_84

    .line 220
    :cond_1b
    const-string v2, "RSA PRIVATE KEY"

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7f

    .line 221
    const-string v2, "RSA"

    invoke-virtual {v2, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2e

    if-nez v0, :cond_2e

    goto :goto_7f

    .line 225
    :cond_2e
    const-string v3, "PRIVATE KEY"

    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4d

    const-string v3, "ENCRYPTED PRIVATE KEY"

    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f

    goto :goto_4d

    .line 237
    :cond_3f
    new-instance v0, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v0, p1}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    .line 238
    invoke-static {p2}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object p1

    return-object p1

    .line 226
    :cond_4d
    :goto_4d
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    move-result-object v0

    .line 227
    invoke-virtual {v2, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_61

    .line 228
    new-instance p1, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/KeyFactorySpi;

    invoke-direct {p1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/KeyFactorySpi;-><init>()V

    invoke-virtual {p1, v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/KeyFactorySpi;->generatePrivate(Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;)Ljava/security/PrivateKey;

    move-result-object p1

    return-object p1

    .line 230
    :cond_61
    invoke-virtual {v1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_71

    .line 231
    new-instance p1, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyFactorySpi$EC;

    invoke-direct {p1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyFactorySpi$EC;-><init>()V

    invoke-virtual {p1, v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyFactorySpi$EC;->generatePrivate(Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;)Ljava/security/PrivateKey;

    move-result-object p1

    return-object p1

    .line 233
    :cond_71
    new-instance v0, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v0, p1}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    .line 234
    invoke-static {p2}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object p1

    return-object p1

    .line 222
    :cond_7f
    :goto_7f
    invoke-direct {p0, p1}, Landroid/security/trickystore/KeyBoxManager;->parseRsaPrivateKey([B)Ljava/security/PrivateKey;

    move-result-object p1

    return-object p1

    .line 217
    :cond_84
    :goto_84
    invoke-direct {p0, p1, p2}, Landroid/security/trickystore/KeyBoxManager;->parseEcPrivateKey([BLjava/lang/String;)Ljava/security/PrivateKey;

    move-result-object p1

    return-object p1
.end method

.method private blacklist parseRsaPrivateKey([B)Ljava/security/PrivateKey;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 261
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v1, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    .line 262
    :try_start_5
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p1
    :try_end_9
    .catchall {:try_start_5 .. :try_end_9} :catchall_52

    .line 264
    :try_start_9
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSAPrivateKey;

    move-result-object v0

    .line 265
    new-instance v2, Ljava/security/spec/RSAPrivateCrtKeySpec;

    .line 266
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v3

    .line 267
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v4

    .line 268
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object v5

    .line 269
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->getPrime1()Ljava/math/BigInteger;

    move-result-object v6

    .line 270
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->getPrime2()Ljava/math/BigInteger;

    move-result-object v7

    .line 271
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->getExponent1()Ljava/math/BigInteger;

    move-result-object v8

    .line 272
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->getExponent2()Ljava/math/BigInteger;

    move-result-object v9

    .line 273
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->getCoefficient()Ljava/math/BigInteger;

    move-result-object v10

    invoke-direct/range {v2 .. v10}, Ljava/security/spec/RSAPrivateCrtKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 274
    const-string v0, "RSA"

    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object p1
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_3c} :catch_40
    .catchall {:try_start_9 .. :try_end_3c} :catchall_52

    .line 279
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->close()V

    .line 274
    return-object p1

    .line 275
    :catch_40
    move-exception v0

    .line 276
    :try_start_41
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    move-result-object p1

    .line 277
    new-instance v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/KeyFactorySpi;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/KeyFactorySpi;-><init>()V

    invoke-virtual {v0, p1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/KeyFactorySpi;->generatePrivate(Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;)Ljava/security/PrivateKey;

    move-result-object p1
    :try_end_4e
    .catchall {:try_start_41 .. :try_end_4e} :catchall_52

    .line 279
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->close()V

    .line 277
    return-object p1

    .line 261
    :catchall_52
    move-exception v0

    move-object p1, v0

    :try_start_54
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->close()V
    :try_end_57
    .catchall {:try_start_54 .. :try_end_57} :catchall_58

    goto :goto_5c

    :catchall_58
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_5c
    throw p1
.end method

.method private blacklist processKeybox(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 178
    const-string v0, "KeyBoxManager"

    :try_start_2
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    const/4 v3, 0x0

    sparse-switch v2, :sswitch_data_b8

    :cond_e
    goto :goto_2e

    :sswitch_f
    const-string v2, "ecdsa"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v1, 0x1

    goto :goto_2f

    :sswitch_19
    const-string/jumbo v2, "rsa"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v1, 0x2

    goto :goto_2f

    :sswitch_24
    const-string v2, "ec"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    move v1, v3

    goto :goto_2f

    :goto_2e
    const/4 v1, -0x1

    :goto_2f
    packed-switch v1, :pswitch_data_c6

    .line 187
    goto :goto_39

    .line 184
    :pswitch_33
    const-string v1, "RSA"

    .line 185
    goto :goto_3a

    .line 181
    :pswitch_36
    const-string v1, "EC"

    .line 182
    goto :goto_3a

    .line 187
    :goto_39
    move-object v1, p1

    .line 190
    :goto_3a
    invoke-direct {p0, p2, v1}, Landroid/security/trickystore/KeyBoxManager;->parsePrivateKey(Ljava/lang/String;Ljava/lang/String;)Ljava/security/PrivateKey;

    move-result-object p2

    .line 191
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 192
    const-string v4, "X.509"

    invoke-static {v4}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v4

    .line 194
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_4d
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6a

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 195
    invoke-direct {p0, v5}, Landroid/security/trickystore/KeyBoxManager;->parsePemContent(Ljava/lang/String;)[B

    move-result-object v5

    .line 196
    new-instance v6, Ljava/io/ByteArrayInputStream;

    invoke-direct {v6, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v4, v6}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v5

    .line 197
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 198
    goto :goto_4d

    .line 200
    :cond_6a
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_9f

    .line 201
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/security/cert/X509Certificate;

    invoke-virtual {p3}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object p3

    .line 202
    new-instance v3, Ljava/security/KeyPair;

    invoke-direct {v3, p3, p2}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    .line 203
    iget-object p2, p0, Landroid/security/trickystore/KeyBoxManager;->mKeyboxes:Ljava/util/Map;

    new-instance p3, Landroid/security/trickystore/KeyBoxManager$KeyBox;

    invoke-direct {p3, v3, v2}, Landroid/security/trickystore/KeyBoxManager$KeyBox;-><init>(Ljava/security/KeyPair;Ljava/util/List;)V

    invoke-interface {p2, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Added keybox for algorithm: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9f
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_9f} :catch_a0

    .line 208
    :cond_9f
    goto :goto_b7

    .line 206
    :catch_a0
    move-exception p2

    .line 207
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to process keybox for algorithm: "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 209
    :goto_b7
    return-void

    :sswitch_data_b8
    .sparse-switch
        0xc9e -> :sswitch_24
        0x1ba40 -> :sswitch_19
        0x5bdcc54 -> :sswitch_f
    .end sparse-switch

    :pswitch_data_c6
    .packed-switch 0x0
        :pswitch_36
        :pswitch_36
        :pswitch_33
    .end packed-switch
.end method

.method private blacklist sanitizeXml(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 297
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 298
    const-string/jumbo v0, "\ufffe"

    const-string v1, "\u0000\ufeff"

    const-string/jumbo v2, "\ufeff"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 299
    const/4 v1, 0x0

    :goto_11
    const/4 v2, 0x3

    if-ge v1, v2, :cond_27

    aget-object v2, v0, v1

    .line 300
    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 301
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 299
    :cond_24
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 304
    :cond_27
    sget-object v0, Landroid/security/trickystore/KeyBoxManager;->XML_COMMENT:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 305
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public blacklist clear()V
    .registers 3

    .line 64
    iget-object v0, p0, Landroid/security/trickystore/KeyBoxManager;->mKeyboxes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 65
    const-string v0, "KeyBoxManager"

    const-string v1, "Keyboxes cleared"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    return-void
.end method

.method public blacklist getKeybox(Ljava/lang/String;)Landroid/security/trickystore/KeyBoxManager$KeyBox;
    .registers 3

    .line 73
    iget-object v0, p0, Landroid/security/trickystore/KeyBoxManager;->mKeyboxes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/security/trickystore/KeyBoxManager$KeyBox;

    return-object p1
.end method

.method public blacklist hasKeyboxes()Z
    .registers 2

    .line 69
    iget-object v0, p0, Landroid/security/trickystore/KeyBoxManager;->mKeyboxes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public blacklist parseKeybox(Ljava/lang/String;)V
    .registers 20

    .line 77
    move-object/from16 v0, p0

    const-string v1, "KeyBoxManager"

    iget-object v2, v0, Landroid/security/trickystore/KeyBoxManager;->mKeyboxes:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 78
    if-eqz p1, :cond_154

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_13

    goto/16 :goto_154

    .line 83
    :cond_13
    :try_start_13
    invoke-direct/range {p0 .. p1}, Landroid/security/trickystore/KeyBoxManager;->sanitizeXml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 84
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v3

    .line 85
    invoke-virtual {v3}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 86
    const-string v4, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->setFeature(Ljava/lang/String;Z)V

    .line 87
    new-instance v4, Ljava/io/StringReader;

    invoke-direct {v4, v2}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 89
    nop

    .line 90
    nop

    .line 91
    nop

    .line 92
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 93
    nop

    .line 94
    nop

    .line 95
    nop

    .line 96
    nop

    .line 97
    nop

    .line 98
    nop

    .line 100
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v4

    move v7, v5

    move v10, v7

    move v11, v10

    move v12, v11

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 101
    :goto_47
    const/4 v15, 0x1

    if-eq v4, v15, :cond_12a

    .line 102
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_4e} :catch_14d

    .line 104
    const-string v15, "CertificateChain"

    const-string v6, "Certificate"

    move/from16 v16, v4

    const-string v4, "PrivateKey"

    move/from16 v17, v7

    const-string v7, "Key"

    packed-switch v16, :pswitch_data_156

    const/4 v7, 0x0

    goto/16 :goto_121

    .line 126
    :pswitch_60
    :try_start_60
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v4

    .line 127
    if-eqz v4, :cond_7d

    .line 128
    if-eqz v17, :cond_70

    if-eqz v8, :cond_70

    .line 129
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v7, 0x0

    goto/16 :goto_121

    .line 130
    :cond_70
    if-eqz v10, :cond_7a

    if-eqz v9, :cond_7a

    .line 131
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v7, 0x0

    goto/16 :goto_121

    .line 130
    :cond_7a
    const/4 v7, 0x0

    goto/16 :goto_121

    .line 127
    :cond_7d
    const/4 v7, 0x0

    goto/16 :goto_121

    .line 137
    :pswitch_80
    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9d

    .line 138
    if-eqz v8, :cond_98

    .line 139
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 140
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_97

    .line 141
    move-object v14, v4

    .line 143
    :cond_97
    const/4 v8, 0x0

    .line 145
    :cond_98
    const/4 v7, 0x0

    const/16 v17, 0x0

    goto/16 :goto_121

    .line 146
    :cond_9d
    invoke-virtual {v6, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_bb

    .line 147
    if-eqz v9, :cond_b7

    .line 148
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 149
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_b6

    .line 150
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    :cond_b6
    const/4 v9, 0x0

    .line 154
    :cond_b7
    const/4 v7, 0x0

    const/4 v10, 0x0

    goto/16 :goto_121

    .line 155
    :cond_bb
    invoke-virtual {v15, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c4

    .line 156
    const/4 v7, 0x0

    const/4 v12, 0x0

    goto :goto_121

    .line 157
    :cond_c4
    invoke-virtual {v7, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_db

    .line 158
    nop

    .line 159
    if-eqz v13, :cond_d8

    if-eqz v14, :cond_d8

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_d8

    .line 160
    invoke-direct {v0, v13, v14, v2}, Landroid/security/trickystore/KeyBoxManager;->processKeybox(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 166
    :cond_d8
    const/4 v7, 0x0

    const/4 v11, 0x0

    goto :goto_121

    .line 157
    :cond_db
    const/4 v7, 0x0

    goto :goto_121

    .line 106
    :pswitch_dd
    invoke-virtual {v7, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f6

    .line 107
    nop

    .line 108
    nop

    .line 109
    const-string v4, "algorithm"

    const/4 v7, 0x0

    invoke-interface {v3, v7, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 110
    nop

    .line 111
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 112
    nop

    .line 113
    move-object v8, v7

    move-object v9, v8

    move-object v14, v9

    const/4 v11, 0x1

    goto :goto_121

    .line 114
    :cond_f6
    const/4 v7, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_108

    if-eqz v11, :cond_108

    .line 115
    nop

    .line 116
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v17, 0x1

    goto :goto_121

    .line 117
    :cond_108
    invoke-virtual {v15, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_112

    if-eqz v11, :cond_112

    .line 118
    const/4 v12, 0x1

    goto :goto_121

    .line 119
    :cond_112
    invoke-virtual {v6, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_121

    if-eqz v12, :cond_121

    .line 120
    nop

    .line 121
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v10, 0x1

    .line 166
    :cond_121
    :goto_121
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    .line 167
    move/from16 v7, v17

    const/4 v5, 0x0

    goto/16 :goto_47

    .line 169
    :cond_12a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Parsed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, v0, Landroid/security/trickystore/KeyBoxManager;->mKeyboxes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " keyboxes"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14c
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_14c} :catch_14d

    .line 172
    goto :goto_153

    .line 170
    :catch_14d
    move-exception v0

    .line 171
    const-string v2, "Failed to parse keybox XML"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 173
    :goto_153
    return-void

    .line 79
    :cond_154
    :goto_154
    return-void

    nop

    :pswitch_data_156
    .packed-switch 0x2
        :pswitch_dd
        :pswitch_80
        :pswitch_60
    .end packed-switch
.end method
