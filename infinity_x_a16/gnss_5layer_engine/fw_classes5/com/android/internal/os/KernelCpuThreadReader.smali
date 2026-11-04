.class public Lcom/android/internal/os/KernelCpuThreadReader;
.super Ljava/lang/Object;
.source "KernelCpuThreadReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/KernelCpuThreadReader$Injector;,
        Lcom/android/internal/os/KernelCpuThreadReader$ProcessCpuUsage;,
        Lcom/android/internal/os/KernelCpuThreadReader$FrequencyBucketCreator;,
        Lcom/android/internal/os/KernelCpuThreadReader$ThreadCpuUsage;
    }
.end annotation


# static fields
.field private static final blacklist CPU_STATISTICS_FILENAME:Ljava/lang/String; = "time_in_state"

.field private static final blacklist DEBUG:Z = false

.field private static final blacklist DEFAULT_INITIAL_TIME_IN_STATE_PATH:Ljava/nio/file/Path;

.field private static final blacklist DEFAULT_PROCESS_NAME:Ljava/lang/String; = "unknown_process"

.field private static final blacklist DEFAULT_PROC_PATH:Ljava/nio/file/Path;

.field private static final blacklist DEFAULT_THREAD_NAME:Ljava/lang/String; = "unknown_thread"

.field private static final blacklist ID_ERROR:I = -0x1

.field private static final blacklist PROCESS_DIRECTORY_FILTER:Ljava/lang/String; = "[0-9]*"

.field private static final blacklist PROCESS_NAME_FILENAME:Ljava/lang/String; = "cmdline"

.field private static final blacklist TAG:Ljava/lang/String; = "KernelCpuThreadReader"

.field private static final blacklist THREAD_NAME_FILENAME:Ljava/lang/String; = "comm"


# instance fields
.field private blacklist mFrequenciesKhz:[I

.field private blacklist mFrequencyBucketCreator:Lcom/android/internal/os/KernelCpuThreadReader$FrequencyBucketCreator;

.field private final blacklist mInjector:Lcom/android/internal/os/KernelCpuThreadReader$Injector;

.field private final blacklist mProcPath:Ljava/nio/file/Path;

.field private final blacklist mProcTimeInStateReader:Lcom/android/internal/os/ProcTimeInStateReader;

.field private blacklist mUidPredicate:Ljava/util/function/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Predicate<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 89
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "/proc"

    invoke-static {v1, v0}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    sput-object v0, Lcom/android/internal/os/KernelCpuThreadReader;->DEFAULT_PROC_PATH:Ljava/nio/file/Path;

    .line 92
    sget-object v0, Lcom/android/internal/os/KernelCpuThreadReader;->DEFAULT_PROC_PATH:Ljava/nio/file/Path;

    .line 93
    const-string v1, "self/time_in_state"

    invoke-interface {v0, v1}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    sput-object v0, Lcom/android/internal/os/KernelCpuThreadReader;->DEFAULT_INITIAL_TIME_IN_STATE_PATH:Ljava/nio/file/Path;

    .line 92
    return-void
.end method

.method public constructor blacklist <init>(ILjava/util/function/Predicate;Ljava/nio/file/Path;Ljava/nio/file/Path;Lcom/android/internal/os/KernelCpuThreadReader$Injector;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/function/Predicate<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/nio/file/Path;",
            "Ljava/nio/file/Path;",
            "Lcom/android/internal/os/KernelCpuThreadReader$Injector;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    iput-object p2, p0, Lcom/android/internal/os/KernelCpuThreadReader;->mUidPredicate:Ljava/util/function/Predicate;

    .line 137
    iput-object p3, p0, Lcom/android/internal/os/KernelCpuThreadReader;->mProcPath:Ljava/nio/file/Path;

    .line 138
    new-instance p2, Lcom/android/internal/os/ProcTimeInStateReader;

    invoke-direct {p2, p4}, Lcom/android/internal/os/ProcTimeInStateReader;-><init>(Ljava/nio/file/Path;)V

    iput-object p2, p0, Lcom/android/internal/os/KernelCpuThreadReader;->mProcTimeInStateReader:Lcom/android/internal/os/ProcTimeInStateReader;

    .line 139
    iput-object p5, p0, Lcom/android/internal/os/KernelCpuThreadReader;->mInjector:Lcom/android/internal/os/KernelCpuThreadReader$Injector;

    .line 140
    invoke-virtual {p0, p1}, Lcom/android/internal/os/KernelCpuThreadReader;->setNumBuckets(I)V

    .line 141
    return-void
.end method

.method public static blacklist create(ILjava/util/function/Predicate;)Lcom/android/internal/os/KernelCpuThreadReader;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/function/Predicate<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/android/internal/os/KernelCpuThreadReader;"
        }
    .end annotation

    .line 151
    :try_start_0
    new-instance v0, Lcom/android/internal/os/KernelCpuThreadReader;

    sget-object v3, Lcom/android/internal/os/KernelCpuThreadReader;->DEFAULT_PROC_PATH:Ljava/nio/file/Path;

    sget-object v4, Lcom/android/internal/os/KernelCpuThreadReader;->DEFAULT_INITIAL_TIME_IN_STATE_PATH:Ljava/nio/file/Path;

    new-instance v5, Lcom/android/internal/os/KernelCpuThreadReader$Injector;

    invoke-direct {v5}, Lcom/android/internal/os/KernelCpuThreadReader$Injector;-><init>()V

    move v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/os/KernelCpuThreadReader;-><init>(ILjava/util/function/Predicate;Ljava/nio/file/Path;Ljava/nio/file/Path;Lcom/android/internal/os/KernelCpuThreadReader$Injector;)V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_10} :catch_11

    return-object v0

    .line 157
    :catch_11
    move-exception v0

    move-object p0, v0

    .line 158
    const-string p1, "KernelCpuThreadReader"

    const-string v0, "Failed to initialize KernelCpuThreadReader"

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 159
    const/4 p0, 0x0

    return-object p0
