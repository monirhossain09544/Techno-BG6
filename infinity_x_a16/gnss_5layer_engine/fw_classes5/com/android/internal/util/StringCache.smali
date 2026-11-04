.class public final Lcom/android/internal/util/StringCache;
.super Ljava/lang/Object;
.source "StringCache.java"


# static fields
.field private static final blacklist DEFAULT_CACHE_SIZE:I = 0x100

.field public static final blacklist INSTANCE:Lcom/android/internal/util/StringCache;

.field private static final blacklist MAX_STRING_LENGTH:I = 0x80


# instance fields
.field private final blacklist mCache:Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mCacheSize:I

.field private final blacklist mClearCount:Ljava/util/concurrent/atomic/AtomicLong;

.field private final blacklist mEvictCount:Ljava/util/concurrent/atomic/AtomicLong;

.field private final blacklist mHitCount:Ljava/util/concurrent/atomic/AtomicLong;

.field private final blacklist mMissCount:Ljava/util/concurrent/atomic/AtomicLong;

.field private final blacklist mRejectCount:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 84
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/os/Flags;->parcelStringCacheEnabled()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 85
    new-instance v0, Lcom/android/internal/util/StringCache;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Lcom/android/internal/util/StringCache;-><init>(I)V

    sput-object v0, Lcom/android/internal/util/StringCache;->INSTANCE:Lcom/android/internal/util/StringCache;

    goto :goto_18

    .line 87
    :cond_10
    new-instance v0, Lcom/android/internal/util/StringCache;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/internal/util/StringCache;-><init>(I)V

    sput-object v0, Lcom/android/internal/util/StringCache;->INSTANCE:Lcom/android/internal/util/StringCache;

    .line 89
    :goto_18
    return-void
.end method

.method constructor blacklist <init>(I)V
    .registers 5

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/android/internal/util/StringCache;->mHitCount:Ljava/util/concurrent/atomic/AtomicLong;

    .line 77
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/android/internal/util/StringCache;->mMissCount:Ljava/util/concurrent/atomic/AtomicLong;

    .line 78
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/android/internal/util/StringCache;->mRejectCount:Ljava/util/concurrent/atomic/AtomicLong;

    .line 79
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/android/internal/util/StringCache;->mEvictCount:Ljava/util/concurrent/atomic/AtomicLong;

    .line 80
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/android/internal/util/StringCache;->mClearCount:Ljava/util/concurrent/atomic/AtomicLong;

    .line 97
    if-ltz p1, :cond_2c

    const/4 v0, 0x1

    goto :goto_2d

    :cond_2c
    const/4 v0, 0x0

    :goto_2d
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 98
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/util/StringCache;->mCache:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 99
    iput p1, p0, Lcom/android/internal/util/StringCache;->mCacheSize:I

    .line 100
    return-void
.end method


# virtual methods
.method public final blacklist cache(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 117
    if-nez p1, :cond_4

    .line 118
    const/4 p1, 0x0

    return-object p1

    .line 122
    :cond_4
    iget v0, p0, Lcom/android/internal/util/StringCache;->mCacheSize:I

    if-nez v0, :cond_9

    .line 123
    return-object p1

    .line 127
    :cond_9
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x80

    if-le v0, v1, :cond_17

    .line 128
    iget-object v0, p0, Lcom/android/internal/util/StringCache;->mRejectCount:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 129
    return-object p1

    .line 132
    :cond_17
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    iget v1, p0, Lcom/android/internal/util/StringCache;->mCacheSize:I

    rem-int/2addr v0, v1

    .line 135
    iget-object v1, p0, Lcom/android/internal/util/StringCache;->mCache:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->getAcquire(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 137
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_36

    .line 138
    iget-object p1, p0, Lcom/android/internal/util/StringCache;->mHitCount:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 139
    return-object v1

    .line 143
    :cond_36
    iget-object v2, p0, Lcom/android/internal/util/StringCache;->mMissCount:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 147
    iget-object v2, p0, Lcom/android/internal/util/StringCache;->mCache:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v2, v0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->lazySet(ILjava/lang/Object;)V

    .line 149
    if-eqz v1, :cond_47

    .line 151
    iget-object v0, p0, Lcom/android/internal/util/StringCache;->mEvictCount:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 155
    :cond_47
    return-object p1
.end method

.method public blacklist clear()V
    .registers 4

    .line 196
    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Lcom/android/internal/util/StringCache;->mCacheSize:I

    if-ge v0, v1, :cond_e

    .line 197
    iget-object v1, p0, Lcom/android/internal/util/StringCache;->mCache:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 196
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 199
    :cond_e
    iget-object v0, p0, Lcom/android/internal/util/StringCache;->mClearCount:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 200
    return-void
.end method

.method public blacklist dump(Ljava/io/PrintWriter;)V
    .registers 5
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    .line 205
    const-string v0, " StringCache"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 206
    invoke-virtual {p0}, Lcom/android/internal/util/StringCache;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "                Size: %6d\n"

    invoke-virtual {p1, v1, v0}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 207
    nop

    .line 209
    invoke-virtual {p0}, Lcom/android/internal/util/StringCache;->getHitCount()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/util/StringCache;->getMissCount()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    .line 207
    const-string v1, "                Hits: %6d                 Misses: %6d\n"

    invoke-virtual {p1, v1, v0}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 210
    nop

    .line 212
    invoke-virtual {p0}, Lcom/android/internal/util/StringCache;->getRejectCount()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/util/StringCache;->getEvictCount()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    .line 210
    const-string v1, "             Rejects: %6d              Evictions: %6d\n"

    invoke-virtual {p1, v1, v0}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 213
    return-void
.end method

.method blacklist getClearCount()J
    .registers 3

    .line 191
    iget-object v0, p0, Lcom/android/internal/util/StringCache;->mClearCount:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method blacklist getEvictCount()J
    .registers 3

    .line 186
    iget-object v0, p0, Lcom/android/internal/util/StringCache;->mEvictCount:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method blacklist getHitCount()J
    .registers 3

    .line 171
    iget-object v0, p0, Lcom/android/internal/util/StringCache;->mHitCount:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method blacklist getMissCount()J
    .registers 3

    .line 176
    iget-object v0, p0, Lcom/android/internal/util/StringCache;->mMissCount:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method blacklist getRejectCount()J
    .registers 3

    .line 181
    iget-object v0, p0, Lcom/android/internal/util/StringCache;->mRejectCount:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method blacklist size()I
    .registers 4

    .line 160
    nop

    .line 161
    const/4 v0, 0x0

    move v1, v0

    :goto_3
    iget v2, p0, Lcom/android/internal/util/StringCache;->mCacheSize:I

    if-ge v0, v2, :cond_14

    .line 162
    iget-object v2, p0, Lcom/android/internal/util/StringCache;->mCache:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_11

    .line 163
    add-int/lit8 v1, v1, 0x1

    .line 161
    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 166
    :cond_14
    return v1
.end method
