.class public final Landroid/os/incremental/IncrementalManager;
.super Ljava/lang/Object;
.source "IncrementalManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/incremental/IncrementalManager$LoadingProgressCallbacks;,
        Landroid/os/incremental/IncrementalManager$CreateMode;
    }
.end annotation


# static fields
.field private static final blacklist ALLOWED_PROPERTY:Ljava/lang/String; = "incremental.allowed"

.field public static final blacklist CREATE_MODE_CREATE:I = 0x4

.field public static final blacklist CREATE_MODE_OPEN_EXISTING:I = 0x8

.field public static final blacklist CREATE_MODE_PERMANENT_BIND:I = 0x2

.field public static final blacklist CREATE_MODE_TEMPORARY_BIND:I = 0x1

.field public static final blacklist MIN_VERSION_TO_SUPPORT_FSVERITY:I = 0x2

.field private static final blacklist TAG:Ljava/lang/String; = "IncrementalManager"


# instance fields
.field private final blacklist mLoadingProgressCallbacks:Landroid/os/incremental/IncrementalManager$LoadingProgressCallbacks;

.field private final blacklist mService:Landroid/os/incremental/IIncrementalService;


# direct methods
.method public constructor blacklist <init>(Landroid/os/incremental/IIncrementalService;)V
    .registers 4

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    new-instance v0, Landroid/os/incremental/IncrementalManager$LoadingProgressCallbacks;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/os/incremental/IncrementalManager$LoadingProgressCallbacks;-><init>(Landroid/os/incremental/IncrementalManager-IA;)V

    iput-object v0, p0, Landroid/os/incremental/IncrementalManager;->mLoadingProgressCallbacks:Landroid/os/incremental/IncrementalManager$LoadingProgressCallbacks;

    .line 93
    iput-object p1, p0, Landroid/os/incremental/IncrementalManager;->mService:Landroid/os/incremental/IIncrementalService;

    .line 94
    return-void
.end method

.method public static blacklist getVersion()I
    .registers 1

    .line 268
    invoke-static {}, Landroid/os/incremental/IncrementalManager;->nativeIsEnabled()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-static {}, Landroid/os/incremental/IncrementalManager;->nativeIsV2Available()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x2

    goto :goto_11

    :cond_e
    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public static blacklist isAllowed()Z
    .registers 2

    .line 276
    invoke-static {}, Landroid/os/incremental/IncrementalManager;->isFeatureEnabled()Z

    move-result v0

    if-eqz v0, :cond_10

    const-string v0, "incremental.allowed"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    :goto_11
    return v1
.end method

.method public static blacklist isFeatureEnabled()Z
    .registers 1

    .line 259
    invoke-static {}, Landroid/os/incremental/IncrementalManager;->nativeIsEnabled()Z

    move-result v0

    return v0
.end method

.method public static blacklist isIncrementalFileFd(Ljava/io/FileDescriptor;)Z
    .registers 1

    .line 290
    invoke-virtual {p0}, Ljava/io/FileDescriptor;->getInt$()I

    move-result p0

    invoke-static {p0}, Landroid/os/incremental/IncrementalManager;->nativeIsIncrementalFd(I)Z

    move-result p0

    return p0
.end method

