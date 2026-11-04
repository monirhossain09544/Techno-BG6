.class public Lcom/android/internal/os/KernelCpuThreadReaderDiff;
.super Ljava/lang/Object;
.source "KernelCpuThreadReaderDiff.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/KernelCpuThreadReaderDiff$ThreadKey;
    }
.end annotation


# static fields
.field private static final blacklist OTHER_THREADS_ID:I = -0x1

.field private static final blacklist OTHER_THREADS_NAME:Ljava/lang/String; = "__OTHER_THREADS"

.field private static final blacklist TAG:Ljava/lang/String; = "KernelCpuThreadReaderDiff"


# instance fields
.field private blacklist mMinimumTotalCpuUsageMillis:I

.field private blacklist mPreviousCpuUsage:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/internal/os/KernelCpuThreadReaderDiff$ThreadKey;",
            "[I>;"
        }
    .end annotation
.end field

.field private final blacklist mReader:Lcom/android/internal/os/KernelCpuThreadReader;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/os/KernelCpuThreadReader;I)V
    .registers 3

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/os/KernelCpuThreadReader;

    iput-object p1, p0, Lcom/android/internal/os/KernelCpuThreadReaderDiff;->mReader:Lcom/android/internal/os/KernelCpuThreadReader;

    .line 105
    iput p2, p0, Lcom/android/internal/os/KernelCpuThreadReaderDiff;->mMinimumTotalCpuUsageMillis:I

    .line 106
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/internal/os/KernelCpuThreadReaderDiff;->mPreviousCpuUsage:Ljava/util/Map;

    .line 107
    return-void
.end method

