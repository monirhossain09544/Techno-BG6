.class public Lcom/android/internal/policy/DesktopModeCompatPolicy;
.super Ljava/lang/Object;
.source "DesktopModeCompatPolicy.java"


# instance fields
.field private final blacklist mConfigExemptPackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mContext:Landroid/content/Context;

.field public blacklist mDefaultHomePackageSupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mPackageInfoCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mPackageManager:Landroid/content/pm/PackageManager;

.field private final blacklist mSystemUiPackage:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 4

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/DesktopModeCompatPolicy;->mPackageInfoCache:Ljava/util/Map;

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/DesktopModeCompatPolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 57
    iput-object p1, p0, Lcom/android/internal/policy/DesktopModeCompatPolicy;->mContext:Landroid/content/Context;

    .line 58
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x104003a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/DesktopModeCompatPolicy;->mSystemUiPackage:Ljava/lang/String;

    .line 59
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x107004d

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/policy/DesktopModeCompatPolicy;->mConfigExemptPackages:Ljava/util/List;

    .line 61
    return-void
.end method

.method private blacklist getDefaultHomePackage()Ljava/lang/String;
    .registers 3

    .line 80
    iget-object v0, p0, Lcom/android/internal/policy/DesktopModeCompatPolicy;->mDefaultHomePackageSupplier:Ljava/util/function/Supplier;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/android/internal/policy/DesktopModeCompatPolicy;->mDefaultHomePackageSupplier:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 81
    iget-object v0, p0, Lcom/android/internal/policy/DesktopModeCompatPolicy;->mDefaultHomePackageSupplier:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 84
    :cond_15
    invoke-direct {p0}, Lcom/android/internal/policy/DesktopModeCompatPolicy;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    move-result-object v0

    .line 86
    if-eqz v0, :cond_29

    .line 87
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 89
    :cond_29
    const/4 v0, 0x0

    return-object v0
.end method

.method private blacklist getPackageManager()Landroid/content/pm/PackageManager;
    .registers 2

    .line 70
    iget-object v0, p0, Lcom/android/internal/policy/DesktopModeCompatPolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    if-eqz v0, :cond_7

    .line 71
    iget-object v0, p0, Lcom/android/internal/policy/DesktopModeCompatPolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object v0

    .line 74
    :cond_7
    iget-object v0, p0, Lcom/android/internal/policy/DesktopModeCompatPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/DesktopModeCompatPolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 75
    iget-object v0, p0, Lcom/android/internal/policy/DesktopModeCompatPolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method private blacklist hasFullscreenTransparentPermission(Ljava/lang/String;I)Z
    .registers 9

    .line 238
    sget-object v0, Landroid/window/DesktopModeFlags;->ENABLE_MODALS_FULLSCREEN_WITH_PERMISSIONS:Landroid/window/DesktopModeFlags;

    invoke-virtual {v0}, Landroid/window/DesktopModeFlags;->isTrue()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_11

    .line 242
    sget-object p1, Landroid/window/DesktopExperienceFlags;->ENABLE_MODALS_FULLSCREEN_WITH_PLATFORM_SIGNATURE:Landroid/window/DesktopExperienceFlags;

    .line 243
    invoke-virtual {p1}, Landroid/window/DesktopExperienceFlags;->isTrue()Z

    move-result p1

    .line 242
    xor-int/2addr p1, v1

    return p1

    .line 246
    :cond_11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "@"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 247
    iget-object v2, p0, Lcom/android/internal/policy/DesktopModeCompatPolicy;->mPackageInfoCache:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 248
    iget-object p1, p0, Lcom/android/internal/policy/DesktopModeCompatPolicy;->mPackageInfoCache:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    .line 251
    :cond_3d
    nop

    .line 253
    const/4 v2, 0x0

    :try_start_3f
    invoke-direct {p0}, Lcom/android/internal/policy/DesktopModeCompatPolicy;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/16 v4, 0x1000

    invoke-virtual {v3, p1, v4, p2}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object p1

    .line 258
    if-eqz p1, :cond_64

    iget-object p2, p1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-eqz p2, :cond_64

    .line 259
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    array-length p2, p1

    move v3, v2

    :goto_53
    if-ge v3, p2, :cond_64

    aget-object v4, p1, v3

    .line 260
    const-string v5, "android.permission.SYSTEM_ALERT_WINDOW"

    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4
    :try_end_5d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3f .. :try_end_5d} :catch_67

    if-eqz v4, :cond_61

    .line 261
    nop

    .line 262
    goto :goto_65

    .line 259
    :cond_61
    add-int/lit8 v3, v3, 0x1

    goto :goto_53

    .line 268
    :cond_64
    move v1, v2

    :goto_65
    move v2, v1

    goto :goto_68

    .line 266
    :catch_67
    move-exception p1

    .line 269
    :goto_68
    iget-object p1, p0, Lcom/android/internal/policy/DesktopModeCompatPolicy;->mPackageInfoCache:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    return v2
