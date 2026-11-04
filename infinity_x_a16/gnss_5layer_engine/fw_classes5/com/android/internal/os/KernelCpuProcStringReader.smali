.class public Lcom/android/internal/os/KernelCpuProcStringReader;
.super Ljava/lang/Object;
.source "KernelCpuProcStringReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/KernelCpuProcStringReader$ProcFileIterator;
    }
.end annotation


# static fields
.field private static final blacklist ACTIVE_TIME_READER:Lcom/android/internal/os/KernelCpuProcStringReader;

.field private static final blacklist CLUSTER_TIME_READER:Lcom/android/internal/os/KernelCpuProcStringReader;

.field private static final blacklist ERROR_THRESHOLD:I = 0x5

.field private static final blacklist FREQ_TIME_READER:Lcom/android/internal/os/KernelCpuProcStringReader;

.field private static final blacklist FRESHNESS:J = 0x1f4L

.field private static final blacklist MAX_BUFFER_SIZE:I = 0x100000

.field private static final blacklist PROC_UID_ACTIVE_TIME:Ljava/lang/String; = "/proc/uid_concurrent_active_time"

.field private static final blacklist PROC_UID_CLUSTER_TIME:Ljava/lang/String; = "/proc/uid_concurrent_policy_time"

.field private static final blacklist PROC_UID_FREQ_TIME:Ljava/lang/String; = "/proc/uid_time_in_state"

.field private static final blacklist PROC_UID_USER_SYS_TIME:Ljava/lang/String; = "/proc/uid_cputime/show_uid_stat"

.field private static final blacklist TAG:Ljava/lang/String;

.field private static final blacklist USER_SYS_TIME_READER:Lcom/android/internal/os/KernelCpuProcStringReader;


