.class public Landroid/os/flagging/PlatformAconfigPackage;
.super Ljava/lang/Object;
.source "PlatformAconfigPackage.java"


# static fields
.field private static final blacklist BOOT_PATH:Ljava/lang/String; = "/metadata/aconfig/boot/"

.field private static final blacklist MAP_PATH:Ljava/lang/String; = "/metadata/aconfig/maps/"

.field public static final greylist PLATFORM_PACKAGE_MAP_FILES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String; = "PlatformAconfigPackage"

.field static final blacklist sStorageFilesCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/internal/aconfig/storage/TableUtils$StorageFilesBundle;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mFlagTable:Landroid/internal/aconfig/storage/FlagTable;

.field private blacklist mFlagValueList:Landroid/internal/aconfig/storage/FlagValueList;

.field private blacklist mPackageBooleanStartOffset:I

.field private blacklist mPackageId:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 7

    .line 63
    const-string v0, "/metadata/aconfig/maps/"

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Landroid/os/flagging/PlatformAconfigPackage;->sStorageFilesCache:Ljava/util/Map;

    .line 67
    nop

    .line 68
    const-string/jumbo v1, "system.package.map"

    const-string/jumbo v2, "system_ext.package.map"

    const-string/jumbo v3, "vendor.package.map"

    const-string/jumbo v4, "product.package.map"

    invoke-static {v1, v2, v3, v4}, Ljava/util/Set;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    sput-object v1, Landroid/os/flagging/PlatformAconfigPackage;->PLATFORM_PACKAGE_MAP_FILES:Ljava/util/Set;

    .line 75
    sget-object v1, Landroid/os/flagging/PlatformAconfigPackage;->PLATFORM_PACKAGE_MAP_FILES:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_22
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_bb

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 77
    :try_start_2e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/os/flagging/PlatformAconfigPackage;->mapStorageFile(Ljava/lang/String;)Ljava/nio/MappedByteBuffer;

    move-result-object v2

    invoke-static {v2}, Landroid/internal/aconfig/storage/PackageTable;->fromBytes(Ljava/nio/ByteBuffer;)Landroid/internal/aconfig/storage/PackageTable;

    move-result-object v2

    .line 78
    invoke-virtual {v2}, Landroid/internal/aconfig/storage/PackageTable;->getHeader()Landroid/internal/aconfig/storage/PackageTable$Header;

    move-result-object v3

    invoke-virtual {v3}, Landroid/internal/aconfig/storage/PackageTable$Header;->getContainer()Ljava/lang/String;

    move-result-object v3

    .line 79
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".flag.map"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 80
    invoke-static {v4}, Landroid/os/flagging/PlatformAconfigPackage;->mapStorageFile(Ljava/lang/String;)Ljava/nio/MappedByteBuffer;

    move-result-object v4

    invoke-static {v4}, Landroid/internal/aconfig/storage/FlagTable;->fromBytes(Ljava/nio/ByteBuffer;)Landroid/internal/aconfig/storage/FlagTable;

    move-result-object v4

    .line 81
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/metadata/aconfig/boot/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ".val"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 82
    invoke-static {v3}, Landroid/os/flagging/PlatformAconfigPackage;->mapStorageFile(Ljava/lang/String;)Ljava/nio/MappedByteBuffer;

    move-result-object v3

    invoke-static {v3}, Landroid/internal/aconfig/storage/FlagValueList;->fromBytes(Ljava/nio/ByteBuffer;)Landroid/internal/aconfig/storage/FlagValueList;

    move-result-object v3

    .line 83
    new-instance v5, Landroid/internal/aconfig/storage/TableUtils$StorageFilesBundle;

    invoke-direct {v5, v2, v4, v3}, Landroid/internal/aconfig/storage/TableUtils$StorageFilesBundle;-><init>(Landroid/internal/aconfig/storage/PackageTable;Landroid/internal/aconfig/storage/FlagTable;Landroid/internal/aconfig/storage/FlagValueList;)V

    .line 84
    invoke-virtual {v2}, Landroid/internal/aconfig/storage/PackageTable;->getPackageList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_ae

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 85
    sget-object v4, Landroid/os/flagging/PlatformAconfigPackage;->sStorageFilesCache:Ljava/util/Map;

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_ad
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_ad} :catch_af

    .line 86
    goto :goto_9c

    .line 90
    :cond_ae
    goto :goto_b9

    .line 87
    :catch_af
    move-exception v2

    .line 89
    const-string v3, "PlatformAconfigPackage"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    :goto_b9
    goto/16 :goto_22

    .line 92
    :cond_bb
    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 2

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/4 v0, -0x1

    iput v0, p0, Landroid/os/flagging/PlatformAconfigPackage;->mPackageBooleanStartOffset:I

    .line 58
    iput v0, p0, Landroid/os/flagging/PlatformAconfigPackage;->mPackageId:I

    .line 60
    return-void