.end method

.method private blacklist hasPlatformSignature(Landroid/content/pm/ActivityInfo;)Z
    .registers 4

    .line 276
    sget-object v0, Landroid/window/DesktopExperienceFlags;->ENABLE_MODALS_FULLSCREEN_WITH_PLATFORM_SIGNATURE:Landroid/window/DesktopExperienceFlags;

    invoke-virtual {v0}, Landroid/window/DesktopExperienceFlags;->isTrue()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1a

    .line 277
    if-eqz p1, :cond_18

    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_18

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 279
    invoke-virtual {p1}, Landroid/content/pm/ApplicationInfo;->isSignedWithPlatformKey()Z

    move-result p1

    if-eqz p1, :cond_18

    goto :goto_19

    :cond_18
    const/4 v1, 0x0

    .line 277
    :goto_19
    return v1

    .line 283
    :cond_1a
    sget-object p1, Landroid/window/DesktopModeFlags;->ENABLE_MODALS_FULLSCREEN_WITH_PERMISSIONS:Landroid/window/DesktopModeFlags;

    invoke-virtual {p1}, Landroid/window/DesktopModeFlags;->isTrue()Z

    move-result p1

    xor-int/2addr p1, v1

    return p1
.end method

.method private blacklist isPackageExemptViaConfig(Ljava/lang/String;)Z
    .registers 3

    .line 233
    iget-object v0, p0, Lcom/android/internal/policy/DesktopModeCompatPolicy;->mConfigExemptPackages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private blacklist isPartOfDefaultHomePackageOrNoHomeAvailable(Ljava/lang/String;)Z
    .registers 3

    .line 291
    invoke-direct {p0}, Lcom/android/internal/policy/DesktopModeCompatPolicy;->getDefaultHomePackage()Ljava/lang/String;

    move-result-object v0

    .line 292
    if-eqz v0, :cond_11

    if-eqz p1, :cond_f

    .line 293
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    goto :goto_11

    :cond_f
    const/4 p1, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 p1, 0x1

    .line 292
    :goto_12
    return p1
.end method

.method private blacklist isSystemUiTask(Ljava/lang/String;)Z
    .registers 3

    .line 229
    iget-object v0, p0, Lcom/android/internal/policy/DesktopModeCompatPolicy;->mSystemUiPackage:Ljava/lang/String;

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private blacklist isTransparentTask(ZI)Z
    .registers 3

    .line 225
    if-eqz p1, :cond_6

    if-lez p2, :cond_6

    const/4 p1, 0x1

    goto :goto_7

    :cond_6
    const/4 p1, 0x0

    :goto_7
    return p1
.end method


# virtual methods
.method public blacklist isTopActivityExemptFromDesktopWindowing(Landroid/app/TaskInfo;)Z
    .registers 10

    .line 97
    iget-object v1, p1, Landroid/app/TaskInfo;->baseActivity:Landroid/content/ComponentName;

    iget-boolean v2, p1, Landroid/app/TaskInfo;->isTopActivityNoDisplay:Z

    iget-boolean v3, p1, Landroid/app/TaskInfo;->isActivityStackTransparent:Z

    iget v4, p1, Landroid/app/TaskInfo;->numActivities:I

    iget v5, p1, Landroid/app/TaskInfo;->userId:I

    iget-object v6, p1, Landroid/app/TaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    iget v7, p1, Landroid/app/TaskInfo;->topActivityType:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/policy/DesktopModeCompatPolicy;->isTopActivityExemptFromDesktopWindowing(Landroid/content/ComponentName;ZZIILandroid/content/pm/ActivityInfo;I)Z

    move-result p1

    return p1
