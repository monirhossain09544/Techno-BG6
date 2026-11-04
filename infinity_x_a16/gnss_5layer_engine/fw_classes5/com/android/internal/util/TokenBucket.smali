.class public Lcom/android/internal/util/TokenBucket;
.super Ljava/lang/Object;
.source "TokenBucket.java"


# instance fields
.field private greylist-max-o mAvailable:I

.field private final greylist-max-o mCapacity:I

.field private final greylist-max-o mFillDelta:I

.field private greylist-max-o mLastFill:J


# direct methods
.method public constructor greylist-max-o <init>(II)V
    .registers 3

    .line 68
    invoke-direct {p0, p1, p2, p2}, Lcom/android/internal/util/TokenBucket;-><init>(III)V

    .line 69
    return-void
.end method

.method public constructor greylist-max-o <init>(III)V
    .registers 5

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const-string v0, "deltaMs must be strictly positive"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentPositive(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/internal/util/TokenBucket;->mFillDelta:I

    .line 56
    const-string p1, "capacity must be strictly positive"

    invoke-static {p2, p1}, Lcom/android/internal/util/Preconditions;->checkArgumentPositive(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/internal/util/TokenBucket;->mCapacity:I

    .line 57
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(I)I

    move-result p1

    iget p2, p0, Lcom/android/internal/util/TokenBucket;->mCapacity:I

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/android/internal/util/TokenBucket;->mAvailable:I

    .line 58
    invoke-direct {p0}, Lcom/android/internal/util/TokenBucket;->scaledTime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/internal/util/TokenBucket;->mLastFill:J

    .line 59
    return-void
.end method

.method private greylist-max-o fill()V
    .registers 6

    .line 120
    invoke-direct {p0}, Lcom/android/internal/util/TokenBucket;->scaledTime()J

    move-result-wide v0

    .line 121
    iget-wide v2, p0, Lcom/android/internal/util/TokenBucket;->mLastFill:J

    sub-long v2, v0, v2

    long-to-int v2, v2

    .line 122
    iget v3, p0, Lcom/android/internal/util/TokenBucket;->mCapacity:I

    iget v4, p0, Lcom/android/internal/util/TokenBucket;->mAvailable:I

    add-int/2addr v4, v2

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p0, Lcom/android/internal/util/TokenBucket;->mAvailable:I

    .line 123
    iput-wide v0, p0, Lcom/android/internal/util/TokenBucket;->mLastFill:J

    .line 124
    return-void
.end method

.method private greylist-max-o scaledTime()J
    .registers 5

    .line 127
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget v2, p0, Lcom/android/internal/util/TokenBucket;->mFillDelta:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public greylist-max-o available()I
    .registers 2

    .line 85
    invoke-direct {p0}, Lcom/android/internal/util/TokenBucket;->fill()V

    .line 86
    iget v0, p0, Lcom/android/internal/util/TokenBucket;->mAvailable:I

    return v0
.end method

.method public greylist-max-o capacity()I
    .registers 2

    .line 80
    iget v0, p0, Lcom/android/internal/util/TokenBucket;->mCapacity:I

    return v0
.end method

.method public greylist-max-o get(I)I
    .registers 4

    .line 106
    invoke-direct {p0}, Lcom/android/internal/util/TokenBucket;->fill()V

    .line 107
    const/4 v0, 0x0

    if-gtz p1, :cond_7

    .line 108
    return v0

    .line 110
    :cond_7
    iget v1, p0, Lcom/android/internal/util/TokenBucket;->mAvailable:I

    if-le p1, v1, :cond_10

    .line 111
    iget p1, p0, Lcom/android/internal/util/TokenBucket;->mAvailable:I

    .line 112
    iput v0, p0, Lcom/android/internal/util/TokenBucket;->mAvailable:I

    .line 113
    return p1

    .line 115
    :cond_10
    iget v0, p0, Lcom/android/internal/util/TokenBucket;->mAvailable:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/android/internal/util/TokenBucket;->mAvailable:I

    .line 116
    return p1
.end method

.method public greylist-max-o get()Z
    .registers 3

    .line 97
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/util/TokenBucket;->get(I)I

    move-result v1

    if-ne v1, v0, :cond_8

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public greylist-max-o has()Z
    .registers 2

    .line 91
    invoke-direct {p0}, Lcom/android/internal/util/TokenBucket;->fill()V

    .line 92
    iget v0, p0, Lcom/android/internal/util/TokenBucket;->mAvailable:I

    if-lez v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public greylist-max-o reset(I)V
    .registers 4

    .line 73
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(I)I

    .line 74
    iget v0, p0, Lcom/android/internal/util/TokenBucket;->mCapacity:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/android/internal/util/TokenBucket;->mAvailable:I

    .line 75
    invoke-direct {p0}, Lcom/android/internal/util/TokenBucket;->scaledTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/util/TokenBucket;->mLastFill:J

    .line 76
    return-void
.end method
