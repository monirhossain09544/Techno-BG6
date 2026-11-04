.class public final Lcom/android/internal/os/ProcfsMemoryUtil;
.super Ljava/lang/Object;
.source "ProcfsMemoryUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/ProcfsMemoryUtil$MemorySnapshot;,
        Lcom/android/internal/os/ProcfsMemoryUtil$DmaBufType;,
        Lcom/android/internal/os/ProcfsMemoryUtil$VmStat;
    }
.end annotation


# static fields
.field private static final blacklist CMDLINE_OUT:[I

.field private static final blacklist DMABUF_FILE_FORMAT:[I

.field private static final blacklist OOM_SCORE_ADJ_OUT:[I

.field private static final blacklist STATUS_KEYS:[Ljava/lang/String;

.field private static final blacklist VMSTAT_KEYS:[Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 7

    .line 27
    const/16 v0, 0x1000

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/android/internal/os/ProcfsMemoryUtil;->CMDLINE_OUT:[I

    .line 28
    const/16 v0, 0x200a

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/android/internal/os/ProcfsMemoryUtil;->OOM_SCORE_ADJ_OUT:[I

    .line 29
    const-string v5, "RssShmem:"

    const-string v6, "VmSwap:"

    const-string v1, "Uid:"

    const-string v2, "VmHWM:"

    const-string v3, "VmRSS:"

    const-string v4, "RssAnon:"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/os/ProcfsMemoryUtil;->STATUS_KEYS:[Ljava/lang/String;

    .line 37
    const-string v0, "oom_kill"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/os/ProcfsMemoryUtil;->VMSTAT_KEYS:[Ljava/lang/String;

    .line 40
    const/16 v0, 0x2000

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/android/internal/os/ProcfsMemoryUtil;->DMABUF_FILE_FORMAT:[I

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getProcessCmdlines()Landroid/util/SparseArray;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 192
    const/16 v0, 0x400

    new-array v0, v0, [I

    .line 193
    const-string v1, "/proc"

    invoke-static {v1, v0}, Landroid/os/Process;->getPids(Ljava/lang/String;[I)[I

    move-result-object v0

    .line 195
    new-instance v1, Landroid/util/SparseArray;

    array-length v2, v0

    invoke-direct {v1, v2}, Landroid/util/SparseArray;-><init>(I)V

    .line 196
    array-length v2, v0

    const/4 v3, 0x0

    :goto_12
    if-ge v3, v2, :cond_2a

    aget v4, v0, v3

    .line 197
    if-gez v4, :cond_19

    .line 198
    goto :goto_2a

    .line 200
    :cond_19
    invoke-static {v4}, Lcom/android/internal/os/ProcfsMemoryUtil;->readCmdlineFromProcfs(I)Ljava/lang/String;

    move-result-object v5

    .line 201
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_24

    .line 202
    goto :goto_27

    .line 204
    :cond_24
    invoke-virtual {v1, v4, v5}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 196
    :goto_27
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 206
    :cond_2a
    :goto_2a
    return-object v1
.end method

.method public static blacklist readCmdlineFromProcfs()Ljava/lang/String;
    .registers 1

    .line 151
    const-string v0, "/proc/self/cmdline"

    invoke-static {v0}, Lcom/android/internal/os/ProcfsMemoryUtil;->readCmdlineFromProcfs(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist readCmdlineFromProcfs(I)Ljava/lang/String;
    .registers 3

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/proc/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "/cmdline"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/os/ProcfsMemoryUtil;->readCmdlineFromProcfs(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist readCmdlineFromProcfs(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 155
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    .line 156
    sget-object v1, Lcom/android/internal/os/ProcfsMemoryUtil;->CMDLINE_OUT:[I

    const/4 v2, 0x0

    invoke-static {p0, v1, v0, v2, v2}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result p0

    if-nez p0, :cond_f

    .line 157
    const-string p0, ""

    return-object p0

    .line 159
    :cond_f
    const/4 p0, 0x0

    aget-object p0, v0, p0

    return-object p0
.end method

.method public static blacklist readDmabufFromProcfs(Lcom/android/internal/os/ProcfsMemoryUtil$DmaBufType;)I
    .registers 2

    .line 110
    const-string v0, "self"

    invoke-static {p0, v0}, Lcom/android/internal/os/ProcfsMemoryUtil;->readDmabufFromProcfs(Lcom/android/internal/os/ProcfsMemoryUtil$DmaBufType;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static blacklist readDmabufFromProcfs(Lcom/android/internal/os/ProcfsMemoryUtil$DmaBufType;I)I
    .registers 2

    .line 100
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/internal/os/ProcfsMemoryUtil;->readDmabufFromProcfs(Lcom/android/internal/os/ProcfsMemoryUtil$DmaBufType;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private static blacklist readDmabufFromProcfs(Lcom/android/internal/os/ProcfsMemoryUtil$DmaBufType;Ljava/lang/String;)I
    .registers 6

    .line 115
    const/4 v0, 0x1

    new-array v0, v0, [J

    .line 116
    invoke-virtual {p0}, Lcom/android/internal/os/ProcfsMemoryUtil$DmaBufType;->ordinal()I

    move-result p0

    const/4 v1, 0x0

    packed-switch p0, :pswitch_data_48

    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0, v1, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p0

    .line 119
    :pswitch_11
    const-string p0, "dmabuf_pss"

    goto :goto_19

    .line 118
    :pswitch_14
    const-string p0, "dmabuf_rss_hwm"

    goto :goto_19

    .line 117
    :pswitch_17
    const-string p0, "dmabuf_rss"

    .line 122
    :goto_19
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/proc/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, "/"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/android/internal/os/ProcfsMemoryUtil;->DMABUF_FILE_FORMAT:[I

    invoke-static {p0, p1, v1, v0, v1}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result p0

    if-nez p0, :cond_40

    .line 128
    const/4 p0, -0x1

    return p0

    .line 131
    :cond_40
    const/4 p0, 0x0

    aget-wide p0, v0, p0

    const-wide/16 v0, 0x400

    div-long/2addr p0, v0

    long-to-int p0, p0

    return p0

    :pswitch_data_48
    .packed-switch 0x0
        :pswitch_17
        :pswitch_14
        :pswitch_11
    .end packed-switch
.end method

.method public static blacklist readMemorySnapshotFromProcfs()Lcom/android/internal/os/ProcfsMemoryUtil$MemorySnapshot;
    .registers 1

    .line 69
    const-string v0, "/proc/self/status"

    invoke-static {v0}, Lcom/android/internal/os/ProcfsMemoryUtil;->readMemorySnapshotFromProcfs(Ljava/lang/String;)Lcom/android/internal/os/ProcfsMemoryUtil$MemorySnapshot;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist readMemorySnapshotFromProcfs(I)Lcom/android/internal/os/ProcfsMemoryUtil$MemorySnapshot;
    .registers 3

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/proc/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "/status"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/os/ProcfsMemoryUtil;->readMemorySnapshotFromProcfs(Ljava/lang/String;)Lcom/android/internal/os/ProcfsMemoryUtil$MemorySnapshot;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist readMemorySnapshotFromProcfs(Ljava/lang/String;)Lcom/android/internal/os/ProcfsMemoryUtil$MemorySnapshot;
    .registers 10

    .line 73
    sget-object v0, Lcom/android/internal/os/ProcfsMemoryUtil;->STATUS_KEYS:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [J

    .line 74
    const/4 v1, 0x0

    const-wide/16 v2, -0x1

    aput-wide v2, v0, v1

    .line 75
    const/4 v4, 0x3

    aput-wide v2, v0, v4

    .line 76
    const/4 v5, 0x4

    aput-wide v2, v0, v5

    .line 77
    const/4 v6, 0x5

    aput-wide v2, v0, v6

    .line 78
    sget-object v7, Lcom/android/internal/os/ProcfsMemoryUtil;->STATUS_KEYS:[Ljava/lang/String;

    invoke-static {p0, v7, v0}, Landroid/os/Process;->readProcLines(Ljava/lang/String;[Ljava/lang/String;[J)V

    .line 79
    aget-wide v7, v0, v1

    cmp-long p0, v7, v2

    if-eqz p0, :cond_57

    aget-wide v7, v0, v4

    cmp-long p0, v7, v2

    if-eqz p0, :cond_57

    aget-wide v7, v0, v5

    cmp-long p0, v7, v2

    if-eqz p0, :cond_57

    aget-wide v7, v0, v6

    cmp-long p0, v7, v2

    if-nez p0, :cond_31

    goto :goto_57

    .line 83
    :cond_31
    new-instance p0, Lcom/android/internal/os/ProcfsMemoryUtil$MemorySnapshot;

    invoke-direct {p0}, Lcom/android/internal/os/ProcfsMemoryUtil$MemorySnapshot;-><init>()V

    .line 84
    aget-wide v1, v0, v1

    long-to-int v1, v1

    iput v1, p0, Lcom/android/internal/os/ProcfsMemoryUtil$MemorySnapshot;->uid:I

    .line 85
    const/4 v1, 0x1

    aget-wide v1, v0, v1

    long-to-int v1, v1

    iput v1, p0, Lcom/android/internal/os/ProcfsMemoryUtil$MemorySnapshot;->rssHighWaterMarkInKilobytes:I

    .line 86
    const/4 v1, 0x2

    aget-wide v1, v0, v1

    long-to-int v1, v1

    iput v1, p0, Lcom/android/internal/os/ProcfsMemoryUtil$MemorySnapshot;->rssInKilobytes:I

    .line 87
    aget-wide v1, v0, v4

    long-to-int v1, v1

    iput v1, p0, Lcom/android/internal/os/ProcfsMemoryUtil$MemorySnapshot;->anonRssInKilobytes:I

    .line 88
    aget-wide v1, v0, v5

    long-to-int v1, v1

    iput v1, p0, Lcom/android/internal/os/ProcfsMemoryUtil$MemorySnapshot;->rssShmemKilobytes:I

    .line 89
    aget-wide v0, v0, v6

    long-to-int v0, v0

    iput v0, p0, Lcom/android/internal/os/ProcfsMemoryUtil$MemorySnapshot;->swapInKilobytes:I

    .line 90
    return-object p0

    .line 81
    :cond_57
    :goto_57
    const/4 p0, 0x0

    return-object p0
.end method

.method public static blacklist readOomScoreAdjFromProcfs()I
    .registers 1

    .line 177
    const-string v0, "/proc/self/oom_score_adj"

    invoke-static {v0}, Lcom/android/internal/os/ProcfsMemoryUtil;->readOomScoreAdjFromProcfs(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static blacklist readOomScoreAdjFromProcfs(I)I
    .registers 3

    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/proc/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "/oom_score_adj"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/os/ProcfsMemoryUtil;->readOomScoreAdjFromProcfs(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private static blacklist readOomScoreAdjFromProcfs(Ljava/lang/String;)I
    .registers 4

    .line 181
    const/4 v0, 0x1

    new-array v0, v0, [J

    .line 182
    sget-object v1, Lcom/android/internal/os/ProcfsMemoryUtil;->OOM_SCORE_ADJ_OUT:[I

    const/4 v2, 0x0

    invoke-static {p0, v1, v2, v0, v2}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result p0

    const/4 v1, 0x0

    if-eqz p0, :cond_11

    .line 183
    aget-wide v0, v0, v1

    long-to-int p0, v0

    return p0

    .line 185
    :cond_11
    return v1
.end method

.method public static blacklist readVmStat()Lcom/android/internal/os/ProcfsMemoryUtil$VmStat;
    .registers 6

    .line 221
    sget-object v0, Lcom/android/internal/os/ProcfsMemoryUtil;->VMSTAT_KEYS:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [J

    .line 222
    const/4 v1, 0x0

    const-wide/16 v2, -0x1

    aput-wide v2, v0, v1

    .line 223
    const-string v4, "/proc/vmstat"

    sget-object v5, Lcom/android/internal/os/ProcfsMemoryUtil;->VMSTAT_KEYS:[Ljava/lang/String;

    invoke-static {v4, v5, v0}, Landroid/os/Process;->readProcLines(Ljava/lang/String;[Ljava/lang/String;[J)V

    .line 224
    aget-wide v4, v0, v1

    cmp-long v2, v4, v2

    if-nez v2, :cond_19

    .line 225
    const/4 v0, 0x0

    return-object v0

    .line 227
    :cond_19
    new-instance v2, Lcom/android/internal/os/ProcfsMemoryUtil$VmStat;

    invoke-direct {v2}, Lcom/android/internal/os/ProcfsMemoryUtil$VmStat;-><init>()V

    .line 228
    aget-wide v0, v0, v1

    long-to-int v0, v0

    iput v0, v2, Lcom/android/internal/os/ProcfsMemoryUtil$VmStat;->oomKillCount:I

    .line 229
    return-object v2
.end method
