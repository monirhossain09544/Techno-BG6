.class public Lcom/android/internal/content/NativeLibraryHelper;
.super Ljava/lang/Object;
.source "NativeLibraryHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/content/NativeLibraryHelper$Handle;,
        Lcom/android/internal/content/NativeLibraryHelper$AlignmentResult;
    }
.end annotation


# static fields
.field private static final blacklist BITCODE_PRESENT:I = 0x1

.field public static final blacklist CLEAR_ABI_OVERRIDE:Ljava/lang/String; = "-"

.field private static final blacklist DEBUG_NATIVE:Z = false

.field public static final blacklist LIB64_DIR_NAME:Ljava/lang/String; = "lib64"

.field public static final blacklist LIB_DIR_NAME:Ljava/lang/String; = "lib"

.field private static final blacklist TAG:Ljava/lang/String; = "NativeHelper"


# direct methods
.method static bridge synthetic blacklist -$$Nest$smnativeClose(J)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/internal/content/NativeLibraryHelper;->nativeClose(J)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeOpenApk(Ljava/lang/String;)J
    .registers 3

    invoke-static {p0}, Lcom/android/internal/content/NativeLibraryHelper;->nativeOpenApk(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeOpenApkFd(Ljava/io/FileDescriptor;Ljava/lang/String;)J
    .registers 2

    invoke-static {p0, p1}, Lcom/android/internal/content/NativeLibraryHelper;->nativeOpenApkFd(Ljava/io/FileDescriptor;Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist checkAlignmentForCompatMode(Lcom/android/internal/content/NativeLibraryHelper$Handle;Ljava/lang/String;ZLjava/lang/String;)Lcom/android/internal/content/NativeLibraryHelper$AlignmentResult;
    .registers 15

    .line 468
    sget-object p3, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    invoke-static {p0, p3}, Lcom/android/internal/content/NativeLibraryHelper;->findSupportedAbi(Lcom/android/internal/content/NativeLibraryHelper$Handle;[Ljava/lang/String;)I

    move-result p3

    .line 469
    const/4 v0, 0x0

    if-gez p3, :cond_a

    .line 470
    return-object v0

    .line 473
    :cond_a
    sget-object v1, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    aget-object v1, v1, p3

    .line 474
    invoke-static {v1}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 475
    nop

    .line 476
    if-eqz p2, :cond_2e

    .line 477
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "/"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    move-object v3, p1

    goto :goto_2f

    .line 476
    :cond_2e
    move-object v3, p1

    .line 480
    :goto_2f
    nop

    .line 481
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 483
    iget-object p2, p0, Lcom/android/internal/content/NativeLibraryHelper$Handle;->apkHandles:[J

    array-length v7, p2

    const/4 v8, 0x0

    move v9, v8

    move v10, v9

    :goto_3b
    if-ge v9, v7, :cond_5d

    aget-wide v1, p2, v9

    .line 484
    sget-object v4, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    aget-object v4, v4, p3

    iget-boolean v5, p0, Lcom/android/internal/content/NativeLibraryHelper$Handle;->extractNativeLibs:Z

    iget-boolean v6, p0, Lcom/android/internal/content/NativeLibraryHelper$Handle;->debuggable:Z

    .line 485
    invoke-static/range {v1 .. v6}, Lcom/android/internal/content/NativeLibraryHelper;->nativeCheckAlignment(JLjava/lang/String;Ljava/lang/String;ZZ)Lcom/android/internal/content/NativeLibraryHelper$AlignmentResult;

    move-result-object v1

    .line 491
    if-nez v1, :cond_4e

    .line 492
    return-object v0

    .line 494
    :cond_4e
    iget v2, v1, Lcom/android/internal/content/NativeLibraryHelper$AlignmentResult;->flags:I

    or-int/2addr v10, v2

    .line 495
    iget-object v2, v1, Lcom/android/internal/content/NativeLibraryHelper$AlignmentResult;->unalignedLibraries:[Lcom/android/internal/content/LibraryAlignmentInfo;

    if-eqz v2, :cond_5a

    .line 496
    iget-object v1, v1, Lcom/android/internal/content/NativeLibraryHelper$AlignmentResult;->unalignedLibraries:[Lcom/android/internal/content/LibraryAlignmentInfo;

    invoke-static {p1, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 483
    :cond_5a
    add-int/lit8 v9, v9, 0x1

    goto :goto_3b

    .line 500
    :cond_5d
    new-instance p0, Lcom/android/internal/content/NativeLibraryHelper$AlignmentResult;

    new-array p2, v8, [Lcom/android/internal/content/LibraryAlignmentInfo;

    invoke-interface {p1, p2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/android/internal/content/LibraryAlignmentInfo;

    invoke-direct {p0, v10, p1}, Lcom/android/internal/content/NativeLibraryHelper$AlignmentResult;-><init>(I[Lcom/android/internal/content/LibraryAlignmentInfo;)V

    return-object p0
.end method

.method public static blacklist copyNativeBinaries(Lcom/android/internal/content/NativeLibraryHelper$Handle;Ljava/io/File;Ljava/lang/String;)I
    .registers 14

    .line 217
    iget-object v0, p0, Lcom/android/internal/content/NativeLibraryHelper$Handle;->apkHandles:[J

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    const/4 v3, 0x1

    if-ge v2, v1, :cond_1f

    aget-wide v4, v0, v2

    .line 218
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    iget-boolean v8, p0, Lcom/android/internal/content/NativeLibraryHelper$Handle;->extractNativeLibs:Z

    iget-boolean v9, p0, Lcom/android/internal/content/NativeLibraryHelper$Handle;->debuggable:Z

    iget-boolean v10, p0, Lcom/android/internal/content/NativeLibraryHelper$Handle;->pageSizeCompatDisabled:Z

    move-object v7, p2

    invoke-static/range {v4 .. v10}, Lcom/android/internal/content/NativeLibraryHelper;->nativeCopyNativeBinaries(JLjava/lang/String;Ljava/lang/String;ZZZ)I

    move-result p2

    .line 220
    if-eq p2, v3, :cond_1b

    .line 221
    return p2

    .line 217
    :cond_1b
    add-int/lit8 v2, v2, 0x1

    move-object p2, v7

    goto :goto_4

    .line 224
    :cond_1f
    return v3
.end method

.method public static blacklist copyNativeBinariesForSupportedAbi(Lcom/android/internal/content/NativeLibraryHelper$Handle;Ljava/io/File;[Ljava/lang/String;ZZ)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 344
    invoke-static {p0, p2}, Lcom/android/internal/content/NativeLibraryHelper;->findSupportedAbi(Lcom/android/internal/content/NativeLibraryHelper$Handle;[Ljava/lang/String;)I

    move-result v0

    .line 345
    if-gez v0, :cond_7

    .line 346
    return v0

    .line 353
    :cond_7
    aget-object p2, p2, v0

    .line 354
    invoke-static {p2}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 356
    if-eqz p3, :cond_15

    .line 357
    new-instance p3, Ljava/io/File;

    invoke-direct {p3, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_16

    .line 359
    :cond_15
    move-object p3, p1

    .line 362
    :goto_16
    const/4 v1, 0x1

    if-eqz p4, :cond_22

    .line 363
    nop

    .line 364
    invoke-static {p0, p3, p2}, Lcom/android/internal/content/NativeLibraryHelper;->incrementalConfigureNativeBinariesForSupportedAbi(Lcom/android/internal/content/NativeLibraryHelper$Handle;Ljava/io/File;Ljava/lang/String;)I

    move-result p0

    .line 365
    if-eq p0, v1, :cond_21

    .line 370
    return p0

    .line 372
    :cond_21
    return v0

    .line 376
    :cond_22
    invoke-static {p1}, Lcom/android/internal/content/NativeLibraryHelper;->createNativeLibrarySubdir(Ljava/io/File;)V

    .line 377
    if-eq p3, p1, :cond_2a

    .line 378
    invoke-static {p3}, Lcom/android/internal/content/NativeLibraryHelper;->createNativeLibrarySubdir(Ljava/io/File;)V

    .line 383
    :cond_2a
    invoke-static {p0, p3, p2}, Lcom/android/internal/content/NativeLibraryHelper;->copyNativeBinaries(Lcom/android/internal/content/NativeLibraryHelper$Handle;Ljava/io/File;Ljava/lang/String;)I

    move-result p0

    .line 384
    if-eq p0, v1, :cond_31

    .line 385
    return p0

    .line 388
    :cond_31
    return v0
.end method

.method public static blacklist copyNativeBinariesWithOverride(Lcom/android/internal/content/NativeLibraryHelper$Handle;Ljava/io/File;Ljava/lang/String;Z)I
    .registers 9

    .line 394
    const-string v0, "NativeHelper"

    :try_start_2
    iget-boolean v1, p0, Lcom/android/internal/content/NativeLibraryHelper$Handle;->multiArch:Z
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_4} :catch_b8

    const-string v2, "-"

    const/16 v3, -0x72

    const/4 v4, 0x1

    if-eqz v1, :cond_6c

    .line 398
    if-eqz p2, :cond_18

    :try_start_d
    invoke-virtual {v2, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_18

    .line 399
    const-string p2, "Ignoring abiOverride for multi arch application."

    invoke-static {v0, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    :cond_18
    nop

    .line 403
    sget-object p2, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    array-length p2, p2

    const/16 v1, -0x71

    if-lez p2, :cond_43

    .line 404
    sget-object p2, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    invoke-static {p0, p1, p2, v4, p3}, Lcom/android/internal/content/NativeLibraryHelper;->copyNativeBinariesForSupportedAbi(Lcom/android/internal/content/NativeLibraryHelper$Handle;Ljava/io/File;[Ljava/lang/String;ZZ)I

    move-result p2

    .line 407
    if-gez p2, :cond_43

    if-eq p2, v3, :cond_43

    if-eq p2, v1, :cond_43

    .line 409
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Failure copying 32 bit native libraries; copyRet="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    return p2

    .line 414
    :cond_43
    sget-object p2, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    array-length p2, p2

    if-lez p2, :cond_6b

    .line 415
    sget-object p2, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    invoke-static {p0, p1, p2, v4, p3}, Lcom/android/internal/content/NativeLibraryHelper;->copyNativeBinariesForSupportedAbi(Lcom/android/internal/content/NativeLibraryHelper$Handle;Ljava/io/File;[Ljava/lang/String;ZZ)I

    move-result p0

    .line 418
    if-gez p0, :cond_6b

    if-eq p0, v3, :cond_6b

    if-eq p0, v1, :cond_6b

    .line 420
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failure copying 64 bit native libraries; copyRet="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    return p0

    .line 424
    :cond_6b
    goto :goto_b7

    .line 425
    :cond_6c
    nop

    .line 426
    invoke-virtual {v2, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_76

    .line 427
    move-object p2, v2

    goto :goto_7a

    .line 428
    :cond_76
    if-eqz p2, :cond_79

    .line 429
    goto :goto_7a

    .line 428
    :cond_79
    move-object p2, v2

    .line 432
    :goto_7a
    if-eqz p2, :cond_81

    .line 433
    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object v1

    goto :goto_83

    :cond_81
    sget-object v1, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    .line 434
    :goto_83
    sget-object v2, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_92

    if-nez p2, :cond_92

    .line 435
    invoke-static {p0}, Lcom/android/internal/content/NativeLibraryHelper;->hasRenderscriptBitcode(Lcom/android/internal/content/NativeLibraryHelper$Handle;)Z

    move-result p2

    if-eqz p2, :cond_92

    .line 436
    sget-object v1, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    .line 439
    :cond_92
    invoke-static {p0, p1, v1, v4, p3}, Lcom/android/internal/content/NativeLibraryHelper;->copyNativeBinariesForSupportedAbi(Lcom/android/internal/content/NativeLibraryHelper$Handle;Ljava/io/File;[Ljava/lang/String;ZZ)I

    move-result p0

    .line 441
    if-gez p0, :cond_b7

    if-eq p0, v3, :cond_b7

    .line 442
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failure copying native libraries [errorCode="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "]"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b6
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_b6} :catch_b8

    .line 443
    return p0

    .line 447
    :cond_b7
    :goto_b7
    return v4

    .line 448
    :catch_b8
    move-exception p0

    .line 449
    const-string p1, "Copying native libraries failed"

    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 450
    const/16 p0, -0x6e

    return p0
.end method

.method public static blacklist createNativeLibrarySubdir(Ljava/io/File;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 311
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_60

    .line 312
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 314
    invoke-virtual {p0}, Ljava/io/File;->mkdir()Z

    move-result v0

    if-eqz v0, :cond_43

    .line 319
    :try_start_f
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    sget v1, Landroid/system/OsConstants;->S_IRWXU:I

    sget v2, Landroid/system/OsConstants;->S_IRGRP:I

    or-int/2addr v1, v2

    sget v2, Landroid/system/OsConstants;->S_IXGRP:I

    or-int/2addr v1, v2

    sget v2, Landroid/system/OsConstants;->S_IROTH:I

    or-int/2addr v1, v2

    sget v2, Landroid/system/OsConstants;->S_IXOTH:I

    or-int/2addr v1, v2

    invoke-static {v0, v1}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V
    :try_end_24
    .catch Landroid/system/ErrnoException; {:try_start_f .. :try_end_24} :catch_25

    .line 323
    goto :goto_66

    .line 320
    :catch_25
    move-exception v0

    .line 321
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot chmod native library directory "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 322
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 315
    :cond_43
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot create "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 324
    :cond_60
    invoke-static {p0}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_67

    .line 327
    :goto_66
    return-void

    .line 325
    :cond_67
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot set SELinux context for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist findSupportedAbi(Lcom/android/internal/content/NativeLibraryHelper$Handle;[Ljava/lang/String;)I
    .registers 8

    .line 235
    nop

    .line 236
    iget-object p0, p0, Lcom/android/internal/content/NativeLibraryHelper$Handle;->apkHandles:[J

    array-length v0, p0

    const/16 v1, -0x72

    const/4 v2, 0x0

    move v3, v1

    :goto_8
    if-ge v2, v0, :cond_26

    aget-wide v4, p0, v2

    .line 237
    invoke-static {v4, v5, p1}, Lcom/android/internal/content/NativeLibraryHelper;->nativeFindSupportedAbi(J[Ljava/lang/String;)I

    move-result v4

    .line 238
    if-ne v4, v1, :cond_13

    goto :goto_22

    .line 240
    :cond_13
    const/16 v5, -0x71

    if-ne v4, v5, :cond_1b

    .line 243
    if-gez v3, :cond_22

    .line 244
    move v3, v5

    goto :goto_22

    .line 246
    :cond_1b
    if-ltz v4, :cond_25

    .line 248
    if-ltz v3, :cond_21

    if-ge v4, v3, :cond_22

    .line 249
    :cond_21
    move v3, v4

    .line 236
    :cond_22
    :goto_22
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 253
    :cond_25
    return v4

    .line 256
    :cond_26
    return v3
.end method

.method private static blacklist getRelativePath(Ljava/io/File;Ljava/io/File;)Ljava/lang/String;
    .registers 4

    .line 590
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    .line 591
    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v1

    .line 592
    invoke-interface {v0, v1}, Ljava/nio/file/Path;->relativize(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object v0

    .line 593
    invoke-interface {v0}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 594
    const-string p0, ""

    return-object p0

    .line 596
    :cond_19
    invoke-interface {v0}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_1d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_1d} :catch_1e

    return-object p0

    .line 597
    :catch_1e
    move-exception v0

    .line 598
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to find relative path between: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " and: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 599
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 598
    const-string p1, "NativeHelper"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    const/4 p0, 0x0

    return-object p0
.end method

.method private static native blacklist hasRenderscriptBitcode(J)I
.end method

.method public static blacklist hasRenderscriptBitcode(Lcom/android/internal/content/NativeLibraryHelper$Handle;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 610
    iget-object p0, p0, Lcom/android/internal/content/NativeLibraryHelper$Handle;->apkHandles:[J

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_5
    if-ge v2, v0, :cond_2f

    aget-wide v3, p0, v2

    .line 611
    invoke-static {v3, v4}, Lcom/android/internal/content/NativeLibraryHelper;->hasRenderscriptBitcode(J)I

    move-result v3

    .line 612
    if-ltz v3, :cond_16

    .line 614
    const/4 v4, 0x1

    if-ne v3, v4, :cond_13

    .line 615
    return v4

    .line 610
    :cond_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 613
    :cond_16
    new-instance p0, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error scanning APK, code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 618
    :cond_2f
    return v1
.end method

.method private static blacklist incrementalConfigureNativeBinariesForSupportedAbi(Lcom/android/internal/content/NativeLibraryHelper$Handle;Ljava/io/File;Ljava/lang/String;)I
    .registers 10

    .line 553
    iget-object v0, p0, Lcom/android/internal/content/NativeLibraryHelper$Handle;->apkPaths:[Ljava/lang/String;

    .line 554
    const-string v1, "NativeHelper"

    const/16 v2, -0x6e

    if-eqz v0, :cond_56

    array-length v3, v0

    if-nez v3, :cond_c

    goto :goto_56

    .line 559
    :cond_c
    const-string v3, "incremental"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 560
    if-nez v3, :cond_15

    .line 562
    return v2

    .line 564
    :cond_15
    new-instance v4, Landroid/os/incremental/IncrementalManager;

    .line 565
    invoke-static {v3}, Landroid/os/incremental/IIncrementalService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/incremental/IIncrementalService;

    move-result-object v3

    invoke-direct {v4, v3}, Landroid/os/incremental/IncrementalManager;-><init>(Landroid/os/incremental/IIncrementalService;)V

    .line 566
    new-instance v3, Ljava/io/File;

    const/4 v5, 0x0

    aget-object v6, v0, v5

    invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    .line 567
    nop

    .line 568
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/os/incremental/IncrementalManager;->openStorage(Ljava/lang/String;)Landroid/os/incremental/IncrementalStorage;

    move-result-object v4

    .line 569
    if-nez v4, :cond_3b

    .line 570
    const-string p0, "Failed to find incremental storage"

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    return v2

    .line 574
    :cond_3b
    invoke-static {v3, p1}, Lcom/android/internal/content/NativeLibraryHelper;->getRelativePath(Ljava/io/File;Ljava/io/File;)Ljava/lang/String;

    move-result-object p1

    .line 575
    if-nez p1, :cond_42

    .line 576
    return v2

    .line 579
    :cond_42
    nop

    :goto_43
    array-length v1, v0

    if-ge v5, v1, :cond_54

    .line 580
    aget-object v1, v0, v5

    iget-boolean v3, p0, Lcom/android/internal/content/NativeLibraryHelper$Handle;->extractNativeLibs:Z

    invoke-virtual {v4, v1, p1, p2, v3}, Landroid/os/incremental/IncrementalStorage;->configureNativeBinaries(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_51

    .line 582
    return v2

    .line 579
    :cond_51
    add-int/lit8 v5, v5, 0x1

    goto :goto_43

    .line 585
    :cond_54
    const/4 p0, 0x1

    return p0

    .line 555
    :cond_56
    :goto_56
    const-string p0, "No apks to extract native libraries from."

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    return v2
.end method

.method private static native blacklist nativeCheckAlignment(JLjava/lang/String;Ljava/lang/String;ZZ)Lcom/android/internal/content/NativeLibraryHelper$AlignmentResult;
.end method

.method private static native blacklist nativeClose(J)V
.end method

.method private static native blacklist nativeCopyNativeBinaries(JLjava/lang/String;Ljava/lang/String;ZZZ)I
.end method

.method private static native blacklist nativeFindSupportedAbi(J[Ljava/lang/String;)I
.end method

.method private static native blacklist nativeOpenApk(Ljava/lang/String;)J
.end method

.method private static native blacklist nativeOpenApkFd(Ljava/io/FileDescriptor;Ljava/lang/String;)J
.end method

.method private static native blacklist nativeSumNativeBinaries(JLjava/lang/String;)J
.end method

.method public static blacklist removeNativeBinariesFromDirLI(Ljava/io/File;Z)V
    .registers 7

    .line 281
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_6a

    .line 282
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 283
    const-string v1, "NativeHelper"

    if-eqz v0, :cond_48

    .line 284
    const/4 v2, 0x0

    :goto_f
    array-length v3, v0

    if-ge v2, v3, :cond_48

    .line 289
    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_21

    .line 290
    aget-object v3, v0, v2

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/android/internal/content/NativeLibraryHelper;->removeNativeBinariesFromDirLI(Ljava/io/File;Z)V

    goto :goto_45

    .line 291
    :cond_21
    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_45

    .line 292
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not delete native binary: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v0, v2

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    :cond_45
    :goto_45
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 298
    :cond_48
    if-eqz p1, :cond_6a

    .line 299
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p1

    if-nez p1, :cond_6a

    .line 300
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Could not delete native binary directory: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 301
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 300
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    :cond_6a
    return-void
.end method

.method public static blacklist removeNativeBinariesLI(Ljava/lang/String;)V
    .registers 2

    .line 263
    if-nez p0, :cond_3

    return-void

    .line 264
    :cond_3
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 p0, 0x0

    invoke-static {v0, p0}, Lcom/android/internal/content/NativeLibraryHelper;->removeNativeBinariesFromDirLI(Ljava/io/File;Z)V

    .line 265
    return-void
.end method

.method private static blacklist sumNativeBinaries(Lcom/android/internal/content/NativeLibraryHelper$Handle;Ljava/lang/String;)J
    .registers 8

    .line 201
    nop

    .line 202
    iget-object p0, p0, Lcom/android/internal/content/NativeLibraryHelper$Handle;->apkHandles:[J

    array-length v0, p0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    :goto_7
    if-ge v3, v0, :cond_13

    aget-wide v4, p0, v3

    .line 203
    invoke-static {v4, v5, p1}, Lcom/android/internal/content/NativeLibraryHelper;->nativeSumNativeBinaries(JLjava/lang/String;)J

    move-result-wide v4

    add-long/2addr v1, v4

    .line 202
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 205
    :cond_13
    return-wide v1
.end method

.method private static blacklist sumNativeBinariesForSupportedAbi(Lcom/android/internal/content/NativeLibraryHelper$Handle;[Ljava/lang/String;)J
    .registers 3

    .line 330
    invoke-static {p0, p1}, Lcom/android/internal/content/NativeLibraryHelper;->findSupportedAbi(Lcom/android/internal/content/NativeLibraryHelper$Handle;[Ljava/lang/String;)I

    move-result v0

    .line 331
    if-ltz v0, :cond_d

    .line 332
    aget-object p1, p1, v0

    invoke-static {p0, p1}, Lcom/android/internal/content/NativeLibraryHelper;->sumNativeBinaries(Lcom/android/internal/content/NativeLibraryHelper$Handle;Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0

    .line 334
    :cond_d
    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public static blacklist sumNativeBinariesWithOverride(Lcom/android/internal/content/NativeLibraryHelper$Handle;Ljava/lang/String;)J
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 505
    nop

    .line 506
    iget-boolean v0, p0, Lcom/android/internal/content/NativeLibraryHelper$Handle;->multiArch:Z

    const-string v1, "-"

    const-wide/16 v2, 0x0

    if-eqz v0, :cond_31

    .line 510
    if-eqz p1, :cond_18

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_18

    .line 511
    const-string p1, "NativeHelper"

    const-string v0, "Ignoring abiOverride for multi arch application."

    invoke-static {p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    :cond_18
    sget-object p1, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    array-length p1, p1

    if-lez p1, :cond_24

    .line 515
    sget-object p1, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/internal/content/NativeLibraryHelper;->sumNativeBinariesForSupportedAbi(Lcom/android/internal/content/NativeLibraryHelper$Handle;[Ljava/lang/String;)J

    move-result-wide v0

    add-long/2addr v2, v0

    .line 518
    :cond_24
    sget-object p1, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    array-length p1, p1

    if-lez p1, :cond_5e

    .line 519
    sget-object p1, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/internal/content/NativeLibraryHelper;->sumNativeBinariesForSupportedAbi(Lcom/android/internal/content/NativeLibraryHelper$Handle;[Ljava/lang/String;)J

    move-result-wide p0

    add-long/2addr v2, p0

    goto :goto_5e

    .line 522
    :cond_31
    nop

    .line 523
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3b

    .line 524
    move-object p1, v1

    goto :goto_3f

    .line 525
    :cond_3b
    if-eqz p1, :cond_3e

    .line 526
    goto :goto_3f

    .line 525
    :cond_3e
    move-object p1, v1

    .line 529
    :goto_3f
    if-eqz p1, :cond_48

    .line 530
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    goto :goto_4a

    :cond_48
    sget-object v0, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    .line 531
    :goto_4a
    sget-object v1, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_59

    if-nez p1, :cond_59

    .line 532
    invoke-static {p0}, Lcom/android/internal/content/NativeLibraryHelper;->hasRenderscriptBitcode(Lcom/android/internal/content/NativeLibraryHelper$Handle;)Z

    move-result p1

    if-eqz p1, :cond_59

    .line 533
    sget-object v0, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    .line 536
    :cond_59
    invoke-static {p0, v0}, Lcom/android/internal/content/NativeLibraryHelper;->sumNativeBinariesForSupportedAbi(Lcom/android/internal/content/NativeLibraryHelper$Handle;[Ljava/lang/String;)J

    move-result-wide p0

    add-long/2addr v2, p0

    .line 538
    :cond_5e
    :goto_5e
    return-wide v2
.end method