.end method

.method public static greylist load(Ljava/lang/String;)Landroid/os/flagging/PlatformAconfigPackage;
    .registers 6

    .line 110
    const-string v0, "Fail to create PlatformAconfigPackage: "

    :try_start_2
    new-instance v1, Landroid/os/flagging/PlatformAconfigPackage;

    invoke-direct {v1}, Landroid/os/flagging/PlatformAconfigPackage;-><init>()V

    .line 111
    sget-object v2, Landroid/os/flagging/PlatformAconfigPackage;->sStorageFilesCache:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/internal/aconfig/storage/TableUtils$StorageFilesBundle;

    .line 112
    if-nez v2, :cond_13

    .line 113
    const/4 p0, 0x0

    return-object p0

    .line 115
    :cond_13
    iget-object v3, v2, Landroid/internal/aconfig/storage/TableUtils$StorageFilesBundle;->packageTable:Landroid/internal/aconfig/storage/PackageTable;

    invoke-virtual {v3, p0}, Landroid/internal/aconfig/storage/PackageTable;->get(Ljava/lang/String;)Landroid/internal/aconfig/storage/PackageTable$Node;

    move-result-object v3

    .line 116
    iget-object v4, v2, Landroid/internal/aconfig/storage/TableUtils$StorageFilesBundle;->flagTable:Landroid/internal/aconfig/storage/FlagTable;

    iput-object v4, v1, Landroid/os/flagging/PlatformAconfigPackage;->mFlagTable:Landroid/internal/aconfig/storage/FlagTable;

    .line 117
    iget-object v2, v2, Landroid/internal/aconfig/storage/TableUtils$StorageFilesBundle;->flagValueList:Landroid/internal/aconfig/storage/FlagValueList;

    iput-object v2, v1, Landroid/os/flagging/PlatformAconfigPackage;->mFlagValueList:Landroid/internal/aconfig/storage/FlagValueList;

    .line 118
    invoke-virtual {v3}, Landroid/internal/aconfig/storage/PackageTable$Node;->getBooleanStartIndex()I

    move-result v2

    iput v2, v1, Landroid/os/flagging/PlatformAconfigPackage;->mPackageBooleanStartOffset:I

    .line 119
    invoke-virtual {v3}, Landroid/internal/aconfig/storage/PackageTable$Node;->getPackageId()I

    move-result v2

    iput v2, v1, Landroid/os/flagging/PlatformAconfigPackage;->mPackageId:I
    :try_end_2d
    .catch Landroid/internal/aconfig/storage/AconfigStorageException; {:try_start_2 .. :try_end_2d} :catch_47
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2d} :catch_2e

    .line 120
    return-object v1

    .line 124
    :catch_2e
    move-exception v1

    .line 125
    new-instance v2, Landroid/os/flagging/AconfigStorageReadException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    invoke-direct {v2, v0, p0, v1}, Landroid/os/flagging/AconfigStorageReadException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 121
    :catch_47
    move-exception v1

    .line 122
    new-instance v2, Landroid/os/flagging/AconfigStorageReadException;

    .line 123
    invoke-virtual {v1}, Landroid/internal/aconfig/storage/AconfigStorageException;->getErrorCode()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, v3, p0, v1}, Landroid/os/flagging/AconfigStorageReadException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private static blacklist mapStorageFile(Ljava/lang/String;)Ljava/nio/MappedByteBuffer;
    .registers 11

    .line 155
    nop

    .line 157
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_3
    new-array v2, v0, [Ljava/lang/String;

    invoke-static {p0, v2}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/nio/file/OpenOption;

    sget-object v3, Ljava/nio/file/StandardOpenOption;->READ:Ljava/nio/file/StandardOpenOption;

    aput-object v3, v2, v0

    invoke-static {p0, v2}, Ljava/nio/channels/FileChannel;->open(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/nio/channels/FileChannel;

    move-result-object v4
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_14} :catch_2f
    .catchall {:try_start_3 .. :try_end_14} :catchall_2c

    .line 158
    :try_start_14
    sget-object v5, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    invoke-virtual {v4}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v8

    const-wide/16 v6, 0x0

    invoke-virtual/range {v4 .. v9}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object p0
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_20} :catch_28
    .catchall {:try_start_14 .. :try_end_20} :catchall_24

    .line 165
    invoke-static {v4}, Landroid/os/flagging/PlatformAconfigPackage;->quietlyDispose(Ljava/io/Closeable;)V

    .line 158
    return-object p0

    .line 165
    :catchall_24
    move-exception v0

    move-object p0, v0

    move-object v1, v4

    goto :goto_3a

    .line 159
    :catch_28
    move-exception v0

    move-object p0, v0

    move-object v1, v4

    goto :goto_31

    .line 165
    :catchall_2c
    move-exception v0

    move-object p0, v0

    goto :goto_3a

    .line 159
    :catch_2f
    move-exception v0

    move-object p0, v0

    .line 160
    :goto_31
    :try_start_31
    new-instance v0, Landroid/os/flagging/AconfigStorageReadException;

    const-string v2, "Fail to mmap storage"

    const/4 v3, 0x4

    invoke-direct {v0, v3, v2, p0}, Landroid/os/flagging/AconfigStorageReadException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_3a
    .catchall {:try_start_31 .. :try_end_3a} :catchall_2c

    .line 165
    :goto_3a
    invoke-static {v1}, Landroid/os/flagging/PlatformAconfigPackage;->quietlyDispose(Ljava/io/Closeable;)V

    .line 166
    throw p0
