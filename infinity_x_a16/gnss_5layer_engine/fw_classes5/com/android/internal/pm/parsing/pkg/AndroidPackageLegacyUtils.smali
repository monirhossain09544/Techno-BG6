.class public Lcom/android/internal/pm/parsing/pkg/AndroidPackageLegacyUtils;
.super Ljava/lang/Object;
.source "AndroidPackageLegacyUtils.java"


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method public static blacklist fillVersionCodes(Lcom/android/server/pm/pkg/AndroidPackage;Landroid/content/pm/PackageInfo;)V
    .registers 3

    .line 69
    check-cast p0, Lcom/android/internal/pm/pkg/parsing/ParsingPackageHidden;

    invoke-interface {p0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageHidden;->getVersionCode()I

    move-result v0

    iput v0, p1, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 70
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageHidden;->getVersionCodeMajor()I

    move-result p0

    iput p0, p1, Landroid/content/pm/PackageInfo;->versionCodeMajor:I

    .line 71
    return-void
.end method

.method public static blacklist generateAppInfoWithoutState(Lcom/android/server/pm/pkg/AndroidPackage;)Landroid/content/pm/ApplicationInfo;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 52
    check-cast p0, Lcom/android/internal/pm/parsing/pkg/AndroidPackageHidden;

    invoke-interface {p0}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageHidden;->toAppInfoWithoutState()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist getRawPrimaryCpuAbi(Lcom/android/server/pm/pkg/AndroidPackage;)Ljava/lang/String;
    .registers 1

    .line 38
    check-cast p0, Lcom/android/internal/pm/parsing/pkg/AndroidPackageHidden;

    invoke-interface {p0}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageHidden;->getPrimaryCpuAbi()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist getRawSecondaryCpuAbi(Lcom/android/server/pm/pkg/AndroidPackage;)Ljava/lang/String;
    .registers 1

    .line 46
    check-cast p0, Lcom/android/internal/pm/parsing/pkg/AndroidPackageHidden;

    invoke-interface {p0}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageHidden;->getSecondaryCpuAbi()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist getRealPackageOrNull(Lcom/android/server/pm/pkg/AndroidPackage;Z)Ljava/lang/String;
    .registers 3

    .line 61
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getOriginalPackages()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_12

    if-nez p1, :cond_d

    goto :goto_12

    .line 65
    :cond_d
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getManifestPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 62
    :cond_12
    :goto_12
    const/4 p0, 0x0

    return-object p0
.end method

.method public static blacklist isOdm(Lcom/android/server/pm/pkg/AndroidPackage;)Z
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 126
    check-cast p0, Lcom/android/internal/pm/parsing/pkg/AndroidPackageHidden;

    invoke-interface {p0}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageHidden;->isOdm()Z

    move-result p0

    return p0
.end method

.method public static blacklist isOem(Lcom/android/server/pm/pkg/AndroidPackage;)Z
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 102
    check-cast p0, Lcom/android/internal/pm/parsing/pkg/AndroidPackageHidden;

    invoke-interface {p0}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageHidden;->isOem()Z

    move-result p0

    return p0
.end method

.method public static blacklist isPrivileged(Lcom/android/server/pm/pkg/AndroidPackage;)Z
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 94
    check-cast p0, Lcom/android/internal/pm/parsing/pkg/AndroidPackageHidden;

    invoke-interface {p0}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageHidden;->isPrivileged()Z

    move-result p0

    return p0
.end method

.method public static blacklist isProduct(Lcom/android/server/pm/pkg/AndroidPackage;)Z
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 118
    check-cast p0, Lcom/android/internal/pm/parsing/pkg/AndroidPackageHidden;

    invoke-interface {p0}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageHidden;->isProduct()Z

    move-result p0

    return p0
.end method

.method public static blacklist isSystem(Lcom/android/server/pm/pkg/AndroidPackage;)Z
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 78
    check-cast p0, Lcom/android/internal/pm/parsing/pkg/AndroidPackageHidden;

    invoke-interface {p0}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageHidden;->isSystem()Z

    move-result p0

    return p0
.end method

.method public static blacklist isSystemExt(Lcom/android/server/pm/pkg/AndroidPackage;)Z
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 86
    check-cast p0, Lcom/android/internal/pm/parsing/pkg/AndroidPackageHidden;

    invoke-interface {p0}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageHidden;->isSystemExt()Z

    move-result p0

    return p0
.end method

.method public static blacklist isVendor(Lcom/android/server/pm/pkg/AndroidPackage;)Z
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 110
    check-cast p0, Lcom/android/internal/pm/parsing/pkg/AndroidPackageHidden;

    invoke-interface {p0}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageHidden;->isVendor()Z

    move-result p0

    return p0
.end method
