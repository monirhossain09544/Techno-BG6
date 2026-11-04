.class public final Landroid/permission/PermissionManager;
.super Ljava/lang/Object;
.source "PermissionManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/permission/PermissionManager$OnPermissionsChangeListenerDelegate;,
        Landroid/permission/PermissionManager$SplitPermissionInfo;,
        Landroid/permission/PermissionManager$PermissionQuery;,
        Landroid/permission/PermissionManager$PermissionRequestStateQuery;,
        Landroid/permission/PermissionManager$PackageNamePermissionQuery;,
        Landroid/permission/PermissionManager$PermissionState;,
        Landroid/permission/PermissionManager$PermissionResult;
    }
.end annotation


# static fields
.field public static final whitelist ACTION_REVIEW_PERMISSION_DECISIONS:Ljava/lang/String; = "android.permission.action.REVIEW_PERMISSION_DECISIONS"

.field public static final blacklist CACHE_KEY_PACKAGE_INFO_CACHE:Ljava/lang/String;

.field public static final blacklist CANNOT_INSTALL_WITH_BAD_PERMISSION_GROUPS:J = 0x8b70248L

.field public static final blacklist DEBUG_DEVICE_PERMISSIONS:Z = false

.field public static final blacklist DEBUG_TRACE_GRANTS:Z = false

.field public static final blacklist DEBUG_TRACE_PERMISSION_UPDATES:Z = false

.field public static final blacklist DEVICE_AWARE_PERMISSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist EXEMPTED_INDICATOR_ROLE_UPDATE_FREQUENCY_MS:J = 0x3a98L

