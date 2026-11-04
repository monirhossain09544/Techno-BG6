.class public final Lcom/android/internal/content/F2fsUtils;
.super Ljava/lang/Object;
.source "F2fsUtils.java"


# static fields
.field private static final blacklist COMPRESSION_FEATURE:Ljava/lang/String; = "compression"

.field private static final blacklist DEBUG_F2FS:Z = false

.field private static final blacklist TAG:Ljava/lang/String; = "F2fsUtils"

.field private static final blacklist sDataDirectory:Ljava/io/File;

.field private static final blacklist sKernelCompressionAvailable:Z

.field private static final blacklist sKernelFeatures:Ljava/io/File;

.field private static final blacklist sUserDataCompressionAvailable:Z

.field private static final blacklist sUserDataFeatures:Ljava/io/File;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 41
    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/fs/f2fs/features"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/content/F2fsUtils;->sKernelFeatures:Ljava/io/File;

    .line 44
    new-instance v0, Ljava/io/File;

    const-string v1, "/dev/sys/fs/by-name/userdata/features"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/content/F2fsUtils;->sUserDataFeatures:Ljava/io/File;

    .line 46
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    sput-object v0, Lcom/android/internal/content/F2fsUtils;->sDataDirectory:Ljava/io/File;

    .line 54
    invoke-static {}, Lcom/android/internal/content/F2fsUtils;->isCompressionEnabledInKernel()Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/content/F2fsUtils;->sKernelCompressionAvailable:Z

    .line 55
    nop

    .line 60
    invoke-static {}, Lcom/android/internal/content/F2fsUtils;->isCompressionEnabledOnUserData()Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/content/F2fsUtils;->sUserDataCompressionAvailable:Z

    .line 61
    nop

    .line 66
    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist getFilesRecursive(Ljava/io/File;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 262
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    .line 263
    if-nez p0, :cond_8

    .line 264
    const/4 p0, 0x0

    return-object p0

    .line 266
    :cond_8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 267
    array-length v1, p0

    const/4 v2, 0x0

    :goto_f
    if-ge v2, v1, :cond_31

    aget-object v3, p0, v2

    .line 268
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_23

    .line 269
    invoke-static {v3}, Lcom/android/internal/content/F2fsUtils;->getFilesRecursive(Ljava/io/File;)Ljava/util/List;

    move-result-object v3

    .line 270
    if-eqz v3, :cond_2d

    .line 271
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_2d

    .line 273
    :cond_23
    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 274
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2e

    .line 273
    :cond_2d
    :goto_2d
    nop

    .line 267
    :goto_2e
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 277
    :cond_31
    return-object v0
.end method

.method private static blacklist getFilesToRelease(Ljava/io/File;)[Ljava/io/File;
    .registers 3

    .line 284
    invoke-static {p0}, Lcom/android/internal/content/F2fsUtils;->getFilesRecursive(Ljava/io/File;)Ljava/util/List;

    move-result-object v0

    .line 285
    const/4 v1, 0x0

    if-nez v0, :cond_15

    .line 286
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 287
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/io/File;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    return-object v0

    .line 289
    :cond_14
    return-object v1

    .line 291
    :cond_15
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    if-nez p0, :cond_1c

    .line 292
    return-object v1

    .line 294
    :cond_1c
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    new-array p0, p0, [Ljava/io/File;

    invoke-interface {v0, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/io/File;

    return-object p0
.end method

.method private static blacklist isChild(Ljava/io/File;Ljava/lang/String;)Z
    .registers 4

    .line 166
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object p0

    .line 168
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object p1

    .line 169
    :goto_e
    if-eqz p1, :cond_1d

    .line 170
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 171
    const/4 p0, 0x1

    return p0

    .line 173
    :cond_18
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1c} :catch_1e

    goto :goto_e

    .line 175
    :cond_1d
    return v0

    .line 176
    :catch_1e
    move-exception p0

    .line 177
    return v0
.end method

.method private static blacklist isCompressionAllowed(Ljava/io/File;)Z
    .registers 3

    .line 136
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object p0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_5} :catch_18

    .line 142
    nop

    .line 143
    invoke-static {p0}, Landroid/os/incremental/IncrementalManager;->isIncrementalPath(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 147
    return v0

    .line 149
    :cond_d
    sget-object v1, Lcom/android/internal/content/F2fsUtils;->sDataDirectory:Ljava/io/File;

    invoke-static {v1, p0}, Lcom/android/internal/content/F2fsUtils;->isChild(Ljava/io/File;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_16

    .line 153
    return v0

    .line 158
    :cond_16
    const/4 p0, 0x1

    return p0

    .line 137
    :catch_18
    move-exception p0

    .line 141
    return v0
.end method

.method private static blacklist isCompressionEnabledInKernel()Z
    .registers 6

    .line 189
    sget-object v0, Lcom/android/internal/content/F2fsUtils;->sKernelFeatures:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 190
    const/4 v1, 0x0

    if-eqz v0, :cond_27

    array-length v2, v0

    if-nez v2, :cond_d

    goto :goto_27

    .line 196
    :cond_d
    array-length v2, v0

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    :goto_10
    if-ltz v2, :cond_26

    .line 197
    aget-object v4, v0, v2

    .line 198
    aget-object v4, v0, v2

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "compression"

    invoke-virtual {v5, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_23

    .line 202
    return v3

    .line 196
    :cond_23
    add-int/lit8 v2, v2, -0x1

    goto :goto_10

    .line 208
    :cond_26
    return v1

    .line 194
    :cond_27
    :goto_27
    return v1
.end method

.method private static blacklist isCompressionEnabledOnUserData()Z
    .registers 6

    .line 218
    sget-object v0, Lcom/android/internal/content/F2fsUtils;->sUserDataFeatures:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_61

    sget-object v0, Lcom/android/internal/content/F2fsUtils;->sUserDataFeatures:Ljava/io/File;

    .line 219
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_61

    sget-object v0, Lcom/android/internal/content/F2fsUtils;->sUserDataFeatures:Ljava/io/File;

    .line 220
    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v0

    if-nez v0, :cond_1a

    goto :goto_61

    .line 228
    :cond_1a
    :try_start_1a
    sget-object v0, Lcom/android/internal/content/F2fsUtils;->sUserDataFeatures:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/file/Files;->readAllLines(Ljava/nio/file/Path;)Ljava/util/List;

    move-result-object v0
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_24} :catch_5f

    .line 234
    nop

    .line 235
    if-eqz v0, :cond_5e

    .line 236
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-gt v2, v3, :cond_5e

    .line 237
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3b

    goto :goto_5e

    .line 243
    :cond_3b
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 244
    array-length v2, v0

    sub-int/2addr v2, v3

    :goto_49
    if-ltz v2, :cond_5d

    .line 245
    aget-object v4, v0, v2

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, "compression"

    invoke-virtual {v5, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5a

    .line 249
    return v3

    .line 244
    :cond_5a
    add-int/lit8 v2, v2, -0x1

    goto :goto_49

    .line 255
    :cond_5d
    return v1

    .line 241
    :cond_5e
    :goto_5e
    return v1

    .line 229
    :catch_5f
    move-exception v0

    .line 233
    return v1

    .line 224
    :cond_61
    :goto_61
    return v1
.end method

.method private static native blacklist nativeReleaseCompressedBlocks(Ljava/lang/String;)J
.end method

.method public static blacklist releaseCompressedBlocks(Landroid/content/ContentResolver;Ljava/io/File;)V
    .registers 4

    .line 86
    sget-boolean v0, Lcom/android/internal/content/F2fsUtils;->sKernelCompressionAvailable:Z

    if-eqz v0, :cond_3c

    sget-boolean v0, Lcom/android/internal/content/F2fsUtils;->sUserDataCompressionAvailable:Z

    if-nez v0, :cond_9

    goto :goto_3c

    .line 95
    :cond_9
    nop

    .line 96
    const-string v0, "release_compress_blocks_on_install"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_15

    move p0, v1

    goto :goto_16

    :cond_15
    const/4 p0, 0x0

    .line 97
    :goto_16
    if-nez p0, :cond_19

    .line 101
    return-void

    .line 103
    :cond_19
    invoke-static {p1}, Lcom/android/internal/content/F2fsUtils;->isCompressionAllowed(Ljava/io/File;)Z

    move-result p0

    if-nez p0, :cond_20

    .line 107
    return-void

    .line 109
    :cond_20
    invoke-static {p1}, Lcom/android/internal/content/F2fsUtils;->getFilesToRelease(Ljava/io/File;)[Ljava/io/File;

    move-result-object p0

    .line 110
    if-eqz p0, :cond_3b

    array-length p1, p0

    if-nez p1, :cond_2a

    goto :goto_3b

    .line 116
    :cond_2a
    array-length p1, p0

    sub-int/2addr p1, v1

    :goto_2c
    if-ltz p1, :cond_3a

    .line 117
    aget-object v0, p0, p1

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/content/F2fsUtils;->nativeReleaseCompressedBlocks(Ljava/lang/String;)J

    .line 116
    add-int/lit8 p1, p1, -0x1

    goto :goto_2c

    .line 123
    :cond_3a
    return-void

    .line 114
    :cond_3b
    :goto_3b
    return-void

    .line 87
    :cond_3c
    :goto_3c
    return-void
.end method