.end method

.method private blacklist getProcessCpuUsage(Ljava/nio/file/Path;II)Lcom/android/internal/os/KernelCpuThreadReader$ProcessCpuUsage;
    .registers 9

    .line 274
    const-string v0, "task"

    invoke-interface {p1, v0}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    .line 275
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 276
    const/4 v2, 0x0

    :try_start_c
    invoke-static {v0}, Ljava/nio/file/Files;->newDirectoryStream(Ljava/nio/file/Path;)Ljava/nio/file/DirectoryStream;

    move-result-object v0
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_10} :catch_4e
    .catch Ljava/nio/file/DirectoryIteratorException; {:try_start_c .. :try_end_10} :catch_4e

    .line 277
    :try_start_10
    invoke-interface {v0}, Ljava/nio/file/DirectoryStream;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_14
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/nio/file/Path;

    .line 278
    invoke-direct {p0, v4}, Lcom/android/internal/os/KernelCpuThreadReader;->getThreadCpuUsage(Ljava/nio/file/Path;)Lcom/android/internal/os/KernelCpuThreadReader$ThreadCpuUsage;

    move-result-object v4

    .line 279
    if-nez v4, :cond_27

    .line 280
    goto :goto_14

    .line 282
    :cond_27
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2a
    .catchall {:try_start_10 .. :try_end_2a} :catchall_42

    .line 283
    goto :goto_14

    .line 284
    :cond_2b
    if-eqz v0, :cond_30

    :try_start_2d
    invoke-interface {v0}, Ljava/nio/file/DirectoryStream;->close()V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_30} :catch_4e
    .catch Ljava/nio/file/DirectoryIteratorException; {:try_start_2d .. :try_end_30} :catch_4e

    .line 287
    :cond_30
    nop

    .line 290
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 291
    return-object v2

    .line 296
    :cond_38
    new-instance v0, Lcom/android/internal/os/KernelCpuThreadReader$ProcessCpuUsage;

    invoke-direct {p0, p1}, Lcom/android/internal/os/KernelCpuThreadReader;->getProcessName(Ljava/nio/file/Path;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p2, p1, p3, v1}, Lcom/android/internal/os/KernelCpuThreadReader$ProcessCpuUsage;-><init>(ILjava/lang/String;ILjava/util/ArrayList;)V

    return-object v0

    .line 276
    :catchall_42
    move-exception p1

    if-eqz v0, :cond_4d

    :try_start_45
    invoke-interface {v0}, Ljava/nio/file/DirectoryStream;->close()V
    :try_end_48
    .catchall {:try_start_45 .. :try_end_48} :catchall_49

    goto :goto_4d

    :catchall_49
    move-exception p2

    :try_start_4a
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4d
    :goto_4d
    throw p1
    :try_end_4e
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_4e} :catch_4e
    .catch Ljava/nio/file/DirectoryIteratorException; {:try_start_4a .. :try_end_4e} :catch_4e

    .line 284
    :catch_4e
    move-exception p1

    .line 286
    return-object v2
