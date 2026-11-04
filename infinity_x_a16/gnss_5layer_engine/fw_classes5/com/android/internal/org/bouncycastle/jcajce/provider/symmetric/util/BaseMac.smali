.class public Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseMac;
.super Ljavax/crypto/MacSpi;
.source "BaseMac.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/PBE;


# instance fields
.field private blacklist keySize:I

.field private blacklist macEngine:Lcom/android/internal/org/bouncycastle/crypto/Mac;

.field private blacklist pbeHash:I

.field private blacklist scheme:I


# direct methods
.method protected constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/crypto/Mac;)V
    .registers 3

    .line 47
    invoke-direct {p0}, Ljavax/crypto/MacSpi;-><init>()V

    .line 41
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseMac;->scheme:I

    .line 42
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseMac;->pbeHash:I

    .line 43
    const/16 v0, 0xa0

    iput v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseMac;->keySize:I

    .line 48
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseMac;->macEngine:Lcom/android/internal/org/bouncycastle/crypto/Mac;

    .line 49
    return-void
.end method

.method protected constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/crypto/Mac;III)V
    .registers 6

    .line 56
    invoke-direct {p0}, Ljavax/crypto/MacSpi;-><init>()V

    .line 41
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseMac;->scheme:I

    .line 42
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseMac;->pbeHash:I

    .line 43
    const/16 v0, 0xa0

    iput v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseMac;->keySize:I

    .line 57
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseMac;->macEngine:Lcom/android/internal/org/bouncycastle/crypto/Mac;

    .line 58
    iput p2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseMac;->scheme:I

    .line 59
    iput p3, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseMac;->pbeHash:I

    .line 60
    iput p4, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseMac;->keySize:I

    .line 61
    return-void
.end method

.method private static blacklist copyMap(Ljava/util/Map;)Ljava/util/Hashtable;
    .registers 5

    .line 270
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 272
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 273
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 275
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 276
    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    goto :goto_d

    .line 279
    :cond_1f
    return-object v0
.end method


