.class public final Landroid/os/FileUtils;
.super Ljava/lang/Object;
.source "FileUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/FileUtils$ProgressListener;,
        Landroid/os/FileUtils$NoImagePreloadHolder;,
        Landroid/os/FileUtils$MemoryPipe;
    }
.end annotation


# static fields
.field private static final greylist-max-o COPY_CHECKPOINT_BYTES:J = 0x80000L

.field public static final greylist-max-o S_IRGRP:I = 0x20

.field public static final greylist-max-o S_IROTH:I = 0x4

.field public static final greylist-max-o S_IRUSR:I = 0x100

.field public static final greylist-max-o S_IRWXG:I = 0x38

.field public static final greylist-max-o S_IRWXO:I = 0x7

.field public static final greylist-max-o S_IRWXU:I = 0x1c0

.field public static final greylist-max-o S_IWGRP:I = 0x10

.field public static final greylist-max-o S_IWOTH:I = 0x2

.field public static final greylist-max-o S_IWUSR:I = 0x80

.field public static final greylist-max-o S_IXGRP:I = 0x8

.field public static final greylist-max-o S_IXOTH:I = 0x1

.field public static final greylist-max-o S_IXUSR:I = 0x40

.field private static final greylist-max-o TAG:Ljava/lang/String; = "FileUtils"

.field private static blacklist sEnableCopyOptimizations:Z

.field private static volatile blacklist sMediaProviderAppId:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 135
    const/4 v0, 0x1

    sput-boolean v0, Landroid/os/FileUtils;->sEnableCopyOptimizations:Z

    .line 136
    const/4 v0, -0x1

    sput v0, Landroid/os/FileUtils;->sMediaProviderAppId:I

    .line 141
    invoke-static {}, Landroid/os/FileUtils;->shouldEnableCopyOptimizations()Z

    move-result v0

    sput-boolean v0, Landroid/os/FileUtils;->sEnableCopyOptimizations:Z

    .line 142
    return-void
.end method

.method private constructor greylist <init>()V
    .registers 1

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    return-void
.end method

