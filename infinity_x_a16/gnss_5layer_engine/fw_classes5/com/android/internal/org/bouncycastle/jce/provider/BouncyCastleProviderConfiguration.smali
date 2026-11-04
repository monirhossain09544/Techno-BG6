.class Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;
.super Ljava/lang/Object;
.source "BouncyCastleProviderConfiguration.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;


# static fields
.field private static blacklist BC_ADDITIONAL_EC_CURVE_PERMISSION:Ljava/security/Permission;

.field private static blacklist BC_DH_LOCAL_PERMISSION:Ljava/security/Permission;

.field private static blacklist BC_DH_PERMISSION:Ljava/security/Permission;

.field private static blacklist BC_EC_CURVE_PERMISSION:Ljava/security/Permission;

.field private static blacklist BC_EC_LOCAL_PERMISSION:Ljava/security/Permission;

.field private static blacklist BC_EC_PERMISSION:Ljava/security/Permission;


# instance fields
.field private volatile blacklist acceptableNamedCurves:Ljava/util/Set;

.field private volatile blacklist additionalECParameters:Ljava/util/Map;

.field private volatile blacklist dhDefaultParams:Ljava/lang/Object;

.field private blacklist dhThreadSpec:Ljava/lang/ThreadLocal;

.field private volatile blacklist ecImplicitCaParams:Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;

