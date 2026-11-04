.class public final Lcom/android/internal/os/MemcgProcMemoryUtil;
.super Ljava/lang/Object;
.source "MemcgProcMemoryUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/MemcgProcMemoryUtil$MemcgMemorySnapshot;,
        Lcom/android/internal/os/MemcgProcMemoryUtil$MemcgHighWaterMarkMemorySnapshot;
    }
.end annotation


# static fields
.field private static final blacklist CGROUP_ROOT:Ljava/lang/String; = "/sys/fs/cgroup"

.field private static final blacklist MEMCG_MEMORY_FORMAT:[I

.field private static final blacklist PROC_ROOT:Ljava/lang/String; = "/proc/"

.field private static final blacklist TAG:Ljava/lang/String; = "MemcgProcMemoryUtil"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 34
    const/16 v0, 0x2000

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/android/internal/os/MemcgProcMemoryUtil;->MEMCG_MEMORY_FORMAT:[I

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist getCgroupPathForPid(I)Ljava/lang/String;
    .registers 4

    .line 77
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "cgroup"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "/proc/"

    invoke-static {v1, v0}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    .line 79
    :try_start_10
    invoke-static {v0}, Ljava/nio/file/Files;->newBufferedReader(Ljava/nio/file/Path;)Ljava/io/BufferedReader;

    move-result-object v0
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_14} :catch_3f

    .line 81
    :cond_14
    :try_start_14
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2d

    .line 82
    const-string v2, "0::"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 83
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1
    :try_end_27
    .catchall {:try_start_14 .. :try_end_27} :catchall_33

    .line 86
    if-eqz v0, :cond_2c

    :try_start_29
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 83
    :cond_2c
    return-object v1

    .line 86
    :cond_2d
    if-eqz v0, :cond_32

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_32} :catch_3f

    .line 88
    :cond_32
    goto :goto_58

    .line 79
    :catchall_33
    move-exception v1

    if-eqz v0, :cond_3e

    :try_start_36
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_39
    .catchall {:try_start_36 .. :try_end_39} :catchall_3a

    goto :goto_3e

    :catchall_3a
    move-exception v0

    :try_start_3b
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3e
    :goto_3e
    throw v1
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_3f} :catch_3f

    .line 86
    :catch_3f
    move-exception v0

    .line 87
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to read cgroup file for pid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "MemcgProcMemoryUtil"

    invoke-static {v1, p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 89
    :goto_58
    const/4 p0, 0x0

    return-object p0
.end method

.method public static blacklist readHighWaterMarkMemorySnapshot(I)Lcom/android/internal/os/MemcgProcMemoryUtil$MemcgHighWaterMarkMemorySnapshot;
    .registers 1

    .line 62
    invoke-static {p0}, Lcom/android/internal/os/MemcgProcMemoryUtil;->getCgroupPathForPid(I)Ljava/lang/String;

    move-result-object p0

    .line 63
    if-nez p0, :cond_8

    .line 64
    const/4 p0, 0x0

    return-object p0

    .line 66
    :cond_8
    invoke-static {p0}, Lcom/android/internal/os/MemcgProcMemoryUtil;->readMemcgHighWaterMarkMemorySnapshot(Ljava/lang/String;)Lcom/android/internal/os/MemcgProcMemoryUtil$MemcgHighWaterMarkMemorySnapshot;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist readMemcgHighWaterMarkMemorySnapshot(Ljava/lang/String;)Lcom/android/internal/os/MemcgProcMemoryUtil$MemcgHighWaterMarkMemorySnapshot;
    .registers 6

    .line 94
    const-string v0, "/sys/fs/cgroup"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p0

    .line 96
    new-instance v0, Lcom/android/internal/os/MemcgProcMemoryUtil$MemcgHighWaterMarkMemorySnapshot;

    invoke-direct {v0}, Lcom/android/internal/os/MemcgProcMemoryUtil$MemcgHighWaterMarkMemorySnapshot;-><init>()V

    .line 97
    const-string v1, "memory.peak"

    sget-object v2, Lcom/android/internal/os/MemcgProcMemoryUtil;->MEMCG_MEMORY_FORMAT:[I

    invoke-static {p0, v1, v2}, Lcom/android/internal/os/MemcgProcMemoryUtil;->readSingleValueFromMemcgFile(Ljava/nio/file/Path;Ljava/lang/String;[I)Ljava/lang/Long;

    move-result-object v1

    .line 102
    const/4 v2, 0x0

    if-nez v1, :cond_1b

    .line 103
    return-object v2

    .line 106
    :cond_1b
    const-string v3, "memory.swap.peak"

    sget-object v4, Lcom/android/internal/os/MemcgProcMemoryUtil;->MEMCG_MEMORY_FORMAT:[I

    invoke-static {p0, v3, v4}, Lcom/android/internal/os/MemcgProcMemoryUtil;->readSingleValueFromMemcgFile(Ljava/nio/file/Path;Ljava/lang/String;[I)Ljava/lang/Long;

    move-result-object p0

    .line 111
    if-nez p0, :cond_26

    .line 112
    return-object v2

    .line 115
    :cond_26
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/internal/os/MemcgProcMemoryUtil$MemcgHighWaterMarkMemorySnapshot;->memcgMemoryPeakInBytes:J

    .line 116
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/internal/os/MemcgProcMemoryUtil$MemcgHighWaterMarkMemorySnapshot;->memcgSwapMemoryPeakInBytes:J

    .line 117
    return-object v0
.end method

.method public static blacklist readMemcgMemorySnapshot(I)Lcom/android/internal/os/MemcgProcMemoryUtil$MemcgMemorySnapshot;
    .registers 1

    .line 46
    invoke-static {p0}, Lcom/android/internal/os/MemcgProcMemoryUtil;->getCgroupPathForPid(I)Ljava/lang/String;

    move-result-object p0

    .line 47
    if-nez p0, :cond_8

    .line 48
    const/4 p0, 0x0

    return-object p0

    .line 50
    :cond_8
    invoke-static {p0}, Lcom/android/internal/os/MemcgProcMemoryUtil;->readMemcgMemorySnapshot(Ljava/lang/String;)Lcom/android/internal/os/MemcgProcMemoryUtil$MemcgMemorySnapshot;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist readMemcgMemorySnapshot(Ljava/lang/String;)Lcom/android/internal/os/MemcgProcMemoryUtil$MemcgMemorySnapshot;
    .registers 11

    .line 121
    const-string v0, "/sys/fs/cgroup"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    .line 123
    new-instance v1, Lcom/android/internal/os/MemcgProcMemoryUtil$MemcgMemorySnapshot;

    invoke-direct {v1}, Lcom/android/internal/os/MemcgProcMemoryUtil$MemcgMemorySnapshot;-><init>()V

    .line 125
    const/4 v2, 0x1

    new-array v3, v2, [J

    .line 126
    const-string v4, "memory.current"

    invoke-interface {v0, v4}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v4

    invoke-interface {v4}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v4

    .line 127
    sget-object v5, Lcom/android/internal/os/MemcgProcMemoryUtil;->MEMCG_MEMORY_FORMAT:[I

    const/4 v6, 0x0

    invoke-static {v4, v5, v6, v3, v6}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result v4

    const-string v5, "Failed to read memory.current for "

    const-string v7, "MemcgProcMemoryUtil"

    if-eqz v4, :cond_5d

    .line 134
    const/4 v4, 0x0

    aget-wide v8, v3, v4

    iput-wide v8, v1, Lcom/android/internal/os/MemcgProcMemoryUtil$MemcgMemorySnapshot;->memcgMemoryInBytes:J

    .line 140
    new-array v2, v2, [J

    .line 141
    nop

    .line 142
    const-string v3, "memory.swap.current"

    invoke-interface {v0, v3}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    invoke-interface {v0}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v0

    .line 143
    sget-object v3, Lcom/android/internal/os/MemcgProcMemoryUtil;->MEMCG_MEMORY_FORMAT:[I

    invoke-static {v0, v3, v6, v2, v6}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result v0

    if-eqz v0, :cond_48

    .line 150
    aget-wide v2, v2, v4

    iput-wide v2, v1, Lcom/android/internal/os/MemcgProcMemoryUtil$MemcgMemorySnapshot;->memcgSwapMemoryInBytes:J

    .line 155
    return-object v1

    .line 152
    :cond_48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v7, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    return-object v6

    .line 136
    :cond_5d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v7, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    return-object v6
.end method

.method private static blacklist readSingleValueFromMemcgFile(Ljava/nio/file/Path;Ljava/lang/String;[I)Ljava/lang/Long;
    .registers 4

    .line 160
    const/4 v0, 0x1

    new-array v0, v0, [J

    .line 161
    invoke-interface {p0, p1}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p0

    invoke-interface {p0}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object p0

    .line 162
    const/4 p1, 0x0

    invoke-static {p0, p2, p1, v0, p1}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result p0

    if-eqz p0, :cond_1a

    .line 169
    const/4 p0, 0x0

    aget-wide p0, v0, p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    .line 171
    :cond_1a
    return-object p1
.end method
