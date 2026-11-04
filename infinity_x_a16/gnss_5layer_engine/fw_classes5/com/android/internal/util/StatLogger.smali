.class public Lcom/android/internal/util/StatLogger;
.super Ljava/lang/Object;
.source "StatLogger.java"


# static fields
.field private static final greylist-max-o TAG:Ljava/lang/String; = "StatLogger"


# instance fields
.field private final greylist-max-o SIZE:I

.field private final greylist-max-o mCallsPerSecond:[I

.field private final greylist-max-o mCountStats:[I

.field private final greylist-max-o mDurationPerSecond:[J

.field private final greylist-max-o mDurationStats:[J

.field private final greylist-max-o mLabels:[Ljava/lang/String;

.field private final greylist-max-o mLock:Ljava/lang/Object;

.field private final greylist-max-o mMaxCallsPerSecond:[I

.field private final greylist-max-o mMaxDurationPerSecond:[J

.field private final greylist-max-o mMaxDurationStats:[J

.field private greylist-max-o mNextTickTime:J

.field private final blacklist mStatsTag:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;[Ljava/lang/String;)V
    .registers 7

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/util/StatLogger;->mLock:Ljava/lang/Object;

    .line 65
    nop

    .line 66
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/util/StatLogger;->mNextTickTime:J

    .line 76
    iput-object p1, p0, Lcom/android/internal/util/StatLogger;->mStatsTag:Ljava/lang/String;

    .line 77
    array-length p1, p2

    iput p1, p0, Lcom/android/internal/util/StatLogger;->SIZE:I

    .line 78
    iget p1, p0, Lcom/android/internal/util/StatLogger;->SIZE:I

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/android/internal/util/StatLogger;->mCountStats:[I

    .line 79
    iget p1, p0, Lcom/android/internal/util/StatLogger;->SIZE:I

    new-array p1, p1, [J

    iput-object p1, p0, Lcom/android/internal/util/StatLogger;->mDurationStats:[J

    .line 80
    iget p1, p0, Lcom/android/internal/util/StatLogger;->SIZE:I

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/android/internal/util/StatLogger;->mCallsPerSecond:[I

    .line 81
    iget p1, p0, Lcom/android/internal/util/StatLogger;->SIZE:I

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/android/internal/util/StatLogger;->mMaxCallsPerSecond:[I

    .line 82
    iget p1, p0, Lcom/android/internal/util/StatLogger;->SIZE:I

    new-array p1, p1, [J

    iput-object p1, p0, Lcom/android/internal/util/StatLogger;->mDurationPerSecond:[J

    .line 83
    iget p1, p0, Lcom/android/internal/util/StatLogger;->SIZE:I

    new-array p1, p1, [J

    iput-object p1, p0, Lcom/android/internal/util/StatLogger;->mMaxDurationPerSecond:[J

    .line 84
    iget p1, p0, Lcom/android/internal/util/StatLogger;->SIZE:I

    new-array p1, p1, [J

    iput-object p1, p0, Lcom/android/internal/util/StatLogger;->mMaxDurationStats:[J

    .line 85
    iput-object p2, p0, Lcom/android/internal/util/StatLogger;->mLabels:[Ljava/lang/String;

    .line 86
    return-void
.end method

.method public constructor greylist-max-o <init>([Ljava/lang/String;)V
    .registers 3

    .line 72
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/android/internal/util/StatLogger;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    .line 73
    return-void
.end method


# virtual methods
.method public blacklist dump(Landroid/util/IndentingPrintWriter;)V
    .registers 20

    .line 144
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/android/internal/util/StatLogger;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 145
    :try_start_7
    iget-object v3, v0, Lcom/android/internal/util/StatLogger;->mStatsTag:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_28

    .line 146
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v0, Lcom/android/internal/util/StatLogger;->mStatsTag:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2d

    .line 148
    :cond_28
    const-string v3, "Stats:"

    invoke-virtual {v1, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 150
    :goto_2d
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 151
    const/4 v3, 0x0

    :goto_31
    iget v4, v0, Lcom/android/internal/util/StatLogger;->SIZE:I

    if-ge v3, v4, :cond_88

    .line 152
    iget-object v4, v0, Lcom/android/internal/util/StatLogger;->mCountStats:[I

    aget v4, v4, v3

    .line 153
    iget-object v5, v0, Lcom/android/internal/util/StatLogger;->mDurationStats:[J

    aget-wide v5, v5, v3

    long-to-double v5, v5

    const-wide v7, 0x408f400000000000L    # 1000.0

    div-double/2addr v5, v7

    .line 155
    const-string v9, "%s: count=%d, total=%.1fms, avg=%.3fms, max calls/s=%d max dur/s=%.1fms max time=%.1fms"

    iget-object v10, v0, Lcom/android/internal/util/StatLogger;->mLabels:[Ljava/lang/String;

    aget-object v11, v10, v3

    .line 158
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v13

    .line 159
    if-nez v4, :cond_57

    const-wide/16 v4, 0x0

    goto :goto_5a

    :cond_57
    int-to-double v14, v4

    div-double v4, v5, v14

    :goto_5a
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v14

    iget-object v4, v0, Lcom/android/internal/util/StatLogger;->mMaxCallsPerSecond:[I

    aget v4, v4, v3

    .line 160
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    iget-object v4, v0, Lcom/android/internal/util/StatLogger;->mMaxDurationPerSecond:[J

    aget-wide v4, v4, v3

    long-to-double v4, v4

    div-double/2addr v4, v7

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v16

    iget-object v4, v0, Lcom/android/internal/util/StatLogger;->mMaxDurationStats:[J

    aget-wide v4, v4, v3

    long-to-double v4, v4

    div-double/2addr v4, v7

    .line 161
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v17

    filled-new-array/range {v11 .. v17}, [Ljava/lang/Object;

    move-result-object v4

    .line 155
    invoke-static {v9, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 151
    add-int/lit8 v3, v3, 0x1

    goto :goto_31

    .line 163
    :cond_88
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 164
    monitor-exit v2

    .line 165
    return-void

    .line 164
    :catchall_8d
    move-exception v0

    monitor-exit v2
    :try_end_8f
    .catchall {:try_start_7 .. :try_end_8f} :catchall_8d

    throw v0
.end method

.method public greylist-max-o dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 5

    .line 140
    new-instance v0, Landroid/util/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p1, v1}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/util/IndentingPrintWriter;->setIndent(Ljava/lang/String;)Landroid/util/IndentingPrintWriter;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/util/StatLogger;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 141
    return-void
.end method

.method public greylist-max-o dumpProto(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 12

    .line 168
    iget-object v0, p0, Lcom/android/internal/util/StatLogger;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 169
    :try_start_3
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    .line 171
    const/4 v1, 0x0

    :goto_8
    iget-object v2, p0, Lcom/android/internal/util/StatLogger;->mLabels:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_6c

    .line 172
    const-wide v2, 0x20b00000001L

    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    .line 174
    const-wide v4, 0x10500000001L

    invoke-virtual {p1, v4, v5, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 175
    iget-object v4, p0, Lcom/android/internal/util/StatLogger;->mLabels:[Ljava/lang/String;

    aget-object v4, v4, v1

    const-wide v5, 0x10900000002L

    invoke-virtual {p1, v5, v6, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 176
    iget-object v4, p0, Lcom/android/internal/util/StatLogger;->mCountStats:[I

    aget v4, v4, v1

    const-wide v5, 0x10500000003L

    invoke-virtual {p1, v5, v6, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 177
    iget-object v4, p0, Lcom/android/internal/util/StatLogger;->mDurationStats:[J

    aget-wide v4, v4, v1

    const-wide v6, 0x10300000004L

    invoke-virtual {p1, v6, v7, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 178
    iget-object v4, p0, Lcom/android/internal/util/StatLogger;->mMaxCallsPerSecond:[I

    aget v4, v4, v1

    const-wide v5, 0x10500000005L

    invoke-virtual {p1, v5, v6, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 179
    iget-object v4, p0, Lcom/android/internal/util/StatLogger;->mMaxDurationPerSecond:[J

    aget-wide v4, v4, v1

    const-wide v6, 0x10300000006L

    invoke-virtual {p1, v6, v7, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 180
    iget-object v4, p0, Lcom/android/internal/util/StatLogger;->mMaxDurationStats:[J

    aget-wide v4, v4, v1

    const-wide v6, 0x10300000007L

    invoke-virtual {p1, v6, v7, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 182
    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 171
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 185
    :cond_6c
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 186
    monitor-exit v0

    .line 187
    return-void

    .line 186
    :catchall_71
    move-exception p1

    monitor-exit v0
    :try_end_73
    .catchall {:try_start_3 .. :try_end_73} :catchall_71

    throw p1
.end method

.method public greylist-max-o getTime()J
    .registers 5

    .line 94
    invoke-static {}, Landroid/os/SystemClock;->uptimeNanos()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public greylist-max-o logDurationStat(IJ)J
    .registers 11

    .line 103
    iget-object v0, p0, Lcom/android/internal/util/StatLogger;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 104
    :try_start_3
    invoke-virtual {p0}, Lcom/android/internal/util/StatLogger;->getTime()J

    move-result-wide v1

    sub-long/2addr v1, p2

    .line 105
    if-ltz p1, :cond_7a

    iget p2, p0, Lcom/android/internal/util/StatLogger;->SIZE:I

    if-ge p1, p2, :cond_7a

    .line 106
    iget-object p2, p0, Lcom/android/internal/util/StatLogger;->mCountStats:[I

    aget p3, p2, p1

    add-int/lit8 p3, p3, 0x1

    aput p3, p2, p1

    .line 107
    iget-object p2, p0, Lcom/android/internal/util/StatLogger;->mDurationStats:[J

    aget-wide v3, p2, p1

    add-long/2addr v3, v1

    aput-wide v3, p2, p1

    .line 112
    iget-object p2, p0, Lcom/android/internal/util/StatLogger;->mMaxDurationStats:[J

    aget-wide p2, p2, p1

    cmp-long p2, p2, v1

    if-gez p2, :cond_29

    .line 113
    iget-object p2, p0, Lcom/android/internal/util/StatLogger;->mMaxDurationStats:[J

    aput-wide v1, p2, p1

    .line 117
    :cond_29
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p2

    .line 118
    iget-wide v3, p0, Lcom/android/internal/util/StatLogger;->mNextTickTime:J

    cmp-long v3, p2, v3

    if-lez v3, :cond_69

    .line 119
    iget-object v3, p0, Lcom/android/internal/util/StatLogger;->mMaxCallsPerSecond:[I

    aget v3, v3, p1

    iget-object v4, p0, Lcom/android/internal/util/StatLogger;->mCallsPerSecond:[I

    aget v4, v4, p1

    if-ge v3, v4, :cond_45

    .line 120
    iget-object v3, p0, Lcom/android/internal/util/StatLogger;->mMaxCallsPerSecond:[I

    iget-object v4, p0, Lcom/android/internal/util/StatLogger;->mCallsPerSecond:[I

    aget v4, v4, p1

    aput v4, v3, p1

    .line 122
    :cond_45
    iget-object v3, p0, Lcom/android/internal/util/StatLogger;->mMaxDurationPerSecond:[J

    aget-wide v3, v3, p1

    iget-object v5, p0, Lcom/android/internal/util/StatLogger;->mDurationPerSecond:[J

    aget-wide v5, v5, p1

    cmp-long v3, v3, v5

    if-gez v3, :cond_59

    .line 123
    iget-object v3, p0, Lcom/android/internal/util/StatLogger;->mMaxDurationPerSecond:[J

    iget-object v4, p0, Lcom/android/internal/util/StatLogger;->mDurationPerSecond:[J

    aget-wide v4, v4, p1

    aput-wide v4, v3, p1

    .line 126
    :cond_59
    iget-object v3, p0, Lcom/android/internal/util/StatLogger;->mCallsPerSecond:[I

    const/4 v4, 0x0

    aput v4, v3, p1

    .line 127
    iget-object v3, p0, Lcom/android/internal/util/StatLogger;->mDurationPerSecond:[J

    const-wide/16 v4, 0x0

    aput-wide v4, v3, p1

    .line 129
    const-wide/16 v3, 0x3e8

    add-long/2addr p2, v3

    iput-wide p2, p0, Lcom/android/internal/util/StatLogger;->mNextTickTime:J

    .line 132
    :cond_69
    iget-object p2, p0, Lcom/android/internal/util/StatLogger;->mCallsPerSecond:[I

    aget p3, p2, p1

    add-int/lit8 p3, p3, 0x1

    aput p3, p2, p1

    .line 133
    iget-object p2, p0, Lcom/android/internal/util/StatLogger;->mDurationPerSecond:[J

    aget-wide v3, p2, p1

    add-long/2addr v3, v1

    aput-wide v3, p2, p1

    .line 135
    monitor-exit v0

    return-wide v1

    .line 109
    :cond_7a
    const-string p2, "StatLogger"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid event ID: "

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    monitor-exit v0

    return-wide v1

    .line 136
    :catchall_94
    move-exception p1

    monitor-exit v0
    :try_end_96
    .catchall {:try_start_3 .. :try_end_96} :catchall_94

    throw p1
.end method