.method public static blacklist isIncrementalPath(Ljava/lang/String;)Z
    .registers 1

    .line 283
    invoke-static {p0}, Landroid/os/incremental/IncrementalManager;->nativeIsIncrementalPath(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private blacklist linkFiles(Landroid/os/incremental/IncrementalStorage;Ljava/io/File;Ljava/lang/String;Landroid/os/incremental/IncrementalStorage;Ljava/lang/String;)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 232
    invoke-virtual {p2}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v3

    .line 233
    const/4 p3, 0x0

    new-array p3, p3, [Ljava/lang/String;

    invoke-static {p5, p3}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v5

    .line 234
    invoke-virtual {p2}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p2

    new-instance v1, Landroid/os/incremental/IncrementalManager$1;

    move-object v2, p0

    move-object v6, p1

    move-object v4, p4

    invoke-direct/range {v1 .. v6}, Landroid/os/incremental/IncrementalManager$1;-><init>(Landroid/os/incremental/IncrementalManager;Ljava/nio/file/Path;Landroid/os/incremental/IncrementalStorage;Ljava/nio/file/Path;Landroid/os/incremental/IncrementalStorage;)V

    invoke-static {p2, v1}, Ljava/nio/file/Files;->walkFileTree(Ljava/nio/file/Path;Ljava/nio/file/FileVisitor;)Ljava/nio/file/Path;

    .line 253
    return-void
.end method

.method private static native blacklist nativeIsEnabled()Z
.end method

.method private static native blacklist nativeIsIncrementalFd(I)Z
.end method

.method private static native blacklist nativeIsIncrementalPath(Ljava/lang/String;)Z
.end method

.method private static native blacklist nativeIsV2Available()Z
.end method

.method private static native blacklist nativeUnsafeGetFileSignature(Ljava/lang/String;)[B
.end method

.method public static blacklist unsafeGetFileSignature(Ljava/lang/String;)[B
    .registers 1

    .line 298
    invoke-static {p0}, Landroid/os/incremental/IncrementalManager;->nativeUnsafeGetFileSignature(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public blacklist createStorage(Ljava/lang/String;Landroid/content/pm/DataLoaderParams;I)Landroid/os/incremental/IncrementalStorage;
    .registers 5

    .line 110
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    :try_start_6
    iget-object v0, p0, Landroid/os/incremental/IncrementalManager;->mService:Landroid/os/incremental/IIncrementalService;

    invoke-virtual {p2}, Landroid/content/pm/DataLoaderParams;->getData()Landroid/content/pm/DataLoaderParamsParcel;

    move-result-object p2

    invoke-interface {v0, p1, p2, p3}, Landroid/os/incremental/IIncrementalService;->createStorage(Ljava/lang/String;Landroid/content/pm/DataLoaderParamsParcel;I)I

    move-result p1

    .line 114
    if-gez p1, :cond_14

    .line 115
    const/4 p1, 0x0

    return-object p1

    .line 117
    :cond_14
    new-instance p2, Landroid/os/incremental/IncrementalStorage;

    iget-object p3, p0, Landroid/os/incremental/IncrementalManager;->mService:Landroid/os/incremental/IIncrementalService;

    invoke-direct {p2, p3, p1}, Landroid/os/incremental/IncrementalStorage;-><init>(Landroid/os/incremental/IIncrementalService;I)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_1b} :catch_1c

    return-object p2

    .line 118
    :catch_1c
    move-exception p1

    .line 119
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist createStorage(Ljava/lang/String;Landroid/os/incremental/IncrementalStorage;I)Landroid/os/incremental/IncrementalStorage;
    .registers 7

    .line 152
    nop

    .line 156
    const/4 v0, -0x1

    :try_start_2
    invoke-static {p1}, Landroid/system/Os;->stat(Ljava/lang/String;)Landroid/system/StructStat;

    move-result-object v1

    .line 157
    iget-object v2, p0, Landroid/os/incremental/IncrementalManager;->mService:Landroid/os/incremental/IIncrementalService;

    .line 158
    invoke-virtual {p2}, Landroid/os/incremental/IncrementalStorage;->getId()I

    move-result p2

    .line 157
    invoke-interface {v2, p1, p2, p3}, Landroid/os/incremental/IIncrementalService;->createLinkedStorage(Ljava/lang/String;II)I

    move-result v0

    .line 159
    if-gez v0, :cond_14

    .line 160
    const/4 p1, 0x0

    return-object p1

    .line 162
    :cond_14
    iget p2, v1, Landroid/system/StructStat;->st_mode:I

    and-int/lit16 p2, p2, 0xfff

    invoke-static {p1, p2}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V

    .line 163
    new-instance p1, Landroid/os/incremental/IncrementalStorage;

    iget-object p2, p0, Landroid/os/incremental/IncrementalManager;->mService:Landroid/os/incremental/IIncrementalService;

    invoke-direct {p1, p2, v0}, Landroid/os/incremental/IncrementalStorage;-><init>(Landroid/os/incremental/IIncrementalService;I)V
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_22} :catch_38
    .catch Landroid/system/ErrnoException; {:try_start_2 .. :try_end_22} :catch_23

    return-object p1

    .line 166
    :catch_23
    move-exception p1

    .line 167
    if-ltz v0, :cond_32

    .line 169
    :try_start_26
    iget-object p2, p0, Landroid/os/incremental/IncrementalManager;->mService:Landroid/os/incremental/IIncrementalService;

    invoke-interface {p2, v0}, Landroid/os/incremental/IIncrementalService;->deleteStorage(I)V
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_2b} :catch_2c

    .line 172
    goto :goto_32

    .line 170
    :catch_2c
    move-exception p1

    .line 171
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 174
    :cond_32
    :goto_32
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 164
    :catch_38
    move-exception p1

    .line 165
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist getMetrics(Ljava/lang/String;)Landroid/os/incremental/IncrementalMetrics;
    .registers 3

    .line 419
    invoke-virtual {p0, p1}, Landroid/os/incremental/IncrementalManager;->openStorage(Ljava/lang/String;)Landroid/os/incremental/IncrementalStorage;

    move-result-object p1

    .line 420
    if-nez p1, :cond_8

    .line 422
    const/4 p1, 0x0

    return-object p1

    .line 424
    :cond_8
    new-instance v0, Landroid/os/incremental/IncrementalMetrics;

    invoke-virtual {p1}, Landroid/os/incremental/IncrementalStorage;->getMetrics()Landroid/os/PersistableBundle;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/os/incremental/IncrementalMetrics;-><init>(Landroid/os/PersistableBundle;)V

    return-object v0
.end method

.method public blacklist linkCodePath(Ljava/io/File;Ljava/io/File;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 195
    invoke-virtual {p1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v2

    .line 196
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/incremental/IncrementalManager;->openStorage(Ljava/lang/String;)Landroid/os/incremental/IncrementalStorage;

    move-result-object v1

    .line 197
    if-eqz v1, :cond_49

    .line 200
    invoke-virtual {p2}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object p1

    .line 201
    nop

    .line 202
    const/4 v0, 0x6

    invoke-virtual {p0, p1, v1, v0}, Landroid/os/incremental/IncrementalManager;->createStorage(Ljava/lang/String;Landroid/os/incremental/IncrementalStorage;I)Landroid/os/incremental/IncrementalStorage;

    move-result-object v4

    .line 205
    if-eqz v4, :cond_30

    .line 209
    :try_start_1e
    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    .line 210
    const-string v3, ""

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/os/incremental/IncrementalManager;->linkFiles(Landroid/os/incremental/IncrementalStorage;Ljava/io/File;Ljava/lang/String;Landroid/os/incremental/IncrementalStorage;Ljava/lang/String;)V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_28} :catch_2a

    .line 214
    nop

    .line 215
    return-void

    .line 211
    :catch_2a
    move-exception v0

    move-object p2, v0

    .line 212
    invoke-virtual {v4, p1}, Landroid/os/incremental/IncrementalStorage;->unBind(Ljava/lang/String;)V

    .line 213
    throw p2

    .line 206
    :cond_30
    new-instance p2, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to create linked storage at dir: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 198
    :cond_49
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Not an Incremental path: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public blacklist openStorage(Ljava/lang/String;)Landroid/os/incremental/IncrementalStorage;
    .registers 4

    .line 133
    :try_start_0
    iget-object v0, p0, Landroid/os/incremental/IncrementalManager;->mService:Landroid/os/incremental/IIncrementalService;

    invoke-interface {v0, p1}, Landroid/os/incremental/IIncrementalService;->openStorage(Ljava/lang/String;)I

    move-result p1

    .line 134
    if-gez p1, :cond_a

    .line 135
    const/4 p1, 0x0

    return-object p1

    .line 137
    :cond_a
    new-instance v0, Landroid/os/incremental/IncrementalStorage;

    iget-object v1, p0, Landroid/os/incremental/IncrementalManager;->mService:Landroid/os/incremental/IIncrementalService;

    invoke-direct {v0, v1, p1}, Landroid/os/incremental/IncrementalStorage;-><init>(Landroid/os/incremental/IIncrementalService;I)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_11} :catch_12

    .line 138
    return-object v0

    .line 139
    :catch_12
    move-exception p1

    .line 140
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist registerLoadingProgressCallback(Ljava/lang/String;Landroid/content/pm/IPackageLoadingProgressCallback;)Z
    .registers 4

    .line 330
    invoke-virtual {p0, p1}, Landroid/os/incremental/IncrementalManager;->openStorage(Ljava/lang/String;)Landroid/os/incremental/IncrementalStorage;

    move-result-object p1

    .line 331
    if-nez p1, :cond_8

    .line 333
    const/4 p1, 0x0

    return p1

    .line 335
    :cond_8
    iget-object v0, p0, Landroid/os/incremental/IncrementalManager;->mLoadingProgressCallbacks:Landroid/os/incremental/IncrementalManager$LoadingProgressCallbacks;

    invoke-virtual {v0, p1, p2}, Landroid/os/incremental/IncrementalManager$LoadingProgressCallbacks;->registerCallback(Landroid/os/incremental/IncrementalStorage;Landroid/content/pm/IPackageLoadingProgressCallback;)Z

    move-result p1

    return p1
.end method

.method public blacklist rmPackageDir(Ljava/io/File;)V
    .registers 4

    .line 308
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    .line 309
    invoke-virtual {p0, p1}, Landroid/os/incremental/IncrementalManager;->openStorage(Ljava/lang/String;)Landroid/os/incremental/IncrementalStorage;

    move-result-object v0

    .line 310
    if-nez v0, :cond_b

    .line 311
    return-void

    .line 313
    :cond_b
    iget-object v1, p0, Landroid/os/incremental/IncrementalManager;->mLoadingProgressCallbacks:Landroid/os/incremental/IncrementalManager$LoadingProgressCallbacks;

    invoke-virtual {v1, v0}, Landroid/os/incremental/IncrementalManager$LoadingProgressCallbacks;->cleanUpCallbacks(Landroid/os/incremental/IncrementalStorage;)V

    .line 314
    invoke-virtual {v0, p1}, Landroid/os/incremental/IncrementalStorage;->unBind(Ljava/lang/String;)V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_13} :catch_14

    .line 317
    goto :goto_1c

    .line 315
    :catch_14
    move-exception p1

    .line 316
    const-string v0, "IncrementalManager"

    const-string v1, "Failed to remove code path"

    invoke-static {v0, v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 318
    :goto_1c
    return-void
.end method

.method public blacklist unregisterLoadingProgressCallbacks(Ljava/lang/String;)V
    .registers 3

    .line 343
    invoke-virtual {p0, p1}, Landroid/os/incremental/IncrementalManager;->openStorage(Ljava/lang/String;)Landroid/os/incremental/IncrementalStorage;

    move-result-object p1

    .line 344
    if-nez p1, :cond_7

    .line 346
    return-void

    .line 348
    :cond_7
    iget-object v0, p0, Landroid/os/incremental/IncrementalManager;->mLoadingProgressCallbacks:Landroid/os/incremental/IncrementalManager$LoadingProgressCallbacks;

    invoke-virtual {v0, p1}, Landroid/os/incremental/IncrementalManager$LoadingProgressCallbacks;->cleanUpCallbacks(Landroid/os/incremental/IncrementalStorage;)V

    .line 349
    return-void
.end method