.field private blacklist ecThreadSpec:Ljava/lang/ThreadLocal;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 27
    new-instance v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;

    const-string v1, "threadLocalEcImplicitlyCa"

    const-string v2, "BC"

    invoke-direct {v0, v2, v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->BC_EC_LOCAL_PERMISSION:Ljava/security/Permission;

    .line 29
    new-instance v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;

    const-string v1, "ecImplicitlyCa"

    invoke-direct {v0, v2, v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->BC_EC_PERMISSION:Ljava/security/Permission;

    .line 31
    new-instance v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;

    const-string v1, "threadLocalDhDefaultParams"

    invoke-direct {v0, v2, v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->BC_DH_LOCAL_PERMISSION:Ljava/security/Permission;

    .line 33
    new-instance v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;

    const-string v1, "DhDefaultParams"

    invoke-direct {v0, v2, v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->BC_DH_PERMISSION:Ljava/security/Permission;

    .line 35
    new-instance v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;

    const-string v1, "acceptableEcCurves"

    invoke-direct {v0, v2, v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->BC_EC_CURVE_PERMISSION:Ljava/security/Permission;

    .line 37
    new-instance v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;

    const-string v1, "additionalEcParameters"

    invoke-direct {v0, v2, v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->BC_ADDITIONAL_EC_CURVE_PERMISSION:Ljava/security/Permission;

    return-void
.end method

.method constructor blacklist <init>()V
    .registers 2

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->ecThreadSpec:Ljava/lang/ThreadLocal;

    .line 41
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->dhThreadSpec:Ljava/lang/ThreadLocal;

    .line 45
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->acceptableNamedCurves:Ljava/util/Set;

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->additionalECParameters:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public blacklist getAcceptableNamedCurves()Ljava/util/Set;
    .registers 2

    .line 222
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->acceptableNamedCurves:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getAdditionalECParameters()Ljava/util/Map;
    .registers 2

    .line 227
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->additionalECParameters:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getDHDefaultParameters(I)Ljavax/crypto/spec/DHParameterSpec;
    .registers 5

    .line 172
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->dhThreadSpec:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    .line 173
    if-nez v0, :cond_a

    .line 175
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->dhDefaultParams:Ljava/lang/Object;

    .line 178
    :cond_a
    instance-of v1, v0, Ljavax/crypto/spec/DHParameterSpec;

    if-eqz v1, :cond_1c

    .line 180
    check-cast v0, Ljavax/crypto/spec/DHParameterSpec;

    .line 182
    invoke-virtual {v0}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    if-ne v1, p1, :cond_1b

    .line 184
    return-object v0

    .line 186
    :cond_1b
    goto :goto_38

    .line 187
    :cond_1c
    instance-of v1, v0, [Ljavax/crypto/spec/DHParameterSpec;

    if-eqz v1, :cond_38

    .line 189
    check-cast v0, [Ljavax/crypto/spec/DHParameterSpec;

    .line 191
    const/4 v1, 0x0

    :goto_23
    array-length v2, v0

    if-eq v1, v2, :cond_38

    .line 193
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    if-ne v2, p1, :cond_35

    .line 195
    aget-object p1, v0, v1

    return-object p1

    .line 191
    :cond_35
    add-int/lit8 v1, v1, 0x1

    goto :goto_23

    .line 200
    :cond_38
    :goto_38
    sget-object v0, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;->DH_DEFAULT_PARAMS:Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;

    invoke-static {v0, p1}, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar;->getSizedProperty(Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;

    .line 201
    if-eqz p1, :cond_48

    .line 203
    new-instance v0, Lcom/android/internal/org/bouncycastle/jcajce/spec/DHDomainParameterSpec;

    invoke-direct {v0, p1}, Lcom/android/internal/org/bouncycastle/jcajce/spec/DHDomainParameterSpec;-><init>(Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;)V

    return-object v0

    .line 206
    :cond_48
    const/4 p1, 0x0

    return-object p1
.end method

.method public blacklist getDSADefaultParameters(I)Ljava/security/spec/DSAParameterSpec;
    .registers 5

    .line 211
    sget-object v0, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;->DSA_DEFAULT_PARAMS:Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;

    invoke-static {v0, p1}, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar;->getSizedProperty(Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;

    .line 212
    if-eqz p1, :cond_1c

    .line 214
    new-instance v0, Ljava/security/spec/DSAParameterSpec;

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;->getP()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;->getQ()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;->getG()Ljava/math/BigInteger;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Ljava/security/spec/DSAParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v0

    .line 217
    :cond_1c
    const/4 p1, 0x0

    return-object p1
.end method

.method public blacklist getEcImplicitlyCa()Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;
    .registers 2

    .line 160
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->ecThreadSpec:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;

    .line 162
    if-eqz v0, :cond_b

    .line 164
    return-object v0

    .line 167
    :cond_b
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->ecImplicitCaParams:Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;

    return-object v0
.end method

.method blacklist setParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5

    .line 50
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 52
    const-string v1, "threadLocalEcImplicitlyCa"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 56
    if-eqz v0, :cond_13

    .line 58
    sget-object p1, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->BC_EC_LOCAL_PERMISSION:Ljava/security/Permission;

    invoke-virtual {v0, p1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 61
    :cond_13
    instance-of p1, p2, Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;

    if-nez p1, :cond_21

    if-nez p2, :cond_1a

    goto :goto_21

    .line 67
    :cond_1a
    check-cast p2, Ljava/security/spec/ECParameterSpec;

    invoke-static {p2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertSpec(Ljava/security/spec/ECParameterSpec;)Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;

    move-result-object p1

    goto :goto_24

    .line 63
    :cond_21
    :goto_21
    move-object p1, p2

    check-cast p1, Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;

    .line 70
    :goto_24
    if-nez p1, :cond_2c

    .line 72
    iget-object p1, p0, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->ecThreadSpec:Ljava/lang/ThreadLocal;

    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->remove()V

    goto :goto_31

    .line 76
    :cond_2c
    iget-object p2, p0, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->ecThreadSpec:Ljava/lang/ThreadLocal;

    invoke-virtual {p2, p1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 78
    :goto_31
    goto/16 :goto_d6

    .line 79
    :cond_33
    const-string v1, "ecImplicitlyCa"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_59

    .line 81
    if-eqz v0, :cond_42

    .line 83
    sget-object p1, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->BC_EC_PERMISSION:Ljava/security/Permission;

    invoke-virtual {v0, p1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 86
    :cond_42
    instance-of p1, p2, Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;

    if-nez p1, :cond_53

    if-nez p2, :cond_49

    goto :goto_53

    .line 92
    :cond_49
    check-cast p2, Ljava/security/spec/ECParameterSpec;

    invoke-static {p2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertSpec(Ljava/security/spec/ECParameterSpec;)Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->ecImplicitCaParams:Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;

    goto/16 :goto_d6

    .line 88
    :cond_53
    :goto_53
    check-cast p2, Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;

    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->ecImplicitCaParams:Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;

    goto/16 :goto_d6

    .line 95
    :cond_59
    const-string v1, "threadLocalDhDefaultParams"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8a

    .line 99
    if-eqz v0, :cond_68

    .line 101
    sget-object p1, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->BC_DH_LOCAL_PERMISSION:Ljava/security/Permission;

    invoke-virtual {v0, p1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 104
    :cond_68
    instance-of p1, p2, Ljavax/crypto/spec/DHParameterSpec;

    if-nez p1, :cond_7b

    instance-of p1, p2, [Ljavax/crypto/spec/DHParameterSpec;

    if-nez p1, :cond_7b

    if-nez p2, :cond_73

    goto :goto_7b

    .line 110
    :cond_73
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "not a valid DHParameterSpec"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 106
    :cond_7b
    :goto_7b
    nop

    .line 113
    if-nez p2, :cond_84

    .line 115
    iget-object p1, p0, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->dhThreadSpec:Ljava/lang/ThreadLocal;

    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->remove()V

    goto :goto_89

    .line 119
    :cond_84
    iget-object p1, p0, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->dhThreadSpec:Ljava/lang/ThreadLocal;

    invoke-virtual {p1, p2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 121
    :goto_89
    goto :goto_d6

    .line 122
    :cond_8a
    const-string v1, "DhDefaultParams"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_af

    .line 124
    if-eqz v0, :cond_99

    .line 126
    sget-object p1, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->BC_DH_PERMISSION:Ljava/security/Permission;

    invoke-virtual {v0, p1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 129
    :cond_99
    instance-of p1, p2, Ljavax/crypto/spec/DHParameterSpec;

    if-nez p1, :cond_ac

    instance-of p1, p2, [Ljavax/crypto/spec/DHParameterSpec;

    if-nez p1, :cond_ac

    if-nez p2, :cond_a4

    goto :goto_ac

    .line 135
    :cond_a4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "not a valid DHParameterSpec or DHParameterSpec[]"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 131
    :cond_ac
    :goto_ac
    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->dhDefaultParams:Ljava/lang/Object;

    goto :goto_d6

    .line 138
    :cond_af
    const-string v1, "acceptableEcCurves"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c3

    .line 140
    if-eqz v0, :cond_be

    .line 142
    sget-object p1, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->BC_EC_CURVE_PERMISSION:Ljava/security/Permission;

    invoke-virtual {v0, p1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 145
    :cond_be
    check-cast p2, Ljava/util/Set;

    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->acceptableNamedCurves:Ljava/util/Set;

    goto :goto_d6

    .line 147
    :cond_c3
    const-string v1, "additionalEcParameters"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d6

    .line 149
    if-eqz v0, :cond_d2

    .line 151
    sget-object p1, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->BC_ADDITIONAL_EC_CURVE_PERMISSION:Ljava/security/Permission;

    invoke-virtual {v0, p1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 154
    :cond_d2
    check-cast p2, Ljava/util/Map;

    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->additionalECParameters:Ljava/util/Map;

    .line 156
    :cond_d6
    :goto_d6
    return-void
.end method
