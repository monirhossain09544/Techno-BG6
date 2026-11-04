.class public Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/PBE$Util;
.super Ljava/lang/Object;
.source "PBE.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/PBE;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Util"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist convertPassword(ILjavax/crypto/spec/PBEKeySpec;)[B
    .registers 3

    .line 544
    const/4 v0, 0x2

    if-ne p0, v0, :cond_c

    .line 546
    invoke-virtual {p1}, Ljavax/crypto/spec/PBEKeySpec;->getPassword()[C

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/crypto/PBEParametersGenerator;->PKCS12PasswordToBytes([C)[B

    move-result-object p0

    goto :goto_24

    .line 548
    :cond_c
    const/4 v0, 0x5

    if-eq p0, v0, :cond_1c

    const/4 v0, 0x4

    if-ne p0, v0, :cond_13

    goto :goto_1c

    .line 554
    :cond_13
    invoke-virtual {p1}, Ljavax/crypto/spec/PBEKeySpec;->getPassword()[C

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/crypto/PBEParametersGenerator;->PKCS5PasswordToBytes([C)[B

    move-result-object p0

    goto :goto_24

    .line 550
    :cond_1c
    :goto_1c
    invoke-virtual {p1}, Ljavax/crypto/spec/PBEKeySpec;->getPassword()[C

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/crypto/PBEParametersGenerator;->PKCS5PasswordToUTF8Bytes([C)[B

    move-result-object p0

    .line 556
    :goto_24
    return-object p0
.end method

.method public static blacklist getParameterSpecFromPBEParameterSpec(Ljavax/crypto/spec/PBEParameterSpec;)Ljava/security/spec/AlgorithmParameterSpec;
    .registers 5

    .line 529
    :try_start_0
    const-class v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/PBE;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "javax.crypto.spec.PBEParameterSpec"

    .line 530
    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getParameterSpec"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    .line 531
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 532
    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/security/spec/AlgorithmParameterSpec;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1d} :catch_1e

    return-object p0

    .line 533
    :catch_1e
    move-exception p0

    .line 534
    const/4 p0, 0x0

    return-object p0
.end method

.method private static blacklist makePBEGenerator(II)Lcom/android/internal/org/bouncycastle/crypto/PBEParametersGenerator;
    .registers 3

    .line 83
    if-eqz p0, :cond_aa

    const/4 v0, 0x4

    if-ne p0, v0, :cond_7

    goto/16 :goto_aa

    .line 105
    :cond_7
    const/4 v0, 0x1

    if-eq p0, v0, :cond_63

    const/4 v0, 0x5

    if-ne p0, v0, :cond_e

    goto :goto_63

    .line 187
    :cond_e
    const/4 v0, 0x2

    if-ne p0, v0, :cond_5d

    .line 189
    packed-switch p1, :pswitch_data_ca

    .line 244
    :pswitch_14
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "unknown digest scheme for PBE encryption."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 241
    :pswitch_1c
    new-instance p0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;

    invoke-static {}, Lcom/android/internal/org/bouncycastle/crypto/digests/AndroidDigestFactory;->getSHA512()Lcom/android/internal/org/bouncycastle/crypto/Digest;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;-><init>(Lcom/android/internal/org/bouncycastle/crypto/Digest;)V

    .line 242
    goto/16 :goto_c9

    .line 236
    :pswitch_27
    new-instance p0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;

    invoke-static {}, Lcom/android/internal/org/bouncycastle/crypto/digests/AndroidDigestFactory;->getSHA384()Lcom/android/internal/org/bouncycastle/crypto/Digest;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;-><init>(Lcom/android/internal/org/bouncycastle/crypto/Digest;)V

    .line 237
    goto/16 :goto_c9

    .line 231
    :pswitch_32
    new-instance p0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;

    invoke-static {}, Lcom/android/internal/org/bouncycastle/crypto/digests/AndroidDigestFactory;->getSHA224()Lcom/android/internal/org/bouncycastle/crypto/Digest;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;-><init>(Lcom/android/internal/org/bouncycastle/crypto/Digest;)V

    .line 232
    goto/16 :goto_c9

    .line 218
    :pswitch_3d
    new-instance p0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;

    invoke-static {}, Lcom/android/internal/org/bouncycastle/crypto/digests/AndroidDigestFactory;->getSHA256()Lcom/android/internal/org/bouncycastle/crypto/Digest;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;-><init>(Lcom/android/internal/org/bouncycastle/crypto/Digest;)V

    .line 219
    goto/16 :goto_c9

    .line 203
    :pswitch_48
    new-instance p0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;

    invoke-static {}, Lcom/android/internal/org/bouncycastle/crypto/digests/AndroidDigestFactory;->getSHA1()Lcom/android/internal/org/bouncycastle/crypto/Digest;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;-><init>(Lcom/android/internal/org/bouncycastle/crypto/Digest;)V

    .line 204
    goto/16 :goto_c9

    .line 198
    :pswitch_53
    new-instance p0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;

    invoke-static {}, Lcom/android/internal/org/bouncycastle/crypto/digests/AndroidDigestFactory;->getMD5()Lcom/android/internal/org/bouncycastle/crypto/Digest;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;-><init>(Lcom/android/internal/org/bouncycastle/crypto/Digest;)V

    .line 199
    goto :goto_c9

    .line 249
    :cond_5d
    new-instance p0, Lcom/android/internal/org/bouncycastle/crypto/generators/OpenSSLPBEParametersGenerator;

    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/crypto/generators/OpenSSLPBEParametersGenerator;-><init>()V

    goto :goto_c9

    .line 107
    :cond_63
    :goto_63
    packed-switch p1, :pswitch_data_e2

    .line 184
    :pswitch_66
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "unknown digest scheme for PBE PKCS5S2 encryption."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 159
    :pswitch_6e
    new-instance p0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;

    invoke-static {}, Lcom/android/internal/org/bouncycastle/crypto/digests/AndroidDigestFactory;->getSHA512()Lcom/android/internal/org/bouncycastle/crypto/Digest;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;-><init>(Lcom/android/internal/org/bouncycastle/crypto/Digest;)V

    .line 160
    goto :goto_c9

    .line 154
    :pswitch_78
    new-instance p0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;

    invoke-static {}, Lcom/android/internal/org/bouncycastle/crypto/digests/AndroidDigestFactory;->getSHA384()Lcom/android/internal/org/bouncycastle/crypto/Digest;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;-><init>(Lcom/android/internal/org/bouncycastle/crypto/Digest;)V

    .line 155
    goto :goto_c9

    .line 149
    :pswitch_82
    new-instance p0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;

    invoke-static {}, Lcom/android/internal/org/bouncycastle/crypto/digests/AndroidDigestFactory;->getSHA224()Lcom/android/internal/org/bouncycastle/crypto/Digest;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;-><init>(Lcom/android/internal/org/bouncycastle/crypto/Digest;)V

    .line 150
    goto :goto_c9

    .line 136
    :pswitch_8c
    new-instance p0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;

    invoke-static {}, Lcom/android/internal/org/bouncycastle/crypto/digests/AndroidDigestFactory;->getSHA256()Lcom/android/internal/org/bouncycastle/crypto/Digest;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;-><init>(Lcom/android/internal/org/bouncycastle/crypto/Digest;)V

    .line 137
    goto :goto_c9

    .line 121
    :pswitch_96
    new-instance p0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;

    invoke-static {}, Lcom/android/internal/org/bouncycastle/crypto/digests/AndroidDigestFactory;->getSHA1()Lcom/android/internal/org/bouncycastle/crypto/Digest;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;-><init>(Lcom/android/internal/org/bouncycastle/crypto/Digest;)V

    .line 122
    goto :goto_c9

    .line 116
    :pswitch_a0
    new-instance p0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;

    invoke-static {}, Lcom/android/internal/org/bouncycastle/crypto/digests/AndroidDigestFactory;->getMD5()Lcom/android/internal/org/bouncycastle/crypto/Digest;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;-><init>(Lcom/android/internal/org/bouncycastle/crypto/Digest;)V

    .line 117
    goto :goto_c9

    .line 85
    :cond_aa
    :goto_aa
    packed-switch p1, :pswitch_data_fa

    .line 102
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "PKCS5 scheme 1 only supports MD2, MD5 and SHA1."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 99
    :pswitch_b5
    new-instance p0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS5S1ParametersGenerator;

    invoke-static {}, Lcom/android/internal/org/bouncycastle/crypto/digests/AndroidDigestFactory;->getSHA1()Lcom/android/internal/org/bouncycastle/crypto/Digest;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS5S1ParametersGenerator;-><init>(Lcom/android/internal/org/bouncycastle/crypto/Digest;)V

    .line 100
    goto :goto_c9

    .line 94
    :pswitch_bf
    new-instance p0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS5S1ParametersGenerator;

    invoke-static {}, Lcom/android/internal/org/bouncycastle/crypto/digests/AndroidDigestFactory;->getMD5()Lcom/android/internal/org/bouncycastle/crypto/Digest;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS5S1ParametersGenerator;-><init>(Lcom/android/internal/org/bouncycastle/crypto/Digest;)V

    .line 95
    nop

    .line 252
    :goto_c9
    return-object p0

    :pswitch_data_ca
    .packed-switch 0x0
        :pswitch_53
        :pswitch_48
        :pswitch_14
        :pswitch_14
        :pswitch_3d
        :pswitch_14
        :pswitch_14
        :pswitch_32
        :pswitch_27
        :pswitch_1c
    .end packed-switch

    :pswitch_data_e2
    .packed-switch 0x0
        :pswitch_a0
        :pswitch_96
        :pswitch_66
        :pswitch_66
        :pswitch_8c
        :pswitch_66
        :pswitch_66
        :pswitch_82
        :pswitch_78
        :pswitch_6e
    .end packed-switch

    :pswitch_data_fa
    .packed-switch 0x0
        :pswitch_bf
        :pswitch_b5
    .end packed-switch
.end method

.method public static blacklist makePBEMacParameters(Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;Ljava/security/spec/AlgorithmParameterSpec;)Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;
    .registers 5

    .line 407
    if-eqz p1, :cond_2c

    instance-of v0, p1, Ljavax/crypto/spec/PBEParameterSpec;

    if-eqz v0, :cond_2c

    .line 412
    check-cast p1, Ljavax/crypto/spec/PBEParameterSpec;

    .line 413
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getType()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getDigest()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/PBE$Util;->makePBEGenerator(II)Lcom/android/internal/org/bouncycastle/crypto/PBEParametersGenerator;

    move-result-object v0

    .line 414
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getEncoded()[B

    move-result-object v1

    .line 417
    invoke-virtual {p1}, Ljavax/crypto/spec/PBEParameterSpec;->getSalt()[B

    move-result-object v2

    invoke-virtual {p1}, Ljavax/crypto/spec/PBEParameterSpec;->getIterationCount()I

    move-result p1

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/internal/org/bouncycastle/crypto/PBEParametersGenerator;->init([B[BI)V

    .line 419
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getKeySize()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/internal/org/bouncycastle/crypto/PBEParametersGenerator;->generateDerivedMacParameters(I)Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    move-result-object p0

    .line 421
    return-object p0

    .line 409
    :cond_2c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Need a PBEParameter spec with a PBE key."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static blacklist makePBEMacParameters(Ljavax/crypto/SecretKey;IIILjavax/crypto/spec/PBEParameterSpec;)Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;
    .registers 6

    .line 501
    invoke-static {p1, p2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/PBE$Util;->makePBEGenerator(II)Lcom/android/internal/org/bouncycastle/crypto/PBEParametersGenerator;

    move-result-object p1

    .line 504
    invoke-interface {p0}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object p2

    .line 506
    invoke-interface {p0}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object p0

    invoke-virtual {p4}, Ljavax/crypto/spec/PBEParameterSpec;->getSalt()[B

    move-result-object v0

    invoke-virtual {p4}, Ljavax/crypto/spec/PBEParameterSpec;->getIterationCount()I

    move-result p4

    invoke-virtual {p1, p0, v0, p4}, Lcom/android/internal/org/bouncycastle/crypto/PBEParametersGenerator;->init([B[BI)V

    .line 508
    invoke-virtual {p1, p3}, Lcom/android/internal/org/bouncycastle/crypto/PBEParametersGenerator;->generateDerivedMacParameters(I)Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    move-result-object p0

    .line 510
    const/4 p1, 0x0

    move p3, p1

    :goto_1d
    array-length p4, p2

    if-eq p3, p4, :cond_25

    .line 512
    aput-byte p1, p2, p3

    .line 510
    add-int/lit8 p3, p3, 0x1

    goto :goto_1d

    .line 515
    :cond_25
    return-object p0
.end method

.method public static blacklist makePBEMacParameters(Ljavax/crypto/spec/PBEKeySpec;III)Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;
    .registers 5

    .line 435
    invoke-static {p1, p2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/PBE$Util;->makePBEGenerator(II)Lcom/android/internal/org/bouncycastle/crypto/PBEParametersGenerator;

    move-result-object p2

    .line 439
    invoke-static {p1, p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/PBE$Util;->convertPassword(ILjavax/crypto/spec/PBEKeySpec;)[B

    move-result-object p1

    .line 441
    invoke-virtual {p0}, Ljavax/crypto/spec/PBEKeySpec;->getSalt()[B

    move-result-object v0

    invoke-virtual {p0}, Ljavax/crypto/spec/PBEKeySpec;->getIterationCount()I

    move-result p0

    invoke-virtual {p2, p1, v0, p0}, Lcom/android/internal/org/bouncycastle/crypto/PBEParametersGenerator;->init([B[BI)V

    .line 443
    invoke-virtual {p2, p3}, Lcom/android/internal/org/bouncycastle/crypto/PBEParametersGenerator;->generateDerivedMacParameters(I)Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    move-result-object p0

    .line 445
    const/4 p2, 0x0

    move p3, p2

    :goto_19
    array-length v0, p1

    if-eq p3, v0, :cond_21

    .line 447
    aput-byte p2, p1, p3

    .line 445
    add-int/lit8 p3, p3, 0x1

    goto :goto_19

    .line 450
    :cond_21
    return-object p0
.end method

.method public static blacklist makePBEParameters(Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;Ljava/security/spec/AlgorithmParameterSpec;Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;
    .registers 7

    .line 338
    if-eqz p1, :cond_9a

    instance-of v0, p1, Ljavax/crypto/spec/PBEParameterSpec;

    if-eqz v0, :cond_9a

    .line 343
    check-cast p1, Ljavax/crypto/spec/PBEParameterSpec;

    .line 344
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getType()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getDigest()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/PBE$Util;->makePBEGenerator(II)Lcom/android/internal/org/bouncycastle/crypto/PBEParametersGenerator;

    move-result-object v0

    .line 345
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getEncoded()[B

    move-result-object v1

    .line 348
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->shouldTryWrongPKCS12()Z

    move-result v2

    if-eqz v2, :cond_21

    .line 350
    const/4 v1, 0x2

    new-array v1, v1, [B

    .line 353
    :cond_21
    invoke-virtual {p1}, Ljavax/crypto/spec/PBEParameterSpec;->getSalt()[B

    move-result-object v2

    invoke-virtual {p1}, Ljavax/crypto/spec/PBEParameterSpec;->getIterationCount()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/org/bouncycastle/crypto/PBEParametersGenerator;->init([B[BI)V

    .line 355
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getIvSize()I

    move-result v1

    if-eqz v1, :cond_6a

    .line 357
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getKeySize()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getIvSize()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/org/bouncycastle/crypto/PBEParametersGenerator;->generateDerivedParameters(II)Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    move-result-object v0

    .line 361
    nop

    .line 362
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/PBE$Util;->getParameterSpecFromPBEParameterSpec(Ljavax/crypto/spec/PBEParameterSpec;)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object p1

    .line 363
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_51

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getType()I

    move-result p0

    const/4 v1, 0x5

    if-ne p0, v1, :cond_69

    :cond_51
    instance-of p0, p1, Ljavax/crypto/spec/IvParameterSpec;

    if-eqz p0, :cond_69

    .line 365
    check-cast v0, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;

    .line 366
    check-cast p1, Ljavax/crypto/spec/IvParameterSpec;

    .line 368
    new-instance p0, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;

    .line 369
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;

    .line 370
    invoke-virtual {p1}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;[B)V

    move-object v0, p0

    .line 373
    :cond_69
    goto :goto_72

    .line 376
    :cond_6a
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getKeySize()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/internal/org/bouncycastle/crypto/PBEParametersGenerator;->generateDerivedParameters(I)Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    move-result-object v0

    .line 379
    :goto_72
    const-string p0, "DES"

    invoke-virtual {p2, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_99

    .line 381
    instance-of p0, v0, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;

    if-eqz p0, :cond_8f

    .line 383
    move-object p0, v0

    check-cast p0, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    move-result-object p0

    check-cast p0, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;

    .line 385
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/crypto/params/DESParameters;->setOddParity([B)V

    .line 386
    goto :goto_99

    .line 389
    :cond_8f
    move-object p0, v0

    check-cast p0, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;

    .line 391
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/crypto/params/DESParameters;->setOddParity([B)V

    .line 395
    :cond_99
    :goto_99
    return-object v0

    .line 340
    :cond_9a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Need a PBEParameter spec with a PBE key."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static blacklist makePBEParameters(Ljavax/crypto/spec/PBEKeySpec;IIII)Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;
    .registers 6

    .line 464
    invoke-static {p1, p2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/PBE$Util;->makePBEGenerator(II)Lcom/android/internal/org/bouncycastle/crypto/PBEParametersGenerator;

    move-result-object p2

    .line 468
    invoke-static {p1, p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/PBE$Util;->convertPassword(ILjavax/crypto/spec/PBEKeySpec;)[B

    move-result-object p1

    .line 470
    invoke-virtual {p0}, Ljavax/crypto/spec/PBEKeySpec;->getSalt()[B

    move-result-object v0

    invoke-virtual {p0}, Ljavax/crypto/spec/PBEKeySpec;->getIterationCount()I

    move-result p0

    invoke-virtual {p2, p1, v0, p0}, Lcom/android/internal/org/bouncycastle/crypto/PBEParametersGenerator;->init([B[BI)V

    .line 472
    if-eqz p4, :cond_1a

    .line 474
    invoke-virtual {p2, p3, p4}, Lcom/android/internal/org/bouncycastle/crypto/PBEParametersGenerator;->generateDerivedParameters(II)Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    move-result-object p0

    goto :goto_1e

    .line 478
    :cond_1a
    invoke-virtual {p2, p3}, Lcom/android/internal/org/bouncycastle/crypto/PBEParametersGenerator;->generateDerivedParameters(I)Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    move-result-object p0

    .line 481
    :goto_1e
    const/4 p2, 0x0

    move p3, p2

    :goto_20
    array-length p4, p1

    if-eq p3, p4, :cond_28

    .line 483
    aput-byte p2, p1, p3

    .line 481
    add-int/lit8 p3, p3, 0x1

    goto :goto_20

    .line 486
    :cond_28
    return-object p0
.end method

.method public static blacklist makePBEParameters([BIIIILjava/security/spec/AlgorithmParameterSpec;Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 269
    if-eqz p5, :cond_6e

    instance-of v0, p5, Ljavax/crypto/spec/PBEParameterSpec;

    if-eqz v0, :cond_6e

    .line 274
    check-cast p5, Ljavax/crypto/spec/PBEParameterSpec;

    .line 275
    invoke-static {p1, p2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/PBE$Util;->makePBEGenerator(II)Lcom/android/internal/org/bouncycastle/crypto/PBEParametersGenerator;

    move-result-object p2

    .line 276
    nop

    .line 284
    invoke-virtual {p5}, Ljavax/crypto/spec/PBEParameterSpec;->getSalt()[B

    move-result-object v0

    invoke-virtual {p5}, Ljavax/crypto/spec/PBEParameterSpec;->getIterationCount()I

    move-result v1

    invoke-virtual {p2, p0, v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/PBEParametersGenerator;->init([B[BI)V

    .line 286
    if-eqz p4, :cond_42

    .line 288
    invoke-virtual {p2, p3, p4}, Lcom/android/internal/org/bouncycastle/crypto/PBEParametersGenerator;->generateDerivedParameters(II)Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    move-result-object p0

    .line 292
    nop

    .line 293
    invoke-static {p5}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/PBE$Util;->getParameterSpecFromPBEParameterSpec(Ljavax/crypto/spec/PBEParameterSpec;)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object p2

    .line 294
    const/4 p3, 0x1

    if-eq p1, p3, :cond_29

    const/4 p3, 0x5

    if-ne p1, p3, :cond_41

    :cond_29
    instance-of p1, p2, Ljavax/crypto/spec/IvParameterSpec;

    if-eqz p1, :cond_41

    .line 296
    check-cast p0, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;

    .line 297
    check-cast p2, Ljavax/crypto/spec/IvParameterSpec;

    .line 299
    new-instance p1, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;

    .line 300
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    move-result-object p0

    check-cast p0, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;

    .line 301
    invoke-virtual {p2}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;[B)V

    move-object p0, p1

    .line 304
    :cond_41
    goto :goto_46

    .line 307
    :cond_42
    invoke-virtual {p2, p3}, Lcom/android/internal/org/bouncycastle/crypto/PBEParametersGenerator;->generateDerivedParameters(I)Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    move-result-object p0

    .line 310
    :goto_46
    const-string p1, "DES"

    invoke-virtual {p6, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6d

    .line 312
    instance-of p1, p0, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;

    if-eqz p1, :cond_63

    .line 314
    move-object p1, p0

    check-cast p1, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    move-result-object p1

    check-cast p1, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;

    .line 316
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/crypto/params/DESParameters;->setOddParity([B)V

    .line 317
    goto :goto_6d

    .line 320
    :cond_63
    move-object p1, p0

    check-cast p1, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;

    .line 322
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/crypto/params/DESParameters;->setOddParity([B)V

    .line 326
    :cond_6d
    :goto_6d
    return-object p0

    .line 271
    :cond_6e
    new-instance p0, Ljava/security/InvalidAlgorithmParameterException;

    const-string p1, "Need a PBEParameter spec with a PBE key."

    invoke-direct {p0, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
