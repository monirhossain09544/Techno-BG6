.class public Lcom/android/internal/content/InstallLocationUtils;
.super Ljava/lang/Object;
.source "InstallLocationUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/content/InstallLocationUtils$TestableInterface;
    }
.end annotation


# static fields
.field public static final blacklist APP_INSTALL_AUTO:I = 0x0

.field public static final blacklist APP_INSTALL_EXTERNAL:I = 0x2

.field public static final blacklist APP_INSTALL_INTERNAL:I = 0x1

.field public static final blacklist RECOMMEND_FAILED_ALREADY_EXISTS:I = -0x4

.field public static final blacklist RECOMMEND_FAILED_INSUFFICIENT_STORAGE:I = -0x1

.field public static final blacklist RECOMMEND_FAILED_INVALID_APK:I = -0x2

.field public static final blacklist RECOMMEND_FAILED_INVALID_LOCATION:I = -0x3

.field public static final blacklist RECOMMEND_FAILED_INVALID_URI:I = -0x6

.field public static final blacklist RECOMMEND_INSTALL_EPHEMERAL:I = 0x3

.field public static final blacklist RECOMMEND_INSTALL_EXTERNAL:I = 0x2

.field public static final blacklist RECOMMEND_INSTALL_INTERNAL:I = 0x1

.field public static final blacklist RECOMMEND_MEDIA_UNAVAILABLE:I = -0x5

.field private static final blacklist TAG:Ljava/lang/String; = "PackageHelper"

