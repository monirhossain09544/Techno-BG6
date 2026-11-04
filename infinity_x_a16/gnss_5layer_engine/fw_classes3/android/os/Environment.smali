.class public Landroid/os/Environment;
.super Ljava/lang/Object;
.source "Environment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/Environment$UserEnvironment;
    }
.end annotation


# static fields
.field private static final blacklist DEFAULT_SCOPED_STORAGE:J = 0x8efaaafL

.field public static whitelist DIRECTORY_ALARMS:Ljava/lang/String; = null

.field public static final greylist-max-o DIRECTORY_ANDROID:Ljava/lang/String; = "Android"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static whitelist DIRECTORY_AUDIOBOOKS:Ljava/lang/String; = null

.field public static whitelist DIRECTORY_DCIM:Ljava/lang/String; = null

.field public static whitelist DIRECTORY_DOCUMENTS:Ljava/lang/String; = null

.field public static whitelist DIRECTORY_DOWNLOADS:Ljava/lang/String; = null

.field public static whitelist DIRECTORY_MOVIES:Ljava/lang/String; = null

.field public static whitelist DIRECTORY_MUSIC:Ljava/lang/String; = null

.field public static whitelist DIRECTORY_NOTIFICATIONS:Ljava/lang/String; = null

.field public static whitelist DIRECTORY_PICTURES:Ljava/lang/String; = null

.field public static whitelist DIRECTORY_PODCASTS:Ljava/lang/String; = null

.field public static whitelist DIRECTORY_RECORDINGS:Ljava/lang/String; = null

.field public static whitelist DIRECTORY_RINGTONES:Ljava/lang/String; = null

.field public static whitelist DIRECTORY_SCREENSHOTS:Ljava/lang/String; = null

.field public static final greylist-max-o DIR_ANDROID:Ljava/lang/String; = "Android"

.field private static final greylist-max-o DIR_ANDROID_DATA:Ljava/io/File;

.field private static final blacklist DIR_ANDROID_DATA_PATH:Ljava/lang/String;

.field private static final greylist-max-o DIR_ANDROID_EXPAND:Ljava/io/File;

.field private static final greylist-max-o DIR_ANDROID_ROOT:Ljava/io/File;

.field private static final greylist-max-o DIR_ANDROID_STORAGE:Ljava/io/File;

.field private static final blacklist DIR_APEX_ROOT:Ljava/io/File;

.field private static final greylist-max-o DIR_CACHE:Ljava/lang/String; = "cache"

.field private static final greylist-max-o DIR_DATA:Ljava/lang/String; = "data"

.field private static final greylist-max-o DIR_DOWNLOAD_CACHE:Ljava/io/File;

.field private static final greylist-max-o DIR_FILES:Ljava/lang/String; = "files"

.field private static final greylist-max-o DIR_MEDIA:Ljava/lang/String; = "media"

.field private static final blacklist DIR_METADATA:Ljava/io/File;

.field private static final greylist-max-o DIR_OBB:Ljava/lang/String; = "obb"

.field private static final greylist-max-o DIR_ODM_ROOT:Ljava/io/File;

.field private static final greylist-max-o DIR_OEM_ROOT:Ljava/io/File;

.field private static final greylist-max-o DIR_PRODUCT_ROOT:Ljava/io/File;

.field private static final blacklist DIR_SYSTEM_EXT_ROOT:Ljava/io/File;

.field public static final blacklist DIR_USER_CE:Ljava/lang/String; = "user"

.field public static final blacklist DIR_USER_DE:Ljava/lang/String; = "user_de"

.field private static final greylist-max-o DIR_VENDOR_ROOT:Ljava/io/File;

.field private static final greylist-max-o ENV_ANDROID_DATA:Ljava/lang/String; = "ANDROID_DATA"

.field private static final greylist-max-o ENV_ANDROID_EXPAND:Ljava/lang/String; = "ANDROID_EXPAND"

.field private static final greylist-max-o ENV_ANDROID_ROOT:Ljava/lang/String; = "ANDROID_ROOT"

.field private static final greylist-max-o ENV_ANDROID_STORAGE:Ljava/lang/String; = "ANDROID_STORAGE"

.field private static final blacklist ENV_APEX_ROOT:Ljava/lang/String; = "APEX_ROOT"

.field private static final greylist-max-o ENV_DOWNLOAD_CACHE:Ljava/lang/String; = "DOWNLOAD_CACHE"

.field private static final greylist-max-o ENV_EXTERNAL_STORAGE:Ljava/lang/String; = "EXTERNAL_STORAGE"

.field private static final greylist-max-o ENV_ODM_ROOT:Ljava/lang/String; = "ODM_ROOT"

.field private static final greylist-max-o ENV_OEM_ROOT:Ljava/lang/String; = "OEM_ROOT"

.field private static final greylist-max-o ENV_PRODUCT_ROOT:Ljava/lang/String; = "PRODUCT_ROOT"

.field private static final blacklist ENV_SYSTEM_EXT_ROOT:Ljava/lang/String; = "SYSTEM_EXT_ROOT"

.field private static final greylist-max-o ENV_VENDOR_ROOT:Ljava/lang/String; = "VENDOR_ROOT"

.field private static final blacklist FORCE_ENABLE_SCOPED_STORAGE:J = 0x7e81388L

.field public static final greylist-max-o HAS_ALARMS:I = 0x8

.field public static final greylist-max-o HAS_ANDROID:I = 0x10000

.field public static final blacklist HAS_AUDIOBOOKS:I = 0x400

.field public static final greylist-max-o HAS_DCIM:I = 0x100

.field public static final greylist-max-o HAS_DOCUMENTS:I = 0x200

.field public static final greylist-max-o HAS_DOWNLOADS:I = 0x80

.field public static final greylist-max-o HAS_MOVIES:I = 0x40

.field public static final greylist-max-o HAS_MUSIC:I = 0x1

.field public static final greylist-max-o HAS_NOTIFICATIONS:I = 0x10

.field public static final greylist-max-o HAS_OTHER:I = 0x20000

.field public static final greylist-max-o HAS_PICTURES:I = 0x20

.field public static final greylist-max-o HAS_PODCASTS:I = 0x2

.field public static final blacklist HAS_RECORDINGS:I = 0x800

.field public static final greylist-max-o HAS_RINGTONES:I = 0x4

.field public static final whitelist MEDIA_BAD_REMOVAL:Ljava/lang/String; = "bad_removal"

.field public static final whitelist MEDIA_CHECKING:Ljava/lang/String; = "checking"

.field public static final whitelist MEDIA_EJECTING:Ljava/lang/String; = "ejecting"

.field public static final whitelist MEDIA_MOUNTED:Ljava/lang/String; = "mounted"

.field public static final whitelist MEDIA_MOUNTED_READ_ONLY:Ljava/lang/String; = "mounted_ro"

