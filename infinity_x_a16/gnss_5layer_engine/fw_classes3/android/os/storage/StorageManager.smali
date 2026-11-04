.class public Landroid/os/storage/StorageManager;
.super Ljava/lang/Object;
.source "StorageManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/storage/StorageManager$ObbActionListener;,
        Landroid/os/storage/StorageManager$StorageEventListenerDelegate;,
        Landroid/os/storage/StorageManager$StorageVolumeCallback;,
        Landroid/os/storage/StorageManager$VolumeListQuery;,
        Landroid/os/storage/StorageManager$AppIoBlockedReason;,
        Landroid/os/storage/StorageManager$QuotaType;,
        Landroid/os/storage/StorageManager$AllocateFlags;,
        Landroid/os/storage/StorageManager$MountMode;,
        Landroid/os/storage/StorageManager$ObbListenerDelegate;,
        Landroid/os/storage/StorageManager$StorageFlags;
    }
.end annotation


# static fields
.field public static final whitelist ACTION_CLEAR_APP_CACHE:Ljava/lang/String; = "android.os.storage.action.CLEAR_APP_CACHE"

.field public static final whitelist ACTION_MANAGE_STORAGE:Ljava/lang/String; = "android.os.storage.action.MANAGE_STORAGE"

.field public static final blacklist APP_IO_BLOCKED_REASON_TRANSCODING:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final blacklist APP_IO_BLOCKED_REASON_UNKNOWN:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final blacklist CACHE_RESERVE_PERCENT_HIGH_KEY:Ljava/lang/String; = "cache_reserve_percent_high"

.field public static final blacklist CACHE_RESERVE_PERCENT_LOW_KEY:Ljava/lang/String; = "cache_reserve_percent_low"

.field public static final greylist-max-r CRYPT_TYPE_DEFAULT:I = 0x1

.field public static final greylist-max-r CRYPT_TYPE_PASSWORD:I = 0x0

.field public static final greylist-max-o DEBUG_ADOPTABLE_FORCE_OFF:I = 0x2

.field public static final greylist-max-o DEBUG_ADOPTABLE_FORCE_ON:I = 0x1

.field public static final greylist-max-o DEBUG_SDCARDFS_FORCE_OFF:I = 0x8

.field public static final greylist-max-o DEBUG_SDCARDFS_FORCE_ON:I = 0x4

.field public static final greylist-max-o DEBUG_VIRTUAL_DISK:I = 0x10

.field public static final blacklist DEFAULT_CACHE_RESERVE_PERCENT_HIGH:I = 0xa

.field public static final blacklist DEFAULT_CACHE_RESERVE_PERCENT_LOW:I = 0x2

.field private static final greylist-max-o DEFAULT_FULL_THRESHOLD_BYTES:J

.field public static final blacklist DEFAULT_STORAGE_THRESHOLD_PERCENT_HIGH:I = 0x14

.field public static final blacklist DEFAULT_STORAGE_THRESHOLD_PERCENT_LOW:I = 0x5

.field private static final greylist-max-o DEFAULT_THRESHOLD_MAX_BYTES:J

.field public static final greylist-max-r ENCRYPTION_STATE_NONE:I = 0x1

.field public static final whitelist EXTRA_REQUESTED_BYTES:Ljava/lang/String; = "android.os.storage.extra.REQUESTED_BYTES"

.field public static final whitelist EXTRA_UUID:Ljava/lang/String; = "android.os.storage.extra.UUID"

.field private static final blacklist FAT_UUID_PREFIX:Ljava/lang/String; = "fafafafa-fafa-5afa-8afa-fafa"

.field public static final whitelist FLAG_ALLOCATE_AGGRESSIVE:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist FLAG_ALLOCATE_CACHE_ONLY:I = 0x10

.field public static final greylist-max-o FLAG_ALLOCATE_DEFY_ALL_RESERVED:I = 0x2

.field public static final greylist-max-o FLAG_ALLOCATE_DEFY_HALF_RESERVED:I = 0x4

.field public static final blacklist FLAG_ALLOCATE_NON_CACHE_ONLY:I = 0x8

.field public static final greylist-max-o FLAG_FOR_WRITE:I = 0x100

.field public static final greylist-max-o FLAG_INCLUDE_INVISIBLE:I = 0x400

.field public static final blacklist FLAG_INCLUDE_RECENT:I = 0x800

.field public static final blacklist FLAG_INCLUDE_SHARED_PROFILE:I = 0x1000

.field public static final greylist-max-o FLAG_REAL_STATE:I = 0x200

.field public static final greylist-max-o FLAG_STORAGE_CE:I = 0x2

.field public static final greylist-max-o FLAG_STORAGE_DE:I = 0x1

.field public static final blacklist FLAG_STORAGE_EXTERNAL:I = 0x4

.field public static final blacklist FLAG_STORAGE_SDK:I = 0x8

.field public static final greylist-max-o FSTRIM_FLAG_DEEP:I = 0x1

.field private static final blacklist LOCAL_LOGV:Z

.field public static final whitelist MOUNT_MODE_EXTERNAL_ANDROID_WRITABLE:I = 0x4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist MOUNT_MODE_EXTERNAL_DEFAULT:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist MOUNT_MODE_EXTERNAL_INSTALLER:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist MOUNT_MODE_EXTERNAL_NONE:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist MOUNT_MODE_EXTERNAL_PASS_THROUGH:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field private static final blacklist PATTERN_USER_ID:Ljava/util/regex/Pattern;

.field public static final blacklist PROJECT_ID_EXT_DEFAULT:I = 0x3e8

.field public static final blacklist PROJECT_ID_EXT_MEDIA_AUDIO:I = 0x3e9

.field public static final blacklist PROJECT_ID_EXT_MEDIA_IMAGE:I = 0x3eb

.field public static final blacklist PROJECT_ID_EXT_MEDIA_VIDEO:I = 0x3ea

.field public static final greylist-max-o PROP_ADOPTABLE:Ljava/lang/String; = "persist.sys.adoptable"

.field public static final blacklist PROP_FORCED_SCOPED_STORAGE_WHITELIST:Ljava/lang/String; = "forced_scoped_storage_whitelist"

.field public static final greylist-max-o PROP_HAS_ADOPTABLE:Ljava/lang/String; = "vold.has_adoptable"

.field public static final greylist-max-o PROP_HAS_RESERVED:Ljava/lang/String; = "vold.has_reserved"

.field public static final greylist-max-o PROP_PRIMARY_PHYSICAL:Ljava/lang/String; = "ro.vold.primary_physical"

.field public static final greylist-max-o PROP_SDCARDFS:Ljava/lang/String; = "persist.sys.sdcardfs"

.field public static final greylist-max-o PROP_VIRTUAL_DISK:Ljava/lang/String; = "persist.sys.virtual_disk"

.field public static final whitelist QUOTA_TYPE_MEDIA_AUDIO:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist QUOTA_TYPE_MEDIA_IMAGE:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist QUOTA_TYPE_MEDIA_NONE:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist QUOTA_TYPE_MEDIA_VIDEO:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist STORAGE_THRESHOLD_PERCENT_HIGH_KEY:Ljava/lang/String; = "storage_threshold_percent_high"

.field private static final greylist-max-o TAG:Ljava/lang/String; = "StorageManager"

.field public static final whitelist UUID_DEFAULT:Ljava/util/UUID;

.field public static final greylist-max-o UUID_PRIMARY_PHYSICAL:Ljava/lang/String; = "primary_physical"

.field public static final greylist-max-o UUID_PRIMARY_PHYSICAL_:Ljava/util/UUID;

.field public static final greylist-max-o UUID_PRIVATE_INTERNAL:Ljava/lang/String;

.field public static final greylist-max-o UUID_SYSTEM:Ljava/lang/String; = "system"

.field public static final greylist-max-o UUID_SYSTEM_:Ljava/util/UUID;

.field private static final blacklist VOLUME_LIST_CACHE_MAX:I = 0x10

.field private static final greylist-max-o XATTR_CACHE_GROUP:Ljava/lang/String; = "user.cache_group"

.field private static final greylist-max-o XATTR_CACHE_TOMBSTONE:Ljava/lang/String; = "user.cache_tombstone"

.field private static volatile greylist-max-o sStorageManager:Landroid/os/storage/IStorageManager;

.field private static final blacklist sVolumeListCache:Landroid/app/PropertyInvalidatedCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/PropertyInvalidatedCache<",
            "Landroid/os/storage/StorageManager$VolumeListQuery;",
            "[",
            "Landroid/os/storage/StorageVolume;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist sVolumeListQuery:Landroid/app/PropertyInvalidatedCache$QueryHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/PropertyInvalidatedCache$QueryHandler<",
            "Landroid/os/storage/StorageManager$VolumeListQuery;",
            "[",
            "Landroid/os/storage/StorageVolume;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mAppOps:Landroid/app/AppOpsManager;

.field private final greylist-max-o mContext:Landroid/content/Context;

.field private final greylist-max-o mDelegates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/os/storage/StorageManager$StorageEventListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mFuseAppLoop:Lcom/android/internal/os/FuseAppLoop;

.field private final greylist-max-o mFuseAppLoopLock:Ljava/lang/Object;

.field private final greylist-max-o mLooper:Landroid/os/Looper;

.field private final greylist-max-o mNextNonce:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final greylist-max-o mObbActionListener:Landroid/os/storage/StorageManager$ObbActionListener;

.field private final greylist-max-o mResolver:Landroid/content/ContentResolver;