.field private static final blacklist EXEMPTED_ROLES:[I

.field public static final blacklist EXPLICIT_SET_FLAGS:I = 0x8037

.field public static final whitelist EXTRA_PERMISSION_USAGES:Ljava/lang/String; = "android.permission.extra.PERMISSION_USAGES"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field private static final blacklist INDICATOR_EXEMPTED_PACKAGES:[Ljava/lang/String;

.field public static final blacklist KILL_APP_REASON_GIDS_CHANGED:Ljava/lang/String; = "permission grant or revoke changed gids"

.field public static final blacklist KILL_APP_REASON_PERMISSIONS_REVOKED:Ljava/lang/String; = "permissions revoked"

.field private static final blacklist LOG_TAG:Ljava/lang/String;

.field public static final blacklist LOG_TAG_TRACE_GRANTS:Ljava/lang/String; = "PermissionGrantTrace"

.field public static final whitelist PERMISSION_GRANTED:I = 0x0

.field public static final whitelist PERMISSION_HARD_DENIED:I = 0x2

.field public static final whitelist PERMISSION_SOFT_DENIED:I = 0x1

.field private static final blacklist SYSTEM_PKG:Ljava/lang/String; = "android"

.field private static blacklist sExemptedPkgNames:[Ljava/lang/String;

.field private static blacklist sLastIndicatorUpdateTime:J

.field private static blacklist sLocationExtraPkgNames:[Ljava/lang/String;

.field private static blacklist sLocationProviderPkgNames:[Ljava/lang/String;

.field private static blacklist sPackageNamePermissionCache:Landroid/app/PropertyInvalidatedCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/PropertyInvalidatedCache<",
            "Landroid/permission/PermissionManager$PackageNamePermissionQuery;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist sPermissionCache:Landroid/app/PropertyInvalidatedCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/PropertyInvalidatedCache<",
            "Landroid/permission/PermissionManager$PermissionQuery;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist sPermissionRequestStateCache:Landroid/app/PropertyInvalidatedCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/PropertyInvalidatedCache<",
            "Landroid/permission/PermissionManager$PermissionRequestStateQuery;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile blacklist sShouldWarnMissingActivityManager:Z


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mLegacyPermissionManager:Landroid/permission/LegacyPermissionManager;

.field private final blacklist mPackageManager:Landroid/content/pm/IPackageManager;

.field private final blacklist mPermissionListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/content/pm/PackageManager$OnPermissionsChangedListener;",
            "Landroid/permission/IOnPermissionsChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mPermissionManager:Landroid/permission/IPermissionManager;

.field private blacklist mSplitPermissionInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/permission/PermissionManager$SplitPermissionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mUsageHelper:Landroid/permission/PermissionUsageHelper;


# direct methods
.method static bridge synthetic blacklist -$$Nest$smcheckPackageNamePermissionUncached(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .registers 4

    invoke-static {p0, p1, p2, p3}, Landroid/permission/PermissionManager;->checkPackageNamePermissionUncached(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smcheckPermissionUncached(Ljava/lang/String;III)I
    .registers 4

    invoke-static {p0, p1, p2, p3}, Landroid/permission/PermissionManager;->checkPermissionUncached(Ljava/lang/String;III)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smgetPermissionRequestStateUncached(Ljava/lang/String;Ljava/lang/String;I)I
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/permission/PermissionManager;->getPermissionRequestStateUncached(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 4

    .line 105
    const-class v0, Landroid/permission/PermissionManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/permission/PermissionManager;->LOG_TAG:Ljava/lang/String;

    .line 194
    const-wide/16 v0, -0x1

    sput-wide v0, Landroid/permission/PermissionManager;->sLastIndicatorUpdateTime:J

    .line 196
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_66

    sput-object v0, Landroid/permission/PermissionManager;->EXEMPTED_ROLES:[I

    .line 201
    sget-object v0, Landroid/permission/PermissionManager;->EXEMPTED_ROLES:[I

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Landroid/permission/PermissionManager;->INDICATOR_EXEMPTED_PACKAGES:[Ljava/lang/String;

    .line 240
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/Flags;->deviceAwarePermissionsEnabled()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 241
    const-string v0, "android.permission.CAMERA"

    const-string v1, "android.permission.RECORD_AUDIO"

    invoke-static {v0, v1}, Ljava/util/Set;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    goto :goto_2e

    .line 242
    :cond_2a
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    :goto_2e
    sput-object v0, Landroid/permission/PermissionManager;->DEVICE_AWARE_PERMISSIONS:Ljava/util/Set;

    .line 1725
    const/4 v0, 0x1

    sput-boolean v0, Landroid/permission/PermissionManager;->sShouldWarnMissingActivityManager:Z

    .line 1852
    nop

    .line 1853
    const-string/jumbo v0, "package_info_cache"

    invoke-static {v0}, Landroid/app/PropertyInvalidatedCache;->createSystemCacheKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/permission/PermissionManager;->CACHE_KEY_PACKAGE_INFO_CACHE:Ljava/lang/String;

    .line 1856
    new-instance v0, Landroid/permission/PermissionManager$1;

    sget-object v1, Landroid/permission/PermissionManager;->CACHE_KEY_PACKAGE_INFO_CACHE:Ljava/lang/String;

    const-string v2, "checkPermission"

    const/16 v3, 0x800

    invoke-direct {v0, v3, v1, v2}, Landroid/permission/PermissionManager$1;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroid/permission/PermissionManager;->sPermissionCache:Landroid/app/PropertyInvalidatedCache;

    .line 1868
    new-instance v0, Landroid/permission/PermissionManager$2;

    sget-object v1, Landroid/permission/PermissionManager;->CACHE_KEY_PACKAGE_INFO_CACHE:Ljava/lang/String;

    const-string v2, "getPermissionRequestState"

    const/16 v3, 0x200

    invoke-direct {v0, v3, v1, v2}, Landroid/permission/PermissionManager$2;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroid/permission/PermissionManager;->sPermissionRequestStateCache:Landroid/app/PropertyInvalidatedCache;

    .line 2001
    new-instance v0, Landroid/permission/PermissionManager$3;

    sget-object v1, Landroid/permission/PermissionManager;->CACHE_KEY_PACKAGE_INFO_CACHE:Ljava/lang/String;

    const-string v2, "checkPackageNamePermission"

    const/16 v3, 0x10

    invoke-direct {v0, v3, v1, v2}, Landroid/permission/PermissionManager$3;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroid/permission/PermissionManager;->sPackageNamePermissionCache:Landroid/app/PropertyInvalidatedCache;

    return-void

    nop

    :array_66
    .array-data 4
        0x1040033
        0x1040032
        0x1040034
        0x1040035
        0x1040036
        0x1040037
    .end array-data
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 270
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 252
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/permission/PermissionManager;->mPermissionListeners:Landroid/util/ArrayMap;

    .line 271
    iput-object p1, p0, Landroid/permission/PermissionManager;->mContext:Landroid/content/Context;

    .line 272
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iput-object v0, p0, Landroid/permission/PermissionManager;->mPackageManager:Landroid/content/pm/IPackageManager;

    .line 273
    const-string/jumbo v0, "permissionmgr"

    invoke-static {v0}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/permission/IPermissionManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/permission/IPermissionManager;

    move-result-object v0

    iput-object v0, p0, Landroid/permission/PermissionManager;->mPermissionManager:Landroid/permission/IPermissionManager;

    .line 275
    const-class v0, Landroid/permission/LegacyPermissionManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/permission/LegacyPermissionManager;

    iput-object p1, p0, Landroid/permission/PermissionManager;->mLegacyPermissionManager:Landroid/permission/LegacyPermissionManager;

    .line 276
    return-void
.end method

.method private static blacklist checkPackageNamePermissionUncached(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .registers 5

    .line 1992
    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->getPermissionManager()Landroid/permission/IPermissionManager;

    move-result-object v0

    invoke-interface {v0, p1, p0, p2, p3}, Landroid/permission/IPermissionManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return p0

    .line 1994
    :catch_9
    move-exception p0

    .line 1995
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public static blacklist checkPermission(Ljava/lang/String;III)I
    .registers 6

    .line 1882
    invoke-static {p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 1883
    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_1d

    if-nez v0, :cond_b

    goto :goto_1d

    .line 1886
    :cond_b
    sget-object v0, Landroid/permission/PermissionManager;->sPermissionCache:Landroid/app/PropertyInvalidatedCache;

    new-instance v1, Landroid/permission/PermissionManager$PermissionQuery;

    invoke-direct {v1, p0, p1, p2, p3}, Landroid/permission/PermissionManager$PermissionQuery;-><init>(Ljava/lang/String;III)V

    invoke-virtual {v0, v1}, Landroid/app/PropertyInvalidatedCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    .line 1884
    :cond_1d
    :goto_1d
    const/4 p0, 0x0

    return p0
.end method

.method private static blacklist checkPermissionUncached(Ljava/lang/String;III)I
    .registers 6

    .line 1729
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    .line 1730
    if-nez v0, :cond_2a

    .line 1733
    sget-object p1, Landroid/permission/PermissionManager;->LOG_TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Missing ActivityManager; assuming "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " does not hold "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1735
    const/4 p0, -0x1

    return p0

    .line 1738
    :cond_2a
    const/4 v1, 0x1

    :try_start_2b
    sput-boolean v1, Landroid/permission/PermissionManager;->sShouldWarnMissingActivityManager:Z

    .line 1739
    invoke-interface {v0, p0, p1, p2, p3}, Landroid/app/IActivityManager;->checkPermissionForDevice(Ljava/lang/String;III)I

    move-result p0
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_31} :catch_32

    return p0

    .line 1740
    :catch_32
    move-exception p0

    .line 1741
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public static blacklist disablePackageNamePermissionCache()V
    .registers 1

    .line 2128
    sget-object v0, Landroid/permission/PermissionManager;->sPackageNamePermissionCache:Landroid/app/PropertyInvalidatedCache;

    invoke-virtual {v0}, Landroid/app/PropertyInvalidatedCache;->disableLocal()V

    .line 2129
    return-void
.end method

.method public static blacklist disablePermissionCache()V
    .registers 1

    .line 1934
    sget-object v0, Landroid/permission/PermissionManager;->sPermissionCache:Landroid/app/PropertyInvalidatedCache;

    invoke-virtual {v0}, Landroid/app/PropertyInvalidatedCache;->disableLocal()V

    .line 1935
    return-void
.end method

.method public static blacklist getIndicatorExemptedPackages(Landroid/content/Context;)Ljava/util/Set;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1356
    invoke-static {p0}, Landroid/permission/PermissionManager;->updateIndicatorExemptedPackages(Landroid/content/Context;)V

    .line 1357
    new-instance p0, Landroid/util/ArraySet;

    invoke-direct {p0}, Landroid/util/ArraySet;-><init>()V

    .line 1358
    const-string v0, "android"

    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1359
    const/4 v0, 0x0

    move v1, v0

    :goto_f
    sget-object v2, Landroid/permission/PermissionManager;->INDICATOR_EXEMPTED_PACKAGES:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_20

    .line 1360
    sget-object v2, Landroid/permission/PermissionManager;->INDICATOR_EXEMPTED_PACKAGES:[Ljava/lang/String;

    aget-object v2, v2, v1

    .line 1361
    if-eqz v2, :cond_1d

    .line 1362
    invoke-virtual {p0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1359
    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 1365
    :cond_20
    sget-object v1, Landroid/permission/PermissionManager;->sLocationProviderPkgNames:[Ljava/lang/String;

    array-length v2, v1

    move v3, v0

    :goto_24
    if-ge v3, v2, :cond_30

    aget-object v4, v1, v3

    .line 1366
    if-eqz v4, :cond_2d

    .line 1367
    invoke-virtual {p0, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1365
    :cond_2d
    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    .line 1370
    :cond_30
    sget-object v1, Landroid/permission/PermissionManager;->sLocationExtraPkgNames:[Ljava/lang/String;

    array-length v2, v1

    move v3, v0

    :goto_34
    if-ge v3, v2, :cond_40

    aget-object v4, v1, v3

    .line 1371
    if-eqz v4, :cond_3d

    .line 1372
    invoke-virtual {p0, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1370
    :cond_3d
    add-int/lit8 v3, v3, 0x1

    goto :goto_34

    .line 1375
    :cond_40
    sget-object v1, Landroid/permission/PermissionManager;->sExemptedPkgNames:[Ljava/lang/String;

    array-length v2, v1

    :goto_43
    if-ge v0, v2, :cond_4f

    aget-object v3, v1, v0

    .line 1376
    if-eqz v3, :cond_4c

    .line 1377
    invoke-virtual {p0, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1375
    :cond_4c
    add-int/lit8 v0, v0, 0x1

    goto :goto_43

    .line 1380
    :cond_4f
    return-object p0
.end method

.method private blacklist getPermissionFlagsInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)I
    .registers 6

    .line 814
    :try_start_0
    iget-object v0, p0, Landroid/permission/PermissionManager;->mPermissionManager:Landroid/permission/IPermissionManager;

    .line 815
    invoke-virtual {p4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p4

    .line 814
    invoke-interface {v0, p1, p2, p3, p4}, Landroid/permission/IPermissionManager;->getPermissionFlags(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result p1
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return p1

    .line 816
    :catch_b
    move-exception p1

    .line 817
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method private static blacklist getPermissionRequestStateUncached(Ljava/lang/String;Ljava/lang/String;I)I
    .registers 4

    .line 1748
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPermissionManager()Landroid/permission/IPermissionManager;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Landroid/permission/IPermissionManager;->getPermissionRequestState(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return p0

    .line 1750
    :catch_9
    move-exception p0

    .line 1751
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method private blacklist getPersistentDeviceId(I)Ljava/lang/String;
    .registers 6

    .line 2067
    nop

    .line 2069
    if-nez p1, :cond_6

    .line 2070
    const-string p1, "default:0"

    goto :goto_53

    .line 2072
    :cond_6
    iget-object v0, p0, Landroid/permission/PermissionManager;->mContext:Landroid/content/Context;

    const-class v1, Landroid/companion/virtual/VirtualDeviceManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/companion/virtual/VirtualDeviceManager;

    .line 2074
    const/4 v1, 0x0

    if-eqz v0, :cond_52

    .line 2075
    invoke-virtual {v0, p1}, Landroid/companion/virtual/VirtualDeviceManager;->getVirtualDevice(I)Landroid/companion/virtual/VirtualDevice;

    move-result-object v0

    .line 2076
    if-nez v0, :cond_32

    .line 2077
    sget-object v0, Landroid/permission/PermissionManager;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Virtual device is not found with device Id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2078
    return-object v1

    .line 2080
    :cond_32
    invoke-virtual {v0}, Landroid/companion/virtual/VirtualDevice;->getPersistentDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 2081
    if-nez v0, :cond_50

    .line 2082
    sget-object v1, Landroid/permission/PermissionManager;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot find persistent device Id for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2086
    :cond_50
    move-object p1, v0

    goto :goto_53

    .line 2074
    :cond_52
    move-object p1, v1

    .line 2086
    :goto_53
    return-object p1
.end method

.method private blacklist grantRuntimePermissionInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V
    .registers 6

    .line 674
    :try_start_0
    iget-object v0, p0, Landroid/permission/PermissionManager;->mPermissionManager:Landroid/permission/IPermissionManager;

    .line 675
    invoke-virtual {p4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p4

    .line 674
    invoke-interface {v0, p1, p2, p3, p4}, Landroid/permission/IPermissionManager;->grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    .line 678
    nop

    .line 679
    return-void

    .line 676
    :catch_b
    move-exception p1

    .line 677
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public static blacklist resolveDeviceIdForPermissionCheck(Landroid/content/Context;ILjava/lang/String;)I
    .registers 5

    .line 2037
    const/4 v0, 0x0

    if-eqz p1, :cond_70

    if-eqz p2, :cond_70

    sget-object v1, Landroid/permission/PermissionManager;->DEVICE_AWARE_PERMISSIONS:Ljava/util/Set;

    .line 2038
    invoke-interface {v1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    goto :goto_70

    .line 2042
    :cond_e
    const-class v1, Landroid/companion/virtual/VirtualDeviceManager;

    .line 2043
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/companion/virtual/VirtualDeviceManager;

    .line 2044
    if-nez p0, :cond_31

    .line 2045
    sget-object p0, Landroid/permission/PermissionManager;->LOG_TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "VDM is not enabled when device id is not default. deviceId = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6f

    .line 2048
    :cond_31
    invoke-virtual {p0, p1}, Landroid/companion/virtual/VirtualDeviceManager;->getVirtualDevice(I)Landroid/companion/virtual/VirtualDevice;

    move-result-object p0

    .line 2049
    if-eqz p0, :cond_56

    .line 2050
    const-string v1, "android.permission.RECORD_AUDIO"

    invoke-static {p2, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_45

    .line 2051
    invoke-virtual {p0}, Landroid/companion/virtual/VirtualDevice;->hasCustomAudioInputSupport()Z

    move-result v1

    if-eqz v1, :cond_54

    :cond_45
    nop

    .line 2052
    const-string v1, "android.permission.CAMERA"

    invoke-static {p2, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6f

    .line 2053
    invoke-virtual {p0}, Landroid/companion/virtual/VirtualDevice;->hasCustomCameraSupport()Z

    move-result p0

    if-nez p0, :cond_6f

    .line 2054
    :cond_54
    move p1, v0

    goto :goto_6f

    .line 2057
    :cond_56
    sget-object p0, Landroid/permission/PermissionManager;->LOG_TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "virtualDevice is not found when device id is not default. deviceId = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2062
    :cond_6f
    :goto_6f
    return p1

    .line 2039
    :cond_70
    :goto_70
    return v0
.end method

.method private blacklist revokeRuntimePermissionInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;Ljava/lang/String;)V
    .registers 7

    .line 752
    :try_start_0
    iget-object v0, p0, Landroid/permission/PermissionManager;->mPermissionManager:Landroid/permission/IPermissionManager;

    .line 753
    invoke-virtual {p4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p4

    .line 752
    move-object p0, v0

    invoke-interface/range {p0 .. p5}, Landroid/permission/IPermissionManager;->revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_c

    .line 756
    nop

    .line 757
    return-void

    .line 754
    :catch_c
    move-exception v0

    move-object p1, v0

    .line 755
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public static blacklist shouldShowPackageForIndicatorCached(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 2

    .line 1347
    invoke-static {p0}, Landroid/permission/PermissionManager;->getIndicatorExemptedPackages(Landroid/content/Context;)Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static blacklist shouldTraceGrant(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 3

    .line 607
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist splitPermissionInfoListToNonParcelableList(Ljava/util/List;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/permission/SplitPermissionInfoParcelable;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/permission/PermissionManager$SplitPermissionInfo;",
            ">;"
        }
    .end annotation

    .line 1445
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 1446
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1447
    const/4 v2, 0x0

    :goto_a
    if-ge v2, v0, :cond_1e

    .line 1448
    new-instance v3, Landroid/permission/PermissionManager$SplitPermissionInfo;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/permission/SplitPermissionInfoParcelable;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Landroid/permission/PermissionManager$SplitPermissionInfo;-><init>(Landroid/content/pm/permission/SplitPermissionInfoParcelable;Landroid/permission/PermissionManager-IA;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1447
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 1450
    :cond_1e
    return-object v1
.end method

.method public static blacklist splitPermissionInfoListToParcelableList(Ljava/util/List;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/permission/PermissionManager$SplitPermissionInfo;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/content/pm/permission/SplitPermissionInfoParcelable;",
            ">;"
        }
    .end annotation

    .line 1460
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 1461
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1462
    const/4 v2, 0x0

    :goto_a
    if-ge v2, v0, :cond_29

    .line 1463
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/permission/PermissionManager$SplitPermissionInfo;

    .line 1464
    new-instance v4, Landroid/content/pm/permission/SplitPermissionInfoParcelable;

    .line 1465
    invoke-virtual {v3}, Landroid/permission/PermissionManager$SplitPermissionInfo;->getSplitPermission()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Landroid/permission/PermissionManager$SplitPermissionInfo;->getNewPermissions()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v3}, Landroid/permission/PermissionManager$SplitPermissionInfo;->getTargetSdk()I

    move-result v3

    invoke-direct {v4, v5, v6, v3}, Landroid/content/pm/permission/SplitPermissionInfoParcelable;-><init>(Ljava/lang/String;Ljava/util/List;I)V

    .line 1464
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1462
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 1467
    :cond_29
    return-object v1
.end method

.method public static blacklist updateIndicatorExemptedPackages(Landroid/content/Context;)V
    .registers 7

    .line 1388
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 1389
    sget-wide v2, Landroid/permission/PermissionManager;->sLastIndicatorUpdateTime:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_16

    sget-wide v2, Landroid/permission/PermissionManager;->sLastIndicatorUpdateTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3a98

    cmp-long v2, v2, v4

    if-lez v2, :cond_54

    .line 1391
    :cond_16
    sput-wide v0, Landroid/permission/PermissionManager;->sLastIndicatorUpdateTime:J

    .line 1392
    const/4 v0, 0x0

    :goto_19
    sget-object v1, Landroid/permission/PermissionManager;->EXEMPTED_ROLES:[I

    array-length v1, v1

    if-ge v0, v1, :cond_2d

    .line 1393
    sget-object v1, Landroid/permission/PermissionManager;->INDICATOR_EXEMPTED_PACKAGES:[Ljava/lang/String;

    sget-object v2, Landroid/permission/PermissionManager;->EXEMPTED_ROLES:[I

    aget v2, v2, v0

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 1392
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .line 1395
    :cond_2d
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1070098

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/permission/PermissionManager;->sLocationProviderPkgNames:[Ljava/lang/String;

    .line 1397
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1070097

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/permission/PermissionManager;->sLocationExtraPkgNames:[Ljava/lang/String;

    .line 1399
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x1070091

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    sput-object p0, Landroid/permission/PermissionManager;->sExemptedPkgNames:[Ljava/lang/String;

    .line 1402
    :cond_54
    return-void
.end method

.method private blacklist updatePermissionFlagsInternal(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Landroid/os/UserHandle;)V
    .registers 16

    .line 893
    :try_start_0
    iget-object v0, p0, Landroid/permission/PermissionManager;->mContext:Landroid/content/Context;

    .line 894
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    move v6, v0

    .line 895
    iget-object v1, p0, Landroid/permission/PermissionManager;->mPermissionManager:Landroid/permission/IPermissionManager;

    .line 897
    invoke-virtual {p6}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v8

    .line 895
    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v7, p5

    invoke-interface/range {v1 .. v8}, Landroid/permission/IPermissionManager;->updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;I)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1e} :catch_20

    .line 900
    nop

    .line 901
    return-void

    .line 898
    :catch_20
    move-exception v0

    move-object p1, v0

    .line 899
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method


# virtual methods
.method public blacklist addAllowlistedRestrictedPermission(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 6

    .line 1016
    :try_start_0
    iget-object v0, p0, Landroid/permission/PermissionManager;->mPermissionManager:Landroid/permission/IPermissionManager;

    iget-object v1, p0, Landroid/permission/PermissionManager;->mContext:Landroid/content/Context;

    .line 1017
    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    .line 1016
    invoke-interface {v0, p1, p2, p3, v1}, Landroid/permission/IPermissionManager;->addAllowlistedRestrictedPermission(Ljava/lang/String;Ljava/lang/String;II)Z

    move-result p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return p1

    .line 1018
    :catch_d
    move-exception p1

    .line 1019
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist addOnPermissionsChangeListener(Landroid/content/pm/PackageManager$OnPermissionsChangedListener;)V
    .registers 5

    .line 1170
    iget-object v0, p0, Landroid/permission/PermissionManager;->mPermissionListeners:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1171
    :try_start_3
    iget-object v1, p0, Landroid/permission/PermissionManager;->mPermissionListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_d

    .line 1172
    monitor-exit v0

    return-void

    .line 1174
    :cond_d
    new-instance v1, Landroid/permission/PermissionManager$OnPermissionsChangeListenerDelegate;

    .line 1175
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, p1, v2}, Landroid/permission/PermissionManager$OnPermissionsChangeListenerDelegate;-><init>(Landroid/permission/PermissionManager;Landroid/content/pm/PackageManager$OnPermissionsChangedListener;Landroid/os/Looper;)V
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_29

    .line 1177
    :try_start_16
    iget-object v2, p0, Landroid/permission/PermissionManager;->mPermissionManager:Landroid/permission/IPermissionManager;

    invoke-interface {v2, v1}, Landroid/permission/IPermissionManager;->addOnPermissionsChangeListener(Landroid/permission/IOnPermissionsChangeListener;)V

    .line 1178
    iget-object v2, p0, Landroid/permission/PermissionManager;->mPermissionListeners:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_20} :catch_23
    .catchall {:try_start_16 .. :try_end_20} :catchall_29

    .line 1181
    nop

    .line 1182
    :try_start_21
    monitor-exit v0

    .line 1183
    return-void

    .line 1179
    :catch_23
    move-exception p1

    .line 1180
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 1182
    :catchall_29
    move-exception p1

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_21 .. :try_end_2b} :catchall_29

    throw p1
.end method

.method public blacklist addPermission(Landroid/content/pm/PermissionInfo;Z)Z
    .registers 4

    .line 507
    :try_start_0
    iget-object v0, p0, Landroid/permission/PermissionManager;->mPermissionManager:Landroid/permission/IPermissionManager;

    invoke-interface {v0, p1, p2}, Landroid/permission/IPermissionManager;->addPermission(Landroid/content/pm/PermissionInfo;Z)Z

    move-result p1
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return p1

    .line 508
    :catch_7
    move-exception p1

    .line 509
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist checkDeviceIdentifierAccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)I
    .registers 7
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1633
    iget-object v0, p0, Landroid/permission/PermissionManager;->mLegacyPermissionManager:Landroid/permission/LegacyPermissionManager;

    move-object p0, v0

    invoke-virtual/range {p0 .. p5}, Landroid/permission/LegacyPermissionManager;->checkDeviceIdentifierAccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)I

    move-result p1

    return p1
.end method

.method public blacklist checkPackageNamePermission(Ljava/lang/String;Ljava/lang/String;II)I
    .registers 7

    .line 2022
    iget-object v0, p0, Landroid/permission/PermissionManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p3, p1}, Landroid/permission/PermissionManager;->resolveDeviceIdForPermissionCheck(Landroid/content/Context;ILjava/lang/String;)I

    move-result p3

    .line 2023
    invoke-direct {p0, p3}, Landroid/permission/PermissionManager;->getPersistentDeviceId(I)Ljava/lang/String;

    move-result-object p3

    .line 2024
    sget-object v0, Landroid/permission/PermissionManager;->sPackageNamePermissionCache:Landroid/app/PropertyInvalidatedCache;

    new-instance v1, Landroid/permission/PermissionManager$PackageNamePermissionQuery;

    invoke-direct {v1, p1, p2, p3, p4}, Landroid/permission/PermissionManager$PackageNamePermissionQuery;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/app/PropertyInvalidatedCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public whitelist checkPermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 7
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2117
    sget-object v0, Landroid/permission/PermissionManager;->sPackageNamePermissionCache:Landroid/app/PropertyInvalidatedCache;

    new-instance v1, Landroid/permission/PermissionManager$PackageNamePermissionQuery;

    iget-object v2, p0, Landroid/permission/PermissionManager;->mContext:Landroid/content/Context;

    .line 2119
    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    invoke-direct {v1, p1, p2, p3, v2}, Landroid/permission/PermissionManager$PackageNamePermissionQuery;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 2117
    invoke-virtual {v0, v1}, Landroid/app/PropertyInvalidatedCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public whitelist checkPermissionForDataDelivery(Ljava/lang/String;Landroid/content/AttributionSource;Ljava/lang/String;)I
    .registers 6

    .line 311
    iget-object v0, p0, Landroid/permission/PermissionManager;->mContext:Landroid/content/Context;

    const/4 v1, -0x1

    invoke-static {v0, p1, v1, p2, p3}, Landroid/content/PermissionChecker;->checkPermissionForDataDelivery(Landroid/content/Context;Ljava/lang/String;ILandroid/content/AttributionSource;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public whitelist checkPermissionForDataDeliveryFromDataSource(Ljava/lang/String;Landroid/content/AttributionSource;Ljava/lang/String;)I
    .registers 6

    .line 391
    iget-object v0, p0, Landroid/permission/PermissionManager;->mContext:Landroid/content/Context;

    const/4 v1, -0x1

    invoke-static {v0, p1, v1, p2, p3}, Landroid/content/PermissionChecker;->checkPermissionForDataDeliveryFromDataSource(Landroid/content/Context;Ljava/lang/String;ILandroid/content/AttributionSource;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public whitelist checkPermissionForPreflight(Ljava/lang/String;Landroid/content/AttributionSource;)I
    .registers 4

    .line 421
    iget-object v0, p0, Landroid/permission/PermissionManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Landroid/content/PermissionChecker;->checkPermissionForPreflight(Landroid/content/Context;Ljava/lang/String;Landroid/content/AttributionSource;)I

    move-result p1

    return p1
.end method

.method public whitelist checkPermissionForStartDataDelivery(Ljava/lang/String;Landroid/content/AttributionSource;Ljava/lang/String;)I
    .registers 10

    .line 338
    iget-object v0, p0, Landroid/permission/PermissionManager;->mContext:Landroid/content/Context;

    const/4 v2, -0x1

    const/4 v5, 0x1

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-static/range {v0 .. v5}, Landroid/content/PermissionChecker;->checkPermissionForDataDelivery(Landroid/content/Context;Ljava/lang/String;ILandroid/content/AttributionSource;Ljava/lang/String;Z)I

    move-result p1

    return p1
.end method

.method public whitelist finishDataDelivery(Ljava/lang/String;Landroid/content/AttributionSource;)V
    .registers 4

    .line 352
    iget-object v0, p0, Landroid/permission/PermissionManager;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/app/AppOpsManager;->permissionToOp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p2}, Landroid/content/PermissionChecker;->finishDataDelivery(Landroid/content/Context;Ljava/lang/String;Landroid/content/AttributionSource;)V

    .line 354
    return-void
.end method

.method public blacklist getAllPermissionGroups(I)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/content/pm/PermissionGroupInfo;",
            ">;"
        }
    .end annotation

    .line 567
    :try_start_0
    iget-object v0, p0, Landroid/permission/PermissionManager;->mPermissionManager:Landroid/permission/IPermissionManager;

    .line 568
    invoke-interface {v0, p1}, Landroid/permission/IPermissionManager;->getAllPermissionGroups(I)Landroid/content/pm/ParceledListSlice;

    move-result-object p1

    .line 569
    if-nez p1, :cond_d

    .line 570
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 572
    :cond_d
    invoke-virtual {p1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object p1
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_11} :catch_12

    return-object p1

    .line 573
    :catch_12
    move-exception p1

    .line 574
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist getAllPermissionStates(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/permission/PermissionManager$PermissionState;",
            ">;"
        }
    .end annotation

    .line 1921
    :try_start_0
    iget-object v0, p0, Landroid/permission/PermissionManager;->mPermissionManager:Landroid/permission/IPermissionManager;

    iget-object v1, p0, Landroid/permission/PermissionManager;->mContext:Landroid/content/Context;

    .line 1922
    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    .line 1921
    invoke-interface {v0, p1, p2, v1}, Landroid/permission/IPermissionManager;->getAllPermissionStates(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/Map;

    move-result-object p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    .line 1923
    :catch_d
    move-exception p1

    .line 1924
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist getAllowlistedRestrictedPermissions(Ljava/lang/String;I)Ljava/util/Set;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 953
    :try_start_0
    iget-object v0, p0, Landroid/permission/PermissionManager;->mPermissionManager:Landroid/permission/IPermissionManager;

    iget-object v1, p0, Landroid/permission/PermissionManager;->mContext:Landroid/content/Context;

    .line 954
    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    .line 953
    invoke-interface {v0, p1, p2, v1}, Landroid/permission/IPermissionManager;->getAllowlistedRestrictedPermissions(Ljava/lang/String;II)Ljava/util/List;

    move-result-object p1

    .line 955
    if-nez p1, :cond_13

    .line 956
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p1

    return-object p1

    .line 958
    :cond_13
    new-instance p2, Landroid/util/ArraySet;

    invoke-direct {p2, p1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_18} :catch_19

    return-object p2

    .line 959
    :catch_19
    move-exception p1

    .line 960
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist getAutoRevokeExemptionGrantedPackages()Ljava/util/Set;
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1436
    :try_start_0
    iget-object v0, p0, Landroid/permission/PermissionManager;->mPermissionManager:Landroid/permission/IPermissionManager;

    iget-object v1, p0, Landroid/permission/PermissionManager;->mContext:Landroid/content/Context;

    .line 1437
    invoke-virtual {v1}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    .line 1436
    invoke-interface {v0, v1}, Landroid/permission/IPermissionManager;->getAutoRevokeExemptionGrantedPackages(I)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/CollectionUtils;->toSet(Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v0
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_14} :catch_15

    return-object v0

    .line 1438
    :catch_15
    move-exception v0

    .line 1439
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public whitelist getAutoRevokeExemptionRequestedPackages()Ljava/util/Set;
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1416
    :try_start_0
    iget-object v0, p0, Landroid/permission/PermissionManager;->mPermissionManager:Landroid/permission/IPermissionManager;

    iget-object v1, p0, Landroid/permission/PermissionManager;->mContext:Landroid/content/Context;

    .line 1417
    invoke-virtual {v1}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    .line 1416
    invoke-interface {v0, v1}, Landroid/permission/IPermissionManager;->getAutoRevokeExemptionRequestedPackages(I)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/CollectionUtils;->toSet(Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v0
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_14} :catch_15

    return-object v0

    .line 1418
    :catch_15
    move-exception v0

    .line 1419
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public blacklist getIndicatorAppOpUsageData()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/permission/PermissionGroupUsage;",
            ">;"
        }
    .end annotation

    .line 1319
    new-instance v0, Landroid/media/AudioManager;

    invoke-direct {v0}, Landroid/media/AudioManager;-><init>()V

    invoke-virtual {v0}, Landroid/media/AudioManager;->isMicrophoneMute()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/permission/PermissionManager;->getIndicatorAppOpUsageData(Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getIndicatorAppOpUsageData(Z)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Landroid/permission/PermissionGroupUsage;",
            ">;"
        }
    .end annotation

    .line 1334
    invoke-virtual {p0}, Landroid/permission/PermissionManager;->initializeUsageHelper()V

    .line 1335
    nop

    .line 1336
    xor-int/lit8 p1, p1, 0x1

    iget-object v0, p0, Landroid/permission/PermissionManager;->mUsageHelper:Landroid/permission/PermissionUsageHelper;

    const-string v1, "default:0"

    invoke-virtual {v0, p1, v1}, Landroid/permission/PermissionUsageHelper;->getOpUsageDataForIndicatorsByDevice(ZLjava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public blacklist getPermissionFlags(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)I
    .registers 5

    .line 778
    iget-object v0, p0, Landroid/permission/PermissionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getDeviceId()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/permission/PermissionManager;->getPersistentDeviceId(I)Ljava/lang/String;

    move-result-object v0

    .line 779
    if-nez v0, :cond_e

    .line 780
    const/4 p1, 0x0

    return p1

    .line 783
    :cond_e
    invoke-direct {p0, p1, p2, v0, p3}, Landroid/permission/PermissionManager;->getPermissionFlagsInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)I

    move-result p1

    return p1
.end method

.method public whitelist getPermissionFlags(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 806
    iget-object v0, p0, Landroid/permission/PermissionManager;->mContext:Landroid/content/Context;

    .line 807
    invoke-virtual {v0}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    .line 806
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/permission/PermissionManager;->getPermissionFlagsInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)I

    move-result p1

    return p1
.end method

.method public blacklist getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;
    .registers 4

    .line 548
    :try_start_0
    iget-object v0, p0, Landroid/permission/PermissionManager;->mPermissionManager:Landroid/permission/IPermissionManager;

    invoke-interface {v0, p1, p2}, Landroid/permission/IPermissionManager;->getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;

    move-result-object p1
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object p1

    .line 549
    :catch_7
    move-exception p1

    .line 550
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;
    .registers 5

    .line 440
    :try_start_0
    iget-object v0, p0, Landroid/permission/PermissionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    .line 441
    iget-object v1, p0, Landroid/permission/PermissionManager;->mPermissionManager:Landroid/permission/IPermissionManager;

    invoke-interface {v1, p1, v0, p2}, Landroid/permission/IPermissionManager;->getPermissionInfo(Ljava/lang/String;Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    .line 442
    :catch_d
    move-exception p1

    .line 443
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist getPermissionRequestState(Ljava/lang/String;Ljava/lang/String;I)I
    .registers 6

    .line 1893
    iget-object v0, p0, Landroid/permission/PermissionManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p3, p2}, Landroid/permission/PermissionManager;->resolveDeviceIdForPermissionCheck(Landroid/content/Context;ILjava/lang/String;)I

    move-result p3

    .line 1894
    sget-object v0, Landroid/permission/PermissionManager;->sPermissionRequestStateCache:Landroid/app/PropertyInvalidatedCache;

    new-instance v1, Landroid/permission/PermissionManager$PermissionRequestStateQuery;

    invoke-direct {v1, p1, p2, p3}, Landroid/permission/PermissionManager$PermissionRequestStateQuery;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/app/PropertyInvalidatedCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public blacklist getRegisteredAttributionSourceCountForTest(I)I
    .registers 3

    .line 1695
    :try_start_0
    iget-object v0, p0, Landroid/permission/PermissionManager;->mPermissionManager:Landroid/permission/IPermissionManager;

    invoke-interface {v0, p1}, Landroid/permission/IPermissionManager;->getRegisteredAttributionSourceCount(I)I

    move-result p1
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return p1

    .line 1696
    :catch_7
    move-exception p1

    .line 1697
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 1699
    const/4 p1, -0x1

    return p1
.end method

.method public whitelist getRuntimePermissionsVersion()I
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1224
    :try_start_0
    iget-object v0, p0, Landroid/permission/PermissionManager;->mPackageManager:Landroid/content/pm/IPackageManager;

    iget-object v1, p0, Landroid/permission/PermissionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/content/pm/IPackageManager;->getRuntimePermissionsVersion(I)I

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return v0

    .line 1225
    :catch_d
    move-exception v0

    .line 1226
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public whitelist getSplitPermissions()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/permission/PermissionManager$SplitPermissionInfo;",
            ">;"
        }
    .end annotation

    .line 1269
    iget-object v0, p0, Landroid/permission/PermissionManager;->mSplitPermissionInfos:Ljava/util/List;

    if-eqz v0, :cond_7

    .line 1270
    iget-object v0, p0, Landroid/permission/PermissionManager;->mSplitPermissionInfos:Ljava/util/List;

    return-object v0

    .line 1275
    :cond_7
    :try_start_7
    invoke-static {}, Landroid/app/ActivityThread;->getPermissionManager()Landroid/permission/IPermissionManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/permission/IPermissionManager;->getSplitPermissions()Ljava/util/List;

    move-result-object v0
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_f} :catch_19

    .line 1279
    nop

    .line 1281
    invoke-direct {p0, v0}, Landroid/permission/PermissionManager;->splitPermissionInfoListToNonParcelableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/permission/PermissionManager;->mSplitPermissionInfos:Ljava/util/List;

    .line 1283
    iget-object v0, p0, Landroid/permission/PermissionManager;->mSplitPermissionInfos:Ljava/util/List;

    return-object v0

    .line 1276
    :catch_19
    move-exception v0

    .line 1277
    sget-object v1, Landroid/permission/PermissionManager;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Error getting split permissions"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1278
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V
    .registers 5

    .line 632
    iget-object v0, p0, Landroid/permission/PermissionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getDeviceId()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/permission/PermissionManager;->getPersistentDeviceId(I)Ljava/lang/String;

    move-result-object v0

    .line 633
    if-nez v0, :cond_d

    .line 634
    return-void

    .line 637
    :cond_d
    invoke-direct {p0, p1, p2, v0, p3}, Landroid/permission/PermissionManager;->grantRuntimePermissionInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 638
    return-void
.end method

.method public whitelist grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 659
    iget-object v0, p0, Landroid/permission/PermissionManager;->mContext:Landroid/content/Context;

    .line 660
    invoke-virtual {v0}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    .line 659
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/permission/PermissionManager;->grantRuntimePermissionInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 661
    return-void
.end method

.method public blacklist initializeUsageHelper()V
    .registers 3

    .line 1292
    iget-object v0, p0, Landroid/permission/PermissionManager;->mUsageHelper:Landroid/permission/PermissionUsageHelper;

    if-nez v0, :cond_d

    .line 1293
    new-instance v0, Landroid/permission/PermissionUsageHelper;

    iget-object v1, p0, Landroid/permission/PermissionManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/permission/PermissionUsageHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/permission/PermissionManager;->mUsageHelper:Landroid/permission/PermissionUsageHelper;

    .line 1295
    :cond_d
    return-void
.end method

.method public blacklist isAutoRevokeExempted(Ljava/lang/String;)Z
    .registers 4

    .line 1101
    :try_start_0
    iget-object v0, p0, Landroid/permission/PermissionManager;->mPermissionManager:Landroid/permission/IPermissionManager;

    iget-object v1, p0, Landroid/permission/PermissionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/permission/IPermissionManager;->isAutoRevokeExempted(Ljava/lang/String;I)Z

    move-result p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return p1

    .line 1102
    :catch_d
    move-exception p1

    .line 1103
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist isPermissionRevokedByPolicy(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    .line 595
    :try_start_0
    iget-object v0, p0, Landroid/permission/PermissionManager;->mPermissionManager:Landroid/permission/IPermissionManager;

    iget-object v1, p0, Landroid/permission/PermissionManager;->mContext:Landroid/content/Context;

    .line 596
    invoke-virtual {v1}, Landroid/content/Context;->getDeviceId()I

    move-result v1

    iget-object v2, p0, Landroid/permission/PermissionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    .line 595
    invoke-interface {v0, p1, p2, v1, v2}, Landroid/permission/IPermissionManager;->isPermissionRevokedByPolicy(Ljava/lang/String;Ljava/lang/String;II)Z

    move-result p1
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_13

    return p1

    .line 597
    :catch_13
    move-exception p1

    .line 598
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist isRegisteredAttributionSource(Landroid/content/AttributionSource;)Z
    .registers 3

    .line 1680
    :try_start_0
    iget-object v0, p0, Landroid/permission/PermissionManager;->mPermissionManager:Landroid/permission/IPermissionManager;

    invoke-virtual {p1}, Landroid/content/AttributionSource;->asState()Landroid/content/AttributionSourceState;

    move-result-object p1

    invoke-interface {v0, p1}, Landroid/permission/IPermissionManager;->isRegisteredAttributionSource(Landroid/content/AttributionSourceState;)Z

    move-result p1
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return p1

    .line 1681
    :catch_b
    move-exception p1

    .line 1682
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 1684
    const/4 p1, 0x0

    return p1
.end method

.method public blacklist queryPermissionsByGroup(Ljava/lang/String;I)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/pm/PermissionInfo;",
            ">;"
        }
    .end annotation

    .line 463
    :try_start_0
    iget-object v0, p0, Landroid/permission/PermissionManager;->mPermissionManager:Landroid/permission/IPermissionManager;

    .line 464
    invoke-interface {v0, p1, p2}, Landroid/permission/IPermissionManager;->queryPermissionsByGroup(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;

    move-result-object p1

    .line 465
    if-nez p1, :cond_a

    .line 466
    const/4 p1, 0x0

    return-object p1

    .line 468
    :cond_a
    invoke-virtual {p1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object p1
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f

    return-object p1

    .line 469
    :catch_f
    move-exception p1

    .line 470
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist registerAttributionSource(Landroid/content/AttributionSource;)Landroid/content/AttributionSource;
    .registers 4

    .line 1658
    :try_start_0
    iget-object v0, p0, Landroid/permission/PermissionManager;->mPermissionManager:Landroid/permission/IPermissionManager;

    invoke-virtual {p1}, Landroid/content/AttributionSource;->asState()Landroid/content/AttributionSourceState;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/permission/IPermissionManager;->registerAttributionSource(Landroid/content/AttributionSourceState;)Landroid/os/IBinder;

    move-result-object v0

    .line 1659
    invoke-virtual {p1, v0}, Landroid/content/AttributionSource;->withToken(Landroid/os/IBinder;)Landroid/content/AttributionSource;

    move-result-object p1
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f

    return-object p1

    .line 1660
    :catch_f
    move-exception v0

    .line 1661
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 1663
    return-object p1
.end method

.method public blacklist removeAllowlistedRestrictedPermission(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 6

    .line 1075
    :try_start_0
    iget-object v0, p0, Landroid/permission/PermissionManager;->mPermissionManager:Landroid/permission/IPermissionManager;

    iget-object v1, p0, Landroid/permission/PermissionManager;->mContext:Landroid/content/Context;

    .line 1076
    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    .line 1075
    invoke-interface {v0, p1, p2, p3, v1}, Landroid/permission/IPermissionManager;->removeAllowlistedRestrictedPermission(Ljava/lang/String;Ljava/lang/String;II)Z

    move-result p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return p1

    .line 1077
    :catch_d
    move-exception p1

    .line 1078
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist removeOnPermissionsChangeListener(Landroid/content/pm/PackageManager$OnPermissionsChangedListener;)V
    .registers 5

    .line 1196
    iget-object v0, p0, Landroid/permission/PermissionManager;->mPermissionListeners:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1197
    :try_start_3
    iget-object v1, p0, Landroid/permission/PermissionManager;->mPermissionListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/permission/IOnPermissionsChangeListener;
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_20

    .line 1198
    if-eqz v1, :cond_1e

    .line 1200
    :try_start_d
    iget-object v2, p0, Landroid/permission/PermissionManager;->mPermissionManager:Landroid/permission/IPermissionManager;

    invoke-interface {v2, v1}, Landroid/permission/IPermissionManager;->removeOnPermissionsChangeListener(Landroid/permission/IOnPermissionsChangeListener;)V

    .line 1201
    iget-object v1, p0, Landroid/permission/PermissionManager;->mPermissionListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_17} :catch_18
    .catchall {:try_start_d .. :try_end_17} :catchall_20

    .line 1204
    goto :goto_1e

    .line 1202
    :catch_18
    move-exception p1

    .line 1203
    :try_start_19
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 1206
    :cond_1e
    :goto_1e
    monitor-exit v0

    .line 1207
    return-void

    .line 1206
    :catchall_20
    move-exception p1

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_19 .. :try_end_22} :catchall_20

    throw p1
.end method

.method public blacklist removePermission(Ljava/lang/String;)V
    .registers 3

    .line 527
    :try_start_0
    iget-object v0, p0, Landroid/permission/PermissionManager;->mPermissionManager:Landroid/permission/IPermissionManager;

    invoke-interface {v0, p1}, Landroid/permission/IPermissionManager;->removePermission(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 530
    nop

    .line 531
    return-void

    .line 528
    :catch_7
    move-exception p1

    .line 529
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist revokePostNotificationPermissionWithoutKillForTest(Ljava/lang/String;I)V
    .registers 4

    .line 1716
    :try_start_0
    iget-object v0, p0, Landroid/permission/PermissionManager;->mPermissionManager:Landroid/permission/IPermissionManager;

    invoke-interface {v0, p1, p2}, Landroid/permission/IPermissionManager;->revokePostNotificationPermissionWithoutKillForTest(Ljava/lang/String;I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 1720
    goto :goto_a

    .line 1718
    :catch_6
    move-exception p1

    .line 1719
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 1721
    :goto_a
    return-void
.end method

.method public blacklist revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;Ljava/lang/String;)V
    .registers 12

    .line 705
    iget-object v0, p0, Landroid/permission/PermissionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getDeviceId()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/permission/PermissionManager;->getPersistentDeviceId(I)Ljava/lang/String;

    move-result-object v4

    .line 706
    if-nez v4, :cond_d

    .line 707
    return-void

    .line 710
    :cond_d
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Landroid/permission/PermissionManager;->revokeRuntimePermissionInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 712
    return-void
.end method

.method public whitelist revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 736
    iget-object v0, p0, Landroid/permission/PermissionManager;->mContext:Landroid/content/Context;

    .line 737
    invoke-virtual {v0}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v5

    .line 736
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Landroid/permission/PermissionManager;->revokeRuntimePermissionInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 738
    return-void
.end method

.method public blacklist setAutoRevokeExempted(Ljava/lang/String;Z)Z
    .registers 5

    .line 1130
    :try_start_0
    iget-object v0, p0, Landroid/permission/PermissionManager;->mPermissionManager:Landroid/permission/IPermissionManager;

    iget-object v1, p0, Landroid/permission/PermissionManager;->mContext:Landroid/content/Context;

    .line 1131
    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    .line 1130
    invoke-interface {v0, p1, p2, v1}, Landroid/permission/IPermissionManager;->setAutoRevokeExempted(Ljava/lang/String;ZI)Z

    move-result p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return p1

    .line 1132
    :catch_d
    move-exception p1

    .line 1133
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist setRuntimePermissionsVersion(I)V
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1244
    :try_start_0
    iget-object v0, p0, Landroid/permission/PermissionManager;->mPackageManager:Landroid/content/pm/IPackageManager;

    iget-object v1, p0, Landroid/permission/PermissionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/content/pm/IPackageManager;->setRuntimePermissionsVersion(II)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_d

    .line 1247
    nop

    .line 1248
    return-void

    .line 1245
    :catch_d
    move-exception p1

    .line 1246
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist shouldShowRequestPermissionRationale(Ljava/lang/String;)Z
    .registers 6

    .line 1151
    :try_start_0
    iget-object v0, p0, Landroid/permission/PermissionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 1152
    iget-object v1, p0, Landroid/permission/PermissionManager;->mPermissionManager:Landroid/permission/IPermissionManager;

    iget-object v2, p0, Landroid/permission/PermissionManager;->mContext:Landroid/content/Context;

    .line 1153
    invoke-virtual {v2}, Landroid/content/Context;->getDeviceId()I

    move-result v2

    iget-object v3, p0, Landroid/permission/PermissionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getUserId()I

    move-result v3

    .line 1152
    invoke-interface {v1, v0, p1, v2, v3}, Landroid/permission/IPermissionManager;->shouldShowRequestPermissionRationale(Ljava/lang/String;Ljava/lang/String;II)Z

    move-result p1
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_18} :catch_19

    return p1

    .line 1154
    :catch_19
    move-exception p1

    .line 1155
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist startOneTimePermissionSession(Ljava/lang/String;JII)V
    .registers 14
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1543
    const-wide/16 v4, -0x1

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v6, p4

    move v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/permission/PermissionManager;->startOneTimePermissionSession(Ljava/lang/String;JJII)V

    .line 1545
    return-void
.end method

.method public whitelist startOneTimePermissionSession(Ljava/lang/String;JJII)V
    .registers 11
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1591
    :try_start_0
    iget-object p6, p0, Landroid/permission/PermissionManager;->mPermissionManager:Landroid/permission/IPermissionManager;

    iget-object p7, p0, Landroid/permission/PermissionManager;->mContext:Landroid/content/Context;

    invoke-virtual {p7}, Landroid/content/Context;->getDeviceId()I

    move-result p7

    iget-object v0, p0, Landroid/permission/PermissionManager;->mContext:Landroid/content/Context;

    .line 1592
    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    .line 1591
    move-object p0, p6

    move-wide v1, p2

    move p2, p7

    move-wide p6, p4

    move p3, v0

    move-wide p4, v1

    invoke-interface/range {p0 .. p7}, Landroid/permission/IPermissionManager;->startOneTimePermissionSession(Ljava/lang/String;IIJJ)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_17} :catch_18

    .line 1595
    goto :goto_1d

    .line 1593
    :catch_18
    move-exception v0

    move-object p1, v0

    .line 1594
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 1596
    :goto_1d
    return-void
.end method

.method public whitelist stopOneTimePermissionSession(Ljava/lang/String;)V
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1610
    :try_start_0
    iget-object v0, p0, Landroid/permission/PermissionManager;->mPermissionManager:Landroid/permission/IPermissionManager;

    iget-object v1, p0, Landroid/permission/PermissionManager;->mContext:Landroid/content/Context;

    .line 1611
    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    .line 1610
    invoke-interface {v0, p1, v1}, Landroid/permission/IPermissionManager;->stopOneTimePermissionSession(Ljava/lang/String;I)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    .line 1614
    goto :goto_10

    .line 1612
    :catch_c
    move-exception p1

    .line 1613
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 1615
    :goto_10
    return-void
.end method

.method public blacklist tearDownUsageHelper()V
    .registers 2

    .line 1303
    iget-object v0, p0, Landroid/permission/PermissionManager;->mUsageHelper:Landroid/permission/PermissionUsageHelper;

    if-eqz v0, :cond_c

    .line 1304
    iget-object v0, p0, Landroid/permission/PermissionManager;->mUsageHelper:Landroid/permission/PermissionUsageHelper;

    invoke-virtual {v0}, Landroid/permission/PermissionUsageHelper;->tearDown()V

    .line 1305
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/permission/PermissionManager;->mUsageHelper:Landroid/permission/PermissionUsageHelper;

    .line 1307
    :cond_c
    return-void
.end method

.method public blacklist updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IILandroid/os/UserHandle;)V
    .registers 14

    .line 841
    iget-object v0, p0, Landroid/permission/PermissionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getDeviceId()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/permission/PermissionManager;->getPersistentDeviceId(I)Ljava/lang/String;

    move-result-object v6

    .line 842
    if-nez v6, :cond_d

    .line 843
    return-void

    .line 846
    :cond_d
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Landroid/permission/PermissionManager;->updatePermissionFlagsInternal(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Landroid/os/UserHandle;)V

    .line 848
    return-void
.end method

.method public whitelist updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .registers 14
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 873
    iget-object v0, p0, Landroid/permission/PermissionManager;->mContext:Landroid/content/Context;

    .line 874
    invoke-virtual {v0}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v7

    .line 873
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v6, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v1 .. v7}, Landroid/permission/PermissionManager;->updatePermissionFlagsInternal(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Landroid/os/UserHandle;)V

    .line 875
    return-void
.end method