.end method

.method public blacklist isTopActivityExemptFromDesktopWindowing(Landroid/content/ComponentName;ZZIILandroid/content/pm/ActivityInfo;I)Z
    .registers 10

    .line 112
    if-eqz p1, :cond_7

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    goto :goto_8

    :cond_7
    const/4 p1, 0x0

    .line 113
    :goto_8
    const/4 v0, 0x0

    if-nez p1, :cond_c

    .line 114
    return v0

    .line 117
    :cond_c
    sget-object v1, Landroid/window/DesktopModeFlags;->ENABLE_DESKTOP_WINDOWING_MODALS_POLICY:Landroid/window/DesktopModeFlags;

    invoke-virtual {v1}, Landroid/window/DesktopModeFlags;->isTrue()Z

    move-result v1

    if-nez v1, :cond_15

    .line 118
    return v0

    .line 122
    :cond_15
    if-eqz p2, :cond_18

    .line 123
    return v0

    .line 126
    :cond_18
    sget-object p2, Landroid/window/DesktopExperienceFlags;->ENABLE_DREAM_ACTIVITY_WINDOWING_EXCLUSION:Landroid/window/DesktopExperienceFlags;

    invoke-virtual {p2}, Landroid/window/DesktopExperienceFlags;->isTrue()Z

    move-result p2

    const/4 v1, 0x1

    if-eqz p2, :cond_25

    const/4 p2, 0x5

    if-ne p7, p2, :cond_25

    .line 128
    return v1

    .line 132
    :cond_25
    invoke-direct {p0, p1}, Lcom/android/internal/policy/DesktopModeCompatPolicy;->isPackageExemptViaConfig(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2e

    if-nez p3, :cond_2e

    .line 133
    return v1

    .line 136
    :cond_2e
    invoke-direct {p0, p1}, Lcom/android/internal/policy/DesktopModeCompatPolicy;->isSystemUiTask(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_35

    .line 137
    return v1

    .line 140
    :cond_35
    invoke-direct {p0, p1}, Lcom/android/internal/policy/DesktopModeCompatPolicy;->isPartOfDefaultHomePackageOrNoHomeAvailable(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3c

    .line 141
    return v1

    .line 146
    :cond_3c
    invoke-direct {p0, p3, p4}, Lcom/android/internal/policy/DesktopModeCompatPolicy;->isTransparentTask(ZI)Z

    move-result p2

    if-eqz p2, :cond_50

    .line 147
    invoke-direct {p0, p1, p5}, Lcom/android/internal/policy/DesktopModeCompatPolicy;->hasFullscreenTransparentPermission(Ljava/lang/String;I)Z

    move-result p1

    if-nez p1, :cond_4e

    .line 148
    invoke-direct {p0, p6}, Lcom/android/internal/policy/DesktopModeCompatPolicy;->hasPlatformSignature(Landroid/content/pm/ActivityInfo;)Z

    move-result p1

    if-eqz p1, :cond_50

    :cond_4e
    move v0, v1

    goto :goto_51

    :cond_50
    nop

    .line 146
    :goto_51
    return v0
.end method

.method public blacklist isTransparentTask(Landroid/app/TaskInfo;)Z
    .registers 3

    .line 221
    iget-boolean v0, p1, Landroid/app/TaskInfo;->isActivityStackTransparent:Z

    iget p1, p1, Landroid/app/TaskInfo;->numActivities:I

    invoke-direct {p0, v0, p1}, Lcom/android/internal/policy/DesktopModeCompatPolicy;->isTransparentTask(ZI)Z

    move-result p1

    return p1
.end method

.method public blacklist setDefaultHomePackageSupplier(Ljava/util/function/Supplier;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 65
    iput-object p1, p0, Lcom/android/internal/policy/DesktopModeCompatPolicy;->mDefaultHomePackageSupplier:Ljava/util/function/Supplier;

    .line 66
    return-void
.end method

.method public blacklist shouldDisableDesktopEntryPoints(Landroid/app/TaskInfo;)Z
    .registers 9

    .line 153
    iget-object v0, p1, Landroid/app/TaskInfo;->baseActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_c

    iget-object v0, p1, Landroid/app/TaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    goto :goto_e

    .line 154
    :cond_c
    const/4 v0, 0x0

    move-object v2, v0

    .line 155
    :goto_e
    iget v3, p1, Landroid/app/TaskInfo;->numActivities:I

    iget-boolean v4, p1, Landroid/app/TaskInfo;->isTopActivityNoDisplay:Z

    iget-boolean v5, p1, Landroid/app/TaskInfo;->isActivityStackTransparent:Z

    iget v6, p1, Landroid/app/TaskInfo;->topActivityType:I

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/policy/DesktopModeCompatPolicy;->shouldDisableDesktopEntryPoints(Ljava/lang/String;IZZI)Z

    move-result p1

    return p1
.end method

.method public blacklist shouldDisableDesktopEntryPoints(Ljava/lang/String;IZZI)Z
    .registers 7

    .line 176
    const/4 v0, 0x1

    if-eqz p3, :cond_4

    .line 177
    return v0

    .line 180
    :cond_4
    sget-object p3, Landroid/window/DesktopExperienceFlags;->ENABLE_DREAM_ACTIVITY_WINDOWING_EXCLUSION:Landroid/window/DesktopExperienceFlags;

    invoke-virtual {p3}, Landroid/window/DesktopExperienceFlags;->isTrue()Z

    move-result p3

    if-eqz p3, :cond_10

    const/4 p3, 0x5

    if-ne p5, p3, :cond_10

    .line 182
    return v0

    .line 185
    :cond_10
    invoke-direct {p0, p1}, Lcom/android/internal/policy/DesktopModeCompatPolicy;->isSystemUiTask(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_17

    .line 186
    return v0

    .line 189
    :cond_17
    invoke-direct {p0, p1}, Lcom/android/internal/policy/DesktopModeCompatPolicy;->isPartOfDefaultHomePackageOrNoHomeAvailable(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_1e

    .line 190
    return v0

    .line 194
    :cond_1e
    invoke-direct {p0, p1}, Lcom/android/internal/policy/DesktopModeCompatPolicy;->isPackageExemptViaConfig(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_25

    .line 195
    return v0

    .line 199
    :cond_25
    invoke-direct {p0, p4, p2}, Lcom/android/internal/policy/DesktopModeCompatPolicy;->isTransparentTask(ZI)Z

    move-result p1

    return p1
.end method

.method public blacklist shouldExcludeCaptionFromAppBounds(Landroid/app/TaskInfo;)Z
    .registers 6

    .line 205
    iget-object v0, p1, Landroid/app/TaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_1d

    .line 206
    iget-object v0, p1, Landroid/app/TaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-boolean v2, p1, Landroid/app/TaskInfo;->isResizeable:Z

    iget-object v3, p1, Landroid/app/TaskInfo;->appCompatTaskInfo:Landroid/app/AppCompatTaskInfo;

    if-eqz v3, :cond_17

    iget-object p1, p1, Landroid/app/TaskInfo;->appCompatTaskInfo:Landroid/app/AppCompatTaskInfo;

    .line 210
    invoke-virtual {p1}, Landroid/app/AppCompatTaskInfo;->hasOptOutEdgeToEdge()Z

    move-result p1

    if-eqz p1, :cond_17

    const/4 v1, 0x1

    goto :goto_18

    :cond_17
    nop

    .line 206
    :goto_18
    invoke-static {v0, v2, v1}, Lcom/android/internal/policy/DesktopModeCompatUtils;->shouldExcludeCaptionFromAppBounds(Landroid/content/pm/ActivityInfo;ZZ)Z

    move-result p1

    return p1

    .line 213
    :cond_1d
    return v1
.end method