.field public static final whitelist MEDIA_NOFS:Ljava/lang/String; = "nofs"

.field public static final whitelist MEDIA_REMOVED:Ljava/lang/String; = "removed"

.field public static final whitelist MEDIA_SHARED:Ljava/lang/String; = "shared"

.field public static final whitelist MEDIA_UNKNOWN:Ljava/lang/String; = "unknown"

.field public static final whitelist MEDIA_UNMOUNTABLE:Ljava/lang/String; = "unmountable"

.field public static final whitelist MEDIA_UNMOUNTED:Ljava/lang/String; = "unmounted"

.field public static final greylist-max-o STANDARD_DIRECTORIES:[Ljava/lang/String;

.field private static final greylist-max-o TAG:Ljava/lang/String; = "Environment"

.field private static greylist sCurrentUser:Landroid/os/Environment$UserEnvironment;

.field private static blacklist sLegacyStorageAppOp:Ljava/lang/Boolean;

.field private static blacklist sNoIsolatedStorageAppOp:Ljava/lang/Boolean;

.field private static greylist-max-o sUserRequired:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 13

    .line 106
    const-string v0, "ANDROID_ROOT"

    const-string v1, "/system"

    invoke-static {v0, v1}, Landroid/os/Environment;->getDirectory(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    sput-object v0, Landroid/os/Environment;->DIR_ANDROID_ROOT:Ljava/io/File;

    .line 107
    const-string v0, "ANDROID_DATA"

    const-string v1, "/data"

    invoke-static {v0, v1}, Landroid/os/Environment;->getDirectoryPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/Environment;->DIR_ANDROID_DATA_PATH:Ljava/lang/String;

    .line 108
    sget-object v0, Landroid/os/Environment;->DIR_ANDROID_DATA_PATH:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/Environment;->newFilePrep(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    sput-object v0, Landroid/os/Environment;->DIR_ANDROID_DATA:Ljava/io/File;

    .line 109
    const-string v0, "ANDROID_EXPAND"

    const-string v1, "/mnt/expand"

    invoke-static {v0, v1}, Landroid/os/Environment;->getDirectory(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    sput-object v0, Landroid/os/Environment;->DIR_ANDROID_EXPAND:Ljava/io/File;

    .line 110
    const-string v0, "ANDROID_STORAGE"

    const-string v1, "/storage"

    invoke-static {v0, v1}, Landroid/os/Environment;->getDirectory(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    sput-object v0, Landroid/os/Environment;->DIR_ANDROID_STORAGE:Ljava/io/File;

    .line 111
    const-string v0, "DOWNLOAD_CACHE"

    const-string v1, "/cache"

    invoke-static {v0, v1}, Landroid/os/Environment;->getDirectory(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    sput-object v0, Landroid/os/Environment;->DIR_DOWNLOAD_CACHE:Ljava/io/File;

    .line 112
    const-string v0, "/metadata"

    invoke-static {v0}, Landroid/os/Environment;->newFilePrep(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    sput-object v0, Landroid/os/Environment;->DIR_METADATA:Ljava/io/File;

    .line 113
    const-string v0, "OEM_ROOT"

    const-string v1, "/oem"

    invoke-static {v0, v1}, Landroid/os/Environment;->getDirectory(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    sput-object v0, Landroid/os/Environment;->DIR_OEM_ROOT:Ljava/io/File;

    .line 114
    const-string v0, "ODM_ROOT"

    const-string v1, "/odm"

    invoke-static {v0, v1}, Landroid/os/Environment;->getDirectory(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    sput-object v0, Landroid/os/Environment;->DIR_ODM_ROOT:Ljava/io/File;

    .line 115
    const-string v0, "VENDOR_ROOT"

    const-string v1, "/vendor"

    invoke-static {v0, v1}, Landroid/os/Environment;->getDirectory(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    sput-object v0, Landroid/os/Environment;->DIR_VENDOR_ROOT:Ljava/io/File;

    .line 116
    const-string v0, "PRODUCT_ROOT"

    const-string v1, "/product"

    invoke-static {v0, v1}, Landroid/os/Environment;->getDirectory(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    sput-object v0, Landroid/os/Environment;->DIR_PRODUCT_ROOT:Ljava/io/File;

    .line 117
    const-string v0, "SYSTEM_EXT_ROOT"

    const-string v1, "/system_ext"

    invoke-static {v0, v1}, Landroid/os/Environment;->getDirectory(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    sput-object v0, Landroid/os/Environment;->DIR_SYSTEM_EXT_ROOT:Ljava/io/File;

    .line 119
    const-string v0, "APEX_ROOT"

    const-string v1, "/apex"

    invoke-static {v0, v1}, Landroid/os/Environment;->getDirectory(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    sput-object v0, Landroid/os/Environment;->DIR_APEX_ROOT:Ljava/io/File;

    .line 217
    invoke-static {}, Landroid/os/Environment;->initForCurrentUser()V

    .line 872
    const-string v0, "Music"

    sput-object v0, Landroid/os/Environment;->DIRECTORY_MUSIC:Ljava/lang/String;

    .line 884
    const-string v0, "Podcasts"

    sput-object v0, Landroid/os/Environment;->DIRECTORY_PODCASTS:Ljava/lang/String;

    .line 896
    const-string v0, "Ringtones"

    sput-object v0, Landroid/os/Environment;->DIRECTORY_RINGTONES:Ljava/lang/String;

    .line 908
    const-string v0, "Alarms"

    sput-object v0, Landroid/os/Environment;->DIRECTORY_ALARMS:Ljava/lang/String;

    .line 920
    const-string v0, "Notifications"

    sput-object v0, Landroid/os/Environment;->DIRECTORY_NOTIFICATIONS:Ljava/lang/String;

    .line 928
    const-string v0, "Pictures"

    sput-object v0, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    .line 936
    const-string v0, "Movies"

    sput-object v0, Landroid/os/Environment;->DIRECTORY_MOVIES:Ljava/lang/String;

    .line 946
    const-string v0, "Download"

    sput-object v0, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    .line 953
    const-string v0, "DCIM"

    sput-object v0, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    .line 959
    const-string v0, "Documents"

    sput-object v0, Landroid/os/Environment;->DIRECTORY_DOCUMENTS:Ljava/lang/String;

    .line 966
    const-string v0, "Screenshots"

    sput-object v0, Landroid/os/Environment;->DIRECTORY_SCREENSHOTS:Ljava/lang/String;

    .line 978
    const-string v0, "Audiobooks"

    sput-object v0, Landroid/os/Environment;->DIRECTORY_AUDIOBOOKS:Ljava/lang/String;

    .line 999
    const-string v0, "Recordings"

    sput-object v0, Landroid/os/Environment;->DIRECTORY_RECORDINGS:Ljava/lang/String;

    .line 1021
    sget-object v1, Landroid/os/Environment;->DIRECTORY_MUSIC:Ljava/lang/String;

    sget-object v2, Landroid/os/Environment;->DIRECTORY_PODCASTS:Ljava/lang/String;

    sget-object v3, Landroid/os/Environment;->DIRECTORY_RINGTONES:Ljava/lang/String;

    sget-object v4, Landroid/os/Environment;->DIRECTORY_ALARMS:Ljava/lang/String;

    sget-object v5, Landroid/os/Environment;->DIRECTORY_NOTIFICATIONS:Ljava/lang/String;

    sget-object v6, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    sget-object v7, Landroid/os/Environment;->DIRECTORY_MOVIES:Ljava/lang/String;

    sget-object v8, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    sget-object v9, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    sget-object v10, Landroid/os/Environment;->DIRECTORY_DOCUMENTS:Ljava/lang/String;

    sget-object v11, Landroid/os/Environment;->DIRECTORY_AUDIOBOOKS:Ljava/lang/String;

    sget-object v12, Landroid/os/Environment;->DIRECTORY_RECORDINGS:Ljava/lang/String;

    filled-new-array/range {v1 .. v12}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/Environment;->STANDARD_DIRECTORIES:[Ljava/lang/String;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist addCanonicalFile(Ljava/util/List;Ljava/io/File;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    .line 772
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_7} :catch_8

    .line 776
    goto :goto_2e

    .line 773
    :catch_8
    move-exception v0

    .line 774
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to resolve "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Environment"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 777
    :goto_2e
    return-void
.end method

.method public static greylist buildExternalStorageAndroidDataDirs()[Ljava/io/File;
    .registers 1

    .line 1167
    invoke-static {}, Landroid/os/Environment;->throwIfUserRequired()V

    .line 1168
    sget-object v0, Landroid/os/Environment;->sCurrentUser:Landroid/os/Environment$UserEnvironment;

    invoke-virtual {v0}, Landroid/os/Environment$UserEnvironment;->buildExternalStorageAndroidDataDirs()[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist buildExternalStorageAndroidObbDirs()[Ljava/io/File;
    .registers 1

    .line 1176
    invoke-static {}, Landroid/os/Environment;->throwIfUserRequired()V

    .line 1177
    sget-object v0, Landroid/os/Environment;->sCurrentUser:Landroid/os/Environment$UserEnvironment;

    invoke-virtual {v0}, Landroid/os/Environment$UserEnvironment;->buildExternalStorageAndroidObbDirs()[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static greylist buildExternalStorageAppCacheDirs(Ljava/lang/String;)[Ljava/io/File;
    .registers 2

    .line 1226
    invoke-static {}, Landroid/os/Environment;->throwIfUserRequired()V

    .line 1227
    sget-object v0, Landroid/os/Environment;->sCurrentUser:Landroid/os/Environment$UserEnvironment;

    invoke-virtual {v0, p0}, Landroid/os/Environment$UserEnvironment;->buildExternalStorageAppCacheDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static greylist buildExternalStorageAppDataDirs(Ljava/lang/String;)[Ljava/io/File;
    .registers 2

    .line 1186
    invoke-static {}, Landroid/os/Environment;->throwIfUserRequired()V

    .line 1187
    sget-object v0, Landroid/os/Environment;->sCurrentUser:Landroid/os/Environment$UserEnvironment;

    invoke-virtual {v0, p0}, Landroid/os/Environment$UserEnvironment;->buildExternalStorageAppDataDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static greylist buildExternalStorageAppFilesDirs(Ljava/lang/String;)[Ljava/io/File;
    .registers 2

    .line 1216
    invoke-static {}, Landroid/os/Environment;->throwIfUserRequired()V

    .line 1217
    sget-object v0, Landroid/os/Environment;->sCurrentUser:Landroid/os/Environment$UserEnvironment;

    invoke-virtual {v0, p0}, Landroid/os/Environment$UserEnvironment;->buildExternalStorageAppFilesDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static greylist buildExternalStorageAppMediaDirs(Ljava/lang/String;)[Ljava/io/File;
    .registers 2

    .line 1196
    invoke-static {}, Landroid/os/Environment;->throwIfUserRequired()V

    .line 1197
    sget-object v0, Landroid/os/Environment;->sCurrentUser:Landroid/os/Environment$UserEnvironment;

    invoke-virtual {v0, p0}, Landroid/os/Environment$UserEnvironment;->buildExternalStorageAppMediaDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static greylist-max-r buildExternalStorageAppObbDirs(Ljava/lang/String;)[Ljava/io/File;
    .registers 2

    .line 1206
    invoke-static {}, Landroid/os/Environment;->throwIfUserRequired()V

    .line 1207
    sget-object v0, Landroid/os/Environment;->sCurrentUser:Landroid/os/Environment$UserEnvironment;

    invoke-virtual {v0, p0}, Landroid/os/Environment$UserEnvironment;->buildExternalStorageAppObbDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist buildExternalStoragePublicDirs(Ljava/lang/String;)[Ljava/io/File;
    .registers 2

    .line 1232
    invoke-static {}, Landroid/os/Environment;->throwIfUserRequired()V

    .line 1233
    sget-object v0, Landroid/os/Environment;->sCurrentUser:Landroid/os/Environment$UserEnvironment;

    invoke-virtual {v0, p0}, Landroid/os/Environment$UserEnvironment;->buildExternalStoragePublicDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static varargs blacklist buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;
    .registers 6

    .line 1656
    nop

    .line 1657
    array-length v0, p1

    const/4 v1, 0x0

    :goto_3
    if-ge v1, v0, :cond_18

    aget-object v2, p1, v1

    .line 1658
    if-nez p0, :cond_f

    .line 1659
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_15

    .line 1661
    :cond_f
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object p0, v3

    .line 1657
    :goto_15
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1665
    :cond_18
    return-object p0
.end method

.method private static varargs blacklist buildPathPrep(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;
    .registers 2

    .line 1669
    invoke-static {p0, p1}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-static {p0}, Landroid/os/Environment;->prep(Ljava/io/File;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static varargs greylist buildPaths([Ljava/io/File;[Ljava/lang/String;)[Ljava/io/File;
    .registers 5

    .line 1642
    array-length v0, p0

    new-array v0, v0, [Ljava/io/File;

    .line 1643
    const/4 v1, 0x0

    :goto_4
    array-length v2, p0

    if-ge v1, v2, :cond_12

    .line 1644
    aget-object v2, p0, v1

    invoke-static {v2, p1}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1643
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1646
    :cond_12
    return-object v0
.end method

.method public static greylist-max-o classifyExternalStorageDirectory(Ljava/io/File;)I
    .registers 7

    .line 1073
    nop

    .line 1074
    invoke-static {p0}, Landroid/os/FileUtils;->listFilesOrEmpty(Ljava/io/File;)[Ljava/io/File;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_8
    if-ge v1, v0, :cond_c6

    aget-object v3, p0, v1

    .line 1075
    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v4

    const/high16 v5, 0x20000

    if-eqz v4, :cond_1d

    invoke-static {v3}, Landroid/os/Environment;->isInterestingFile(Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 1076
    or-int/2addr v2, v5

    goto/16 :goto_c2

    .line 1077
    :cond_1d
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_c2

    invoke-static {v3}, Landroid/os/Environment;->hasInterestingFiles(Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_c2

    .line 1078
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    .line 1079
    sget-object v4, Landroid/os/Environment;->DIRECTORY_MUSIC:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_39

    or-int/lit8 v2, v2, 0x1

    goto/16 :goto_c2

    .line 1080
    :cond_39
    sget-object v4, Landroid/os/Environment;->DIRECTORY_PODCASTS:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_45

    or-int/lit8 v2, v2, 0x2

    goto/16 :goto_c2

    .line 1081
    :cond_45
    sget-object v4, Landroid/os/Environment;->DIRECTORY_RINGTONES:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_51

    or-int/lit8 v2, v2, 0x4

    goto/16 :goto_c2

    .line 1082
    :cond_51
    sget-object v4, Landroid/os/Environment;->DIRECTORY_ALARMS:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5d

    or-int/lit8 v2, v2, 0x8

    goto/16 :goto_c2

    .line 1083
    :cond_5d
    sget-object v4, Landroid/os/Environment;->DIRECTORY_NOTIFICATIONS:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_68

    or-int/lit8 v2, v2, 0x10

    goto :goto_c2

    .line 1084
    :cond_68
    sget-object v4, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_73

    or-int/lit8 v2, v2, 0x20

    goto :goto_c2

    .line 1085
    :cond_73
    sget-object v4, Landroid/os/Environment;->DIRECTORY_MOVIES:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7e

    or-int/lit8 v2, v2, 0x40

    goto :goto_c2

    .line 1086
    :cond_7e
    sget-object v4, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_89

    or-int/lit16 v2, v2, 0x80

    goto :goto_c2

    .line 1087
    :cond_89
    sget-object v4, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_94

    or-int/lit16 v2, v2, 0x100

    goto :goto_c2

    .line 1088
    :cond_94
    sget-object v4, Landroid/os/Environment;->DIRECTORY_DOCUMENTS:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9f

    or-int/lit16 v2, v2, 0x200

    goto :goto_c2

    .line 1089
    :cond_9f
    sget-object v4, Landroid/os/Environment;->DIRECTORY_AUDIOBOOKS:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_aa

    or-int/lit16 v2, v2, 0x400

    goto :goto_c2

    .line 1090
    :cond_aa
    sget-object v4, Landroid/os/Environment;->DIRECTORY_RECORDINGS:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b5

    or-int/lit16 v2, v2, 0x800

    goto :goto_c2

    .line 1091
    :cond_b5
    const-string v4, "Android"

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c1

    const/high16 v3, 0x10000

    or-int/2addr v2, v3

    goto :goto_c2

    .line 1092
    :cond_c1
    or-int/2addr v2, v5

    .line 1074
    :cond_c2
    :goto_c2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_8

    .line 1095
    :cond_c6
    return v2
.end method

.method public static blacklist getApexDirectory()Ljava/io/File;
    .registers 1

    .line 383
    sget-object v0, Landroid/os/Environment;->DIR_APEX_ROOT:Ljava/io/File;

    return-object v0
.end method

.method public static greylist-max-o getDataAppDirectory(Ljava/lang/String;)Ljava/io/File;
    .registers 2

    .line 601
    invoke-static {p0}, Landroid/os/Environment;->getDataDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    const-string v0, "app"

    invoke-static {p0, v0}, Landroid/os/Environment;->newFilePrep(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static whitelist getDataCePackageDirectoryForUser(Ljava/util/UUID;Landroid/os/UserHandle;Ljava/lang/String;)Ljava/io/File;
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 647
    invoke-static {p0}, Landroid/os/storage/StorageManager;->convert(Ljava/util/UUID;)Ljava/lang/String;

    move-result-object p0

    .line 648
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    invoke-static {p0, p1, p2}, Landroid/os/Environment;->getDataUserCePackageDirectory(Ljava/lang/String;ILjava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static whitelist getDataDePackageDirectoryForUser(Ljava/util/UUID;Landroid/os/UserHandle;Ljava/lang/String;)Ljava/io/File;
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 689
    invoke-static {p0}, Landroid/os/storage/StorageManager;->convert(Ljava/util/UUID;)Ljava/lang/String;

    move-result-object p0

    .line 690
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    invoke-static {p0, p1, p2}, Landroid/os/Environment;->getDataUserDePackageDirectory(Ljava/lang/String;ILjava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static whitelist getDataDirectory()Ljava/io/File;
    .registers 1

    .line 425
    sget-object v0, Landroid/os/Environment;->DIR_ANDROID_DATA:Ljava/io/File;

    return-object v0
.end method

.method public static greylist-max-o getDataDirectory(Ljava/lang/String;)Ljava/io/File;
    .registers 3

    .line 438
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 439
    sget-object p0, Landroid/os/Environment;->DIR_ANDROID_DATA:Ljava/io/File;

    return-object p0

    .line 441
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/mnt/expand/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/os/Environment;->newFilePrep(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist getDataDirectoryPath()Ljava/lang/String;
    .registers 1

    .line 433
    sget-object v0, Landroid/os/Environment;->DIR_ANDROID_DATA_PATH:Ljava/lang/String;

    return-object v0
.end method

.method public static blacklist getDataDirectoryPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 447
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 448
    sget-object p0, Landroid/os/Environment;->DIR_ANDROID_DATA_PATH:Ljava/lang/String;

    return-object p0

    .line 450
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExpandDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/os/Environment;->prep(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static greylist-max-o getDataMiscCeDirectory()Ljava/io/File;
    .registers 2

    .line 538
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    const-string v1, "misc_ce"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/Environment;->buildPathPrep(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o getDataMiscCeDirectory(I)Ljava/io/File;
    .registers 3

    .line 543
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    const-string v1, "misc_ce"

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    filled-new-array {v1, p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/os/Environment;->buildPathPrep(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist getDataMiscCeDirectory(Ljava/lang/String;I)Ljava/io/File;
    .registers 3

    .line 548
    invoke-static {p0}, Landroid/os/Environment;->getDataDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    const-string v0, "misc_ce"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    filled-new-array {v0, p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/os/Environment;->buildPathPrep(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist getDataMiscCeSharedSdkSandboxDirectory(Ljava/lang/String;ILjava/lang/String;)Ljava/io/File;
    .registers 4

    .line 554
    invoke-static {p0, p1}, Landroid/os/Environment;->getDataMiscCeDirectory(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p0

    const-string/jumbo p1, "sdksandbox"

    const-string/jumbo v0, "shared"

    filled-new-array {p1, p2, v0}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/os/Environment;->buildPathPrep(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static greylist-max-o getDataMiscDeDirectory(I)Ljava/io/File;
    .registers 3

    .line 560
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    const-string v1, "misc_de"

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    filled-new-array {v1, p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/os/Environment;->buildPathPrep(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist getDataMiscDeDirectory(Ljava/lang/String;I)Ljava/io/File;
    .registers 3

    .line 565
    invoke-static {p0}, Landroid/os/Environment;->getDataDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    const-string v0, "misc_de"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    filled-new-array {v0, p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/os/Environment;->buildPathPrep(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist getDataMiscDeSharedSdkSandboxDirectory(Ljava/lang/String;ILjava/lang/String;)Ljava/io/File;
    .registers 4

    .line 571
    invoke-static {p0, p1}, Landroid/os/Environment;->getDataMiscDeDirectory(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p0

    const-string/jumbo p1, "sdksandbox"

    const-string/jumbo v0, "shared"

    filled-new-array {p1, p2, v0}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/os/Environment;->buildPathPrep(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static greylist-max-o getDataMiscDirectory()Ljava/io/File;
    .registers 2

    .line 533
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    const-string v1, "misc"

    invoke-static {v0, v1}, Landroid/os/Environment;->newFilePrep(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o getDataPreloadsAppsDirectory()Ljava/io/File;
    .registers 2

    .line 717
    invoke-static {}, Landroid/os/Environment;->getDataPreloadsDirectory()Ljava/io/File;

    move-result-object v0

    const-string v1, "apps"

    invoke-static {v0, v1}, Landroid/os/Environment;->newFilePrep(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o getDataPreloadsDemoDirectory()Ljava/io/File;
    .registers 2

    .line 709
    invoke-static {}, Landroid/os/Environment;->getDataPreloadsDirectory()Ljava/io/File;

    move-result-object v0

    const-string v1, "demo"

    invoke-static {v0, v1}, Landroid/os/Environment;->newFilePrep(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o getDataPreloadsDirectory()Ljava/io/File;
    .registers 2

    .line 701
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    const-string/jumbo v1, "preloads"

    invoke-static {v0, v1}, Landroid/os/Environment;->newFilePrep(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o getDataPreloadsFileCacheDirectory()Ljava/io/File;
    .registers 2

    .line 743
    invoke-static {}, Landroid/os/Environment;->getDataPreloadsDirectory()Ljava/io/File;

    move-result-object v0

    const-string v1, "file_cache"

    invoke-static {v0, v1}, Landroid/os/Environment;->newFilePrep(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o getDataPreloadsFileCacheDirectory(Ljava/lang/String;)Ljava/io/File;
    .registers 2

    .line 734
    invoke-static {}, Landroid/os/Environment;->getDataPreloadsFileCacheDirectory()Ljava/io/File;

    move-result-object v0

    invoke-static {v0, p0}, Landroid/os/Environment;->newFilePrep(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static greylist-max-o getDataPreloadsMediaDirectory()Ljava/io/File;
    .registers 2

    .line 725
    invoke-static {}, Landroid/os/Environment;->getDataPreloadsDirectory()Ljava/io/File;

    move-result-object v0

    const-string v1, "media"

    invoke-static {v0, v1}, Landroid/os/Environment;->newFilePrep(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private static greylist-max-o getDataProfilesDeDirectory(I)Ljava/io/File;
    .registers 5

    .line 576
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    const-string v1, "cur"

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string v2, "misc"

    const-string/jumbo v3, "profiles"

    filled-new-array {v2, v3, v1, p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/os/Environment;->buildPathPrep(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static greylist-max-o getDataProfilesDePackageDirectory(ILjava/lang/String;)Ljava/io/File;
    .registers 2

    .line 596
    invoke-static {p0}, Landroid/os/Environment;->getDataProfilesDeDirectory(I)Ljava/io/File;

    move-result-object p0

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/os/Environment;->buildPathPrep(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static greylist-max-o getDataRefProfilesDePackageDirectory(Ljava/lang/String;)Ljava/io/File;
    .registers 5

    .line 591
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    const-string/jumbo v1, "profiles"

    const-string/jumbo v2, "ref"

    const-string v3, "misc"

    filled-new-array {v3, v1, v2, p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/os/Environment;->buildPathPrep(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist getDataStagingDirectory(Ljava/lang/String;)Ljava/io/File;
    .registers 2

    .line 606
    invoke-static {p0}, Landroid/os/Environment;->getDataDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    const-string v0, "app-staging"

    invoke-static {p0, v0}, Landroid/os/Environment;->newFilePrep(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static greylist-max-o getDataSystemCeDirectory()Ljava/io/File;
    .registers 2

    .line 488
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    const-string/jumbo v1, "system_ce"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/Environment;->buildPathPrep(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o getDataSystemCeDirectory(I)Ljava/io/File;
    .registers 3

    .line 508
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    const-string/jumbo v1, "system_ce"

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    filled-new-array {v1, p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/os/Environment;->buildPathPrep(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static greylist-max-o getDataSystemDeDirectory()Ljava/io/File;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 480
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    const-string/jumbo v1, "system_de"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/Environment;->buildPathPrep(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o getDataSystemDeDirectory(I)Ljava/io/File;
    .registers 3

    .line 528
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    const-string/jumbo v1, "system_de"

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    filled-new-array {v1, p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/os/Environment;->buildPathPrep(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static whitelist getDataSystemDeviceProtectedDirectory()Ljava/io/File;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 472
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    const-string/jumbo v1, "system_de"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/Environment;->buildPathPrep(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static greylist getDataSystemDirectory()Ljava/io/File;
    .registers 2

    .line 462
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    const-string/jumbo v1, "system"

    invoke-static {v0, v1}, Landroid/os/Environment;->newFilePrep(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o getDataUserCeDirectory(Ljava/lang/String;)Ljava/io/File;
    .registers 2

    .line 611
    invoke-static {p0}, Landroid/os/Environment;->getDataDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    const-string/jumbo v0, "user"

    invoke-static {p0, v0}, Landroid/os/Environment;->newFilePrep(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static greylist-max-o getDataUserCeDirectory(Ljava/lang/String;I)Ljava/io/File;
    .registers 2

    .line 616
    invoke-static {p0}, Landroid/os/Environment;->getDataUserCeDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/os/Environment;->newFilePrep(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static greylist-max-o getDataUserCePackageDirectory(Ljava/lang/String;ILjava/lang/String;)Ljava/io/File;
    .registers 3

    .line 624
    invoke-static {p0, p1}, Landroid/os/Environment;->getDataUserCeDirectory(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p0

    invoke-static {p0, p2}, Landroid/os/Environment;->newFilePrep(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static greylist-max-o getDataUserDeDirectory(Ljava/lang/String;)Ljava/io/File;
    .registers 2

    .line 653
    invoke-static {p0}, Landroid/os/Environment;->getDataDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    const-string/jumbo v0, "user_de"

    invoke-static {p0, v0}, Landroid/os/Environment;->newFilePrep(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static greylist-max-o getDataUserDeDirectory(Ljava/lang/String;I)Ljava/io/File;
    .registers 2

    .line 658
    invoke-static {p0}, Landroid/os/Environment;->getDataUserDeDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/os/Environment;->newFilePrep(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static greylist-max-o getDataUserDePackageDirectory(Ljava/lang/String;ILjava/lang/String;)Ljava/io/File;
    .registers 3

    .line 666
    invoke-static {p0, p1}, Landroid/os/Environment;->getDataUserDeDirectory(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p0

    invoke-static {p0, p2}, Landroid/os/Environment;->newFilePrep(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static greylist-max-o getDataVendorCeDirectory(I)Ljava/io/File;
    .registers 3

    .line 581
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    const-string/jumbo v1, "vendor_ce"

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    filled-new-array {v1, p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/os/Environment;->buildPathPrep(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static greylist-max-o getDataVendorDeDirectory(I)Ljava/io/File;
    .registers 3

    .line 586
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    const-string/jumbo v1, "vendor_de"

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    filled-new-array {v1, p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/os/Environment;->buildPathPrep(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method private static greylist-max-o getDirectory(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .registers 3

    .line 1613
    new-instance v0, Ljava/io/File;

    invoke-static {p0, p1}, Landroid/os/Environment;->getDirectoryPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static blacklist getDirectoryPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 1619
    invoke-static {p0}, Landroid/os/Environment;->getEnvPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1620
    if-nez p0, :cond_7

    goto :goto_8

    :cond_7
    move-object p1, p0

    :goto_8
    invoke-static {p1}, Landroid/os/Environment;->prep(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static whitelist getDownloadCacheDirectory()Ljava/io/File;
    .registers 1

    .line 1240
    sget-object v0, Landroid/os/Environment;->DIR_DOWNLOAD_CACHE:Ljava/io/File;

    return-object v0
.end method

.method private static blacklist getEnvPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .line 213
    invoke-static {p0}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static greylist-max-o getExpandDirectory()Ljava/io/File;
    .registers 1

    .line 456
    sget-object v0, Landroid/os/Environment;->DIR_ANDROID_EXPAND:Ljava/io/File;

    return-object v0
.end method

.method public static whitelist getExternalStorageDirectory()Ljava/io/File;
    .registers 2

    .line 845
    invoke-static {}, Landroid/os/Environment;->throwIfUserRequired()V

    .line 846
    sget-object v0, Landroid/os/Environment;->sCurrentUser:Landroid/os/Environment$UserEnvironment;

    invoke-virtual {v0}, Landroid/os/Environment$UserEnvironment;->getExternalDirs()[Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static whitelist getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;
    .registers 2

    .line 1157
    invoke-static {}, Landroid/os/Environment;->throwIfUserRequired()V

    .line 1158
    sget-object v0, Landroid/os/Environment;->sCurrentUser:Landroid/os/Environment$UserEnvironment;

    invoke-virtual {v0, p0}, Landroid/os/Environment$UserEnvironment;->buildExternalStoragePublicDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object p0

    const/4 v0, 0x0

    aget-object p0, p0, v0

    return-object p0
.end method

.method public static whitelist getExternalStorageState()Ljava/lang/String;
    .registers 2

    .line 1347
    sget-object v0, Landroid/os/Environment;->sCurrentUser:Landroid/os/Environment$UserEnvironment;

    invoke-virtual {v0}, Landroid/os/Environment$UserEnvironment;->getExternalDirs()[Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 1348
    invoke-static {v0}, Landroid/os/Environment;->getExternalStorageState(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist getExternalStorageState(Ljava/io/File;)Ljava/lang/String;
    .registers 2

    .line 1372
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, v0}, Landroid/os/storage/StorageManager;->getStorageVolume(Ljava/io/File;I)Landroid/os/storage/StorageVolume;

    move-result-object p0

    .line 1373
    if-eqz p0, :cond_f

    .line 1374
    invoke-virtual {p0}, Landroid/os/storage/StorageVolume;->getState()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1376
    :cond_f
    const-string/jumbo p0, "unknown"

    return-object p0
.end method

.method public static whitelist getInternalMediaDirectories()Ljava/util/Collection;
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 763
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 764
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "media"

    invoke-static {v1, v2}, Landroid/os/Environment;->newFilePrep(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/Environment;->addCanonicalFile(Ljava/util/List;Ljava/io/File;)V

    .line 765
    invoke-static {}, Landroid/os/Environment;->getOemDirectory()Ljava/io/File;

    move-result-object v1

    invoke-static {v1, v2}, Landroid/os/Environment;->newFilePrep(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/Environment;->addCanonicalFile(Ljava/util/List;Ljava/io/File;)V

    .line 766
    invoke-static {}, Landroid/os/Environment;->getProductDirectory()Ljava/io/File;

    move-result-object v1

    invoke-static {v1, v2}, Landroid/os/Environment;->newFilePrep(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/Environment;->addCanonicalFile(Ljava/util/List;Ljava/io/File;)V

    .line 767
    return-object v0
.end method

.method public static greylist getLegacyExternalStorageDirectory()Ljava/io/File;
    .registers 1

    .line 853
    const-string v0, "EXTERNAL_STORAGE"

    invoke-static {v0}, Landroid/os/Environment;->getEnvPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Environment;->newFilePrep(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-r getLegacyExternalStorageObbDirectory()Ljava/io/File;
    .registers 3

    .line 860
    invoke-static {}, Landroid/os/Environment;->getLegacyExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    const-string v1, "Android"

    const-string/jumbo v2, "obb"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/Environment;->buildPathPrep(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getMetadataDirectory()Ljava/io/File;
    .registers 1

    .line 1249
    sget-object v0, Landroid/os/Environment;->DIR_METADATA:Ljava/io/File;

    return-object v0
.end method

.method public static whitelist getOdmDirectory()Ljava/io/File;
    .registers 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 326
    sget-object v0, Landroid/os/Environment;->DIR_ODM_ROOT:Ljava/io/File;

    return-object v0
.end method

.method public static whitelist getOemDirectory()Ljava/io/File;
    .registers 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 315
    sget-object v0, Landroid/os/Environment;->DIR_OEM_ROOT:Ljava/io/File;

    return-object v0
.end method

.method public static blacklist getPackageCacheDirectory()Ljava/io/File;
    .registers 2

    .line 751
    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v0

    const-string/jumbo v1, "package_cache"

    invoke-static {v0, v1}, Landroid/os/Environment;->newFilePrep(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist getProductDirectory()Ljava/io/File;
    .registers 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 347
    sget-object v0, Landroid/os/Environment;->DIR_PRODUCT_ROOT:Ljava/io/File;

    return-object v0
.end method

.method public static whitelist getProductServicesDirectory()Ljava/io/File;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 362
    const-string v0, "PRODUCT_SERVICES_ROOT"

    const-string v1, "/product_services"

    invoke-static {v0, v1}, Landroid/os/Environment;->getDirectory(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist getRootDirectory()Ljava/io/File;
    .registers 1

    .line 295
    sget-object v0, Landroid/os/Environment;->DIR_ANDROID_ROOT:Ljava/io/File;

    return-object v0
.end method

.method public static whitelist getStorageDirectory()Ljava/io/File;
    .registers 1

    .line 304
    sget-object v0, Landroid/os/Environment;->DIR_ANDROID_STORAGE:Ljava/io/File;

    return-object v0
.end method

.method public static whitelist getStorageState(Ljava/io/File;)Ljava/lang/String;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1357
    invoke-static {p0}, Landroid/os/Environment;->getExternalStorageState(Ljava/io/File;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static whitelist getSystemExtDirectory()Ljava/io/File;
    .registers 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 373
    sget-object v0, Landroid/os/Environment;->DIR_SYSTEM_EXT_ROOT:Ljava/io/File;

    return-object v0
.end method

.method public static greylist-max-o getUserConfigDirectory(I)Ljava/io/File;
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 417
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    .line 418
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    const-string v3, "misc"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string/jumbo v2, "user"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    .line 417
    invoke-static {v0, p0}, Landroid/os/Environment;->newFilePrep(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static greylist-max-o getUserSystemDirectory(I)Ljava/io/File;
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 400
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "users"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/os/Environment;->newFilePrep(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static whitelist getVendorDirectory()Ljava/io/File;
    .registers 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 336
    sget-object v0, Landroid/os/Environment;->DIR_VENDOR_ROOT:Ljava/io/File;

    return-object v0
.end method

.method private static greylist-max-o hasInterestingFiles(Ljava/io/File;)Z
    .registers 6

    .line 1099
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    .line 1100
    invoke-virtual {v0, p0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 1101
    :cond_8
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result p0

    const/4 v1, 0x0

    if-nez p0, :cond_32

    .line 1102
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/io/File;

    .line 1103
    invoke-static {p0}, Landroid/os/FileUtils;->listFilesOrEmpty(Ljava/io/File;)[Ljava/io/File;

    move-result-object p0

    array-length v2, p0

    :goto_1a
    if-ge v1, v2, :cond_8

    aget-object v3, p0, v1

    .line 1104
    invoke-static {v3}, Landroid/os/Environment;->isInterestingFile(Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_26

    const/4 p0, 0x1

    return p0

    .line 1105
    :cond_26
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_2f

    invoke-virtual {v0, v3}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 1103
    :cond_2f
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    .line 1108
    :cond_32
    return v1
.end method

.method public static greylist initForCurrentUser()V
    .registers 2

    .line 223
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    .line 224
    new-instance v1, Landroid/os/Environment$UserEnvironment;

    invoke-direct {v1, v0}, Landroid/os/Environment$UserEnvironment;-><init>(I)V

    sput-object v1, Landroid/os/Environment;->sCurrentUser:Landroid/os/Environment$UserEnvironment;

    .line 225
    return-void
.end method

.method public static whitelist isExternalStorageEmulated()Z
    .registers 2

    .line 1430
    sget-object v0, Landroid/os/Environment;->sCurrentUser:Landroid/os/Environment$UserEnvironment;

    invoke-virtual {v0}, Landroid/os/Environment$UserEnvironment;->getExternalDirs()[Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 1431
    invoke-static {v0}, Landroid/os/Environment;->isExternalStorageEmulated(Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method public static whitelist isExternalStorageEmulated(Ljava/io/File;)Z
    .registers 4

    .line 1451
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, v0}, Landroid/os/storage/StorageManager;->getStorageVolume(Ljava/io/File;I)Landroid/os/storage/StorageVolume;

    move-result-object v0

    .line 1452
    if-eqz v0, :cond_f

    .line 1453
    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->isEmulated()Z

    move-result p0

    return p0

    .line 1455
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to find storage device at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist isExternalStorageLegacy()Z
    .registers 2

    .line 1473
    sget-object v0, Landroid/os/Environment;->sCurrentUser:Landroid/os/Environment$UserEnvironment;

    invoke-virtual {v0}, Landroid/os/Environment$UserEnvironment;->getExternalDirs()[Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 1474
    invoke-static {v0}, Landroid/os/Environment;->isExternalStorageLegacy(Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method public static whitelist isExternalStorageLegacy(Ljava/io/File;)Z
    .registers 6

    .line 1494
    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object p0

    .line 1495
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1497
    invoke-static {v0}, Landroid/os/Process;->isIsolated(I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_a2

    invoke-static {v0}, Landroid/os/Process;->isSdkSandboxUid(I)Z

    move-result v1

    if-eqz v1, :cond_19

    goto/16 :goto_a2

    .line 1501
    :cond_19
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1502
    invoke-virtual {v1}, Landroid/content/pm/PackageManager;->isInstantApp()Z

    move-result v3

    if-eqz v3, :cond_24

    .line 1503
    return v2

    .line 1507
    :cond_24
    invoke-static {}, Landroid/app/AppGlobals;->getInitialPackage()Ljava/lang/String;

    move-result-object v3

    .line 1509
    :try_start_28
    const-string v4, "android.internal.PROPERTY_NO_APP_DATA_STORAGE"

    invoke-virtual {v1, v4, v3}, Landroid/content/pm/PackageManager;->getProperty(Ljava/lang/String;Ljava/lang/String;)Landroid/content/pm/PackageManager$Property;

    move-result-object v1

    .line 1511
    if-eqz v1, :cond_37

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$Property;->getBoolean()Z

    move-result v1
    :try_end_34
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_28 .. :try_end_34} :catch_38

    if-eqz v1, :cond_37

    .line 1512
    return v2

    .line 1516
    :cond_37
    goto :goto_39

    .line 1514
    :catch_38
    move-exception v1

    .line 1518
    :goto_39
    const-wide/32 v3, 0x8efaaaf

    invoke-static {v3, v4}, Landroid/compat/Compatibility;->isChangeEnabled(J)Z

    move-result v1

    .line 1519
    const-wide/32 v3, 0x7e81388

    invoke-static {v3, v4}, Landroid/compat/Compatibility;->isChangeEnabled(J)Z

    move-result v3

    .line 1523
    invoke-static {v1, v3}, Landroid/os/Environment;->isScopedStorageEnforced(ZZ)Z

    move-result v4

    if-eqz v4, :cond_4e

    .line 1524
    return v2

    .line 1528
    :cond_4e
    invoke-static {v1, v3}, Landroid/os/Environment;->isScopedStorageDisabled(ZZ)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_56

    .line 1529
    return v3

    .line 1532
    :cond_56
    const-class v1, Landroid/app/AppOpsManager;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager;

    .line 1533
    invoke-virtual {p0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object p0

    .line 1535
    sget-object v4, Landroid/os/Environment;->sLegacyStorageAppOp:Ljava/lang/Boolean;

    if-nez v4, :cond_78

    .line 1536
    nop

    .line 1537
    const/16 v4, 0x57

    invoke-virtual {v1, v4, v0, p0}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v4

    if-nez v4, :cond_71

    move v4, v3

    goto :goto_72

    :cond_71
    move v4, v2

    :goto_72
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    sput-object v4, Landroid/os/Environment;->sLegacyStorageAppOp:Ljava/lang/Boolean;

    .line 1540
    :cond_78
    sget-object v4, Landroid/os/Environment;->sLegacyStorageAppOp:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_87

    .line 1541
    sget-object p0, Landroid/os/Environment;->sLegacyStorageAppOp:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    .line 1546
    :cond_87
    sget-object v4, Landroid/os/Environment;->sNoIsolatedStorageAppOp:Ljava/lang/Boolean;

    if-nez v4, :cond_9b

    .line 1547
    nop

    .line 1548
    const/16 v4, 0x63

    invoke-virtual {v1, v4, v0, p0}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result p0

    if-nez p0, :cond_95

    move v2, v3

    :cond_95
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Landroid/os/Environment;->sNoIsolatedStorageAppOp:Ljava/lang/Boolean;

    .line 1551
    :cond_9b
    sget-object p0, Landroid/os/Environment;->sNoIsolatedStorageAppOp:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    .line 1498
    :cond_a2
    :goto_a2
    return v2
.end method

.method public static whitelist isExternalStorageManager()Z
    .registers 2

    .line 1576
    sget-object v0, Landroid/os/Environment;->sCurrentUser:Landroid/os/Environment$UserEnvironment;

    invoke-virtual {v0}, Landroid/os/Environment$UserEnvironment;->getExternalDirs()[Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 1577
    invoke-static {v0}, Landroid/os/Environment;->isExternalStorageManager(Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method public static whitelist isExternalStorageManager(Ljava/io/File;)Z
    .registers 6

    .line 1589
    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    .line 1590
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1591
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1593
    const-class v2, Landroid/app/AppOpsManager;

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AppOpsManager;

    .line 1594
    nop

    .line 1595
    const/16 v3, 0x5c

    invoke-virtual {v2, v3, v1, v0}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v0

    .line 1597
    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_58

    .line 1608
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown AppOpsManager mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1599
    :pswitch_47
    nop

    .line 1601
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    .line 1600
    const-string v4, "android.permission.MANAGE_EXTERNAL_STORAGE"

    invoke-virtual {p0, v4, v0, v1}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result p0

    if-nez p0, :cond_55

    move v2, v3

    .line 1599
    :cond_55
    return v2

    .line 1606
    :pswitch_56
    return v2

    .line 1603
    :pswitch_57
    return v3

    :pswitch_data_58
    .packed-switch 0x0
        :pswitch_57
        :pswitch_56
        :pswitch_56
        :pswitch_47
    .end packed-switch
.end method

.method public static whitelist isExternalStorageRemovable()Z
    .registers 2

    .line 1390
    sget-object v0, Landroid/os/Environment;->sCurrentUser:Landroid/os/Environment$UserEnvironment;

    invoke-virtual {v0}, Landroid/os/Environment$UserEnvironment;->getExternalDirs()[Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 1391
    invoke-static {v0}, Landroid/os/Environment;->isExternalStorageRemovable(Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method public static whitelist isExternalStorageRemovable(Ljava/io/File;)Z
    .registers 4

    .line 1406
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, v0}, Landroid/os/storage/StorageManager;->getStorageVolume(Ljava/io/File;I)Landroid/os/storage/StorageVolume;

    move-result-object v0

    .line 1407
    if-eqz v0, :cond_f

    .line 1408
    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result p0

    return p0

    .line 1410
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to find storage device at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static greylist-max-o isInterestingFile(Ljava/io/File;)Z
    .registers 3

    .line 1112
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_33

    .line 1113
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 1114
    const-string v0, ".exe"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_32

    const-string v0, "autorun.inf"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_32

    .line 1115
    const-string v0, "launchpad.zip"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_32

    const-string v0, ".nomedia"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_30

    goto :goto_32

    .line 1118
    :cond_30
    const/4 p0, 0x1

    return p0

    .line 1116
    :cond_32
    :goto_32
    return v1

    .line 1121
    :cond_33
    return v1
.end method

.method private static blacklist isScopedStorageDisabled(ZZ)Z
    .registers 2

    .line 1563
    if-nez p0, :cond_6

    if-nez p1, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method private static blacklist isScopedStorageEnforced(ZZ)Z
    .registers 2

    .line 1557
    if-eqz p0, :cond_6

    if-eqz p1, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public static greylist-max-o isStandardDirectory(Ljava/lang/String;)Z
    .registers 6

    .line 1040
    sget-object v0, Landroid/os/Environment;->STANDARD_DIRECTORIES:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_5
    if-ge v3, v1, :cond_14

    aget-object v4, v0, v3

    .line 1041
    invoke-virtual {v4, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 1042
    const/4 p0, 0x1

    return p0

    .line 1040
    :cond_11
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 1045
    :cond_14
    return v2
.end method

.method public static greylist maybeTranslateEmulatedPathToInternal(Ljava/io/File;)Ljava/io/File;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1688
    invoke-static {p0}, Landroid/os/storage/StorageManager;->maybeTranslateEmulatedPathToInternal(Ljava/io/File;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist newFilePrep(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .registers 3

    .line 205
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0}, Landroid/os/Environment;->prep(Ljava/io/File;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist newFilePrep(Ljava/lang/String;)Ljava/io/File;
    .registers 2

    .line 195
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/os/Environment;->prep(Ljava/io/File;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist newFilePrep(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .registers 3

    .line 200
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Landroid/os/Environment;->prep(Ljava/io/File;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist prep(Ljava/io/File;)Ljava/io/File;
    .registers 1

    .line 181
    return-object p0
.end method

.method private static blacklist prep(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .line 187
    return-object p0
.end method

.method public static greylist-max-o setUserRequired(Z)V
    .registers 1

    .line 1625
    sput-boolean p0, Landroid/os/Environment;->sUserRequired:Z

    .line 1626
    return-void
.end method

.method private static greylist-max-o throwIfUserRequired()V
    .registers 3

    .line 1629
    sget-boolean v0, Landroid/os/Environment;->sUserRequired:Z

    if-eqz v0, :cond_10

    .line 1630
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    const-string v1, "Environment"

    const-string v2, "Path requests must specify a user by using UserEnvironment"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1633
    :cond_10
    return-void
.end method
