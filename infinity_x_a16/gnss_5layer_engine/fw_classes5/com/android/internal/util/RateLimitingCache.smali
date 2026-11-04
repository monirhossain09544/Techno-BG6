.class public Lcom/android/internal/util/RateLimitingCache;
.super Ljava/lang/Object;
.source "RateLimitingCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/util/RateLimitingCache$CachedValue;,
        Lcom/android/internal/util/RateLimitingCache$ValueFetcher;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Value:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final blacklist mCachedValue:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/android/internal/util/RateLimitingCache<",
            "TValue;>.CachedValue;>;"
        }
    .end annotation
.end field

.field private final blacklist mLimit:I

.field private final blacklist mPeriodMillis:J

.field private final blacklist mRandomOffset:J


# direct methods
.method public constructor blacklist <init>(J)V
    .registers 4

    .line 81
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/util/RateLimitingCache;-><init>(JI)V

    .line 82
    return-void
.end method

.method public constructor blacklist <init>(JI)V
    .registers 8

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/android/internal/util/RateLimitingCache;->mCachedValue:Ljava/util/concurrent/atomic/AtomicReference;

    .line 95
    iput-wide p1, p0, Lcom/android/internal/util/RateLimitingCache;->mPeriodMillis:J

    .line 96
    iput p3, p0, Lcom/android/internal/util/RateLimitingCache;->mLimit:I

    .line 97
    iget p3, p0, Lcom/android/internal/util/RateLimitingCache;->mLimit:I

    const/4 v0, 0x1

    if-le p3, v0, :cond_26

    const-wide/16 v0, 0x1

    cmp-long p3, p1, v0

    if-lez p3, :cond_26

    .line 98
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide/16 v2, 0x2

    div-long/2addr p1, v2

    long-to-double p1, p1

    mul-double/2addr v0, p1

    double-to-long p1, v0

    iput-wide p1, p0, Lcom/android/internal/util/RateLimitingCache;->mRandomOffset:J

    goto :goto_2a

    .line 100
    :cond_26
    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/android/internal/util/RateLimitingCache;->mRandomOffset:J

    .line 102
    :goto_2a
    return-void
.end method


# virtual methods
.method public blacklist get(Lcom/android/internal/util/RateLimitingCache$ValueFetcher;)Ljava/lang/Object;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/RateLimitingCache$ValueFetcher<",
            "TValue;>;)TValue;"
        }
    .end annotation

    .line 120
    iget-object v0, p0, Lcom/android/internal/util/RateLimitingCache;->mCachedValue:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/RateLimitingCache$CachedValue;

    .line 123
    iget-wide v1, p0, Lcom/android/internal/util/RateLimitingCache;->mPeriodMillis:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gez v1, :cond_1b

    if-eqz v0, :cond_1b

    iget-wide v1, v0, Lcom/android/internal/util/RateLimitingCache$CachedValue;->timestamp:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1b

    .line 124
    iget-object p1, v0, Lcom/android/internal/util/RateLimitingCache$CachedValue;->value:Ljava/lang/Object;

    return-object p1

    .line 129
    :cond_1b
    invoke-virtual {p0}, Lcom/android/internal/util/RateLimitingCache;->getTime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/internal/util/RateLimitingCache;->mRandomOffset:J

    add-long/2addr v1, v3

    .line 130
    const/4 v3, 0x1

    if-eqz v0, :cond_32

    iget-wide v4, v0, Lcom/android/internal/util/RateLimitingCache$CachedValue;->timestamp:J

    sub-long v4, v1, v4

    iget-wide v6, p0, Lcom/android/internal/util/RateLimitingCache;->mPeriodMillis:J

    cmp-long v4, v4, v6

    if-ltz v4, :cond_30

    goto :goto_32

    :cond_30
    const/4 v4, 0x0

    goto :goto_33

    :cond_32
    :goto_32
    move v4, v3

    .line 131
    :goto_33
    if-nez v4, :cond_3f

    iget-object v5, v0, Lcom/android/internal/util/RateLimitingCache$CachedValue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v5

    iget v6, p0, Lcom/android/internal/util/RateLimitingCache;->mLimit:I

    if-ge v5, v6, :cond_69

    .line 133
    :cond_3f
    invoke-interface {p1}, Lcom/android/internal/util/RateLimitingCache$ValueFetcher;->fetchValue()Ljava/lang/Object;

    move-result-object p1

    .line 134
    nop

    .line 136
    iget v5, p0, Lcom/android/internal/util/RateLimitingCache;->mLimit:I

    if-le v5, v3, :cond_4d

    .line 137
    iget-wide v5, p0, Lcom/android/internal/util/RateLimitingCache;->mPeriodMillis:J

    rem-long v5, v1, v5

    sub-long/2addr v1, v5

    .line 140
    :cond_4d
    new-instance v5, Lcom/android/internal/util/RateLimitingCache$CachedValue;

    invoke-direct {v5, p0}, Lcom/android/internal/util/RateLimitingCache$CachedValue;-><init>(Lcom/android/internal/util/RateLimitingCache;)V

    .line 141
    iput-object p1, v5, Lcom/android/internal/util/RateLimitingCache$CachedValue;->value:Ljava/lang/Object;

    .line 142
    iput-wide v1, v5, Lcom/android/internal/util/RateLimitingCache$CachedValue;->timestamp:J

    .line 143
    if-eqz v4, :cond_60

    .line 144
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, v5, Lcom/android/internal/util/RateLimitingCache$CachedValue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    goto :goto_64

    .line 146
    :cond_60
    iget-object p1, v0, Lcom/android/internal/util/RateLimitingCache$CachedValue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p1, v5, Lcom/android/internal/util/RateLimitingCache$CachedValue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 151
    :goto_64
    iget-object p1, p0, Lcom/android/internal/util/RateLimitingCache;->mCachedValue:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1, v0, v5}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 153
    :cond_69
    iget-object p1, p0, Lcom/android/internal/util/RateLimitingCache;->mCachedValue:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/util/RateLimitingCache$CachedValue;

    iget-object p1, p1, Lcom/android/internal/util/RateLimitingCache$CachedValue;->value:Ljava/lang/Object;

    return-object p1
.end method

.method protected blacklist getTime()J
    .registers 3

    .line 110
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method
