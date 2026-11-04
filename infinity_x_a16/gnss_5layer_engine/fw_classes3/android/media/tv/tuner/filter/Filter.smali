.class public Landroid/media/tv/tuner/filter/Filter;
.super Ljava/lang/Object;
.source "Filter.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/tuner/filter/Filter$MonitorEventMask;,
        Landroid/media/tv/tuner/filter/Filter$ScramblingStatus;,
        Landroid/media/tv/tuner/filter/Filter$Status;,
        Landroid/media/tv/tuner/filter/Filter$Subtype;,
        Landroid/media/tv/tuner/filter/Filter$Type;
    }
.end annotation


# static fields
.field public static final whitelist MONITOR_EVENT_IP_CID_CHANGE:I = 0x2

.field public static final whitelist MONITOR_EVENT_SCRAMBLING_STATUS:I = 0x1

.field public static final whitelist SCRAMBLING_STATUS_NOT_SCRAMBLED:I = 0x2

.field public static final whitelist SCRAMBLING_STATUS_SCRAMBLED:I = 0x4

.field public static final whitelist SCRAMBLING_STATUS_UNKNOWN:I = 0x1

.field public static final whitelist STATUS_DATA_READY:I = 0x1

.field public static final whitelist STATUS_HIGH_WATER:I = 0x4

.field public static final whitelist STATUS_LOW_WATER:I = 0x2

.field public static final whitelist STATUS_NO_DATA:I = 0x10

.field public static final whitelist STATUS_OVERFLOW:I = 0x8

.field public static final whitelist SUBTYPE_AUDIO:I = 0x3

.field public static final whitelist SUBTYPE_DOWNLOAD:I = 0x5

.field public static final whitelist SUBTYPE_IP:I = 0xd

.field public static final whitelist SUBTYPE_IP_PAYLOAD:I = 0xc

.field public static final whitelist SUBTYPE_MMTP:I = 0xa

.field public static final whitelist SUBTYPE_NTP:I = 0xb

.field public static final whitelist SUBTYPE_PAYLOAD_THROUGH:I = 0xe

.field public static final whitelist SUBTYPE_PCR:I = 0x8

.field public static final whitelist SUBTYPE_PES:I = 0x2

.field public static final whitelist SUBTYPE_PTP:I = 0x10

.field public static final whitelist SUBTYPE_RECORD:I = 0x6

.field public static final whitelist SUBTYPE_SECTION:I = 0x1

.field public static final whitelist SUBTYPE_TEMI:I = 0x9

.field public static final whitelist SUBTYPE_TLV:I = 0xf

.field public static final whitelist SUBTYPE_TS:I = 0x7

.field public static final whitelist SUBTYPE_UNDEFINED:I = 0x0

.field public static final whitelist SUBTYPE_VIDEO:I = 0x4

.field private static final blacklist TAG:Ljava/lang/String; = "Filter"

.field public static final whitelist TYPE_ALP:I = 0x10

.field public static final whitelist TYPE_IP:I = 0x4

.field public static final whitelist TYPE_MMTP:I = 0x2

.field public static final whitelist TYPE_TLV:I = 0x8

.field public static final whitelist TYPE_TS:I = 0x1

.field public static final whitelist TYPE_UNDEFINED:I


# instance fields
.field private blacklist mCallback:Landroid/media/tv/tuner/filter/FilterCallback;

.field private final blacklist mCallbackLock:Ljava/lang/Object;

.field private blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private final blacklist mId:J

.field private blacklist mIsClosed:Z

.field private blacklist mIsShared:Z

.field private blacklist mIsStarted:Z

.field private final blacklist mLock:Ljava/lang/Object;

.field private blacklist mMainType:I

.field private blacklist mNativeContext:J

.field private blacklist mSource:Landroid/media/tv/tuner/filter/Filter;

.field private blacklist mStarted:Z

.field private blacklist mSubtype:I


