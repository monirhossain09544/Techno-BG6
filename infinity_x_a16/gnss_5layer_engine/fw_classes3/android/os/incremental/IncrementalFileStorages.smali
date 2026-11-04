.class public final Landroid/os/incremental/IncrementalFileStorages;
.super Ljava/lang/Object;
.source "IncrementalFileStorages.java"


# static fields
.field private static final blacklist SYSTEM_DATA_LOADER_PACKAGE:Ljava/lang/String; = "android"

.field private static final blacklist TAG:Ljava/lang/String; = "IncrementalFileStorages"


# instance fields
.field private blacklist mDefaultStorage:Landroid/os/incremental/IncrementalStorage;

.field private final blacklist mIncrementalManager:Landroid/os/incremental/IncrementalManager;

.field private blacklist mInheritedStorage:Landroid/os/incremental/IncrementalStorage;

.field private final blacklist mStageDir:Ljava/io/File;


# direct methods
.method private constructor blacklist <init>(Ljava/io/File;Ljava/io/File;Landroid/os/incremental/IncrementalManager;Landroid/content/pm/DataLoaderParams;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    :try_start_3
    iput-object p1, p0, Landroid/os/incremental/IncrementalFileStorages;->mStageDir:Ljava/io/File;

    .line 115
    iput-object p3, p0, Landroid/os/incremental/IncrementalFileStorages;->mIncrementalManager:Landroid/os/incremental/IncrementalManager;

    .line 116
    const/4 p3, 0x5

    if-eqz p2, :cond_71

    .line 117
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 116
    invoke-static {v0}, Landroid/os/incremental/IncrementalManager;->isIncrementalPath(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_71

    .line 118
    iget-object v0, p0, Landroid/os/incremental/IncrementalFileStorages;->mIncrementalManager:Landroid/os/incremental/IncrementalManager;

    .line 119
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    .line 118
    invoke-virtual {v0, p2}, Landroid/os/incremental/IncrementalManager;->openStorage(Ljava/lang/String;)Landroid/os/incremental/IncrementalStorage;

    move-result-object p2

    iput-object p2, p0, Landroid/os/incremental/IncrementalFileStorages;->mInheritedStorage:Landroid/os/incremental/IncrementalStorage;

    .line 120
    iget-object p2, p0, Landroid/os/incremental/IncrementalFileStorages;->mInheritedStorage:Landroid/os/incremental/IncrementalStorage;

    if-eqz p2, :cond_71

    .line 121
    const-string p2, "android"

    .line 122
    invoke-virtual {p4}, Landroid/content/pm/DataLoaderParams;->getComponentName()Landroid/content/ComponentName;

    move-result-object p4

    invoke-virtual {p4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p4

    .line 121
    invoke-virtual {p2, p4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    .line 123
    if-eqz p2, :cond_45

    iget-object p2, p0, Landroid/os/incremental/IncrementalFileStorages;->mInheritedStorage:Landroid/os/incremental/IncrementalStorage;

    invoke-virtual {p2}, Landroid/os/incremental/IncrementalStorage;->isFullyLoaded()Z

    move-result p2

    if-eqz p2, :cond_3d

    goto :goto_45

    .line 125
    :cond_3d
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Inherited storage has missing pages."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 128
    :cond_45
    :goto_45
    iget-object p2, p0, Landroid/os/incremental/IncrementalFileStorages;->mIncrementalManager:Landroid/os/incremental/IncrementalManager;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p4

    iget-object v0, p0, Landroid/os/incremental/IncrementalFileStorages;->mInheritedStorage:Landroid/os/incremental/IncrementalStorage;

    invoke-virtual {p2, p4, v0, p3}, Landroid/os/incremental/IncrementalManager;->createStorage(Ljava/lang/String;Landroid/os/incremental/IncrementalStorage;I)Landroid/os/incremental/IncrementalStorage;

    move-result-object p2

    iput-object p2, p0, Landroid/os/incremental/IncrementalFileStorages;->mDefaultStorage:Landroid/os/incremental/IncrementalStorage;

    .line 131
    iget-object p2, p0, Landroid/os/incremental/IncrementalFileStorages;->mDefaultStorage:Landroid/os/incremental/IncrementalStorage;

    if-eqz p2, :cond_58

    .line 135
    return-void

    .line 132
    :cond_58
    new-instance p2, Ljava/io/IOException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Couldn\'t create linked incremental storage at "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 139
    :cond_71
    iget-object p2, p0, Landroid/os/incremental/IncrementalFileStorages;->mIncrementalManager:Landroid/os/incremental/IncrementalManager;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0, p4, p3}, Landroid/os/incremental/IncrementalManager;->createStorage(Ljava/lang/String;Landroid/content/pm/DataLoaderParams;I)Landroid/os/incremental/IncrementalStorage;

    move-result-object p2

    iput-object p2, p0, Landroid/os/incremental/IncrementalFileStorages;->mDefaultStorage:Landroid/os/incremental/IncrementalStorage;

    .line 142
    iget-object p2, p0, Landroid/os/incremental/IncrementalFileStorages;->mDefaultStorage:Landroid/os/incremental/IncrementalStorage;

    if-eqz p2, :cond_83

    .line 149
    nop

    .line 150
    return-void

    .line 143
    :cond_83
    new-instance p2, Ljava/io/IOException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Couldn\'t create incremental storage at "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_9c
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_9c} :catch_9c

    .line 146
    :catch_9c
    move-exception p1

    .line 147
    invoke-direct {p0}, Landroid/os/incremental/IncrementalFileStorages;->cleanUp()Landroid/os/incremental/IncrementalStorage;

    .line 148
    throw p1
.end method

.method private blacklist addApkFile(Landroid/content/pm/InstallationFileParcel;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 153
    iget-object v1, p1, Landroid/content/pm/InstallationFileParcel;->name:Ljava/lang/String;

    .line 154
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Landroid/os/incremental/IncrementalFileStorages;->mStageDir:Ljava/io/File;

    invoke-direct {v0, v2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 155
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 156
    iget-object v0, p0, Landroid/os/incremental/IncrementalFileStorages;->mDefaultStorage:Landroid/os/incremental/IncrementalStorage;

    iget-wide v2, p1, Landroid/content/pm/InstallationFileParcel;->size:J

    iget-object v6, p1, Landroid/content/pm/InstallationFileParcel;->metadata:[B

    iget-object v7, p1, Landroid/content/pm/InstallationFileParcel;->signature:[B

    const/4 v8, 0x0

    const/16 v4, 0x1ff

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/os/incremental/IncrementalStorage;->makeFile(Ljava/lang/String;JILjava/util/UUID;[B[B[B)V

    .line 159
    :cond_1e
    return-void
.end method

.method private blacklist cleanUp()Landroid/os/incremental/IncrementalStorage;
    .registers 4

    .line 219
    iget-object v0, p0, Landroid/os/incremental/IncrementalFileStorages;->mDefaultStorage:Landroid/os/incremental/IncrementalStorage;

    .line 220
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/os/incremental/IncrementalFileStorages;->mInheritedStorage:Landroid/os/incremental/IncrementalStorage;

    .line 221
    iput-object v1, p0, Landroid/os/incremental/IncrementalFileStorages;->mDefaultStorage:Landroid/os/incremental/IncrementalStorage;

    .line 222
    if-nez v0, :cond_a

    .line 223
    return-object v1

    .line 227
    :cond_a
    :try_start_a
    iget-object v1, p0, Landroid/os/incremental/IncrementalFileStorages;->mIncrementalManager:Landroid/os/incremental/IncrementalManager;

    iget-object v2, p0, Landroid/os/incremental/IncrementalFileStorages;->mStageDir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/incremental/IncrementalManager;->unregisterLoadingProgressCallbacks(Ljava/lang/String;)V

    .line 228
    iget-object v1, p0, Landroid/os/incremental/IncrementalFileStorages;->mStageDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/incremental/IncrementalStorage;->unBind(Ljava/lang/String;)V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_1e} :catch_1f

    .line 230
    goto :goto_20

    .line 229
    :catch_1f
    move-exception v1

    .line 231
    :goto_20
    return-object v0
.end method

.method public static blacklist initialize(Landroid/content/Context;Ljava/io/File;Ljava/io/File;Landroid/content/pm/DataLoaderParams;Landroid/content/pm/IDataLoaderStatusListener;Landroid/os/incremental/StorageHealthCheckParams;Landroid/os/incremental/IStorageHealthListener;Ljava/util/List;[Landroid/os/incremental/PerUidReadTimeouts;Landroid/content/pm/IPackageLoadingProgressCallback;)Landroid/os/incremental/IncrementalFileStorages;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/io/File;",
            "Ljava/io/File;",
            "Landroid/content/pm/DataLoaderParams;",
            "Landroid/content/pm/IDataLoaderStatusListener;",
            "Landroid/os/incremental/StorageHealthCheckParams;",
            "Landroid/os/incremental/IStorageHealthListener;",
            "Ljava/util/List<",
            "Landroid/content/pm/InstallationFileParcel;",
            ">;[",
            "Landroid/os/incremental/PerUidReadTimeouts;",
            "Landroid/content/pm/IPackageLoadingProgressCallback;",
            ")",
            "Landroid/os/incremental/IncrementalFileStorages;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 78
    const-string v0, "incremental"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/incremental/IncrementalManager;

    .line 80
    if-eqz p0, :cond_79

    .line 84
    move-object v0, p1

    new-instance p1, Landroid/os/incremental/IncrementalFileStorages;

    invoke-direct {p1, v0, p2, p0, p3}, Landroid/os/incremental/IncrementalFileStorages;-><init>(Ljava/io/File;Ljava/io/File;Landroid/os/incremental/IncrementalManager;Landroid/content/pm/DataLoaderParams;)V

    .line 86
    invoke-interface {p7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_14
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p7

    if-eqz p7, :cond_67

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p7

    check-cast p7, Landroid/content/pm/InstallationFileParcel;

    .line 87
    iget v1, p7, Landroid/content/pm/InstallationFileParcel;->location:I

    if-nez v1, :cond_4c

    .line 89
    :try_start_24
    invoke-direct {p1, p7}, Landroid/os/incremental/IncrementalFileStorages;->addApkFile(Landroid/content/pm/InstallationFileParcel;)V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_27} :catch_29

    .line 93
    nop

    .line 97
    goto :goto_14

    .line 90
    :catch_29
    move-exception v0

    move-object p0, v0

    .line 91
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Failed to add file to IncFS: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p3, p7, Landroid/content/pm/InstallationFileParcel;->name:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, ", reason: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 95
    :cond_4c
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unknown file location: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p2, p7, Landroid/content/pm/InstallationFileParcel;->location:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 99
    :cond_67
    if-eqz p9, :cond_70

    .line 100
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2, p9}, Landroid/os/incremental/IncrementalManager;->registerLoadingProgressCallback(Ljava/lang/String;Landroid/content/pm/IPackageLoadingProgressCallback;)Z

    .line 103
    :cond_70
    move-object p2, p3

    move-object p3, p4

    move-object p4, p5

    move-object p5, p6

    move-object p6, p8

    invoke-virtual/range {p1 .. p6}, Landroid/os/incremental/IncrementalFileStorages;->startLoading(Landroid/content/pm/DataLoaderParams;Landroid/content/pm/IDataLoaderStatusListener;Landroid/os/incremental/StorageHealthCheckParams;Landroid/os/incremental/IStorageHealthListener;[Landroid/os/incremental/PerUidReadTimeouts;)V

    .line 106
    return-object p1

    .line 81
    :cond_79
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Failed to obtain incrementalManager."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public blacklist cleanUpAndMarkComplete()V
    .registers 2

    .line 212
    invoke-direct {p0}, Landroid/os/incremental/IncrementalFileStorages;->cleanUp()Landroid/os/incremental/IncrementalStorage;

    move-result-object v0

    .line 213
    if-eqz v0, :cond_9

    .line 214
    invoke-virtual {v0}, Landroid/os/incremental/IncrementalStorage;->onInstallationComplete()V

    .line 216
    :cond_9
    return-void
.end method

.method public blacklist disallowReadLogs()V
    .registers 2

    .line 205
    iget-object v0, p0, Landroid/os/incremental/IncrementalFileStorages;->mDefaultStorage:Landroid/os/incremental/IncrementalStorage;

    invoke-virtual {v0}, Landroid/os/incremental/IncrementalStorage;->disallowReadLogs()V

    .line 206
    return-void
.end method

.method public blacklist makeFile(Ljava/lang/String;[BI)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 182
    iget-object v0, p0, Landroid/os/incremental/IncrementalFileStorages;->mDefaultStorage:Landroid/os/incremental/IncrementalStorage;

    array-length v1, p2

    int-to-long v2, v1

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p1

    move-object v8, p2

    move v4, p3

    invoke-virtual/range {v0 .. v8}, Landroid/os/incremental/IncrementalStorage;->makeFile(Ljava/lang/String;JILjava/util/UUID;[B[B[B)V

    .line 184
    return-void
.end method

.method public blacklist makeLink(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 191
    iget-object v0, p0, Landroid/os/incremental/IncrementalFileStorages;->mInheritedStorage:Landroid/os/incremental/IncrementalStorage;

    if-nez v0, :cond_6

    .line 192
    const/4 p1, 0x0

    return p1

    .line 194
    :cond_6
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    iget-object p1, p0, Landroid/os/incremental/IncrementalFileStorages;->mInheritedStorage:Landroid/os/incremental/IncrementalStorage;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p3

    iget-object v0, p0, Landroid/os/incremental/IncrementalFileStorages;->mDefaultStorage:Landroid/os/incremental/IncrementalStorage;

    .line 197
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    .line 196
    invoke-virtual {p1, p3, v0, p2}, Landroid/os/incremental/IncrementalStorage;->makeLink(Ljava/lang/String;Landroid/os/incremental/IncrementalStorage;Ljava/lang/String;)V

    .line 198
    const/4 p1, 0x1

    return p1
.end method

.method public blacklist startLoading(Landroid/content/pm/DataLoaderParams;Landroid/content/pm/IDataLoaderStatusListener;Landroid/os/incremental/StorageHealthCheckParams;Landroid/os/incremental/IStorageHealthListener;[Landroid/os/incremental/PerUidReadTimeouts;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 170
    iget-object v0, p0, Landroid/os/incremental/IncrementalFileStorages;->mDefaultStorage:Landroid/os/incremental/IncrementalStorage;

    move-object p0, v0

    invoke-virtual/range {p0 .. p5}, Landroid/os/incremental/IncrementalStorage;->startLoading(Landroid/content/pm/DataLoaderParams;Landroid/content/pm/IDataLoaderStatusListener;Landroid/os/incremental/StorageHealthCheckParams;Landroid/os/incremental/IStorageHealthListener;[Landroid/os/incremental/PerUidReadTimeouts;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 175
    return-void

    .line 172
    :cond_a
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Failed to start or restart loading data for Incremental installation."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