.end method

.method private static blacklist quietlyDispose(Ljava/io/Closeable;)V
    .registers 1

    .line 171
    if-eqz p0, :cond_8

    .line 172
    :try_start_2
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_6

    goto :goto_8

    .line 174
    :catch_6
    move-exception p0

    goto :goto_9

    .line 176
    :cond_8
    :goto_8
    nop

    .line 177
    :goto_9
    return-void
.end method


# virtual methods
.method public greylist getBooleanFlagValue(Ljava/lang/String;Z)Z
    .registers 5

    .line 146
    iget-object v0, p0, Landroid/os/flagging/PlatformAconfigPackage;->mFlagTable:Landroid/internal/aconfig/storage/FlagTable;

    iget v1, p0, Landroid/os/flagging/PlatformAconfigPackage;->mPackageId:I

    invoke-virtual {v0, v1, p1}, Landroid/internal/aconfig/storage/FlagTable;->get(ILjava/lang/String;)Landroid/internal/aconfig/storage/FlagTable$Node;

    move-result-object p1

    .line 147
    if-nez p1, :cond_b

    .line 148
    return p2

    .line 150
    :cond_b
    iget-object p2, p0, Landroid/os/flagging/PlatformAconfigPackage;->mFlagValueList:Landroid/internal/aconfig/storage/FlagValueList;

    invoke-virtual {p1}, Landroid/internal/aconfig/storage/FlagTable$Node;->getFlagIndex()I

    move-result p1

    iget v0, p0, Landroid/os/flagging/PlatformAconfigPackage;->mPackageBooleanStartOffset:I

    add-int/2addr p1, v0

    invoke-virtual {p2, p1}, Landroid/internal/aconfig/storage/FlagValueList;->getBoolean(I)Z

    move-result p1

    return p1
.end method