.field private final greylist-max-o mStorageManager:Landroid/os/storage/IStorageManager;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmLooper(Landroid/os/storage/StorageManager;)Landroid/os/Looper;
    .registers 1

    iget-object p0, p0, Landroid/os/storage/StorageManager;->mLooper:Landroid/os/Looper;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetNextNonce(Landroid/os/storage/StorageManager;)I
    .registers 1

    invoke-direct {p0}, Landroid/os/storage/StorageManager;->getNextNonce()I

    move-result p0

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 4

    .line 142
    const-string v0, "StorageManager"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroid/os/storage/StorageManager;->LOCAL_LOGV:Z

    .line 161
    const/4 v0, 0x0

    sput-object v0, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    .line 185
    nop

    .line 186
    const-string v1, "41217664-9172-527a-b3d5-edabb50a7d69"

    invoke-static {v1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v1

    sput-object v1, Landroid/os/storage/StorageManager;->UUID_DEFAULT:Ljava/util/UUID;

    .line 189
    nop

    .line 190
    const-string v1, "0f95a519-dae7-5abf-9519-fbd6209e05fd"

    invoke-static {v1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v1

    sput-object v1, Landroid/os/storage/StorageManager;->UUID_PRIMARY_PHYSICAL_:Ljava/util/UUID;

    .line 193
    nop

    .line 194
    const-string v1, "5d258386-e60d-59e3-826d-0089cdd42cc0"

    invoke-static {v1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v1

    sput-object v1, Landroid/os/storage/StorageManager;->UUID_SYSTEM_:Ljava/util/UUID;

    .line 300
    sput-object v0, Landroid/os/storage/StorageManager;->sStorageManager:Landroid/os/storage/IStorageManager;

    .line 317
    new-instance v0, Landroid/os/storage/StorageManager$1;

    invoke-direct {v0}, Landroid/os/storage/StorageManager$1;-><init>()V

    sput-object v0, Landroid/os/storage/StorageManager;->sVolumeListQuery:Landroid/app/PropertyInvalidatedCache$QueryHandler;

    .line 341
    new-instance v0, Landroid/app/PropertyInvalidatedCache;

    new-instance v1, Landroid/app/PropertyInvalidatedCache$Args;

    const-string/jumbo v2, "system_server"

    invoke-direct {v1, v2}, Landroid/app/PropertyInvalidatedCache$Args;-><init>(Ljava/lang/String;)V

    .line 342
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/PropertyInvalidatedCache$Args;->cacheNulls(Z)Landroid/app/PropertyInvalidatedCache$Args;

    move-result-object v1

    .line 343
    const-string v2, "getVolumeList"

    invoke-virtual {v1, v2}, Landroid/app/PropertyInvalidatedCache$Args;->api(Ljava/lang/String;)Landroid/app/PropertyInvalidatedCache$Args;

    move-result-object v1

    const/16 v3, 0x10

    invoke-virtual {v1, v3}, Landroid/app/PropertyInvalidatedCache$Args;->maxEntries(I)Landroid/app/PropertyInvalidatedCache$Args;

    move-result-object v1

    sget-object v3, Landroid/os/storage/StorageManager;->sVolumeListQuery:Landroid/app/PropertyInvalidatedCache$QueryHandler;

    invoke-direct {v0, v1, v2, v3}, Landroid/app/PropertyInvalidatedCache;-><init>(Landroid/app/PropertyInvalidatedCache$Args;Ljava/lang/String;Landroid/app/PropertyInvalidatedCache$QueryHandler;)V

    sput-object v0, Landroid/os/storage/StorageManager;->sVolumeListCache:Landroid/app/PropertyInvalidatedCache;

    .line 1528
    sget-object v0, Landroid/util/DataUnit;->MEBIBYTES:Landroid/util/DataUnit;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/util/DataUnit;->toBytes(J)J

    move-result-wide v0

    sput-wide v0, Landroid/os/storage/StorageManager;->DEFAULT_THRESHOLD_MAX_BYTES:J

    .line 1530
    sget-object v0, Landroid/util/DataUnit;->MEBIBYTES:Landroid/util/DataUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/util/DataUnit;->toBytes(J)J

    move-result-wide v0

    sput-wide v0, Landroid/os/storage/StorageManager;->DEFAULT_FULL_THRESHOLD_BYTES:J

    .line 2508
    const-string v0, "(?i)^/storage/emulated/([0-9]+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/os/storage/StorageManager;->PATTERN_USER_ID:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor greylist <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 527
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 308
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Landroid/os/storage/StorageManager;->mNextNonce:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 310
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/os/storage/StorageManager;->mDelegates:Ljava/util/ArrayList;

    .line 433
    new-instance v0, Landroid/os/storage/StorageManager$ObbActionListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/os/storage/StorageManager$ObbActionListener;-><init>(Landroid/os/storage/StorageManager;Landroid/os/storage/StorageManager-IA;)V

    iput-object v0, p0, Landroid/os/storage/StorageManager;->mObbActionListener:Landroid/os/storage/StorageManager$ObbActionListener;

    .line 2933
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/os/storage/StorageManager;->mFuseAppLoopLock:Ljava/lang/Object;

    .line 2935
    iput-object v1, p0, Landroid/os/storage/StorageManager;->mFuseAppLoop:Lcom/android/internal/os/FuseAppLoop;

    .line 528
    iput-object p1, p0, Landroid/os/storage/StorageManager;->mContext:Landroid/content/Context;

    .line 529
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Landroid/os/storage/StorageManager;->mResolver:Landroid/content/ContentResolver;

    .line 530
    iput-object p2, p0, Landroid/os/storage/StorageManager;->mLooper:Landroid/os/Looper;

    .line 531
    nop

    .line 532
    const-string p1, "mount"

    invoke-static {p1}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    .line 531
    invoke-static {p1}, Landroid/os/storage/IStorageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IStorageManager;

    move-result-object p1

    iput-object p1, p0, Landroid/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/IStorageManager;

    .line 533
    iget-object p1, p0, Landroid/os/storage/StorageManager;->mContext:Landroid/content/Context;

    const-class p2, Landroid/app/AppOpsManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AppOpsManager;

    iput-object p1, p0, Landroid/os/storage/StorageManager;->mAppOps:Landroid/app/AppOpsManager;

    .line 534
    return-void
.end method

.method private blacklist checkExternalStoragePermissionAndAppOp(ZIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 16

    .line 1904
    iget-object v0, p0, Landroid/os/storage/StorageManager;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v1, 0x5c

    const/4 v5, 0x0

    move v2, p3

    move-object v3, p4

    move-object v4, p5

    invoke-virtual/range {v0 .. v5}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p3

    .line 1906
    const/4 p4, 0x1

    if-nez p3, :cond_10

    .line 1907
    return p4

    .line 1909
    :cond_10
    const/4 p5, 0x3

    if-ne p3, p5, :cond_1e

    iget-object p3, p0, Landroid/os/storage/StorageManager;->mContext:Landroid/content/Context;

    const-string p5, "android.permission.MANAGE_EXTERNAL_STORAGE"

    invoke-virtual {p3, p5, p2, v2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result p3

    if-nez p3, :cond_1e

    .line 1911
    return p4

    .line 1915
    :cond_1e
    move-object v0, p0

    move v1, p1

    move-object v6, p6

    move v7, p7

    move-object v5, v4

    move-object v4, v3

    move v3, v2

    move v2, p2

    invoke-direct/range {v0 .. v7}, Landroid/os/storage/StorageManager;->checkPermissionAndAppOp(ZIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p1

    return p1
.end method

.method public static blacklist checkPermissionAndAppOp(Landroid/content/Context;ZIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 17

    .line 1776
    const/4 v8, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move/from16 v7, p7

    invoke-static/range {v0 .. v8}, Landroid/os/storage/StorageManager;->checkPermissionAndAppOp(Landroid/content/Context;ZIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Z

    move-result p0

    return p0
.end method

.method private static blacklist checkPermissionAndAppOp(Landroid/content/Context;ZIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Z
    .registers 11

    .line 1799
    invoke-virtual {p0, p6, p2, p3}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result p2

    const/4 v1, 0x0

    if-eqz p2, :cond_2d

    .line 1800
    if-nez p1, :cond_a

    .line 1804
    return v1

    .line 1801
    :cond_a
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Permission "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " denied for package "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1808
    :cond_2d
    const-class p2, Landroid/app/AppOpsManager;

    invoke-virtual {p0, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    move-object p2, p0

    check-cast p2, Landroid/app/AppOpsManager;

    .line 1810
    if-eqz p8, :cond_42

    .line 1811
    move-object p6, p5

    move-object p5, p4

    move p4, p3

    move p3, p7

    const/4 p7, 0x0

    invoke-virtual/range {p2 .. p7}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    goto :goto_4d

    .line 1814
    :cond_42
    move-object p5, p4

    move p4, p3

    move p3, p7

    :try_start_45
    invoke-virtual {p2, p4, p5}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V
    :try_end_48
    .catch Ljava/lang/SecurityException; {:try_start_45 .. :try_end_48} :catch_af

    .line 1821
    nop

    .line 1822
    invoke-virtual {p2, p3, p4, p5}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result p0

    .line 1824
    :goto_4d
    packed-switch p0, :pswitch_data_b6

    .line 1837
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1838
    invoke-static {p3}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " has unknown mode "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 1839
    invoke-static {p0}, Landroid/app/AppOpsManager;->modeToName(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1830
    :pswitch_75
    if-nez p1, :cond_78

    .line 1834
    return v1

    .line 1831
    :cond_78
    new-instance p1, Ljava/lang/SecurityException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Op "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {p3}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 1832
    invoke-static {p0}, Landroid/app/AppOpsManager;->modeToName(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p2, " for package "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1826
    :pswitch_ad
    const/4 p0, 0x1

    return p0

    .line 1815
    :catch_af
    move-exception v0

    move-object p0, v0

    .line 1816
    if-nez p1, :cond_b4

    .line 1819
    return v1

    .line 1817
    :cond_b4
    throw p0

    nop

    :pswitch_data_b6
    .packed-switch 0x0
        :pswitch_ad
        :pswitch_75
        :pswitch_75
        :pswitch_75
    .end packed-switch
.end method

.method private blacklist checkPermissionAndAppOp(ZIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 9

    .line 1845
    iget-object v0, p0, Landroid/os/storage/StorageManager;->mContext:Landroid/content/Context;

    move-object p0, v0

    invoke-static/range {p0 .. p7}, Landroid/os/storage/StorageManager;->checkPermissionAndAppOp(Landroid/content/Context;ZIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p1

    return p1
.end method

.method public static blacklist checkPermissionAndCheckOp(Landroid/content/Context;ZIILjava/lang/String;Ljava/lang/String;I)Z
    .registers 16

    .line 1787
    const/4 v5, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v6, p5

    move v7, p6

    invoke-static/range {v0 .. v8}, Landroid/os/storage/StorageManager;->checkPermissionAndAppOp(Landroid/content/Context;ZIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Z

    move-result p0

    return p0
.end method

.method public static greylist-max-o convert(Ljava/util/UUID;)Ljava/lang/String;
    .registers 4

    .line 2754
    sget-object v0, Landroid/os/storage/StorageManager;->UUID_DEFAULT:Ljava/util/UUID;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2755
    sget-object p0, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    return-object p0

    .line 2756
    :cond_b
    sget-object v0, Landroid/os/storage/StorageManager;->UUID_PRIMARY_PHYSICAL_:Ljava/util/UUID;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 2757
    const-string/jumbo p0, "primary_physical"

    return-object p0

    .line 2758
    :cond_17
    sget-object v0, Landroid/os/storage/StorageManager;->UUID_SYSTEM_:Ljava/util/UUID;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 2759
    const-string/jumbo p0, "system"

    return-object p0

    .line 2761
    :cond_23
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2766
    const-string v1, "fafafafa-fafa-5afa-8afa-fafa"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5f

    .line 2767
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 2768
    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    .line 2769
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2772
    :cond_5f
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static greylist-max-o convert(Ljava/lang/String;)Ljava/util/UUID;
    .registers 4

    .line 2727
    sget-object v0, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    invoke-static {p0, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2728
    sget-object p0, Landroid/os/storage/StorageManager;->UUID_DEFAULT:Ljava/util/UUID;

    return-object p0

    .line 2729
    :cond_b
    const-string/jumbo v0, "primary_physical"

    invoke-static {p0, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 2730
    sget-object p0, Landroid/os/storage/StorageManager;->UUID_PRIMARY_PHYSICAL_:Ljava/util/UUID;

    return-object p0

    .line 2731
    :cond_17
    const-string/jumbo v0, "system"

    invoke-static {p0, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 2732
    sget-object p0, Landroid/os/storage/StorageManager;->UUID_SYSTEM_:Ljava/util/UUID;

    return-object p0

    .line 2733
    :cond_23
    invoke-static {p0}, Landroid/os/storage/StorageManager;->isFatVolumeIdentifier(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 2745
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fafafafa-fafa-5afa-8afa-fafa"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object p0

    return-object p0

    .line 2747
    :cond_49
    invoke-static {p0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object p0

    return-object p0
.end method

.method public static greylist from(Landroid/content/Context;)Landroid/os/storage/StorageManager;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 511
    const-class v0, Landroid/os/storage/StorageManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/storage/StorageManager;

    return-object p0
.end method

.method private greylist-max-o getNextNonce()I
    .registers 2

    .line 467
    iget-object v0, p0, Landroid/os/storage/StorageManager;->mNextNonce:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    return v0
.end method

.method private blacklist getObbInfo(Ljava/lang/String;)Landroid/content/res/ObbInfo;
    .registers 6

    .line 763
    :try_start_0
    invoke-static {p1}, Landroid/content/res/ObbScanner;->getObbInfo(Ljava/lang/String;)Landroid/content/res/ObbInfo;

    move-result-object p1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_4} :catch_5

    .line 764
    return-object p1

    .line 765
    :catch_5
    move-exception v0

    .line 766
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t get OBB info for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static greylist-max-o getPrimaryStoragePathAndSize()Landroid/util/Pair;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1397
    nop

    .line 1398
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v0

    .line 1399
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 1398
    invoke-static {v0, v1}, Landroid/os/FileUtils;->roundStorageSize(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 1397
    const/4 v1, 0x0

    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o getPrimaryVolume([Landroid/os/storage/StorageVolume;)Landroid/os/storage/StorageVolume;
    .registers 5

    .line 1480
    array-length v0, p0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_10

    aget-object v2, p0, v1

    .line 1481
    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->isPrimary()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 1482
    return-object v2

    .line 1480
    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1485
    :cond_10
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Missing primary storage"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static blacklist getProjectIdForUser(II)J
    .registers 3

    .line 2505
    const v0, 0x186a0

    mul-int/2addr p0, v0

    add-int/2addr p0, p1

    int-to-long p0, p0

    return-wide p0
.end method

.method public static greylist-max-o getStorageVolume(Ljava/io/File;I)Landroid/os/storage/StorageVolume;
    .registers 3

    .line 1283
    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/os/storage/StorageManager;->getVolumeList(II)[Landroid/os/storage/StorageVolume;

    move-result-object p1

    invoke-static {p1, p0}, Landroid/os/storage/StorageManager;->getStorageVolume([Landroid/os/storage/StorageVolume;Ljava/io/File;)Landroid/os/storage/StorageVolume;

    move-result-object p0

    return-object p0
.end method

.method private static greylist-max-r getStorageVolume([Landroid/os/storage/StorageVolume;Ljava/io/File;)Landroid/os/storage/StorageVolume;
    .registers 7

    .line 1289
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 1290
    return-object v0

    .line 1292
    :cond_4
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 1293
    const-string v2, "/mnt/content/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 1294
    invoke-static {v1}, Landroid/content/ContentResolver;->translateDeprecatedDataPath(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    .line 1295
    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object p1

    const-class v0, Landroid/os/storage/StorageManager;

    invoke-virtual {p1, v0}, Landroid/app/Application;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/storage/StorageManager;

    .line 1296
    invoke-virtual {p1, p0}, Landroid/os/storage/StorageManager;->getStorageVolume(Landroid/net/Uri;)Landroid/os/storage/StorageVolume;

    move-result-object p0

    .line 1295
    return-object p0

    .line 1299
    :cond_25
    :try_start_25
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object p1
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_29} :catch_46

    .line 1303
    nop

    .line 1304
    array-length v1, p0

    const/4 v2, 0x0

    :goto_2c
    if-ge v2, v1, :cond_45

    aget-object v3, p0, v2

    .line 1305
    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->getPathFile()Ljava/io/File;

    move-result-object v4

    .line 1307
    :try_start_34
    invoke-virtual {v4}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v4
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_38} :catch_40

    .line 1310
    nop

    .line 1311
    invoke-static {v4, p1}, Landroid/os/FileUtils;->contains(Ljava/io/File;Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_42

    .line 1312
    return-object v3

    .line 1308
    :catch_40
    move-exception v3

    .line 1309
    nop

    .line 1304
    :cond_42
    add-int/lit8 v2, v2, 0x1

    goto :goto_2c

    .line 1315
    :cond_45
    return-object v0

    .line 1300
    :catch_46
    move-exception p0

    .line 1301
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not get canonical path for "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "StorageManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1302
    return-object v0
.end method

.method public static greylist getVolumeList(II)[Landroid/os/storage/StorageVolume;
    .registers 5

    .line 1436
    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->currentOpPackageName()Ljava/lang/String;

    move-result-object v0

    .line 1437
    if-nez v0, :cond_26

    .line 1442
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 1443
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    .line 1442
    invoke-interface {v0, v1}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    .line 1444
    const/4 v1, 0x0

    if-eqz v0, :cond_1c

    array-length v2, v0

    if-gtz v2, :cond_19

    goto :goto_1c

    .line 1448
    :cond_19
    aget-object v0, v0, v1

    goto :goto_26

    .line 1445
    :cond_1c
    :goto_1c
    const-string p0, "StorageManager"

    const-string p1, "Missing package names; no storage volumes available"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1446
    new-array p0, v1, [Landroid/os/storage/StorageVolume;

    return-object p0

    .line 1450
    :cond_26
    :goto_26
    sget-object v1, Landroid/os/storage/StorageManager;->sVolumeListCache:Landroid/app/PropertyInvalidatedCache;

    new-instance v2, Landroid/os/storage/StorageManager$VolumeListQuery;

    invoke-direct {v2, p0, v0, p1}, Landroid/os/storage/StorageManager$VolumeListQuery;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v1, v2}, Landroid/app/PropertyInvalidatedCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/os/storage/StorageVolume;
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_33} :catch_34

    return-object p0

    .line 1451
    :catch_34
    move-exception p0

    .line 1452
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public static greylist-max-o hasAdoptable()Z
    .registers 4

    .line 1718
    const-string/jumbo v0, "persist.sys.adoptable"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    sparse-switch v1, :sswitch_data_34

    :cond_10
    goto :goto_25

    :sswitch_11
    const-string v1, "force_off"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    move v0, v2

    goto :goto_26

    :sswitch_1b
    const-string v1, "force_on"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    move v0, v3

    goto :goto_26

    :goto_25
    const/4 v0, -0x1

    :goto_26
    packed-switch v0, :pswitch_data_3e

    .line 1724
    const-string/jumbo v0, "vold.has_adoptable"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0

    .line 1722
    :pswitch_31
    return v3

    .line 1720
    :pswitch_32
    return v2

    nop

    :sswitch_data_34
    .sparse-switch
        0x1bb67bb3 -> :sswitch_1b
        0x5b18fa1b -> :sswitch_11
    .end sparse-switch

    :pswitch_data_3e
    .packed-switch 0x0
        :pswitch_32
        :pswitch_31
    .end packed-switch
.end method

.method public static whitelist hasIsolatedStorage()Z
    .registers 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1736
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist invalidateVolumeListCache()V
    .registers 1

    .line 348
    sget-object v0, Landroid/os/storage/StorageManager;->sVolumeListCache:Landroid/app/PropertyInvalidatedCache;

    invoke-virtual {v0}, Landroid/app/PropertyInvalidatedCache;->invalidateCache()V

    .line 349
    return-void
.end method

.method private static greylist-max-o isCacheBehavior(Ljava/io/File;Ljava/lang/String;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2647
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/system/Os;->getxattr(Ljava/lang/String;Ljava/lang/String;)[B
    :try_end_7
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_7} :catch_9

    .line 2648
    const/4 p0, 0x1

    return p0

    .line 2649
    :catch_9
    move-exception p0

    .line 2650
    iget p1, p0, Landroid/system/ErrnoException;->errno:I

    sget v0, Landroid/system/OsConstants;->ENODATA:I

    if-ne p1, v0, :cond_12

    .line 2653
    const/4 p0, 0x0

    return p0

    .line 2651
    :cond_12
    invoke-virtual {p0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object p0

    throw p0
.end method

.method public static blacklist isCeStorageUnlocked(I)Z
    .registers 4

    .line 1657
    sget-object v0, Landroid/os/storage/StorageManager;->sStorageManager:Landroid/os/storage/IStorageManager;

    if-nez v0, :cond_11

    .line 1658
    nop

    .line 1659
    const-string v0, "mount"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/storage/IStorageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IStorageManager;

    move-result-object v0

    sput-object v0, Landroid/os/storage/StorageManager;->sStorageManager:Landroid/os/storage/IStorageManager;

    .line 1661
    :cond_11
    sget-object v0, Landroid/os/storage/StorageManager;->sStorageManager:Landroid/os/storage/IStorageManager;

    if-nez v0, :cond_1e

    .line 1662
    const-string p0, "StorageManager"

    const-string v0, "Early during boot, assuming CE storage is locked"

    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1663
    const/4 p0, 0x0

    return p0

    .line 1665
    :cond_1e
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1667
    :try_start_22
    sget-object v2, Landroid/os/storage/StorageManager;->sStorageManager:Landroid/os/storage/IStorageManager;

    invoke-interface {v2, p0}, Landroid/os/storage/IStorageManager;->isCeStorageUnlocked(I)Z

    move-result p0
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_28} :catch_2e
    .catchall {:try_start_22 .. :try_end_28} :catchall_2c

    .line 1671
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1667
    return p0

    .line 1671
    :catchall_2c
    move-exception p0

    goto :goto_34

    .line 1668
    :catch_2e
    move-exception p0

    .line 1669
    :try_start_2f
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
    :try_end_34
    .catchall {:try_start_2f .. :try_end_34} :catchall_2c

    .line 1671
    :goto_34
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1672
    throw p0
.end method

.method public static greylist-max-o isEncrypted()Z
    .registers 1

    .line 1700
    sget-boolean v0, Lcom/android/internal/os/RoSystemProperties;->CRYPTO_ENCRYPTED:Z

    return v0
.end method

.method private static blacklist isFatVolumeIdentifier(Ljava/lang/String;)Z
    .registers 3

    .line 2720
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_13

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const/16 v0, 0x2d

    if-ne p0, v0, :cond_13

    const/4 p0, 0x1

    goto :goto_14

    :cond_13
    const/4 p0, 0x0

    :goto_14
    return p0
.end method

.method public static blacklist isFileEncrypted()Z
    .registers 1

    .line 1710
    invoke-static {}, Landroid/os/storage/StorageManager;->isEncrypted()Z

    move-result v0

    if-nez v0, :cond_8

    .line 1711
    const/4 v0, 0x0

    return v0

    .line 1713
    :cond_8
    sget-boolean v0, Lcom/android/internal/os/RoSystemProperties;->CRYPTO_FILE_ENCRYPTED:Z

    return v0
.end method

.method public static greylist-max-o maybeTranslateEmulatedPathToInternal(Ljava/io/File;)Ljava/io/File;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1746
    return-object p0
.end method

.method private blacklist noteAppOpAllowingLegacy(ZIILjava/lang/String;Ljava/lang/String;I)Z
    .registers 13

    .line 1851
    iget-object v0, p0, Landroid/os/storage/StorageManager;->mAppOps:Landroid/app/AppOpsManager;

    const/4 v5, 0x0

    move v2, p3

    move-object v3, p4

    move-object v4, p5

    move v1, p6

    invoke-virtual/range {v0 .. v5}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    .line 1852
    const/4 p3, 0x1

    packed-switch p2, :pswitch_data_7a

    .line 1872
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1873
    invoke-static {v1}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string p4, " has unknown mode "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    .line 1874
    invoke-static {p2}, Landroid/app/AppOpsManager;->modeToName(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1860
    :pswitch_34
    iget-object p4, p0, Landroid/os/storage/StorageManager;->mAppOps:Landroid/app/AppOpsManager;

    const/16 p5, 0x57

    invoke-virtual {p4, p5, v2, v3}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result p4

    if-nez p4, :cond_3f

    .line 1862
    return p3

    .line 1865
    :cond_3f
    if-nez p1, :cond_43

    .line 1869
    const/4 p1, 0x0

    return p1

    .line 1866
    :cond_43
    new-instance p1, Ljava/lang/SecurityException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Op "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-static {v1}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string p4, " "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    .line 1867
    invoke-static {p2}, Landroid/app/AppOpsManager;->modeToName(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " for package "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1854
    :pswitch_78
    return p3

    nop

    :pswitch_data_7a
    .packed-switch 0x0
        :pswitch_78
        :pswitch_34
        :pswitch_34
        :pswitch_34
    .end packed-switch
.end method

.method private static greylist-max-o setCacheBehavior(Ljava/io/File;Ljava/lang/String;Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2623
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 2626
    if-eqz p2, :cond_1f

    .line 2628
    :try_start_8
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    const-string p2, "1"

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 2629
    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2

    .line 2628
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/system/Os;->setxattr(Ljava/lang/String;Ljava/lang/String;[BI)V
    :try_end_18
    .catch Landroid/system/ErrnoException; {:try_start_8 .. :try_end_18} :catch_19

    .line 2632
    goto :goto_2e

    .line 2630
    :catch_19
    move-exception p0

    .line 2631
    invoke-virtual {p0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object p0

    throw p0

    .line 2635
    :cond_1f
    :try_start_1f
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/system/Os;->removexattr(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_26
    .catch Landroid/system/ErrnoException; {:try_start_1f .. :try_end_26} :catch_27

    .line 2640
    goto :goto_2e

    .line 2636
    :catch_27
    move-exception p0

    .line 2637
    iget p1, p0, Landroid/system/ErrnoException;->errno:I

    sget p2, Landroid/system/OsConstants;->ENODATA:I

    if-ne p1, p2, :cond_2f

    .line 2642
    :goto_2e
    return-void

    .line 2638
    :cond_2f
    invoke-virtual {p0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object p0

    throw p0

    .line 2624
    :cond_34
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Cache behavior can only be set on directories"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static native blacklist setQuotaProjectId(Ljava/lang/String;J)Z
.end method


# virtual methods
.method public whitelist allocateBytes(Ljava/io/FileDescriptor;J)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2373
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/os/storage/StorageManager;->allocateBytes(Ljava/io/FileDescriptor;JI)V

    .line 2374
    return-void
.end method

.method public whitelist allocateBytes(Ljava/io/FileDescriptor;JI)V
    .registers 14
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2382
    const-string v0, "StorageManager"

    invoke-static {p1}, Landroid/os/ParcelFileDescriptor;->getFile(Ljava/io/FileDescriptor;)Ljava/io/File;

    move-result-object v1

    .line 2383
    invoke-virtual {p0, v1}, Landroid/os/storage/StorageManager;->getUuidForPath(Ljava/io/File;)Ljava/util/UUID;

    move-result-object v2

    .line 2384
    const/4 v3, 0x0

    :goto_b
    const/4 v4, 0x3

    if-ge v3, v4, :cond_53

    .line 2386
    :try_start_e
    invoke-static {p1}, Landroid/system/Os;->fstat(Ljava/io/FileDescriptor;)Landroid/system/StructStat;

    move-result-object v4

    iget-wide v4, v4, Landroid/system/StructStat;->st_blocks:J

    const-wide/16 v6, 0x200

    mul-long/2addr v4, v6

    .line 2387
    sub-long v4, p2, v4

    .line 2389
    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-lez v8, :cond_22

    .line 2390
    invoke-virtual {p0, v2, v4, v5, p4}, Landroid/os/storage/StorageManager;->allocateBytes(Ljava/util/UUID;JI)V
    :try_end_22
    .catch Landroid/system/ErrnoException; {:try_start_e .. :try_end_22} :catch_3e

    .line 2394
    :cond_22
    :try_start_22
    invoke-static {p1, v6, v7, p2, p3}, Landroid/system/Os;->posix_fallocate(Ljava/io/FileDescriptor;JJ)V
    :try_end_25
    .catch Landroid/system/ErrnoException; {:try_start_22 .. :try_end_25} :catch_26

    .line 2395
    return-void

    .line 2396
    :catch_26
    move-exception v4

    .line 2397
    :try_start_27
    iget v5, v4, Landroid/system/ErrnoException;->errno:I

    sget v6, Landroid/system/OsConstants;->ENOSYS:I

    if-eq v5, v6, :cond_35

    iget v5, v4, Landroid/system/ErrnoException;->errno:I

    sget v6, Landroid/system/OsConstants;->ENOTSUP:I

    if-ne v5, v6, :cond_34

    goto :goto_35

    .line 2402
    :cond_34
    throw v4

    .line 2398
    :cond_35
    :goto_35
    const-string v4, "fallocate() not supported; falling back to ftruncate()"

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2399
    invoke-static {p1, p2, p3}, Landroid/system/Os;->ftruncate(Ljava/io/FileDescriptor;J)V
    :try_end_3d
    .catch Landroid/system/ErrnoException; {:try_start_27 .. :try_end_3d} :catch_3e

    .line 2400
    return-void

    .line 2405
    :catch_3e
    move-exception v4

    .line 2406
    iget v5, v4, Landroid/system/ErrnoException;->errno:I

    sget v6, Landroid/system/OsConstants;->ENOSPC:I

    if-ne v5, v6, :cond_4e

    .line 2407
    const-string v4, "Odd, not enough space; let\'s try again?"

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2408
    nop

    .line 2384
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 2410
    :cond_4e
    invoke-virtual {v4}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object p1

    throw p1

    .line 2413
    :cond_53
    new-instance p1, Ljava/io/IOException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Well this is embarassing; we can\'t allocate "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " for "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist allocateBytes(Ljava/util/UUID;J)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2302
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/os/storage/StorageManager;->allocateBytes(Ljava/util/UUID;JI)V

    .line 2303
    return-void
.end method

.method public whitelist allocateBytes(Ljava/util/UUID;JI)V
    .registers 11
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2312
    :try_start_0
    iget-object v0, p0, Landroid/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/IStorageManager;

    invoke-static {p1}, Landroid/os/storage/StorageManager;->convert(Ljava/util/UUID;)Ljava/lang/String;

    move-result-object v1

    iget-object p1, p0, Landroid/os/storage/StorageManager;->mContext:Landroid/content/Context;

    .line 2313
    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    .line 2312
    move-wide v2, p2

    move v4, p4

    invoke-interface/range {v0 .. v5}, Landroid/os/storage/IStorageManager;->allocateBytes(Ljava/lang/String;JILjava/lang/String;)V
    :try_end_11
    .catch Landroid/os/ParcelableException; {:try_start_0 .. :try_end_11} :catch_19
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_11} :catch_12

    goto :goto_20

    .line 2316
    :catch_12
    move-exception v0

    move-object p1, v0

    .line 2317
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 2314
    :catch_19
    move-exception v0

    move-object p1, v0

    .line 2315
    const-class p2, Ljava/io/IOException;

    invoke-virtual {p1, p2}, Landroid/os/ParcelableException;->maybeRethrow(Ljava/lang/Class;)V

    .line 2318
    :goto_20
    nop

    .line 2319
    return-void
.end method

.method public greylist-max-o benchmark(Ljava/lang/String;)J
    .registers 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1095
    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 1096
    new-instance v1, Landroid/os/storage/StorageManager$2;

    invoke-direct {v1, p0, v0}, Landroid/os/storage/StorageManager$2;-><init>(Landroid/os/storage/StorageManager;Ljava/util/concurrent/CompletableFuture;)V

    invoke-virtual {p0, p1, v1}, Landroid/os/storage/StorageManager;->benchmark(Ljava/lang/String;Landroid/os/IVoldTaskListener;)V

    .line 1109
    const-wide v1, 0x7fffffffffffffffL

    :try_start_12
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x3

    invoke-virtual {v0, v3, v4, p1}, Ljava/util/concurrent/CompletableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PersistableBundle;

    const-string/jumbo v0, "run"

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/PersistableBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_23} :catch_28

    const-wide/32 v2, 0xf4240

    mul-long/2addr v0, v2

    return-wide v0

    .line 1110
    :catch_28
    move-exception p1

    .line 1111
    return-wide v1
.end method

.method public greylist-max-o benchmark(Ljava/lang/String;Landroid/os/IVoldTaskListener;)V
    .registers 4

    .line 1118
    :try_start_0
    iget-object v0, p0, Landroid/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/IStorageManager;

    invoke-interface {v0, p1, p2}, Landroid/os/storage/IStorageManager;->benchmark(Ljava/lang/String;Landroid/os/IVoldTaskListener;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1121
    nop

    .line 1122
    return-void

    .line 1119
    :catch_7
    move-exception p1

    .line 1120
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist checkPermissionReadImages(ZIILjava/lang/String;Ljava/lang/String;)Z
    .registers 14
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1892
    const-string v6, "android.permission.READ_EXTERNAL_STORAGE"

    const/16 v7, 0x3b

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v7}, Landroid/os/storage/StorageManager;->checkExternalStoragePermissionAndAppOp(ZIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p1

    if-nez p1, :cond_12

    .line 1894
    const/4 p1, 0x0

    return p1

    .line 1896
    :cond_12
    const/16 v6, 0x55

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Landroid/os/storage/StorageManager;->noteAppOpAllowingLegacy(ZIILjava/lang/String;Ljava/lang/String;I)Z

    move-result p1

    return p1
.end method

.method public blacklist computeStorageCacheBytes(Ljava/io/File;)J
    .registers 15
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 1575
    const-string/jumbo v0, "storage_threshold_percent_high"

    const/16 v1, 0x14

    const-string/jumbo v2, "storage_native_boot"

    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 1578
    const-string v1, "cache_reserve_percent_high"

    const/16 v3, 0xa

    invoke-static {v2, v1, v3}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    .line 1581
    const-string v3, "cache_reserve_percent_low"

    const/4 v4, 0x2

    invoke-static {v2, v3, v4}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    .line 1584
    invoke-virtual {p1}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v3

    .line 1585
    invoke-virtual {p1}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v5

    .line 1586
    int-to-long v7, v0

    mul-long/2addr v7, v3

    const-wide/16 v9, 0x64

    div-long/2addr v7, v9

    .line 1587
    invoke-virtual {p0, p1}, Landroid/os/storage/StorageManager;->getStorageLowBytes(Ljava/io/File;)J

    move-result-wide v11

    .line 1589
    cmp-long p1, v5, v7

    if-lez p1, :cond_34

    .line 1592
    int-to-long v0, v1

    mul-long/2addr v3, v0

    div-long/2addr v3, v9

    goto :goto_54

    .line 1593
    :cond_34
    cmp-long p1, v5, v11

    if-gez p1, :cond_3c

    .line 1596
    int-to-long v0, v2

    mul-long/2addr v3, v0

    div-long/2addr v3, v9

    goto :goto_54

    .line 1599
    :cond_3c
    sub-int/2addr v1, v2

    int-to-long v0, v1

    mul-long/2addr v0, v3

    long-to-double v0, v0

    sub-long/2addr v7, v11

    long-to-double v7, v7

    const-wide/high16 v9, 0x4059000000000000L    # 100.0

    mul-double/2addr v7, v9

    div-double/2addr v0, v7

    .line 1601
    int-to-long v7, v2

    mul-long/2addr v3, v7

    long-to-double v2, v3

    div-double/2addr v2, v9

    long-to-double v7, v11

    mul-double/2addr v7, v0

    sub-double/2addr v2, v7

    .line 1603
    long-to-double v4, v5

    mul-double/2addr v0, v4

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    .line 1605
    :goto_54
    return-wide v3
.end method

.method public greylist-max-r disableUsbMassStorage()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 669
    return-void
.end method

.method public greylist-max-r enableUsbMassStorage()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 659
    return-void
.end method

.method public greylist findDiskById(Ljava/lang/String;)Landroid/os/storage/DiskInfo;
    .registers 5

    .line 851
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 853
    invoke-virtual {p0}, Landroid/os/storage/StorageManager;->getDisks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/DiskInfo;

    .line 854
    iget-object v2, v1, Landroid/os/storage/DiskInfo;->id:Ljava/lang/String;

    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 855
    return-object v1

    .line 857
    :cond_20
    goto :goto_b

    .line 858
    :cond_21
    const/4 p1, 0x0

    return-object p1
.end method

.method public greylist findEmulatedForPrivate(Landroid/os/storage/VolumeInfo;)Landroid/os/storage/VolumeInfo;
    .registers 5

    .line 916
    if-eqz p1, :cond_31

    .line 917
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v1, "private"

    const-string v2, "emulated"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ";"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Landroid/os/storage/StorageManager;->mContext:Landroid/content/Context;

    .line 918
    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 917
    invoke-virtual {p0, p1}, Landroid/os/storage/StorageManager;->findVolumeById(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object p1

    return-object p1

    .line 920
    :cond_31
    const/4 p1, 0x0

    return-object p1
.end method

.method public greylist-max-o findPathForUuid(Ljava/lang/String;)Ljava/io/File;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 973
    invoke-virtual {p0, p1}, Landroid/os/storage/StorageManager;->findVolumeByQualifiedUuid(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v0

    .line 974
    if-eqz v0, :cond_b

    .line 975
    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getPath()Ljava/io/File;

    move-result-object p1

    return-object p1

    .line 977
    :cond_b
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to find a storage device for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o findPrivateForEmulated(Landroid/os/storage/VolumeInfo;)Landroid/os/storage/VolumeInfo;
    .registers 4

    .line 901
    if-eqz p1, :cond_22

    .line 902
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object p1

    .line 903
    const-string v0, ";"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 904
    const/4 v1, -0x1

    if-eq v0, v1, :cond_14

    .line 905
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 907
    :cond_14
    const-string v0, "emulated"

    const-string/jumbo v1, "private"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/storage/StorageManager;->findVolumeById(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object p1

    return-object p1

    .line 909
    :cond_22
    const/4 p1, 0x0

    return-object p1
.end method

.method public greylist-max-o findRecordByUuid(Ljava/lang/String;)Landroid/os/storage/VolumeRecord;
    .registers 5

    .line 889
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 891
    invoke-virtual {p0}, Landroid/os/storage/StorageManager;->getVolumeRecords()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/VolumeRecord;

    .line 892
    iget-object v2, v1, Landroid/os/storage/VolumeRecord;->fsUuid:Ljava/lang/String;

    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 893
    return-object v1

    .line 895
    :cond_20
    goto :goto_b

    .line 896
    :cond_21
    const/4 p1, 0x0

    return-object p1
.end method

.method public greylist-max-r findVolumeById(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;
    .registers 5

    .line 864
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 866
    invoke-virtual {p0}, Landroid/os/storage/StorageManager;->getVolumes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/VolumeInfo;

    .line 867
    iget-object v2, v1, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 868
    return-object v1

    .line 870
    :cond_20
    goto :goto_b

    .line 871
    :cond_21
    const/4 p1, 0x0

    return-object p1
.end method

.method public greylist-max-o findVolumeByQualifiedUuid(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;
    .registers 3

    .line 926
    sget-object v0, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 927
    const-string/jumbo p1, "private"

    invoke-virtual {p0, p1}, Landroid/os/storage/StorageManager;->findVolumeById(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object p1

    return-object p1

    .line 928
    :cond_10
    const-string/jumbo v0, "primary_physical"

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 929
    invoke-virtual {p0}, Landroid/os/storage/StorageManager;->getPrimaryPhysicalVolume()Landroid/os/storage/VolumeInfo;

    move-result-object p1

    return-object p1

    .line 931
    :cond_1e
    invoke-virtual {p0, p1}, Landroid/os/storage/StorageManager;->findVolumeByUuid(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object p1

    return-object p1
.end method

.method public greylist findVolumeByUuid(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;
    .registers 5

    .line 877
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 879
    invoke-virtual {p0}, Landroid/os/storage/StorageManager;->getVolumes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/VolumeInfo;

    .line 880
    iget-object v2, v1, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 881
    return-object v1

    .line 883
    :cond_20
    goto :goto_b

    .line 884
    :cond_21
    const/4 p1, 0x0

    return-object p1
.end method

.method public blacklist fixupAppDir(Ljava/io/File;)V
    .registers 5

    .line 2612
    :try_start_0
    iget-object v0, p0, Landroid/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/IStorageManager;

    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/os/storage/IStorageManager;->fixupAppDir(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_9} :catch_10
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    goto :goto_2d

    .line 2615
    :catch_a
    move-exception p1

    .line 2616
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 2613
    :catch_10
    move-exception v0

    .line 2614
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to get canonical path for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "StorageManager"

    invoke-static {v1, p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2617
    :goto_2d
    nop

    .line 2618
    return-void
.end method

.method public greylist-max-o forgetVolume(Ljava/lang/String;)V
    .registers 3

    .line 1208
    :try_start_0
    iget-object v0, p0, Landroid/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/IStorageManager;

    invoke-interface {v0, p1}, Landroid/os/storage/IStorageManager;->forgetVolume(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1211
    nop

    .line 1212
    return-void

    .line 1209
    :catch_7
    move-exception p1

    .line 1210
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public greylist-max-r format(Ljava/lang/String;)V
    .registers 3

    .line 1086
    :try_start_0
    iget-object v0, p0, Landroid/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/IStorageManager;

    invoke-interface {v0, p1}, Landroid/os/storage/IStorageManager;->format(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1089
    nop

    .line 1090
    return-void

    .line 1087
    :catch_7
    move-exception p1

    .line 1088
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist getAllocatableBytes(Ljava/util/UUID;)J
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2253
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/os/storage/StorageManager;->getAllocatableBytes(Ljava/util/UUID;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getAllocatableBytes(Ljava/util/UUID;I)J
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2263
    :try_start_0
    iget-object v0, p0, Landroid/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/IStorageManager;

    invoke-static {p1}, Landroid/os/storage/StorageManager;->convert(Ljava/util/UUID;)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Landroid/os/storage/StorageManager;->mContext:Landroid/content/Context;

    .line 2264
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    .line 2263
    invoke-interface {v0, p1, p2, v1}, Landroid/os/storage/IStorageManager;->getAllocatableBytes(Ljava/lang/String;ILjava/lang/String;)J

    move-result-wide p1
    :try_end_10
    .catch Landroid/os/ParcelableException; {:try_start_0 .. :try_end_10} :catch_17
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_10} :catch_11

    return-wide p1

    .line 2268
    :catch_11
    move-exception p1

    .line 2269
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 2265
    :catch_17
    move-exception p1

    .line 2266
    const-class p2, Ljava/io/IOException;

    invoke-virtual {p1, p2}, Landroid/os/ParcelableException;->maybeRethrow(Ljava/lang/Class;)V

    .line 2267
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public greylist getBestVolumeDescription(Landroid/os/storage/VolumeInfo;)Ljava/lang/String;
    .registers 5

    .line 1030
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    .line 1033
    :cond_4
    iget-object v1, p1, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1f

    .line 1034
    iget-object v1, p1, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/os/storage/StorageManager;->findRecordByUuid(Ljava/lang/String;)Landroid/os/storage/VolumeRecord;

    move-result-object v1

    .line 1035
    if-eqz v1, :cond_1f

    iget-object v2, v1, Landroid/os/storage/VolumeRecord;->nickname:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1f

    .line 1036
    iget-object p1, v1, Landroid/os/storage/VolumeRecord;->nickname:Ljava/lang/String;

    return-object p1

    .line 1040
    :cond_1f
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2e

    .line 1041
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1044
    :cond_2e
    iget-object v1, p1, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    if-eqz v1, :cond_39

    .line 1045
    iget-object p1, p1, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    invoke-virtual {p1}, Landroid/os/storage/DiskInfo;->getDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1048
    :cond_39
    return-object v0
.end method

.method public whitelist getCacheQuotaBytes(Ljava/util/UUID;)J
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2044
    :try_start_0
    iget-object v0, p0, Landroid/os/storage/StorageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 2045
    iget-object v1, p0, Landroid/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/IStorageManager;

    invoke-static {p1}, Landroid/os/storage/StorageManager;->convert(Ljava/util/UUID;)Ljava/lang/String;

    move-result-object p1

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-interface {v1, p1, v0}, Landroid/os/storage/IStorageManager;->getCacheQuotaBytes(Ljava/lang/String;I)J

    move-result-wide v0
    :try_end_12
    .catch Landroid/os/ParcelableException; {:try_start_0 .. :try_end_12} :catch_19
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_13

    return-wide v0

    .line 2049
    :catch_13
    move-exception p1

    .line 2050
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 2046
    :catch_19
    move-exception p1

    .line 2047
    const-class v0, Ljava/io/IOException;

    invoke-virtual {p1, v0}, Landroid/os/ParcelableException;->maybeRethrow(Ljava/lang/Class;)V

    .line 2048
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public whitelist getCacheSizeBytes(Ljava/util/UUID;)J
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2079
    :try_start_0
    iget-object v0, p0, Landroid/os/storage/StorageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 2080
    iget-object v1, p0, Landroid/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/IStorageManager;

    invoke-static {p1}, Landroid/os/storage/StorageManager;->convert(Ljava/util/UUID;)Ljava/lang/String;

    move-result-object p1

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-interface {v1, p1, v0}, Landroid/os/storage/IStorageManager;->getCacheSizeBytes(Ljava/lang/String;I)J

    move-result-wide v0
    :try_end_12
    .catch Landroid/os/ParcelableException; {:try_start_0 .. :try_end_12} :catch_19
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_13

    return-wide v0

    .line 2084
    :catch_13
    move-exception p1

    .line 2085
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 2081
    :catch_19
    move-exception p1

    .line 2082
    const-class v0, Ljava/io/IOException;

    invoke-virtual {p1, v0}, Landroid/os/ParcelableException;->maybeRethrow(Ljava/lang/Class;)V

    .line 2083
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public blacklist getCloudMediaProvider()Ljava/lang/String;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 2927
    :try_start_0
    iget-object v0, p0, Landroid/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/IStorageManager;

    invoke-interface {v0}, Landroid/os/storage/IStorageManager;->getCloudMediaProvider()Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 2928
    :catch_7
    move-exception v0

    .line 2929
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public greylist getDisks()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/os/storage/DiskInfo;",
            ">;"
        }
    .end annotation

    .line 842
    :try_start_0
    iget-object v0, p0, Landroid/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/IStorageManager;

    invoke-interface {v0}, Landroid/os/storage/IStorageManager;->getDisks()[Landroid/os/storage/DiskInfo;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return-object v0

    .line 843
    :catch_b
    move-exception v0

    .line 844
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public whitelist getExternalStorageMountMode(ILjava/lang/String;)I
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2336
    :try_start_0
    iget-object v0, p0, Landroid/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/IStorageManager;

    invoke-interface {v0, p1, p2}, Landroid/os/storage/IStorageManager;->getExternalStorageMountMode(ILjava/lang/String;)I

    move-result p1
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return p1

    .line 2337
    :catch_7
    move-exception p1

    .line 2338
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist getInternalStorageBlockDeviceSize()J
    .registers 3

    .line 1411
    :try_start_0
    iget-object v0, p0, Landroid/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/IStorageManager;

    invoke-interface {v0}, Landroid/os/storage/IStorageManager;->getInternalStorageBlockDeviceSize()J

    move-result-wide v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-wide v0

    .line 1412
    :catch_7
    move-exception v0

    .line 1413
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public whitelist getInternalStorageRemainingLifetime()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2957
    :try_start_0
    iget-object v0, p0, Landroid/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/IStorageManager;

    invoke-interface {v0}, Landroid/os/storage/IStorageManager;->getInternalStorageRemainingLifetime()I

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 2958
    :catch_7
    move-exception v0

    .line 2959
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public whitelist getManageSpaceActivityIntent(Ljava/lang/String;I)Landroid/app/PendingIntent;
    .registers 4

    .line 754
    :try_start_0
    iget-object v0, p0, Landroid/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/IStorageManager;

    invoke-interface {v0, p1, p2}, Landroid/os/storage/IStorageManager;->getManageSpaceActivityIntent(Ljava/lang/String;I)Landroid/app/PendingIntent;

    move-result-object p1
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object p1

    .line 756
    :catch_7
    move-exception p1

    .line 757
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist getMountedObbPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 829
    const-string/jumbo v0, "rawPath cannot be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 832
    :try_start_6
    iget-object v0, p0, Landroid/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/IStorageManager;

    invoke-interface {v0, p1}, Landroid/os/storage/IStorageManager;->getMountedObbPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_d

    return-object p1

    .line 833
    :catch_d
    move-exception p1

    .line 834
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public greylist getPrimaryPhysicalVolume()Landroid/os/storage/VolumeInfo;
    .registers 4

    .line 1054
    invoke-virtual {p0}, Landroid/os/storage/StorageManager;->getVolumes()Ljava/util/List;

    move-result-object v0

    .line 1055
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/VolumeInfo;

    .line 1056
    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->isPrimaryPhysical()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 1057
    return-object v1

    .line 1059
    :cond_1b
    goto :goto_8

    .line 1060
    :cond_1c
    const/4 v0, 0x0

    return-object v0
.end method

.method public greylist-max-o getPrimaryStorageSize()J
    .registers 5

    .line 1404
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v0

    .line 1405
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 1404
    invoke-static {v0, v1}, Landroid/os/FileUtils;->roundStorageSize(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public greylist-max-o getPrimaryStorageUuid()Ljava/lang/String;
    .registers 2

    .line 1222
    :try_start_0
    iget-object v0, p0, Landroid/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/IStorageManager;

    invoke-interface {v0}, Landroid/os/storage/IStorageManager;->getPrimaryStorageUuid()Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 1223
    :catch_7
    move-exception v0

    .line 1224
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public whitelist getPrimaryStorageVolume()Landroid/os/storage/StorageVolume;
    .registers 3

    .line 1392
    iget-object v0, p0, Landroid/os/storage/StorageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    const/16 v1, 0x600

    invoke-static {v0, v1}, Landroid/os/storage/StorageManager;->getVolumeList(II)[Landroid/os/storage/StorageVolume;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public greylist getPrimaryVolume()Landroid/os/storage/StorageVolume;
    .registers 2

    .line 1475
    invoke-virtual {p0}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v0

    invoke-static {v0}, Landroid/os/storage/StorageManager;->getPrimaryVolume([Landroid/os/storage/StorageVolume;)Landroid/os/storage/StorageVolume;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getProxyFileDescriptorMountPointId()I
    .registers 3

    .line 2011
    iget-object v0, p0, Landroid/os/storage/StorageManager;->mFuseAppLoopLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2012
    :try_start_3
    iget-object v1, p0, Landroid/os/storage/StorageManager;->mFuseAppLoop:Lcom/android/internal/os/FuseAppLoop;

    if-eqz v1, :cond_e

    iget-object v1, p0, Landroid/os/storage/StorageManager;->mFuseAppLoop:Lcom/android/internal/os/FuseAppLoop;

    invoke-virtual {v1}, Lcom/android/internal/os/FuseAppLoop;->getMountPointId()I

    move-result v1

    goto :goto_f

    :cond_e
    const/4 v1, -0x1

    :goto_f
    monitor-exit v0

    return v1

    .line 2013
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public whitelist getRecentStorageVolumes()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/os/storage/StorageVolume;",
            ">;"
        }
    .end annotation

    .line 1378
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1379
    iget-object v1, p0, Landroid/os/storage/StorageManager;->mContext:Landroid/content/Context;

    .line 1380
    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    const/16 v2, 0xe00

    invoke-static {v1, v2}, Landroid/os/storage/StorageManager;->getVolumeList(II)[Landroid/os/storage/StorageVolume;

    move-result-object v1

    .line 1379
    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 1382
    return-object v0
.end method

.method public greylist getStorageBytesUntilLow(Ljava/io/File;)J
    .registers 6

    .line 1540
    invoke-virtual {p1}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v0

    invoke-virtual {p0, p1}, Landroid/os/storage/StorageManager;->getStorageFullBytes(Ljava/io/File;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public greylist-max-o getStorageCacheBytes(Ljava/io/File;I)J
    .registers 6

    .line 1615
    and-int/lit8 v0, p2, 0x1

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_7

    .line 1616
    return-wide v1

    .line 1617
    :cond_7
    and-int/lit8 v0, p2, 0x2

    if-eqz v0, :cond_c

    .line 1618
    return-wide v1

    .line 1619
    :cond_c
    and-int/lit8 p2, p2, 0x4

    if-eqz p2, :cond_18

    .line 1620
    invoke-virtual {p0, p1}, Landroid/os/storage/StorageManager;->computeStorageCacheBytes(Ljava/io/File;)J

    move-result-wide p1

    const-wide/16 v0, 0x2

    div-long/2addr p1, v0

    return-wide p1

    .line 1622
    :cond_18
    invoke-virtual {p0, p1}, Landroid/os/storage/StorageManager;->computeStorageCacheBytes(Ljava/io/File;)J

    move-result-wide p1

    return-wide p1
.end method

.method public greylist-max-r getStorageFullBytes(Ljava/io/File;)J
    .registers 5

    .line 1634
    iget-object p1, p0, Landroid/os/storage/StorageManager;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v0, "sys_storage_full_threshold_bytes"

    sget-wide v1, Landroid/os/storage/StorageManager;->DEFAULT_FULL_THRESHOLD_BYTES:J

    invoke-static {p1, v0, v1, v2}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public greylist getStorageLowBytes(Ljava/io/File;)J
    .registers 8

    .line 1551
    iget-object v0, p0, Landroid/os/storage/StorageManager;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "sys_storage_threshold_percentage"

    const/4 v2, 0x5

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    int-to-long v0, v0

    .line 1554
    invoke-virtual {p1}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v2

    mul-long/2addr v2, v0

    const-wide/16 v0, 0x64

    div-long/2addr v2, v0

    .line 1556
    iget-object p1, p0, Landroid/os/storage/StorageManager;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v0, "sys_storage_threshold_max_bytes"

    sget-wide v4, Landroid/os/storage/StorageManager;->DEFAULT_THRESHOLD_MAX_BYTES:J

    invoke-static {p1, v0, v4, v5}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    .line 1559
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getStorageVolume(Landroid/net/Uri;)Landroid/os/storage/StorageVolume;
    .registers 7

    .line 1255
    invoke-static {p1}, Landroid/provider/MediaStore;->getVolumeName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 1259
    const-string v1, "external"

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3b

    .line 1260
    iget-object v1, p0, Landroid/os/storage/StorageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v3, "volume_name"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, p1, v3, v4, v4}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v1

    .line 1262
    :try_start_1f
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_29

    .line 1263
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_29
    .catchall {:try_start_1f .. :try_end_29} :catchall_2f

    .line 1265
    :cond_29
    if-eqz v1, :cond_3b

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_3b

    .line 1260
    :catchall_2f
    move-exception p1

    if-eqz v1, :cond_3a

    :try_start_32
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_36

    goto :goto_3a

    :catchall_36
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3a
    :goto_3a
    throw p1

    .line 1268
    :cond_3b
    :goto_3b
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    packed-switch v1, :pswitch_data_90

    :cond_42
    goto :goto_4c

    :pswitch_43
    const-string v1, "external_primary"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_42

    goto :goto_4d

    :goto_4c
    const/4 v2, -0x1

    :goto_4d
    packed-switch v2, :pswitch_data_96

    .line 1272
    invoke-virtual {p0}, Landroid/os/storage/StorageManager;->getStorageVolumes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    goto :goto_5e

    .line 1270
    :pswitch_59
    invoke-virtual {p0}, Landroid/os/storage/StorageManager;->getPrimaryStorageVolume()Landroid/os/storage/StorageVolume;

    move-result-object p1

    return-object p1

    .line 1272
    :goto_5e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_76

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/StorageVolume;

    .line 1273
    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getMediaStoreVolumeName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_75

    .line 1274
    return-object v2

    .line 1276
    :cond_75
    goto :goto_5e

    .line 1278
    :cond_76
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown volume for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_90
    .packed-switch -0x7288e272
        :pswitch_43
    .end packed-switch

    :pswitch_data_96
    .packed-switch 0x0
        :pswitch_59
    .end packed-switch
.end method

.method public whitelist getStorageVolume(Ljava/io/File;)Landroid/os/storage/StorageVolume;
    .registers 3

    .line 1247
    invoke-virtual {p0}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/os/storage/StorageManager;->getStorageVolume([Landroid/os/storage/StorageVolume;Ljava/io/File;)Landroid/os/storage/StorageVolume;

    move-result-object p1

    return-object p1
.end method

.method public whitelist getStorageVolumes()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/os/storage/StorageVolume;",
            ">;"
        }
    .end annotation

    .line 1344
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1345
    iget-object v1, p0, Landroid/os/storage/StorageManager;->mContext:Landroid/content/Context;

    .line 1346
    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    const/16 v2, 0x600

    invoke-static {v1, v2}, Landroid/os/storage/StorageManager;->getVolumeList(II)[Landroid/os/storage/StorageVolume;

    move-result-object v1

    .line 1345
    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 1347
    return-object v0
.end method

.method public whitelist getStorageVolumesIncludingSharedProfiles()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/os/storage/StorageVolume;",
            ">;"
        }
    .end annotation

    .line 1362
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1363
    iget-object v1, p0, Landroid/os/storage/StorageManager;->mContext:Landroid/content/Context;

    .line 1364
    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    const/16 v2, 0x1600

    invoke-static {v1, v2}, Landroid/os/storage/StorageManager;->getVolumeList(II)[Landroid/os/storage/StorageVolume;

    move-result-object v1

    .line 1363
    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 1366
    return-object v0
.end method

.method public whitelist getUuidForPath(Ljava/io/File;)Ljava/util/UUID;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 947
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 948
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    .line 949
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/os/FileUtils;->contains(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 950
    sget-object p1, Landroid/os/storage/StorageManager;->UUID_DEFAULT:Ljava/util/UUID;

    return-object p1

    .line 953
    :cond_18
    :try_start_18
    iget-object v1, p0, Landroid/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/IStorageManager;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/os/storage/IStorageManager;->getVolumes(I)[Landroid/os/storage/VolumeInfo;

    move-result-object v1

    array-length v3, v1

    :goto_20
    if-ge v2, v3, :cond_45

    aget-object v4, v1, v2

    .line 954
    iget-object v5, v4, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    if-eqz v5, :cond_42

    iget-object v5, v4, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    invoke-static {v5, v0}, Landroid/os/FileUtils;->contains(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_42

    iget v5, v4, Landroid/os/storage/VolumeInfo;->type:I

    if-eqz v5, :cond_42

    iget v5, v4, Landroid/os/storage/VolumeInfo;->type:I
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_36} :catch_5f

    const/4 v6, 0x5

    if-eq v5, v6, :cond_42

    .line 959
    :try_start_39
    iget-object v4, v4, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    invoke-static {v4}, Landroid/os/storage/StorageManager;->convert(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object p1
    :try_end_3f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_39 .. :try_end_3f} :catch_40
    .catch Landroid/os/RemoteException; {:try_start_39 .. :try_end_3f} :catch_5f

    return-object p1

    .line 960
    :catch_40
    move-exception v4

    .line 961
    nop

    .line 953
    :cond_42
    add-int/lit8 v2, v2, 0x1

    goto :goto_20

    .line 967
    :cond_45
    nop

    .line 968
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to find a storage device for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 965
    :catch_5f
    move-exception p1

    .line 966
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public greylist getVolumeList()[Landroid/os/storage/StorageVolume;
    .registers 3

    .line 1429
    iget-object v0, p0, Landroid/os/storage/StorageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/storage/StorageManager;->getVolumeList(II)[Landroid/os/storage/StorageVolume;

    move-result-object v0

    return-object v0
.end method

.method public greylist getVolumePaths()[Ljava/lang/String;
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1464
    invoke-virtual {p0}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v0

    .line 1465
    array-length v1, v0

    .line 1466
    new-array v2, v1, [Ljava/lang/String;

    .line 1467
    const/4 v3, 0x0

    :goto_8
    if-ge v3, v1, :cond_15

    .line 1468
    aget-object v4, v0, v3

    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 1467
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 1470
    :cond_15
    return-object v2
.end method

.method public greylist-max-o getVolumeRecords()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/os/storage/VolumeRecord;",
            ">;"
        }
    .end annotation

    .line 1021
    :try_start_0
    iget-object v0, p0, Landroid/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/IStorageManager;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/os/storage/IStorageManager;->getVolumeRecords(I)[Landroid/os/storage/VolumeRecord;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    return-object v0

    .line 1022
    :catch_c
    move-exception v0

    .line 1023
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public greylist getVolumeState(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1326
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/os/storage/StorageManager;->getStorageVolume(Ljava/io/File;)Landroid/os/storage/StorageVolume;

    move-result-object p1

    .line 1327
    if-eqz p1, :cond_10

    .line 1328
    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->getState()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1330
    :cond_10
    const-string/jumbo p1, "unknown"

    return-object p1
.end method

.method public greylist getVolumes()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/os/storage/VolumeInfo;",
            ">;"
        }
    .end annotation

    .line 997
    :try_start_0
    iget-object v0, p0, Landroid/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/IStorageManager;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/os/storage/IStorageManager;->getVolumes(I)[Landroid/os/storage/VolumeInfo;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    return-object v0

    .line 998
    :catch_c
    move-exception v0

    .line 999
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public greylist-max-o getWritablePrivateVolumes()Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/os/storage/VolumeInfo;",
            ">;"
        }
    .end annotation

    .line 1006
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1007
    iget-object v1, p0, Landroid/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/IStorageManager;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/os/storage/IStorageManager;->getVolumes(I)[Landroid/os/storage/VolumeInfo;

    move-result-object v1

    array-length v3, v1

    :goto_d
    if-ge v2, v3, :cond_24

    aget-object v4, v1, v2

    .line 1008
    invoke-virtual {v4}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_21

    invoke-virtual {v4}, Landroid/os/storage/VolumeInfo;->isMountedWritable()Z

    move-result v5

    if-eqz v5, :cond_21

    .line 1009
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_21} :catch_25

    .line 1007
    :cond_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 1012
    :cond_24
    return-object v0

    .line 1013
    :catch_25
    move-exception v0

    .line 1014
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public whitelist isAllocationSupported(Ljava/io/FileDescriptor;)Z
    .registers 2

    .line 986
    :try_start_0
    invoke-static {p1}, Landroid/os/ParcelFileDescriptor;->getFile(Ljava/io/FileDescriptor;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/storage/StorageManager;->getUuidForPath(Ljava/io/File;)Ljava/util/UUID;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_7} :catch_9

    .line 987
    const/4 p1, 0x1

    return p1

    .line 988
    :catch_9
    move-exception p1

    .line 989
    const/4 p1, 0x0

    return p1
.end method

.method public blacklist isAppIoBlocked(Ljava/util/UUID;III)Z
    .registers 6

    .line 2888
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2890
    :try_start_3
    iget-object v0, p0, Landroid/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/IStorageManager;

    invoke-static {p1}, Landroid/os/storage/StorageManager;->convert(Ljava/util/UUID;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/os/storage/IStorageManager;->isAppIoBlocked(Ljava/lang/String;III)Z

    move-result p1
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_d} :catch_e

    return p1

    .line 2891
    :catch_e
    move-exception p1

    .line 2892
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist isCacheBehaviorGroup(Ljava/io/File;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2684
    const-string/jumbo v0, "user.cache_group"

    invoke-static {p1, v0}, Landroid/os/storage/StorageManager;->isCacheBehavior(Ljava/io/File;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public whitelist isCacheBehaviorTombstone(Ljava/io/File;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2712
    const-string/jumbo v0, "user.cache_tombstone"

    invoke-static {p1, v0}, Landroid/os/storage/StorageManager;->isCacheBehavior(Ljava/io/File;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public whitelist isCheckpointSupported()Z
    .registers 2

    .line 2783
    :try_start_0
    iget-object v0, p0, Landroid/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/IStorageManager;

    invoke-interface {v0}, Landroid/os/storage/IStorageManager;->supportsCheckpoint()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 2784
    :catch_7
    move-exception v0

    .line 2785
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public whitelist isEncrypted(Ljava/io/File;)Z
    .registers 3

    .line 1680
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/os/FileUtils;->contains(Ljava/io/File;Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1681
    invoke-static {}, Landroid/os/storage/StorageManager;->isEncrypted()Z

    move-result p1

    return p1

    .line 1682
    :cond_f
    invoke-static {}, Landroid/os/Environment;->getExpandDirectory()Ljava/io/File;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/os/FileUtils;->contains(Ljava/io/File;Ljava/io/File;)Z

    move-result p1

    if-eqz p1, :cond_1b

    .line 1683
    const/4 p1, 0x1

    return p1

    .line 1686
    :cond_1b
    const/4 p1, 0x0

    return p1
.end method

.method public whitelist isObbMounted(Ljava/lang/String;)Z
    .registers 3

    .line 810
    const-string/jumbo v0, "rawPath cannot be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 813
    :try_start_6
    iget-object v0, p0, Landroid/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/IStorageManager;

    invoke-interface {v0, p1}, Landroid/os/storage/IStorageManager;->isObbMounted(Ljava/lang/String;)Z

    move-result p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_d

    return p1

    .line 814
    :catch_d
    move-exception p1

    .line 815
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public greylist-max-r isUsbMassStorageConnected()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 680
    const/4 v0, 0x0

    return v0
.end method

.method public greylist isUsbMassStorageEnabled()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 692
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist lockCeStorage(I)V
    .registers 3

    .line 1645
    :try_start_0
    iget-object v0, p0, Landroid/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/IStorageManager;

    invoke-interface {v0, p1}, Landroid/os/storage/IStorageManager;->lockCeStorage(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1648
    nop

    .line 1649
    return-void

    .line 1646
    :catch_7
    move-exception p1

    .line 1647
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public greylist-max-o mkdirs(Ljava/io/File;)V
    .registers 4

    .line 1419
    invoke-static {}, Ldalvik/system/BlockGuard;->getVmPolicy()Ldalvik/system/BlockGuard$VmPolicy;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ldalvik/system/BlockGuard$VmPolicy;->onPathAccess(Ljava/lang/String;)V

    .line 1421
    :try_start_b
    iget-object v0, p0, Landroid/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/IStorageManager;

    iget-object v1, p0, Landroid/os/storage/StorageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Landroid/os/storage/IStorageManager;->mkdirs(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_1a} :catch_1c

    .line 1424
    nop

    .line 1425
    return-void

    .line 1422
    :catch_1c
    move-exception p1

    .line 1423
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public greylist-max-o mount(Ljava/lang/String;)V
    .registers 3

    .line 1066
    :try_start_0
    iget-object v0, p0, Landroid/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/IStorageManager;

    invoke-interface {v0, p1}, Landroid/os/storage/IStorageManager;->mount(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1069
    nop

    .line 1070
    return-void

    .line 1067
    :catch_7
    move-exception p1

    .line 1068
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist mountObb(Ljava/lang/String;Ljava/lang/String;Landroid/os/storage/OnObbStateChangeListener;)Z
    .registers 11

    .line 717
    const-string/jumbo v0, "rawPath cannot be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 718
    const/4 v0, 0x1

    if-nez p2, :cond_b

    move p2, v0

    goto :goto_c

    :cond_b
    const/4 p2, 0x0

    :goto_c
    const-string v1, "mounting encrypted OBBs is no longer supported"

    invoke-static {p2, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 719
    const-string p2, "listener cannot be null"

    invoke-static {p3, p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 722
    :try_start_16
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v3

    .line 723
    iget-object p2, p0, Landroid/os/storage/StorageManager;->mObbActionListener:Landroid/os/storage/StorageManager$ObbActionListener;

    invoke-virtual {p2, p3}, Landroid/os/storage/StorageManager$ObbActionListener;->addListener(Landroid/os/storage/OnObbStateChangeListener;)I

    move-result v5

    .line 724
    iget-object v1, p0, Landroid/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/IStorageManager;

    iget-object v4, p0, Landroid/os/storage/StorageManager;->mObbActionListener:Landroid/os/storage/StorageManager$ObbActionListener;

    .line 725
    invoke-direct {p0, v3}, Landroid/os/storage/StorageManager;->getObbInfo(Ljava/lang/String;)Landroid/content/res/ObbInfo;

    move-result-object v6
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_2d} :catch_3b
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_2d} :catch_34

    .line 724
    move-object v2, p1

    :try_start_2e
    invoke-interface/range {v1 .. v6}, Landroid/os/storage/IStorageManager;->mountObb(Ljava/lang/String;Ljava/lang/String;Landroid/os/storage/IObbActionListener;ILandroid/content/res/ObbInfo;)V
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_31} :catch_32
    .catch Landroid/os/RemoteException; {:try_start_2e .. :try_end_31} :catch_34

    .line 726
    return v0

    .line 727
    :catch_32
    move-exception v0

    goto :goto_3d

    .line 729
    :catch_34
    move-exception v0

    move-object p1, v0

    .line 730
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 727
    :catch_3b
    move-exception v0

    move-object v2, p1

    :goto_3d
    move-object p1, v0

    .line 728
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to resolve path: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public blacklist notifyAppIoBlocked(Ljava/util/UUID;III)V
    .registers 6
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 2839
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2841
    :try_start_3
    iget-object v0, p0, Landroid/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/IStorageManager;

    invoke-static {p1}, Landroid/os/storage/StorageManager;->convert(Ljava/util/UUID;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/os/storage/IStorageManager;->notifyAppIoBlocked(Ljava/lang/String;III)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_c} :catch_e

    .line 2844
    nop

    .line 2845
    return-void

    .line 2842
    :catch_e
    move-exception p1

    .line 2843
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist notifyAppIoResumed(Ljava/util/UUID;III)V
    .registers 6
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 2865
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2867
    :try_start_3
    iget-object v0, p0, Landroid/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/IStorageManager;

    invoke-static {p1}, Landroid/os/storage/StorageManager;->convert(Ljava/util/UUID;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/os/storage/IStorageManager;->notifyAppIoResumed(Ljava/lang/String;III)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_c} :catch_e

    .line 2870
    nop

    .line 2871
    return-void

    .line 2868
    :catch_e
    move-exception p1

    .line 2869
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public greylist-max-o openProxyFileDescriptor(ILandroid/os/ProxyFileDescriptorCallback;)Landroid/os/ParcelFileDescriptor;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1974
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v0}, Landroid/os/storage/StorageManager;->openProxyFileDescriptor(ILandroid/os/ProxyFileDescriptorCallback;Landroid/os/Handler;Ljava/util/concurrent/ThreadFactory;)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    return-object p1
.end method

.method public whitelist openProxyFileDescriptor(ILandroid/os/ProxyFileDescriptorCallback;Landroid/os/Handler;)Landroid/os/ParcelFileDescriptor;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2004
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2005
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/os/storage/StorageManager;->openProxyFileDescriptor(ILandroid/os/ProxyFileDescriptorCallback;Landroid/os/Handler;Ljava/util/concurrent/ThreadFactory;)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    return-object p1
.end method

.method public greylist-max-o openProxyFileDescriptor(ILandroid/os/ProxyFileDescriptorCallback;Landroid/os/Handler;Ljava/util/concurrent/ThreadFactory;)Landroid/os/ParcelFileDescriptor;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1923
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1924
    iget-object v0, p0, Landroid/os/storage/StorageManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "storage_open_proxy_file_descriptor"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1930
    :goto_c
    :try_start_c
    iget-object v0, p0, Landroid/os/storage/StorageManager;->mFuseAppLoopLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_f} :catch_75

    .line 1931
    nop

    .line 1932
    :try_start_10
    iget-object v1, p0, Landroid/os/storage/StorageManager;->mFuseAppLoop:Lcom/android/internal/os/FuseAppLoop;

    if-nez v1, :cond_31

    .line 1933
    iget-object v1, p0, Landroid/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/IStorageManager;

    invoke-interface {v1}, Landroid/os/storage/IStorageManager;->mountProxyFileDescriptorBridge()Lcom/android/internal/os/AppFuseMount;

    move-result-object v1

    .line 1934
    if-eqz v1, :cond_29

    .line 1937
    new-instance v3, Lcom/android/internal/os/FuseAppLoop;

    iget v4, v1, Lcom/android/internal/os/AppFuseMount;->mountPointId:I

    iget-object v1, v1, Lcom/android/internal/os/AppFuseMount;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-direct {v3, v4, v1, p4}, Lcom/android/internal/os/FuseAppLoop;-><init>(ILandroid/os/ParcelFileDescriptor;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v3, p0, Landroid/os/storage/StorageManager;->mFuseAppLoop:Lcom/android/internal/os/FuseAppLoop;

    .line 1938
    move v1, v2

    goto :goto_32

    .line 1935
    :cond_29
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Failed to mount proxy bridge"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1932
    :cond_31
    const/4 v1, 0x0

    .line 1940
    :goto_32
    if-nez p3, :cond_3d

    .line 1941
    new-instance p3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {p3, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V
    :try_end_3d
    .catchall {:try_start_10 .. :try_end_3d} :catchall_72

    .line 1944
    :cond_3d
    :try_start_3d
    iget-object v3, p0, Landroid/os/storage/StorageManager;->mFuseAppLoop:Lcom/android/internal/os/FuseAppLoop;

    invoke-virtual {v3, p2, p3}, Lcom/android/internal/os/FuseAppLoop;->registerCallback(Landroid/os/ProxyFileDescriptorCallback;Landroid/os/Handler;)I

    move-result v3

    .line 1945
    iget-object v4, p0, Landroid/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/IStorageManager;

    iget-object v5, p0, Landroid/os/storage/StorageManager;->mFuseAppLoop:Lcom/android/internal/os/FuseAppLoop;

    .line 1946
    invoke-virtual {v5}, Lcom/android/internal/os/FuseAppLoop;->getMountPointId()I

    move-result v5

    .line 1945
    invoke-interface {v4, v5, v3, p1}, Landroid/os/storage/IStorageManager;->openProxyFileDescriptor(III)Landroid/os/ParcelFileDescriptor;

    move-result-object v4
    :try_end_4f
    .catch Lcom/android/internal/os/FuseUnavailableMountException; {:try_start_3d .. :try_end_4f} :catch_64
    .catchall {:try_start_3d .. :try_end_4f} :catchall_72

    .line 1947
    if-eqz v4, :cond_53

    .line 1952
    :try_start_51
    monitor-exit v0
    :try_end_52
    .catchall {:try_start_51 .. :try_end_52} :catchall_72

    return-object v4

    .line 1948
    :cond_53
    :try_start_53
    iget-object v4, p0, Landroid/os/storage/StorageManager;->mFuseAppLoop:Lcom/android/internal/os/FuseAppLoop;

    invoke-virtual {v4, v3}, Lcom/android/internal/os/FuseAppLoop;->unregisterCallback(I)V

    .line 1949
    new-instance v3, Lcom/android/internal/os/FuseUnavailableMountException;

    iget-object v4, p0, Landroid/os/storage/StorageManager;->mFuseAppLoop:Lcom/android/internal/os/FuseAppLoop;

    .line 1950
    invoke-virtual {v4}, Lcom/android/internal/os/FuseAppLoop;->getMountPointId()I

    move-result v4

    invoke-direct {v3, v4}, Lcom/android/internal/os/FuseUnavailableMountException;-><init>(I)V

    throw v3
    :try_end_64
    .catch Lcom/android/internal/os/FuseUnavailableMountException; {:try_start_53 .. :try_end_64} :catch_64
    .catchall {:try_start_53 .. :try_end_64} :catchall_72

    .line 1953
    :catch_64
    move-exception v3

    .line 1956
    if-nez v1, :cond_6c

    .line 1959
    const/4 v1, 0x0

    :try_start_68
    iput-object v1, p0, Landroid/os/storage/StorageManager;->mFuseAppLoop:Lcom/android/internal/os/FuseAppLoop;

    .line 1960
    monitor-exit v0

    goto :goto_c

    .line 1957
    :cond_6c
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 1962
    :catchall_72
    move-exception p1

    monitor-exit v0
    :try_end_74
    .catchall {:try_start_68 .. :try_end_74} :catchall_72

    :try_start_74
    throw p1
    :try_end_75
    .catch Landroid/os/RemoteException; {:try_start_74 .. :try_end_75} :catch_75

    .line 1963
    :catch_75
    move-exception p1

    .line 1965
    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public greylist-max-o partitionMixed(Ljava/lang/String;I)V
    .registers 4

    .line 1146
    :try_start_0
    iget-object v0, p0, Landroid/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/IStorageManager;

    invoke-interface {v0, p1, p2}, Landroid/os/storage/IStorageManager;->partitionMixed(Ljava/lang/String;I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1149
    nop

    .line 1150
    return-void

    .line 1147
    :catch_7
    move-exception p1

    .line 1148
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public greylist-max-o partitionPrivate(Ljava/lang/String;)V
    .registers 3

    .line 1137
    :try_start_0
    iget-object v0, p0, Landroid/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/IStorageManager;

    invoke-interface {v0, p1}, Landroid/os/storage/IStorageManager;->partitionPrivate(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1140
    nop

    .line 1141
    return-void

    .line 1138
    :catch_7
    move-exception p1

    .line 1139
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public greylist-max-r partitionPublic(Ljava/lang/String;)V
    .registers 3

    .line 1128
    :try_start_0
    iget-object v0, p0, Landroid/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/IStorageManager;

    invoke-interface {v0, p1}, Landroid/os/storage/IStorageManager;->partitionPublic(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1131
    nop

    .line 1132
    return-void

    .line 1129
    :catch_7
    move-exception p1

    .line 1130
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public greylist registerListener(Landroid/os/storage/StorageEventListener;)V
    .registers 6

    .line 545
    iget-object v0, p0, Landroid/os/storage/StorageManager;->mDelegates:Ljava/util/ArrayList;

    monitor-enter v0

    .line 546
    :try_start_3
    new-instance v1, Landroid/os/storage/StorageManager$StorageEventListenerDelegate;

    iget-object v2, p0, Landroid/os/storage/StorageManager;->mContext:Landroid/content/Context;

    .line 547
    invoke-virtual {v2}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v3, Landroid/os/storage/StorageManager$StorageVolumeCallback;

    invoke-direct {v3}, Landroid/os/storage/StorageManager$StorageVolumeCallback;-><init>()V

    invoke-direct {v1, p0, v2, p1, v3}, Landroid/os/storage/StorageManager$StorageEventListenerDelegate;-><init>(Landroid/os/storage/StorageManager;Ljava/util/concurrent/Executor;Landroid/os/storage/StorageEventListener;Landroid/os/storage/StorageManager$StorageVolumeCallback;)V
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_26

    .line 549
    :try_start_13
    iget-object p1, p0, Landroid/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/IStorageManager;

    invoke-interface {p1, v1}, Landroid/os/storage/IStorageManager;->registerListener(Landroid/os/storage/IStorageEventListener;)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_18} :catch_20
    .catchall {:try_start_13 .. :try_end_18} :catchall_26

    .line 552
    nop

    .line 553
    :try_start_19
    iget-object p1, p0, Landroid/os/storage/StorageManager;->mDelegates:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 554
    monitor-exit v0

    .line 555
    return-void

    .line 550
    :catch_20
    move-exception p1

    .line 551
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 554
    :catchall_26
    move-exception p1

    monitor-exit v0
    :try_end_28
    .catchall {:try_start_19 .. :try_end_28} :catchall_26

    throw p1
.end method

.method public whitelist registerStorageVolumeCallback(Ljava/util/concurrent/Executor;Landroid/os/storage/StorageManager$StorageVolumeCallback;)V
    .registers 6

    .line 617
    iget-object v0, p0, Landroid/os/storage/StorageManager;->mDelegates:Ljava/util/ArrayList;

    monitor-enter v0

    .line 618
    :try_start_3
    new-instance v1, Landroid/os/storage/StorageManager$StorageEventListenerDelegate;

    new-instance v2, Landroid/os/storage/StorageEventListener;

    invoke-direct {v2}, Landroid/os/storage/StorageEventListener;-><init>()V

    invoke-direct {v1, p0, p1, v2, p2}, Landroid/os/storage/StorageManager$StorageEventListenerDelegate;-><init>(Landroid/os/storage/StorageManager;Ljava/util/concurrent/Executor;Landroid/os/storage/StorageEventListener;Landroid/os/storage/StorageManager$StorageVolumeCallback;)V
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_20

    .line 621
    :try_start_d
    iget-object p1, p0, Landroid/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/IStorageManager;

    invoke-interface {p1, v1}, Landroid/os/storage/IStorageManager;->registerListener(Landroid/os/storage/IStorageEventListener;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_12} :catch_1a
    .catchall {:try_start_d .. :try_end_12} :catchall_20

    .line 624
    nop

    .line 625
    :try_start_13
    iget-object p1, p0, Landroid/os/storage/StorageManager;->mDelegates:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 626
    monitor-exit v0

    .line 627
    return-void

    .line 622
    :catch_1a
    move-exception p1

    .line 623
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 626
    :catchall_20
    move-exception p1

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_13 .. :try_end_22} :catchall_20

    throw p1
.end method

.method public whitelist setCacheBehaviorGroup(Ljava/io/File;Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2676
    const-string/jumbo v0, "user.cache_group"

    invoke-static {p1, v0, p2}, Landroid/os/storage/StorageManager;->setCacheBehavior(Ljava/io/File;Ljava/lang/String;Z)V

    .line 2677
    return-void
.end method

.method public whitelist setCacheBehaviorTombstone(Ljava/io/File;Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2704
    const-string/jumbo v0, "user.cache_tombstone"

    invoke-static {p1, v0, p2}, Landroid/os/storage/StorageManager;->setCacheBehavior(Ljava/io/File;Ljava/lang/String;Z)V

    .line 2705
    return-void
.end method

.method public blacklist setCloudMediaProvider(Ljava/lang/String;)V
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 2908
    :try_start_0
    iget-object v0, p0, Landroid/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/IStorageManager;

    invoke-interface {v0, p1}, Landroid/os/storage/IStorageManager;->setCloudMediaProvider(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 2911
    nop

    .line 2912
    return-void

    .line 2909
    :catch_7
    move-exception p1

    .line 2910
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public greylist-max-o setPrimaryStorageUuid(Ljava/lang/String;Landroid/content/pm/IPackageMoveObserver;)V
    .registers 4

    .line 1236
    :try_start_0
    iget-object v0, p0, Landroid/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/IStorageManager;

    invoke-interface {v0, p1, p2}, Landroid/os/storage/IStorageManager;->setPrimaryStorageUuid(Ljava/lang/String;Landroid/content/pm/IPackageMoveObserver;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1239
    nop

    .line 1240
    return-void

    .line 1237
    :catch_7
    move-exception p1

    .line 1238
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public greylist-max-o setVolumeInited(Ljava/lang/String;Z)V
    .registers 5

    .line 1188
    :try_start_0
    iget-object v0, p0, Landroid/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/IStorageManager;

    const/4 v1, 0x1

    if-eqz p2, :cond_7

    move p2, v1

    goto :goto_8

    :cond_7
    const/4 p2, 0x0

    :goto_8
    invoke-interface {v0, p1, p2, v1}, Landroid/os/storage/IStorageManager;->setVolumeUserFlags(Ljava/lang/String;II)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_d

    .line 1192
    nop

    .line 1193
    return-void

    .line 1190
    :catch_d
    move-exception p1

    .line 1191
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public greylist-max-o setVolumeNickname(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 1179
    :try_start_0
    iget-object v0, p0, Landroid/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/IStorageManager;

    invoke-interface {v0, p1, p2}, Landroid/os/storage/IStorageManager;->setVolumeNickname(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1182
    nop

    .line 1183
    return-void

    .line 1180
    :catch_7
    move-exception p1

    .line 1181
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public greylist-max-o setVolumeSnoozed(Ljava/lang/String;Z)V
    .registers 5

    .line 1198
    :try_start_0
    iget-object v0, p0, Landroid/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/IStorageManager;

    const/4 v1, 0x2

    if-eqz p2, :cond_7

    move p2, v1

    goto :goto_8

    :cond_7
    const/4 p2, 0x0

    :goto_8
    invoke-interface {v0, p1, p2, v1}, Landroid/os/storage/IStorageManager;->setVolumeUserFlags(Ljava/lang/String;II)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_d

    .line 1202
    nop

    .line 1203
    return-void

    .line 1200
    :catch_d
    move-exception p1

    .line 1201
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist translateAppToSystem(Ljava/io/File;II)Ljava/io/File;
    .registers 4

    .line 1756
    return-object p1
.end method

.method public blacklist translateSystemToApp(Ljava/io/File;II)Ljava/io/File;
    .registers 4

    .line 1766
    return-object p1
.end method

.method public greylist unmount(Ljava/lang/String;)V
    .registers 3

    .line 1076
    :try_start_0
    iget-object v0, p0, Landroid/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/IStorageManager;

    invoke-interface {v0, p1}, Landroid/os/storage/IStorageManager;->unmount(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1079
    nop

    .line 1080
    return-void

    .line 1077
    :catch_7
    move-exception p1

    .line 1078
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist unmountObb(Ljava/lang/String;ZLandroid/os/storage/OnObbStateChangeListener;)Z
    .registers 6

    .line 791
    const-string/jumbo v0, "rawPath cannot be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 792
    const-string v0, "listener cannot be null"

    invoke-static {p3, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 795
    :try_start_b
    iget-object v0, p0, Landroid/os/storage/StorageManager;->mObbActionListener:Landroid/os/storage/StorageManager$ObbActionListener;

    invoke-virtual {v0, p3}, Landroid/os/storage/StorageManager$ObbActionListener;->addListener(Landroid/os/storage/OnObbStateChangeListener;)I

    move-result p3

    .line 796
    iget-object v0, p0, Landroid/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/IStorageManager;

    iget-object v1, p0, Landroid/os/storage/StorageManager;->mObbActionListener:Landroid/os/storage/StorageManager$ObbActionListener;

    invoke-interface {v0, p1, p2, v1, p3}, Landroid/os/storage/IStorageManager;->unmountObb(Ljava/lang/String;ZLandroid/os/storage/IObbActionListener;I)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_18} :catch_1a

    .line 797
    const/4 p1, 0x1

    return p1

    .line 798
    :catch_1a
    move-exception p1

    .line 799
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public greylist unregisterListener(Landroid/os/storage/StorageEventListener;)V
    .registers 6

    .line 566
    iget-object v0, p0, Landroid/os/storage/StorageManager;->mDelegates:Ljava/util/ArrayList;

    monitor-enter v0

    .line 567
    :try_start_3
    iget-object v1, p0, Landroid/os/storage/StorageManager;->mDelegates:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 568
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/StorageManager$StorageEventListenerDelegate;

    .line 569
    iget-object v3, v2, Landroid/os/storage/StorageManager$StorageEventListenerDelegate;->mListener:Landroid/os/storage/StorageEventListener;
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_2c

    if-ne v3, p1, :cond_29

    .line 571
    :try_start_19
    iget-object v3, p0, Landroid/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/IStorageManager;

    invoke-interface {v3, v2}, Landroid/os/storage/IStorageManager;->unregisterListener(Landroid/os/storage/IStorageEventListener;)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_1e} :catch_23
    .catchall {:try_start_19 .. :try_end_1e} :catchall_2c

    .line 574
    nop

    .line 575
    :try_start_1f
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_29

    .line 572
    :catch_23
    move-exception p1

    .line 573
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 577
    :cond_29
    :goto_29
    goto :goto_9

    .line 578
    :cond_2a
    monitor-exit v0

    .line 579
    return-void

    .line 578
    :catchall_2c
    move-exception p1

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_1f .. :try_end_2e} :catchall_2c

    throw p1
.end method

.method public whitelist unregisterStorageVolumeCallback(Landroid/os/storage/StorageManager$StorageVolumeCallback;)V
    .registers 6

    .line 636
    iget-object v0, p0, Landroid/os/storage/StorageManager;->mDelegates:Ljava/util/ArrayList;

    monitor-enter v0

    .line 637
    :try_start_3
    iget-object v1, p0, Landroid/os/storage/StorageManager;->mDelegates:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 638
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/StorageManager$StorageEventListenerDelegate;

    .line 639
    iget-object v3, v2, Landroid/os/storage/StorageManager$StorageEventListenerDelegate;->mCallback:Landroid/os/storage/StorageManager$StorageVolumeCallback;
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_2c

    if-ne v3, p1, :cond_29

    .line 641
    :try_start_19
    iget-object v3, p0, Landroid/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/IStorageManager;

    invoke-interface {v3, v2}, Landroid/os/storage/IStorageManager;->unregisterListener(Landroid/os/storage/IStorageEventListener;)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_1e} :catch_23
    .catchall {:try_start_19 .. :try_end_1e} :catchall_2c

    .line 644
    nop

    .line 645
    :try_start_1f
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_29

    .line 642
    :catch_23
    move-exception p1

    .line 643
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 647
    :cond_29
    :goto_29
    goto :goto_9

    .line 648
    :cond_2a
    monitor-exit v0

    .line 649
    return-void

    .line 648
    :catchall_2c
    move-exception p1

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_1f .. :try_end_2e} :catchall_2c

    throw p1
.end method

.method public whitelist updateExternalStorageFileQuotaType(Ljava/io/File;I)V
    .registers 7
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2538
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 2541
    :cond_7
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    .line 2544
    sget-object v1, Landroid/os/storage/StorageManager;->PATTERN_USER_ID:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 2545
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    const-string v3, "Failed to update quota type for "

    if-eqz v2, :cond_23

    .line 2546
    const/4 p1, 0x1

    invoke-virtual {v1, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    goto :goto_69

    .line 2548
    :cond_23
    nop

    .line 2551
    iget-object v1, p0, Landroid/os/storage/StorageManager;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.MANAGE_EXTERNAL_STORAGE"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_31

    .line 2552
    const/16 v1, 0x1600

    goto :goto_33

    .line 2551
    :cond_31
    const/16 v1, 0x600

    .line 2554
    :goto_33
    iget-object v2, p0, Landroid/os/storage/StorageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    invoke-static {v2, v1}, Landroid/os/storage/StorageManager;->getVolumeList(II)[Landroid/os/storage/StorageVolume;

    move-result-object v1

    .line 2555
    invoke-static {v1, p1}, Landroid/os/storage/StorageManager;->getStorageVolume([Landroid/os/storage/StorageVolume;Ljava/io/File;)Landroid/os/storage/StorageVolume;

    move-result-object p1

    .line 2556
    if-nez p1, :cond_5a

    .line 2557
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "StorageManager"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2558
    return-void

    .line 2560
    :cond_5a
    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->isEmulated()Z

    move-result v1

    if-nez v1, :cond_61

    .line 2562
    return-void

    .line 2564
    :cond_61
    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->getOwner()Landroid/os/UserHandle;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    .line 2567
    :goto_69
    if-ltz p1, :cond_c1

    .line 2570
    packed-switch p2, :pswitch_data_d8

    .line 2584
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid quota type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2578
    :pswitch_87
    const/16 p2, 0x3ea

    invoke-static {p1, p2}, Landroid/os/storage/StorageManager;->getProjectIdForUser(II)J

    move-result-wide p1

    .line 2579
    goto :goto_a3

    .line 2575
    :pswitch_8e
    const/16 p2, 0x3e9

    invoke-static {p1, p2}, Landroid/os/storage/StorageManager;->getProjectIdForUser(II)J

    move-result-wide p1

    .line 2576
    goto :goto_a3

    .line 2581
    :pswitch_95
    const/16 p2, 0x3eb

    invoke-static {p1, p2}, Landroid/os/storage/StorageManager;->getProjectIdForUser(II)J

    move-result-wide p1

    .line 2582
    goto :goto_a3

    .line 2572
    :pswitch_9c
    const/16 p2, 0x3e8

    invoke-static {p1, p2}, Landroid/os/storage/StorageManager;->getProjectIdForUser(II)J

    move-result-wide p1

    .line 2573
    nop

    .line 2586
    :goto_a3
    invoke-static {v0, p1, p2}, Landroid/os/storage/StorageManager;->setQuotaProjectId(Ljava/lang/String;J)Z

    move-result p1

    if-eqz p1, :cond_aa

    .line 2589
    return-void

    .line 2587
    :cond_aa
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2568
    :cond_c1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_data_d8
    .packed-switch 0x0
        :pswitch_9c
        :pswitch_95
        :pswitch_8e
        :pswitch_87
    .end packed-switch
.end method

.method public greylist-max-o wipeAdoptableDisks()V
    .registers 7

    .line 1158
    invoke-virtual {p0}, Landroid/os/storage/StorageManager;->getDisks()Ljava/util/List;

    move-result-object v0

    .line 1159
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/DiskInfo;

    .line 1160
    invoke-virtual {v1}, Landroid/os/storage/DiskInfo;->getId()Ljava/lang/String;

    move-result-object v2

    .line 1161
    invoke-virtual {v1}, Landroid/os/storage/DiskInfo;->isAdoptable()Z

    move-result v3

    const-string v4, "StorageManager"

    if-eqz v3, :cond_60

    .line 1162
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Found adoptable "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "; wiping"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1166
    :try_start_3c
    iget-object v1, p0, Landroid/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/IStorageManager;

    invoke-interface {v1, v2}, Landroid/os/storage/IStorageManager;->partitionPublic(Ljava/lang/String;)V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_41} :catch_42

    goto :goto_5f

    .line 1167
    :catch_42
    move-exception v1

    .line 1168
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to wipe "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", but soldiering onward"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1169
    :goto_5f
    goto :goto_7a

    .line 1171
    :cond_60
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignorning non-adoptable disk "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/os/storage/DiskInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1173
    :goto_7a
    goto :goto_8

    .line 1174
    :cond_7b
    return-void
.end method
