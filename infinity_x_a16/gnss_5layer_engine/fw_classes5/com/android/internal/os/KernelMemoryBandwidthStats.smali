.class public Lcom/android/internal/os/KernelMemoryBandwidthStats;
.super Ljava/lang/Object;
.source "KernelMemoryBandwidthStats.java"


# static fields
.field private static final greylist-max-o DEBUG:Z = false

.field private static final greylist-max-o TAG:Ljava/lang/String; = "KernelMemoryBandwidthStats"

.field private static final greylist-max-o mSysfsFile:Ljava/lang/String; = "/sys/kernel/memory_state_time/show_stat"


# instance fields
.field protected final greylist-max-o mBandwidthEntries:Landroid/util/LongSparseLongArray;

.field private greylist-max-o mStatsDoNotExist:Z


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Landroid/util/LongSparseLongArray;

    invoke-direct {v0}, Landroid/util/LongSparseLongArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/KernelMemoryBandwidthStats;->mBandwidthEntries:Landroid/util/LongSparseLongArray;

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/os/KernelMemoryBandwidthStats;->mStatsDoNotExist:Z

    return-void
.end method


# virtual methods
.method public greylist-max-o getBandwidthEntries()Landroid/util/LongSparseLongArray;
    .registers 2

    .line 90
    iget-object v0, p0, Lcom/android/internal/os/KernelMemoryBandwidthStats;->mBandwidthEntries:Landroid/util/LongSparseLongArray;

    return-object v0
.end method

.method public greylist-max-o parseStats(Ljava/io/BufferedReader;)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 66
    new-instance v0, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 67
    iget-object v1, p0, Lcom/android/internal/os/KernelMemoryBandwidthStats;->mBandwidthEntries:Landroid/util/LongSparseLongArray;

    invoke-virtual {v1}, Landroid/util/LongSparseLongArray;->clear()V

    .line 68
    :goto_c
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_52

    .line 69
    invoke-virtual {v0, v1}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 70
    invoke-virtual {v0}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    .line 71
    const/4 v1, 0x0

    .line 74
    :cond_19
    iget-object v2, p0, Lcom/android/internal/os/KernelMemoryBandwidthStats;->mBandwidthEntries:Landroid/util/LongSparseLongArray;

    int-to-long v3, v1

    invoke-virtual {v2, v3, v4}, Landroid/util/LongSparseLongArray;->indexOfKey(J)I

    move-result v2

    const-wide/32 v5, 0xf4240

    if-ltz v2, :cond_3b

    .line 75
    iget-object v7, p0, Lcom/android/internal/os/KernelMemoryBandwidthStats;->mBandwidthEntries:Landroid/util/LongSparseLongArray;

    iget-object v8, p0, Lcom/android/internal/os/KernelMemoryBandwidthStats;->mBandwidthEntries:Landroid/util/LongSparseLongArray;

    invoke-virtual {v8, v2}, Landroid/util/LongSparseLongArray;->valueAt(I)J

    move-result-wide v8

    .line 76
    invoke-virtual {v0}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    div-long/2addr v10, v5

    add-long/2addr v8, v10

    .line 75
    invoke-virtual {v7, v3, v4, v8, v9}, Landroid/util/LongSparseLongArray;->put(JJ)V

    goto :goto_49

    .line 78
    :cond_3b
    iget-object v2, p0, Lcom/android/internal/os/KernelMemoryBandwidthStats;->mBandwidthEntries:Landroid/util/LongSparseLongArray;

    invoke-virtual {v0}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    div-long/2addr v7, v5

    invoke-virtual {v2, v3, v4, v7, v8}, Landroid/util/LongSparseLongArray;->put(JJ)V

    .line 84
    :goto_49
    add-int/lit8 v1, v1, 0x1

    .line 85
    invoke-virtual {v0}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v2

    if-nez v2, :cond_19

    .line 86
    goto :goto_c

    .line 87
    :cond_52
    return-void
.end method

.method public greylist-max-o updateStats()V
    .registers 8

    .line 36
    const-string v0, "KernelMemoryBandwidthStats"

    iget-boolean v1, p0, Lcom/android/internal/os/KernelMemoryBandwidthStats;->mStatsDoNotExist:Z

    if-eqz v1, :cond_7

    .line 38
    return-void

    .line 41
    :cond_7
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 43
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v3

    .line 44
    :try_start_f
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    const-string v6, "/sys/kernel/memory_state_time/show_stat"

    invoke-direct {v5, v6}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1b
    .catch Ljava/io/FileNotFoundException; {:try_start_f .. :try_end_1b} :catch_4f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_1b} :catch_2e
    .catchall {:try_start_f .. :try_end_1b} :catchall_2c

    .line 45
    :try_start_1b
    invoke-virtual {p0, v4}, Lcom/android/internal/os/KernelMemoryBandwidthStats;->parseStats(Ljava/io/BufferedReader;)V
    :try_end_1e
    .catchall {:try_start_1b .. :try_end_1e} :catchall_22

    .line 46
    :try_start_1e
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_21
    .catch Ljava/io/FileNotFoundException; {:try_start_1e .. :try_end_21} :catch_4f
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_21} :catch_2e
    .catchall {:try_start_1e .. :try_end_21} :catchall_2c

    goto :goto_5d

    .line 44
    :catchall_22
    move-exception v5

    :try_start_23
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_27

    goto :goto_2b

    :catchall_27
    move-exception v4

    :try_start_28
    invoke-virtual {v5, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2b
    throw v5
    :try_end_2c
    .catch Ljava/io/FileNotFoundException; {:try_start_28 .. :try_end_2c} :catch_4f
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_2c} :catch_2e
    .catchall {:try_start_28 .. :try_end_2c} :catchall_2c

    .line 54
    :catchall_2c
    move-exception v0

    goto :goto_89

    .line 50
    :catch_2e
    move-exception v4

    .line 51
    :try_start_2f
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to read memory bandwidth: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    iget-object v4, p0, Lcom/android/internal/os/KernelMemoryBandwidthStats;->mBandwidthEntries:Landroid/util/LongSparseLongArray;

    invoke-virtual {v4}, Landroid/util/LongSparseLongArray;->clear()V

    goto :goto_5d

    .line 46
    :catch_4f
    move-exception v4

    .line 47
    const-string v4, "No kernel memory bandwidth stats available"

    invoke-static {v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    iget-object v4, p0, Lcom/android/internal/os/KernelMemoryBandwidthStats;->mBandwidthEntries:Landroid/util/LongSparseLongArray;

    invoke-virtual {v4}, Landroid/util/LongSparseLongArray;->clear()V

    .line 49
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/internal/os/KernelMemoryBandwidthStats;->mStatsDoNotExist:Z
    :try_end_5d
    .catchall {:try_start_2f .. :try_end_5d} :catchall_2c

    .line 54
    :goto_5d
    invoke-static {v3}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 55
    nop

    .line 57
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    .line 58
    const-wide/16 v1, 0x64

    cmp-long v1, v3, v1

    if-lez v1, :cond_88

    .line 59
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reading memory bandwidth file took "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    :cond_88
    return-void

    .line 54
    :goto_89
    invoke-static {v3}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 55
    throw v0
.end method