.method private static greylist-max-o buildFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .registers 5

    .line 1338
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1339
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object p2

    .line 1341
    :cond_c
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "."

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static blacklist buildNonUniqueFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .registers 4

    .line 1249
    invoke-static {p1, p2}, Landroid/os/FileUtils;->splitFileName(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 1250
    const/4 p2, 0x0

    aget-object p2, p1, p2

    const/4 v0, 0x1

    aget-object p1, p1, v0

    invoke-static {p0, p2, p1}, Landroid/os/FileUtils;->buildFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static greylist-max-o buildUniqueFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 1265
    const/16 v0, 0x2e

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 1266
    if-ltz v0, :cond_16

    .line 1267
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1268
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    move-object v0, p1

    move-object p1, v1

    goto :goto_18

    .line 1270
    :cond_16
    nop

    .line 1271
    const/4 v0, 0x0

    .line 1274
    :goto_18
    invoke-static {p0, p1, v0}, Landroid/os/FileUtils;->buildUniqueFileWithExtension(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static greylist-max-o buildUniqueFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 1243
    invoke-static {p1, p2}, Landroid/os/FileUtils;->splitFileName(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 1244
    const/4 p2, 0x0

    aget-object p2, p1, p2

    const/4 v0, 0x1

    aget-object p1, p1, v0

    invoke-static {p0, p2, p1}, Landroid/os/FileUtils;->buildUniqueFileWithExtension(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method private static greylist-max-o buildUniqueFileWithExtension(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 1215
    invoke-static {p0, p1, p2}, Landroid/os/FileUtils;->buildFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 1218
    const/4 v1, 0x0

    .line 1219
    :goto_5
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 1220
    add-int/lit8 v0, v1, 0x1

    const/16 v2, 0x20

    if-ge v1, v2, :cond_36

    .line 1223
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, p2}, Landroid/os/FileUtils;->buildFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    move-object v3, v1

    move v1, v0

    move-object v0, v3

    goto :goto_5

    .line 1221
    :cond_36
    new-instance p0, Ljava/io/FileNotFoundException;

    const-string p1, "Failed to create unique file"

    invoke-direct {p0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1226
    :cond_3e
    return-object v0
.end method

.method public static greylist-max-o buildValidExtFilename(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 1086
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_47

    const-string v0, "."

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_47

    const-string v0, ".."

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    goto :goto_47

    .line 1089
    :cond_17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1090
    const/4 v1, 0x0

    :goto_21
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_3d

    .line 1091
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 1092
    invoke-static {v2}, Landroid/os/FileUtils;->isValidExtFilenameChar(C)Z

    move-result v3

    if-eqz v3, :cond_35

    .line 1093
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3a

    .line 1095
    :cond_35
    const/16 v2, 0x5f

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1090
    :goto_3a
    add-int/lit8 v1, v1, 0x1

    goto :goto_21

    .line 1098
    :cond_3d
    const/16 p0, 0xff

    invoke-static {v0, p0}, Landroid/os/FileUtils;->trimFilename(Ljava/lang/StringBuilder;I)V

    .line 1099
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1087
    :cond_47
    :goto_47
    const-string p0, "(invalid)"

    return-object p0
.end method

.method public static greylist-max-o buildValidFatFilename(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 1139
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_47

    const-string v0, "."

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_47

    const-string v0, ".."

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    goto :goto_47

    .line 1142
    :cond_17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1143
    const/4 v1, 0x0

    :goto_21
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_3d

    .line 1144
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 1145
    invoke-static {v2}, Landroid/os/FileUtils;->isValidFatFilenameChar(C)Z

    move-result v3

    if-eqz v3, :cond_35

    .line 1146
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3a

    .line 1148
    :cond_35
    const/16 v2, 0x5f

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1143
    :goto_3a
    add-int/lit8 v1, v1, 0x1

    goto :goto_21

    .line 1153
    :cond_3d
    const/16 p0, 0xff

    invoke-static {v0, p0}, Landroid/os/FileUtils;->trimFilename(Ljava/lang/StringBuilder;I)V

    .line 1154
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1140
    :cond_47
    :goto_47
    const-string p0, "(invalid)"

    return-object p0
.end method

.method public static greylist-max-o bytesToFile(Ljava/lang/String;[B)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 809
    const-string v0, "/proc/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 810
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWritesMask()I

    move-result v0

    .line 811
    :try_start_c
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_c .. :try_end_11} :catchall_26

    .line 812
    :try_start_11
    invoke-virtual {v1, p1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_14
    .catchall {:try_start_11 .. :try_end_14} :catchall_1c

    .line 813
    :try_start_14
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_26

    .line 814
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    .line 815
    nop

    .line 816
    goto :goto_36

    .line 811
    :catchall_1c
    move-exception p0

    :try_start_1d
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_21

    goto :goto_25

    :catchall_21
    move-exception p1

    :try_start_22
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_25
    throw p0
    :try_end_26
    .catchall {:try_start_22 .. :try_end_26} :catchall_26

    .line 814
    :catchall_26
    move-exception p0

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    .line 815
    throw p0

    .line 817
    :cond_2b
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 818
    :try_start_30
    invoke-virtual {v0, p1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_33
    .catchall {:try_start_30 .. :try_end_33} :catchall_37

    .line 819
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 821
    :goto_36
    return-void

    .line 817
    :catchall_37
    move-exception p0

    :try_start_38
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_3b
    .catchall {:try_start_38 .. :try_end_3b} :catchall_3c

    goto :goto_40

    :catchall_3c
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_40
    throw p0
.end method

.method public static greylist-max-r checksumCrc32(Ljava/io/File;)J
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 849
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    .line 850
    nop

    .line 853
    const/4 v1, 0x0

    :try_start_7
    new-instance v2, Ljava/util/zip/CheckedInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3, v0}, Ljava/util/zip/CheckedInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Checksum;)V
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_2a

    .line 854
    const/16 p0, 0x80

    :try_start_13
    new-array p0, p0, [B

    .line 855
    :goto_15
    invoke-virtual {v2, p0}, Ljava/util/zip/CheckedInputStream;->read([B)I

    move-result v1

    if-ltz v1, :cond_1c

    goto :goto_15

    .line 858
    :cond_1c
    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v0
    :try_end_20
    .catchall {:try_start_13 .. :try_end_20} :catchall_27

    .line 860
    nop

    .line 862
    :try_start_21
    invoke-virtual {v2}, Ljava/util/zip/CheckedInputStream;->close()V
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_24} :catch_25

    .line 864
    goto :goto_26

    .line 863
    :catch_25
    move-exception p0

    .line 858
    :goto_26
    return-wide v0

    .line 860
    :catchall_27
    move-exception p0

    move-object v1, v2

    goto :goto_2b

    :catchall_2a
    move-exception p0

    :goto_2b
    if-eqz v1, :cond_32

    .line 862
    :try_start_2d
    invoke-virtual {v1}, Ljava/util/zip/CheckedInputStream;->close()V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_30} :catch_31

    .line 864
    goto :goto_32

    .line 863
    :catch_31
    move-exception v0

    .line 866
    :cond_32
    :goto_32
    throw p0
.end method

.method public static whitelist closeQuietly(Ljava/io/FileDescriptor;)V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1537
    invoke-static {p0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 1538
    return-void
.end method

.method public static whitelist closeQuietly(Ljava/lang/AutoCloseable;)V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1522
    invoke-static {p0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1523
    return-void
.end method

.method public static greylist-max-o contains(Ljava/io/File;Ljava/io/File;)Z
    .registers 2

    .line 1008
    if-eqz p0, :cond_12

    if-nez p1, :cond_5

    goto :goto_12

    .line 1009
    :cond_5
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/os/FileUtils;->contains(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 1008
    :cond_12
    :goto_12
    const/4 p0, 0x0

    return p0
.end method

.method public static greylist-max-o contains(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    .line 1023
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1024
    const/4 p0, 0x1

    return p0

    .line 1026
    :cond_8
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_21

    .line 1027
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1029
    :cond_21
    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static blacklist contains(Ljava/util/Collection;Ljava/io/File;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/io/File;",
            ">;",
            "Ljava/io/File;",
            ")Z"
        }
    .end annotation

    .line 988
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 989
    invoke-static {v0, p1}, Landroid/os/FileUtils;->contains(Ljava/io/File;Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 990
    const/4 p0, 0x1

    return p0

    .line 992
    :cond_18
    goto :goto_4

    .line 993
    :cond_19
    const/4 p0, 0x0

    return p0
.end method

.method public static greylist-max-o contains([Ljava/io/File;Ljava/io/File;)Z
    .registers 6

    .line 978
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_3
    if-ge v2, v0, :cond_12

    aget-object v3, p0, v2

    .line 979
    invoke-static {v3, p1}, Landroid/os/FileUtils;->contains(Ljava/io/File;Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 980
    const/4 p0, 0x1

    return p0

    .line 978
    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 983
    :cond_12
    return v1
.end method

.method public static blacklist convertToModernFd(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;
    .registers 5

    .line 1680
    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object v0

    .line 1681
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    invoke-static {v0}, Landroid/os/FileUtils;->getMediaProviderAppId(Landroid/content/Context;)I

    move-result v2

    const/4 v3, 0x0

    if-ne v1, v2, :cond_14

    .line 1684
    return-object v3

    .line 1687
    :cond_14
    :try_start_14
    invoke-static {p0}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object p0
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_18} :catch_2e

    .line 1688
    :try_start_18
    invoke-static {v0, p0}, Landroid/provider/MediaStore;->getOriginalMediaFormatFileDescriptor(Landroid/content/Context;Landroid/os/ParcelFileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0
    :try_end_1c
    .catchall {:try_start_18 .. :try_end_1c} :catchall_22

    .line 1689
    if-eqz p0, :cond_21

    :try_start_1e
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_21} :catch_2e

    .line 1688
    :cond_21
    return-object v0

    .line 1687
    :catchall_22
    move-exception v0

    if-eqz p0, :cond_2d

    :try_start_25
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_29

    goto :goto_2d

    :catchall_29
    move-exception p0

    :try_start_2a
    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2d
    :goto_2d
    throw v0
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2e} :catch_2e

    .line 1689
    :catch_2e
    move-exception p0

    .line 1691
    return-object v3
.end method

.method public static greylist-max-o copy(Ljava/io/File;Ljava/io/File;)J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 354
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, v0, v0}, Landroid/os/FileUtils;->copy(Ljava/io/File;Ljava/io/File;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/os/FileUtils$ProgressListener;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static blacklist copy(Ljava/io/File;Ljava/io/File;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/os/FileUtils$ProgressListener;)J
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 372
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 373
    :try_start_5
    new-instance p0, Ljava/io/FileOutputStream;

    invoke-direct {p0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_1f

    .line 374
    :try_start_a
    invoke-static {v0, p0, p2, p3, p4}, Landroid/os/FileUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/os/FileUtils$ProgressListener;)J

    move-result-wide p1
    :try_end_e
    .catchall {:try_start_a .. :try_end_e} :catchall_15

    .line 375
    :try_start_e
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_11
    .catchall {:try_start_e .. :try_end_11} :catchall_1f

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 374
    return-wide p1

    .line 372
    :catchall_15
    move-exception p1

    :try_start_16
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_19
    .catchall {:try_start_16 .. :try_end_19} :catchall_1a

    goto :goto_1e

    :catchall_1a
    move-exception p0

    :try_start_1b
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1e
    throw p1
    :try_end_1f
    .catchall {:try_start_1b .. :try_end_1f} :catchall_1f

    :catchall_1f
    move-exception p0

    :try_start_20
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_23
    .catchall {:try_start_20 .. :try_end_23} :catchall_24

    goto :goto_28

    :catchall_24
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_28
    throw p0
.end method

.method public static whitelist copy(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;)J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 425
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, v0, v0}, Landroid/os/FileUtils;->copy(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/os/FileUtils$ProgressListener;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static blacklist copy(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;JLandroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/os/FileUtils$ProgressListener;)J
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 461
    sget-boolean v0, Landroid/os/FileUtils;->sEnableCopyOptimizations:Z

    if-eqz v0, :cond_63

    .line 463
    :try_start_4
    invoke-static {p0}, Landroid/system/Os;->fstat(Ljava/io/FileDescriptor;)Landroid/system/StructStat;

    move-result-object v0

    .line 464
    invoke-static {p1}, Landroid/system/Os;->fstat(Ljava/io/FileDescriptor;)Landroid/system/StructStat;

    move-result-object v1

    .line 465
    iget v2, v0, Landroid/system/StructStat;->st_mode:I

    invoke-static {v2}, Landroid/system/OsConstants;->S_ISREG(I)Z

    move-result v2

    if-eqz v2, :cond_35

    iget v2, v1, Landroid/system/StructStat;->st_mode:I

    invoke-static {v2}, Landroid/system/OsConstants;->S_ISREG(I)Z

    move-result v2
    :try_end_1a
    .catch Landroid/system/ErrnoException; {:try_start_4 .. :try_end_1a} :catch_62

    if-eqz v2, :cond_35

    .line 467
    :try_start_1c
    invoke-static/range {p0 .. p6}, Landroid/os/FileUtils;->copyInternalSendfile(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;JLandroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/os/FileUtils$ProgressListener;)J

    move-result-wide p0
    :try_end_20
    .catch Landroid/system/ErrnoException; {:try_start_1c .. :try_end_20} :catch_21

    return-wide p0

    .line 468
    :catch_21
    move-exception v0

    .line 469
    :try_start_22
    iget v1, v0, Landroid/system/ErrnoException;->errno:I

    sget v2, Landroid/system/OsConstants;->EINVAL:I

    if-eq v1, v2, :cond_30

    iget v1, v0, Landroid/system/ErrnoException;->errno:I

    sget v2, Landroid/system/OsConstants;->ENOSYS:I

    if-ne v1, v2, :cond_2f

    goto :goto_30

    .line 477
    :cond_2f
    throw v0

    .line 474
    :cond_30
    :goto_30
    invoke-static/range {p0 .. p6}, Landroid/os/FileUtils;->copyInternalUserspace(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;JLandroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/os/FileUtils$ProgressListener;)J

    move-result-wide p0

    return-wide p0

    .line 479
    :cond_35
    iget v2, v0, Landroid/system/StructStat;->st_mode:I

    invoke-static {v2}, Landroid/system/OsConstants;->S_ISFIFO(I)Z

    move-result v2

    if-nez v2, :cond_5d

    iget v2, v1, Landroid/system/StructStat;->st_mode:I

    invoke-static {v2}, Landroid/system/OsConstants;->S_ISFIFO(I)Z

    move-result v2

    if-eqz v2, :cond_46

    goto :goto_5d

    .line 481
    :cond_46
    iget v0, v0, Landroid/system/StructStat;->st_mode:I

    invoke-static {v0}, Landroid/system/OsConstants;->S_ISSOCK(I)Z

    move-result v0

    if-nez v0, :cond_58

    iget v0, v1, Landroid/system/StructStat;->st_mode:I

    invoke-static {v0}, Landroid/system/OsConstants;->S_ISSOCK(I)Z

    move-result v0

    if-eqz v0, :cond_57

    goto :goto_58

    .line 485
    :cond_57
    goto :goto_63

    .line 482
    :cond_58
    :goto_58
    invoke-static/range {p0 .. p6}, Landroid/os/FileUtils;->copyInternalSpliceSocket(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;JLandroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/os/FileUtils$ProgressListener;)J

    move-result-wide p0

    return-wide p0

    .line 480
    :cond_5d
    :goto_5d
    invoke-static/range {p0 .. p6}, Landroid/os/FileUtils;->copyInternalSplice(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;JLandroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/os/FileUtils$ProgressListener;)J

    move-result-wide p0
    :try_end_61
    .catch Landroid/system/ErrnoException; {:try_start_22 .. :try_end_61} :catch_62

    return-wide p0

    .line 484
    :catch_62
    move-exception v0

    .line 489
    :cond_63
    :goto_63
    invoke-static/range {p0 .. p6}, Landroid/os/FileUtils;->copyInternalUserspace(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;JLandroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/os/FileUtils$ProgressListener;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static whitelist copy(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/os/FileUtils$ProgressListener;)J
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 442
    const-wide v2, 0x7fffffffffffffffL

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Landroid/os/FileUtils;->copy(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;JLandroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/os/FileUtils$ProgressListener;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static whitelist copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 387
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, v0, v0}, Landroid/os/FileUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/os/FileUtils$ProgressListener;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static whitelist copy(Ljava/io/InputStream;Ljava/io/OutputStream;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/os/FileUtils$ProgressListener;)J
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 404
    sget-boolean v0, Landroid/os/FileUtils;->sEnableCopyOptimizations:Z

    if-eqz v0, :cond_1d

    .line 405
    instance-of v0, p0, Ljava/io/FileInputStream;

    if-eqz v0, :cond_1d

    instance-of v0, p1, Ljava/io/FileOutputStream;

    if-eqz v0, :cond_1d

    .line 406
    check-cast p0, Ljava/io/FileInputStream;

    invoke-virtual {p0}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p0

    check-cast p1, Ljava/io/FileOutputStream;

    invoke-virtual {p1}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p1

    invoke-static {p0, p1, p2, p3, p4}, Landroid/os/FileUtils;->copy(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/os/FileUtils$ProgressListener;)J

    move-result-wide p0

    return-wide p0

    .line 412
    :cond_1d
    invoke-static {p0, p1, p2, p3, p4}, Landroid/os/FileUtils;->copyInternalUserspace(Ljava/io/InputStream;Ljava/io/OutputStream;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/os/FileUtils$ProgressListener;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static greylist copyFile(Ljava/io/File;Ljava/io/File;)Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 296
    :try_start_0
    invoke-static {p0, p1}, Landroid/os/FileUtils;->copyFileOrThrow(Ljava/io/File;Ljava/io/File;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_5

    .line 297
    const/4 p0, 0x1

    return p0

    .line 298
    :catch_5
    move-exception p0

    .line 299
    const/4 p0, 0x0

    return p0
.end method

.method public static greylist-max-o copyFileOrThrow(Ljava/io/File;Ljava/io/File;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 309
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 310
    :try_start_5
    invoke-static {v0, p1}, Landroid/os/FileUtils;->copyToFileOrThrow(Ljava/io/InputStream;Ljava/io/File;)V
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_c

    .line 311
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 312
    return-void

    .line 309
    :catchall_c
    move-exception p0

    :try_start_d
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_10
    .catchall {:try_start_d .. :try_end_10} :catchall_11

    goto :goto_15

    :catchall_11
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_15
    throw p0
.end method

.method public static blacklist copyInternalSendfile(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;JLandroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/os/FileUtils$ProgressListener;)J
    .registers 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 628
    move-object/from16 v0, p5

    move-object/from16 v1, p6

    .line 629
    move-wide/from16 v4, p2

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    .line 632
    :cond_a
    :goto_a
    const/4 v10, 0x0

    const-wide/32 v11, 0x80000

    invoke-static {v4, v5, v11, v12}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v13

    const-wide/16 v16, 0x0

    move-object/from16 v15, p0

    move-object/from16 v2, p1

    invoke-static {v2, v15, v10, v13, v14}, Landroid/system/Os;->sendfile(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Landroid/system/Int64Ref;J)J

    move-result-wide v13

    cmp-long v3, v13, v16

    if-eqz v3, :cond_3c

    .line 633
    add-long/2addr v6, v13

    .line 634
    add-long/2addr v8, v13

    .line 635
    sub-long/2addr v4, v13

    .line 637
    cmp-long v3, v8, v11

    if-ltz v3, :cond_a

    .line 638
    if-eqz p4, :cond_2c

    .line 639
    invoke-virtual/range {p4 .. p4}, Landroid/os/CancellationSignal;->throwIfCanceled()V

    .line 641
    :cond_2c
    if-eqz v0, :cond_39

    if-eqz v1, :cond_39

    .line 642
    nop

    .line 643
    new-instance v3, Landroid/os/FileUtils$$ExternalSyntheticLambda0;

    invoke-direct {v3, v1, v6, v7}, Landroid/os/FileUtils$$ExternalSyntheticLambda0;-><init>(Landroid/os/FileUtils$ProgressListener;J)V

    invoke-interface {v0, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 647
    :cond_39
    move-wide/from16 v8, v16

    goto :goto_a

    .line 650
    :cond_3c
    if-eqz v0, :cond_49

    if-eqz v1, :cond_49

    .line 651
    nop

    .line 652
    new-instance v2, Landroid/os/FileUtils$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1, v6, v7}, Landroid/os/FileUtils$$ExternalSyntheticLambda1;-><init>(Landroid/os/FileUtils$ProgressListener;J)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 656
    :cond_49
    return-wide v6
.end method

.method public static blacklist copyInternalSplice(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;JLandroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/os/FileUtils$ProgressListener;)J
    .registers 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 502
    move-object/from16 v0, p5

    move-object/from16 v1, p6

    .line 503
    const-wide/16 v2, 0x0

    move-wide/from16 v4, p2

    move-wide v6, v2

    move-wide v8, v6

    .line 506
    :cond_a
    :goto_a
    const-wide/32 v10, 0x80000

    invoke-static {v4, v5, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v16

    sget v12, Landroid/system/OsConstants;->SPLICE_F_MOVE:I

    sget v13, Landroid/system/OsConstants;->SPLICE_F_MORE:I

    or-int v18, v12, v13

    const/4 v13, 0x0

    const/4 v15, 0x0

    move-object/from16 v12, p0

    move-object/from16 v14, p1

    invoke-static/range {v12 .. v18}, Landroid/system/Os;->splice(Ljava/io/FileDescriptor;Landroid/system/Int64Ref;Ljava/io/FileDescriptor;Landroid/system/Int64Ref;JI)J

    move-result-wide v15

    cmp-long v12, v15, v2

    if-eqz v12, :cond_40

    .line 508
    add-long/2addr v6, v15

    .line 509
    add-long/2addr v8, v15

    .line 510
    sub-long/2addr v4, v15

    .line 512
    cmp-long v10, v8, v10

    if-ltz v10, :cond_a

    .line 513
    if-eqz p4, :cond_31

    .line 514
    invoke-virtual/range {p4 .. p4}, Landroid/os/CancellationSignal;->throwIfCanceled()V

    .line 516
    :cond_31
    if-eqz v0, :cond_3e

    if-eqz v1, :cond_3e

    .line 517
    nop

    .line 518
    new-instance v8, Landroid/os/FileUtils$$ExternalSyntheticLambda4;

    invoke-direct {v8, v1, v6, v7}, Landroid/os/FileUtils$$ExternalSyntheticLambda4;-><init>(Landroid/os/FileUtils$ProgressListener;J)V

    invoke-interface {v0, v8}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 522
    :cond_3e
    move-wide v8, v2

    goto :goto_a

    .line 525
    :cond_40
    if-eqz v0, :cond_4d

    if-eqz v1, :cond_4d

    .line 526
    nop

    .line 527
    new-instance v2, Landroid/os/FileUtils$$ExternalSyntheticLambda5;

    invoke-direct {v2, v1, v6, v7}, Landroid/os/FileUtils$$ExternalSyntheticLambda5;-><init>(Landroid/os/FileUtils$ProgressListener;J)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 531
    :cond_4d
    return-wide v6
.end method

.method public static blacklist copyInternalSpliceSocket(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;JLandroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/os/FileUtils$ProgressListener;)J
    .registers 42
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 542
    move-wide/from16 v0, p2

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    .line 543
    nop

    .line 544
    nop

    .line 545
    nop

    .line 548
    invoke-static {}, Landroid/system/Os;->pipe()[Ljava/io/FileDescriptor;

    move-result-object v4

    const-wide/16 v5, 0x0

    move-wide v7, v0

    move-wide v9, v5

    move-wide v11, v9

    move-wide v13, v11

    .line 550
    :goto_13
    cmp-long v15, v7, v5

    const/16 v16, 0x0

    const/16 v17, 0x1

    if-gtz v15, :cond_23

    cmp-long v18, v9, v5

    if-lez v18, :cond_20

    goto :goto_23

    :cond_20
    move-object/from16 v20, v4

    goto :goto_81

    .line 551
    :cond_23
    :goto_23
    move-wide/from16 v18, v5

    const-string v5, ", read:"

    const-string v6, ", copied:"

    move-object/from16 v20, v4

    const-string v4, "FileUtils"

    move-wide/from16 v21, v13

    const-wide/32 v13, 0x80000

    if-lez v15, :cond_d7

    .line 552
    :try_start_34
    aget-object v25, v20, v17

    invoke-static {v7, v8, v13, v14}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v27

    sget v15, Landroid/system/OsConstants;->SPLICE_F_MOVE:I

    sget v23, Landroid/system/OsConstants;->SPLICE_F_MORE:I

    or-int v29, v15, v23

    const/16 v24, 0x0

    const/16 v26, 0x0

    move-object/from16 v23, p0

    invoke-static/range {v23 .. v29}, Landroid/system/Os;->splice(Ljava/io/FileDescriptor;Landroid/system/Int64Ref;Ljava/io/FileDescriptor;Landroid/system/Int64Ref;JI)J

    move-result-wide v24
    :try_end_4a
    .catchall {:try_start_34 .. :try_end_4a} :catchall_d4

    .line 554
    cmp-long v15, v24, v18

    const-string v13, ", in pipe:"

    if-gez v15, :cond_9a

    .line 556
    :try_start_50
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "splice error, fdIn --> pipe, copy size:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sub-long/2addr v0, v7

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    nop

    .line 605
    :goto_81
    if-eqz v2, :cond_8e

    if-eqz v3, :cond_8e

    .line 606
    nop

    .line 607
    new-instance v0, Landroid/os/FileUtils$$ExternalSyntheticLambda7;

    invoke-direct {v0, v3, v11, v12}, Landroid/os/FileUtils$$ExternalSyntheticLambda7;-><init>(Landroid/os/FileUtils$ProgressListener;J)V

    invoke-interface {v2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_8e
    .catchall {:try_start_50 .. :try_end_8e} :catchall_d4

    .line 612
    :cond_8e
    aget-object v0, v20, v16

    invoke-static {v0}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V

    .line 613
    aget-object v0, v20, v17

    invoke-static {v0}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V

    .line 614
    nop

    .line 615
    return-wide v11

    .line 561
    :cond_9a
    if-nez v15, :cond_cf

    .line 563
    :try_start_9c
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Reached the end of the input file. The size to be copied exceeds the actual size, copy size:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sub-long v7, v0, v7

    invoke-virtual {v14, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    move-wide/from16 v7, v18

    goto :goto_d7

    .line 569
    :cond_cf
    add-long v9, v9, v24

    .line 570
    sub-long v7, v7, v24

    goto :goto_d7

    .line 612
    :catchall_d4
    move-exception v0

    goto/16 :goto_157

    .line 574
    :cond_d7
    :goto_d7
    cmp-long v13, v9, v18

    if-lez v13, :cond_13b

    .line 575
    aget-object v28, v20, v16

    const-wide/32 v13, 0x80000

    invoke-static {v9, v10, v13, v14}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v32

    sget v13, Landroid/system/OsConstants;->SPLICE_F_MOVE:I

    sget v14, Landroid/system/OsConstants;->SPLICE_F_MORE:I

    or-int v34, v13, v14

    const/16 v29, 0x0

    const/16 v31, 0x0

    move-object/from16 v30, p1

    invoke-static/range {v28 .. v34}, Landroid/system/Os;->splice(Ljava/io/FileDescriptor;Landroid/system/Int64Ref;Ljava/io/FileDescriptor;Landroid/system/Int64Ref;JI)J

    move-result-wide v13

    .line 579
    cmp-long v15, v13, v18

    if-lez v15, :cond_fe

    .line 586
    add-long/2addr v11, v13

    .line 587
    add-long v4, v21, v13

    .line 588
    sub-long/2addr v9, v13

    move-wide v13, v4

    goto :goto_13d

    .line 580
    :cond_fe
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "splice error, pipe --> fdOut, copy size:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sub-long/2addr v0, v7

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", in pipe: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    new-instance v0, Landroid/system/ErrnoException;

    const-string/jumbo v1, "splice, pipe --> fdOut"

    sget v2, Landroid/system/OsConstants;->EIO:I

    invoke-direct {v0, v1, v2}, Landroid/system/ErrnoException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 574
    :cond_13b
    move-wide/from16 v13, v21

    .line 592
    :goto_13d
    const-wide/32 v26, 0x80000

    cmp-long v4, v13, v26

    if-ltz v4, :cond_169

    .line 593
    if-eqz p4, :cond_149

    .line 594
    invoke-virtual/range {p4 .. p4}, Landroid/os/CancellationSignal;->throwIfCanceled()V

    .line 596
    :cond_149
    if-eqz v2, :cond_162

    if-eqz v3, :cond_162

    .line 597
    nop

    .line 598
    new-instance v4, Landroid/os/FileUtils$$ExternalSyntheticLambda6;

    invoke-direct {v4, v3, v11, v12}, Landroid/os/FileUtils$$ExternalSyntheticLambda6;-><init>(Landroid/os/FileUtils$ProgressListener;J)V

    invoke-interface {v2, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_156
    .catchall {:try_start_9c .. :try_end_156} :catchall_d4

    goto :goto_162

    .line 612
    :goto_157
    aget-object v1, v20, v16

    invoke-static {v1}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V

    .line 613
    aget-object v1, v20, v17

    invoke-static {v1}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V

    .line 614
    throw v0

    .line 602
    :cond_162
    :goto_162
    move-wide/from16 v5, v18

    move-wide v13, v5

    move-object/from16 v4, v20

    goto/16 :goto_13

    .line 592
    :cond_169
    move-wide/from16 v5, v18

    move-object/from16 v4, v20

    goto/16 :goto_13
.end method

.method public static blacklist copyInternalUserspace(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;JLandroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/os/FileUtils$ProgressListener;)J
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 673
    const-wide v0, 0x7fffffffffffffffL

    cmp-long v0, p2, v0

    if-eqz v0, :cond_1d

    .line 674
    new-instance v0, Lcom/android/internal/util/SizedInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v0, v1, p2, p3}, Lcom/android/internal/util/SizedInputStream;-><init>(Ljava/io/InputStream;J)V

    new-instance p0, Ljava/io/FileOutputStream;

    invoke-direct {p0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-static {v0, p0, p4, p5, p6}, Landroid/os/FileUtils;->copyInternalUserspace(Ljava/io/InputStream;Ljava/io/OutputStream;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/os/FileUtils$ProgressListener;)J

    move-result-wide p0

    return-wide p0

    .line 677
    :cond_1d
    new-instance p2, Ljava/io/FileInputStream;

    invoke-direct {p2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    new-instance p0, Ljava/io/FileOutputStream;

    invoke-direct {p0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-static {p2, p0, p4, p5, p6}, Landroid/os/FileUtils;->copyInternalUserspace(Ljava/io/InputStream;Ljava/io/OutputStream;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/os/FileUtils$ProgressListener;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static greylist-max-o copyInternalUserspace(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Landroid/os/FileUtils$ProgressListener;Landroid/os/CancellationSignal;J)J
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 665
    new-instance v5, Landroid/app/PendingIntent$$ExternalSyntheticLambda0;

    invoke-direct {v5}, Landroid/app/PendingIntent$$ExternalSyntheticLambda0;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v6, p2

    move-object v4, p3

    move-wide v2, p4

    invoke-static/range {v0 .. v6}, Landroid/os/FileUtils;->copyInternalUserspace(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;JLandroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/os/FileUtils$ProgressListener;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static blacklist copyInternalUserspace(Ljava/io/InputStream;Ljava/io/OutputStream;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/os/FileUtils$ProgressListener;)J
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 687
    nop

    .line 688
    nop

    .line 689
    const/16 v0, 0x2000

    new-array v0, v0, [B

    const-wide/16 v1, 0x0

    move-wide v3, v1

    move-wide v5, v3

    .line 692
    :cond_a
    :goto_a
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_33

    .line 693
    const/4 v8, 0x0

    invoke-virtual {p1, v0, v8, v7}, Ljava/io/OutputStream;->write([BII)V

    .line 695
    int-to-long v7, v7

    add-long/2addr v3, v7

    .line 696
    add-long/2addr v5, v7

    .line 698
    const-wide/32 v7, 0x80000

    cmp-long v7, v5, v7

    if-ltz v7, :cond_a

    .line 699
    if-eqz p2, :cond_24

    .line 700
    invoke-virtual {p2}, Landroid/os/CancellationSignal;->throwIfCanceled()V

    .line 702
    :cond_24
    if-eqz p3, :cond_31

    if-eqz p4, :cond_31

    .line 703
    nop

    .line 704
    new-instance v5, Landroid/os/FileUtils$$ExternalSyntheticLambda2;

    invoke-direct {v5, p4, v3, v4}, Landroid/os/FileUtils$$ExternalSyntheticLambda2;-><init>(Landroid/os/FileUtils$ProgressListener;J)V

    invoke-interface {p3, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 708
    :cond_31
    move-wide v5, v1

    goto :goto_a

    .line 711
    :cond_33
    if-eqz p3, :cond_40

    if-eqz p4, :cond_40

    .line 712
    nop

    .line 713
    new-instance p0, Landroid/os/FileUtils$$ExternalSyntheticLambda3;

    invoke-direct {p0, p4, v3, v4}, Landroid/os/FileUtils$$ExternalSyntheticLambda3;-><init>(Landroid/os/FileUtils$ProgressListener;J)V

    invoke-interface {p3, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 717
    :cond_40
    return-wide v3
.end method

.method public static greylist-max-o copyPermissions(Ljava/io/File;Ljava/io/File;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 248
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/system/Os;->stat(Ljava/lang/String;)Landroid/system/StructStat;

    move-result-object p0

    .line 249
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Landroid/system/StructStat;->st_mode:I

    invoke-static {v0, v1}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V

    .line 250
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    iget v0, p0, Landroid/system/StructStat;->st_uid:I

    iget p0, p0, Landroid/system/StructStat;->st_gid:I

    invoke-static {p1, v0, p0}, Landroid/system/Os;->chown(Ljava/lang/String;II)V
    :try_end_1c
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_1c} :catch_1e

    .line 253
    nop

    .line 254
    return-void

    .line 251
    :catch_1e
    move-exception p0

    .line 252
    invoke-virtual {p0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object p0

    throw p0
.end method

.method public static greylist copyToFile(Ljava/io/InputStream;Ljava/io/File;)Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 322
    :try_start_0
    invoke-static {p0, p1}, Landroid/os/FileUtils;->copyToFileOrThrow(Ljava/io/InputStream;Ljava/io/File;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_5

    .line 323
    const/4 p0, 0x1

    return p0

    .line 324
    :catch_5
    move-exception p0

    .line 325
    const/4 p0, 0x0

    return p0
.end method

.method public static greylist-max-o copyToFileOrThrow(Ljava/io/InputStream;Ljava/io/File;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 335
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 336
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 338
    :cond_9
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 339
    :try_start_e
    invoke-static {p0, v0}, Landroid/os/FileUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    .line 340
    invoke-static {v0}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z
    :try_end_14
    .catchall {:try_start_e .. :try_end_14} :catchall_18

    .line 341
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 342
    return-void

    .line 338
    :catchall_18
    move-exception p0

    :try_start_19
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_1c
    .catchall {:try_start_19 .. :try_end_1c} :catchall_1d

    goto :goto_21

    :catchall_1d
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_21
    throw p0
.end method

.method public static greylist-max-o createDir(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .registers 3

    .line 1376
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1378
    invoke-static {v0}, Landroid/os/FileUtils;->createDir(Ljava/io/File;)Z

    move-result p0

    if-eqz p0, :cond_c

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return-object v0
.end method

.method public static blacklist createDir(Ljava/io/File;)Z
    .registers 2

    .line 1389
    invoke-virtual {p0}, Ljava/io/File;->mkdir()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1390
    const/4 p0, 0x1

    return p0

    .line 1393
    :cond_8
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1394
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result p0

    return p0

    .line 1397
    :cond_13
    const/4 p0, 0x0

    return p0
.end method

.method public static greylist-max-r deleteContents(Ljava/io/File;)Z
    .registers 7

    .line 1044
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    .line 1045
    nop

    .line 1046
    const/4 v0, 0x1

    if-eqz p0, :cond_3c

    .line 1047
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_b
    if-ge v3, v1, :cond_3c

    aget-object v4, p0, v3

    .line 1048
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_1a

    .line 1049
    invoke-static {v4}, Landroid/os/FileUtils;->deleteContents(Ljava/io/File;)Z

    move-result v5

    and-int/2addr v0, v5

    .line 1051
    :cond_1a
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v5

    if-nez v5, :cond_39

    .line 1052
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to delete "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "FileUtils"

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1053
    move v0, v2

    .line 1047
    :cond_39
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 1057
    :cond_3c
    return v0
.end method

.method public static greylist-max-o deleteContentsAndDir(Ljava/io/File;)Z
    .registers 2

    .line 1034
    invoke-static {p0}, Landroid/os/FileUtils;->deleteContents(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1035
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p0

    return p0

    .line 1037
    :cond_b
    const/4 p0, 0x0

    return p0
.end method

.method public static greylist-max-r deleteOlderFiles(Ljava/io/File;IJ)Z
    .registers 10

    .line 935
    if-ltz p1, :cond_4f

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-ltz v0, :cond_4f

    .line 939
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    .line 940
    const/4 v0, 0x0

    if-nez p0, :cond_10

    return v0

    .line 943
    :cond_10
    new-instance v1, Landroid/os/FileUtils$1;

    invoke-direct {v1}, Landroid/os/FileUtils$1;-><init>()V

    invoke-static {p0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 951
    nop

    .line 952
    nop

    :goto_1a
    array-length v1, p0

    if-ge p1, v1, :cond_4e

    .line 953
    aget-object v1, p0, p1

    .line 956
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 957
    cmp-long v2, v2, p2

    if-lez v2, :cond_4b

    .line 958
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v2

    if-eqz v2, :cond_4b

    .line 959
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Deleted old file "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FileUtils"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 960
    const/4 v0, 0x1

    .line 952
    :cond_4b
    add-int/lit8 p1, p1, 0x1

    goto :goto_1a

    .line 964
    :cond_4e
    return v0

    .line 936
    :cond_4f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Constraints must be positive or 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static blacklist digest(Ljava/io/File;Ljava/lang/String;)[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 880
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 881
    :try_start_5
    invoke-static {v0, p1}, Landroid/os/FileUtils;->digest(Ljava/io/InputStream;Ljava/lang/String;)[B

    move-result-object p0
    :try_end_9
    .catchall {:try_start_5 .. :try_end_9} :catchall_d

    .line 882
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 881
    return-object p0

    .line 880
    :catchall_d
    move-exception p0

    :try_start_e
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_11
    .catchall {:try_start_e .. :try_end_11} :catchall_12

    goto :goto_16

    :catchall_12
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_16
    throw p0
.end method

.method public static blacklist digest(Ljava/io/FileDescriptor;Ljava/lang/String;)[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 910
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-static {v0, p1}, Landroid/os/FileUtils;->digestInternalUserspace(Ljava/io/InputStream;Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public static blacklist digest(Ljava/io/InputStream;Ljava/lang/String;)[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 897
    invoke-static {p0, p1}, Landroid/os/FileUtils;->digestInternalUserspace(Ljava/io/InputStream;Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method private static blacklist digestInternalUserspace(Ljava/io/InputStream;Ljava/lang/String;)[B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 915
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p1

    .line 916
    new-instance v0, Ljava/security/DigestInputStream;

    invoke-direct {v0, p0, p1}, Ljava/security/DigestInputStream;-><init>(Ljava/io/InputStream;Ljava/security/MessageDigest;)V

    .line 917
    const/16 p0, 0x2000

    :try_start_b
    new-array p0, p0, [B

    .line 918
    :goto_d
    invoke-virtual {v0, p0}, Ljava/security/DigestInputStream;->read([B)I

    move-result v1
    :try_end_11
    .catchall {:try_start_b .. :try_end_11} :catchall_1d

    const/4 v2, -0x1

    if-eq v1, v2, :cond_15

    goto :goto_d

    .line 920
    :cond_15
    invoke-virtual {v0}, Ljava/security/DigestInputStream;->close()V

    .line 921
    invoke-virtual {p1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    return-object p0

    .line 916
    :catchall_1d
    move-exception p0

    :try_start_1e
    invoke-virtual {v0}, Ljava/security/DigestInputStream;->close()V
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_22

    goto :goto_26

    :catchall_22
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_26
    throw p0
.end method

.method private static blacklist getMediaProviderAppId(Landroid/content/Context;)I
    .registers 4

    .line 1697
    sget v0, Landroid/os/FileUtils;->sMediaProviderAppId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_8

    .line 1698
    sget p0, Landroid/os/FileUtils;->sMediaProviderAppId:I

    return p0

    .line 1701
    :cond_8
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 1702
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "media"

    const/high16 v2, 0x1c0000

    invoke-virtual {p0, v0, v2}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object p0

    .line 1706
    if-nez p0, :cond_1a

    .line 1707
    return v1

    .line 1710
    :cond_1a
    iget-object p0, p0, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {p0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p0

    sput p0, Landroid/os/FileUtils;->sMediaProviderAppId:I

    .line 1711
    sget p0, Landroid/os/FileUtils;->sMediaProviderAppId:I

    return p0
.end method

.method public static greylist-max-o getUid(Ljava/lang/String;)I
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 264
    :try_start_0
    invoke-static {p0}, Landroid/system/Os;->stat(Ljava/lang/String;)Landroid/system/StructStat;

    move-result-object p0

    iget p0, p0, Landroid/system/StructStat;->st_uid:I
    :try_end_6
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_6} :catch_7

    return p0

    .line 265
    :catch_7
    move-exception p0

    .line 266
    const/4 p0, -0x1

    return p0
.end method

.method public static greylist isFilenameSafe(Ljava/io/File;)Z
    .registers 2

    .line 730
    sget-object v0, Landroid/os/FileUtils$NoImagePreloadHolder;->SAFE_FILENAME_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    return p0
.end method

.method public static greylist-max-o isValidExtFilename(Ljava/lang/String;)Z
    .registers 2

    .line 1076
    if-eqz p0, :cond_e

    invoke-static {p0}, Landroid/os/FileUtils;->buildValidExtFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method private static greylist-max-o isValidExtFilenameChar(C)Z
    .registers 1

    .line 1061
    sparse-switch p0, :sswitch_data_8

    .line 1066
    const/4 p0, 0x1

    return p0

    .line 1064
    :sswitch_5
    const/4 p0, 0x0

    return p0

    nop

    :sswitch_data_8
    .sparse-switch
        0x0 -> :sswitch_5
        0x2f -> :sswitch_5
    .end sparse-switch
.end method

.method public static greylist-max-o isValidFatFilename(Ljava/lang/String;)Z
    .registers 2

    .line 1129
    if-eqz p0, :cond_e

    invoke-static {p0}, Landroid/os/FileUtils;->buildValidFatFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method private static greylist-max-o isValidFatFilenameChar(C)Z
    .registers 3

    .line 1103
    const/4 v0, 0x0

    if-ltz p0, :cond_8

    const/16 v1, 0x1f

    if-gt p0, v1, :cond_8

    .line 1104
    return v0

    .line 1106
    :cond_8
    sparse-switch p0, :sswitch_data_e

    .line 1119
    const/4 p0, 0x1

    return p0

    .line 1117
    :sswitch_d
    return v0

    :sswitch_data_e
    .sparse-switch
        0x22 -> :sswitch_d
        0x2a -> :sswitch_d
        0x2f -> :sswitch_d
        0x3a -> :sswitch_d
        0x3c -> :sswitch_d
        0x3e -> :sswitch_d
        0x3f -> :sswitch_d
        0x5c -> :sswitch_d
        0x7c -> :sswitch_d
        0x7f -> :sswitch_d
    .end sparse-switch
.end method

.method static synthetic blacklist lambda$copyInternalSendfile$4(Landroid/os/FileUtils$ProgressListener;J)V
    .registers 3

    .line 644
    invoke-interface {p0, p1, p2}, Landroid/os/FileUtils$ProgressListener;->onProgress(J)V

    .line 645
    return-void
.end method

.method static synthetic blacklist lambda$copyInternalSendfile$5(Landroid/os/FileUtils$ProgressListener;J)V
    .registers 3

    .line 653
    invoke-interface {p0, p1, p2}, Landroid/os/FileUtils$ProgressListener;->onProgress(J)V

    .line 654
    return-void
.end method

.method static synthetic blacklist lambda$copyInternalSplice$0(Landroid/os/FileUtils$ProgressListener;J)V
    .registers 3

    .line 519
    invoke-interface {p0, p1, p2}, Landroid/os/FileUtils$ProgressListener;->onProgress(J)V

    .line 520
    return-void
.end method

.method static synthetic blacklist lambda$copyInternalSplice$1(Landroid/os/FileUtils$ProgressListener;J)V
    .registers 3

    .line 528
    invoke-interface {p0, p1, p2}, Landroid/os/FileUtils$ProgressListener;->onProgress(J)V

    .line 529
    return-void
.end method

.method static synthetic blacklist lambda$copyInternalSpliceSocket$2(Landroid/os/FileUtils$ProgressListener;J)V
    .registers 3

    .line 599
    invoke-interface {p0, p1, p2}, Landroid/os/FileUtils$ProgressListener;->onProgress(J)V

    .line 600
    return-void
.end method

.method static synthetic blacklist lambda$copyInternalSpliceSocket$3(Landroid/os/FileUtils$ProgressListener;J)V
    .registers 3

    .line 608
    invoke-interface {p0, p1, p2}, Landroid/os/FileUtils$ProgressListener;->onProgress(J)V

    .line 609
    return-void
.end method

.method static synthetic blacklist lambda$copyInternalUserspace$6(Landroid/os/FileUtils$ProgressListener;J)V
    .registers 3

    .line 705
    invoke-interface {p0, p1, p2}, Landroid/os/FileUtils$ProgressListener;->onProgress(J)V

    .line 706
    return-void
.end method

.method static synthetic blacklist lambda$copyInternalUserspace$7(Landroid/os/FileUtils$ProgressListener;J)V
    .registers 3

    .line 714
    invoke-interface {p0, p1, p2}, Landroid/os/FileUtils$ProgressListener;->onProgress(J)V

    .line 715
    return-void
.end method

.method public static greylist-max-o listFilesOrEmpty(Ljava/io/File;)[Ljava/io/File;
    .registers 1

    .line 1353
    if-eqz p0, :cond_b

    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/util/ArrayUtils;->defeatNullable([Ljava/io/File;)[Ljava/io/File;

    move-result-object p0

    goto :goto_d

    .line 1354
    :cond_b
    sget-object p0, Lcom/android/internal/util/ArrayUtils;->EMPTY_FILE:[Ljava/io/File;

    .line 1353
    :goto_d
    return-object p0
.end method

.method public static greylist-max-o listFilesOrEmpty(Ljava/io/File;Ljava/io/FilenameFilter;)[Ljava/io/File;
    .registers 2

    .line 1359
    if-eqz p0, :cond_b

    invoke-virtual {p0, p1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/util/ArrayUtils;->defeatNullable([Ljava/io/File;)[Ljava/io/File;

    move-result-object p0

    goto :goto_d

    .line 1360
    :cond_b
    sget-object p0, Lcom/android/internal/util/ArrayUtils;->EMPTY_FILE:[Ljava/io/File;

    .line 1359
    :goto_d
    return-object p0
.end method

.method public static greylist-max-o listOrEmpty(Ljava/io/File;)[Ljava/lang/String;
    .registers 1

    .line 1347
    if-eqz p0, :cond_b

    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/util/ArrayUtils;->defeatNullable([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    goto :goto_d

    .line 1348
    :cond_b
    sget-object p0, Landroid/util/EmptyArray;->STRING:[Ljava/lang/String;

    .line 1347
    :goto_d
    return-object p0
.end method

.method public static greylist-max-o newFileOrNull(Ljava/lang/String;)Ljava/io/File;
    .registers 2

    .line 1365
    if-eqz p0, :cond_8

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return-object v0
.end method

.method public static blacklist parseSize(Ljava/lang/String;)J
    .registers 8

    .line 1479
    const-wide/high16 v0, -0x8000000000000000L

    if-eqz p0, :cond_61

    invoke-virtual {p0}, Ljava/lang/String;->isBlank()Z

    move-result v2

    if-eqz v2, :cond_b

    goto :goto_61

    .line 1483
    :cond_b
    nop

    .line 1484
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 1485
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 1486
    const/16 v4, 0x2d

    const/4 v5, 0x1

    if-eq v3, v4, :cond_1e

    const/16 v6, 0x2b

    if-ne v3, v6, :cond_28

    .line 1487
    :cond_1e
    if-ne v3, v4, :cond_22

    .line 1488
    const/4 v3, -0x1

    goto :goto_23

    .line 1487
    :cond_22
    move v3, v5

    .line 1491
    :goto_23
    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    move v5, v3

    .line 1494
    :cond_28
    move v3, v2

    .line 1496
    :goto_29
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_3c

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-eqz v4, :cond_3c

    .line 1497
    add-int/lit8 v3, v3, 0x1

    goto :goto_29

    .line 1501
    :cond_3c
    if-eqz v3, :cond_60

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v3, v4, :cond_45

    goto :goto_60

    .line 1505
    :cond_45
    int-to-long v0, v5

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    mul-long/2addr v0, v4

    .line 1506
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 1508
    invoke-static {v0, v1, p0}, Landroid/os/FileUtils;->toBytes(JLjava/lang/String;)J

    move-result-wide v0

    return-wide v0

    .line 1502
    :cond_60
    :goto_60
    return-wide v0

    .line 1480
    :cond_61
    :goto_61
    return-wide v0
.end method

.method public static greylist readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 744
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 748
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 750
    :try_start_a
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v2
    :try_end_e
    .catchall {:try_start_a .. :try_end_e} :catchall_104

    .line 751
    const-string p0, ""

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    if-gtz p1, :cond_ae

    cmp-long v7, v2, v4

    if-lez v7, :cond_1d

    if-nez p1, :cond_1d

    goto/16 :goto_ae

    .line 759
    :cond_1d
    if-gez p1, :cond_8f

    .line 761
    nop

    .line 762
    nop

    .line 763
    const/4 v2, 0x0

    move-object v3, v2

    move v4, v6

    .line 765
    :goto_24
    const/4 v5, 0x1

    if-eqz v2, :cond_28

    move v4, v5

    .line 766
    :cond_28
    nop

    .line 767
    if-nez v2, :cond_2e

    neg-int v2, p1

    :try_start_2c
    new-array v2, v2, [B

    .line 768
    :cond_2e
    invoke-virtual {v1, v2}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v7

    .line 769
    array-length v8, v2
    :try_end_33
    .catchall {:try_start_2c .. :try_end_33} :catchall_104

    if-eq v7, v8, :cond_8b

    .line 771
    if-nez v3, :cond_40

    if-gtz v7, :cond_40

    .line 791
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    .line 792
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 771
    return-object p0

    .line 772
    :cond_40
    if-nez v3, :cond_4e

    :try_start_42
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v2, v6, v7}, Ljava/lang/String;-><init>([BII)V
    :try_end_47
    .catchall {:try_start_42 .. :try_end_47} :catchall_104

    .line 791
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    .line 792
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 772
    return-object p0

    .line 773
    :cond_4e
    if-lez v7, :cond_5c

    .line 774
    nop

    .line 775
    :try_start_51
    array-length p0, v3

    sub-int/2addr p0, v7

    invoke-static {v3, v7, v3, v6, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 776
    array-length p0, v3

    sub-int/2addr p0, v7

    invoke-static {v2, v6, v3, p0, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_5d

    .line 773
    :cond_5c
    move v5, v4

    .line 778
    :goto_5d
    if-eqz p2, :cond_7f

    if-nez v5, :cond_62

    goto :goto_7f

    .line 779
    :cond_62
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_78
    .catchall {:try_start_51 .. :try_end_78} :catchall_104

    .line 791
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    .line 792
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 779
    return-object p0

    .line 778
    :cond_7f
    :goto_7f
    :try_start_7f
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v3}, Ljava/lang/String;-><init>([B)V
    :try_end_84
    .catchall {:try_start_7f .. :try_end_84} :catchall_104

    .line 791
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    .line 792
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 778
    return-object p0

    .line 769
    :cond_8b
    move-object v9, v3

    move-object v3, v2

    move-object v2, v9

    goto :goto_24

    .line 781
    :cond_8f
    :try_start_8f
    new-instance p0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 783
    const/16 p1, 0x400

    new-array p2, p1, [B

    .line 785
    :cond_98
    invoke-virtual {v1, p2}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v2

    .line 786
    if-lez v2, :cond_a1

    invoke-virtual {p0, p2, v6, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 787
    :cond_a1
    if-eq v2, p1, :cond_98

    .line 788
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_a7
    .catchall {:try_start_8f .. :try_end_a7} :catchall_104

    .line 791
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    .line 792
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 788
    return-object p0

    .line 752
    :cond_ae
    :goto_ae
    cmp-long v4, v2, v4

    if-lez v4, :cond_ba

    if-eqz p1, :cond_b9

    int-to-long v4, p1

    cmp-long v4, v2, v4

    if-gez v4, :cond_ba

    :cond_b9
    long-to-int p1, v2

    .line 753
    :cond_ba
    add-int/lit8 v2, p1, 0x1

    :try_start_bc
    new-array v2, v2, [B

    .line 754
    invoke-virtual {v1, v2}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v3
    :try_end_c2
    .catchall {:try_start_bc .. :try_end_c2} :catchall_104

    .line 755
    if-gtz v3, :cond_cb

    .line 791
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    .line 792
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 755
    return-object p0

    .line 756
    :cond_cb
    if-gt v3, p1, :cond_d9

    :try_start_cd
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v2, v6, v3}, Ljava/lang/String;-><init>([BII)V
    :try_end_d2
    .catchall {:try_start_cd .. :try_end_d2} :catchall_104

    .line 791
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    .line 792
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 756
    return-object p0

    .line 757
    :cond_d9
    if-nez p2, :cond_e7

    :try_start_db
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v2, v6, p1}, Ljava/lang/String;-><init>([BII)V
    :try_end_e0
    .catchall {:try_start_db .. :try_end_e0} :catchall_104

    .line 791
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    .line 792
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 757
    return-object p0

    .line 758
    :cond_e7
    :try_start_e7
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2, v6, p1}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_fd
    .catchall {:try_start_e7 .. :try_end_fd} :catchall_104

    .line 791
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    .line 792
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 758
    return-object p0

    .line 791
    :catchall_104
    move-exception p0

    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    .line 792
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 793
    throw p0
.end method

.method public static greylist-max-o rewriteAfterRename(Ljava/io/File;Ljava/io/File;Ljava/io/File;)Ljava/io/File;
    .registers 5

    .line 1203
    const/4 v0, 0x0

    if-eqz p2, :cond_25

    if-eqz p0, :cond_25

    if-nez p1, :cond_8

    goto :goto_25

    .line 1204
    :cond_8
    invoke-static {p0, p2}, Landroid/os/FileUtils;->contains(Ljava/io/File;Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 1205
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    .line 1206
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    .line 1205
    invoke-virtual {p2, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 1207
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object p2

    .line 1209
    :cond_24
    return-object v0

    .line 1203
    :cond_25
    :goto_25
    return-object v0
.end method

.method public static greylist-max-o rewriteAfterRename(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 1180
    const/4 v0, 0x0

    if-nez p2, :cond_4

    return-object v0

    .line 1181
    :cond_4
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1, v1}, Landroid/os/FileUtils;->rewriteAfterRename(Ljava/io/File;Ljava/io/File;Ljava/io/File;)Ljava/io/File;

    move-result-object p0

    .line 1182
    if-eqz p0, :cond_13

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    :cond_13
    return-object v0
.end method

.method public static greylist-max-o rewriteAfterRename(Ljava/io/File;Ljava/io/File;[Ljava/lang/String;)[Ljava/lang/String;
    .registers 6

    .line 1187
    if-nez p2, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 1188
    :cond_4
    array-length v0, p2

    new-array v0, v0, [Ljava/lang/String;

    .line 1189
    const/4 v1, 0x0

    :goto_8
    array-length v2, p2

    if-ge v1, v2, :cond_16

    .line 1190
    aget-object v2, p2, v1

    invoke-static {p0, p1, v2}, Landroid/os/FileUtils;->rewriteAfterRename(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1189
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 1192
    :cond_16
    return-object v0
.end method

.method public static greylist-max-o roundStorageSize(J)J
    .registers 12

    .line 1416
    nop

    .line 1417
    nop

    .line 1418
    const-wide/16 v0, 0x1

    move-wide v2, v0

    move-wide v4, v2

    move-wide v6, v4

    .line 1419
    :cond_7
    :goto_7
    mul-long v8, v2, v4

    cmp-long v8, v8, p0

    if-gez v8, :cond_1e

    .line 1420
    const/4 v8, 0x1

    shl-long/2addr v2, v8

    .line 1421
    const-wide/16 v8, 0x200

    cmp-long v8, v2, v8

    if-lez v8, :cond_7

    .line 1422
    nop

    .line 1423
    const-wide/16 v2, 0x3e8

    mul-long/2addr v6, v2

    .line 1424
    const-wide/16 v2, 0x400

    mul-long/2addr v4, v2

    move-wide v2, v0

    goto :goto_7

    .line 1428
    :cond_1e
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    mul-long/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "Rounded bytes from %d to %d"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "FileUtils"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1429
    return-wide v2
.end method

.method public static greylist setPermissions(Ljava/io/File;III)I
    .registers 4

    .line 173
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1, p2, p3}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    move-result p0

    return p0
.end method

.method public static greylist-max-r setPermissions(Ljava/io/FileDescriptor;III)I
    .registers 5

    .line 220
    const-string v0, "FileUtils"

    :try_start_2
    invoke-static {p0, p1}, Landroid/system/Os;->fchmod(Ljava/io/FileDescriptor;I)V
    :try_end_5
    .catch Landroid/system/ErrnoException; {:try_start_2 .. :try_end_5} :catch_19

    .line 224
    nop

    .line 226
    if-gez p2, :cond_a

    if-ltz p3, :cond_e

    .line 228
    :cond_a
    :try_start_a
    invoke-static {p0, p2, p3}, Landroid/system/Os;->fchown(Ljava/io/FileDescriptor;II)V
    :try_end_d
    .catch Landroid/system/ErrnoException; {:try_start_a .. :try_end_d} :catch_10

    .line 232
    nop

    .line 235
    :cond_e
    const/4 p0, 0x0

    return p0

    .line 229
    :catch_10
    move-exception p0

    .line 230
    const-string p1, "Failed to fchown()"

    invoke-static {v0, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 231
    iget p0, p0, Landroid/system/ErrnoException;->errno:I

    return p0

    .line 221
    :catch_19
    move-exception p0

    .line 222
    const-string p1, "Failed to fchmod()"

    invoke-static {v0, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 223
    iget p0, p0, Landroid/system/ErrnoException;->errno:I

    return p0
.end method

.method public static greylist setPermissions(Ljava/lang/String;III)I
    .registers 6

    .line 189
    const-string v0, ")"

    const-string v1, "FileUtils"

    :try_start_4
    invoke-static {p0, p1}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V
    :try_end_7
    .catch Landroid/system/ErrnoException; {:try_start_4 .. :try_end_7} :catch_30

    .line 193
    nop

    .line 195
    if-gez p2, :cond_c

    if-ltz p3, :cond_10

    .line 197
    :cond_c
    :try_start_c
    invoke-static {p0, p2, p3}, Landroid/system/Os;->chown(Ljava/lang/String;II)V
    :try_end_f
    .catch Landroid/system/ErrnoException; {:try_start_c .. :try_end_f} :catch_12

    .line 201
    nop

    .line 204
    :cond_10
    const/4 p0, 0x0

    return p0

    .line 198
    :catch_12
    move-exception p1

    .line 199
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Failed to chown("

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 200
    iget p0, p1, Landroid/system/ErrnoException;->errno:I

    return p0

    .line 190
    :catch_30
    move-exception p1

    .line 191
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Failed to chmod("

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 192
    iget p0, p1, Landroid/system/ErrnoException;->errno:I

    return p0
.end method

.method private static blacklist shouldEnableCopyOptimizations()Z
    .registers 1

    .line 147
    const/4 v0, 0x1

    return v0
.end method

.method private static blacklist shouldEnableCopyOptimizations$ravenwood()Z
    .registers 1

    .line 152
    const/4 v0, 0x0

    return v0
.end method

.method public static greylist-max-o splitFileName(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .registers 7

    .line 1290
    const-string/jumbo v0, "vnd.android.document/directory"

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    .line 1291
    nop

    .line 1292
    goto :goto_56

    .line 1297
    :cond_c
    const/16 v0, 0x2e

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 1298
    if-ltz v0, :cond_2c

    .line 1299
    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1300
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1301
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v3

    .line 1302
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 1301
    invoke-virtual {v3, v4}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_31

    .line 1304
    :cond_2c
    nop

    .line 1305
    nop

    .line 1306
    move-object v2, p1

    move-object v0, v1

    move-object v3, v0

    .line 1309
    :goto_31
    const-string v4, "application/octet-stream"

    if-nez v3, :cond_36

    .line 1310
    move-object v3, v4

    .line 1314
    :cond_36
    invoke-virtual {v4, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3d

    .line 1315
    goto :goto_45

    .line 1317
    :cond_3d
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/webkit/MimeTypeMap;->getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1320
    :goto_45
    invoke-static {p0, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_54

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_52

    goto :goto_54

    .line 1324
    :cond_52
    nop

    .line 1325
    goto :goto_56

    .line 1329
    :cond_54
    :goto_54
    move-object v1, v0

    move-object p1, v2

    :goto_56
    if-nez v1, :cond_5a

    .line 1330
    const-string v1, ""

    .line 1333
    :cond_5a
    filled-new-array {p1, v1}, [Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static greylist-max-r stringToFile(Ljava/io/File;Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 799
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 800
    return-void
.end method

.method public static greylist stringToFile(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 833
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-static {p0, p1}, Landroid/os/FileUtils;->bytesToFile(Ljava/lang/String;[B)V

    .line 834
    return-void
.end method

.method public static greylist sync(Ljava/io/FileOutputStream;)Z
    .registers 1

    .line 279
    if-eqz p0, :cond_d

    .line 280
    :try_start_2
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/FileDescriptor;->sync()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_9} :catch_a

    goto :goto_d

    .line 283
    :catch_a
    move-exception p0

    .line 285
    const/4 p0, 0x0

    return p0

    .line 282
    :cond_d
    :goto_d
    const/4 p0, 0x1

    return p0
.end method

.method private static blacklist toBytes(JLjava/lang/String;)J
    .registers 4

    .line 1433
    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p2

    .line 1435
    const-string v0, "B"

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1436
    return-wide p0

    .line 1439
    :cond_d
    const-string v0, "K"

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9a

    const-string v0, "KB"

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    goto/16 :goto_9a

    .line 1443
    :cond_1f
    const-string v0, "M"

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_93

    const-string v0, "MB"

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    goto :goto_93

    .line 1447
    :cond_30
    const-string v0, "G"

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8c

    const-string v0, "GB"

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41

    goto :goto_8c

    .line 1451
    :cond_41
    const-string v0, "KI"

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_85

    const-string v0, "KIB"

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_52

    goto :goto_85

    .line 1455
    :cond_52
    const-string v0, "MI"

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7e

    const-string v0, "MIB"

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_63

    goto :goto_7e

    .line 1459
    :cond_63
    const-string v0, "GI"

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_77

    const-string v0, "GIB"

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_74

    goto :goto_77

    .line 1463
    :cond_74
    const-wide/high16 p0, -0x8000000000000000L

    return-wide p0

    .line 1460
    :cond_77
    :goto_77
    sget-object p2, Landroid/util/DataUnit;->GIBIBYTES:Landroid/util/DataUnit;

    invoke-virtual {p2, p0, p1}, Landroid/util/DataUnit;->toBytes(J)J

    move-result-wide p0

    return-wide p0

    .line 1456
    :cond_7e
    :goto_7e
    sget-object p2, Landroid/util/DataUnit;->MEBIBYTES:Landroid/util/DataUnit;

    invoke-virtual {p2, p0, p1}, Landroid/util/DataUnit;->toBytes(J)J

    move-result-wide p0

    return-wide p0

    .line 1452
    :cond_85
    :goto_85
    sget-object p2, Landroid/util/DataUnit;->KIBIBYTES:Landroid/util/DataUnit;

    invoke-virtual {p2, p0, p1}, Landroid/util/DataUnit;->toBytes(J)J

    move-result-wide p0

    return-wide p0

    .line 1448
    :cond_8c
    :goto_8c
    sget-object p2, Landroid/util/DataUnit;->GIGABYTES:Landroid/util/DataUnit;

    invoke-virtual {p2, p0, p1}, Landroid/util/DataUnit;->toBytes(J)J

    move-result-wide p0

    return-wide p0

    .line 1444
    :cond_93
    :goto_93
    sget-object p2, Landroid/util/DataUnit;->MEGABYTES:Landroid/util/DataUnit;

    invoke-virtual {p2, p0, p1}, Landroid/util/DataUnit;->toBytes(J)J

    move-result-wide p0

    return-wide p0

    .line 1440
    :cond_9a
    :goto_9a
    sget-object p2, Landroid/util/DataUnit;->KILOBYTES:Landroid/util/DataUnit;

    invoke-virtual {p2, p0, p1}, Landroid/util/DataUnit;->toBytes(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static blacklist translateModeAccessToPosix(I)I
    .registers 4

    .line 1661
    sget v0, Landroid/system/OsConstants;->F_OK:I

    if-ne p0, v0, :cond_7

    .line 1664
    sget p0, Landroid/system/OsConstants;->O_RDONLY:I

    return p0

    .line 1665
    :cond_7
    sget v0, Landroid/system/OsConstants;->R_OK:I

    sget v1, Landroid/system/OsConstants;->W_OK:I

    or-int/2addr v0, v1

    and-int/2addr v0, p0

    sget v1, Landroid/system/OsConstants;->R_OK:I

    sget v2, Landroid/system/OsConstants;->W_OK:I

    or-int/2addr v1, v2

    if-ne v0, v1, :cond_17

    .line 1666
    sget p0, Landroid/system/OsConstants;->O_RDWR:I

    return p0

    .line 1667
    :cond_17
    sget v0, Landroid/system/OsConstants;->R_OK:I

    and-int/2addr v0, p0

    sget v1, Landroid/system/OsConstants;->R_OK:I

    if-ne v0, v1, :cond_21

    .line 1668
    sget p0, Landroid/system/OsConstants;->O_RDONLY:I

    return p0

    .line 1669
    :cond_21
    sget v0, Landroid/system/OsConstants;->W_OK:I

    and-int/2addr v0, p0

    sget v1, Landroid/system/OsConstants;->W_OK:I

    if-ne v0, v1, :cond_2b

    .line 1670
    sget p0, Landroid/system/OsConstants;->O_WRONLY:I

    return p0

    .line 1672
    :cond_2b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist translateModePfdToPosix(I)I
    .registers 4

    .line 1637
    nop

    .line 1638
    const/high16 v0, 0x30000000

    and-int v1, p0, v0

    if-ne v1, v0, :cond_a

    .line 1639
    sget v0, Landroid/system/OsConstants;->O_RDWR:I

    goto :goto_1b

    .line 1640
    :cond_a
    const/high16 v0, 0x20000000

    and-int v1, p0, v0

    if-ne v1, v0, :cond_13

    .line 1641
    sget v0, Landroid/system/OsConstants;->O_WRONLY:I

    goto :goto_1b

    .line 1642
    :cond_13
    const/high16 v0, 0x10000000

    and-int v1, p0, v0

    if-ne v1, v0, :cond_36

    .line 1643
    sget v0, Landroid/system/OsConstants;->O_RDONLY:I

    .line 1647
    :goto_1b
    const/high16 v1, 0x8000000

    and-int v2, p0, v1

    if-ne v2, v1, :cond_24

    .line 1648
    sget v1, Landroid/system/OsConstants;->O_CREAT:I

    or-int/2addr v0, v1

    .line 1650
    :cond_24
    const/high16 v1, 0x4000000

    and-int v2, p0, v1

    if-ne v2, v1, :cond_2d

    .line 1651
    sget v1, Landroid/system/OsConstants;->O_TRUNC:I

    or-int/2addr v0, v1

    .line 1653
    :cond_2d
    const/high16 v1, 0x2000000

    and-int/2addr p0, v1

    if-ne p0, v1, :cond_35

    .line 1654
    sget p0, Landroid/system/OsConstants;->O_APPEND:I

    or-int/2addr v0, p0

    .line 1656
    :cond_35
    return v0

    .line 1645
    :cond_36
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist translateModePosixToPfd(I)I
    .registers 4

    .line 1613
    nop

    .line 1614
    sget v0, Landroid/system/OsConstants;->O_ACCMODE:I

    and-int/2addr v0, p0

    sget v1, Landroid/system/OsConstants;->O_RDWR:I

    if-ne v0, v1, :cond_b

    .line 1615
    const/high16 v0, 0x30000000

    goto :goto_1e

    .line 1616
    :cond_b
    sget v0, Landroid/system/OsConstants;->O_ACCMODE:I

    and-int/2addr v0, p0

    sget v1, Landroid/system/OsConstants;->O_WRONLY:I

    if-ne v0, v1, :cond_15

    .line 1617
    const/high16 v0, 0x20000000

    goto :goto_1e

    .line 1618
    :cond_15
    sget v0, Landroid/system/OsConstants;->O_ACCMODE:I

    and-int/2addr v0, p0

    sget v1, Landroid/system/OsConstants;->O_RDONLY:I

    if-ne v0, v1, :cond_3d

    .line 1619
    const/high16 v0, 0x10000000

    .line 1623
    :goto_1e
    sget v1, Landroid/system/OsConstants;->O_CREAT:I

    and-int/2addr v1, p0

    sget v2, Landroid/system/OsConstants;->O_CREAT:I

    if-ne v1, v2, :cond_28

    .line 1624
    const/high16 v1, 0x8000000

    or-int/2addr v0, v1

    .line 1626
    :cond_28
    sget v1, Landroid/system/OsConstants;->O_TRUNC:I

    and-int/2addr v1, p0

    sget v2, Landroid/system/OsConstants;->O_TRUNC:I

    if-ne v1, v2, :cond_32

    .line 1627
    const/high16 v1, 0x4000000

    or-int/2addr v0, v1

    .line 1629
    :cond_32
    sget v1, Landroid/system/OsConstants;->O_APPEND:I

    and-int/2addr p0, v1

    sget v1, Landroid/system/OsConstants;->O_APPEND:I

    if-ne p0, v1, :cond_3c

    .line 1630
    const/high16 p0, 0x2000000

    or-int/2addr v0, p0

    .line 1632
    :cond_3c
    return v0

    .line 1621
    :cond_3d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist translateModePosixToString(I)Ljava/lang/String;
    .registers 4

    .line 1592
    nop

    .line 1593
    sget v0, Landroid/system/OsConstants;->O_ACCMODE:I

    and-int/2addr v0, p0

    sget v1, Landroid/system/OsConstants;->O_RDWR:I

    if-ne v0, v1, :cond_c

    .line 1594
    const-string/jumbo v0, "rw"

    goto :goto_21

    .line 1595
    :cond_c
    sget v0, Landroid/system/OsConstants;->O_ACCMODE:I

    and-int/2addr v0, p0

    sget v1, Landroid/system/OsConstants;->O_WRONLY:I

    if-ne v0, v1, :cond_17

    .line 1596
    const-string/jumbo v0, "w"

    goto :goto_21

    .line 1597
    :cond_17
    sget v0, Landroid/system/OsConstants;->O_ACCMODE:I

    and-int/2addr v0, p0

    sget v1, Landroid/system/OsConstants;->O_RDONLY:I

    if-ne v0, v1, :cond_57

    .line 1598
    const-string/jumbo v0, "r"

    .line 1602
    :goto_21
    sget v1, Landroid/system/OsConstants;->O_TRUNC:I

    and-int/2addr v1, p0

    sget v2, Landroid/system/OsConstants;->O_TRUNC:I

    if-ne v1, v2, :cond_3c

    .line 1603
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1605
    :cond_3c
    sget v1, Landroid/system/OsConstants;->O_APPEND:I

    and-int/2addr p0, v1

    sget v1, Landroid/system/OsConstants;->O_APPEND:I

    if-ne p0, v1, :cond_56

    .line 1606
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "a"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1608
    :cond_56
    return-object v0

    .line 1600
    :cond_57
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist translateModeStringToPosix(Ljava/lang/String;)I
    .registers 8

    .line 1542
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/os/Flags;->enforceStrictFileModeCheck()Z

    move-result v0

    const-string/jumbo v1, "rw"

    const-string/jumbo v2, "w"

    const-string/jumbo v3, "r"

    const/4 v4, 0x0

    const-string v5, "Bad mode: "

    const/4 v6, -0x1

    if-eqz v0, :cond_fa

    .line 1547
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_172

    :cond_1a
    goto/16 :goto_b5

    :sswitch_1c
    const-string/jumbo v0, "wtr"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const/16 v4, 0xb

    goto/16 :goto_b6

    :sswitch_29
    const-string/jumbo v0, "wrt"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const/16 v4, 0xa

    goto/16 :goto_b6

    :sswitch_36
    const-string/jumbo v0, "twr"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const/16 v4, 0xd

    goto/16 :goto_b6

    :sswitch_43
    const-string/jumbo v0, "trw"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const/16 v4, 0xc

    goto/16 :goto_b6

    :sswitch_50
    const-string/jumbo v0, "rwt"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const/16 v4, 0x8

    goto :goto_b6

    :sswitch_5c
    const-string/jumbo v0, "rtw"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const/16 v4, 0x9

    goto :goto_b6

    :sswitch_68
    const-string/jumbo v0, "wt"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v4, 0x2

    goto :goto_b6

    :sswitch_73
    const-string/jumbo v0, "wr"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v4, 0x7

    goto :goto_b6

    :sswitch_7e
    const-string/jumbo v0, "wa"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v4, 0x4

    goto :goto_b6

    :sswitch_89
    const-string/jumbo v0, "tw"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v4, 0x3

    goto :goto_b6

    :sswitch_94
    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v4, 0x6

    goto :goto_b6

    :sswitch_9c
    const-string v0, "aw"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v4, 0x5

    goto :goto_b6

    :sswitch_a6
    invoke-virtual {p0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v4, 0x1

    goto :goto_b6

    :sswitch_ae
    invoke-virtual {p0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    goto :goto_b6

    :goto_b5
    move v4, v6

    :goto_b6
    packed-switch v4, :pswitch_data_1ac

    .line 1554
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1553
    :pswitch_d0
    sget p0, Landroid/system/OsConstants;->O_RDWR:I

    sget v0, Landroid/system/OsConstants;->O_CREAT:I

    or-int/2addr p0, v0

    sget v0, Landroid/system/OsConstants;->O_TRUNC:I

    or-int/2addr p0, v0

    goto :goto_f9

    .line 1552
    :pswitch_d9
    sget p0, Landroid/system/OsConstants;->O_RDWR:I

    sget v0, Landroid/system/OsConstants;->O_CREAT:I

    or-int/2addr p0, v0

    goto :goto_f9

    .line 1551
    :pswitch_df
    sget p0, Landroid/system/OsConstants;->O_WRONLY:I

    sget v0, Landroid/system/OsConstants;->O_CREAT:I

    or-int/2addr p0, v0

    sget v0, Landroid/system/OsConstants;->O_APPEND:I

    or-int/2addr p0, v0

    goto :goto_f9

    .line 1550
    :pswitch_e8
    sget p0, Landroid/system/OsConstants;->O_WRONLY:I

    sget v0, Landroid/system/OsConstants;->O_CREAT:I

    or-int/2addr p0, v0

    sget v0, Landroid/system/OsConstants;->O_TRUNC:I

    or-int/2addr p0, v0

    goto :goto_f9

    .line 1549
    :pswitch_f1
    sget p0, Landroid/system/OsConstants;->O_WRONLY:I

    sget v0, Landroid/system/OsConstants;->O_CREAT:I

    or-int/2addr p0, v0

    goto :goto_f9

    .line 1548
    :pswitch_f7
    sget p0, Landroid/system/OsConstants;->O_RDONLY:I

    .line 1547
    :goto_f9
    return p0

    .line 1559
    :cond_fa
    nop

    :goto_fb
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v4, v0, :cond_123

    .line 1560
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    sparse-switch v0, :sswitch_data_1cc

    .line 1567
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1565
    :sswitch_11f
    nop

    .line 1559
    add-int/lit8 v4, v4, 0x1

    goto :goto_fb

    .line 1571
    :cond_123
    nop

    .line 1572
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_130

    .line 1573
    sget v0, Landroid/system/OsConstants;->O_RDWR:I

    sget v1, Landroid/system/OsConstants;->O_CREAT:I

    or-int/2addr v0, v1

    goto :goto_144

    .line 1574
    :cond_130
    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13c

    .line 1575
    sget v0, Landroid/system/OsConstants;->O_WRONLY:I

    sget v1, Landroid/system/OsConstants;->O_CREAT:I

    or-int/2addr v0, v1

    goto :goto_144

    .line 1576
    :cond_13c
    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15b

    .line 1577
    sget v0, Landroid/system/OsConstants;->O_RDONLY:I

    .line 1581
    :goto_144
    const/16 v1, 0x74

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-eq v1, v6, :cond_14f

    .line 1582
    sget v1, Landroid/system/OsConstants;->O_TRUNC:I

    or-int/2addr v0, v1

    .line 1584
    :cond_14f
    const/16 v1, 0x61

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result p0

    if-eq p0, v6, :cond_15a

    .line 1585
    sget p0, Landroid/system/OsConstants;->O_APPEND:I

    or-int/2addr v0, p0

    .line 1587
    :cond_15a
    return v0

    .line 1579
    :cond_15b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_data_172
    .sparse-switch
        0x72 -> :sswitch_ae
        0x77 -> :sswitch_a6
        0xc36 -> :sswitch_9c
        0xe45 -> :sswitch_94
        0xe83 -> :sswitch_89
        0xeca -> :sswitch_7e
        0xedb -> :sswitch_73
        0xedd -> :sswitch_68
        0x1ba75 -> :sswitch_5c
        0x1bacf -> :sswitch_50
        0x1c1b9 -> :sswitch_43
        0x1c24f -> :sswitch_36
        0x1ccf9 -> :sswitch_29
        0x1cd35 -> :sswitch_1c
    .end sparse-switch

    :pswitch_data_1ac
    .packed-switch 0x0
        :pswitch_f7
        :pswitch_f1
        :pswitch_e8
        :pswitch_e8
        :pswitch_df
        :pswitch_df
        :pswitch_d9
        :pswitch_d9
        :pswitch_d0
        :pswitch_d0
        :pswitch_d0
        :pswitch_d0
        :pswitch_d0
        :pswitch_d0
    .end packed-switch

    :sswitch_data_1cc
    .sparse-switch
        0x61 -> :sswitch_11f
        0x72 -> :sswitch_11f
        0x74 -> :sswitch_11f
        0x77 -> :sswitch_11f
    .end sparse-switch
.end method

.method public static greylist-max-o trimFilename(Ljava/lang/String;I)Ljava/lang/String;
    .registers 3

    .line 1160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1161
    invoke-static {v0, p1}, Landroid/os/FileUtils;->trimFilename(Ljava/lang/StringBuilder;I)V

    .line 1162
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static greylist-max-o trimFilename(Ljava/lang/StringBuilder;I)V
    .registers 4

    .line 1167
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 1168
    array-length v1, v0

    if-le v1, p1, :cond_31

    .line 1169
    add-int/lit8 p1, p1, -0x3

    .line 1170
    :goto_f
    array-length v0, v0

    if-le v0, p1, :cond_26

    .line 1171
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 1172
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    goto :goto_f

    .line 1174
    :cond_26
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    const-string v0, "..."

    invoke-virtual {p0, p1, v0}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 1176
    :cond_31
    return-void
.end method