# direct methods
.method public static synthetic blacklist $r8$lambda$EfpO-kCK9C-u_O5W61AR8QYbqZc(Landroid/media/tv/tuner/filter/Filter;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/media/tv/tuner/filter/Filter;->lambda$onFilterStatus$0(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$gmdK3MmKJdYvYkXia5kQYUv6YrA(Landroid/media/tv/tuner/filter/Filter;[Landroid/media/tv/tuner/filter/FilterEvent;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/media/tv/tuner/filter/Filter;->lambda$onFilterEvent$1([Landroid/media/tv/tuner/filter/FilterEvent;)V

    return-void
.end method

.method private constructor blacklist <init>(J)V
    .registers 4

    .line 264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 236
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/tv/tuner/filter/Filter;->mCallbackLock:Ljava/lang/Object;

    .line 242
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/tv/tuner/filter/Filter;->mIsClosed:Z

    .line 243
    iput-boolean v0, p0, Landroid/media/tv/tuner/filter/Filter;->mIsStarted:Z

    .line 244
    iput-boolean v0, p0, Landroid/media/tv/tuner/filter/Filter;->mIsShared:Z

    .line 245
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/tv/tuner/filter/Filter;->mLock:Ljava/lang/Object;

    .line 265
    iput-wide p1, p0, Landroid/media/tv/tuner/filter/Filter;->mId:J

    .line 266
    return-void
.end method

.method private synthetic blacklist lambda$onFilterEvent$1([Landroid/media/tv/tuner/filter/FilterEvent;)V
    .registers 6

    .line 296
    iget-object v0, p0, Landroid/media/tv/tuner/filter/Filter;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 297
    :try_start_3
    iget-object v1, p0, Landroid/media/tv/tuner/filter/Filter;->mCallback:Landroid/media/tv/tuner/filter/FilterCallback;

    .line 298
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_39

    .line 299
    if-eqz v1, :cond_26

    .line 301
    :try_start_8
    invoke-interface {v1, p0, p1}, Landroid/media/tv/tuner/filter/FilterCallback;->onFilterEvent(Landroid/media/tv/tuner/filter/Filter;[Landroid/media/tv/tuner/filter/FilterEvent;)V
    :try_end_b
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_b} :catch_c

    .line 304
    :goto_b
    goto :goto_38

    .line 302
    :catch_c
    move-exception p1

    .line 303
    const-string v0, "Filter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "catch exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 306
    :cond_26
    array-length v0, p1

    const/4 v1, 0x0

    :goto_28
    if-ge v1, v0, :cond_38

    aget-object v2, p1, v1

    .line 307
    instance-of v3, v2, Landroid/media/tv/tuner/filter/MediaEvent;

    if-eqz v3, :cond_35

    .line 308
    check-cast v2, Landroid/media/tv/tuner/filter/MediaEvent;

    invoke-virtual {v2}, Landroid/media/tv/tuner/filter/MediaEvent;->release()V

    .line 306
    :cond_35
    add-int/lit8 v1, v1, 0x1

    goto :goto_28

    .line 312
    :cond_38
    :goto_38
    return-void

    .line 298
    :catchall_39
    move-exception p1

    :try_start_3a
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_39

    throw p1
.end method

.method private synthetic blacklist lambda$onFilterStatus$0(I)V
    .registers 7

    .line 273
    iget-object v0, p0, Landroid/media/tv/tuner/filter/Filter;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 274
    :try_start_3
    iget-object v1, p0, Landroid/media/tv/tuner/filter/Filter;->mCallback:Landroid/media/tv/tuner/filter/FilterCallback;

    .line 275
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_2b

    .line 276
    if-eqz v1, :cond_25

    .line 278
    :try_start_8
    invoke-interface {v1, p0, p1}, Landroid/media/tv/tuner/filter/FilterCallback;->onFilterStatusChanged(Landroid/media/tv/tuner/filter/Filter;I)V
    :try_end_b
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_b} :catch_c

    .line 281
    goto :goto_25

    .line 279
    :catch_c
    move-exception v0

    .line 280
    const-string v2, "Filter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "catch exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    :cond_25
    :goto_25
    if-eqz v1, :cond_2a

    .line 284
    invoke-interface {v1, p0, p1}, Landroid/media/tv/tuner/filter/FilterCallback;->onFilterStatusChanged(Landroid/media/tv/tuner/filter/Filter;I)V

    .line 286
    :cond_2a
    return-void

    .line 275
    :catchall_2b
    move-exception p1

    :try_start_2c
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    throw p1
.end method

.method private native blacklist nativeAcquireSharedFilterToken()Ljava/lang/String;
.end method

.method private native blacklist nativeClose()I
.end method

.method private native blacklist nativeConfigureFilter(IILandroid/media/tv/tuner/filter/FilterConfiguration;)I
.end method

.method private native blacklist nativeConfigureMonitorEvent(I)I
.end method

.method private native blacklist nativeFlushFilter()I
.end method

.method private native blacklist nativeFreeSharedFilterToken(Ljava/lang/String;)V
.end method

.method private native blacklist nativeGetId()I
.end method

.method private native blacklist nativeGetId64Bit()J
.end method

.method private native blacklist nativeRead([BJJ)I
.end method

.method private native blacklist nativeSetDataSizeDelayHint(I)I
.end method

.method private native blacklist nativeSetDataSource(Landroid/media/tv/tuner/filter/Filter;)I
.end method

.method private native blacklist nativeSetTimeDelayHint(I)I
.end method

.method private native blacklist nativeStartFilter()I
.end method

.method private native blacklist nativeStopFilter()I
.end method

.method private blacklist onFilterEvent([Landroid/media/tv/tuner/filter/FilterEvent;)V
    .registers 7

    .line 292
    iget-object v0, p0, Landroid/media/tv/tuner/filter/Filter;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 293
    :try_start_3
    iget-object v1, p0, Landroid/media/tv/tuner/filter/Filter;->mCallback:Landroid/media/tv/tuner/filter/FilterCallback;

    if-eqz v1, :cond_16

    iget-object v1, p0, Landroid/media/tv/tuner/filter/Filter;->mExecutor:Ljava/util/concurrent/Executor;

    if-eqz v1, :cond_16

    .line 294
    iget-object v1, p0, Landroid/media/tv/tuner/filter/Filter;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Landroid/media/tv/tuner/filter/Filter$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, p1}, Landroid/media/tv/tuner/filter/Filter$$ExternalSyntheticLambda1;-><init>(Landroid/media/tv/tuner/filter/Filter;[Landroid/media/tv/tuner/filter/FilterEvent;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_28

    .line 314
    :cond_16
    array-length v1, p1

    const/4 v2, 0x0

    :goto_18
    if-ge v2, v1, :cond_28

    aget-object v3, p1, v2

    .line 315
    instance-of v4, v3, Landroid/media/tv/tuner/filter/MediaEvent;

    if-eqz v4, :cond_25

    .line 316
    check-cast v3, Landroid/media/tv/tuner/filter/MediaEvent;

    invoke-virtual {v3}, Landroid/media/tv/tuner/filter/MediaEvent;->release()V

    .line 314
    :cond_25
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    .line 320
    :cond_28
    :goto_28
    monitor-exit v0

    .line 321
    return-void

    .line 320
    :catchall_2a
    move-exception p1

    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_3 .. :try_end_2c} :catchall_2a

    throw p1
.end method

.method private blacklist onFilterStatus(I)V
    .registers 5

    .line 269
    iget-object v0, p0, Landroid/media/tv/tuner/filter/Filter;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 270
    :try_start_3
    iget-object v1, p0, Landroid/media/tv/tuner/filter/Filter;->mCallback:Landroid/media/tv/tuner/filter/FilterCallback;

    if-eqz v1, :cond_15

    iget-object v1, p0, Landroid/media/tv/tuner/filter/Filter;->mExecutor:Ljava/util/concurrent/Executor;

    if-eqz v1, :cond_15

    .line 271
    iget-object v1, p0, Landroid/media/tv/tuner/filter/Filter;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Landroid/media/tv/tuner/filter/Filter$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1}, Landroid/media/tv/tuner/filter/Filter$$ExternalSyntheticLambda0;-><init>(Landroid/media/tv/tuner/filter/Filter;I)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 288
    :cond_15
    monitor-exit v0

    .line 289
    return-void

    .line 288
    :catchall_17
    move-exception p1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw p1
.end method


# virtual methods
.method public whitelist acquireSharedFilterToken()Ljava/lang/String;
    .registers 5

    .line 618
    iget-object v0, p0, Landroid/media/tv/tuner/filter/Filter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 619
    :try_start_3
    const-string v1, "Filter"

    iget-boolean v2, p0, Landroid/media/tv/tuner/filter/Filter;->mIsClosed:Z

    invoke-static {v1, v2}, Landroid/media/tv/tuner/TunerUtils;->checkResourceState(Ljava/lang/String;Z)V

    .line 620
    iget-boolean v1, p0, Landroid/media/tv/tuner/filter/Filter;->mIsStarted:Z

    if-nez v1, :cond_1e

    iget-boolean v1, p0, Landroid/media/tv/tuner/filter/Filter;->mIsShared:Z

    if-eqz v1, :cond_13

    goto :goto_1e

    .line 625
    :cond_13
    invoke-direct {p0}, Landroid/media/tv/tuner/filter/Filter;->nativeAcquireSharedFilterToken()Ljava/lang/String;

    move-result-object v1

    .line 626
    if-eqz v1, :cond_1c

    .line 627
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/media/tv/tuner/filter/Filter;->mIsShared:Z

    .line 629
    :cond_1c
    monitor-exit v0

    return-object v1

    .line 621
    :cond_1e
    :goto_1e
    const-string v1, "Filter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Acquire shared filter in a wrong state, started: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Landroid/media/tv/tuner/filter/Filter;->mIsStarted:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "shared: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Landroid/media/tv/tuner/filter/Filter;->mIsShared:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    .line 630
    :catchall_48
    move-exception v1

    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_3 .. :try_end_4a} :catchall_48

    throw v1
.end method

.method public whitelist test-api close()V
    .registers 4

    .line 592
    iget-object v0, p0, Landroid/media/tv/tuner/filter/Filter;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 593
    const/4 v1, 0x0

    :try_start_4
    iput-object v1, p0, Landroid/media/tv/tuner/filter/Filter;->mCallback:Landroid/media/tv/tuner/filter/FilterCallback;

    .line 594
    iput-object v1, p0, Landroid/media/tv/tuner/filter/Filter;->mExecutor:Ljava/util/concurrent/Executor;

    .line 595
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_29

    .line 597
    iget-object v1, p0, Landroid/media/tv/tuner/filter/Filter;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 598
    :try_start_c
    iget-boolean v0, p0, Landroid/media/tv/tuner/filter/Filter;->mIsClosed:Z

    if-eqz v0, :cond_12

    .line 599
    monitor-exit v1

    return-void

    .line 601
    :cond_12
    invoke-direct {p0}, Landroid/media/tv/tuner/filter/Filter;->nativeClose()I

    move-result v0

    .line 602
    if-eqz v0, :cond_1e

    .line 603
    const-string v2, "Failed to close filter."

    invoke-static {v0, v2}, Landroid/media/tv/tuner/TunerUtils;->throwExceptionForResult(ILjava/lang/String;)V

    goto :goto_24

    .line 605
    :cond_1e
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/tv/tuner/filter/Filter;->mIsStarted:Z

    .line 606
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/media/tv/tuner/filter/Filter;->mIsClosed:Z

    .line 608
    :goto_24
    monitor-exit v1

    .line 609
    return-void

    .line 608
    :catchall_26
    move-exception v0

    monitor-exit v1
    :try_end_28
    .catchall {:try_start_c .. :try_end_28} :catchall_26

    throw v0

    .line 595
    :catchall_29
    move-exception v1

    :try_start_2a
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_29

    throw v1
.end method

.method public whitelist configure(Landroid/media/tv/tuner/filter/FilterConfiguration;)I
    .registers 7

    .line 360
    iget-object v0, p0, Landroid/media/tv/tuner/filter/Filter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 361
    :try_start_3
    const-string v1, "Filter"

    iget-boolean v2, p0, Landroid/media/tv/tuner/filter/Filter;->mIsClosed:Z

    invoke-static {v1, v2}, Landroid/media/tv/tuner/TunerUtils;->checkResourceState(Ljava/lang/String;Z)V

    .line 362
    iget-boolean v1, p0, Landroid/media/tv/tuner/filter/Filter;->mIsShared:Z

    if-eqz v1, :cond_11

    .line 363
    monitor-exit v0

    const/4 p1, 0x3

    return p1

    .line 365
    :cond_11
    invoke-virtual {p1}, Landroid/media/tv/tuner/filter/FilterConfiguration;->getSettings()Landroid/media/tv/tuner/filter/Settings;

    move-result-object v1

    .line 366
    if-nez v1, :cond_1a

    iget v2, p0, Landroid/media/tv/tuner/filter/Filter;->mSubtype:I

    goto :goto_1e

    :cond_1a
    invoke-virtual {v1}, Landroid/media/tv/tuner/filter/Settings;->getType()I

    move-result v2

    .line 367
    :goto_1e
    iget v3, p0, Landroid/media/tv/tuner/filter/Filter;->mMainType:I

    invoke-virtual {p1}, Landroid/media/tv/tuner/filter/FilterConfiguration;->getType()I

    move-result v4

    if-ne v3, v4, :cond_6e

    iget v3, p0, Landroid/media/tv/tuner/filter/Filter;->mSubtype:I

    if-ne v3, v2, :cond_6e

    .line 373
    instance-of v3, v1, Landroid/media/tv/tuner/filter/RecordSettings;

    if-eqz v3, :cond_64

    check-cast v1, Landroid/media/tv/tuner/filter/RecordSettings;

    .line 374
    invoke-virtual {v1}, Landroid/media/tv/tuner/filter/RecordSettings;->getScIndexType()I

    move-result v1

    const/4 v3, 0x4

    if-ne v1, v3, :cond_64

    .line 375
    const/high16 v1, 0x30000

    invoke-static {v1}, Landroid/media/tv/tuner/TunerVersionChecker;->isHigherOrEqualVersionTo(I)Z

    move-result v1

    if-nez v1, :cond_64

    .line 377
    const-string p1, "Filter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tuner version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/media/tv/tuner/TunerVersionChecker;->getTunerVersion()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not support VVC"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    monitor-exit v0

    const/4 p1, 0x1

    return p1

    .line 381
    :cond_64
    invoke-virtual {p1}, Landroid/media/tv/tuner/filter/FilterConfiguration;->getType()I

    move-result v1

    invoke-direct {p0, v1, v2, p1}, Landroid/media/tv/tuner/filter/Filter;->nativeConfigureFilter(IILandroid/media/tv/tuner/filter/FilterConfiguration;)I

    move-result p1

    monitor-exit v0

    return p1

    .line 368
    :cond_6e
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid filter config. filter main type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/media/tv/tuner/filter/Filter;->mMainType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", filter subtype="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/media/tv/tuner/filter/Filter;->mSubtype:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". config main type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 370
    invoke-virtual {p1}, Landroid/media/tv/tuner/filter/FilterConfiguration;->getType()I

    move-result p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v3, ", config subtype="

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 382
    :catchall_ad
    move-exception p1

    monitor-exit v0
    :try_end_af
    .catchall {:try_start_3 .. :try_end_af} :catchall_ad

    throw p1
.end method

.method public whitelist delayCallbackForDurationMillis(J)I
    .registers 5

    .line 665
    const/high16 v0, 0x20000

    const-string/jumbo v1, "setTimeDelayHint"

    invoke-static {v0, v1}, Landroid/media/tv/tuner/TunerVersionChecker;->checkHigherOrEqualVersionTo(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 667
    const/4 p1, 0x1

    return p1

    .line 670
    :cond_d
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_27

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p1, v0

    if-gtz v0, :cond_27

    .line 671
    iget-object v0, p0, Landroid/media/tv/tuner/filter/Filter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 672
    long-to-int p1, p1

    :try_start_1e
    invoke-direct {p0, p1}, Landroid/media/tv/tuner/filter/Filter;->nativeSetTimeDelayHint(I)I

    move-result p1

    monitor-exit v0

    return p1

    .line 673
    :catchall_24
    move-exception p1

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_1e .. :try_end_26} :catchall_24

    throw p1

    .line 675
    :cond_27
    const/4 p1, 0x4

    return p1
.end method

.method public whitelist delayCallbackUntilBytesAccumulated(I)I
    .registers 4

    .line 695
    const/high16 v0, 0x20000

    const-string/jumbo v1, "setTimeDelayHint"

    invoke-static {v0, v1}, Landroid/media/tv/tuner/TunerVersionChecker;->checkHigherOrEqualVersionTo(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 697
    const/4 p1, 0x1

    return p1

    .line 700
    :cond_d
    iget-object v0, p0, Landroid/media/tv/tuner/filter/Filter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 701
    :try_start_10
    invoke-direct {p0, p1}, Landroid/media/tv/tuner/filter/Filter;->nativeSetDataSizeDelayHint(I)I

    move-result p1

    monitor-exit v0

    return p1

    .line 702
    :catchall_16
    move-exception p1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_10 .. :try_end_18} :catchall_16

    throw p1
.end method

.method public whitelist flush()I
    .registers 4

    .line 553
    iget-object v0, p0, Landroid/media/tv/tuner/filter/Filter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 554
    :try_start_3
    const-string v1, "Filter"

    iget-boolean v2, p0, Landroid/media/tv/tuner/filter/Filter;->mIsClosed:Z

    invoke-static {v1, v2}, Landroid/media/tv/tuner/TunerUtils;->checkResourceState(Ljava/lang/String;Z)V

    .line 555
    iget-boolean v1, p0, Landroid/media/tv/tuner/filter/Filter;->mIsShared:Z

    if-eqz v1, :cond_11

    .line 556
    monitor-exit v0

    const/4 v0, 0x3

    return v0

    .line 558
    :cond_11
    invoke-direct {p0}, Landroid/media/tv/tuner/filter/Filter;->nativeFlushFilter()I

    move-result v1

    monitor-exit v0

    return v1

    .line 559
    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw v1
.end method

.method public whitelist freeSharedFilterToken(Ljava/lang/String;)V
    .registers 5

    .line 639
    iget-object v0, p0, Landroid/media/tv/tuner/filter/Filter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 640
    :try_start_3
    const-string v1, "Filter"

    iget-boolean v2, p0, Landroid/media/tv/tuner/filter/Filter;->mIsClosed:Z

    invoke-static {v1, v2}, Landroid/media/tv/tuner/TunerUtils;->checkResourceState(Ljava/lang/String;Z)V

    .line 641
    iget-boolean v1, p0, Landroid/media/tv/tuner/filter/Filter;->mIsShared:Z

    if-nez v1, :cond_10

    .line 642
    monitor-exit v0

    return-void

    .line 644
    :cond_10
    invoke-direct {p0, p1}, Landroid/media/tv/tuner/filter/Filter;->nativeFreeSharedFilterToken(Ljava/lang/String;)V

    .line 645
    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/media/tv/tuner/filter/Filter;->mIsShared:Z

    .line 646
    monitor-exit v0

    .line 647
    return-void

    .line 646
    :catchall_18
    move-exception p1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw p1
.end method

.method public blacklist getCallback()Landroid/media/tv/tuner/filter/FilterCallback;
    .registers 3

    .line 339
    iget-object v0, p0, Landroid/media/tv/tuner/filter/Filter;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 340
    :try_start_3
    iget-object v1, p0, Landroid/media/tv/tuner/filter/Filter;->mCallback:Landroid/media/tv/tuner/filter/FilterCallback;

    monitor-exit v0

    return-object v1

    .line 341
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public whitelist getId()I
    .registers 4

    .line 391
    iget-object v0, p0, Landroid/media/tv/tuner/filter/Filter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 392
    :try_start_3
    const-string v1, "Filter"

    iget-boolean v2, p0, Landroid/media/tv/tuner/filter/Filter;->mIsClosed:Z

    invoke-static {v1, v2}, Landroid/media/tv/tuner/TunerUtils;->checkResourceState(Ljava/lang/String;Z)V

    .line 393
    invoke-direct {p0}, Landroid/media/tv/tuner/filter/Filter;->nativeGetId()I

    move-result v1

    monitor-exit v0

    return v1

    .line 394
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method

.method public whitelist getIdLong()J
    .registers 4

    .line 401
    iget-object v0, p0, Landroid/media/tv/tuner/filter/Filter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 402
    :try_start_3
    const-string v1, "Filter"

    iget-boolean v2, p0, Landroid/media/tv/tuner/filter/Filter;->mIsClosed:Z

    invoke-static {v1, v2}, Landroid/media/tv/tuner/TunerUtils;->checkResourceState(Ljava/lang/String;Z)V

    .line 403
    invoke-direct {p0}, Landroid/media/tv/tuner/filter/Filter;->nativeGetId64Bit()J

    move-result-wide v1

    monitor-exit v0

    return-wide v1

    .line 404
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method

.method public whitelist read([BJJ)I
    .registers 16

    .line 573
    iget-object v1, p0, Landroid/media/tv/tuner/filter/Filter;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 574
    :try_start_3
    const-string v0, "Filter"

    iget-boolean v2, p0, Landroid/media/tv/tuner/filter/Filter;->mIsClosed:Z

    invoke-static {v0, v2}, Landroid/media/tv/tuner/TunerUtils;->checkResourceState(Ljava/lang/String;Z)V

    .line 575
    iget-boolean v0, p0, Landroid/media/tv/tuner/filter/Filter;->mIsShared:Z

    if-eqz v0, :cond_11

    .line 576
    monitor-exit v1

    const/4 p1, 0x0

    return p1

    .line 578
    :cond_11
    array-length v0, p1

    int-to-long v2, v0

    sub-long/2addr v2, p2

    invoke-static {p4, p5, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    .line 579
    move-object v4, p0

    move-object v5, p1

    move-wide v6, p2

    invoke-direct/range {v4 .. v9}, Landroid/media/tv/tuner/filter/Filter;->nativeRead([BJJ)I

    move-result p1

    monitor-exit v1

    return p1

    .line 580
    :catchall_21
    move-exception v0

    move-object p1, v0

    monitor-exit v1
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_21

    throw p1
.end method

.method public blacklist setCallback(Landroid/media/tv/tuner/filter/FilterCallback;Ljava/util/concurrent/Executor;)V
    .registers 4

    .line 331
    iget-object v0, p0, Landroid/media/tv/tuner/filter/Filter;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 332
    :try_start_3
    iput-object p1, p0, Landroid/media/tv/tuner/filter/Filter;->mCallback:Landroid/media/tv/tuner/filter/FilterCallback;

    .line 333
    iput-object p2, p0, Landroid/media/tv/tuner/filter/Filter;->mExecutor:Ljava/util/concurrent/Executor;

    .line 334
    monitor-exit v0

    .line 335
    return-void

    .line 334
    :catchall_9
    move-exception p1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw p1
.end method

.method public whitelist setDataSource(Landroid/media/tv/tuner/filter/Filter;)I
    .registers 5

    .line 467
    iget-object v0, p0, Landroid/media/tv/tuner/filter/Filter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 468
    :try_start_3
    const-string v1, "Filter"

    iget-boolean v2, p0, Landroid/media/tv/tuner/filter/Filter;->mIsClosed:Z

    invoke-static {v1, v2}, Landroid/media/tv/tuner/TunerUtils;->checkResourceState(Ljava/lang/String;Z)V

    .line 469
    iget-boolean v1, p0, Landroid/media/tv/tuner/filter/Filter;->mIsShared:Z

    if-eqz v1, :cond_11

    .line 470
    monitor-exit v0

    const/4 p1, 0x3

    return p1

    .line 472
    :cond_11
    iget-object v1, p0, Landroid/media/tv/tuner/filter/Filter;->mSource:Landroid/media/tv/tuner/filter/Filter;

    if-nez v1, :cond_1f

    .line 475
    invoke-direct {p0, p1}, Landroid/media/tv/tuner/filter/Filter;->nativeSetDataSource(Landroid/media/tv/tuner/filter/Filter;)I

    move-result v1

    .line 476
    if-nez v1, :cond_1d

    .line 477
    iput-object p1, p0, Landroid/media/tv/tuner/filter/Filter;->mSource:Landroid/media/tv/tuner/filter/Filter;

    .line 479
    :cond_1d
    monitor-exit v0

    return v1

    .line 473
    :cond_1f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v1, "Data source is existing"

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 480
    :catchall_27
    move-exception p1

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_27

    throw p1
.end method

.method public whitelist setMonitorEventMask(I)I
    .registers 5

    .line 437
    iget-object v0, p0, Landroid/media/tv/tuner/filter/Filter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 438
    :try_start_3
    const-string v1, "Filter"

    iget-boolean v2, p0, Landroid/media/tv/tuner/filter/Filter;->mIsClosed:Z

    invoke-static {v1, v2}, Landroid/media/tv/tuner/TunerUtils;->checkResourceState(Ljava/lang/String;Z)V

    .line 439
    iget-boolean v1, p0, Landroid/media/tv/tuner/filter/Filter;->mIsShared:Z

    if-eqz v1, :cond_11

    .line 440
    monitor-exit v0

    const/4 p1, 0x3

    return p1

    .line 442
    :cond_11
    const-string/jumbo v1, "setMonitorEventMask"

    const v2, 0x10001

    invoke-static {v2, v1}, Landroid/media/tv/tuner/TunerVersionChecker;->checkHigherOrEqualVersionTo(ILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_20

    .line 444
    monitor-exit v0

    const/4 p1, 0x1

    return p1

    .line 446
    :cond_20
    invoke-direct {p0, p1}, Landroid/media/tv/tuner/filter/Filter;->nativeConfigureMonitorEvent(I)I

    move-result p1

    monitor-exit v0

    return p1

    .line 447
    :catchall_26
    move-exception p1

    monitor-exit v0
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_26

    throw p1
.end method

.method public blacklist setType(II)V
    .registers 3

    .line 325
    iput p1, p0, Landroid/media/tv/tuner/filter/Filter;->mMainType:I

    .line 326
    invoke-static {p1, p2}, Landroid/media/tv/tuner/TunerUtils;->getFilterSubtype(II)I

    move-result p1

    iput p1, p0, Landroid/media/tv/tuner/filter/Filter;->mSubtype:I

    .line 327
    return-void
.end method

.method public whitelist start()I
    .registers 4

    .line 498
    iget-object v0, p0, Landroid/media/tv/tuner/filter/Filter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 499
    :try_start_3
    const-string v1, "Filter"

    iget-boolean v2, p0, Landroid/media/tv/tuner/filter/Filter;->mIsClosed:Z

    invoke-static {v1, v2}, Landroid/media/tv/tuner/TunerUtils;->checkResourceState(Ljava/lang/String;Z)V

    .line 500
    iget-boolean v1, p0, Landroid/media/tv/tuner/filter/Filter;->mIsShared:Z

    if-eqz v1, :cond_11

    .line 501
    monitor-exit v0

    const/4 v0, 0x3

    return v0

    .line 503
    :cond_11
    invoke-direct {p0}, Landroid/media/tv/tuner/filter/Filter;->nativeStartFilter()I

    move-result v1

    .line 504
    if-nez v1, :cond_1a

    .line 505
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/media/tv/tuner/filter/Filter;->mIsStarted:Z

    .line 507
    :cond_1a
    monitor-exit v0

    return v1

    .line 508
    :catchall_1c
    move-exception v1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method public whitelist stop()I
    .registers 4

    .line 528
    iget-object v0, p0, Landroid/media/tv/tuner/filter/Filter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 529
    :try_start_3
    const-string v1, "Filter"

    iget-boolean v2, p0, Landroid/media/tv/tuner/filter/Filter;->mIsClosed:Z

    invoke-static {v1, v2}, Landroid/media/tv/tuner/TunerUtils;->checkResourceState(Ljava/lang/String;Z)V

    .line 530
    iget-boolean v1, p0, Landroid/media/tv/tuner/filter/Filter;->mIsShared:Z

    if-eqz v1, :cond_11

    .line 531
    monitor-exit v0

    const/4 v0, 0x3

    return v0

    .line 533
    :cond_11
    invoke-direct {p0}, Landroid/media/tv/tuner/filter/Filter;->nativeStopFilter()I

    move-result v1

    .line 534
    if-nez v1, :cond_1a

    .line 535
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/media/tv/tuner/filter/Filter;->mIsStarted:Z

    .line 537
    :cond_1a
    monitor-exit v0

    return v1

    .line 538
    :catchall_1c
    move-exception v1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw v1
.end method
