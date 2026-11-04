.class public Lcom/android/internal/os/ZygoteInit;
.super Ljava/lang/Object;
.source "ZygoteInit.java"


# static fields
.field private static final blacklist ABI_LIST_ARG:Ljava/lang/String; = "--abi-list="

.field private static final blacklist LOGGING_DEBUG:Z = false

.field private static final blacklist LOG_BOOT_PROGRESS_PRELOAD_END:I = 0xbd6

.field private static final blacklist LOG_BOOT_PROGRESS_PRELOAD_START:I = 0xbcc

.field private static final blacklist PRELOADED_CLASSES:Ljava/lang/String; = "/system/etc/preloaded-classes"

.field private static final blacklist PROPERTY_DISABLE_GRAPHICS_DRIVER_PRELOADING:Ljava/lang/String; = "ro.zygote.disable_gl_preload"

.field private static final blacklist ROOT_GID:I = 0x0

.field private static final blacklist ROOT_UID:I = 0x0

.field private static final blacklist SOCKET_NAME_ARG:Ljava/lang/String; = "--socket-name="

.field private static final blacklist TAG:Ljava/lang/String; = "Zygote"

.field private static final blacklist UNPRIVILEGED_GID:I = 0x270f

.field private static final blacklist UNPRIVILEGED_UID:I = 0x270f

.field private static blacklist sCachedSystemServerClassLoader:Ljava/lang/ClassLoader;

.field private static blacklist sPreloadComplete:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 125
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/os/ZygoteInit;->sCachedSystemServerClassLoader:Ljava/lang/ClassLoader;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 993
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 994
    return-void
.end method

.method private static blacklist addLibraryIfExists(Ljava/util/List;Landroid/content/pm/SharedLibraryInfo;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/SharedLibraryInfo;",
            ">;",
            "Landroid/content/pm/SharedLibraryInfo;",
            ")Z"
        }
    .end annotation

    .line 494
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/pm/SharedLibraryInfo;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_11

    .line 495
    const/4 p0, 0x0

    return p0

    .line 497
    :cond_11
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 498
    const/4 p0, 0x1

    return p0
.end method

.method private static blacklist addSystemFrameworkLibraryIfExists(Ljava/util/List;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/SharedLibraryInfo;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 490
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/system/framework/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".jar"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/internal/os/ZygoteInit;->newBuiltinLibrary(Ljava/lang/String;Ljava/lang/String;)Landroid/content/pm/SharedLibraryInfo;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/internal/os/ZygoteInit;->addLibraryIfExists(Ljava/util/List;Landroid/content/pm/SharedLibraryInfo;)Z

    .line 491
    return-void
.end method

.method private static blacklist beginPreload()V
    .registers 2

    .line 184
    const-string v0, "Zygote"

    const-string v1, "Calling ZygoteHooks.beginPreload()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    invoke-static {}, Ldalvik/system/ZygoteHooks;->onBeginPreload()V

    .line 187
    return-void
.end method

.method private static blacklist cacheNonBootClasspathClassLoaders()V
    .registers 15

    .line 405
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 409
    new-instance v1, Landroid/content/pm/SharedLibraryInfo;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-string v2, "/system/framework/android.hidl.base-V1.0-java.jar"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct/range {v1 .. v12}, Landroid/content/pm/SharedLibraryInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;JILandroid/content/pm/VersionedPackage;Ljava/util/List;Ljava/util/List;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 414
    new-instance v2, Landroid/content/pm/SharedLibraryInfo;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-string v3, "/system/framework/android.hidl.manager-V1.0-java.jar"

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v2 .. v13}, Landroid/content/pm/SharedLibraryInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;JILandroid/content/pm/VersionedPackage;Ljava/util/List;Ljava/util/List;Z)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 420
    nop

    .line 421
    const-string v1, "/system/framework/android.test.base.jar"

    const-string v2, "android.test.base"

    invoke-static {v1, v2}, Lcom/android/internal/os/ZygoteInit;->newBuiltinLibrary(Ljava/lang/String;Ljava/lang/String;)Landroid/content/pm/SharedLibraryInfo;

    move-result-object v1

    .line 422
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 424
    nop

    .line 425
    const-string v2, "/system/framework/android.test.mock.jar"

    const-string v3, "android.test.mock"

    invoke-static {v2, v3}, Lcom/android/internal/os/ZygoteInit;->newBuiltinLibrary(Ljava/lang/String;Ljava/lang/String;)Landroid/content/pm/SharedLibraryInfo;

    move-result-object v2

    .line 426
    invoke-static {v0, v2}, Lcom/android/internal/os/ZygoteInit;->addLibraryIfExists(Ljava/util/List;Landroid/content/pm/SharedLibraryInfo;)Z

    move-result v3

    if-eqz v3, :cond_5b

    .line 427
    new-instance v3, Ljava/util/ArrayList;

    const/4 v4, 0x2

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 428
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 429
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 430
    const-string v1, "/system/framework/android.test.runner.jar"

    const-string v2, "android.test.runner"

    invoke-static {v1, v2, v3}, Lcom/android/internal/os/ZygoteInit;->newBuiltinLibrary(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Landroid/content/pm/SharedLibraryInfo;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/os/ZygoteInit;->addLibraryIfExists(Ljava/util/List;Landroid/content/pm/SharedLibraryInfo;)Z

    .line 436
    :cond_5b
    new-instance v2, Landroid/content/pm/SharedLibraryInfo;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-string v3, "/system/framework/org.apache.http.legacy.jar"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct/range {v2 .. v13}, Landroid/content/pm/SharedLibraryInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;JILandroid/content/pm/VersionedPackage;Ljava/util/List;Ljava/util/List;Z)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 445
    new-instance v1, Ljava/io/File;

    const-string v2, "/system/framework/com.android.media.remotedisplay.jar"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_90

    .line 446
    new-instance v2, Landroid/content/pm/SharedLibraryInfo;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-string v3, "/system/framework/com.android.media.remotedisplay.jar"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct/range {v2 .. v13}, Landroid/content/pm/SharedLibraryInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;JILandroid/content/pm/VersionedPackage;Ljava/util/List;Ljava/util/List;Z)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 453
    :cond_90
    new-instance v1, Ljava/io/File;

    const-string v2, "/system/framework/com.android.location.provider.jar"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_b1

    .line 454
    new-instance v2, Landroid/content/pm/SharedLibraryInfo;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-string v3, "/system/framework/com.android.location.provider.jar"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct/range {v2 .. v13}, Landroid/content/pm/SharedLibraryInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;JILandroid/content/pm/VersionedPackage;Ljava/util/List;Ljava/util/List;Z)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 461
    :cond_b1
    const-string v1, "com.android.future.usb.accessory"

    invoke-static {v0, v1}, Lcom/android/internal/os/ZygoteInit;->addSystemFrameworkLibraryIfExists(Ljava/util/List;Ljava/lang/String;)V

    .line 462
    const-string v1, "com.android.mediadrm.signer"

    invoke-static {v0, v1}, Lcom/android/internal/os/ZygoteInit;->addSystemFrameworkLibraryIfExists(Ljava/util/List;Ljava/lang/String;)V

    .line 463
    const-string v1, "com.android.nfc_extras"

    invoke-static {v0, v1}, Lcom/android/internal/os/ZygoteInit;->addSystemFrameworkLibraryIfExists(Ljava/util/List;Ljava/lang/String;)V

    .line 464
    const-string v1, "javax.obex"

    invoke-static {v0, v1}, Lcom/android/internal/os/ZygoteInit;->addSystemFrameworkLibraryIfExists(Ljava/util/List;Ljava/lang/String;)V

    .line 469
    sget-boolean v1, Landroid/view/WindowManager;->HAS_WINDOW_EXTENSIONS_ON_DEVICE:Z

    if-eqz v1, :cond_124

    .line 470
    new-instance v1, Ljava/io/File;

    .line 471
    invoke-static {}, Landroid/os/Environment;->getSystemExtDirectory()Ljava/io/File;

    move-result-object v2

    const-string v3, "framework"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 472
    new-instance v2, Landroid/content/pm/SharedLibraryInfo;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/androidx.window.extensions.jar"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-string v4, "androidx.window.extensions"

    const/4 v5, 0x0

    const-string v6, "androidx.window.extensions"

    const-wide/16 v7, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct/range {v2 .. v13}, Landroid/content/pm/SharedLibraryInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;JILandroid/content/pm/VersionedPackage;Ljava/util/List;Ljava/util/List;Z)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 478
    new-instance v3, Landroid/content/pm/SharedLibraryInfo;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/androidx.window.sidecar.jar"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v13, 0x0

    const/4 v14, 0x0

    const-string v5, "androidx.window.sidecar"

    const/4 v6, 0x0

    const-string v7, "androidx.window.sidecar"

    const-wide/16 v8, -0x1

    const/4 v10, 0x0

    invoke-direct/range {v3 .. v14}, Landroid/content/pm/SharedLibraryInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;JILandroid/content/pm/VersionedPackage;Ljava/util/List;Ljava/util/List;Z)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 486
    :cond_124
    invoke-static {}, Landroid/app/ApplicationLoaders;->getDefault()Landroid/app/ApplicationLoaders;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/ApplicationLoaders;->createAndCacheNonBootclasspathSystemClassLoaders(Ljava/util/List;)V

    .line 487
    return-void