# virtual methods
.method protected whitelist test-api engineDoFinal()[B
    .registers 4

    .line 261
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseMac;->engineGetMacLength()I

    move-result v0

    new-array v0, v0, [B

    .line 263
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseMac;->macEngine:Lcom/android/internal/org/bouncycastle/crypto/Mac;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/android/internal/org/bouncycastle/crypto/Mac;->doFinal([BI)I

    .line 265
    return-object v0
.end method

.method protected whitelist test-api engineGetMacLength()I
    .registers 2

    .line 237
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseMac;->macEngine:Lcom/android/internal/org/bouncycastle/crypto/Mac;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/crypto/Mac;->getMacSize()I

    move-result v0

    return v0
.end method

.method protected whitelist test-api engineInit(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 70
    if-eqz p1, :cond_1ad

    .line 75
    instance-of v0, p1, Lcom/android/internal/org/bouncycastle/jcajce/PKCS12Key;

    if-eqz v0, :cond_c2

    .line 82
    :try_start_6
    move-object v0, p1

    check-cast v0, Ljavax/crypto/SecretKey;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_9} :catch_b9

    .line 87
    nop

    .line 91
    :try_start_a
    move-object v1, p2

    check-cast v1, Ljavax/crypto/spec/PBEParameterSpec;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_d} :catch_b0

    .line 96
    nop

    .line 98
    instance-of v2, v0, Ljavax/crypto/interfaces/PBEKey;

    if-eqz v2, :cond_24

    if-nez v1, :cond_24

    .line 100
    new-instance v1, Ljavax/crypto/spec/PBEParameterSpec;

    move-object v2, v0

    check-cast v2, Ljavax/crypto/interfaces/PBEKey;

    invoke-interface {v2}, Ljavax/crypto/interfaces/PBEKey;->getSalt()[B

    move-result-object v3

    invoke-interface {v2}, Ljavax/crypto/interfaces/PBEKey;->getIterationCount()I

    move-result v2

    invoke-direct {v1, v3, v2}, Ljavax/crypto/spec/PBEParameterSpec;-><init>([BI)V

    .line 103
    :cond_24
    nop

    .line 104
    nop

    .line 114
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseMac;->macEngine:Lcom/android/internal/org/bouncycastle/crypto/Mac;

    instance-of v2, v2, Lcom/android/internal/org/bouncycastle/crypto/macs/HMac;

    if-eqz v2, :cond_a7

    .line 116
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseMac;->macEngine:Lcom/android/internal/org/bouncycastle/crypto/Mac;

    invoke-interface {v2}, Lcom/android/internal/org/bouncycastle/crypto/Mac;->getAlgorithmName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SHA-1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a7

    .line 118
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseMac;->macEngine:Lcom/android/internal/org/bouncycastle/crypto/Mac;

    invoke-interface {v2}, Lcom/android/internal/org/bouncycastle/crypto/Mac;->getAlgorithmName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SHA-224"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4d

    .line 120
    nop

    .line 121
    const/4 v2, 0x7

    const/16 v3, 0xe0

    goto :goto_aa

    .line 123
    :cond_4d
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseMac;->macEngine:Lcom/android/internal/org/bouncycastle/crypto/Mac;

    invoke-interface {v2}, Lcom/android/internal/org/bouncycastle/crypto/Mac;->getAlgorithmName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SHA-256"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_60

    .line 125
    nop

    .line 126
    const/4 v2, 0x4

    const/16 v3, 0x100

    goto :goto_aa

    .line 128
    :cond_60
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseMac;->macEngine:Lcom/android/internal/org/bouncycastle/crypto/Mac;

    invoke-interface {v2}, Lcom/android/internal/org/bouncycastle/crypto/Mac;->getAlgorithmName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SHA-384"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_74

    .line 130
    nop

    .line 131
    const/16 v2, 0x8

    const/16 v3, 0x180

    goto :goto_aa

    .line 133
    :cond_74
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseMac;->macEngine:Lcom/android/internal/org/bouncycastle/crypto/Mac;

    invoke-interface {v2}, Lcom/android/internal/org/bouncycastle/crypto/Mac;->getAlgorithmName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SHA-512"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_88

    .line 135
    nop

    .line 136
    const/16 v2, 0x9

    const/16 v3, 0x200

    goto :goto_aa

    .line 147
    :cond_88
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "no PKCS12 mapping for HMAC: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseMac;->macEngine:Lcom/android/internal/org/bouncycastle/crypto/Mac;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/crypto/Mac;->getAlgorithmName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 152
    :cond_a7
    const/4 v2, 0x1

    const/16 v3, 0xa0

    :goto_aa
    const/4 v4, 0x2

    invoke-static {v0, v4, v2, v3, v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/PBE$Util;->makePBEMacParameters(Ljavax/crypto/SecretKey;IIILjavax/crypto/spec/PBEParameterSpec;)Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    move-result-object v0

    .line 153
    goto :goto_f2

    .line 93
    :catch_b0
    move-exception p1

    .line 95
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    const-string p2, "PKCS12 requires a PBEParameterSpec"

    invoke-direct {p1, p2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 84
    :catch_b9
    move-exception p1

    .line 86
    new-instance p1, Ljava/security/InvalidKeyException;

    const-string p2, "PKCS12 requires a SecretKey/PBEKey"

    invoke-direct {p1, p2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 154
    :cond_c2
    instance-of v0, p1, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;

    if-eqz v0, :cond_e5

    .line 156
    move-object v0, p1

    check-cast v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;

    .line 158
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getParam()Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    move-result-object v1

    if-eqz v1, :cond_d4

    .line 160
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getParam()Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    move-result-object v0

    goto :goto_dc

    .line 162
    :cond_d4
    instance-of v1, p2, Ljavax/crypto/spec/PBEParameterSpec;

    if-eqz v1, :cond_dd

    .line 164
    invoke-static {v0, p2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/PBE$Util;->makePBEMacParameters(Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;Ljava/security/spec/AlgorithmParameterSpec;)Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    move-result-object v0

    .line 170
    :goto_dc
    goto :goto_f2

    .line 168
    :cond_dd
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    const-string p2, "PBE requires PBE parameters to be set."

    invoke-direct {p1, p2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 173
    :cond_e5
    instance-of v0, p2, Ljavax/crypto/spec/PBEParameterSpec;

    if-nez v0, :cond_18c

    .line 177
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;

    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    .line 181
    :goto_f2
    instance-of v1, v0, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;

    if-eqz v1, :cond_100

    .line 183
    move-object v1, v0

    check-cast v1, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    move-result-object v1

    check-cast v1, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;

    goto :goto_103

    .line 187
    :cond_100
    move-object v1, v0

    check-cast v1, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;

    .line 190
    :goto_103
    instance-of v2, p2, Lcom/android/internal/org/bouncycastle/jcajce/spec/AEADParameterSpec;

    if-eqz v2, :cond_11b

    .line 192
    check-cast p2, Lcom/android/internal/org/bouncycastle/jcajce/spec/AEADParameterSpec;

    .line 194
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/params/AEADParameters;

    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/jcajce/spec/AEADParameterSpec;->getMacSizeInBits()I

    move-result p1

    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/jcajce/spec/AEADParameterSpec;->getNonce()[B

    move-result-object v2

    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/jcajce/spec/AEADParameterSpec;->getAssociatedData()[B

    move-result-object p2

    invoke-direct {v0, v1, p1, v2, p2}, Lcom/android/internal/org/bouncycastle/crypto/params/AEADParameters;-><init>(Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;I[B[B)V

    .line 195
    goto :goto_146

    .line 196
    :cond_11b
    instance-of v2, p2, Ljavax/crypto/spec/IvParameterSpec;

    if-eqz v2, :cond_12b

    .line 198
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;

    check-cast p2, Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {p2}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;[B)V

    goto :goto_146

    .line 212
    :cond_12b
    if-nez p2, :cond_137

    .line 214
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;

    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    goto :goto_146

    .line 216
    :cond_137
    invoke-static {p2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/GcmSpecUtil;->isGcmSpec(Ljava/security/spec/AlgorithmParameterSpec;)Z

    move-result p1

    if-eqz p1, :cond_142

    .line 218
    invoke-static {v1, p2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/GcmSpecUtil;->extractAeadParameters(Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;Ljava/security/spec/AlgorithmParameterSpec;)Lcom/android/internal/org/bouncycastle/crypto/params/AEADParameters;

    move-result-object v0

    goto :goto_146

    .line 220
    :cond_142
    instance-of p1, p2, Ljavax/crypto/spec/PBEParameterSpec;

    if-eqz p1, :cond_16b

    .line 227
    :goto_146
    :try_start_146
    iget-object p1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseMac;->macEngine:Lcom/android/internal/org/bouncycastle/crypto/Mac;

    invoke-interface {p1, v0}, Lcom/android/internal/org/bouncycastle/crypto/Mac;->init(Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;)V
    :try_end_14b
    .catch Ljava/lang/Exception; {:try_start_146 .. :try_end_14b} :catch_14d

    .line 232
    nop

    .line 233
    return-void

    .line 229
    :catch_14d
    move-exception p1

    .line 231
    new-instance p2, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cannot initialize MAC: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 222
    :cond_16b
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown parameter type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p2}, Ljava/security/spec/AlgorithmParameterSpec;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 175
    :cond_18c
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "inappropriate parameter type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p2}, Ljava/security/spec/AlgorithmParameterSpec;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 72
    :cond_1ad
    new-instance p1, Ljava/security/InvalidKeyException;

    const-string p2, "key is null"

    invoke-direct {p1, p2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected whitelist test-api engineReset()V
    .registers 2

    .line 242
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseMac;->macEngine:Lcom/android/internal/org/bouncycastle/crypto/Mac;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/crypto/Mac;->reset()V

    .line 243
    return-void
.end method

.method protected whitelist test-api engineUpdate(B)V
    .registers 3

    .line 248
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseMac;->macEngine:Lcom/android/internal/org/bouncycastle/crypto/Mac;

    invoke-interface {v0, p1}, Lcom/android/internal/org/bouncycastle/crypto/Mac;->update(B)V

    .line 249
    return-void
.end method

.method protected whitelist test-api engineUpdate([BII)V
    .registers 5

    .line 256
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseMac;->macEngine:Lcom/android/internal/org/bouncycastle/crypto/Mac;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/org/bouncycastle/crypto/Mac;->update([BII)V

    .line 257
    return-void
.end method
