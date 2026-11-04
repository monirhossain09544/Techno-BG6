.class public Landroid/mtp/MtpDatabase;
.super Ljava/lang/Object;
.source "MtpDatabase.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# static fields
.field private static final greylist-max-o AUDIO_PROPERTIES:[I

.field private static final greylist-max-o DEVICE_PROPERTIES:[I

.field private static final greylist-max-o FILE_PROPERTIES:[I

.field private static final greylist-max-o IMAGE_PROPERTIES:[I

.field private static final blacklist MAX_THUMB_SIZE:I = 0x32000

.field private static final greylist-max-o NO_MEDIA:Ljava/lang/String; = ".nomedia"

.field private static final greylist-max-o PATH_WHERE:Ljava/lang/String; = "_data=?"

.field private static final greylist-max-o PLAYBACK_FORMATS:[I

.field private static final greylist-max-o TAG:Ljava/lang/String;

.field private static final greylist-max-o VIDEO_PROPERTIES:[I


# instance fields
.field private greylist-max-o mBatteryLevel:I

.field private greylist-max-o mBatteryReceiver:Landroid/content/BroadcastReceiver;

.field private greylist-max-o mBatteryScale:I

.field private final greylist-max-o mCloseGuard:Ldalvik/system/CloseGuard;

.field private final greylist-max-o mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final greylist-max-o mContext:Landroid/content/Context;

.field private greylist-max-o mDeviceProperties:Landroid/content/SharedPreferences;

.field private greylist-max-o mDeviceType:I

.field private volatile blacklist mHostIsWindows:Z

.field private blacklist mHostType:Ljava/lang/String;

.field private greylist-max-o mManager:Landroid/mtp/MtpStorageManager;

.field private final greylist-max-o mMediaProvider:Landroid/content/ContentProviderClient;

.field private greylist-max-o mNativeContext:J

.field private final blacklist mPropertyGroupsByFormat:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/mtp/MtpPropertyGroup;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mPropertyGroupsByProperty:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/mtp/MtpPropertyGroup;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mServer:Landroid/mtp/MtpServer;

.field private blacklist mSkipThumbForHost:Z

.field private final greylist-max-o mStorageMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/mtp/MtpStorage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$I8VeYPyD-kH2DopPIkeUIdtMAPg(Landroid/mtp/MtpDatabase;)Ljava/lang/Boolean;
    .registers 1

    invoke-direct {p0}, Landroid/mtp/MtpDatabase;->lambda$addStorage$0()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmBatteryLevel(Landroid/mtp/MtpDatabase;)I
    .registers 1

    iget p0, p0, Landroid/mtp/MtpDatabase;->mBatteryLevel:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmServer(Landroid/mtp/MtpDatabase;)Landroid/mtp/MtpServer;
    .registers 1

    iget-object p0, p0, Landroid/mtp/MtpDatabase;->mServer:Landroid/mtp/MtpServer;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmBatteryLevel(Landroid/mtp/MtpDatabase;I)V
    .registers 2

    iput p1, p0, Landroid/mtp/MtpDatabase;->mBatteryLevel:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmBatteryScale(Landroid/mtp/MtpDatabase;I)V
    .registers 2

    iput p1, p0, Landroid/mtp/MtpDatabase;->mBatteryScale:I

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 4

    .line 80
    const-class v0, Landroid/mtp/MtpDatabase;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/mtp/MtpDatabase;->TAG:Ljava/lang/String;

    .line 115
    const-string v0, "media_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 118
    const/16 v0, 0x1c

    new-array v0, v0, [I

    fill-array-data v0, :array_4a

    sput-object v0, Landroid/mtp/MtpDatabase;->PLAYBACK_FORMATS:[I

    .line 151
    const/16 v0, 0xb

    new-array v0, v0, [I

    fill-array-data v0, :array_86

    sput-object v0, Landroid/mtp/MtpDatabase;->FILE_PROPERTIES:[I

    .line 165
    const/16 v0, 0xd

    new-array v0, v0, [I

    fill-array-data v0, :array_a0

    sput-object v0, Landroid/mtp/MtpDatabase;->AUDIO_PROPERTIES:[I

    .line 181
    const v0, 0xdc46

    const v1, 0xdc9a

    const v2, 0xdc89

    const v3, 0xdc48

    filled-new-array {v0, v1, v2, v3}, [I

    move-result-object v0

    sput-object v0, Landroid/mtp/MtpDatabase;->VIDEO_PROPERTIES:[I

    .line 188
    filled-new-array {v3}, [I

    move-result-object v0

    sput-object v0, Landroid/mtp/MtpDatabase;->IMAGE_PROPERTIES:[I

    .line 192
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_be

    sput-object v0, Landroid/mtp/MtpDatabase;->DEVICE_PROPERTIES:[I

    return-void

    nop

    :array_4a
    .array-data 4
        0x3000
        0x3001
        0x3004
        0x3005
        0x3008
        0x3009
        0x300b
        0x3801
        0x3802
        0x3804
        0x3807
        0x3808
        0x380b
        0x380d
        0xb901
        0xb902
        0xb903
        0xb982
        0xb983
        0xb984
        0xba05
        0xba10
        0xba11
        0xba14
        0xba82
        0xb906
        0x3811
        0x3812
    .end array-data

    :array_86
    .array-data 4
        0xdc01
        0xdc02
        0xdc03
        0xdc04
        0xdc07
        0xdc09
        0xdc41
        0xdc0b
        0xdc44
        0xdce0
        0xdc4e
    .end array-data

    :array_a0
    .array-data 4
        0xdc46
        0xdc9a
        0xdc9b
        0xdc8b
        0xdc99
        0xdc89
        0xdc8c
        0xdc96
        0xde99
        0xde92
        0xde9a
        0xde94
        0xde93
    .end array-data

    :array_be
    .array-data 4
        0xd401
        0xd402
        0x5003
        0x5001
        0xd407
        0xd406
    .end array-data
.end method

.method public constructor blacklist <init>(Landroid/content/Context;[Ljava/lang/String;)V
    .registers 6

    .line 288
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Landroid/mtp/MtpDatabase;->mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 87
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/mtp/MtpDatabase;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 89
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/mtp/MtpDatabase;->mStorageMap:Ljava/util/HashMap;

    .line 92
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/mtp/MtpDatabase;->mPropertyGroupsByProperty:Landroid/util/SparseArray;

    .line 95
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/mtp/MtpDatabase;->mPropertyGroupsByFormat:Landroid/util/SparseArray;

    .line 105
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/mtp/MtpDatabase;->mSkipThumbForHost:Z

    .line 106
    iput-boolean v0, p0, Landroid/mtp/MtpDatabase;->mHostIsWindows:Z

    .line 269
    new-instance v1, Landroid/mtp/MtpDatabase$1;

    invoke-direct {v1, p0}, Landroid/mtp/MtpDatabase$1;-><init>(Landroid/mtp/MtpDatabase;)V

    iput-object v1, p0, Landroid/mtp/MtpDatabase;->mBatteryReceiver:Landroid/content/BroadcastReceiver;

    .line 289
    invoke-direct {p0}, Landroid/mtp/MtpDatabase;->native_setup()V

    .line 290
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    iput-object v1, p0, Landroid/mtp/MtpDatabase;->mContext:Landroid/content/Context;

    .line 291
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 292
    const-string v2, "media"

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->acquireContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object v1

    iput-object v1, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/ContentProviderClient;

    .line 293
    new-instance v1, Landroid/mtp/MtpStorageManager;

    new-instance v2, Landroid/mtp/MtpDatabase$2;

    invoke-direct {v2, p0}, Landroid/mtp/MtpDatabase$2;-><init>(Landroid/mtp/MtpDatabase;)V

    .line 311
    if-nez p2, :cond_53

    const/4 p2, 0x0

    goto :goto_57

    :cond_53
    invoke-static {p2}, Lcom/google/android/collect/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object p2

    :goto_57
    invoke-direct {v1, v2, p2}, Landroid/mtp/MtpStorageManager;-><init>(Landroid/mtp/MtpStorageManager$MtpNotifier;Ljava/util/Set;)V

    iput-object v1, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    .line 313
    invoke-direct {p0, p1}, Landroid/mtp/MtpDatabase;->initDeviceProperties(Landroid/content/Context;)V

    .line 314
    const-string/jumbo p1, "sys.usb.mtp.device_type"

    invoke-static {p1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Landroid/mtp/MtpDatabase;->mDeviceType:I

    .line 315
    iget-object p1, p0, Landroid/mtp/MtpDatabase;->mCloseGuard:Ldalvik/system/CloseGuard;

    const-string p2, "close"

    invoke-virtual {p1, p2}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 316
    return-void
.end method

.method private greylist-max-o beginCopyObject(III)I
    .registers 5

    .line 635
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {v0, p1}, Landroid/mtp/MtpStorageManager;->getObject(I)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object p1

    .line 636
    if-nez p2, :cond_f

    .line 637
    iget-object p2, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {p2, p3}, Landroid/mtp/MtpStorageManager;->getStorageRoot(I)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object p2

    goto :goto_15

    :cond_f
    iget-object p3, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {p3, p2}, Landroid/mtp/MtpStorageManager;->getObject(I)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object p2

    .line 638
    :goto_15
    if-eqz p1, :cond_21

    if-nez p2, :cond_1a

    goto :goto_21

    .line 640
    :cond_1a
    iget-object p3, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {p3, p1, p2}, Landroid/mtp/MtpStorageManager;->beginCopyObject(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpObject;)I

    move-result p1

    return p1

    .line 639
    :cond_21
    :goto_21
    const/16 p1, 0x2009

    return p1
.end method

.method private greylist-max-o beginDeleteObject(I)I
    .registers 3

    .line 942
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {v0, p1}, Landroid/mtp/MtpStorageManager;->getObject(I)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object p1

    .line 943
    if-nez p1, :cond_b

    .line 944
    const/16 p1, 0x2009

    return p1

    .line 946
    :cond_b
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {v0, p1}, Landroid/mtp/MtpStorageManager;->beginRemoveObject(Landroid/mtp/MtpStorageManager$MtpObject;)Z

    move-result p1

    if-nez p1, :cond_16

    .line 947
    const/16 p1, 0x2002

    return p1

    .line 949
    :cond_16
    const/16 p1, 0x2001

    return p1
.end method

.method private greylist-max-o beginMoveObject(III)I
    .registers 5

    .line 598
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {v0, p1}, Landroid/mtp/MtpStorageManager;->getObject(I)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object p1

    .line 599
    if-nez p2, :cond_f

    .line 600
    iget-object p2, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {p2, p3}, Landroid/mtp/MtpStorageManager;->getStorageRoot(I)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object p2

    goto :goto_15

    :cond_f
    iget-object p3, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {p3, p2}, Landroid/mtp/MtpStorageManager;->getObject(I)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object p2

    .line 601
    :goto_15
    if-eqz p1, :cond_28

    if-nez p2, :cond_1a

    goto :goto_28

    .line 604
    :cond_1a
    iget-object p3, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {p3, p1, p2}, Landroid/mtp/MtpStorageManager;->beginMoveObject(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpObject;)Z

    move-result p1

    .line 605
    if-eqz p1, :cond_25

    const/16 p1, 0x2001

    goto :goto_27

    :cond_25
    const/16 p1, 0x2002

    :goto_27
    return p1

    .line 602
    :cond_28
    :goto_28
    const/16 p1, 0x2009

    return p1
.end method

.method private blacklist deleteFromMedia(Landroid/mtp/MtpStorageManager$MtpObject;Ljava/nio/file/Path;Z)V
    .registers 9

    .line 965
    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->getVolumeName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 968
    if-eqz p3, :cond_50

    .line 970
    :try_start_a
    iget-object p3, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/ContentProviderClient;

    const-string v0, "_data LIKE ?1 AND lower(substr(_data,1,?2))=lower(?3)"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 974
    invoke-interface {p2}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 975
    invoke-interface {p2}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    .line 970
    invoke-virtual {p3, p1, v0, v1}, Landroid/content/ContentProviderClient;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_50

    .line 983
    :catch_4e
    move-exception p1

    goto :goto_84

    .line 978
    :cond_50
    :goto_50
    invoke-interface {p2}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object p3

    filled-new-array {p3}, [Ljava/lang/String;

    move-result-object p3

    .line 979
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/ContentProviderClient;

    const-string v1, "_data=?"

    invoke-virtual {v0, p1, v1, p3}, Landroid/content/ContentProviderClient;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_7a

    .line 980
    sget-object p1, Landroid/mtp/MtpDatabase;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "MediaProvider didn\'t delete "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 982
    :cond_7a
    iget-object p1, p0, Landroid/mtp/MtpDatabase;->mContext:Landroid/content/Context;

    invoke-interface {p2}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object p3

    invoke-static {p1, p3}, Landroid/mtp/MtpDatabase;->updateMediaStore(Landroid/content/Context;Ljava/io/File;)V
    :try_end_83
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_83} :catch_4e

    .line 985
    goto :goto_a2

    .line 984
    :goto_84
    sget-object p1, Landroid/mtp/MtpDatabase;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to delete "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " from MediaProvider"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 986
    :goto_a2
    return-void
.end method

.method private greylist-max-o endCopyObject(IZ)V
    .registers 4

    .line 645
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {v0, p1}, Landroid/mtp/MtpStorageManager;->getObject(I)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object p1

    .line 646
    if-eqz p1, :cond_22

    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {v0, p1, p2}, Landroid/mtp/MtpStorageManager;->endCopyObject(Landroid/mtp/MtpStorageManager$MtpObject;Z)Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_22

    .line 650
    :cond_11
    if-nez p2, :cond_14

    .line 651
    return-void

    .line 654
    :cond_14
    iget-object p2, p0, Landroid/mtp/MtpDatabase;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->getPath()Ljava/nio/file/Path;

    move-result-object p1

    invoke-interface {p1}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/mtp/MtpDatabase;->updateMediaStore(Landroid/content/Context;Ljava/io/File;)V

    .line 655
    return-void

    .line 647
    :cond_22
    :goto_22
    sget-object p1, Landroid/mtp/MtpDatabase;->TAG:Ljava/lang/String;

    const-string p2, "Failed to end copy object"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    return-void
.end method

.method private greylist-max-o endDeleteObject(IZ)V
    .registers 5

    .line 954
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {v0, p1}, Landroid/mtp/MtpStorageManager;->getObject(I)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object p1

    .line 955
    if-nez p1, :cond_9

    .line 956
    return-void

    .line 958
    :cond_9
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {v0, p1, p2}, Landroid/mtp/MtpStorageManager;->endRemoveObject(Landroid/mtp/MtpStorageManager$MtpObject;Z)Z

    move-result v0

    if-nez v0, :cond_18

    .line 959
    sget-object v0, Landroid/mtp/MtpDatabase;->TAG:Ljava/lang/String;

    const-string v1, "Failed to end remove object"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 960
    :cond_18
    if-eqz p2, :cond_25

    .line 961
    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->getPath()Ljava/nio/file/Path;

    move-result-object p2

    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->isDir()Z

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Landroid/mtp/MtpDatabase;->deleteFromMedia(Landroid/mtp/MtpStorageManager$MtpObject;Ljava/nio/file/Path;Z)V

    .line 962
    :cond_25
    return-void
.end method

.method private greylist-max-o endMoveObject(IIIIIZ)V
    .registers 7

    .line 611
    if-nez p1, :cond_9

    .line 612
    iget-object p1, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {p1, p3}, Landroid/mtp/MtpStorageManager;->getStorageRoot(I)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object p1

    goto :goto_f

    :cond_9
    iget-object p3, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {p3, p1}, Landroid/mtp/MtpStorageManager;->getObject(I)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object p1

    .line 613
    :goto_f
    if-nez p2, :cond_18

    .line 614
    iget-object p2, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {p2, p4}, Landroid/mtp/MtpStorageManager;->getStorageRoot(I)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object p2

    goto :goto_1e

    :cond_18
    iget-object p3, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {p3, p2}, Landroid/mtp/MtpStorageManager;->getObject(I)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object p2

    .line 615
    :goto_1e
    iget-object p3, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {p3, p5}, Landroid/mtp/MtpStorageManager;->getObject(I)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object p3

    .line 616
    invoke-virtual {p3}, Landroid/mtp/MtpStorageManager$MtpObject;->getName()Ljava/lang/String;

    move-result-object p3

    .line 617
    if-eqz p2, :cond_64

    if-eqz p1, :cond_64

    iget-object p4, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    .line 618
    invoke-virtual {p4, p1, p2, p3, p6}, Landroid/mtp/MtpStorageManager;->endMoveObject(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpObject;Ljava/lang/String;Z)Z

    move-result p4

    if-nez p4, :cond_35

    goto :goto_64

    .line 622
    :cond_35
    iget-object p4, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {p4, p5}, Landroid/mtp/MtpStorageManager;->getObject(I)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object p4

    .line 623
    if-eqz p6, :cond_63

    if-nez p4, :cond_40

    goto :goto_63

    .line 626
    :cond_40
    invoke-virtual {p2}, Landroid/mtp/MtpStorageManager$MtpObject;->getPath()Ljava/nio/file/Path;

    move-result-object p2

    invoke-interface {p2, p3}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p2

    .line 627
    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->getPath()Ljava/nio/file/Path;

    move-result-object p1

    invoke-interface {p1, p3}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p1

    .line 629
    iget-object p3, p0, Landroid/mtp/MtpDatabase;->mContext:Landroid/content/Context;

    invoke-interface {p1}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/mtp/MtpDatabase;->updateMediaStore(Landroid/content/Context;Ljava/io/File;)V

    .line 630
    iget-object p1, p0, Landroid/mtp/MtpDatabase;->mContext:Landroid/content/Context;

    invoke-interface {p2}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/mtp/MtpDatabase;->updateMediaStore(Landroid/content/Context;Ljava/io/File;)V

    .line 631
    return-void

    .line 624
    :cond_63
    :goto_63
    return-void

    .line 619
    :cond_64
    :goto_64
    sget-object p1, Landroid/mtp/MtpDatabase;->TAG:Ljava/lang/String;

    const-string p2, "Failed to end move object"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    return-void
.end method

.method private greylist-max-o endSendObject(IZ)V
    .registers 4

    .line 435
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {v0, p1}, Landroid/mtp/MtpStorageManager;->getObject(I)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object p1

    .line 436
    if-eqz p1, :cond_21

    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {v0, p1, p2}, Landroid/mtp/MtpStorageManager;->endSendObject(Landroid/mtp/MtpStorageManager$MtpObject;Z)Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_21

    .line 441
    :cond_11
    if-eqz p2, :cond_20

    .line 442
    iget-object p2, p0, Landroid/mtp/MtpDatabase;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->getPath()Ljava/nio/file/Path;

    move-result-object p1

    invoke-interface {p1}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/mtp/MtpDatabase;->updateMediaStore(Landroid/content/Context;Ljava/io/File;)V

    .line 444
    :cond_20
    return-void

    .line 437
    :cond_21
    :goto_21
    sget-object p1, Landroid/mtp/MtpDatabase;->TAG:Ljava/lang/String;

    const-string p2, "Failed to successfully end send object"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    return-void
.end method

.method private greylist-max-o getDeviceProperty(I[J[C)I
    .registers 9

    .line 685
    const/16 v0, 0xff

    const/16 v1, 0x2001

    const/4 v2, 0x0

    sparse-switch p1, :sswitch_data_8c

    .line 725
    const/16 p1, 0x200a

    return p1

    .line 718
    :sswitch_b
    iget p1, p0, Landroid/mtp/MtpDatabase;->mDeviceType:I

    int-to-long v3, p1

    aput-wide v3, p2, v2

    .line 719
    return v1

    .line 698
    :sswitch_11
    iget-object p1, p0, Landroid/mtp/MtpDatabase;->mHostType:Ljava/lang/String;

    .line 699
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    .line 700
    if-le p2, v0, :cond_1a

    .line 701
    goto :goto_1b

    .line 700
    :cond_1a
    move v0, p2

    .line 703
    :goto_1b
    invoke-virtual {p1, v2, v0, p3, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 704
    aput-char v2, p3, v0

    .line 705
    return v1

    .line 689
    :sswitch_21
    iget-object p2, p0, Landroid/mtp/MtpDatabase;->mDeviceProperties:Landroid/content/SharedPreferences;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const-string v3, ""

    invoke-interface {p2, p1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 690
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    .line 691
    if-le p2, v0, :cond_34

    .line 692
    goto :goto_35

    .line 691
    :cond_34
    move v0, p2

    .line 694
    :goto_35
    invoke-virtual {p1, v2, v0, p3, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 695
    aput-char v2, p3, v0

    .line 696
    return v1

    .line 709
    :sswitch_3b
    iget-object p1, p0, Landroid/mtp/MtpDatabase;->mContext:Landroid/content/Context;

    const-string/jumbo p2, "window"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    .line 710
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    .line 711
    invoke-virtual {p1}, Landroid/view/Display;->getMaximumSizeDimension()I

    move-result p2

    .line 712
    invoke-virtual {p1}, Landroid/view/Display;->getMaximumSizeDimension()I

    move-result p1

    .line 713
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string/jumbo v0, "x"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 714
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {p1, v2, p2, p3, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 715
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    aput-char v2, p3, p1

    .line 716
    return v1

    .line 721
    :sswitch_80
    iget p1, p0, Landroid/mtp/MtpDatabase;->mBatteryLevel:I

    int-to-long v3, p1

    aput-wide v3, p2, v2

    .line 722
    iget p1, p0, Landroid/mtp/MtpDatabase;->mBatteryScale:I

    int-to-long v2, p1

    const/4 p1, 0x1

    aput-wide v2, p2, p1

    .line 723
    return v1

    :sswitch_data_8c
    .sparse-switch
        0x5001 -> :sswitch_80
        0x5003 -> :sswitch_3b
        0xd401 -> :sswitch_21
        0xd402 -> :sswitch_21
        0xd406 -> :sswitch_11
        0xd407 -> :sswitch_b
    .end sparse-switch
.end method

.method private greylist-max-o getObjectFilePath(I[C[J)I
    .registers 7

    .line 776
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {v0, p1}, Landroid/mtp/MtpStorageManager;->getObject(I)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object p1

    .line 777
    if-nez p1, :cond_b

    .line 778
    const/16 p1, 0x2009

    return p1

    .line 781
    :cond_b
    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->getPath()Ljava/nio/file/Path;

    move-result-object v0

    invoke-interface {v0}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v0

    .line 782
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x1000

    invoke-static {v1, v2}, Ljava/lang/Integer;->min(II)I

    move-result v1

    .line 783
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1, p2, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 784
    aput-char v2, p2, v1

    .line 786
    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->getSize()J

    move-result-wide v0

    aput-wide v0, p3, v2

    .line 787
    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->getFormat()I

    move-result p1

    int-to-long p1, p1

    const/4 v0, 0x1

    aput-wide p1, p3, v0

    .line 788
    const/16 p1, 0x2001

    return p1
.end method

.method private greylist-max-o getObjectFormat(I)I
    .registers 3

    .line 820
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {v0, p1}, Landroid/mtp/MtpStorageManager;->getObject(I)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object p1

    .line 821
    if-nez p1, :cond_a

    .line 822
    const/4 p1, -0x1

    return p1

    .line 824
    :cond_a
    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->getFormat()I

    move-result p1

    return p1
.end method

.method private greylist-max-o getObjectInfo(I[I[C[J)Z
    .registers 9

    .line 757
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {v0, p1}, Landroid/mtp/MtpStorageManager;->getObject(I)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object p1

    .line 758
    const/4 v0, 0x0

    if-nez p1, :cond_a

    .line 759
    return v0

    .line 761
    :cond_a
    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->getStorageId()I

    move-result v1

    aput v1, p2, v0

    .line 762
    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->getFormat()I

    move-result v1

    const/4 v2, 0x1

    aput v1, p2, v2

    .line 763
    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->getParent()Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v1

    invoke-virtual {v1}, Landroid/mtp/MtpStorageManager$MtpObject;->isRoot()Z

    move-result v1

    if-eqz v1, :cond_23

    move v1, v0

    goto :goto_2b

    :cond_23
    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->getParent()Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v1

    invoke-virtual {v1}, Landroid/mtp/MtpStorageManager$MtpObject;->getId()I

    move-result v1

    :goto_2b
    const/4 v3, 0x2

    aput v1, p2, v3

    .line 765
    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    const/16 v1, 0xff

    invoke-static {p2, v1}, Ljava/lang/Integer;->min(II)I

    move-result p2

    .line 766
    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0, p2, p3, v0}, Ljava/lang/String;->getChars(II[CI)V

    .line 767
    aput-char v0, p3, p2

    .line 769
    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->getModifiedTime()J

    move-result-wide p2

    aput-wide p2, p4, v0

    .line 770
    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->getModifiedTime()J

    move-result-wide p1

    aput-wide p1, p4, v2

    .line 771
    return v2
.end method

.method private greylist-max-o getObjectList(III)[I
    .registers 5

    .line 453
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {v0, p3, p2, p1}, Landroid/mtp/MtpStorageManager;->getObjects(III)Ljava/util/List;

    move-result-object p1

    .line 455
    if-nez p1, :cond_a

    .line 456
    const/4 p1, 0x0

    return-object p1

    .line 458
    :cond_a
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    new-array p2, p2, [I

    .line 459
    const/4 p3, 0x0

    :goto_11
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge p3, v0, :cond_26

    .line 460
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/mtp/MtpStorageManager$MtpObject;

    invoke-virtual {v0}, Landroid/mtp/MtpStorageManager$MtpObject;->getId()I

    move-result v0

    aput v0, p2, p3

    .line 459
    add-int/lit8 p3, p3, 0x1

    goto :goto_11

    .line 462
    :cond_26
    return-object p2
.end method

.method public static blacklist getObjectPropertiesUri(ILjava/lang/String;)Landroid/net/Uri;
    .registers 2

    .line 230
    sparse-switch p0, :sswitch_data_18

    .line 249
    invoke-static {p1}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0

    .line 247
    :sswitch_8
    invoke-static {p1}, Landroid/provider/MediaStore$Images$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0

    .line 240
    :sswitch_d
    invoke-static {p1}, Landroid/provider/MediaStore$Video$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0

    .line 236
    :sswitch_12
    invoke-static {p1}, Landroid/provider/MediaStore$Audio$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0

    nop

    :sswitch_data_18
    .sparse-switch
        0x3008 -> :sswitch_12
        0x3009 -> :sswitch_12
        0x300b -> :sswitch_d
        0x3801 -> :sswitch_8
        0x3804 -> :sswitch_8
        0x3807 -> :sswitch_8
        0x380b -> :sswitch_8
        0x3811 -> :sswitch_8
        0x3812 -> :sswitch_8
        0xb901 -> :sswitch_12
        0xb902 -> :sswitch_12
        0xb903 -> :sswitch_12
        0xb981 -> :sswitch_d
        0xb984 -> :sswitch_d
    .end sparse-switch
.end method

.method private greylist-max-o getObjectPropertyList(IIIII)Landroid/mtp/MtpPropertyList;
    .registers 13

    .line 480
    if-nez p3, :cond_15

    .line 481
    if-nez p4, :cond_c

    .line 482
    new-instance p1, Landroid/mtp/MtpPropertyList;

    const/16 p2, 0x2006

    invoke-direct {p1, p2}, Landroid/mtp/MtpPropertyList;-><init>(I)V

    return-object p1

    .line 484
    :cond_c
    new-instance p1, Landroid/mtp/MtpPropertyList;

    const p2, 0xa807

    invoke-direct {p1, p2}, Landroid/mtp/MtpPropertyList;-><init>(I)V

    return-object p1

    .line 486
    :cond_15
    const/4 p4, 0x0

    const/4 v0, -0x1

    if-ne p5, v0, :cond_20

    if-eqz p1, :cond_1d

    if-ne p1, v0, :cond_20

    .line 488
    :cond_1d
    nop

    .line 489
    move p5, p4

    move p1, v0

    .line 491
    :cond_20
    const/4 v1, 0x1

    if-eqz p5, :cond_2e

    if-eq p5, v1, :cond_2e

    .line 494
    new-instance p1, Landroid/mtp/MtpPropertyList;

    const p2, 0xa808

    invoke-direct {p1, p2}, Landroid/mtp/MtpPropertyList;-><init>(I)V

    return-object p1

    .line 496
    :cond_2e
    nop

    .line 497
    nop

    .line 498
    const/4 v2, 0x0

    const/16 v3, 0x2009

    if-ne p1, v0, :cond_47

    .line 500
    iget-object v4, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {v4, p4, p2, v0}, Landroid/mtp/MtpStorageManager;->getObjects(III)Ljava/util/List;

    move-result-object p4

    .line 501
    if-nez p4, :cond_43

    .line 502
    new-instance p1, Landroid/mtp/MtpPropertyList;

    invoke-direct {p1, v3}, Landroid/mtp/MtpPropertyList;-><init>(I)V

    return-object p1

    .line 501
    :cond_43
    move-object v6, v2

    move-object v2, p4

    move-object p4, v6

    goto :goto_61

    .line 504
    :cond_47
    if-eqz p1, :cond_60

    .line 506
    iget-object p4, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {p4, p1}, Landroid/mtp/MtpStorageManager;->getObject(I)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object p4

    .line 507
    if-nez p4, :cond_57

    .line 508
    new-instance p1, Landroid/mtp/MtpPropertyList;

    invoke-direct {p1, v3}, Landroid/mtp/MtpPropertyList;-><init>(I)V

    return-object p1

    .line 510
    :cond_57
    invoke-virtual {p4}, Landroid/mtp/MtpStorageManager$MtpObject;->getFormat()I

    move-result v4

    if-eq v4, p2, :cond_5f

    if-nez p2, :cond_60

    .line 511
    :cond_5f
    goto :goto_61

    .line 514
    :cond_60
    move-object p4, v2

    :goto_61
    if-eqz p1, :cond_65

    if-ne p5, v1, :cond_76

    .line 515
    :cond_65
    if-nez p1, :cond_68

    .line 516
    move p1, v0

    .line 519
    :cond_68
    iget-object p5, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {p5, p1, p2, v0}, Landroid/mtp/MtpStorageManager;->getObjects(III)Ljava/util/List;

    move-result-object v2

    .line 521
    if-nez v2, :cond_76

    .line 522
    new-instance p1, Landroid/mtp/MtpPropertyList;

    invoke-direct {p1, v3}, Landroid/mtp/MtpPropertyList;-><init>(I)V

    return-object p1

    .line 525
    :cond_76
    if-nez v2, :cond_7d

    .line 526
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 528
    :cond_7d
    if-eqz p4, :cond_82

    .line 529
    invoke-interface {v2, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 532
    :cond_82
    new-instance p4, Landroid/mtp/MtpPropertyList;

    const/16 p5, 0x2001

    invoke-direct {p4, p5}, Landroid/mtp/MtpPropertyList;-><init>(I)V

    .line 534
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_eb

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/mtp/MtpStorageManager$MtpObject;

    .line 535
    if-ne p3, v0, :cond_bf

    .line 536
    if-nez p2, :cond_a5

    if-eqz p1, :cond_a5

    if-eq p1, v0, :cond_a5

    .line 538
    invoke-virtual {v2}, Landroid/mtp/MtpStorageManager$MtpObject;->getFormat()I

    move-result p2

    .line 542
    :cond_a5
    iget-object v3, p0, Landroid/mtp/MtpDatabase;->mPropertyGroupsByFormat:Landroid/util/SparseArray;

    invoke-virtual {v3, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/mtp/MtpPropertyGroup;

    .line 543
    if-nez v3, :cond_d8

    .line 544
    invoke-direct {p0, p2}, Landroid/mtp/MtpDatabase;->getSupportedObjectProperties(I)[I

    move-result-object v3

    .line 545
    new-instance v4, Landroid/mtp/MtpPropertyGroup;

    invoke-direct {v4, v3}, Landroid/mtp/MtpPropertyGroup;-><init>([I)V

    .line 546
    iget-object v3, p0, Landroid/mtp/MtpDatabase;->mPropertyGroupsByFormat:Landroid/util/SparseArray;

    invoke-virtual {v3, p2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 547
    move-object v3, v4

    goto :goto_d8

    .line 550
    :cond_bf
    iget-object v3, p0, Landroid/mtp/MtpDatabase;->mPropertyGroupsByProperty:Landroid/util/SparseArray;

    invoke-virtual {v3, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/mtp/MtpPropertyGroup;

    .line 551
    if-nez v3, :cond_d8

    .line 552
    filled-new-array {p3}, [I

    move-result-object v3

    .line 553
    new-instance v4, Landroid/mtp/MtpPropertyGroup;

    invoke-direct {v4, v3}, Landroid/mtp/MtpPropertyGroup;-><init>([I)V

    .line 554
    iget-object v3, p0, Landroid/mtp/MtpDatabase;->mPropertyGroupsByProperty:Landroid/util/SparseArray;

    invoke-virtual {v3, p3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object v3, v4

    .line 557
    :cond_d8
    :goto_d8
    iget-object v4, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/ContentProviderClient;

    invoke-virtual {v2}, Landroid/mtp/MtpStorageManager$MtpObject;->getVolumeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v2, p4}, Landroid/mtp/MtpPropertyGroup;->getPropertyList(Landroid/content/ContentProviderClient;Ljava/lang/String;Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpPropertyList;)I

    move-result v2

    .line 558
    if-eq v2, p5, :cond_ea

    .line 559
    new-instance p1, Landroid/mtp/MtpPropertyList;

    invoke-direct {p1, v2}, Landroid/mtp/MtpPropertyList;-><init>(I)V

    return-object p1

    .line 561
    :cond_ea
    goto :goto_8d

    .line 562
    :cond_eb
    return-object p4
.end method

.method private greylist-max-o getObjectReferences(I)[I
    .registers 2

    .line 990
    const/4 p1, 0x0

    return-object p1
.end method

.method private greylist-max-o getSupportedCaptureFormats()[I
    .registers 2

    .line 266
    const/4 v0, 0x0

    return-object v0
.end method

.method private greylist-max-o getSupportedDeviceProperties()[I
    .registers 2

    .line 255
    sget-object v0, Landroid/mtp/MtpDatabase;->DEVICE_PROPERTIES:[I

    return-object v0
.end method

.method private greylist-max-o getSupportedObjectProperties(I)[I
    .registers 3

    .line 203
    sparse-switch p1, :sswitch_data_46

    .line 225
    sget-object p1, Landroid/mtp/MtpDatabase;->FILE_PROPERTIES:[I

    return-object p1

    .line 222
    :sswitch_6
    sget-object p1, Landroid/mtp/MtpDatabase;->FILE_PROPERTIES:[I

    invoke-static {p1}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object p1

    sget-object v0, Landroid/mtp/MtpDatabase;->IMAGE_PROPERTIES:[I

    .line 223
    invoke-static {v0}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v0

    .line 222
    invoke-static {p1, v0}, Ljava/util/stream/IntStream;->concat(Ljava/util/stream/IntStream;Ljava/util/stream/IntStream;)Ljava/util/stream/IntStream;

    move-result-object p1

    .line 223
    invoke-interface {p1}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object p1

    .line 222
    return-object p1

    .line 214
    :sswitch_1b
    sget-object p1, Landroid/mtp/MtpDatabase;->FILE_PROPERTIES:[I

    invoke-static {p1}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object p1

    sget-object v0, Landroid/mtp/MtpDatabase;->VIDEO_PROPERTIES:[I

    .line 215
    invoke-static {v0}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v0

    .line 214
    invoke-static {p1, v0}, Ljava/util/stream/IntStream;->concat(Ljava/util/stream/IntStream;Ljava/util/stream/IntStream;)Ljava/util/stream/IntStream;

    move-result-object p1

    .line 215
    invoke-interface {p1}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object p1

    .line 214
    return-object p1

    .line 209
    :sswitch_30
    sget-object p1, Landroid/mtp/MtpDatabase;->FILE_PROPERTIES:[I

    invoke-static {p1}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object p1

    sget-object v0, Landroid/mtp/MtpDatabase;->AUDIO_PROPERTIES:[I

    .line 210
    invoke-static {v0}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v0

    .line 209
    invoke-static {p1, v0}, Ljava/util/stream/IntStream;->concat(Ljava/util/stream/IntStream;Ljava/util/stream/IntStream;)Ljava/util/stream/IntStream;

    move-result-object p1

    .line 210
    invoke-interface {p1}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object p1

    .line 209
    return-object p1

    nop

    :sswitch_data_46
    .sparse-switch
        0x3008 -> :sswitch_30
        0x3009 -> :sswitch_30
        0x300b -> :sswitch_1b
        0x3801 -> :sswitch_6
        0x3804 -> :sswitch_6
        0x3807 -> :sswitch_6
        0x380b -> :sswitch_6
        0x3811 -> :sswitch_6
        0x3812 -> :sswitch_6
        0xb901 -> :sswitch_30
        0xb902 -> :sswitch_30
        0xb903 -> :sswitch_30
        0xb981 -> :sswitch_1b
        0xb984 -> :sswitch_1b
    .end sparse-switch
.end method

.method private greylist-max-o getSupportedPlaybackFormats()[I
    .registers 2

    .line 260
    sget-object v0, Landroid/mtp/MtpDatabase;->PLAYBACK_FORMATS:[I

    return-object v0
.end method

.method private blacklist getThumbnailProcess(Ljava/lang/String;Landroid/graphics/Bitmap;)[B
    .registers 6

    .line 829
    const/4 p1, 0x0

    if-nez p2, :cond_b

    .line 830
    :try_start_3
    sget-object p2, Landroid/mtp/MtpDatabase;->TAG:Ljava/lang/String;

    const-string v0, "getThumbnailProcess: Fail to generate thumbnail. Probably unsupported or corrupted image"

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 831
    return-object p1

    .line 834
    :cond_b
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 835
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p2, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 837
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result p2

    const v1, 0x32000

    if-le p2, v1, :cond_3d

    .line 838
    sget-object p2, Landroid/mtp/MtpDatabase;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getThumbnailProcess: size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 839
    return-object p1

    .line 842
    :cond_3d
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1
    :try_end_41
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_41} :catch_42

    .line 844
    return-object p1

    .line 845
    :catch_42
    move-exception p2

    .line 846
    sget-object v0, Landroid/mtp/MtpDatabase;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OutOfMemoryError:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 848
    return-object p1
.end method

.method private greylist-max-o initDeviceProperties(Landroid/content/Context;)V
    .registers 14

    .line 383
    const-string v1, "device-properties"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Landroid/mtp/MtpDatabase;->mDeviceProperties:Landroid/content/SharedPreferences;

    .line 385
    invoke-virtual {p1, v1}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 387
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_86

    .line 390
    nop

    .line 391
    nop

    .line 393
    const/4 v3, 0x0

    :try_start_16
    invoke-virtual {p1, v1, v2, v3}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_1a} :catch_64
    .catchall {:try_start_16 .. :try_end_1a} :catchall_60

    .line 394
    if-eqz v4, :cond_55

    .line 395
    :try_start_1c
    const-string/jumbo v5, "properties"

    const-string v0, "_id"

    const-string v6, "code"

    const-string/jumbo v7, "value"

    filled-new-array {v0, v6, v7}, [Ljava/lang/String;

    move-result-object v6

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 397
    if-eqz v3, :cond_55

    .line 398
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mDeviceProperties:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 399
    :goto_3b
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_4f

    .line 400
    const/4 v5, 0x1

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 401
    const/4 v6, 0x2

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 402
    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 403
    goto :goto_3b

    .line 404
    :cond_4f
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_52} :catch_53
    .catchall {:try_start_1c .. :try_end_52} :catchall_79

    goto :goto_55

    .line 407
    :catch_53
    move-exception v0

    goto :goto_66

    .line 410
    :cond_55
    :goto_55
    if-eqz v3, :cond_5a

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 411
    :cond_5a
    if-eqz v4, :cond_75

    :goto_5c
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_75

    .line 410
    :catchall_60
    move-exception v0

    move-object p1, v0

    move-object v4, v3

    goto :goto_7b

    .line 407
    :catch_64
    move-exception v0

    move-object v4, v3

    .line 408
    :goto_66
    :try_start_66
    sget-object v5, Landroid/mtp/MtpDatabase;->TAG:Ljava/lang/String;

    const-string v6, "failed to migrate device properties"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6d
    .catchall {:try_start_66 .. :try_end_6d} :catchall_79

    .line 410
    if-eqz v3, :cond_72

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 411
    :cond_72
    if-eqz v4, :cond_75

    goto :goto_5c

    .line 413
    :cond_75
    :goto_75
    invoke-virtual {p1, v1}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    goto :goto_86

    .line 410
    :catchall_79
    move-exception v0

    move-object p1, v0

    :goto_7b
    if-eqz v3, :cond_80

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 411
    :cond_80
    if-eqz v4, :cond_85

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 412
    :cond_85
    throw p1

    .line 415
    :cond_86
    :goto_86
    const-string p1, ""

    iput-object p1, p0, Landroid/mtp/MtpDatabase;->mHostType:Ljava/lang/String;

    .line 416
    iput-boolean v2, p0, Landroid/mtp/MtpDatabase;->mSkipThumbForHost:Z

    .line 417
    iput-boolean v2, p0, Landroid/mtp/MtpDatabase;->mHostIsWindows:Z

    .line 418
    return-void
.end method

.method private synthetic blacklist lambda$addStorage$0()Ljava/lang/Boolean;
    .registers 2

    .line 362
    iget-boolean v0, p0, Landroid/mtp/MtpDatabase;->mHostIsWindows:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private final native greylist-max-o native_finalize()V
.end method

.method private final native greylist-max-o native_setup()V
.end method

.method private blacklist openFilePath(Ljava/lang/String;Z)I
    .registers 8

    .line 793
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Landroid/provider/MediaStore;->scanFile(Landroid/content/ContentResolver;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 794
    const/4 v1, -0x1

    if-nez v0, :cond_2b

    .line 795
    sget-object p2, Landroid/mtp/MtpDatabase;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to obtain URI for openFile with transcode support: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    return v1

    .line 800
    :cond_2b
    :try_start_2b
    sget-object v2, Landroid/mtp/MtpDatabase;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "openFile with transcode support: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V
    :try_end_49
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_49} :catch_82
    .catch Ljava/io/FileNotFoundException; {:try_start_2b .. :try_end_49} :catch_82

    .line 802
    const-string/jumbo v3, "video/hevc"

    const-string v4, "android.provider.extra.MEDIA_CAPABILITIES"

    if-eqz p2, :cond_61

    .line 803
    :try_start_50
    new-instance p2, Landroid/media/ApplicationMediaCapabilities$Builder;

    invoke-direct {p2}, Landroid/media/ApplicationMediaCapabilities$Builder;-><init>()V

    .line 804
    invoke-virtual {p2, v3}, Landroid/media/ApplicationMediaCapabilities$Builder;->addUnsupportedVideoMimeType(Ljava/lang/String;)Landroid/media/ApplicationMediaCapabilities$Builder;

    move-result-object p2

    .line 805
    invoke-virtual {p2}, Landroid/media/ApplicationMediaCapabilities$Builder;->build()Landroid/media/ApplicationMediaCapabilities;

    move-result-object p2

    .line 803
    invoke-virtual {v2, v4, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_71

    .line 807
    :cond_61
    new-instance p2, Landroid/media/ApplicationMediaCapabilities$Builder;

    invoke-direct {p2}, Landroid/media/ApplicationMediaCapabilities$Builder;-><init>()V

    .line 808
    invoke-virtual {p2, v3}, Landroid/media/ApplicationMediaCapabilities$Builder;->addSupportedVideoMimeType(Ljava/lang/String;)Landroid/media/ApplicationMediaCapabilities$Builder;

    move-result-object p2

    .line 809
    invoke-virtual {p2}, Landroid/media/ApplicationMediaCapabilities$Builder;->build()Landroid/media/ApplicationMediaCapabilities;

    move-result-object p2

    .line 807
    invoke-virtual {v2, v4, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 811
    :goto_71
    iget-object p2, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/ContentProviderClient;

    const-string v3, "*/*"

    invoke-virtual {p2, v0, v3, v2}, Landroid/content/ContentProviderClient;->openTypedAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/res/AssetFileDescriptor;

    move-result-object p2

    .line 812
    invoke-virtual {p2}, Landroid/content/res/AssetFileDescriptor;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object p2

    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->detachFd()I

    move-result p1
    :try_end_81
    .catch Landroid/os/RemoteException; {:try_start_50 .. :try_end_81} :catch_82
    .catch Ljava/io/FileNotFoundException; {:try_start_50 .. :try_end_81} :catch_82

    .line 811
    return p1

    .line 813
    :catch_82
    move-exception p2

    .line 814
    sget-object v0, Landroid/mtp/MtpDatabase;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to openFile with transcode support: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 815
    return v1
.end method

.method private greylist-max-o renameFile(ILjava/lang/String;)I
    .registers 8

    .line 566
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {v0, p1}, Landroid/mtp/MtpStorageManager;->getObject(I)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object p1

    .line 567
    if-nez p1, :cond_b

    .line 568
    const/16 p1, 0x2009

    return p1

    .line 570
    :cond_b
    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->getPath()Ljava/nio/file/Path;

    move-result-object v0

    .line 573
    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {v1, p1, p2}, Landroid/mtp/MtpStorageManager;->beginRenameObject(Landroid/mtp/MtpStorageManager$MtpObject;Ljava/lang/String;)Z

    move-result p2

    const/16 v1, 0x2002

    if-nez p2, :cond_1a

    .line 574
    return v1

    .line 575
    :cond_1a
    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->getPath()Ljava/nio/file/Path;

    move-result-object p2

    .line 576
    invoke-interface {v0}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v2

    invoke-interface {p2}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v2

    .line 578
    :try_start_2a
    invoke-interface {v0}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v3

    sget v4, Landroid/system/OsConstants;->F_OK:I

    invoke-static {v3, v4}, Landroid/system/Os;->access(Ljava/lang/String;I)Z

    .line 579
    invoke-interface {p2}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v3

    sget v4, Landroid/system/OsConstants;->F_OK:I

    invoke-static {v3, v4}, Landroid/system/Os;->access(Ljava/lang/String;I)Z
    :try_end_3c
    .catch Landroid/system/ErrnoException; {:try_start_2a .. :try_end_3c} :catch_3d

    .line 582
    goto :goto_3e

    .line 580
    :catch_3d
    move-exception v3

    .line 584
    :goto_3e
    iget-object v3, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-interface {v0}, Ljava/nio/file/Path;->getFileName()Ljava/nio/file/Path;

    move-result-object v4

    invoke-interface {v4}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, p1, v4, v2}, Landroid/mtp/MtpStorageManager;->endRenameObject(Landroid/mtp/MtpStorageManager$MtpObject;Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_55

    .line 585
    sget-object p1, Landroid/mtp/MtpDatabase;->TAG:Ljava/lang/String;

    const-string v3, "Failed to end rename object"

    invoke-static {p1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    :cond_55
    if-nez v2, :cond_58

    .line 588
    return v1

    .line 591
    :cond_58
    iget-object p1, p0, Landroid/mtp/MtpDatabase;->mContext:Landroid/content/Context;

    invoke-interface {v0}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/mtp/MtpDatabase;->updateMediaStore(Landroid/content/Context;Ljava/io/File;)V

    .line 592
    iget-object p1, p0, Landroid/mtp/MtpDatabase;->mContext:Landroid/content/Context;

    invoke-interface {p2}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/mtp/MtpDatabase;->updateMediaStore(Landroid/content/Context;Ljava/io/File;)V

    .line 593
    const/16 p1, 0x2001

    return p1
.end method

.method private greylist-max-o rescanFile(Ljava/lang/String;II)V
    .registers 4

    .line 448
    iget-object p2, p0, Landroid/mtp/MtpDatabase;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    new-instance p3, Ljava/io/File;

    invoke-direct {p3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p2, p3}, Landroid/provider/MediaStore;->scanFile(Landroid/content/ContentResolver;Ljava/io/File;)Landroid/net/Uri;

    .line 449
    return-void
.end method

.method private greylist-max-o setDeviceProperty(IJLjava/lang/String;)I
    .registers 7

    .line 731
    const/16 p2, 0x2001

    sparse-switch p1, :sswitch_data_60

    .line 751
    const/16 p1, 0x200a

    return p1

    .line 740
    :sswitch_8
    iput-object p4, p0, Landroid/mtp/MtpDatabase;->mHostType:Ljava/lang/String;

    .line 741
    sget-object p3, Landroid/mtp/MtpDatabase;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setDeviceProperty."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    const-string p1, "Android/"

    invoke-virtual {p4, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    const/4 p3, 0x1

    if-eqz p1, :cond_3d

    .line 744
    iput-boolean p3, p0, Landroid/mtp/MtpDatabase;->mSkipThumbForHost:Z

    goto :goto_47

    .line 745
    :cond_3d
    const-string p1, "Windows/"

    invoke-virtual {p4, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_47

    .line 746
    iput-boolean p3, p0, Landroid/mtp/MtpDatabase;->mHostIsWindows:Z

    .line 748
    :cond_47
    :goto_47
    return p2

    .line 735
    :sswitch_48
    iget-object p3, p0, Landroid/mtp/MtpDatabase;->mDeviceProperties:Landroid/content/SharedPreferences;

    invoke-interface {p3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p3

    .line 736
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, p1, p4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 737
    invoke-interface {p3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result p1

    if-eqz p1, :cond_5c

    goto :goto_5e

    .line 738
    :cond_5c
    const/16 p2, 0x2002

    .line 737
    :goto_5e
    return p2

    nop

    :sswitch_data_60
    .sparse-switch
        0xd401 -> :sswitch_48
        0xd402 -> :sswitch_48
        0xd406 -> :sswitch_8
    .end sparse-switch
.end method

.method private greylist-max-o setObjectProperty(IIJLjava/lang/String;)I
    .registers 6

    .line 671
    packed-switch p2, :pswitch_data_c

    .line 676
    const p1, 0xa80a

    return p1

    .line 673
    :pswitch_7
    invoke-direct {p0, p1, p5}, Landroid/mtp/MtpDatabase;->renameFile(ILjava/lang/String;)I

    move-result p1

    return p1

    :pswitch_data_c
    .packed-switch 0xdc07
        :pswitch_7
    .end packed-switch
.end method

.method private greylist-max-o setObjectReferences(I[I)I
    .registers 3

    .line 995
    const/16 p1, 0x2005

    return p1
.end method

.method private static blacklist updateMediaStore(Landroid/content/Context;Ljava/io/File;)V
    .registers 4

    .line 658
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 661
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_24

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ".nomedia"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 662
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/provider/MediaStore;->scanFile(Landroid/content/ContentResolver;Ljava/io/File;)Landroid/net/Uri;

    goto :goto_27

    .line 664
    :cond_24
    invoke-static {p0, p1}, Landroid/provider/MediaStore;->scanFile(Landroid/content/ContentResolver;Ljava/io/File;)Landroid/net/Uri;

    .line 666
    :goto_27
    return-void
.end method


# virtual methods
.method public greylist-max-o addStorage(Landroid/os/storage/StorageVolume;)V
    .registers 4

    .line 362
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    new-instance v1, Landroid/mtp/MtpDatabase$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroid/mtp/MtpDatabase$$ExternalSyntheticLambda0;-><init>(Landroid/mtp/MtpDatabase;)V

    invoke-virtual {v0, p1, v1}, Landroid/mtp/MtpStorageManager;->addMtpStorage(Landroid/os/storage/StorageVolume;Ljava/util/function/Supplier;)Landroid/mtp/MtpStorage;

    move-result-object v0

    .line 363
    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mStorageMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    iget-object p1, p0, Landroid/mtp/MtpDatabase;->mServer:Landroid/mtp/MtpServer;

    if-eqz p1, :cond_1d

    .line 365
    iget-object p1, p0, Landroid/mtp/MtpDatabase;->mServer:Landroid/mtp/MtpServer;

    invoke-virtual {p1, v0}, Landroid/mtp/MtpServer;->addStorage(Landroid/mtp/MtpStorage;)V

    .line 367
    :cond_1d
    return-void
.end method

.method public greylist-max-o beginSendObject(Ljava/lang/String;III)I
    .registers 5

    .line 424
    if-nez p3, :cond_9

    iget-object p3, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {p3, p4}, Landroid/mtp/MtpStorageManager;->getStorageRoot(I)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object p3

    goto :goto_f

    :cond_9
    iget-object p4, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {p4, p3}, Landroid/mtp/MtpStorageManager;->getObject(I)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object p3

    .line 425
    :goto_f
    if-nez p3, :cond_13

    .line 426
    const/4 p1, -0x1

    return p1

    .line 429
    :cond_13
    const/4 p4, 0x0

    new-array p4, p4, [Ljava/lang/String;

    invoke-static {p1, p4}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p1

    .line 430
    iget-object p4, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-interface {p1}, Ljava/nio/file/Path;->getFileName()Ljava/nio/file/Path;

    move-result-object p1

    invoke-interface {p1}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p3, p1, p2}, Landroid/mtp/MtpStorageManager;->beginSendObject(Landroid/mtp/MtpStorageManager$MtpObject;Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public whitelist test-api close()V
    .registers 4

    .line 339
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {v0}, Landroid/mtp/MtpStorageManager;->close()V

    .line 340
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 341
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 342
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/ContentProviderClient;

    if-eqz v0, :cond_1d

    .line 343
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/ContentProviderClient;

    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->close()V

    .line 345
    :cond_1d
    invoke-direct {p0}, Landroid/mtp/MtpDatabase;->native_finalize()V

    .line 347
    :cond_20
    return-void
.end method

.method protected whitelist test-api finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 352
    :try_start_0
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mCloseGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_9

    .line 353
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 355
    :cond_9
    invoke-virtual {p0}, Landroid/mtp/MtpDatabase;->close()V
    :try_end_c
    .catchall {:try_start_0 .. :try_end_c} :catchall_11

    .line 357
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 358
    nop

    .line 359
    return-void

    .line 357
    :catchall_11
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 358
    throw v0
.end method

.method public blacklist getContext()Landroid/content/Context;
    .registers 2

    .line 334
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public greylist-max-o getNumObjects(III)I
    .registers 5

    .line 468
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {v0, p3, p2, p1}, Landroid/mtp/MtpStorageManager;->getObjects(III)Ljava/util/List;

    move-result-object p1

    .line 470
    if-nez p1, :cond_a

    .line 471
    const/4 p1, -0x1

    return p1

    .line 473
    :cond_a
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    return p1
.end method

.method public blacklist getThumbnailData(I)[B
    .registers 5

    .line 903
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {v0, p1}, Landroid/mtp/MtpStorageManager;->getObject(I)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object p1

    .line 904
    const/4 v0, 0x0

    if-nez p1, :cond_a

    .line 905
    return-object v0

    .line 908
    :cond_a
    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->getPath()Ljava/nio/file/Path;

    move-result-object v1

    invoke-interface {v1}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v1

    .line 909
    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->getFormat()I

    move-result p1

    sparse-switch p1, :sswitch_data_46

    .line 937
    return-object v0

    .line 914
    :sswitch_1a
    :try_start_1a
    new-instance p1, Landroid/media/ExifInterface;

    invoke-direct {p1, v1}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 916
    iget-boolean v0, p0, Landroid/mtp/MtpDatabase;->mSkipThumbForHost:Z

    if-eqz v0, :cond_2f

    .line 917
    sget-object v0, Landroid/mtp/MtpDatabase;->TAG:Ljava/lang/String;

    const-string v2, "getThumbnailData: Skip runtime thumbnail."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 918
    invoke-virtual {p1}, Landroid/media/ExifInterface;->getThumbnail()[B

    move-result-object p1

    return-object p1

    .line 920
    :cond_2f
    invoke-virtual {p1}, Landroid/media/ExifInterface;->getThumbnailRange()[J

    move-result-object v0

    if-eqz v0, :cond_3a

    .line 921
    invoke-virtual {p1}, Landroid/media/ExifInterface;->getThumbnail()[B

    move-result-object p1
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_39} :catch_3b

    return-object p1

    .line 924
    :cond_3a
    goto :goto_3c

    .line 922
    :catch_3b
    move-exception p1

    .line 931
    :goto_3c
    :sswitch_3c
    const/4 p1, 0x1

    invoke-static {v1, p1}, Landroid/media/ThumbnailUtils;->createImageThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 932
    invoke-direct {p0, v1, p1}, Landroid/mtp/MtpDatabase;->getThumbnailProcess(Ljava/lang/String;Landroid/graphics/Bitmap;)[B

    move-result-object p1

    .line 934
    return-object p1

    :sswitch_data_46
    .sparse-switch
        0x3801 -> :sswitch_1a
        0x3804 -> :sswitch_3c
        0x3807 -> :sswitch_3c
        0x3808 -> :sswitch_1a
        0x380b -> :sswitch_3c
        0x3812 -> :sswitch_1a
    .end sparse-switch
.end method

.method public blacklist getThumbnailInfo(I[J)Z
    .registers 12

    .line 854
    const-string v0, ","

    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {v1, p1}, Landroid/mtp/MtpStorageManager;->getObject(I)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object p1

    .line 855
    const/4 v1, 0x0

    if-nez p1, :cond_c

    .line 856
    return v1

    .line 859
    :cond_c
    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->getPath()Ljava/nio/file/Path;

    move-result-object v2

    invoke-interface {v2}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v2

    .line 860
    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->getFormat()I

    move-result p1

    const/4 v3, 0x2

    const/4 v4, 0x1

    sparse-switch p1, :sswitch_data_b0

    .line 897
    return v1

    .line 865
    :sswitch_1e
    :try_start_1e
    new-instance p1, Landroid/media/ExifInterface;

    invoke-direct {p1, v2}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 866
    invoke-virtual {p1}, Landroid/media/ExifInterface;->getThumbnailRange()[J

    move-result-object v2

    .line 867
    const-wide/16 v5, 0x0

    if-eqz v2, :cond_2e

    aget-wide v7, v2, v4

    goto :goto_2f

    :cond_2e
    move-wide v7, v5

    :goto_2f
    aput-wide v7, p2, v1

    .line 868
    const-string v7, "PixelXDimension"

    invoke-virtual {p1, v7, v1}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v7

    int-to-long v7, v7

    aput-wide v7, p2, v4

    .line 869
    const-string v7, "PixelYDimension"

    invoke-virtual {p1, v7, v1}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v7

    int-to-long v7, v7

    aput-wide v7, p2, v3

    .line 870
    iget-boolean v7, p0, Landroid/mtp/MtpDatabase;->mSkipThumbForHost:Z

    if-eqz v7, :cond_4f

    .line 871
    sget-object p1, Landroid/mtp/MtpDatabase;->TAG:Ljava/lang/String;

    const-string v0, "getThumbnailInfo: Skip runtime thumbnail."

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 872
    return v4

    .line 874
    :cond_4f
    invoke-virtual {p1}, Landroid/media/ExifInterface;->getThumbnailRange()[J

    move-result-object p1

    if-eqz p1, :cond_a0

    .line 875
    aget-wide v7, p2, v1

    cmp-long p1, v7, v5

    if-eqz p1, :cond_67

    aget-wide v7, p2, v4

    cmp-long p1, v7, v5

    if-eqz p1, :cond_67

    aget-wide v7, p2, v3

    cmp-long p1, v7, v5

    if-nez p1, :cond_9f

    .line 876
    :cond_67
    sget-object p1, Landroid/mtp/MtpDatabase;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getThumbnailInfo: check thumb info:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-wide v6, v2, v1

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-wide v6, v2, v4

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-wide v5, p2, v4

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-wide v5, p2, v3

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9f
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_9f} :catch_a1

    .line 881
    :cond_9f
    return v4

    .line 885
    :cond_a0
    goto :goto_a2

    .line 883
    :catch_a1
    move-exception p1

    .line 891
    :goto_a2
    :sswitch_a2
    const-wide/32 v5, 0x32000

    aput-wide v5, p2, v1

    .line 893
    const-wide/16 v0, 0x140

    aput-wide v0, p2, v4

    .line 894
    const-wide/16 v0, 0xf0

    aput-wide v0, p2, v3

    .line 895
    return v4

    :sswitch_data_b0
    .sparse-switch
        0x3801 -> :sswitch_1e
        0x3804 -> :sswitch_a2
        0x3807 -> :sswitch_a2
        0x3808 -> :sswitch_1e
        0x380b -> :sswitch_a2
        0x3812 -> :sswitch_1e
    .end sparse-switch
.end method

.method public greylist-max-o removeStorage(Landroid/os/storage/StorageVolume;)V
    .registers 4

    .line 370
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mStorageMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/mtp/MtpStorage;

    .line 371
    if-nez v0, :cond_f

    .line 372
    return-void

    .line 374
    :cond_f
    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mServer:Landroid/mtp/MtpServer;

    if-eqz v1, :cond_18

    .line 375
    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mServer:Landroid/mtp/MtpServer;

    invoke-virtual {v1, v0}, Landroid/mtp/MtpServer;->removeStorage(Landroid/mtp/MtpStorage;)V

    .line 377
    :cond_18
    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {v1, v0}, Landroid/mtp/MtpStorageManager;->removeMtpStorage(Landroid/mtp/MtpStorage;)V

    .line 378
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mStorageMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    return-void
.end method

.method public greylist-max-o setServer(Landroid/mtp/MtpServer;)V
    .registers 5

    .line 319
    iput-object p1, p0, Landroid/mtp/MtpDatabase;->mServer:Landroid/mtp/MtpServer;

    .line 322
    :try_start_2
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mBatteryReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_9} :catch_a

    .line 325
    goto :goto_b

    .line 323
    :catch_a
    move-exception v0

    .line 327
    :goto_b
    if-eqz p1, :cond_1b

    .line 328
    iget-object p1, p0, Landroid/mtp/MtpDatabase;->mContext:Landroid/content/Context;

    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mBatteryReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 331
    :cond_1b
    return-void
.end method
