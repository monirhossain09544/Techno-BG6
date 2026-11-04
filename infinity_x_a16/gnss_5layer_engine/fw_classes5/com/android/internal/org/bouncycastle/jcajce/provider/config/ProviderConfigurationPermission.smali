.class public Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;
.super Ljava/security/BasicPermission;
.source "ProviderConfigurationPermission.java"


# static fields
.field private static final blacklist ACCEPTABLE_EC_CURVES:I = 0x10

.field private static final blacklist ACCEPTABLE_EC_CURVES_STR:Ljava/lang/String; = "acceptableeccurves"

.field private static final blacklist ADDITIONAL_EC_PARAMETERS:I = 0x20

.field private static final blacklist ADDITIONAL_EC_PARAMETERS_STR:Ljava/lang/String; = "additionalecparameters"

.field private static final blacklist ALL:I = 0x3f

.field private static final blacklist ALL_STR:Ljava/lang/String; = "all"

.field private static final blacklist DH_DEFAULT_PARAMS:I = 0x8

.field private static final blacklist DH_DEFAULT_PARAMS_STR:Ljava/lang/String; = "dhdefaultparams"

.field private static final blacklist EC_IMPLICITLY_CA:I = 0x2

.field private static final blacklist EC_IMPLICITLY_CA_STR:Ljava/lang/String; = "ecimplicitlyca"

.field private static final blacklist THREAD_LOCAL_DH_DEFAULT_PARAMS:I = 0x4

.field private static final blacklist THREAD_LOCAL_DH_DEFAULT_PARAMS_STR:Ljava/lang/String; = "threadlocaldhdefaultparams"

.field private static final blacklist THREAD_LOCAL_EC_IMPLICITLY_CA:I = 0x1

.field private static final blacklist THREAD_LOCAL_EC_IMPLICITLY_CA_STR:Ljava/lang/String; = "threadlocalecimplicitlyca"


# instance fields
.field private final blacklist actions:Ljava/lang/String;

.field private final blacklist permissionMask:I


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 2

    .line 56
    invoke-direct {p0, p1}, Ljava/security/BasicPermission;-><init>(Ljava/lang/String;)V

    .line 57
    const-string p1, "all"

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;->actions:Ljava/lang/String;

    .line 58
    const/16 p1, 0x3f

    iput p1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;->permissionMask:I

    .line 59
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 63
    invoke-direct {p0, p1, p2}, Ljava/security/BasicPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;->actions:Ljava/lang/String;

    .line 65
    invoke-direct {p0, p2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;->calculateMask(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;->permissionMask:I

    .line 66
    return-void
.end method

.method private blacklist calculateMask(Ljava/lang/String;)I
    .registers 5

    .line 71
    new-instance v0, Ljava/util/StringTokenizer;

    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/util/Strings;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, " ,"

    invoke-direct {v0, p1, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    const/4 p1, 0x0

    .line 74
    :goto_c
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_63

    .line 76
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 78
    const-string v2, "threadlocalecimplicitlyca"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 80
    or-int/lit8 p1, p1, 0x1

    goto :goto_62

    .line 82
    :cond_21
    const-string v2, "ecimplicitlyca"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 84
    or-int/lit8 p1, p1, 0x2

    goto :goto_62

    .line 86
    :cond_2c
    const-string v2, "threadlocaldhdefaultparams"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_37

    .line 88
    or-int/lit8 p1, p1, 0x4

    goto :goto_62

    .line 90
    :cond_37
    const-string v2, "dhdefaultparams"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_42

    .line 92
    or-int/lit8 p1, p1, 0x8

    goto :goto_62

    .line 94
    :cond_42
    const-string v2, "acceptableeccurves"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4d

    .line 96
    or-int/lit8 p1, p1, 0x10

    goto :goto_62

    .line 98
    :cond_4d
    const-string v2, "additionalecparameters"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_58

    .line 100
    or-int/lit8 p1, p1, 0x20

    goto :goto_62

    .line 102
    :cond_58
    const-string v2, "all"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_62

    .line 104
    const/16 p1, 0x3f

    .line 106
    :cond_62
    :goto_62
    goto :goto_c

    .line 108
    :cond_63
    if-eqz p1, :cond_66

    .line 113
    return p1

    .line 110
    :cond_66
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "unknown permissions passed to mask"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 142
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    .line 144
    return v0

    .line 147
    :cond_4
    instance-of v1, p1, Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;

    const/4 v2, 0x0

    if-eqz v1, :cond_22

    .line 149
    check-cast p1, Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;

    .line 151
    iget v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;->permissionMask:I

    iget v3, p1, Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;->permissionMask:I

    if-ne v1, v3, :cond_20

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_20

    goto :goto_21

    :cond_20
    move v0, v2

    :goto_21
    return v0

    .line 154
    :cond_22
    return v2
.end method

.method public whitelist test-api getActions()Ljava/lang/String;
    .registers 2

    .line 118
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;->actions:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 159
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;->permissionMask:I

    add-int/2addr v0, v1

    return v0
.end method

.method public whitelist test-api implies(Ljava/security/Permission;)Z
    .registers 5

    .line 124
    instance-of v0, p1, Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 126
    return v1

    .line 129
    :cond_6
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/security/Permission;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 131
    return v1

    .line 134
    :cond_15
    check-cast p1, Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;

    .line 136
    iget v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;->permissionMask:I

    iget v2, p1, Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;->permissionMask:I

    and-int/2addr v0, v2

    iget p1, p1, Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;->permissionMask:I

    if-ne v0, p1, :cond_21

    const/4 v1, 0x1

    :cond_21
    return v1
.end method
