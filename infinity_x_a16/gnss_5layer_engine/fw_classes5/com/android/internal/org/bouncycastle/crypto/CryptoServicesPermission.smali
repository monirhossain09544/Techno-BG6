.class public Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesPermission;
.super Ljava/security/Permission;
.source "CryptoServicesPermission.java"


# static fields
.field public static final blacklist CONSTRAINTS:Ljava/lang/String; = "constraints"

.field public static final blacklist DEFAULT_RANDOM:Ljava/lang/String; = "defaultRandomConfig"

.field public static final blacklist GLOBAL_CONFIG:Ljava/lang/String; = "globalConfig"

.field public static final blacklist THREAD_LOCAL_CONFIG:Ljava/lang/String; = "threadLocalConfig"


# instance fields
.field private final blacklist actions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 3

    .line 39
    invoke-direct {p0, p1}, Ljava/security/Permission;-><init>(Ljava/lang/String;)V

    .line 35
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesPermission;->actions:Ljava/util/Set;

    .line 41
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesPermission;->actions:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 42
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 3

    .line 66
    instance-of v0, p1, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesPermission;

    if-eqz v0, :cond_12

    .line 68
    check-cast p1, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesPermission;

    .line 70
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesPermission;->actions:Ljava/util/Set;

    iget-object p1, p1, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesPermission;->actions:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12

    .line 72
    const/4 p1, 0x1

    return p1

    .line 76
    :cond_12
    const/4 p1, 0x0

    return p1
.end method

.method public whitelist test-api getActions()Ljava/lang/String;
    .registers 2

    .line 86
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesPermission;->actions:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 81
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesPermission;->actions:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->hashCode()I

    move-result v0

    return v0
.end method

.method public whitelist test-api implies(Ljava/security/Permission;)Z
    .registers 4

    .line 46
    instance-of v0, p1, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesPermission;

    if-eqz v0, :cond_21

    .line 48
    check-cast p1, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesPermission;

    .line 50
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesPermission;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesPermission;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_16

    .line 52
    return v1

    .line 55
    :cond_16
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesPermission;->actions:Ljava/util/Set;

    iget-object p1, p1, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesPermission;->actions:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_21

    .line 57
    return v1

    .line 61
    :cond_21
    const/4 p1, 0x0

    return p1
.end method
