.class public Lcom/android/internal/os/StoragedUidIoStatsReader;
.super Ljava/lang/Object;
.source "StoragedUidIoStatsReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/StoragedUidIoStatsReader$Callback;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String;

.field private static blacklist sUidIoFile:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 44
    const-class v0, Lcom/android/internal/os/StoragedUidIoStatsReader;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/os/StoragedUidIoStatsReader;->TAG:Ljava/lang/String;

    .line 45
    const-string v0, "/proc/uid_io/stats"

    sput-object v0, Lcom/android/internal/os/StoragedUidIoStatsReader;->sUidIoFile:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 2

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    sput-object p1, Lcom/android/internal/os/StoragedUidIoStatsReader;->sUidIoFile:Ljava/lang/String;

    .line 53
    return-void
.end method

.method private blacklist readAbsoluteInternal(Lcom/android/internal/os/StoragedUidIoStatsReader$Callback;)V
    .registers 29

    .line 87
    const-string v1, ": "

    new-instance v0, Ljava/io/File;

    sget-object v2, Lcom/android/internal/os/StoragedUidIoStatsReader;->sUidIoFile:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 88
    :try_start_9
    invoke-virtual {v0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/file/Files;->newBufferedReader(Ljava/nio/file/Path;)Ljava/io/BufferedReader;

    move-result-object v2
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_11} :catch_d9

    .line 90
    :goto_11
    :try_start_11
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c6

    .line 91
    const-string v3, " "

    invoke-static {v0, v3}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 92
    array-length v4, v3

    const/16 v5, 0xb

    if-eq v4, v5, :cond_45

    .line 93
    sget-object v3, Lcom/android/internal/os/StoragedUidIoStatsReader;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Malformed entry in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/android/internal/os/StoragedUidIoStatsReader;->sUidIoFile:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_44
    .catchall {:try_start_11 .. :try_end_44} :catchall_cc

    .line 94
    goto :goto_11

    .line 97
    :cond_45
    const/4 v0, 0x0

    :try_start_46
    aget-object v4, v3, v0

    .line 98
    aget-object v0, v3, v0

    const/16 v4, 0xa

    invoke-static {v0, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v6

    .line 99
    const/4 v0, 0x1

    aget-object v0, v3, v0

    invoke-static {v0, v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v7

    .line 100
    const/4 v0, 0x2

    aget-object v0, v3, v0

    invoke-static {v0, v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v9

    .line 101
    const/4 v0, 0x3

    aget-object v0, v3, v0

    invoke-static {v0, v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v11

    .line 102
    const/4 v0, 0x4

    aget-object v0, v3, v0

    invoke-static {v0, v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v13

    .line 103
    const/4 v0, 0x5

    aget-object v0, v3, v0

    invoke-static {v0, v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v15

    .line 104
    const/4 v0, 0x6

    aget-object v0, v3, v0

    invoke-static {v0, v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v17

    .line 105
    const/4 v0, 0x7

    aget-object v0, v3, v0

    invoke-static {v0, v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v19

    .line 106
    const/16 v0, 0x8

    aget-object v0, v3, v0

    invoke-static {v0, v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v21

    .line 107
    const/16 v0, 0x9

    aget-object v0, v3, v0

    invoke-static {v0, v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v23

    .line 108
    aget-object v0, v3, v4

    invoke-static {v0, v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v25

    .line 109
    move-object/from16 v5, p1

    invoke-interface/range {v5 .. v26}, Lcom/android/internal/os/StoragedUidIoStatsReader$Callback;->onUidStorageStats(IJJJJJJJJJJ)V
    :try_end_9c
    .catch Ljava/lang/NumberFormatException; {:try_start_46 .. :try_end_9c} :catch_9d
    .catchall {:try_start_46 .. :try_end_9c} :catchall_cc

    .line 114
    goto :goto_c4

    .line 112
    :catch_9d
    move-exception v0

    .line 113
    :try_start_9e
    sget-object v3, Lcom/android/internal/os/StoragedUidIoStatsReader;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not parse entry in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/android/internal/os/StoragedUidIoStatsReader;->sUidIoFile:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c4
    .catchall {:try_start_9e .. :try_end_c4} :catchall_cc

    .line 115
    :goto_c4
    goto/16 :goto_11

    .line 116
    :cond_c6
    if-eqz v2, :cond_cb

    :try_start_c8
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_cb
    .catch Ljava/io/IOException; {:try_start_c8 .. :try_end_cb} :catch_d9

    .line 118
    :cond_cb
    goto :goto_100

    .line 88
    :catchall_cc
    move-exception v0

    move-object v3, v0

    if-eqz v2, :cond_d8

    :try_start_d0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_d3
    .catchall {:try_start_d0 .. :try_end_d3} :catchall_d4

    goto :goto_d8

    :catchall_d4
    move-exception v0

    :try_start_d5
    invoke-virtual {v3, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_d8
    :goto_d8
    throw v3
    :try_end_d9
    .catch Ljava/io/IOException; {:try_start_d5 .. :try_end_d9} :catch_d9

    .line 116
    :catch_d9
    move-exception v0

    .line 117
    sget-object v2, Lcom/android/internal/os/StoragedUidIoStatsReader;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to read "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/internal/os/StoragedUidIoStatsReader;->sUidIoFile:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    :goto_100
    return-void
.end method


# virtual methods
.method public blacklist readAbsolute(Lcom/android/internal/os/StoragedUidIoStatsReader$Callback;)V
    .registers 3

    .line 78
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReadsMask()I

    move-result v0

    .line 80
    :try_start_4
    invoke-direct {p0, p1}, Lcom/android/internal/os/StoragedUidIoStatsReader;->readAbsoluteInternal(Lcom/android/internal/os/StoragedUidIoStatsReader$Callback;)V
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_c

    .line 82
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    .line 83
    nop

    .line 84
    return-void

    .line 82
    :catchall_c
    move-exception p1

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    .line 83
    throw p1
.end method