.end method

.method static blacklist childZygoteInit([Ljava/lang/String;)Ljava/lang/Runnable;
    .registers 3

    .line 1031
    new-instance v0, Lcom/android/internal/os/RuntimeInit$Arguments;

    invoke-direct {v0, p0}, Lcom/android/internal/os/RuntimeInit$Arguments;-><init>([Ljava/lang/String;)V

    .line 1032
    iget-object p0, v0, Lcom/android/internal/os/RuntimeInit$Arguments;->startClass:Ljava/lang/String;

    iget-object v0, v0, Lcom/android/internal/os/RuntimeInit$Arguments;->startArgs:[Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/internal/os/RuntimeInit;->findStaticMain(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Runnable;

    move-result-object p0

    return-object p0
.end method

.method static blacklist createPathClassLoader(Ljava/lang/String;I)Ljava/lang/ClassLoader;
    .registers 10

    .line 713
    const-string v0, "java.library.path"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 716
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v4

    .line 718
    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v3, v2

    move-object v1, p0

    move v5, p1

    invoke-static/range {v1 .. v7}, Lcom/android/internal/os/ClassLoaderFactory;->createClassLoader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;IZLjava/lang/String;)Ljava/lang/ClassLoader;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist endPreload()V
    .registers 2

    .line 190
    invoke-static {}, Ldalvik/system/ZygoteHooks;->onEndPreload()V

    .line 192
    const-string v0, "Zygote"

    const-string v1, "Called ZygoteHooks.endPreload()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    return-void
.end method

.method private static blacklist forkSystemServer(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/os/ZygoteServer;)Ljava/lang/Runnable;
    .registers 13

    .line 730
    sget v0, Landroid/system/OsConstants;->CAP_IPC_LOCK:I

    const-wide/16 v1, 0x1

    shl-long v3, v1, v0

    sget v0, Landroid/system/OsConstants;->CAP_KILL:I

    shl-long v5, v1, v0

    or-long/2addr v3, v5

    sget v0, Landroid/system/OsConstants;->CAP_NET_ADMIN:I

    shl-long v5, v1, v0

    or-long/2addr v3, v5

    sget v0, Landroid/system/OsConstants;->CAP_NET_BIND_SERVICE:I

    shl-long v5, v1, v0

    or-long/2addr v3, v5

    sget v0, Landroid/system/OsConstants;->CAP_NET_BROADCAST:I

    shl-long v5, v1, v0

    or-long/2addr v3, v5

    sget v0, Landroid/system/OsConstants;->CAP_NET_RAW:I

    shl-long v5, v1, v0

    or-long/2addr v3, v5

    sget v0, Landroid/system/OsConstants;->CAP_SYS_NICE:I

    shl-long v5, v1, v0

    or-long/2addr v3, v5

    sget v0, Landroid/system/OsConstants;->CAP_SYS_PTRACE:I

    shl-long v5, v1, v0

    or-long/2addr v3, v5

    sget v0, Landroid/system/OsConstants;->CAP_SYS_TIME:I

    shl-long v5, v1, v0

    or-long/2addr v3, v5

    sget v0, Landroid/system/OsConstants;->CAP_SYS_TTY_CONFIG:I

    shl-long v5, v1, v0

    or-long/2addr v3, v5

    sget v0, Landroid/system/OsConstants;->CAP_WAKE_ALARM:I

    shl-long v5, v1, v0

    or-long/2addr v3, v5

    sget v0, Landroid/system/OsConstants;->CAP_BLOCK_SUSPEND:I

    shl-long v0, v1, v0

    or-long/2addr v0, v3

    .line 744
    new-instance v2, Landroid/system/StructCapUserHeader;

    sget v3, Landroid/system/OsConstants;->_LINUX_CAPABILITY_VERSION_3:I

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/system/StructCapUserHeader;-><init>(II)V

    .line 748
    :try_start_45
    invoke-static {v2}, Landroid/system/Os;->capget(Landroid/system/StructCapUserHeader;)[Landroid/system/StructCapUserData;

    move-result-object v2
    :try_end_49
    .catch Landroid/system/ErrnoException; {:try_start_45 .. :try_end_49} :catch_168

    .line 751
    nop

    .line 752
    aget-object v3, v2, v4

    iget v3, v3, Landroid/system/StructCapUserData;->effective:I

    invoke-static {v3}, Ljava/lang/Integer;->toUnsignedLong(I)J

    move-result-wide v3

    const/4 v5, 0x1

    aget-object v2, v2, v5

    iget v2, v2, Landroid/system/StructCapUserData;->effective:I

    .line 753
    invoke-static {v2}, Ljava/lang/Integer;->toUnsignedLong(I)J

    move-result-wide v5

    const/16 v2, 0x20

    shl-long/2addr v5, v2

    or-long v2, v3, v5

    and-long/2addr v0, v2

    .line 756
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "--capabilities="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v7, "--target-sdk-version=10000"

    const-string v8, "com.android.server.SystemServer"

    const-string v1, "--setuid=1000"

    const-string v2, "--setgid=1000"

    const-string v3, "--setgroups=1001,1002,1003,1004,1005,1006,1007,1008,1009,1010,1018,1021,1023,1024,1032,1065,3001,3002,3003,3005,3006,3007,3009,3010,3011,3012"

    const-string v5, "--nice-name=system_server"

    const-string v6, "--runtime-args"

    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v0

    .line 772
    :try_start_90
    new-instance v1, Lcom/android/internal/os/ZygoteCommandBuffer;

    invoke-direct {v1, v0}, Lcom/android/internal/os/ZygoteCommandBuffer;-><init>([Ljava/lang/String;)V
    :try_end_95
    .catch Ljava/lang/IllegalArgumentException; {:try_start_90 .. :try_end_95} :catch_160

    .line 774
    :try_start_95
    invoke-static {v1}, Lcom/android/internal/os/ZygoteArguments;->getInstance(Lcom/android/internal/os/ZygoteCommandBuffer;)Lcom/android/internal/os/ZygoteArguments;

    move-result-object v0
    :try_end_99
    .catch Ljava/io/EOFException; {:try_start_95 .. :try_end_99} :catch_156
    .catch Ljava/lang/IllegalArgumentException; {:try_start_95 .. :try_end_99} :catch_160

    .line 777
    nop

    .line 778
    :try_start_9a
    invoke-virtual {v1}, Lcom/android/internal/os/ZygoteCommandBuffer;->close()V

    .line 779
    invoke-static {v0}, Lcom/android/internal/os/Zygote;->applyDebuggerSystemProperty(Lcom/android/internal/os/ZygoteArguments;)V

    .line 780
    invoke-static {v0}, Lcom/android/internal/os/Zygote;->applyInvokeWithSystemProperty(Lcom/android/internal/os/ZygoteArguments;)V

    .line 782
    invoke-static {}, Lcom/android/internal/os/Zygote;->nativeSupportsMemoryTagging()Z

    move-result v1

    if-eqz v1, :cond_10d

    .line 783
    const-string v1, "persist.arm64.memtag.system_server"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 784
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2
    :try_end_b5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9a .. :try_end_b5} :catch_160

    const-string v3, "async"

    if-eqz v2, :cond_bf

    .line 788
    :try_start_b9
    const-string v1, "persist.arm64.memtag.default"

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 790
    :cond_bf
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_cd

    .line 791
    iget v1, v0, Lcom/android/internal/os/ZygoteArguments;->mRuntimeFlags:I

    const/high16 v2, 0x100000

    or-int/2addr v1, v2

    iput v1, v0, Lcom/android/internal/os/ZygoteArguments;->mRuntimeFlags:I

    goto :goto_11b

    .line 792
    :cond_cd
    const-string v2, "sync"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_dd

    .line 793
    iget v1, v0, Lcom/android/internal/os/ZygoteArguments;->mRuntimeFlags:I

    const/high16 v2, 0x180000

    or-int/2addr v1, v2

    iput v1, v0, Lcom/android/internal/os/ZygoteArguments;->mRuntimeFlags:I

    goto :goto_11b

    .line 794
    :cond_dd
    const-string v2, "off"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11b

    .line 796
    iget v2, v0, Lcom/android/internal/os/ZygoteArguments;->mRuntimeFlags:I

    invoke-static {}, Lcom/android/internal/os/Zygote;->nativeCurrentTaggingLevel()I

    move-result v3

    or-int/2addr v2, v3

    iput v2, v0, Lcom/android/internal/os/ZygoteArguments;->mRuntimeFlags:I

    .line 797
    const-string v2, "Zygote"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown memory tag level for the system server: \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11b

    .line 799
    :cond_10d
    invoke-static {}, Lcom/android/internal/os/Zygote;->nativeSupportsTaggedPointers()Z

    move-result v1

    if-eqz v1, :cond_11b

    .line 802
    iget v1, v0, Lcom/android/internal/os/ZygoteArguments;->mRuntimeFlags:I

    const/high16 v2, 0x80000

    or-int/2addr v1, v2

    iput v1, v0, Lcom/android/internal/os/ZygoteArguments;->mRuntimeFlags:I

    goto :goto_11c

    .line 799
    :cond_11b
    :goto_11b
    nop

    .line 807
    :goto_11c
    iget v1, v0, Lcom/android/internal/os/ZygoteArguments;->mRuntimeFlags:I

    const/high16 v2, 0x200000

    or-int/2addr v1, v2

    iput v1, v0, Lcom/android/internal/os/ZygoteArguments;->mRuntimeFlags:I

    .line 809
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->shouldProfileSystemServer()Z

    move-result v1

    if-eqz v1, :cond_12f

    .line 810
    iget v1, v0, Lcom/android/internal/os/ZygoteArguments;->mRuntimeFlags:I

    or-int/lit16 v1, v1, 0x4000

    iput v1, v0, Lcom/android/internal/os/ZygoteArguments;->mRuntimeFlags:I

    .line 814
    :cond_12f
    iget v1, v0, Lcom/android/internal/os/ZygoteArguments;->mUid:I

    iget v2, v0, Lcom/android/internal/os/ZygoteArguments;->mGid:I

    iget-object v3, v0, Lcom/android/internal/os/ZygoteArguments;->mGids:[I

    iget v4, v0, Lcom/android/internal/os/ZygoteArguments;->mRuntimeFlags:I

    iget-wide v6, v0, Lcom/android/internal/os/ZygoteArguments;->mPermittedCapabilities:J

    iget-wide v8, v0, Lcom/android/internal/os/ZygoteArguments;->mEffectiveCapabilities:J

    const/4 v5, 0x0

    invoke-static/range {v1 .. v9}, Lcom/android/internal/os/Zygote;->forkSystemServer(II[II[[IJJ)I

    move-result v1
    :try_end_140
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b9 .. :try_end_140} :catch_160

    .line 823
    nop

    .line 826
    if-nez v1, :cond_154

    .line 827
    invoke-static {p0}, Lcom/android/internal/os/ZygoteInit;->hasSecondZygote(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_14c

    .line 828
    invoke-static {p1}, Lcom/android/internal/os/ZygoteInit;->waitForSecondaryZygote(Ljava/lang/String;)V

    .line 831
    :cond_14c
    invoke-virtual {p2}, Lcom/android/internal/os/ZygoteServer;->closeServerSocket()V

    .line 832
    invoke-static {v0}, Lcom/android/internal/os/ZygoteInit;->handleSystemServerProcess(Lcom/android/internal/os/ZygoteArguments;)Ljava/lang/Runnable;

    move-result-object p0

    return-object p0

    .line 835
    :cond_154
    const/4 p0, 0x0

    return-object p0

    .line 775
    :catch_156
    move-exception v0

    move-object p0, v0

    .line 776
    :try_start_158
    new-instance p1, Ljava/lang/AssertionError;

    const-string p2, "Unexpected argument error for forking system server"

    invoke-direct {p1, p2, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
    :try_end_160
    .catch Ljava/lang/IllegalArgumentException; {:try_start_158 .. :try_end_160} :catch_160

    .line 821
    :catch_160
    move-exception v0

    move-object p0, v0

    .line 822
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 749
    :catch_168
    move-exception v0

    move-object p0, v0

    .line 750
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Failed to capget()"

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method private static blacklist gcAndFinalize()V
    .registers 0

    .line 516
    invoke-static {}, Ldalvik/system/ZygoteHooks;->gcAndFinalize()V

    .line 517
    return-void
.end method

.method private static blacklist getOrCreateSystemServerClassLoader()Ljava/lang/ClassLoader;
    .registers 2

    .line 606
    sget-object v0, Lcom/android/internal/os/ZygoteInit;->sCachedSystemServerClassLoader:Ljava/lang/ClassLoader;

    if-nez v0, :cond_14

    .line 607
    const-string v0, "SYSTEMSERVERCLASSPATH"

    invoke-static {v0}, Landroid/system/Os;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 608
    if-eqz v0, :cond_14

    .line 609
    const/16 v1, 0x2710

    invoke-static {v0, v1}, Lcom/android/internal/os/ZygoteInit;->createPathClassLoader(Ljava/lang/String;I)Ljava/lang/ClassLoader;

    move-result-object v0

    sput-object v0, Lcom/android/internal/os/ZygoteInit;->sCachedSystemServerClassLoader:Ljava/lang/ClassLoader;

    .line 613
    :cond_14
    sget-object v0, Lcom/android/internal/os/ZygoteInit;->sCachedSystemServerClassLoader:Ljava/lang/ClassLoader;

    return-object v0
.end method

.method private static blacklist handleSystemServerProcess(Lcom/android/internal/os/ZygoteArguments;)Ljava/lang/Runnable;
    .registers 13

    .line 524
    sget v0, Landroid/system/OsConstants;->S_IRWXG:I

    sget v1, Landroid/system/OsConstants;->S_IRWXO:I

    or-int/2addr v0, v1

    invoke-static {v0}, Landroid/system/Os;->umask(I)I

    .line 526
    iget-object v0, p0, Lcom/android/internal/os/ZygoteArguments;->mNiceName:Ljava/lang/String;

    if-eqz v0, :cond_11

    .line 527
    iget-object v0, p0, Lcom/android/internal/os/ZygoteArguments;->mNiceName:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/Process;->setArgV0(Ljava/lang/String;)V

    .line 530
    :cond_11
    const-string v0, "SYSTEMSERVERCLASSPATH"

    invoke-static {v0}, Landroid/system/Os;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 531
    const/4 v2, 0x1

    const-string v3, "1"

    const/4 v4, 0x0

    const/4 v5, 0x2

    const-string v6, "Zygote"

    if-eqz v1, :cond_5f

    .line 534
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->shouldProfileSystemServer()Z

    move-result v0

    if-eqz v0, :cond_5f

    sget-boolean v0, Landroid/os/Build;->IS_USERDEBUG:Z

    if-nez v0, :cond_2e

    sget-boolean v0, Landroid/os/Build;->IS_ENG:Z

    if-eqz v0, :cond_5f

    .line 536
    :cond_2e
    :try_start_2e
    const-string v0, "Preparing system server profile"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    const-string v0, "STANDALONE_SYSTEMSERVER_JARS"

    .line 538
    invoke-static {v0}, Landroid/system/Os;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 539
    if-eqz v0, :cond_48

    .line 540
    const-string v7, ":"

    new-array v8, v5, [Ljava/lang/CharSequence;

    aput-object v1, v8, v4

    aput-object v0, v8, v2

    invoke-static {v7, v8}, Ljava/lang/String;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_49

    .line 541
    :cond_48
    move-object v0, v1

    .line 542
    :goto_49
    invoke-static {v0}, Lcom/android/internal/os/ZygoteInit;->prepareSystemServerProfile(Ljava/lang/String;)V
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_4c} :catch_59

    .line 544
    :try_start_4c
    const-string v0, "debug.tracing.profile_system_server"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_51
    .catch Ljava/lang/RuntimeException; {:try_start_4c .. :try_end_51} :catch_52
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_51} :catch_59

    .line 547
    goto :goto_58

    .line 545
    :catch_52
    move-exception v0

    .line 546
    :try_start_53
    const-string v7, "Failed to set debug.tracing.profile_system_server"

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_58} :catch_59

    .line 550
    :goto_58
    goto :goto_5f

    .line 548
    :catch_59
    move-exception v0

    .line 549
    const-string v7, "Failed to set up system server profile"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 557
    :cond_5f
    :goto_5f
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->shouldProfileBootClasspath()Z

    move-result v0

    if-eqz v0, :cond_71

    .line 559
    :try_start_65
    const-string v0, "debug.tracing.profile_boot_classpath"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6a
    .catch Ljava/lang/RuntimeException; {:try_start_65 .. :try_end_6a} :catch_6b

    .line 562
    goto :goto_71

    .line 560
    :catch_6b
    move-exception v0

    .line 561
    const-string v3, "Failed to set debug.tracing.profile_boot_classpath"

    invoke-static {v6, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 565
    :cond_71
    :goto_71
    iget-object v0, p0, Lcom/android/internal/os/ZygoteArguments;->mInvokeWith:Ljava/lang/String;

    if-eqz v0, :cond_a0

    .line 566
    iget-object v0, p0, Lcom/android/internal/os/ZygoteArguments;->mRemainingArgs:[Ljava/lang/String;

    .line 570
    if-eqz v1, :cond_89

    .line 571
    array-length v3, v0

    add-int/2addr v3, v5

    new-array v3, v3, [Ljava/lang/String;

    .line 572
    const-string v6, "-cp"

    aput-object v6, v3, v4

    .line 573
    aput-object v1, v3, v2

    .line 574
    array-length v1, v0

    invoke-static {v0, v4, v3, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 575
    move-object v11, v3

    goto :goto_8a

    .line 570
    :cond_89
    move-object v11, v0

    .line 578
    :goto_8a
    iget-object v6, p0, Lcom/android/internal/os/ZygoteArguments;->mInvokeWith:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/internal/os/ZygoteArguments;->mNiceName:Ljava/lang/String;

    iget v8, p0, Lcom/android/internal/os/ZygoteArguments;->mTargetSdkVersion:I

    .line 580
    invoke-static {}, Ldalvik/system/VMRuntime;->getCurrentInstructionSet()Ljava/lang/String;

    move-result-object v9

    .line 578
    const/4 v10, 0x0

    invoke-static/range {v6 .. v11}, Lcom/android/internal/os/WrapperInit;->execApplication(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/io/FileDescriptor;[Ljava/lang/String;)V

    .line 582
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Unexpected return from WrapperInit.execApplication"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 584
    :cond_a0
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->getOrCreateSystemServerClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 585
    if-eqz v0, :cond_ad

    .line 586
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    .line 592
    :cond_ad
    iget v1, p0, Lcom/android/internal/os/ZygoteArguments;->mTargetSdkVersion:I

    iget-object v2, p0, Lcom/android/internal/os/ZygoteArguments;->mDisabledCompatChanges:[J

    iget-object p0, p0, Lcom/android/internal/os/ZygoteArguments;->mRemainingArgs:[Ljava/lang/String;

    invoke-static {v1, v2, p0, v0}, Lcom/android/internal/os/ZygoteInit;->zygoteInit(I[J[Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Runnable;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist hasSecondZygote(Ljava/lang/String;)Z
    .registers 2

    .line 977
    const-string v0, "ro.product.cpu.abilist"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private static blacklist isExperimentEnabled(Ljava/lang/String;)Z
    .registers 4

    .line 260
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dalvik.vm."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 264
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "persist.device_config.runtime_native_boot."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method static blacklist isPreloadComplete()Z
    .registers 1

    .line 987
    sget-boolean v0, Lcom/android/internal/os/ZygoteInit;->sPreloadComplete:Z

    return v0
.end method

.method static blacklist lazyPreload()V
    .registers 4

    .line 177
    sget-boolean v0, Lcom/android/internal/os/ZygoteInit;->sPreloadComplete:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 178
    const-string v0, "Zygote"

    const-string v1, "Lazily preloading resources."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    new-instance v0, Landroid/util/TimingsTraceLog;

    const-string v1, "ZygoteInitTiming_lazy"

    const-wide/16 v2, 0x4000

    invoke-direct {v0, v1, v2, v3}, Landroid/util/TimingsTraceLog;-><init>(Ljava/lang/String;J)V

    invoke-static {v0}, Lcom/android/internal/os/ZygoteInit;->preload(Landroid/util/TimingsTraceLog;)V

    .line 181
    return-void
.end method

.method public static greylist main([Ljava/lang/String;)V
    .registers 17

    .line 852
    move-object/from16 v0, p0

    const-string v1, "--socket-name="

    const-string v2, "--abi-list="

    const-string v3, "Zygote"

    .line 856
    invoke-static {}, Ldalvik/system/ZygoteHooks;->startZygoteNoThreadCreation()V

    .line 860
    const/4 v4, 0x0

    :try_start_c
    invoke-static {v4, v4}, Landroid/system/Os;->setpgid(II)V
    :try_end_f
    .catch Landroid/system/ErrnoException; {:try_start_c .. :try_end_f} :catch_138

    .line 863
    nop

    .line 868
    :try_start_10
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 869
    const-string v8, "1"

    const-string v9, "sys.boot_completed"

    .line 870
    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 869
    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 872
    invoke-static {}, Landroid/os/Process;->is64Bit()Z

    move-result v9

    if-eqz v9, :cond_29

    const-string v9, "Zygote64Timing"

    goto :goto_2b

    :cond_29
    const-string v9, "Zygote32Timing"

    .line 873
    :goto_2b
    new-instance v10, Landroid/util/TimingsTraceLog;

    const-wide/16 v11, 0x4000

    invoke-direct {v10, v9, v11, v12}, Landroid/util/TimingsTraceLog;-><init>(Ljava/lang/String;J)V

    .line 875
    const-string v9, "ZygoteInit"

    invoke-virtual {v10, v9}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    .line 876
    invoke-static {}, Lcom/android/internal/os/RuntimeInit;->preForkInit()V
    :try_end_3a
    .catchall {:try_start_10 .. :try_end_3a} :catchall_129

    .line 878
    nop

    .line 879
    nop

    .line 880
    nop

    .line 881
    nop

    .line 882
    const-string v9, "zygote"

    move v12, v4

    move-object v14, v9

    const/4 v13, 0x1

    const/4 v15, 0x0

    :goto_44
    :try_start_44
    array-length v5, v0

    if-ge v13, v5, :cond_a2

    .line 883
    const-string v5, "start-system-server"

    aget-object v11, v0, v13

    invoke-virtual {v5, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_53

    .line 884
    const/4 v12, 0x1

    goto :goto_84

    .line 885
    :cond_53
    const-string v5, "--enable-lazy-preload"

    aget-object v11, v0, v13

    invoke-virtual {v5, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5f

    .line 886
    const/4 v4, 0x1

    goto :goto_84

    .line 887
    :cond_5f
    aget-object v5, v0, v13

    invoke-virtual {v5, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_72

    .line 888
    aget-object v5, v0, v13

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v5, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    goto :goto_84

    .line 889
    :cond_72
    aget-object v5, v0, v13

    invoke-virtual {v5, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_87

    .line 890
    aget-object v5, v0, v13

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v5, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    .line 882
    :goto_84
    add-int/lit8 v13, v13, 0x1

    goto :goto_44

    .line 892
    :cond_87
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown command line argument: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v0, v0, v13

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 896
    :cond_a2
    invoke-virtual {v14, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 897
    if-nez v8, :cond_bf

    .line 898
    const/16 v1, 0xf0

    if-eqz v0, :cond_b2

    .line 899
    const/16 v2, 0x11

    invoke-static {v1, v2, v6, v7}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIJ)V

    goto :goto_bf

    .line 902
    :cond_b2
    const-string v2, "zygote_secondary"

    invoke-virtual {v14, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_bf

    .line 903
    const/16 v2, 0x12

    invoke-static {v1, v2, v6, v7}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIJ)V

    .line 909
    :cond_bf
    :goto_bf
    if-eqz v15, :cond_121

    .line 915
    if-nez v4, :cond_e2

    .line 916
    const-string v1, "ZygotePreload"

    invoke-virtual {v10, v1}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    .line 917
    nop

    .line 918
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 917
    const/16 v4, 0xbcc

    invoke-static {v4, v1, v2}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 919
    invoke-static {v10}, Lcom/android/internal/os/ZygoteInit;->preload(Landroid/util/TimingsTraceLog;)V

    .line 920
    nop

    .line 921
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 920
    const/16 v4, 0xbd6

    invoke-static {v4, v1, v2}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 922
    invoke-virtual {v10}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 926
    :cond_e2
    const-string v1, "PostZygoteInitGC"

    invoke-virtual {v10, v1}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    .line 927
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->gcAndFinalize()V

    .line 928
    invoke-virtual {v10}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 930
    invoke-virtual {v10}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 932
    invoke-static {v0}, Lcom/android/internal/os/Zygote;->initNativeState(Z)V

    .line 934
    invoke-static {}, Ldalvik/system/ZygoteHooks;->stopZygoteNoThreadCreation()V

    .line 936
    new-instance v1, Lcom/android/internal/os/ZygoteServer;

    invoke-direct {v1, v0}, Lcom/android/internal/os/ZygoteServer;-><init>(Z)V
    :try_end_fb
    .catchall {:try_start_44 .. :try_end_fb} :catchall_129

    .line 938
    if-eqz v12, :cond_10e

    .line 939
    :try_start_fd
    invoke-static {v15, v14, v1}, Lcom/android/internal/os/ZygoteInit;->forkSystemServer(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/os/ZygoteServer;)Ljava/lang/Runnable;

    move-result-object v0

    .line 943
    if-eqz v0, :cond_10e

    .line 944
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_106
    .catchall {:try_start_fd .. :try_end_106} :catchall_10b

    .line 958
    nop

    .line 959
    invoke-virtual {v1}, Lcom/android/internal/os/ZygoteServer;->closeServerSocket()V

    .line 945
    return-void

    .line 954
    :catchall_10b
    move-exception v0

    move-object v5, v1

    goto :goto_12b

    .line 949
    :cond_10e
    :try_start_10e
    const-string v0, "Accepting command socket connections"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 953
    invoke-virtual {v1, v15}, Lcom/android/internal/os/ZygoteServer;->runSelectLoop(Ljava/lang/String;)Ljava/lang/Runnable;

    move-result-object v0
    :try_end_117
    .catchall {:try_start_10e .. :try_end_117} :catchall_10b

    .line 958
    nop

    .line 959
    invoke-virtual {v1}, Lcom/android/internal/os/ZygoteServer;->closeServerSocket()V

    .line 965
    if-eqz v0, :cond_120

    .line 966
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 968
    :cond_120
    return-void

    .line 910
    :cond_121
    :try_start_121
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "No ABI list supplied."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_129
    .catchall {:try_start_121 .. :try_end_129} :catchall_129

    .line 954
    :catchall_129
    move-exception v0

    const/4 v5, 0x0

    .line 955
    :goto_12b
    :try_start_12b
    const-string v1, "System zygote died with fatal exception"

    invoke-static {v3, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 956
    throw v0
    :try_end_131
    .catchall {:try_start_12b .. :try_end_131} :catchall_131

    .line 958
    :catchall_131
    move-exception v0

    if-eqz v5, :cond_137

    .line 959
    invoke-virtual {v5}, Lcom/android/internal/os/ZygoteServer;->closeServerSocket()V

    .line 961
    :cond_137
    throw v0

    .line 861
    :catch_138
    move-exception v0

    .line 862
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed to setpgid(0,0)"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static blacklist maybePreloadGraphicsDriver()V
    .registers 2

    .line 222
    const-string v0, "ro.zygote.disable_gl_preload"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_c

    .line 223
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->nativePreloadGraphicsDriver()V

    .line 225
    :cond_c
    return-void
.end method

.method private static native blacklist nativePreloadAppProcessHALs()V
.end method

.method static native blacklist nativePreloadGraphicsDriver()V
.end method

.method private static native blacklist nativeZygoteInit()V
.end method

.method private static blacklist newBuiltinLibrary(Ljava/lang/String;Ljava/lang/String;)Landroid/content/pm/SharedLibraryInfo;
    .registers 3

    .line 502
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/internal/os/ZygoteInit;->newBuiltinLibrary(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Landroid/content/pm/SharedLibraryInfo;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist newBuiltinLibrary(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Landroid/content/pm/SharedLibraryInfo;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/content/pm/SharedLibraryInfo;",
            ">;)",
            "Landroid/content/pm/SharedLibraryInfo;"
        }
    .end annotation

    .line 507
    new-instance v0, Landroid/content/pm/SharedLibraryInfo;

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v3, 0x0

    const-wide/16 v5, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v4, p1

    move-object v1, p0

    move-object v2, p1

    move-object v10, p2

    invoke-direct/range {v0 .. v11}, Landroid/content/pm/SharedLibraryInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;JILandroid/content/pm/VersionedPackage;Ljava/util/List;Ljava/util/List;Z)V

    return-object v0
.end method

.method private static blacklist prefetchStandaloneSystemServerJars()V
    .registers 5

    .line 621
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->shouldProfileSystemServer()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 626
    return-void

    .line 628
    :cond_7
    const-string v0, "STANDALONE_SYSTEMSERVER_JARS"

    invoke-static {v0}, Landroid/system/Os;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 629
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 630
    return-void

    .line 632
    :cond_14
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_1c
    if-ge v2, v1, :cond_41

    aget-object v3, v0, v2

    .line 634
    nop

    .line 635
    :try_start_21
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->getOrCreateSystemServerClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    .line 634
    invoke-static {v3, v4}, Lcom/android/internal/os/SystemServerClassLoaderFactory;->createClassLoader(Ljava/lang/String;Ljava/lang/ClassLoader;)Ldalvik/system/PathClassLoader;
    :try_end_28
    .catch Ljava/lang/Error; {:try_start_21 .. :try_end_28} :catch_29

    .line 642
    goto :goto_3e

    .line 636
    :catch_29
    move-exception v4

    .line 639
    nop

    .line 641
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    .line 640
    const-string v4, "Failed to prefetch standalone system server jar \"%s\": %s"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 639
    const-string v4, "Zygote"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    :goto_3e
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    .line 644
    :cond_41
    return-void
.end method

.method static blacklist preload(Landroid/util/TimingsTraceLog;)V
    .registers 5

    .line 128
    const-string v0, "begin preload"

    const-string v1, "Zygote"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    const-string v0, "BeginPreload"

    invoke-virtual {p0, v0}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    .line 130
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->beginPreload()V

    .line 131
    invoke-virtual {p0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 132
    const-string v0, "PreloadClasses"

    invoke-virtual {p0, v0}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    .line 133
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->preloadClasses()V

    .line 134
    invoke-virtual {p0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 135
    const-string v0, "CacheNonBootClasspathClassLoaders"

    invoke-virtual {p0, v0}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    .line 136
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->cacheNonBootClasspathClassLoaders()V

    .line 137
    invoke-virtual {p0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 138
    const-string v0, "PreloadResources"

    invoke-virtual {p0, v0}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    .line 139
    invoke-static {}, Landroid/content/res/Resources;->preloadResources()V

    .line 140
    invoke-virtual {p0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 141
    const-string p0, "PreloadAppProcessHALs"

    const-wide/16 v2, 0x4000

    invoke-static {v2, v3, p0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 142
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->nativePreloadAppProcessHALs()V

    .line 143
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 144
    const-string p0, "PreloadGraphicsDriver"

    invoke-static {v2, v3, p0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 145
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->maybePreloadGraphicsDriver()V

    .line 146
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 147
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->preloadSharedLibraries()V

    .line 148
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->preloadTextResources()V

    .line 152
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/net/http/Flags;->preloadHttpengineInZygote()Z

    move-result p0

    if-eqz p0, :cond_72

    .line 154
    :try_start_57
    invoke-static {}, Landroid/net/http/HttpEngine;->preload()V
    :try_end_5a
    .catch Ljava/lang/NoSuchMethodError; {:try_start_57 .. :try_end_5a} :catch_5b

    .line 164
    goto :goto_72

    .line 155
    :catch_5b
    move-exception p0

    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HttpEngine.preload() threw "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    :cond_72
    :goto_72
    invoke-static {}, Landroid/webkit/WebViewFactory;->prepareWebViewInZygote()V

    .line 169
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->endPreload()V

    .line 170
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->warmUpJcaProviders()V

    .line 171
    const-string p0, "end preload"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    const/4 p0, 0x1

    sput-boolean p0, Lcom/android/internal/os/ZygoteInit;->sPreloadComplete:Z

    .line 174
    return-void
.end method

.method private static blacklist preloadClasses()V
    .registers 18

    .line 285
    const-string v1, "Failed to restore root"

    const-string v2, "ResetJitCounters"

    const-string v3, "PreloadDexCaches"

    const-string v4, "Zygote"

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v5

    .line 289
    :try_start_c
    new-instance v6, Ljava/io/FileInputStream;

    const-string v0, "/system/etc/preloaded-classes"

    invoke-direct {v6, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_13
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_13} :catch_1cf

    .line 293
    nop

    .line 295
    const-string v0, "Preloading classes..."

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 299
    invoke-static {}, Landroid/system/Os;->getuid()I

    move-result v0

    .line 300
    invoke-static {}, Landroid/system/Os;->getgid()I

    move-result v9

    .line 305
    nop

    .line 306
    const/4 v10, 0x1

    const/4 v11, 0x0

    if-nez v0, :cond_40

    if-nez v9, :cond_40

    .line 308
    const/16 v0, 0x270f

    :try_start_2e
    invoke-static {v11, v0}, Landroid/system/Os;->setregid(II)V

    .line 309
    invoke-static {v11, v0}, Landroid/system/Os;->setreuid(II)V
    :try_end_34
    .catch Landroid/system/ErrnoException; {:try_start_2e .. :try_end_34} :catch_37

    .line 312
    nop

    .line 314
    move v9, v10

    goto :goto_41

    .line 310
    :catch_37
    move-exception v0

    .line 311
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed to drop root"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 318
    :cond_40
    move v9, v11

    :goto_41
    const-wide/16 v12, 0x4000

    :try_start_43
    new-instance v14, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v15, 0x100

    invoke-direct {v14, v0, v15}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 321
    nop

    .line 322
    move v15, v11

    .line 324
    :goto_51
    invoke-virtual {v14}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0
    :try_end_55
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_55} :catch_16b
    .catchall {:try_start_43 .. :try_end_55} :catchall_169

    if-eqz v0, :cond_10e

    .line 326
    :try_start_57
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    .line 327
    const-string v0, "#"

    invoke-virtual {v11, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_fd

    const-string v0, ""

    invoke-virtual {v11, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6f

    .line 328
    move-wide/from16 v16, v12

    goto/16 :goto_ff

    .line 331
    :cond_6f
    invoke-static {v12, v13, v11}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_72
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_72} :catch_10a
    .catchall {:try_start_57 .. :try_end_72} :catchall_105

    .line 338
    const/4 v0, 0x0

    :try_start_73
    invoke-static {v11, v10, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_76
    .catch Ljava/lang/ClassNotFoundException; {:try_start_73 .. :try_end_76} :catch_d1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_73 .. :try_end_76} :catch_ad
    .catchall {:try_start_73 .. :try_end_76} :catchall_7c

    .line 339
    add-int/lit8 v15, v15, 0x1

    .line 359
    move-wide/from16 v16, v12

    goto/16 :goto_f4

    .line 350
    :catchall_7c
    move-exception v0

    .line 351
    :try_start_7d
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error preloading "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 352
    instance-of v7, v0, Ljava/lang/Error;

    if-nez v7, :cond_aa

    .line 354
    instance-of v7, v0, Ljava/lang/RuntimeException;

    if-eqz v7, :cond_a4

    .line 355
    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    .line 357
    :cond_a4
    new-instance v7, Ljava/lang/RuntimeException;

    invoke-direct {v7, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .line 353
    :cond_aa
    check-cast v0, Ljava/lang/Error;

    throw v0
    :try_end_ad
    .catch Ljava/io/IOException; {:try_start_7d .. :try_end_ad} :catch_16b
    .catchall {:try_start_7d .. :try_end_ad} :catchall_169

    .line 348
    :catch_ad
    move-exception v0

    .line 349
    :try_start_ae
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_b3
    .catch Ljava/io/IOException; {:try_start_ae .. :try_end_b3} :catch_10a
    .catchall {:try_start_ae .. :try_end_b3} :catchall_105

    move-wide/from16 v16, v12

    :try_start_b5
    const-string v12, "Problem preloading "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ": "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f3

    .line 340
    :catch_d1
    move-exception v0

    move-wide/from16 v16, v12

    .line 341
    const-string v0, "$$Lambda$"

    invoke-virtual {v11, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_dd

    goto :goto_f3

    .line 346
    :cond_dd
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Class not found for preloading: "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    :goto_f3
    nop

    .line 360
    :goto_f4
    invoke-static/range {v16 .. v17}, Landroid/os/Trace;->traceEnd(J)V

    move-wide/from16 v12, v16

    const/4 v10, 0x1

    const/4 v11, 0x0

    goto/16 :goto_51

    .line 327
    :cond_fd
    move-wide/from16 v16, v12

    .line 324
    :goto_ff
    move-wide/from16 v12, v16

    const/4 v10, 0x1

    const/4 v11, 0x0

    goto/16 :goto_51

    .line 371
    :catchall_105
    move-exception v0

    move-wide/from16 v16, v12

    goto/16 :goto_1a0

    .line 368
    :catch_10a
    move-exception v0

    move-wide/from16 v16, v12

    goto :goto_16c

    .line 363
    :cond_10e
    move-wide/from16 v16, v12

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "...preloaded "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v10, " classes in "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 364
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v7

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, "ms."

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 363
    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13b
    .catch Ljava/io/IOException; {:try_start_b5 .. :try_end_13b} :catch_16b
    .catchall {:try_start_b5 .. :try_end_13b} :catchall_169

    .line 371
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 374
    move-wide/from16 v6, v16

    invoke-static {v6, v7, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 375
    invoke-virtual {v5}, Ldalvik/system/VMRuntime;->preloadDexCaches()V

    .line 376
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 381
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->shouldProfileBootClasspath()Z

    move-result v0

    if-eqz v0, :cond_158

    .line 382
    invoke-static {v6, v7, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 383
    invoke-static {}, Ldalvik/system/VMRuntime;->resetJitCounters()V

    .line 384
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 388
    :cond_158
    if-eqz v9, :cond_19f

    .line 390
    const/4 v2, 0x0

    :try_start_15b
    invoke-static {v2, v2}, Landroid/system/Os;->setreuid(II)V

    .line 391
    invoke-static {v2, v2}, Landroid/system/Os;->setregid(II)V
    :try_end_161
    .catch Landroid/system/ErrnoException; {:try_start_15b .. :try_end_161} :catch_162

    goto :goto_197

    .line 392
    :catch_162
    move-exception v0

    .line 393
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 371
    :catchall_169
    move-exception v0

    goto :goto_1a0

    .line 368
    :catch_16b
    move-exception v0

    .line 369
    :goto_16c
    :try_start_16c
    const-string v7, "Error reading /system/etc/preloaded-classes."

    invoke-static {v4, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_171
    .catchall {:try_start_16c .. :try_end_171} :catchall_169

    .line 371
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 374
    const-wide/16 v6, 0x4000

    invoke-static {v6, v7, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 375
    invoke-virtual {v5}, Ldalvik/system/VMRuntime;->preloadDexCaches()V

    .line 376
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 381
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->shouldProfileBootClasspath()Z

    move-result v0

    if-eqz v0, :cond_18e

    .line 382
    invoke-static {v6, v7, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 383
    invoke-static {}, Ldalvik/system/VMRuntime;->resetJitCounters()V

    .line 384
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 388
    :cond_18e
    if-eqz v9, :cond_19f

    .line 390
    const/4 v2, 0x0

    :try_start_191
    invoke-static {v2, v2}, Landroid/system/Os;->setreuid(II)V

    .line 391
    invoke-static {v2, v2}, Landroid/system/Os;->setregid(II)V
    :try_end_197
    .catch Landroid/system/ErrnoException; {:try_start_191 .. :try_end_197} :catch_198

    .line 394
    :goto_197
    goto :goto_19f

    .line 392
    :catch_198
    move-exception v0

    .line 393
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 397
    :cond_19f
    :goto_19f
    return-void

    .line 371
    :goto_1a0
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 374
    const-wide/16 v6, 0x4000

    invoke-static {v6, v7, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 375
    invoke-virtual {v5}, Ldalvik/system/VMRuntime;->preloadDexCaches()V

    .line 376
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 381
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->shouldProfileBootClasspath()Z

    move-result v3

    if-eqz v3, :cond_1bd

    .line 382
    invoke-static {v6, v7, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 383
    invoke-static {}, Ldalvik/system/VMRuntime;->resetJitCounters()V

    .line 384
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 388
    :cond_1bd
    if-eqz v9, :cond_1ce

    .line 390
    const/4 v2, 0x0

    :try_start_1c0
    invoke-static {v2, v2}, Landroid/system/Os;->setreuid(II)V

    .line 391
    invoke-static {v2, v2}, Landroid/system/Os;->setregid(II)V
    :try_end_1c6
    .catch Landroid/system/ErrnoException; {:try_start_1c0 .. :try_end_1c6} :catch_1c7

    .line 394
    goto :goto_1ce

    .line 392
    :catch_1c7
    move-exception v0

    .line 393
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 396
    :cond_1ce
    :goto_1ce
    throw v0

    .line 290
    :catch_1cf
    move-exception v0

    .line 291
    const-string v0, "Couldn\'t find /system/etc/preloaded-classes."

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    return-void
.end method

.method private static blacklist preloadSharedLibraries()V
    .registers 2

    .line 196
    const-string v0, "Zygote"

    const-string v1, "Preloading shared libraries..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    const-string v0, "android"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 198
    const-string v0, "jnigraphics"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 199
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/os/Flags;->perfettoSdkTracingV3()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 200
    const-string v0, "perfetto_framework_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 205
    :cond_1c
    const-string v0, "config.disable_renderscript"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_2a

    .line 206
    const-string v0, "compiler_rt"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 208
    :cond_2a
    return-void
.end method

.method private static blacklist preloadTextResources()V
    .registers 0

    .line 228
    invoke-static {}, Landroid/text/Hyphenator;->init()V

    .line 229
    invoke-static {}, Landroid/widget/TextView;->preloadFontCache()V

    .line 230
    return-void
.end method

.method private static blacklist prepareSystemServerProfile(Ljava/lang/String;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 653
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 654
    return-void

    .line 656
    :cond_7
    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 658
    nop

    .line 659
    const-string v0, "installd"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IInstalld$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IInstalld;

    move-result-object v1

    .line 661
    nop

    .line 662
    nop

    .line 663
    nop

    .line 666
    const/16 v0, 0x3e8

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v4

    const/4 v0, 0x0

    aget-object v6, p0, v0

    .line 663
    const-string v2, "android"

    const/4 v3, 0x0

    const-string v5, "primary.prof"

    const/4 v7, 0x0

    invoke-interface/range {v1 .. v7}, Landroid/os/IInstalld;->prepareAppProfile(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 671
    invoke-static {v0, v2}, Landroid/os/Environment;->getDataProfilesDePackageDirectory(ILjava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 673
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 674
    invoke-static {v0, v2}, Landroid/os/Environment;->getDataProfilesDePackageDirectory(ILjava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 676
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 677
    const/4 v3, 0x1

    invoke-static {v2, v1, v0, p0, v3}, Ldalvik/system/VMRuntime;->registerAppInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;I)V

    .line 683
    return-void
.end method

.method public static blacklist setApiDenylistExemptions([Ljava/lang/String;)V
    .registers 2

    .line 689
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    invoke-virtual {v0, p0}, Ldalvik/system/VMRuntime;->setHiddenApiExemptions([Ljava/lang/String;)V

    .line 690
    return-void
.end method

.method public static blacklist setHiddenApiAccessLogSampleRate(I)V
    .registers 2

    .line 693
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    invoke-virtual {v0, p0}, Ldalvik/system/VMRuntime;->setHiddenApiAccessLogSamplingRate(I)V

    .line 694
    return-void
.end method

.method public static blacklist setHiddenApiUsageLogger(Ldalvik/system/VMRuntime$HiddenApiUsageLogger;)V
    .registers 1

    .line 701
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    invoke-static {p0}, Ldalvik/system/VMRuntime;->setHiddenApiUsageLogger(Ldalvik/system/VMRuntime$HiddenApiUsageLogger;)V

    .line 702
    return-void
.end method

.method private static blacklist shouldProfileBootClasspath()Z
    .registers 1

    .line 275
    const-string v0, "profilebootclasspath"

    invoke-static {v0}, Lcom/android/internal/os/ZygoteInit;->isExperimentEnabled(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static blacklist shouldProfileSystemServer()Z
    .registers 1

    .line 271
    const-string v0, "profilesystemserver"

    invoke-static {v0}, Lcom/android/internal/os/ZygoteInit;->isExperimentEnabled(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static blacklist waitForSecondaryZygote(Ljava/lang/String;)V
    .registers 2

    .line 981
    const-string v0, "zygote"

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b

    .line 982
    const-string v0, "zygote_secondary"

    goto :goto_c

    :cond_b
    nop

    .line 983
    :goto_c
    invoke-static {v0}, Landroid/os/ZygoteProcess;->waitForConnectionToZygote(Ljava/lang/String;)V

    .line 984
    return-void
.end method

.method private static blacklist warmUpJcaProviders()V
    .registers 10

    .line 239
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 240
    const-string v2, "Starting installation of AndroidKeyStoreProvider"

    const-wide/16 v3, 0x4000

    invoke-static {v3, v4, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 243
    invoke-static {}, Landroid/security/keystore2/AndroidKeyStoreProvider;->install()V

    .line 244
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Installed AndroidKeyStoreProvider in "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 245
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v0

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ms."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 244
    const-string v2, "Zygote"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 248
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 249
    const-string v0, "Starting warm up of JCA providers"

    invoke-static {v3, v4, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 251
    invoke-static {}, Ljava/security/Security;->getProviders()[Ljava/security/Provider;

    move-result-object v0

    array-length v7, v0

    const/4 v8, 0x0

    :goto_43
    if-ge v8, v7, :cond_4d

    aget-object v9, v0, v8

    .line 252
    invoke-virtual {v9}, Ljava/security/Provider;->warmUpServiceProvision()V

    .line 251
    add-int/lit8 v8, v8, 0x1

    goto :goto_43

    .line 254
    :cond_4d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Warmed up JCA providers in "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 255
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v5

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 254
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 257
    return-void
.end method

.method public static blacklist zygoteInit(I[J[Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Runnable;
    .registers 7

    .line 1016
    const-wide/16 v0, 0x40

    const-string v2, "ZygoteInit"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1017
    invoke-static {}, Lcom/android/internal/os/RuntimeInit;->redirectLogStreams()V

    .line 1019
    invoke-static {}, Lcom/android/internal/os/RuntimeInit;->commonInit()V

    .line 1020
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->nativeZygoteInit()V

    .line 1021
    invoke-static {p0, p1, p2, p3}, Lcom/android/internal/os/RuntimeInit;->applicationInit(I[J[Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Runnable;

    move-result-object p0

    return-object p0
.end method
