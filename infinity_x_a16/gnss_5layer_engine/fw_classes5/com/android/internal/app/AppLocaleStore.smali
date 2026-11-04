.class public Lcom/android/internal/app/AppLocaleStore;
.super Ljava/lang/Object;
.source "AppLocaleStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/AppLocaleStore$AppLocaleResult;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 37
    const-class v0, Lcom/android/internal/app/AppLocaleStore;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/app/AppLocaleStore;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist filterNotMatchingLocale(Ljava/util/HashSet;Ljava/util/HashSet;)Ljava/util/HashSet;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/util/Locale;",
            ">;",
            "Ljava/util/HashSet<",
            "Ljava/util/Locale;",
            ">;)",
            "Ljava/util/HashSet<",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation

    .line 114
    invoke-virtual {p0}, Ljava/util/HashSet;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/internal/app/AppLocaleStore$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/android/internal/app/AppLocaleStore$$ExternalSyntheticLambda0;-><init>(Ljava/util/HashSet;)V

    .line 115
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/android/internal/app/AppLocaleStore$$ExternalSyntheticLambda1;

    invoke-direct {p1}, Lcom/android/internal/app/AppLocaleStore$$ExternalSyntheticLambda1;-><init>()V

    .line 116
    invoke-static {p1}, Ljava/util/stream/Collectors;->toCollection(Ljava/util/function/Supplier;)Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/HashSet;

    .line 114
    return-object p0
.end method