.end method

.method private blacklist getProcessId(Ljava/nio/file/Path;)I
    .registers 5

    .line 367
    invoke-interface {p1}, Ljava/nio/file/Path;->getFileName()Ljava/nio/file/Path;

    move-result-object p1

    invoke-interface {p1}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object p1

    .line 369
    :try_start_8
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_c
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_c} :catch_d

    return p1

    .line 370
    :catch_d
    move-exception v0

    .line 371
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to parse "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " as process ID"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "KernelCpuThreadReader"

    invoke-static {v1, p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 372
    const/4 p1, -0x1

    return p1
.end method

.method private blacklist getProcessName(Ljava/nio/file/Path;)Ljava/lang/String;
    .registers 3

    .line 341
    const-string v0, "cmdline"

    invoke-interface {p1, v0}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p1

    .line 343
    invoke-interface {p1}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/os/ProcStatsUtil;->readSingleLineProcFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 344
    if-eqz p1, :cond_11

    .line 345
    return-object p1

    .line 347
    :cond_11
    const-string p1, "unknown_process"

    return-object p1
.end method

.method private blacklist getThreadCpuUsage(Ljava/nio/file/Path;)Lcom/android/internal/os/KernelCpuThreadReader$ThreadCpuUsage;
    .registers 8

    .line 311
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {p1}, Ljava/nio/file/Path;->getFileName()Ljava/nio/file/Path;

    move-result-object v1

    invoke-interface {v1}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v1

    .line 312
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_d
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_d} :catch_42

    .line 316
    nop

    .line 319
    invoke-direct {p0, p1}, Lcom/android/internal/os/KernelCpuThreadReader;->getThreadName(Ljava/nio/file/Path;)Ljava/lang/String;

    move-result-object v2

    .line 322
    const-string v3, "time_in_state"

    invoke-interface {p1, v3}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p1

    .line 323
    iget-object v3, p0, Lcom/android/internal/os/KernelCpuThreadReader;->mProcTimeInStateReader:Lcom/android/internal/os/ProcTimeInStateReader;

    invoke-virtual {v3, p1}, Lcom/android/internal/os/ProcTimeInStateReader;->getUsageTimesMillis(Ljava/nio/file/Path;)[J

    move-result-object p1

    .line 324
    if-nez p1, :cond_21

    .line 325
    return-object v0

    .line 328
    :cond_21
    iget-object v0, p0, Lcom/android/internal/os/KernelCpuThreadReader;->mFrequencyBucketCreator:Lcom/android/internal/os/KernelCpuThreadReader$FrequencyBucketCreator;

    if-eqz v0, :cond_2c

    .line 329
    iget-object v0, p0, Lcom/android/internal/os/KernelCpuThreadReader;->mFrequencyBucketCreator:Lcom/android/internal/os/KernelCpuThreadReader$FrequencyBucketCreator;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/KernelCpuThreadReader$FrequencyBucketCreator;->bucketValues([J)[I

    move-result-object p1

    goto :goto_3c

    .line 331
    :cond_2c
    array-length v0, p1

    new-array v0, v0, [I

    .line 332
    const/4 v3, 0x0

    :goto_30
    array-length v4, p1

    if-ge v3, v4, :cond_3b

    .line 333
    aget-wide v4, p1, v3

    long-to-int v4, v4

    aput v4, v0, v3

    .line 332
    add-int/lit8 v3, v3, 0x1

    goto :goto_30

    :cond_3b
    move-object p1, v0

    .line 336
    :goto_3c
    new-instance v0, Lcom/android/internal/os/KernelCpuThreadReader$ThreadCpuUsage;

    invoke-direct {v0, v1, v2, p1}, Lcom/android/internal/os/KernelCpuThreadReader$ThreadCpuUsage;-><init>(ILjava/lang/String;[I)V

    return-object v0

    .line 313
    :catch_42
    move-exception p1

    .line 314
    const-string v1, "KernelCpuThreadReader"

    const-string v2, "Failed to parse thread ID when iterating over /proc/*/task"

    invoke-static {v1, v2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 315
    return-object v0
.end method

.method private blacklist getThreadName(Ljava/nio/file/Path;)Ljava/lang/String;
    .registers 3

    .line 352
    const-string v0, "comm"

    invoke-interface {p1, v0}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p1

    .line 353
    invoke-interface {p1}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/os/ProcStatsUtil;->readNullSeparatedFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 354
    if-nez p1, :cond_13

    .line 355
    const-string p1, "unknown_thread"

    return-object p1

    .line 357
    :cond_13
    return-object p1
.end method


# virtual methods
.method public blacklist getCpuFrequenciesKhz()[I
    .registers 2

    .line 223
    iget-object v0, p0, Lcom/android/internal/os/KernelCpuThreadReader;->mFrequenciesKhz:[I

    return-object v0
.end method

.method public blacklist getProcessCpuUsage()Ljava/util/ArrayList;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/os/KernelCpuThreadReader$ProcessCpuUsage;",
            ">;"
        }
    .end annotation

    .line 180
    const-string v0, "KernelCpuThreadReader"

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 182
    const/4 v2, 0x0

    :try_start_8
    iget-object v3, p0, Lcom/android/internal/os/KernelCpuThreadReader;->mProcPath:Ljava/nio/file/Path;

    const-string v4, "[0-9]*"

    .line 183
    invoke-static {v3, v4}, Ljava/nio/file/Files;->newDirectoryStream(Ljava/nio/file/Path;Ljava/lang/String;)Ljava/nio/file/DirectoryStream;

    move-result-object v3
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_10} :catch_67

    .line 184
    :try_start_10
    invoke-interface {v3}, Ljava/nio/file/DirectoryStream;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_14
    :goto_14
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_48

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/nio/file/Path;

    .line 185
    invoke-direct {p0, v5}, Lcom/android/internal/os/KernelCpuThreadReader;->getProcessId(Ljava/nio/file/Path;)I

    move-result v6

    .line 186
    iget-object v7, p0, Lcom/android/internal/os/KernelCpuThreadReader;->mInjector:Lcom/android/internal/os/KernelCpuThreadReader$Injector;

    invoke-virtual {v7, v6}, Lcom/android/internal/os/KernelCpuThreadReader$Injector;->getUidForPid(I)I

    move-result v7

    .line 187
    const/4 v8, -0x1

    if-eq v7, v8, :cond_14

    if-ne v6, v8, :cond_30

    .line 188
    goto :goto_14

    .line 190
    :cond_30
    iget-object v8, p0, Lcom/android/internal/os/KernelCpuThreadReader;->mUidPredicate:Ljava/util/function/Predicate;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3d

    .line 191
    goto :goto_14

    .line 194
    :cond_3d
    nop

    .line 195
    invoke-direct {p0, v5, v6, v7}, Lcom/android/internal/os/KernelCpuThreadReader;->getProcessCpuUsage(Ljava/nio/file/Path;II)Lcom/android/internal/os/KernelCpuThreadReader$ProcessCpuUsage;

    move-result-object v5

    .line 196
    if-eqz v5, :cond_47

    .line 197
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_47
    .catchall {:try_start_10 .. :try_end_47} :catchall_5b

    .line 199
    :cond_47
    goto :goto_14

    .line 200
    :cond_48
    if-eqz v3, :cond_4d

    :try_start_4a
    invoke-interface {v3}, Ljava/nio/file/DirectoryStream;->close()V
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_4d} :catch_67

    .line 203
    :cond_4d
    nop

    .line 205
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_5a

    .line 206
    const-string v1, "Didn\'t successfully get any process CPU information for UIDs specified"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    return-object v2

    .line 214
    :cond_5a
    return-object v1

    .line 182
    :catchall_5b
    move-exception v1

    if-eqz v3, :cond_66

    :try_start_5e
    invoke-interface {v3}, Ljava/nio/file/DirectoryStream;->close()V
    :try_end_61
    .catchall {:try_start_5e .. :try_end_61} :catchall_62

    goto :goto_66

    :catchall_62
    move-exception v3

    :try_start_63
    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_66
    :goto_66
    throw v1
    :try_end_67
    .catch Ljava/io/IOException; {:try_start_63 .. :try_end_67} :catch_67

    .line 200
    :catch_67
    move-exception v1

    .line 201
    const-string v3, "Failed to iterate over process paths"

    invoke-static {v0, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 202
    return-object v2
.end method

.method blacklist setNumBuckets(I)V
    .registers 6

    .line 229
    iget-object v0, p0, Lcom/android/internal/os/KernelCpuThreadReader;->mFrequenciesKhz:[I

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/internal/os/KernelCpuThreadReader;->mFrequenciesKhz:[I

    array-length v0, v0

    if-ne v0, p1, :cond_a

    .line 230
    return-void

    .line 233
    :cond_a
    iget-object v0, p0, Lcom/android/internal/os/KernelCpuThreadReader;->mProcTimeInStateReader:Lcom/android/internal/os/ProcTimeInStateReader;

    invoke-virtual {v0}, Lcom/android/internal/os/ProcTimeInStateReader;->getFrequenciesKhz()[J

    move-result-object v0

    .line 234
    if-eqz p1, :cond_22

    .line 235
    new-instance v1, Lcom/android/internal/os/KernelCpuThreadReader$FrequencyBucketCreator;

    invoke-direct {v1, v0, p1}, Lcom/android/internal/os/KernelCpuThreadReader$FrequencyBucketCreator;-><init>([JI)V

    iput-object v1, p0, Lcom/android/internal/os/KernelCpuThreadReader;->mFrequencyBucketCreator:Lcom/android/internal/os/KernelCpuThreadReader$FrequencyBucketCreator;

    .line 236
    iget-object p1, p0, Lcom/android/internal/os/KernelCpuThreadReader;->mFrequencyBucketCreator:Lcom/android/internal/os/KernelCpuThreadReader$FrequencyBucketCreator;

    invoke-virtual {p1, v0}, Lcom/android/internal/os/KernelCpuThreadReader$FrequencyBucketCreator;->bucketFrequencies([J)[I

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/os/KernelCpuThreadReader;->mFrequenciesKhz:[I

    goto :goto_38

    .line 238
    :cond_22
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/internal/os/KernelCpuThreadReader;->mFrequencyBucketCreator:Lcom/android/internal/os/KernelCpuThreadReader$FrequencyBucketCreator;

    .line 239
    array-length p1, v0

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/android/internal/os/KernelCpuThreadReader;->mFrequenciesKhz:[I

    .line 240
    const/4 p1, 0x0

    :goto_2b
    array-length v1, v0

    if-ge p1, v1, :cond_38

    .line 241
    iget-object v1, p0, Lcom/android/internal/os/KernelCpuThreadReader;->mFrequenciesKhz:[I

    aget-wide v2, v0, p1

    long-to-int v2, v2

    aput v2, v1, p1

    .line 240
    add-int/lit8 p1, p1, 0x1

    goto :goto_2b

    .line 244
    :cond_38
    :goto_38
    return-void
.end method

.method public blacklist setUidPredicate(Ljava/util/function/Predicate;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 249
    iput-object p1, p0, Lcom/android/internal/os/KernelCpuThreadReader;->mUidPredicate:Ljava/util/function/Predicate;

    .line 250
    return-void
.end method