.method private static blacklist addToCpuUsage([I[I)V
    .registers 5

    .line 255
    const/4 v0, 0x0

    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_e

    .line 256
    aget v1, p0, v0

    aget v2, p1, v0

    add-int/2addr v1, v2

    aput v1, p0, v0

    .line 255
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 258
    :cond_e
    return-void
.end method

.method private blacklist applyThresholding(Lcom/android/internal/os/KernelCpuThreadReader$ProcessCpuUsage;)V
    .registers 8

    .line 222
    nop

    .line 223
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 224
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_8
    iget-object v3, p1, Lcom/android/internal/os/KernelCpuThreadReader$ProcessCpuUsage;->threadCpuUsages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_35

    .line 225
    iget-object v3, p1, Lcom/android/internal/os/KernelCpuThreadReader$ProcessCpuUsage;->threadCpuUsages:Ljava/util/ArrayList;

    .line 226
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/os/KernelCpuThreadReader$ThreadCpuUsage;

    .line 227
    iget v4, p0, Lcom/android/internal/os/KernelCpuThreadReaderDiff;->mMinimumTotalCpuUsageMillis:I

    iget-object v5, v3, Lcom/android/internal/os/KernelCpuThreadReader$ThreadCpuUsage;->usageTimesMillis:[I

    invoke-static {v5}, Lcom/android/internal/os/KernelCpuThreadReaderDiff;->totalCpuUsage([I)I

    move-result v5

    if-le v4, v5, :cond_2f

    .line 228
    if-nez v1, :cond_29

    .line 229
    iget-object v1, v3, Lcom/android/internal/os/KernelCpuThreadReader$ThreadCpuUsage;->usageTimesMillis:[I

    array-length v1, v1

    new-array v1, v1, [I

    .line 231
    :cond_29
    iget-object v3, v3, Lcom/android/internal/os/KernelCpuThreadReader$ThreadCpuUsage;->usageTimesMillis:[I

    invoke-static {v1, v3}, Lcom/android/internal/os/KernelCpuThreadReaderDiff;->addToCpuUsage([I[I)V

    .line 232
    goto :goto_32

    .line 234
    :cond_2f
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 224
    :goto_32
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 236
    :cond_35
    if-eqz v1, :cond_42

    .line 237
    new-instance v2, Lcom/android/internal/os/KernelCpuThreadReader$ThreadCpuUsage;

    const/4 v3, -0x1

    const-string v4, "__OTHER_THREADS"

    invoke-direct {v2, v3, v4, v1}, Lcom/android/internal/os/KernelCpuThreadReader$ThreadCpuUsage;-><init>(ILjava/lang/String;[I)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 241
    :cond_42
    iput-object v0, p1, Lcom/android/internal/os/KernelCpuThreadReader$ProcessCpuUsage;->threadCpuUsages:Ljava/util/ArrayList;

    .line 242
    return-void
.end method

.method private static blacklist changeToDiffs(Ljava/util/Map;Lcom/android/internal/os/KernelCpuThreadReader$ProcessCpuUsage;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/android/internal/os/KernelCpuThreadReaderDiff$ThreadKey;",
            "[I>;",
            "Lcom/android/internal/os/KernelCpuThreadReader$ProcessCpuUsage;",
            ")V"
        }
    .end annotation

    .line 193
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p1, Lcom/android/internal/os/KernelCpuThreadReader$ProcessCpuUsage;->threadCpuUsages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_36

    .line 194
    iget-object v1, p1, Lcom/android/internal/os/KernelCpuThreadReader$ProcessCpuUsage;->threadCpuUsages:Ljava/util/ArrayList;

    .line 195
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/os/KernelCpuThreadReader$ThreadCpuUsage;

    .line 196
    new-instance v2, Lcom/android/internal/os/KernelCpuThreadReaderDiff$ThreadKey;

    iget v3, p1, Lcom/android/internal/os/KernelCpuThreadReader$ProcessCpuUsage;->processId:I

    iget v4, v1, Lcom/android/internal/os/KernelCpuThreadReader$ThreadCpuUsage;->threadId:I

    iget-object v5, p1, Lcom/android/internal/os/KernelCpuThreadReader$ProcessCpuUsage;->processName:Ljava/lang/String;

    iget-object v6, v1, Lcom/android/internal/os/KernelCpuThreadReader$ThreadCpuUsage;->threadName:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/android/internal/os/KernelCpuThreadReaderDiff$ThreadKey;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 202
    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    .line 203
    if-nez v2, :cond_2b

    .line 205
    iget-object v2, v1, Lcom/android/internal/os/KernelCpuThreadReader$ThreadCpuUsage;->usageTimesMillis:[I

    array-length v2, v2

    new-array v2, v2, [I

    .line 207
    :cond_2b
    iget-object v3, v1, Lcom/android/internal/os/KernelCpuThreadReader$ThreadCpuUsage;->usageTimesMillis:[I

    .line 208
    invoke-static {v3, v2}, Lcom/android/internal/os/KernelCpuThreadReaderDiff;->cpuTimeDiff([I[I)[I

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/os/KernelCpuThreadReader$ThreadCpuUsage;->usageTimesMillis:[I

    .line 193
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 210
    :cond_36
    return-void
.end method

.method private static blacklist cpuTimeDiff([I[I)[I
    .registers 6

    .line 262
    array-length v0, p0

    new-array v0, v0, [I

    .line 263
    const/4 v1, 0x0

    :goto_4
    array-length v2, p0

    if-ge v1, v2, :cond_11

    .line 264
    aget v2, p0, v1

    aget v3, p1, v1

    sub-int/2addr v2, v3

    aput v2, v0, v1

    .line 263
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 266
    :cond_11
    return-object v0
.end method

.method private static blacklist createCpuUsageMap(Ljava/util/List;)Ljava/util/Map;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/os/KernelCpuThreadReader$ProcessCpuUsage;",
            ">;)",
            "Ljava/util/Map<",
            "Lcom/android/internal/os/KernelCpuThreadReaderDiff$ThreadKey;",
            "[I>;"
        }
    .end annotation

    .line 165
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 166
    const/4 v1, 0x0

    move v2, v1

    :goto_7
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3c

    .line 167
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/os/KernelCpuThreadReader$ProcessCpuUsage;

    .line 168
    move v4, v1

    :goto_14
    iget-object v5, v3, Lcom/android/internal/os/KernelCpuThreadReader$ProcessCpuUsage;->threadCpuUsages:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_39

    .line 169
    iget-object v5, v3, Lcom/android/internal/os/KernelCpuThreadReader$ProcessCpuUsage;->threadCpuUsages:Ljava/util/ArrayList;

    .line 170
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/os/KernelCpuThreadReader$ThreadCpuUsage;

    .line 171
    new-instance v6, Lcom/android/internal/os/KernelCpuThreadReaderDiff$ThreadKey;

    iget v7, v3, Lcom/android/internal/os/KernelCpuThreadReader$ProcessCpuUsage;->processId:I

    iget v8, v5, Lcom/android/internal/os/KernelCpuThreadReader$ThreadCpuUsage;->threadId:I

    iget-object v9, v3, Lcom/android/internal/os/KernelCpuThreadReader$ProcessCpuUsage;->processName:Ljava/lang/String;

    iget-object v10, v5, Lcom/android/internal/os/KernelCpuThreadReader$ThreadCpuUsage;->threadName:Ljava/lang/String;

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/android/internal/os/KernelCpuThreadReaderDiff$ThreadKey;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    iget-object v5, v5, Lcom/android/internal/os/KernelCpuThreadReader$ThreadCpuUsage;->usageTimesMillis:[I

    invoke-interface {v0, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    add-int/lit8 v4, v4, 0x1

    goto :goto_14

    .line 166
    :cond_39
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 180
    :cond_3c
    return-object v0
.end method

.method private static blacklist totalCpuUsage([I)I
    .registers 4

    .line 246
    nop

    .line 247
    const/4 v0, 0x0

    move v1, v0

    :goto_3
    array-length v2, p0

    if-ge v0, v2, :cond_c

    .line 248
    aget v2, p0, v0

    add-int/2addr v1, v2

    .line 247
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 250
    :cond_c
    return v1
.end method


# virtual methods
.method public blacklist getCpuFrequenciesKhz()[I
    .registers 2

    .line 144
    iget-object v0, p0, Lcom/android/internal/os/KernelCpuThreadReaderDiff;->mReader:Lcom/android/internal/os/KernelCpuThreadReader;

    invoke-virtual {v0}, Lcom/android/internal/os/KernelCpuThreadReader;->getCpuFrequenciesKhz()[I

    move-result-object v0

    return-object v0
.end method

.method public blacklist getProcessCpuUsageDiffed()Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/os/KernelCpuThreadReader$ProcessCpuUsage;",
            ">;"
        }
    .end annotation

    .line 116
    nop

    .line 119
    const/4 v0, 0x0

    :try_start_2
    iget-object v1, p0, Lcom/android/internal/os/KernelCpuThreadReaderDiff;->mReader:Lcom/android/internal/os/KernelCpuThreadReader;

    .line 120
    invoke-virtual {v1}, Lcom/android/internal/os/KernelCpuThreadReader;->getProcessCpuUsage()Ljava/util/ArrayList;

    move-result-object v1

    .line 121
    invoke-static {v1}, Lcom/android/internal/os/KernelCpuThreadReaderDiff;->createCpuUsageMap(Ljava/util/List;)Ljava/util/Map;

    move-result-object v2
    :try_end_c
    .catchall {:try_start_2 .. :try_end_c} :catchall_32

    .line 123
    :try_start_c
    iget-object v3, p0, Lcom/android/internal/os/KernelCpuThreadReaderDiff;->mPreviousCpuUsage:Ljava/util/Map;
    :try_end_e
    .catchall {:try_start_c .. :try_end_e} :catchall_30

    if-nez v3, :cond_14

    .line 124
    nop

    .line 137
    iput-object v2, p0, Lcom/android/internal/os/KernelCpuThreadReaderDiff;->mPreviousCpuUsage:Ljava/util/Map;

    .line 124
    return-object v0

    .line 128
    :cond_14
    const/4 v0, 0x0

    :goto_15
    :try_start_15
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_2c

    .line 129
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/os/KernelCpuThreadReader$ProcessCpuUsage;

    .line 130
    iget-object v4, p0, Lcom/android/internal/os/KernelCpuThreadReaderDiff;->mPreviousCpuUsage:Ljava/util/Map;

    invoke-static {v4, v3}, Lcom/android/internal/os/KernelCpuThreadReaderDiff;->changeToDiffs(Ljava/util/Map;Lcom/android/internal/os/KernelCpuThreadReader$ProcessCpuUsage;)V

    .line 131
    invoke-direct {p0, v3}, Lcom/android/internal/os/KernelCpuThreadReaderDiff;->applyThresholding(Lcom/android/internal/os/KernelCpuThreadReader$ProcessCpuUsage;)V
    :try_end_29
    .catchall {:try_start_15 .. :try_end_29} :catchall_30

    .line 128
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    .line 133
    :cond_2c
    nop

    .line 137
    iput-object v2, p0, Lcom/android/internal/os/KernelCpuThreadReaderDiff;->mPreviousCpuUsage:Ljava/util/Map;

    .line 133
    return-object v1

    .line 137
    :catchall_30
    move-exception v0

    goto :goto_35

    :catchall_32
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_35
    iput-object v2, p0, Lcom/android/internal/os/KernelCpuThreadReaderDiff;->mPreviousCpuUsage:Ljava/util/Map;

    .line 138
    throw v0
.end method

.method blacklist setMinimumTotalCpuUsageMillis(I)V
    .registers 4

    .line 152
    if-gez p1, :cond_1b

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Negative minimumTotalCpuUsageMillis: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "KernelCpuThreadReaderDiff"

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    return-void

    .line 156
    :cond_1b
    iput p1, p0, Lcom/android/internal/os/KernelCpuThreadReaderDiff;->mMinimumTotalCpuUsageMillis:I

    .line 157
    return-void
.end method
