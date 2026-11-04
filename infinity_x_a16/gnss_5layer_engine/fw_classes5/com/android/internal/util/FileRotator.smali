.class public Lcom/android/internal/util/FileRotator;
.super Ljava/lang/Object;
.source "FileRotator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/util/FileRotator$FileInfo;,
        Lcom/android/internal/util/FileRotator$Rewriter;,
        Lcom/android/internal/util/FileRotator$Reader;,
        Lcom/android/internal/util/FileRotator$Writer;
    }
.end annotation


# static fields
.field private static final blacklist LOGD:Z = false

.field private static final blacklist SUFFIX_BACKUP:Ljava/lang/String; = ".backup"

.field private static final blacklist SUFFIX_NO_BACKUP:Ljava/lang/String; = ".no_backup"

.field private static final blacklist TAG:Ljava/lang/String; = "FileRotator"


# instance fields
.field private final blacklist mBasePath:Ljava/io/File;

.field private final blacklist mDeleteAgeMillis:J

.field private final blacklist mPrefix:Ljava/lang/String;

.field private final blacklist mRotateAgeMillis:J


# direct methods
.method public constructor blacklist <init>(Ljava/io/File;Ljava/lang/String;JJ)V
    .registers 11

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/File;

    iput-object p1, p0, Lcom/android/internal/util/FileRotator;->mBasePath:Ljava/io/File;

    .line 107
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/android/internal/util/FileRotator;->mPrefix:Ljava/lang/String;

    .line 108
    iput-wide p3, p0, Lcom/android/internal/util/FileRotator;->mRotateAgeMillis:J

    .line 109
    iput-wide p5, p0, Lcom/android/internal/util/FileRotator;->mDeleteAgeMillis:J

    .line 112
    iget-object p1, p0, Lcom/android/internal/util/FileRotator;->mBasePath:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 115
    iget-object p1, p0, Lcom/android/internal/util/FileRotator;->mBasePath:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object p1

    array-length p2, p1

    const/4 p3, 0x0

    move p4, p3

    :goto_25
    if-ge p4, p2, :cond_87

    aget-object p5, p1, p4

    .line 116
    iget-object p6, p0, Lcom/android/internal/util/FileRotator;->mPrefix:Ljava/lang/String;

    invoke-virtual {p5, p6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p6

    if-nez p6, :cond_32

    goto :goto_84

    .line 118
    :cond_32
    const-string p6, ".backup"

    invoke-virtual {p5, p6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_59

    .line 121
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/internal/util/FileRotator;->mBasePath:Ljava/io/File;

    invoke-direct {v0, v1, p5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 122
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/internal/util/FileRotator;->mBasePath:Ljava/io/File;

    .line 123
    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p6}, Ljava/lang/String;->length()I

    move-result p6

    sub-int/2addr v3, p6

    invoke-virtual {p5, p3, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p5

    invoke-direct {v1, v2, p5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 126
    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    goto :goto_83

    .line 128
    :cond_59
    const-string p6, ".no_backup"

    invoke-virtual {p5, p6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_83

    .line 131
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/internal/util/FileRotator;->mBasePath:Ljava/io/File;

    invoke-direct {v0, v1, p5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 132
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/internal/util/FileRotator;->mBasePath:Ljava/io/File;

    .line 133
    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p6}, Ljava/lang/String;->length()I

    move-result p6

    sub-int/2addr v3, p6

    invoke-virtual {p5, p3, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p5

    invoke-direct {v1, v2, p5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 136
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 137
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_84

    .line 128
    :cond_83
    :goto_83
    nop

    .line 115
    :goto_84
    add-int/lit8 p4, p4, 0x1

    goto :goto_25

    .line 140
    :cond_87
    return-void
.end method

.method private blacklist getActiveName(J)Ljava/lang/String;
    .registers 15

    .line 333
    nop

    .line 334
    nop

    .line 336
    new-instance v0, Lcom/android/internal/util/FileRotator$FileInfo;

    iget-object v1, p0, Lcom/android/internal/util/FileRotator;->mPrefix:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/android/internal/util/FileRotator$FileInfo;-><init>(Ljava/lang/String;)V

    .line 337
    iget-object v1, p0, Lcom/android/internal/util/FileRotator;->mBasePath:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    .line 338
    const-wide v2, 0x7fffffffffffffffL

    if-nez v1, :cond_1f

    .line 340
    iput-wide p1, v0, Lcom/android/internal/util/FileRotator$FileInfo;->startMillis:J

    .line 341
    iput-wide v2, v0, Lcom/android/internal/util/FileRotator$FileInfo;->endMillis:J

    .line 342
    invoke-virtual {v0}, Lcom/android/internal/util/FileRotator$FileInfo;->build()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 345
    :cond_1f
    array-length v4, v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-wide v7, v2

    :goto_23
    if-ge v6, v4, :cond_47

    aget-object v9, v1, v6

    .line 346
    invoke-virtual {v0, v9}, Lcom/android/internal/util/FileRotator$FileInfo;->parse(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_2e

    goto :goto_44

    .line 349
    :cond_2e
    invoke-virtual {v0}, Lcom/android/internal/util/FileRotator$FileInfo;->isActive()Z

    move-result v10

    if-eqz v10, :cond_44

    iget-wide v10, v0, Lcom/android/internal/util/FileRotator$FileInfo;->startMillis:J

    cmp-long v10, v10, p1

    if-gez v10, :cond_44

    iget-wide v10, v0, Lcom/android/internal/util/FileRotator$FileInfo;->startMillis:J

    cmp-long v10, v10, v7

    if-gez v10, :cond_44

    .line 351
    nop

    .line 352
    iget-wide v7, v0, Lcom/android/internal/util/FileRotator$FileInfo;->startMillis:J

    move-object v5, v9

    .line 345
    :cond_44
    :goto_44
    add-int/lit8 v6, v6, 0x1

    goto :goto_23

    .line 356
    :cond_47
    if-eqz v5, :cond_4a

    .line 357
    return-object v5

    .line 360
    :cond_4a
    iput-wide p1, v0, Lcom/android/internal/util/FileRotator$FileInfo;->startMillis:J

    .line 361
    iput-wide v2, v0, Lcom/android/internal/util/FileRotator$FileInfo;->endMillis:J

    .line 362
    invoke-virtual {v0}, Lcom/android/internal/util/FileRotator$FileInfo;->build()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method static synthetic blacklist lambda$readMatching$0(Landroid/util/Pair;)J
    .registers 3

    .line 310
    iget-object p0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method private static blacklist readFile(Ljava/io/File;Lcom/android/internal/util/FileRotator$Reader;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 405
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 406
    new-instance p0, Ljava/io/BufferedInputStream;

    invoke-direct {p0, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 408
    :try_start_a
    invoke-interface {p1, p0}, Lcom/android/internal/util/FileRotator$Reader;->read(Ljava/io/InputStream;)V
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_12

    .line 410
    invoke-static {p0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 411
    nop

    .line 412
    return-void

    .line 410
    :catchall_12
    move-exception p1

    invoke-static {p0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 411
    throw p1
.end method

.method private static blacklist rethrowAsIoException(Ljava/lang/Throwable;)Ljava/io/IOException;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 430
    instance-of v0, p0, Ljava/io/IOException;

    if-eqz v0, :cond_7

    .line 431
    check-cast p0, Ljava/io/IOException;

    throw p0

    .line 433
    :cond_7
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private blacklist rewriteSingle(Lcom/android/internal/util/FileRotator$Rewriter;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 242
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/internal/util/FileRotator;->mBasePath:Ljava/io/File;

    invoke-direct {v0, v1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 245
    invoke-interface {p1}, Lcom/android/internal/util/FileRotator$Rewriter;->reset()V

    .line 247
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_4a

    .line 249
    invoke-static {v0, p1}, Lcom/android/internal/util/FileRotator;->readFile(Ljava/io/File;Lcom/android/internal/util/FileRotator$Reader;)V

    .line 252
    invoke-interface {p1}, Lcom/android/internal/util/FileRotator$Rewriter;->shouldWrite()Z

    move-result v1

    if-nez v1, :cond_1a

    return-void

    .line 255
    :cond_1a
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/internal/util/FileRotator;->mBasePath:Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v3, ".backup"

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, v2, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 256
    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 259
    :try_start_37
    invoke-static {v0, p1}, Lcom/android/internal/util/FileRotator;->writeFile(Ljava/io/File;Lcom/android/internal/util/FileRotator$Writer;)V

    .line 262
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_3d
    .catchall {:try_start_37 .. :try_end_3d} :catchall_3e

    .line 268
    goto :goto_6e

    .line 263
    :catchall_3e
    move-exception p1

    .line 265
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 266
    invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 267
    invoke-static {p1}, Lcom/android/internal/util/FileRotator;->rethrowAsIoException(Ljava/lang/Throwable;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    .line 272
    :cond_4a
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/internal/util/FileRotator;->mBasePath:Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v3, ".no_backup"

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, v2, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 273
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 276
    :try_start_67
    invoke-static {v0, p1}, Lcom/android/internal/util/FileRotator;->writeFile(Ljava/io/File;Lcom/android/internal/util/FileRotator$Writer;)V

    .line 279
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_6d
    .catchall {:try_start_67 .. :try_end_6d} :catchall_6f

    .line 285
    nop

    .line 287
    :goto_6e
    return-void

    .line 280
    :catchall_6f
    move-exception p1

    .line 282
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 283
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 284
    invoke-static {p1}, Lcom/android/internal/util/FileRotator;->rethrowAsIoException(Ljava/lang/Throwable;)Ljava/io/IOException;

    move-result-object p1

    throw p1
.end method

.method private static blacklist writeFile(Ljava/io/File;Lcom/android/internal/util/FileRotator$Writer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 415
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 416
    new-instance p0, Ljava/io/BufferedOutputStream;

    invoke-direct {p0, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 418
    :try_start_a
    invoke-interface {p1, p0}, Lcom/android/internal/util/FileRotator$Writer;->write(Ljava/io/OutputStream;)V

    .line 419
    invoke-virtual {p0}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_10
    .catchall {:try_start_a .. :try_end_10} :catchall_1e

    .line 422
    :try_start_10
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/FileDescriptor;->sync()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_17} :catch_18

    .line 424
    goto :goto_19

    .line 423
    :catch_18
    move-exception p1

    .line 425
    :goto_19
    invoke-static {p0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 426
    nop

    .line 427
    return-void

    .line 421
    :catchall_1e
    move-exception p1

    .line 422
    :try_start_1f
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->sync()V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_26} :catch_27

    .line 424
    goto :goto_28

    .line 423
    :catch_27
    move-exception v0

    .line 425
    :goto_28
    invoke-static {p0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 426
    throw p1
.end method


# virtual methods
.method public blacklist combineActive(Lcom/android/internal/util/FileRotator$Reader;Lcom/android/internal/util/FileRotator$Writer;J)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 197
    new-instance v0, Lcom/android/internal/util/FileRotator$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/internal/util/FileRotator$1;-><init>(Lcom/android/internal/util/FileRotator;Lcom/android/internal/util/FileRotator$Reader;Lcom/android/internal/util/FileRotator$Writer;)V

    invoke-virtual {p0, v0, p3, p4}, Lcom/android/internal/util/FileRotator;->rewriteActive(Lcom/android/internal/util/FileRotator$Rewriter;J)V

    .line 218
    return-void
.end method

.method public blacklist deleteAll()V
    .registers 8

    .line 146
    new-instance v0, Lcom/android/internal/util/FileRotator$FileInfo;

    iget-object v1, p0, Lcom/android/internal/util/FileRotator;->mPrefix:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/android/internal/util/FileRotator$FileInfo;-><init>(Ljava/lang/String;)V

    .line 147
    iget-object v1, p0, Lcom/android/internal/util/FileRotator;->mBasePath:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_f
    if-ge v3, v2, :cond_26

    aget-object v4, v1, v3

    .line 148
    invoke-virtual {v0, v4}, Lcom/android/internal/util/FileRotator$FileInfo;->parse(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_23

    .line 150
    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lcom/android/internal/util/FileRotator;->mBasePath:Ljava/io/File;

    invoke-direct {v5, v6, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 147
    :cond_23
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 153
    :cond_26
    return-void
.end method

.method public blacklist dumpAll(Ljava/io/OutputStream;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 159
    new-instance v0, Ljava/util/zip/ZipOutputStream;

    invoke-direct {v0, p1}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 161
    :try_start_5
    new-instance p1, Lcom/android/internal/util/FileRotator$FileInfo;

    iget-object v1, p0, Lcom/android/internal/util/FileRotator;->mPrefix:Ljava/lang/String;

    invoke-direct {p1, v1}, Lcom/android/internal/util/FileRotator$FileInfo;-><init>(Ljava/lang/String;)V

    .line 162
    iget-object v1, p0, Lcom/android/internal/util/FileRotator;->mBasePath:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_14
    if-ge v3, v2, :cond_45

    aget-object v4, v1, v3

    .line 163
    invoke-virtual {p1, v4}, Lcom/android/internal/util/FileRotator$FileInfo;->parse(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_42

    .line 164
    new-instance v5, Ljava/util/zip/ZipEntry;

    invoke-direct {v5, v4}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 165
    invoke-virtual {v0, v5}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 167
    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lcom/android/internal/util/FileRotator;->mBasePath:Ljava/io/File;

    invoke-direct {v5, v6, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 168
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_32
    .catchall {:try_start_5 .. :try_end_32} :catchall_4a

    .line 170
    :try_start_32
    invoke-static {v4, v0}, Landroid/os/FileUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_3d

    .line 172
    :try_start_35
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 173
    nop

    .line 175
    invoke-virtual {v0}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    goto :goto_42

    .line 172
    :catchall_3d
    move-exception p1

    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 173
    throw p1
    :try_end_42
    .catchall {:try_start_35 .. :try_end_42} :catchall_4a

    .line 162
    :cond_42
    :goto_42
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 179
    :cond_45
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 180
    nop

    .line 181
    return-void

    .line 179
    :catchall_4a
    move-exception p1

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 180
    throw p1
.end method

.method public blacklist maybeRotate(J)V
    .registers 15

    .line 371
    iget-wide v0, p0, Lcom/android/internal/util/FileRotator;->mRotateAgeMillis:J

    sub-long v0, p1, v0

    .line 372
    iget-wide v2, p0, Lcom/android/internal/util/FileRotator;->mDeleteAgeMillis:J

    sub-long v2, p1, v2

    .line 374
    new-instance v4, Lcom/android/internal/util/FileRotator$FileInfo;

    iget-object v5, p0, Lcom/android/internal/util/FileRotator;->mPrefix:Ljava/lang/String;

    invoke-direct {v4, v5}, Lcom/android/internal/util/FileRotator$FileInfo;-><init>(Ljava/lang/String;)V

    .line 375
    iget-object v5, p0, Lcom/android/internal/util/FileRotator;->mBasePath:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v5

    .line 376
    if-nez v5, :cond_18

    .line 377
    return-void

    .line 380
    :cond_18
    array-length v6, v5

    const/4 v7, 0x0

    :goto_1a
    if-ge v7, v6, :cond_5c

    aget-object v8, v5, v7

    .line 381
    invoke-virtual {v4, v8}, Lcom/android/internal/util/FileRotator$FileInfo;->parse(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_25

    goto :goto_59

    .line 383
    :cond_25
    invoke-virtual {v4}, Lcom/android/internal/util/FileRotator$FileInfo;->isActive()Z

    move-result v9

    if-eqz v9, :cond_49

    .line 384
    iget-wide v9, v4, Lcom/android/internal/util/FileRotator$FileInfo;->startMillis:J

    cmp-long v9, v9, v0

    if-gtz v9, :cond_59

    .line 388
    iput-wide p1, v4, Lcom/android/internal/util/FileRotator$FileInfo;->endMillis:J

    .line 390
    new-instance v9, Ljava/io/File;

    iget-object v10, p0, Lcom/android/internal/util/FileRotator;->mBasePath:Ljava/io/File;

    invoke-direct {v9, v10, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 391
    new-instance v8, Ljava/io/File;

    iget-object v10, p0, Lcom/android/internal/util/FileRotator;->mBasePath:Ljava/io/File;

    invoke-virtual {v4}, Lcom/android/internal/util/FileRotator$FileInfo;->build()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v8, v10, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 392
    invoke-virtual {v9, v8}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 393
    goto :goto_59

    .line 394
    :cond_49
    iget-wide v9, v4, Lcom/android/internal/util/FileRotator$FileInfo;->endMillis:J

    cmp-long v9, v9, v2

    if-gtz v9, :cond_59

    .line 398
    new-instance v9, Ljava/io/File;

    iget-object v10, p0, Lcom/android/internal/util/FileRotator;->mBasePath:Ljava/io/File;

    invoke-direct {v9, v10, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 399
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 380
    :cond_59
    :goto_59
    add-int/lit8 v7, v7, 0x1

    goto :goto_1a

    .line 402
    :cond_5c
    return-void
.end method

.method public blacklist readMatching(Lcom/android/internal/util/FileRotator$Reader;JJ)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 308
    new-instance v0, Lcom/android/internal/util/FileRotator$FileInfo;

    iget-object v1, p0, Lcom/android/internal/util/FileRotator;->mPrefix:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/android/internal/util/FileRotator$FileInfo;-><init>(Ljava/lang/String;)V

    .line 309
    new-instance v1, Ljava/util/TreeSet;

    new-instance v2, Lcom/android/internal/util/FileRotator$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/android/internal/util/FileRotator$$ExternalSyntheticLambda0;-><init>()V

    .line 310
    invoke-static {v2}, Ljava/util/Comparator;->comparingLong(Ljava/util/function/ToLongFunction;)Ljava/util/Comparator;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 311
    iget-object v2, p0, Lcom/android/internal/util/FileRotator;->mBasePath:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_1d
    if-ge v4, v3, :cond_45

    aget-object v5, v2, v4

    .line 312
    invoke-virtual {v0, v5}, Lcom/android/internal/util/FileRotator$FileInfo;->parse(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_28

    goto :goto_42

    .line 315
    :cond_28
    iget-wide v6, v0, Lcom/android/internal/util/FileRotator$FileInfo;->startMillis:J

    cmp-long v6, v6, p4

    if-gtz v6, :cond_42

    iget-wide v6, v0, Lcom/android/internal/util/FileRotator$FileInfo;->endMillis:J

    cmp-long v6, p2, v6

    if-gtz v6, :cond_42

    .line 316
    new-instance v6, Landroid/util/Pair;

    iget-wide v7, v0, Lcom/android/internal/util/FileRotator$FileInfo;->startMillis:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-direct {v6, v7, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v6}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 311
    :cond_42
    :goto_42
    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    .line 321
    :cond_45
    invoke-virtual {v1}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_49
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_64

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/util/Pair;

    .line 322
    iget-object p3, p3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p3, Ljava/lang/String;

    .line 324
    new-instance p4, Ljava/io/File;

    iget-object p5, p0, Lcom/android/internal/util/FileRotator;->mBasePath:Ljava/io/File;

    invoke-direct {p4, p5, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 325
    invoke-static {p4, p1}, Lcom/android/internal/util/FileRotator;->readFile(Ljava/io/File;Lcom/android/internal/util/FileRotator$Reader;)V

    .line 326
    goto :goto_49

    .line 327
    :cond_64
    return-void
.end method

.method public blacklist rewriteActive(Lcom/android/internal/util/FileRotator$Rewriter;J)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 190
    invoke-direct {p0, p2, p3}, Lcom/android/internal/util/FileRotator;->getActiveName(J)Ljava/lang/String;

    move-result-object p2

    .line 191
    invoke-direct {p0, p1, p2}, Lcom/android/internal/util/FileRotator;->rewriteSingle(Lcom/android/internal/util/FileRotator$Rewriter;Ljava/lang/String;)V

    .line 192
    return-void
.end method

.method public blacklist rewriteAll(Lcom/android/internal/util/FileRotator$Rewriter;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 225
    new-instance v0, Lcom/android/internal/util/FileRotator$FileInfo;

    iget-object v1, p0, Lcom/android/internal/util/FileRotator;->mPrefix:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/android/internal/util/FileRotator$FileInfo;-><init>(Ljava/lang/String;)V

    .line 226
    iget-object v1, p0, Lcom/android/internal/util/FileRotator;->mBasePath:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_f
    if-ge v3, v2, :cond_20

    aget-object v4, v1, v3

    .line 227
    invoke-virtual {v0, v4}, Lcom/android/internal/util/FileRotator$FileInfo;->parse(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1a

    goto :goto_1d

    .line 230
    :cond_1a
    invoke-direct {p0, p1, v4}, Lcom/android/internal/util/FileRotator;->rewriteSingle(Lcom/android/internal/util/FileRotator$Rewriter;Ljava/lang/String;)V

    .line 226
    :goto_1d
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 232
    :cond_20
    return-void
.end method

.method public blacklist rewriteSingle(Lcom/android/internal/util/FileRotator$Rewriter;JJ)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 296
    new-instance v0, Lcom/android/internal/util/FileRotator$FileInfo;

    iget-object v1, p0, Lcom/android/internal/util/FileRotator;->mPrefix:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/android/internal/util/FileRotator$FileInfo;-><init>(Ljava/lang/String;)V

    .line 298
    iput-wide p2, v0, Lcom/android/internal/util/FileRotator$FileInfo;->startMillis:J

    .line 299
    iput-wide p4, v0, Lcom/android/internal/util/FileRotator$FileInfo;->endMillis:J

    .line 300
    invoke-virtual {v0}, Lcom/android/internal/util/FileRotator$FileInfo;->build()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/android/internal/util/FileRotator;->rewriteSingle(Lcom/android/internal/util/FileRotator$Rewriter;Ljava/lang/String;)V

    .line 301
    return-void
.end method
