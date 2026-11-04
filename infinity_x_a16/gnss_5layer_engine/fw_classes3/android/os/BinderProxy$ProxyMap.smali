.class final Landroid/os/BinderProxy$ProxyMap;
.super Ljava/lang/Object;
.source "BinderProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/BinderProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ProxyMap"
.end annotation


# static fields
.field private static final blacklist CRASH_AT_SIZE:I = 0x61a8

.field private static final blacklist LOG_MAIN_INDEX_SIZE:I = 0x8

.field private static final blacklist MAIN_INDEX_MASK:I = 0xff

.field private static final blacklist MAIN_INDEX_SIZE:I = 0x100

.field static final blacklist MAX_NUM_INTERFACES_TO_DUMP:I = 0xa

.field private static final blacklist WARN_INCREMENT:I = 0xa


# instance fields
.field private final blacklist mMainIndexKeys:[[Ljava/lang/Long;

.field private final blacklist mMainIndexValues:[Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/ArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/os/BinderProxy;",
            ">;>;"
        }
    .end annotation
.end field

.field private blacklist mRandom:I

.field private blacklist mWarnBucketSize:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$mdumpPerUidProxyCounts(Landroid/os/BinderProxy$ProxyMap;)V
    .registers 1

    invoke-direct {p0}, Landroid/os/BinderProxy$ProxyMap;->dumpPerUidProxyCounts()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mdumpProxyInterfaceCounts(Landroid/os/BinderProxy$ProxyMap;)V
    .registers 1

    invoke-direct {p0}, Landroid/os/BinderProxy$ProxyMap;->dumpProxyInterfaceCounts()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mgetSortedInterfaceCounts(Landroid/os/BinderProxy$ProxyMap;I)[Landroid/os/BinderProxy$InterfaceCount;
    .registers 2

    invoke-direct {p0, p1}, Landroid/os/BinderProxy$ProxyMap;->getSortedInterfaceCounts(I)[Landroid/os/BinderProxy$InterfaceCount;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$msize(Landroid/os/BinderProxy$ProxyMap;)I
    .registers 1

    invoke-direct {p0}, Landroid/os/BinderProxy$ProxyMap;->size()I

    move-result p0

    return p0
.end method

.method private constructor blacklist <init>()V
    .registers 3

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    const/16 v0, 0x14

    iput v0, p0, Landroid/os/BinderProxy$ProxyMap;->mWarnBucketSize:I

    .line 385
    const/16 v0, 0x100

    new-array v1, v0, [[Ljava/lang/Long;

    iput-object v1, p0, Landroid/os/BinderProxy$ProxyMap;->mMainIndexKeys:[[Ljava/lang/Long;

    .line 386
    new-array v0, v0, [Ljava/util/ArrayList;

    iput-object v0, p0, Landroid/os/BinderProxy$ProxyMap;->mMainIndexValues:[Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/BinderProxy-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/os/BinderProxy$ProxyMap;-><init>()V

    return-void
.end method

.method private blacklist dumpPerUidProxyCounts()V
    .registers 8

    .line 366
    invoke-static {}, Lcom/android/internal/os/BinderInternal;->nGetBinderProxyPerUidCounts()Landroid/util/SparseIntArray;

    move-result-object v0

    .line 367
    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    if-nez v1, :cond_b

    return-void

    .line 368
    :cond_b
    const-string v1, "Per Uid Binder Proxy Counts:"

    const-string v2, "Binder"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    const/4 v1, 0x0

    :goto_13
    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_44

    .line 370
    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    .line 371
    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v4

    .line 372
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "UID : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "  count = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 374
    :cond_44
    return-void
.end method

.method private blacklist dumpProxyInterfaceCounts()V
    .registers 7

    .line 353
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Landroid/os/BinderProxy$ProxyMap;->getSortedInterfaceCounts(I)[Landroid/os/BinderProxy$InterfaceCount;

    move-result-object v1

    .line 355
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BinderProxy descriptor histogram (top "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 356
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "):"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 355
    const-string v2, "Binder"

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    const/4 v0, 0x0

    :goto_29
    array-length v3, v1

    if-ge v0, v3, :cond_52

    .line 358
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ": "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v0, v1, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    move v0, v4

    goto :goto_29

    .line 360
    :cond_52
    return-void
.end method

.method private blacklist getSortedInterfaceCounts(I)[Landroid/os/BinderProxy$InterfaceCount;
    .registers 10

    .line 264
    if-ltz p1, :cond_aa

    .line 268
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 269
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 271
    invoke-static {}, Landroid/os/BinderProxy;->-$$Nest$sfgetsProxyMap()Landroid/os/BinderProxy$ProxyMap;

    move-result-object v2

    monitor-enter v2

    .line 272
    :try_start_11
    iget-object v3, p0, Landroid/os/BinderProxy$ProxyMap;->mMainIndexValues:[Ljava/util/ArrayList;

    array-length v4, v3

    const/4 v5, 0x0

    move v6, v5

    :goto_16
    if-ge v6, v4, :cond_22

    aget-object v7, v3, v6

    .line 273
    if-eqz v7, :cond_1f

    .line 274
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 272
    :cond_1f
    add-int/lit8 v6, v6, 0x1

    goto :goto_16

    .line 277
    :cond_22
    monitor-exit v2
    :try_end_23
    .catchall {:try_start_11 .. :try_end_23} :catchall_a7

    .line 283
    :try_start_23
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2, v5}, Landroid/app/IActivityManager;->enableAppFreezer(Z)Z
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_2a} :catch_2b

    .line 286
    goto :goto_33

    .line 284
    :catch_2b
    move-exception v2

    .line 285
    const-string v2, "Binder"

    const-string v3, "RemoteException while disabling app freezer"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    :goto_33
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    .line 293
    new-instance v3, Landroid/os/BinderProxy$ProxyMap$$ExternalSyntheticLambda0;

    invoke-direct {v3, v1, v0}, Landroid/os/BinderProxy$ProxyMap$$ExternalSyntheticLambda0;-><init>(Ljava/util/ArrayList;Ljava/util/Map;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 319
    :try_start_3f
    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 320
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x14

    invoke-interface {v2, v3, v4, v1}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    .line 321
    if-nez v1, :cond_53

    .line 322
    const-string v1, "Binder"

    const-string v2, "Failed to complete binder proxy dump, dumping what we have so far."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_53
    .catch Ljava/lang/InterruptedException; {:try_start_3f .. :try_end_53} :catch_54

    .line 327
    :cond_53
    goto :goto_55

    .line 325
    :catch_54
    move-exception v1

    .line 329
    :goto_55
    :try_start_55
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->enableAppFreezer(Z)Z
    :try_end_5d
    .catch Landroid/os/RemoteException; {:try_start_55 .. :try_end_5d} :catch_5e

    .line 332
    goto :goto_66

    .line 330
    :catch_5e
    move-exception v1

    .line 331
    const-string v1, "Binder"

    const-string v2, "RemoteException while re-enabling app freezer"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    :goto_66
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 334
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    new-array v0, v0, [Ljava/util/Map$Entry;

    .line 333
    invoke-interface {v1, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/util/Map$Entry;

    .line 336
    new-instance v1, Landroid/os/BinderProxy$ProxyMap$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Landroid/os/BinderProxy$ProxyMap$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 339
    array-length v1, v0

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 340
    new-array v1, p1, [Landroid/os/BinderProxy$InterfaceCount;

    .line 341
    nop

    :goto_86
    if-ge v5, p1, :cond_a6

    .line 342
    new-instance v2, Landroid/os/BinderProxy$InterfaceCount;

    aget-object v3, v0, v5

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aget-object v4, v0, v5

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/os/BinderProxy$InterfaceCount;-><init>(Ljava/lang/String;I)V

    aput-object v2, v1, v5

    .line 341
    add-int/lit8 v5, v5, 0x1

    goto :goto_86

    .line 344
    :cond_a6
    return-object v1

    .line 277
    :catchall_a7
    move-exception p1

    :try_start_a8
    monitor-exit v2
    :try_end_a9
    .catchall {:try_start_a8 .. :try_end_a9} :catchall_a7

    throw p1

    .line 265
    :cond_aa
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "negative interface count"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static blacklist hash(J)I
    .registers 5

    .line 106
    const/4 v0, 0x2

    shr-long v0, p0, v0

    const/16 v2, 0xa

    shr-long/2addr p0, v2

    xor-long/2addr p0, v0

    long-to-int p0, p0

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method static synthetic blacklist lambda$getSortedInterfaceCounts$0(Ljava/util/ArrayList;Ljava/util/Map;)V
    .registers 5

    .line 294
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_53

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 295
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BinderProxy;

    .line 297
    if-nez v0, :cond_1b

    .line 298
    const-string v0, "<cleared weak-ref>"

    goto :goto_35

    .line 301
    :cond_1b
    :try_start_1b
    invoke-virtual {v0}, Landroid/os/BinderProxy;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v1

    .line 302
    if-eqz v1, :cond_27

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_30

    :cond_27
    invoke-virtual {v0}, Landroid/os/BinderProxy;->isBinderAlive()Z

    move-result v0

    if-nez v0, :cond_30

    .line 303
    const-string v0, "<proxy to dead node>"
    :try_end_2f
    .catchall {:try_start_1b .. :try_end_2f} :catchall_32

    goto :goto_31

    .line 307
    :cond_30
    move-object v0, v1

    :goto_31
    goto :goto_35

    .line 305
    :catchall_32
    move-exception v0

    .line 306
    const-string v0, "<exception during getDescriptor>"

    .line 309
    :goto_35
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 310
    const/4 v2, 0x1

    if-nez v1, :cond_46

    .line 311
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_52

    .line 313
    :cond_46
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    :goto_52
    goto :goto_4

    .line 316
    :cond_53
    return-void
.end method

.method static synthetic blacklist lambda$getSortedInterfaceCounts$1(Ljava/util/Map$Entry;Ljava/util/Map$Entry;)I
    .registers 2

    .line 337
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p1, p0}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result p0

    return p0
.end method

.method private blacklist remove(II)V
    .registers 6

    .line 144
    iget-object v0, p0, Landroid/os/BinderProxy$ProxyMap;->mMainIndexKeys:[[Ljava/lang/Long;

    aget-object v0, v0, p1

    .line 145
    iget-object v1, p0, Landroid/os/BinderProxy$ProxyMap;->mMainIndexValues:[Ljava/util/ArrayList;

    aget-object p1, v1, p1

    .line 146
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 148
    add-int/lit8 v1, v1, -0x1

    if-eq p2, v1, :cond_1d

    .line 149
    aget-object v2, v0, v1

    aput-object v2, v0, p2

    .line 150
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p1, p2, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 152
    :cond_1d
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 154
    return-void
.end method

.method private blacklist size()I
    .registers 6

    .line 113
    nop

    .line 114
    iget-object v0, p0, Landroid/os/BinderProxy$ProxyMap;->mMainIndexValues:[Ljava/util/ArrayList;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_6
    if-ge v2, v1, :cond_14

    aget-object v4, v0, v2

    .line 115
    if-eqz v4, :cond_11

    .line 116
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/2addr v3, v4

    .line 114
    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 119
    :cond_14
    return v3
.end method

.method private blacklist unclearedSize()I
    .registers 8

    .line 127
    nop

    .line 128
    iget-object v0, p0, Landroid/os/BinderProxy$ProxyMap;->mMainIndexValues:[Ljava/util/ArrayList;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_6
    if-ge v2, v1, :cond_29

    aget-object v4, v0, v2

    .line 129
    if-eqz v4, :cond_26

    .line 130
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_10
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_26

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ref/WeakReference;

    .line 131
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/lang/ref/WeakReference;->refersTo(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_25

    .line 132
    add-int/lit8 v3, v3, 0x1

    .line 134
    :cond_25
    goto :goto_10

    .line 128
    :cond_26
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 137
    :cond_29
    return v3
.end method


# virtual methods
.method blacklist get(J)Landroid/os/BinderProxy;
    .registers 11

    .line 160
    invoke-static {p1, p2}, Landroid/os/BinderProxy$ProxyMap;->hash(J)I

    move-result v0

    .line 161
    iget-object v1, p0, Landroid/os/BinderProxy$ProxyMap;->mMainIndexKeys:[[Ljava/lang/Long;

    aget-object v1, v1, v0

    .line 162
    const/4 v2, 0x0

    if-nez v1, :cond_c

    .line 163
    return-object v2

    .line 165
    :cond_c
    iget-object v3, p0, Landroid/os/BinderProxy$ProxyMap;->mMainIndexValues:[Ljava/util/ArrayList;

    aget-object v3, v3, v0

    .line 166
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 167
    const/4 v5, 0x0

    :goto_15
    if-ge v5, v4, :cond_37

    .line 168
    aget-object v6, v1, v5

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 169
    cmp-long v6, p1, v6

    if-nez v6, :cond_34

    .line 170
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/ref/WeakReference;

    .line 171
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/BinderProxy;

    .line 172
    if-eqz p1, :cond_30

    .line 173
    return-object p1

    .line 175
    :cond_30
    invoke-direct {p0, v0, v5}, Landroid/os/BinderProxy$ProxyMap;->remove(II)V

    .line 176
    return-object v2

    .line 167
    :cond_34
    add-int/lit8 v5, v5, 0x1

    goto :goto_15

    .line 180
    :cond_37
    return-object v2
.end method

.method blacklist set(JLandroid/os/BinderProxy;)V
    .registers 12

    .line 190
    invoke-static {p1, p2}, Landroid/os/BinderProxy$ProxyMap;->hash(J)I

    move-result v0

    .line 191
    iget-object v1, p0, Landroid/os/BinderProxy$ProxyMap;->mMainIndexValues:[Ljava/util/ArrayList;

    aget-object v1, v1, v0

    .line 192
    const/4 v2, 0x1

    if-nez v1, :cond_1b

    .line 193
    iget-object v1, p0, Landroid/os/BinderProxy$ProxyMap;->mMainIndexValues:[Ljava/util/ArrayList;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    aput-object v3, v1, v0

    .line 194
    iget-object v1, p0, Landroid/os/BinderProxy$ProxyMap;->mMainIndexKeys:[[Ljava/lang/Long;

    new-array v4, v2, [Ljava/lang/Long;

    aput-object v4, v1, v0

    move-object v1, v3

    .line 196
    :cond_1b
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 197
    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 201
    const/4 p3, 0x0

    move v5, p3

    :goto_26
    if-ge v5, v3, :cond_65

    .line 202
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/ref/WeakReference;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/lang/ref/WeakReference;->refersTo(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_62

    .line 203
    invoke-virtual {v1, v5, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 204
    iget-object p3, p0, Landroid/os/BinderProxy$ProxyMap;->mMainIndexKeys:[[Ljava/lang/Long;

    aget-object p3, p3, v0

    .line 205
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, p3, v5

    .line 206
    add-int/lit8 p1, v3, -0x1

    if-ge v5, p1, :cond_61

    .line 209
    iget p1, p0, Landroid/os/BinderProxy$ProxyMap;->mRandom:I

    add-int/2addr p1, v2

    iput p1, p0, Landroid/os/BinderProxy$ProxyMap;->mRandom:I

    add-int/2addr v5, v2

    sub-int/2addr v3, v5

    invoke-static {p1, v3}, Ljava/lang/Math;->floorMod(II)I

    move-result p1

    .line 210
    add-int/2addr v5, p1

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/ref/WeakReference;

    invoke-virtual {p1, v7}, Ljava/lang/ref/WeakReference;->refersTo(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_61

    .line 211
    invoke-direct {p0, v0, v5}, Landroid/os/BinderProxy$ProxyMap;->remove(II)V

    .line 214
    :cond_61
    return-void

    .line 201
    :cond_62
    add-int/lit8 v5, v5, 0x1

    goto :goto_26

    .line 217
    :cond_65
    invoke-virtual {v1, v3, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 218
    iget-object v1, p0, Landroid/os/BinderProxy$ProxyMap;->mMainIndexKeys:[[Ljava/lang/Long;

    aget-object v1, v1, v0

    .line 219
    array-length v2, v1

    if-ne v2, v3, :cond_84

    .line 221
    div-int/lit8 v2, v3, 0x2

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x2

    new-array v2, v2, [Ljava/lang/Long;

    .line 222
    invoke-static {v1, p3, v2, p3, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 223
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v2, v3

    .line 224
    iget-object p1, p0, Landroid/os/BinderProxy$ProxyMap;->mMainIndexKeys:[[Ljava/lang/Long;

    aput-object v2, p1, v0

    .line 225
    goto :goto_8a

    .line 226
    :cond_84
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v1, v3

    .line 228
    :goto_8a
    iget p1, p0, Landroid/os/BinderProxy$ProxyMap;->mWarnBucketSize:I

    if-lt v3, p1, :cond_144

    .line 229
    invoke-direct {p0}, Landroid/os/BinderProxy$ProxyMap;->size()I

    move-result p1

    .line 230
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "BinderProxy map growth! bucket size = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " total = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "Binder"

    invoke-static {p3, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    iget p2, p0, Landroid/os/BinderProxy$ProxyMap;->mWarnBucketSize:I

    add-int/lit8 p2, p2, 0xa

    iput p2, p0, Landroid/os/BinderProxy$ProxyMap;->mWarnBucketSize:I

    .line 233
    const/16 p2, 0x61a8

    if-lt p1, p2, :cond_144

    .line 238
    invoke-direct {p0}, Landroid/os/BinderProxy$ProxyMap;->unclearedSize()I

    move-result v0

    .line 239
    if-ge v0, p2, :cond_f3

    .line 254
    mul-int/lit8 p2, v0, 0x3

    div-int/lit8 p2, p2, 0x2

    if-le p1, p2, :cond_144

    .line 255
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BinderProxy map has many cleared entries: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    sub-int v0, p1, v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " of "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " are cleared"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_144

    .line 242
    :cond_f3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide p2

    .line 244
    :try_start_f7
    invoke-direct {p0}, Landroid/os/BinderProxy$ProxyMap;->dumpProxyInterfaceCounts()V
    :try_end_fa
    .catchall {:try_start_f7 .. :try_end_fa} :catchall_13f

    .line 246
    invoke-static {p2, p3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 247
    nop

    .line 248
    invoke-direct {p0}, Landroid/os/BinderProxy$ProxyMap;->dumpPerUidProxyCounts()V

    .line 249
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Runtime;->gc()V

    .line 250
    new-instance p2, Landroid/os/BinderProxy$BinderProxyMapSizeException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Binder ProxyMap has too many entries: "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, " (total), "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, " (uncleared), "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 253
    invoke-direct {p0}, Landroid/os/BinderProxy$ProxyMap;->unclearedSize()I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, " (uncleared after GC). BinderProxy leak?"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/os/BinderProxy$BinderProxyMapSizeException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 246
    :catchall_13f
    move-exception p1

    invoke-static {p2, p3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 247
    throw p1

    .line 261
    :cond_144
    :goto_144
    return-void
.end method