.field private static blacklist sDefaultTestableInterface:Lcom/android/internal/content/InstallLocationUtils$TestableInterface;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 79
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/content/InstallLocationUtils;->sDefaultTestableInterface:Lcom/android/internal/content/InstallLocationUtils$TestableInterface;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist calculateInstalledSize(Landroid/content/pm/parsing/PackageLite;Lcom/android/internal/content/NativeLibraryHelper$Handle;Ljava/lang/String;)J
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 450
    nop

    .line 452
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/Flags;->alternativeForDexoptCleanup()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_6e

    .line 453
    invoke-virtual {p0}, Landroid/content/pm/parsing/PackageLite;->getPath()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    if-eqz v0, :cond_1b

    invoke-virtual {p0}, Landroid/content/pm/parsing/PackageLite;->getPath()Ljava/lang/String;

    move-result-object v0

    new-array v4, v3, [Ljava/lang/String;

    invoke-static {v0, v4}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    goto :goto_1c

    :cond_1b
    const/4 v0, 0x0

    .line 454
    :goto_1c
    if-eqz v0, :cond_5f

    new-array v4, v3, [Ljava/nio/file/LinkOption;

    invoke-static {v0, v4}, Ljava/nio/file/Files;->isDirectory(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v4

    if-nez v4, :cond_27

    goto :goto_5f

    .line 457
    :cond_27
    invoke-static {v0}, Ljava/nio/file/Files;->newDirectoryStream(Ljava/nio/file/Path;)Ljava/nio/file/DirectoryStream;

    move-result-object v0

    .line 458
    :try_start_2b
    invoke-interface {v0}, Ljava/nio/file/DirectoryStream;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/nio/file/Path;

    .line 459
    new-array v6, v3, [Ljava/nio/file/LinkOption;

    invoke-static {v5, v6}, Ljava/nio/file/Files;->isDirectory(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v6

    if-nez v6, :cond_4c

    .line 460
    invoke-interface {v5}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v5
    :try_end_4b
    .catchall {:try_start_2b .. :try_end_4b} :catchall_53

    add-long/2addr v1, v5

    .line 462
    :cond_4c
    goto :goto_2f

    .line 463
    :cond_4d
    if-eqz v0, :cond_6d

    invoke-interface {v0}, Ljava/nio/file/DirectoryStream;->close()V

    goto :goto_6d

    .line 457
    :catchall_53
    move-exception p0

    if-eqz v0, :cond_5e

    :try_start_56
    invoke-interface {v0}, Ljava/nio/file/DirectoryStream;->close()V
    :try_end_59
    .catchall {:try_start_56 .. :try_end_59} :catchall_5a

    goto :goto_5e

    :catchall_5a
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5e
    :goto_5e
    throw p0

    .line 455
    :cond_5f
    :goto_5f
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/pm/parsing/PackageLite;->getBaseApkPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v3

    add-long/2addr v1, v3

    .line 465
    :cond_6d
    :goto_6d
    goto :goto_92

    .line 467
    :cond_6e
    invoke-virtual {p0}, Landroid/content/pm/parsing/PackageLite;->getAllApkPaths()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_76
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 468
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 469
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v3

    add-long/2addr v1, v3

    .line 470
    goto :goto_76

    .line 473
    :cond_8d
    invoke-static {p0}, Landroid/content/pm/dex/DexMetadataHelper;->getPackageDexMetadataSize(Landroid/content/pm/parsing/PackageLite;)J

    move-result-wide v3

    add-long/2addr v1, v3

    .line 476
    :goto_92
    invoke-virtual {p0}, Landroid/content/pm/parsing/PackageLite;->isExtractNativeLibs()Z

    move-result p0

    if-eqz p0, :cond_9d

    .line 478
    invoke-static {p1, p2}, Lcom/android/internal/content/NativeLibraryHelper;->sumNativeBinariesWithOverride(Lcom/android/internal/content/NativeLibraryHelper$Handle;Ljava/lang/String;)J

    move-result-wide p0

    add-long/2addr v1, p0

    .line 481
    :cond_9d
    return-wide v1
.end method

.method public static blacklist calculateInstalledSize(Landroid/content/pm/parsing/PackageLite;Ljava/lang/String;)J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 427
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/internal/content/InstallLocationUtils;->calculateInstalledSize(Landroid/content/pm/parsing/PackageLite;Ljava/lang/String;Ljava/io/FileDescriptor;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static blacklist calculateInstalledSize(Landroid/content/pm/parsing/PackageLite;Ljava/lang/String;Ljava/io/FileDescriptor;)J
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 432
    nop

    .line 434
    const/4 v0, 0x0

    if-eqz p2, :cond_a

    :try_start_4
    invoke-static {p0, p2}, Lcom/android/internal/content/NativeLibraryHelper$Handle;->createFd(Landroid/content/pm/parsing/PackageLite;Ljava/io/FileDescriptor;)Lcom/android/internal/content/NativeLibraryHelper$Handle;

    move-result-object p2

    move-object v0, p2

    goto :goto_f

    .line 435
    :cond_a
    invoke-static {p0}, Lcom/android/internal/content/NativeLibraryHelper$Handle;->create(Landroid/content/pm/parsing/PackageLite;)Lcom/android/internal/content/NativeLibraryHelper$Handle;

    move-result-object p2

    move-object v0, p2

    .line 436
    :goto_f
    invoke-static {p0, v0, p1}, Lcom/android/internal/content/InstallLocationUtils;->calculateInstalledSize(Landroid/content/pm/parsing/PackageLite;Lcom/android/internal/content/NativeLibraryHelper$Handle;Ljava/lang/String;)J

    move-result-wide p0
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_17

    .line 438
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 436
    return-wide p0

    .line 438
    :catchall_17
    move-exception p0

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 439
    throw p0
.end method

.method public static blacklist calculateInstalledSize(Landroid/content/pm/parsing/PackageLite;ZLcom/android/internal/content/NativeLibraryHelper$Handle;Ljava/lang/String;)J
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 445
    invoke-static {p0, p2, p3}, Lcom/android/internal/content/InstallLocationUtils;->calculateInstalledSize(Landroid/content/pm/parsing/PackageLite;Lcom/android/internal/content/NativeLibraryHelper$Handle;Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static blacklist calculateInstalledSize(Landroid/content/pm/parsing/PackageLite;ZLjava/lang/String;)J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 422
    invoke-static {p0, p2}, Lcom/android/internal/content/InstallLocationUtils;->calculateInstalledSize(Landroid/content/pm/parsing/PackageLite;Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method private static blacklist checkFitOnVolume(Landroid/os/storage/StorageManager;Ljava/lang/String;Landroid/content/pm/PackageInstaller$SessionParams;)Z
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 178
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 179
    return v0

    .line 181
    :cond_4
    iget v1, p2, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    invoke-static {v1}, Lcom/android/internal/content/InstallLocationUtils;->translateAllocateFlags(I)I

    move-result v1

    .line 182
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Landroid/os/storage/StorageManager;->getUuidForPath(Ljava/io/File;)Ljava/util/UUID;

    move-result-object p1

    .line 183
    or-int/lit8 v2, v1, 0x8

    invoke-virtual {p0, p1, v2}, Landroid/os/storage/StorageManager;->getAllocatableBytes(Ljava/util/UUID;I)J

    move-result-wide v2

    .line 185
    iget-wide v4, p2, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    cmp-long v4, v4, v2

    const/4 v5, 0x1

    if-gtz v4, :cond_21

    .line 186
    return v5

    .line 188
    :cond_21
    or-int/lit8 v1, v1, 0x10

    invoke-virtual {p0, p1, v1}, Landroid/os/storage/StorageManager;->getAllocatableBytes(Ljava/util/UUID;I)J

    move-result-wide p0

    .line 190
    iget-wide v6, p2, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    add-long/2addr v2, p0

    cmp-long p0, v6, v2

    if-gtz p0, :cond_2f

    move v0, v5

    :cond_2f
    return v0
.end method

.method public static blacklist fitsOnExternal(Landroid/content/Context;Landroid/content/pm/PackageInstaller$SessionParams;)Z
    .registers 7

    .line 330
    const-class v0, Landroid/os/storage/StorageManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/storage/StorageManager;

    .line 331
    invoke-virtual {p0}, Landroid/os/storage/StorageManager;->getPrimaryVolume()Landroid/os/storage/StorageVolume;

    move-result-object v0

    .line 332
    iget-wide v1, p1, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_36

    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->isEmulated()Z

    move-result v1

    if-nez v1, :cond_36

    .line 333
    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->getState()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mounted"

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_36

    iget-wide v1, p1, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    .line 334
    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->getPathFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/storage/StorageManager;->getStorageBytesUntilLow(Ljava/io/File;)J

    move-result-wide p0

    cmp-long p0, v1, p0

    if-gtz p0, :cond_36

    const/4 p0, 0x1

    goto :goto_37

    :cond_36
    const/4 p0, 0x0

    .line 332
    :goto_37
    return p0
.end method

.method public static blacklist fitsOnInternal(Landroid/content/Context;Landroid/content/pm/PackageInstaller$SessionParams;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 310
    const-class v0, Landroid/os/storage/StorageManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/storage/StorageManager;

    .line 311
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/storage/StorageManager;->getUuidForPath(Ljava/io/File;)Ljava/util/UUID;

    move-result-object v0

    .line 312
    iget v1, p1, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    invoke-static {v1}, Lcom/android/internal/content/InstallLocationUtils;->translateAllocateFlags(I)I

    move-result v1

    .line 314
    or-int/lit8 v2, v1, 0x8

    invoke-virtual {p0, v0, v2}, Landroid/os/storage/StorageManager;->getAllocatableBytes(Ljava/util/UUID;I)J

    move-result-wide v2

    .line 319
    iget-wide v4, p1, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    cmp-long v4, v4, v2

    const/4 v5, 0x1

    if-gtz v4, :cond_24

    .line 320
    return v5

    .line 323
    :cond_24
    or-int/lit8 v1, v1, 0x10

    invoke-virtual {p0, v0, v1}, Landroid/os/storage/StorageManager;->getAllocatableBytes(Ljava/util/UUID;I)J

    move-result-wide v0

    .line 326
    iget-wide p0, p1, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    add-long/2addr v2, v0

    cmp-long p0, p0, v2

    if-gtz p0, :cond_32

    goto :goto_33

    :cond_32
    const/4 v5, 0x0

    :goto_33
    return v5
.end method

.method private static declared-synchronized blacklist getDefaultTestableInterface()Lcom/android/internal/content/InstallLocationUtils$TestableInterface;
    .registers 2

    const-class v0, Lcom/android/internal/content/InstallLocationUtils;

    monitor-enter v0

    .line 109
    :try_start_3
    sget-object v1, Lcom/android/internal/content/InstallLocationUtils;->sDefaultTestableInterface:Lcom/android/internal/content/InstallLocationUtils$TestableInterface;

    if-nez v1, :cond_e

    .line 110
    new-instance v1, Lcom/android/internal/content/InstallLocationUtils$1;

    invoke-direct {v1}, Lcom/android/internal/content/InstallLocationUtils$1;-><init>()V

    sput-object v1, Lcom/android/internal/content/InstallLocationUtils;->sDefaultTestableInterface:Lcom/android/internal/content/InstallLocationUtils$TestableInterface;

    .line 145
    :cond_e
    sget-object v1, Lcom/android/internal/content/InstallLocationUtils;->sDefaultTestableInterface:Lcom/android/internal/content/InstallLocationUtils$TestableInterface;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    .line 108
    :catchall_12
    move-exception v1

    :try_start_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public static blacklist getInstallationErrorCode(I)I
    .registers 4

    .line 527
    const/4 v0, -0x3

    if-ne p0, v0, :cond_6

    .line 528
    const/16 p0, -0x13

    return p0

    .line 529
    :cond_6
    const/4 v1, -0x1

    const/4 v2, -0x4

    if-ne p0, v2, :cond_b

    .line 530
    return v1

    .line 531
    :cond_b
    if-ne p0, v1, :cond_e

    .line 532
    return v2

    .line 533
    :cond_e
    const/4 v1, -0x2

    if-ne p0, v1, :cond_12

    .line 534
    return v1

    .line 535
    :cond_12
    const/4 v1, -0x6

    if-ne p0, v1, :cond_16

    .line 536
    return v0

    .line 537
    :cond_16
    const/4 v0, -0x5

    if-ne p0, v0, :cond_1c

    .line 538
    const/16 p0, -0x14

    return p0

    .line 540
    :cond_1c
    const/4 p0, 0x1

    return p0
.end method

.method public static blacklist getStorageManager()Landroid/os/storage/IStorageManager;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 82
    const-string v0, "mount"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 83
    if-eqz v0, :cond_d

    .line 84
    invoke-static {v0}, Landroid/os/storage/IStorageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IStorageManager;

    move-result-object v0

    return-object v0

    .line 86
    :cond_d
    const-string v0, "PackageHelper"

    const-string v1, "Can\'t get storagemanager service"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "Could not contact storagemanager service"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist installLocationPolicy(IIIZZ)I
    .registers 6

    .line 502
    const/4 v0, 0x2

    and-int/2addr p2, v0

    if-nez p2, :cond_6

    .line 504
    const/4 p0, -0x4

    return p0

    .line 507
    :cond_6
    const/4 p2, 0x1

    if-eqz p3, :cond_a

    .line 508
    return p2

    .line 511
    :cond_a
    if-ne p0, p2, :cond_d

    .line 513
    return p2

    .line 514
    :cond_d
    if-ne p0, v0, :cond_10

    .line 516
    return p1

    .line 519
    :cond_10
    if-eqz p4, :cond_13

    .line 520
    return v0

    .line 522
    :cond_13
    return p2
.end method

.method public static blacklist replaceEnd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 485
    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 489
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    sub-int/2addr v1, p1

    const/4 p1, 0x0

    invoke-virtual {p0, p1, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 486
    :cond_26
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Expected "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " to end with "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public static blacklist resolveInstallLocation(Landroid/content/Context;Landroid/content/pm/PackageInstaller$SessionParams;)I
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 343
    nop

    .line 345
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p1, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    const/high16 v2, 0x400000

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0
    :try_end_d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_d} :catch_e

    .line 348
    goto :goto_10

    .line 347
    :catch_e
    move-exception v0

    const/4 v0, 0x0

    .line 352
    :goto_10
    nop

    .line 353
    iget v1, p1, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    and-int/lit16 v1, v1, 0x800

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_20

    .line 354
    nop

    .line 355
    nop

    .line 356
    move v1, v3

    move v0, v4

    move v5, v0

    goto :goto_56

    .line 357
    :cond_20
    iget v1, p1, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_2b

    .line 358
    nop

    .line 359
    move v1, v3

    move v5, v1

    move v0, v4

    goto :goto_56

    .line 360
    :cond_2b
    iget v1, p1, Landroid/content/pm/PackageInstaller$SessionParams;->installLocation:I

    if-ne v1, v4, :cond_34

    .line 361
    nop

    .line 362
    move v1, v3

    move v5, v1

    move v0, v4

    goto :goto_56

    .line 363
    :cond_34
    iget v1, p1, Landroid/content/pm/PackageInstaller$SessionParams;->installLocation:I

    if-ne v1, v2, :cond_3d

    .line 364
    nop

    .line 365
    move v0, v2

    move v5, v3

    move v1, v4

    goto :goto_56

    .line 366
    :cond_3d
    iget v1, p1, Landroid/content/pm/PackageInstaller$SessionParams;->installLocation:I

    if-nez v1, :cond_52

    .line 368
    if-eqz v0, :cond_4e

    .line 370
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v1, 0x40000

    and-int/2addr v0, v1

    if-eqz v0, :cond_4c

    .line 371
    move v0, v2

    goto :goto_4f

    .line 373
    :cond_4c
    move v0, v4

    goto :goto_4f

    .line 376
    :cond_4e
    move v0, v4

    .line 378
    :goto_4f
    move v5, v3

    move v1, v4

    goto :goto_56

    .line 380
    :cond_52
    nop

    .line 381
    move v1, v3

    move v5, v1

    move v0, v4

    .line 384
    :goto_56
    nop

    .line 385
    if-nez v1, :cond_5e

    if-ne v0, v4, :cond_5c

    goto :goto_5e

    :cond_5c
    move v6, v3

    goto :goto_62

    .line 386
    :cond_5e
    :goto_5e
    invoke-static {p0, p1}, Lcom/android/internal/content/InstallLocationUtils;->fitsOnInternal(Landroid/content/Context;Landroid/content/pm/PackageInstaller$SessionParams;)Z

    move-result v6

    .line 389
    :goto_62
    nop

    .line 390
    if-nez v1, :cond_67

    if-ne v0, v2, :cond_6b

    .line 391
    :cond_67
    invoke-static {p0, p1}, Lcom/android/internal/content/InstallLocationUtils;->fitsOnExternal(Landroid/content/Context;Landroid/content/pm/PackageInstaller$SessionParams;)Z

    move-result v3

    .line 394
    :cond_6b
    if-ne v0, v4, :cond_75

    .line 397
    if-eqz v6, :cond_7a

    .line 398
    if-eqz v5, :cond_73

    .line 399
    const/4 v4, 0x3

    goto :goto_74

    .line 400
    :cond_73
    nop

    .line 398
    :goto_74
    return v4

    .line 402
    :cond_75
    if-ne v0, v2, :cond_7a

    .line 403
    if-eqz v3, :cond_7a

    .line 404
    return v2

    .line 408
    :cond_7a
    if-eqz v1, :cond_82

    .line 409
    if-eqz v6, :cond_7f

    .line 410
    return v4

    .line 411
    :cond_7f
    if-eqz v3, :cond_82

    .line 412
    return v2

    .line 416
    :cond_82
    const/4 p0, -0x1

    return p0
.end method

.method public static blacklist resolveInstallVolume(Landroid/content/Context;Landroid/content/pm/PackageInstaller$SessionParams;)Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 171
    invoke-static {}, Lcom/android/internal/content/InstallLocationUtils;->getDefaultTestableInterface()Lcom/android/internal/content/InstallLocationUtils$TestableInterface;

    move-result-object v5

    .line 172
    iget-object v1, p1, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    iget v2, p1, Landroid/content/pm/PackageInstaller$SessionParams;->installLocation:I

    iget-wide v3, p1, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/android/internal/content/InstallLocationUtils;->resolveInstallVolume(Landroid/content/Context;Ljava/lang/String;IJLcom/android/internal/content/InstallLocationUtils$TestableInterface;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist resolveInstallVolume(Landroid/content/Context;Landroid/content/pm/PackageInstaller$SessionParams;Lcom/android/internal/content/InstallLocationUtils$TestableInterface;)Ljava/lang/String;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 196
    invoke-virtual {p2, p0}, Lcom/android/internal/content/InstallLocationUtils$TestableInterface;->getStorageManager(Landroid/content/Context;)Landroid/os/storage/StorageManager;

    move-result-object v0

    .line 197
    invoke-virtual {p2, p0}, Lcom/android/internal/content/InstallLocationUtils$TestableInterface;->getForceAllowOnExternalSetting(Landroid/content/Context;)Z

    move-result v1

    .line 198
    nop

    .line 199
    invoke-virtual {p2, p0}, Lcom/android/internal/content/InstallLocationUtils$TestableInterface;->getAllow3rdPartyOnInternalConfig(Landroid/content/Context;)Z

    move-result v2

    .line 202
    iget-object v3, p1, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    invoke-virtual {p2, p0, v3}, Lcom/android/internal/content/InstallLocationUtils$TestableInterface;->getExistingAppInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    .line 205
    new-instance p2, Landroid/util/ArrayMap;

    invoke-direct {p2}, Landroid/util/ArrayMap;-><init>()V

    .line 206
    nop

    .line 207
    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getVolumes()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    move-object v5, v4

    :goto_23
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_52

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/storage/VolumeInfo;

    .line 208
    iget v8, v6, Landroid/os/storage/VolumeInfo;->type:I

    if-ne v8, v7, :cond_51

    invoke-virtual {v6}, Landroid/os/storage/VolumeInfo;->isMountedWritable()Z

    move-result v7

    if-eqz v7, :cond_51

    .line 209
    const-string v7, "private"

    iget-object v8, v6, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 210
    if-eqz v7, :cond_46

    .line 211
    iget-object v5, v6, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    .line 213
    :cond_46
    if-eqz v7, :cond_4a

    if-eqz v2, :cond_51

    .line 214
    :cond_4a
    iget-object v7, v6, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    iget-object v6, v6, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    invoke-virtual {p2, v7, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    :cond_51
    goto :goto_23

    .line 220
    :cond_52
    const-string v3, " upgrade"

    const-string v6, "Not enough space on existing volume "

    if-eqz p0, :cond_90

    invoke-virtual {p0}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v8

    if-eqz v8, :cond_90

    .line 221
    invoke-static {v0, v5, p1}, Lcom/android/internal/content/InstallLocationUtils;->checkFitOnVolume(Landroid/os/storage/StorageManager;Ljava/lang/String;Landroid/content/pm/PackageInstaller$SessionParams;)Z

    move-result p2

    if-eqz p2, :cond_67

    .line 222
    sget-object p0, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    return-object p0

    .line 224
    :cond_67
    new-instance p2, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->volumeUuid:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " for system app "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    iget-object p1, p1, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 231
    :cond_90
    if-nez v1, :cond_eb

    iget v1, p1, Landroid/content/pm/PackageInstaller$SessionParams;->installLocation:I

    if-ne v1, v7, :cond_eb

    .line 233
    if-eqz p0, :cond_d0

    iget-object p2, p0, Landroid/content/pm/ApplicationInfo;->volumeUuid:Ljava/lang/String;

    sget-object v1, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    invoke-static {p2, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_a3

    goto :goto_d0

    .line 235
    :cond_a3
    new-instance p2, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot automatically move "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p1, p1, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " from "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->volumeUuid:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " to internal storage"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 239
    :cond_d0
    :goto_d0
    if-eqz v2, :cond_e3

    .line 243
    invoke-static {v0, v5, p1}, Lcom/android/internal/content/InstallLocationUtils;->checkFitOnVolume(Landroid/os/storage/StorageManager;Ljava/lang/String;Landroid/content/pm/PackageInstaller$SessionParams;)Z

    move-result p0

    if-eqz p0, :cond_db

    .line 244
    sget-object p0, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    return-object p0

    .line 246
    :cond_db
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Requested internal only, but not enough space"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 240
    :cond_e3
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Not allowed to install non-system apps on internal storage"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 251
    :cond_eb
    if-eqz p0, :cond_13d

    .line 252
    nop

    .line 253
    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->volumeUuid:Ljava/lang/String;

    sget-object v2, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_fa

    .line 254
    move-object v4, v5

    goto :goto_10b

    .line 255
    :cond_fa
    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->volumeUuid:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10b

    .line 256
    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->volumeUuid:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    move-object v4, p2

    check-cast v4, Ljava/lang/String;

    .line 259
    :cond_10b
    :goto_10b
    invoke-static {v0, v4, p1}, Lcom/android/internal/content/InstallLocationUtils;->checkFitOnVolume(Landroid/os/storage/StorageManager;Ljava/lang/String;Landroid/content/pm/PackageInstaller$SessionParams;)Z

    move-result p2

    if-eqz p2, :cond_114

    .line 260
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->volumeUuid:Ljava/lang/String;

    return-object p0

    .line 262
    :cond_114
    new-instance p2, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->volumeUuid:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " for "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    iget-object p1, p1, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 269
    :cond_13d
    invoke-virtual {p2}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result p0

    const/4 v1, 0x0

    if-nez p0, :cond_14b

    invoke-virtual {p2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object p0

    move-object v4, p0

    check-cast v4, Ljava/lang/String;

    .line 270
    :cond_14b
    invoke-virtual {p2}, Landroid/util/ArrayMap;->size()I

    move-result p0

    if-ne p0, v7, :cond_15e

    .line 271
    invoke-virtual {p2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lcom/android/internal/content/InstallLocationUtils;->checkFitOnVolume(Landroid/os/storage/StorageManager;Ljava/lang/String;Landroid/content/pm/PackageInstaller$SessionParams;)Z

    move-result p0

    if-eqz p0, :cond_19d

    .line 272
    return-object v4

    .line 275
    :cond_15e
    nop

    .line 276
    invoke-virtual {p2}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const-wide/high16 v5, -0x8000000000000000L

    :goto_169
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_196

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 277
    invoke-virtual {p2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 278
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Landroid/os/storage/StorageManager;->getUuidForPath(Ljava/io/File;)Ljava/util/UUID;

    move-result-object v7

    .line 282
    iget v8, p1, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 283
    invoke-static {v8}, Lcom/android/internal/content/InstallLocationUtils;->translateAllocateFlags(I)I

    move-result v8

    .line 282
    invoke-virtual {v0, v7, v8}, Landroid/os/storage/StorageManager;->getAllocatableBytes(Ljava/util/UUID;I)J

    move-result-wide v7

    .line 285
    cmp-long v9, v7, v5

    if-ltz v9, :cond_195

    .line 286
    nop

    .line 287
    move-object v4, v3

    move-wide v5, v7

    .line 289
    :cond_195
    goto :goto_169

    .line 291
    :cond_196
    iget-wide v7, p1, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    cmp-long p0, v5, v7

    if-ltz p0, :cond_19d

    .line 292
    return-object v4

    .line 299
    :cond_19d
    invoke-virtual {p2}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_1b5

    const-wide/32 v5, 0x7fffffff

    iget-wide p0, p1, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    cmp-long p0, v5, p0

    if-nez p0, :cond_1b5

    .line 300
    const-string p0, "debug.pm.install_skip_size_check_for_maxint"

    invoke-static {p0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_1b5

    .line 302
    return-object v4

    .line 305
    :cond_1b5
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "No special requests, but no room on allowed volumes.  allow3rdPartyOnInternal? "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static blacklist resolveInstallVolume(Landroid/content/Context;Ljava/lang/String;IJLcom/android/internal/content/InstallLocationUtils$TestableInterface;)Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 153
    new-instance v0, Landroid/content/pm/PackageInstaller$SessionParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/pm/PackageInstaller$SessionParams;-><init>(I)V

    .line 154
    iput-object p1, v0, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    .line 155
    iput p2, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installLocation:I

    .line 156
    iput-wide p3, v0, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    .line 157
    invoke-static {p0, v0, p5}, Lcom/android/internal/content/InstallLocationUtils;->resolveInstallVolume(Landroid/content/Context;Landroid/content/pm/PackageInstaller$SessionParams;Lcom/android/internal/content/InstallLocationUtils$TestableInterface;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist translateAllocateFlags(I)I
    .registers 2

    .line 493
    const v0, 0x8000

    and-int/2addr p0, v0

    if-eqz p0, :cond_8

    .line 494
    const/4 p0, 0x1

    return p0

    .line 496
    :cond_8
    const/4 p0, 0x0

    return p0
.end method