# instance fields
.field private blacklist mBuf:[C

.field private final blacklist mClock:Lcom/android/internal/os/Clock;

.field private blacklist mErrors:I

.field private final blacklist mFile:Ljava/nio/file/Path;

.field private blacklist mLastReadTime:J

.field private final blacklist mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field private final blacklist mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

.field private blacklist mSize:I

.field private final blacklist mWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmBuf(Lcom/android/internal/os/KernelCpuProcStringReader;)[C
    .registers 1

    iget-object p0, p0, Lcom/android/internal/os/KernelCpuProcStringReader;->mBuf:[C

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmReadLock(Lcom/android/internal/os/KernelCpuProcStringReader;)Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/os/KernelCpuProcStringReader;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 53
    const-class v0, Lcom/android/internal/os/KernelCpuProcStringReader;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/os/KernelCpuProcStringReader;->TAG:Ljava/lang/String;

    .line 64
    new-instance v0, Lcom/android/internal/os/KernelCpuProcStringReader;

    const-string v1, "/proc/uid_time_in_state"

    invoke-direct {v0, v1}, Lcom/android/internal/os/KernelCpuProcStringReader;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/os/KernelCpuProcStringReader;->FREQ_TIME_READER:Lcom/android/internal/os/KernelCpuProcStringReader;

    .line 66
    new-instance v0, Lcom/android/internal/os/KernelCpuProcStringReader;

    const-string v1, "/proc/uid_concurrent_active_time"

    invoke-direct {v0, v1}, Lcom/android/internal/os/KernelCpuProcStringReader;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/os/KernelCpuProcStringReader;->ACTIVE_TIME_READER:Lcom/android/internal/os/KernelCpuProcStringReader;

    .line 68
    new-instance v0, Lcom/android/internal/os/KernelCpuProcStringReader;

    const-string v1, "/proc/uid_concurrent_policy_time"

    invoke-direct {v0, v1}, Lcom/android/internal/os/KernelCpuProcStringReader;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/os/KernelCpuProcStringReader;->CLUSTER_TIME_READER:Lcom/android/internal/os/KernelCpuProcStringReader;

    .line 70
    new-instance v0, Lcom/android/internal/os/KernelCpuProcStringReader;

    const-string v1, "/proc/uid_cputime/show_uid_stat"

    invoke-direct {v0, v1}, Lcom/android/internal/os/KernelCpuProcStringReader;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/os/KernelCpuProcStringReader;->USER_SYS_TIME_READER:Lcom/android/internal/os/KernelCpuProcStringReader;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 3

    .line 100
    sget-object v0, Lcom/android/internal/os/Clock;->SYSTEM_CLOCK:Lcom/android/internal/os/Clock;

    invoke-direct {p0, p1, v0}, Lcom/android/internal/os/KernelCpuProcStringReader;-><init>(Ljava/lang/String;Lcom/android/internal/os/Clock;)V

    .line 101
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Lcom/android/internal/os/Clock;)V
    .registers 6

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/os/KernelCpuProcStringReader;->mErrors:I

    .line 94
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/internal/os/KernelCpuProcStringReader;->mLastReadTime:J

    .line 95
    new-instance v1, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/KernelCpuProcStringReader;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 96
    iget-object v1, p0, Lcom/android/internal/os/KernelCpuProcStringReader;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/os/KernelCpuProcStringReader;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 97
    iget-object v1, p0, Lcom/android/internal/os/KernelCpuProcStringReader;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/os/KernelCpuProcStringReader;->mWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 104
    new-array v0, v0, [Ljava/lang/String;

    invoke-static {p1, v0}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/os/KernelCpuProcStringReader;->mFile:Ljava/nio/file/Path;

    .line 105
    iput-object p2, p0, Lcom/android/internal/os/KernelCpuProcStringReader;->mClock:Lcom/android/internal/os/Clock;

    .line 106
    return-void
.end method

.method public static blacklist asLongs(Ljava/nio/CharBuffer;[J)I
    .registers 13

    .line 263
    if-nez p0, :cond_4

    .line 264
    const/4 p0, -0x1

    return p0

    .line 266
    :cond_4
    invoke-virtual {p0}, Ljava/nio/CharBuffer;->position()I

    move-result v0

    .line 267
    nop

    .line 268
    const-wide/16 v1, -0x1

    const/4 v3, 0x0

    move-wide v4, v1

    .line 271
    :cond_d
    :goto_d
    invoke-virtual {p0}, Ljava/nio/CharBuffer;->remaining()I

    move-result v6

    const-wide/16 v7, 0x0

    if-lez v6, :cond_5b

    array-length v6, p1

    if-ge v3, v6, :cond_5b

    .line 272
    invoke-virtual {p0}, Ljava/nio/CharBuffer;->get()C

    move-result v6

    .line 273
    invoke-static {v6}, Lcom/android/internal/os/KernelCpuProcStringReader;->isNumber(C)Z

    move-result v9

    if-nez v9, :cond_2f

    const/16 v9, 0x20

    if-eq v6, v9, :cond_2f

    const/16 v9, 0x3a

    if-eq v6, v9, :cond_2f

    .line 274
    invoke-virtual {p0, v0}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    .line 275
    const/4 p0, -0x2

    return p0

    .line 277
    :cond_2f
    cmp-long v9, v4, v7

    if-gez v9, :cond_3d

    .line 278
    invoke-static {v6}, Lcom/android/internal/os/KernelCpuProcStringReader;->isNumber(C)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 279
    add-int/lit8 v6, v6, -0x30

    int-to-long v4, v6

    goto :goto_d

    .line 282
    :cond_3d
    invoke-static {v6}, Lcom/android/internal/os/KernelCpuProcStringReader;->isNumber(C)Z

    move-result v9

    if-eqz v9, :cond_54

    .line 283
    const-wide/16 v9, 0xa

    mul-long/2addr v4, v9

    int-to-long v9, v6

    add-long/2addr v4, v9

    const-wide/16 v9, 0x30

    sub-long/2addr v4, v9

    .line 284
    cmp-long v6, v4, v7

    if-gez v6, :cond_d

    .line 285
    invoke-virtual {p0, v0}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    .line 286
    const/4 p0, -0x3

    return p0

    .line 289
    :cond_54
    add-int/lit8 v6, v3, 0x1

    aput-wide v4, p1, v3

    .line 290
    move-wide v4, v1

    move v3, v6

    goto :goto_d

    .line 294
    :cond_5b
    cmp-long v1, v4, v7

    if-ltz v1, :cond_64

    .line 295
    add-int/lit8 v1, v3, 0x1

    aput-wide v4, p1, v3

    move v3, v1

    .line 297
    :cond_64
    invoke-virtual {p0, v0}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    .line 298
    return v3
.end method

.method private blacklist dataValid()Z
    .registers 5

    .line 194
    iget v0, p0, Lcom/android/internal/os/KernelCpuProcStringReader;->mSize:I

    if-lez v0, :cond_15

    iget-object v0, p0, Lcom/android/internal/os/KernelCpuProcStringReader;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/internal/os/KernelCpuProcStringReader;->mLastReadTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1f4

    cmp-long v0, v0, v2

    if-gez v0, :cond_15

    const/4 v0, 0x1

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    :goto_16
    return v0
.end method

.method static blacklist getActiveTimeReaderInstance()Lcom/android/internal/os/KernelCpuProcStringReader;
    .registers 1

    .line 78
    sget-object v0, Lcom/android/internal/os/KernelCpuProcStringReader;->ACTIVE_TIME_READER:Lcom/android/internal/os/KernelCpuProcStringReader;

    return-object v0
.end method

.method static blacklist getClusterTimeReaderInstance()Lcom/android/internal/os/KernelCpuProcStringReader;
    .registers 1

    .line 82
    sget-object v0, Lcom/android/internal/os/KernelCpuProcStringReader;->CLUSTER_TIME_READER:Lcom/android/internal/os/KernelCpuProcStringReader;

    return-object v0
.end method

.method static blacklist getFreqTimeReaderInstance()Lcom/android/internal/os/KernelCpuProcStringReader;
    .registers 1

    .line 74
    sget-object v0, Lcom/android/internal/os/KernelCpuProcStringReader;->FREQ_TIME_READER:Lcom/android/internal/os/KernelCpuProcStringReader;

    return-object v0
.end method

.method static blacklist getUserSysTimeReaderInstance()Lcom/android/internal/os/KernelCpuProcStringReader;
    .registers 1

    .line 86
    sget-object v0, Lcom/android/internal/os/KernelCpuProcStringReader;->USER_SYS_TIME_READER:Lcom/android/internal/os/KernelCpuProcStringReader;

    return-object v0
.end method

.method private static blacklist isNumber(C)Z
    .registers 2

    .line 302
    const/16 v0, 0x30

    if-lt p0, v0, :cond_a

    const/16 v0, 0x39

    if-gt p0, v0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method


# virtual methods
.method public blacklist open()Lcom/android/internal/os/KernelCpuProcStringReader$ProcFileIterator;
    .registers 2

    .line 112
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/os/KernelCpuProcStringReader;->open(Z)Lcom/android/internal/os/KernelCpuProcStringReader$ProcFileIterator;

    move-result-object v0

    return-object v0
.end method

.method public blacklist open(Z)Lcom/android/internal/os/KernelCpuProcStringReader$ProcFileIterator;
    .registers 8

    .line 133
    iget v0, p0, Lcom/android/internal/os/KernelCpuProcStringReader;->mErrors:I

    const/4 v1, 0x5

    const/4 v2, 0x0

    if-lt v0, v1, :cond_7

    .line 134
    return-object v2

    .line 137
    :cond_7
    if-eqz p1, :cond_f

    .line 138
    iget-object p1, p0, Lcom/android/internal/os/KernelCpuProcStringReader;->mWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    goto :goto_44

    .line 140
    :cond_f
    iget-object p1, p0, Lcom/android/internal/os/KernelCpuProcStringReader;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 141
    invoke-direct {p0}, Lcom/android/internal/os/KernelCpuProcStringReader;->dataValid()Z

    move-result p1

    if-eqz p1, :cond_22

    .line 142
    new-instance p1, Lcom/android/internal/os/KernelCpuProcStringReader$ProcFileIterator;

    iget v0, p0, Lcom/android/internal/os/KernelCpuProcStringReader;->mSize:I

    invoke-direct {p1, p0, v0}, Lcom/android/internal/os/KernelCpuProcStringReader$ProcFileIterator;-><init>(Lcom/android/internal/os/KernelCpuProcStringReader;I)V

    return-object p1

    .line 144
    :cond_22
    iget-object p1, p0, Lcom/android/internal/os/KernelCpuProcStringReader;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 145
    iget-object p1, p0, Lcom/android/internal/os/KernelCpuProcStringReader;->mWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 146
    invoke-direct {p0}, Lcom/android/internal/os/KernelCpuProcStringReader;->dataValid()Z

    move-result p1

    if-eqz p1, :cond_44

    .line 148
    iget-object p1, p0, Lcom/android/internal/os/KernelCpuProcStringReader;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 149
    iget-object p1, p0, Lcom/android/internal/os/KernelCpuProcStringReader;->mWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 150
    new-instance p1, Lcom/android/internal/os/KernelCpuProcStringReader$ProcFileIterator;

    iget v0, p0, Lcom/android/internal/os/KernelCpuProcStringReader;->mSize:I

    invoke-direct {p1, p0, v0}, Lcom/android/internal/os/KernelCpuProcStringReader$ProcFileIterator;-><init>(Lcom/android/internal/os/KernelCpuProcStringReader;I)V

    return-object p1

    .line 155
    :cond_44
    :goto_44
    nop

    .line 157
    const/4 p1, 0x0

    iput p1, p0, Lcom/android/internal/os/KernelCpuProcStringReader;->mSize:I

    .line 158
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReadsMask()I

    move-result v0

    .line 159
    :try_start_4c
    iget-object v1, p0, Lcom/android/internal/os/KernelCpuProcStringReader;->mFile:Ljava/nio/file/Path;

    invoke-static {v1}, Ljava/nio/file/Files;->newBufferedReader(Ljava/nio/file/Path;)Ljava/io/BufferedReader;

    move-result-object v1
    :try_end_52
    .catch Ljava/io/FileNotFoundException; {:try_start_4c .. :try_end_52} :catch_108
    .catch Ljava/nio/file/NoSuchFileException; {:try_start_4c .. :try_end_52} :catch_108
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_52} :catch_e6
    .catchall {:try_start_4c .. :try_end_52} :catchall_e4

    .line 160
    :try_start_52
    iget-object v3, p0, Lcom/android/internal/os/KernelCpuProcStringReader;->mBuf:[C

    if-nez v3, :cond_5c

    .line 161
    const/16 v3, 0x400

    new-array v3, v3, [C

    iput-object v3, p0, Lcom/android/internal/os/KernelCpuProcStringReader;->mBuf:[C

    .line 163
    :cond_5c
    :goto_5c
    iget-object v3, p0, Lcom/android/internal/os/KernelCpuProcStringReader;->mBuf:[C

    iget-object v4, p0, Lcom/android/internal/os/KernelCpuProcStringReader;->mBuf:[C

    array-length v4, v4

    sub-int/2addr v4, p1

    invoke-virtual {v1, v3, p1, v4}, Ljava/io/BufferedReader;->read([CII)I

    move-result v3

    if-ltz v3, :cond_b6

    .line 164
    add-int/2addr p1, v3

    .line 165
    iget-object v3, p0, Lcom/android/internal/os/KernelCpuProcStringReader;->mBuf:[C

    array-length v3, v3

    if-ne p1, v3, :cond_5c

    .line 167
    iget-object v3, p0, Lcom/android/internal/os/KernelCpuProcStringReader;->mBuf:[C

    array-length v3, v3

    const/high16 v4, 0x100000

    if-ne v3, v4, :cond_a4

    .line 168
    iget p1, p0, Lcom/android/internal/os/KernelCpuProcStringReader;->mErrors:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/internal/os/KernelCpuProcStringReader;->mErrors:I

    .line 169
    sget-object p1, Lcom/android/internal/os/KernelCpuProcStringReader;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Proc file too large: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/os/KernelCpuProcStringReader;->mFile:Ljava/nio/file/Path;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_95
    .catchall {:try_start_52 .. :try_end_95} :catchall_d8

    .line 170
    nop

    .line 180
    if-eqz v1, :cond_9b

    :try_start_98
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_9b
    .catch Ljava/io/FileNotFoundException; {:try_start_98 .. :try_end_9b} :catch_108
    .catch Ljava/nio/file/NoSuchFileException; {:try_start_98 .. :try_end_9b} :catch_108
    .catch Ljava/io/IOException; {:try_start_98 .. :try_end_9b} :catch_e6
    .catchall {:try_start_98 .. :try_end_9b} :catchall_e4

    .line 187
    :cond_9b
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    .line 188
    iget-object p1, p0, Lcom/android/internal/os/KernelCpuProcStringReader;->mWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 170
    return-object v2

    .line 172
    :cond_a4
    :try_start_a4
    iget-object v3, p0, Lcom/android/internal/os/KernelCpuProcStringReader;->mBuf:[C

    iget-object v5, p0, Lcom/android/internal/os/KernelCpuProcStringReader;->mBuf:[C

    array-length v5, v5

    shl-int/lit8 v5, v5, 0x1

    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([CI)[C

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/os/KernelCpuProcStringReader;->mBuf:[C

    goto :goto_5c

    .line 175
    :cond_b6
    iput p1, p0, Lcom/android/internal/os/KernelCpuProcStringReader;->mSize:I

    .line 176
    iget-object v3, p0, Lcom/android/internal/os/KernelCpuProcStringReader;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v3}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/internal/os/KernelCpuProcStringReader;->mLastReadTime:J

    .line 178
    iget-object v3, p0, Lcom/android/internal/os/KernelCpuProcStringReader;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 179
    new-instance v3, Lcom/android/internal/os/KernelCpuProcStringReader$ProcFileIterator;

    invoke-direct {v3, p0, p1}, Lcom/android/internal/os/KernelCpuProcStringReader$ProcFileIterator;-><init>(Lcom/android/internal/os/KernelCpuProcStringReader;I)V
    :try_end_ca
    .catchall {:try_start_a4 .. :try_end_ca} :catchall_d8

    .line 180
    if-eqz v1, :cond_cf

    :try_start_cc
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_cf
    .catch Ljava/io/FileNotFoundException; {:try_start_cc .. :try_end_cf} :catch_108
    .catch Ljava/nio/file/NoSuchFileException; {:try_start_cc .. :try_end_cf} :catch_108
    .catch Ljava/io/IOException; {:try_start_cc .. :try_end_cf} :catch_e6
    .catchall {:try_start_cc .. :try_end_cf} :catchall_e4

    .line 187
    :cond_cf
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    .line 188
    iget-object p1, p0, Lcom/android/internal/os/KernelCpuProcStringReader;->mWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 179
    return-object v3

    .line 159
    :catchall_d8
    move-exception p1

    if-eqz v1, :cond_e3

    :try_start_db
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_de
    .catchall {:try_start_db .. :try_end_de} :catchall_df

    goto :goto_e3

    :catchall_df
    move-exception v1

    :try_start_e0
    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_e3
    :goto_e3
    throw p1
    :try_end_e4
    .catch Ljava/io/FileNotFoundException; {:try_start_e0 .. :try_end_e4} :catch_108
    .catch Ljava/nio/file/NoSuchFileException; {:try_start_e0 .. :try_end_e4} :catch_108
    .catch Ljava/io/IOException; {:try_start_e0 .. :try_end_e4} :catch_e6
    .catchall {:try_start_e0 .. :try_end_e4} :catchall_e4

    .line 187
    :catchall_e4
    move-exception p1

    goto :goto_133

    .line 183
    :catch_e6
    move-exception p1

    .line 184
    :try_start_e7
    iget v1, p0, Lcom/android/internal/os/KernelCpuProcStringReader;->mErrors:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/os/KernelCpuProcStringReader;->mErrors:I

    .line 185
    sget-object v1, Lcom/android/internal/os/KernelCpuProcStringReader;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error reading "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/os/KernelCpuProcStringReader;->mFile:Ljava/nio/file/Path;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_129

    .line 180
    :catch_108
    move-exception p1

    .line 181
    iget p1, p0, Lcom/android/internal/os/KernelCpuProcStringReader;->mErrors:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/internal/os/KernelCpuProcStringReader;->mErrors:I

    .line 182
    sget-object p1, Lcom/android/internal/os/KernelCpuProcStringReader;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "File not found. It\'s normal if not implemented: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/internal/os/KernelCpuProcStringReader;->mFile:Ljava/nio/file/Path;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_129
    .catchall {:try_start_e7 .. :try_end_129} :catchall_e4

    .line 187
    :goto_129
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    .line 188
    iget-object p1, p0, Lcom/android/internal/os/KernelCpuProcStringReader;->mWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 189
    nop

    .line 190
    return-object v2

    .line 187
    :goto_133
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    .line 188
    iget-object v0, p0, Lcom/android/internal/os/KernelCpuProcStringReader;->mWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 189
    throw p1
.end method