.method public static blacklist getAppSupportedLocales(Landroid/content/Context;Ljava/lang/String;)Lcom/android/internal/app/AppLocaleStore$AppLocaleResult;
    .registers 10

    .line 41
    nop

    .line 42
    sget-object v0, Lcom/android/internal/app/AppLocaleStore$AppLocaleResult$LocaleStatus;->UNKNOWN_FAILURE:Lcom/android/internal/app/AppLocaleStore$AppLocaleResult$LocaleStatus;

    .line 43
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 44
    invoke-static {p0, p1}, Lcom/android/internal/app/AppLocaleStore;->getAssetLocales(Landroid/content/Context;Ljava/lang/String;)Ljava/util/HashSet;

    move-result-object v2

    .line 47
    const/4 v3, 0x0

    :try_start_d
    new-instance v4, Landroid/app/LocaleConfig;

    invoke-virtual {p0, p1, v3}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/LocaleConfig;-><init>(Landroid/content/Context;)V
    :try_end_16
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_d .. :try_end_16} :catch_17

    .line 50
    goto :goto_3b

    .line 48
    :catch_17
    move-exception v4

    .line 49
    sget-object v5, Lcom/android/internal/app/AppLocaleStore;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Can not found the package name : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " / "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    .line 52
    :goto_3b
    if-eqz v4, :cond_c1

    .line 53
    invoke-virtual {v4}, Landroid/app/LocaleConfig;->getStatus()I

    move-result v5

    const/4 v6, 0x1

    if-nez v5, :cond_af

    .line 54
    invoke-virtual {v4}, Landroid/app/LocaleConfig;->getSupportedLocales()Landroid/os/LocaleList;

    move-result-object v0

    .line 55
    invoke-static {p0, p1}, Lcom/android/internal/app/AppLocaleStore;->hasInstallerInfo(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_55

    .line 56
    invoke-static {p0, p1}, Lcom/android/internal/app/AppLocaleStore;->isSystemApp(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_55

    goto :goto_56

    :cond_55
    move v6, v3

    .line 58
    :goto_56
    sget-object p0, Lcom/android/internal/app/AppLocaleStore;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "filterNonMatchingLocale. , shouldFilterNotMatchingLocale: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", assetLocale size: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 60
    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", packageLocaleList size: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 61
    invoke-virtual {v0}, Landroid/os/LocaleList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 58
    invoke-static {p0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    nop

    :goto_8b
    invoke-virtual {v0}, Landroid/os/LocaleList;->size()I

    move-result p0

    if-ge v3, p0, :cond_9b

    .line 64
    invoke-virtual {v0, v3}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 63
    add-int/lit8 v3, v3, 0x1

    goto :goto_8b

    .line 66
    :cond_9b
    if-eqz v6, :cond_a1

    .line 67
    invoke-static {v1, v2}, Lcom/android/internal/app/AppLocaleStore;->filterNotMatchingLocale(Ljava/util/HashSet;Ljava/util/HashSet;)Ljava/util/HashSet;

    move-result-object v1

    .line 70
    :cond_a1
    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result p0

    if-lez p0, :cond_ab

    .line 71
    sget-object p0, Lcom/android/internal/app/AppLocaleStore$AppLocaleResult$LocaleStatus;->GET_SUPPORTED_LANGUAGE_FROM_LOCAL_CONFIG:Lcom/android/internal/app/AppLocaleStore$AppLocaleResult$LocaleStatus;

    move-object v0, p0

    goto :goto_ae

    .line 73
    :cond_ab
    sget-object p0, Lcom/android/internal/app/AppLocaleStore$AppLocaleResult$LocaleStatus;->NO_SUPPORTED_LANGUAGE_IN_APP:Lcom/android/internal/app/AppLocaleStore$AppLocaleResult$LocaleStatus;

    move-object v0, p0

    .line 75
    :cond_ae
    :goto_ae
    goto :goto_c1

    :cond_af
    invoke-virtual {v4}, Landroid/app/LocaleConfig;->getStatus()I

    move-result p0

    if-ne p0, v6, :cond_ae

    .line 76
    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result p0

    if-lez p0, :cond_bf

    .line 77
    sget-object v0, Lcom/android/internal/app/AppLocaleStore$AppLocaleResult$LocaleStatus;->GET_SUPPORTED_LANGUAGE_FROM_ASSET:Lcom/android/internal/app/AppLocaleStore$AppLocaleResult$LocaleStatus;

    .line 78
    move-object v1, v2

    goto :goto_c1

    .line 80
    :cond_bf
    sget-object v0, Lcom/android/internal/app/AppLocaleStore$AppLocaleResult$LocaleStatus;->ASSET_LOCALE_IS_EMPTY:Lcom/android/internal/app/AppLocaleStore$AppLocaleResult$LocaleStatus;

    .line 84
    :cond_c1
    :goto_c1
    sget-object p0, Lcom/android/internal/app/AppLocaleStore;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAppSupportedLocales(). package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, ", status: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, ", appSupportedLocales:"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 86
    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 84
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    new-instance p0, Lcom/android/internal/app/AppLocaleStore$AppLocaleResult;

    invoke-direct {p0, v0, v1}, Lcom/android/internal/app/AppLocaleStore$AppLocaleResult;-><init>(Lcom/android/internal/app/AppLocaleStore$AppLocaleResult$LocaleStatus;Ljava/util/HashSet;)V

    return-object p0
.end method

.method private static blacklist getAssetLocales(Landroid/content/Context;Ljava/lang/String;)Ljava/util/HashSet;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashSet<",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation

    .line 91
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 93
    :try_start_5
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 94
    nop

    .line 95
    const/high16 v1, 0x20000

    invoke-virtual {p0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 94
    invoke-virtual {p0, v1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object p0

    .line 96
    invoke-virtual {p0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/AssetManager;->getNonSystemLocales()[Ljava/lang/String;

    move-result-object p0
    :try_end_1e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_1e} :catch_70

    .line 97
    const-string v1, "["

    if-nez p0, :cond_3f

    .line 98
    :try_start_22
    sget-object p0, Lcom/android/internal/app/AppLocaleStore;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] locales are null."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6f

    .line 99
    :cond_3f
    array-length v2, p0

    if-gtz v2, :cond_5f

    .line 100
    sget-object p0, Lcom/android/internal/app/AppLocaleStore;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] locales length is 0."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6f

    .line 102
    :cond_5f
    array-length v1, p0

    const/4 v2, 0x0

    :goto_61
    if-ge v2, v1, :cond_6f

    aget-object v3, p0, v2

    .line 103
    invoke-static {v3}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_6c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_22 .. :try_end_6c} :catch_70

    .line 102
    add-int/lit8 v2, v2, 0x1

    goto :goto_61

    .line 108
    :cond_6f
    :goto_6f
    goto :goto_93

    .line 106
    :catch_70
    move-exception p0

    .line 107
    sget-object v1, Lcom/android/internal/app/AppLocaleStore;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can not found the package name : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, " / "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    :goto_93
    return-object v0
.end method

.method private static blacklist hasInstallerInfo(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 5

    .line 134
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getInstallSourceInfo(Ljava/lang/String;)Landroid/content/pm/InstallSourceInfo;

    move-result-object p0
    :try_end_9
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_9} :catch_d

    .line 135
    if-eqz p0, :cond_c

    const/4 v0, 0x1

    :cond_c
    return v0

    .line 136
    :catch_d
    move-exception p0

    .line 137
    sget-object p0, Lcom/android/internal/app/AppLocaleStore;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Installer info not found for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    return v0
.end method

.method private static blacklist isSystemApp(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 5

    .line 145
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 146
    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result p0

    invoke-virtual {v1, p1, v0, p0}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    .line 147
    invoke-virtual {p0}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result p0
    :try_end_11
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_11} :catch_12

    return p0

    .line 148
    :catch_12
    move-exception p0

    .line 149
    sget-object p0, Lcom/android/internal/app/AppLocaleStore;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Application info not found for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    return v0
.end method

.method static synthetic blacklist lambda$filterNotMatchingLocale$0(Ljava/util/HashSet;Ljava/util/Locale;)Z
    .registers 2

    .line 115
    invoke-static {p1, p0}, Lcom/android/internal/app/AppLocaleStore;->matchLanguageInSet(Ljava/util/Locale;Ljava/util/HashSet;)Z

    move-result p0

    return p0
.end method

.method private static blacklist matchLanguageInSet(Ljava/util/Locale;Ljava/util/HashSet;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Locale;",
            "Ljava/util/HashSet<",
            "Ljava/util/Locale;",
            ">;)Z"
        }
    .end annotation

    .line 120
    invoke-virtual {p1, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 121
    return v1

    .line 123
    :cond_8
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;

    .line 124
    invoke-static {v0, p0}, Landroid/os/LocaleList;->matchesLanguageAndScript(Ljava/util/Locale;Ljava/util/Locale;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 125
    return v1

    .line 127
    :cond_1f
    goto :goto_c

    .line 128
    :cond_20
    const/4 p0, 0x0

    return p0
.end method
