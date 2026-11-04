.class final Landroid/speech/tts/SynthesisPlaybackQueueItem;
.super Landroid/speech/tts/PlaybackQueueItem;
.source "SynthesisPlaybackQueueItem.java"

# interfaces
.implements Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/speech/tts/SynthesisPlaybackQueueItem$ProgressMarker;,
        Landroid/speech/tts/SynthesisPlaybackQueueItem$ListEntry;
    }
.end annotation


# static fields
.field private static final blacklist DBG:Z = false

.field private static final blacklist MAX_UNCONSUMED_AUDIO_MS:J = 0x1f4L

.field private static final blacklist NOT_RUN:I = 0x0

.field private static final blacklist RUN_CALLED:I = 0x1

.field private static final blacklist STOP_CALLED:I = 0x2

.field private static final blacklist TAG:Ljava/lang/String; = "TTS.SynthQueueItem"


# instance fields
.field private final blacklist mAudioTrack:Landroid/speech/tts/BlockingAudioTrack;

.field private final blacklist mDataBufferList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Landroid/speech/tts/SynthesisPlaybackQueueItem$ListEntry;",
            ">;"
        }
    .end annotation
.end field

.field private volatile blacklist mDone:Z

.field private final blacklist mListLock:Ljava/util/concurrent/locks/Lock;

.field private final blacklist mLogger:Landroid/speech/tts/AbstractEventLogger;

.field private final blacklist mNotFull:Ljava/util/concurrent/locks/Condition;

.field private final blacklist mReadReady:Ljava/util/concurrent/locks/Condition;

.field private final blacklist mRunState:Ljava/util/concurrent/atomic/AtomicInteger;

.field private volatile blacklist mStatusCode:I

.field private volatile blacklist mStopped:Z

.field private blacklist mUnconsumedBytes:I

.field private blacklist markerList:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Landroid/speech/tts/SynthesisPlaybackQueueItem$ProgressMarker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>(Landroid/speech/tts/TextToSpeechService$AudioOutputParams;IIILandroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;Ljava/lang/Object;Landroid/speech/tts/AbstractEventLogger;)V
    .registers 8

    .line 82
    invoke-direct {p0, p5, p6}, Landroid/speech/tts/PlaybackQueueItem;-><init>(Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;Ljava/lang/Object;)V

    .line 49
    new-instance p5, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p5}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object p5, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mListLock:Ljava/util/concurrent/locks/Lock;

    .line 50
    iget-object p5, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mListLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p5}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object p5

    iput-object p5, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mReadReady:Ljava/util/concurrent/locks/Condition;

    .line 51
    iget-object p5, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mListLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p5}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object p5

    iput-object p5, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mNotFull:Ljava/util/concurrent/locks/Condition;

    .line 54
    new-instance p5, Ljava/util/LinkedList;

    invoke-direct {p5}, Ljava/util/LinkedList;-><init>()V

    iput-object p5, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mDataBufferList:Ljava/util/LinkedList;

    .line 72
    new-instance p5, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p5}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object p5, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->markerList:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 77
    new-instance p5, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 p6, 0x0

    invoke-direct {p5, p6}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p5, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mRunState:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 84
    iput p6, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mUnconsumedBytes:I

    .line 86
    iput-boolean p6, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mStopped:Z

    .line 87
    iput-boolean p6, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mDone:Z

    .line 88
    iput p6, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mStatusCode:I

    .line 90
    new-instance p5, Landroid/speech/tts/BlockingAudioTrack;

    invoke-direct {p5, p1, p2, p3, p4}, Landroid/speech/tts/BlockingAudioTrack;-><init>(Landroid/speech/tts/TextToSpeechService$AudioOutputParams;III)V

    iput-object p5, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mAudioTrack:Landroid/speech/tts/BlockingAudioTrack;

    .line 91
    iput-object p7, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mLogger:Landroid/speech/tts/AbstractEventLogger;

    .line 92
    return-void
.end method

.method private blacklist dispatchEndStatus()V
    .registers 4

    .line 138
    invoke-virtual {p0}, Landroid/speech/tts/SynthesisPlaybackQueueItem;->getDispatcher()Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;

    move-result-object v0

    .line 140
    iget v1, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mStatusCode:I

    if-nez v1, :cond_c

    .line 141
    invoke-interface {v0}, Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;->dispatchOnSuccess()V

    goto :goto_1a

    .line 142
    :cond_c
    iget v1, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mStatusCode:I

    const/4 v2, -0x2

    if-ne v1, v2, :cond_15

    .line 143
    invoke-interface {v0}, Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;->dispatchOnStop()V

    goto :goto_1a

    .line 145
    :cond_15
    iget v1, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mStatusCode:I

    invoke-interface {v0, v1}, Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;->dispatchOnError(I)V

    .line 148
    :goto_1a
    iget-object v0, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mLogger:Landroid/speech/tts/AbstractEventLogger;

    iget v1, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mStatusCode:I

    invoke-virtual {v0, v1}, Landroid/speech/tts/AbstractEventLogger;->onCompleted(I)V

    .line 149
    return-void
.end method

.method private blacklist take()[B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 288
    :try_start_0
    iget-object v0, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mListLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 292
    :goto_5
    iget-object v0, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mDataBufferList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-nez v0, :cond_1b

    iget-boolean v0, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mStopped:Z

    if-nez v0, :cond_1b

    iget-boolean v0, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mDone:Z

    if-nez v0, :cond_1b

    .line 293
    iget-object v0, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mReadReady:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->await()V

    goto :goto_5

    .line 298
    :cond_1b
    iget-boolean v0, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mStopped:Z
    :try_end_1d
    .catchall {:try_start_0 .. :try_end_1d} :catchall_4d

    const/4 v1, 0x0

    if-eqz v0, :cond_27

    .line 299
    nop

    .line 319
    iget-object v0, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mListLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 299
    return-object v1

    .line 303
    :cond_27
    :try_start_27
    iget-object v0, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mDataBufferList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/speech/tts/SynthesisPlaybackQueueItem$ListEntry;
    :try_end_2f
    .catchall {:try_start_27 .. :try_end_2f} :catchall_4d

    .line 307
    if-nez v0, :cond_38

    .line 308
    nop

    .line 319
    iget-object v0, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mListLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 308
    return-object v1

    .line 311
    :cond_38
    :try_start_38
    iget v1, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mUnconsumedBytes:I

    iget-object v2, v0, Landroid/speech/tts/SynthesisPlaybackQueueItem$ListEntry;->mBytes:[B

    array-length v2, v2

    sub-int/2addr v1, v2

    iput v1, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mUnconsumedBytes:I

    .line 315
    iget-object v1, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mNotFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->signal()V

    .line 317
    iget-object v0, v0, Landroid/speech/tts/SynthesisPlaybackQueueItem$ListEntry;->mBytes:[B
    :try_end_47
    .catchall {:try_start_38 .. :try_end_47} :catchall_4d

    .line 319
    iget-object v1, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mListLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 317
    return-object v0

    .line 319
    :catchall_4d
    move-exception v0

    iget-object v1, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mListLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 320
    throw v0
.end method


# virtual methods
.method blacklist done()V
    .registers 3

    .line 190
    :try_start_0
    iget-object v0, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mListLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 193
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mDone:Z

    .line 198
    iget-object v0, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mReadReady:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V

    .line 204
    iget-object v0, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mNotFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_12
    .catchall {:try_start_0 .. :try_end_12} :catchall_19

    .line 206
    iget-object v0, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mListLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 207
    nop

    .line 208
    return-void

    .line 206
    :catchall_19
    move-exception v0

    iget-object v1, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mListLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 207
    throw v0
.end method

.method public whitelist onMarkerReached(Landroid/media/AudioTrack;)V
    .registers 5

    .line 245
    iget-object p1, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->markerList:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/speech/tts/SynthesisPlaybackQueueItem$ProgressMarker;

    .line 246
    if-nez p1, :cond_13

    .line 247
    const-string p1, "TTS.SynthQueueItem"

    const-string/jumbo v0, "onMarkerReached reached called but no marker in queue"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    return-void

    .line 251
    :cond_13
    invoke-virtual {p0}, Landroid/speech/tts/SynthesisPlaybackQueueItem;->getDispatcher()Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;

    move-result-object v0

    iget v1, p1, Landroid/speech/tts/SynthesisPlaybackQueueItem$ProgressMarker;->start:I

    iget v2, p1, Landroid/speech/tts/SynthesisPlaybackQueueItem$ProgressMarker;->end:I

    iget p1, p1, Landroid/speech/tts/SynthesisPlaybackQueueItem$ProgressMarker;->frames:I

    invoke-interface {v0, v1, v2, p1}, Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;->dispatchOnRangeStart(III)V

    .line 254
    invoke-virtual {p0}, Landroid/speech/tts/SynthesisPlaybackQueueItem;->updateMarker()V

    .line 255
    return-void
.end method

.method public whitelist onPeriodicNotification(Landroid/media/AudioTrack;)V
    .registers 2

    .line 258
    return-void
.end method

.method blacklist put([B)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 262
    :try_start_0
    iget-object v0, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mListLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 263
    nop

    .line 265
    :goto_6
    iget-object v0, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mAudioTrack:Landroid/speech/tts/BlockingAudioTrack;

    iget v1, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mUnconsumedBytes:I

    invoke-virtual {v0, v1}, Landroid/speech/tts/BlockingAudioTrack;->getAudioLengthMs(I)J

    move-result-wide v0

    const-wide/16 v2, 0x1f4

    cmp-long v0, v0, v2

    if-lez v0, :cond_1e

    iget-boolean v0, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mStopped:Z

    if-nez v0, :cond_1e

    .line 267
    iget-object v0, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mNotFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->await()V

    goto :goto_6

    .line 274
    :cond_1e
    iget-boolean v0, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mStopped:Z
    :try_end_20
    .catchall {:try_start_0 .. :try_end_20} :catchall_44

    if-eqz v0, :cond_28

    .line 282
    iget-object p1, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mListLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 275
    return-void

    .line 278
    :cond_28
    :try_start_28
    iget-object v0, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mDataBufferList:Ljava/util/LinkedList;

    new-instance v1, Landroid/speech/tts/SynthesisPlaybackQueueItem$ListEntry;

    invoke-direct {v1, p1}, Landroid/speech/tts/SynthesisPlaybackQueueItem$ListEntry;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 279
    iget v0, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mUnconsumedBytes:I

    array-length p1, p1

    add-int/2addr v0, p1

    iput v0, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mUnconsumedBytes:I

    .line 280
    iget-object p1, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mReadReady:Ljava/util/concurrent/locks/Condition;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_3d
    .catchall {:try_start_28 .. :try_end_3d} :catchall_44

    .line 282
    iget-object p1, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mListLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 283
    nop

    .line 284
    return-void

    .line 282
    :catchall_44
    move-exception p1

    iget-object v0, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mListLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 283
    throw p1
.end method

.method blacklist rangeStart(III)V
    .registers 6

    .line 239
    iget-object v0, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->markerList:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v1, Landroid/speech/tts/SynthesisPlaybackQueueItem$ProgressMarker;

    invoke-direct {v1, p0, p1, p2, p3}, Landroid/speech/tts/SynthesisPlaybackQueueItem$ProgressMarker;-><init>(Landroid/speech/tts/SynthesisPlaybackQueueItem;III)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 240
    invoke-virtual {p0}, Landroid/speech/tts/SynthesisPlaybackQueueItem;->updateMarker()V

    .line 241
    return-void
.end method

.method public whitelist test-api run()V
    .registers 4

    .line 97
    iget-object v0, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mRunState:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-nez v0, :cond_b

    .line 99
    return-void

    .line 102
    :cond_b
    invoke-virtual {p0}, Landroid/speech/tts/SynthesisPlaybackQueueItem;->getDispatcher()Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;

    move-result-object v0

    .line 103
    invoke-interface {v0}, Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;->dispatchOnStart()V

    .line 105
    iget-object v1, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mAudioTrack:Landroid/speech/tts/BlockingAudioTrack;

    invoke-virtual {v1}, Landroid/speech/tts/BlockingAudioTrack;->init()Z

    move-result v1

    if-nez v1, :cond_1f

    .line 106
    const/4 v1, -0x5

    invoke-interface {v0, v1}, Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;->dispatchOnError(I)V

    .line 107
    return-void

    .line 110
    :cond_1f
    iget-object v0, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mAudioTrack:Landroid/speech/tts/BlockingAudioTrack;

    invoke-virtual {v0, p0}, Landroid/speech/tts/BlockingAudioTrack;->setPlaybackPositionUpdateListener(Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;)V

    .line 112
    invoke-virtual {p0}, Landroid/speech/tts/SynthesisPlaybackQueueItem;->updateMarker()V

    .line 115
    nop

    .line 123
    :goto_28
    :try_start_28
    invoke-direct {p0}, Landroid/speech/tts/SynthesisPlaybackQueueItem;->take()[B

    move-result-object v0

    if-eqz v0, :cond_39

    .line 124
    iget-object v1, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mAudioTrack:Landroid/speech/tts/BlockingAudioTrack;

    invoke-virtual {v1, v0}, Landroid/speech/tts/BlockingAudioTrack;->write([B)I

    .line 125
    iget-object v0, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mLogger:Landroid/speech/tts/AbstractEventLogger;

    invoke-virtual {v0}, Landroid/speech/tts/AbstractEventLogger;->onAudioDataWritten()V
    :try_end_38
    .catch Ljava/lang/InterruptedException; {:try_start_28 .. :try_end_38} :catch_3a

    goto :goto_28

    .line 130
    :cond_39
    goto :goto_3b

    .line 128
    :catch_3a
    move-exception v0

    .line 132
    :goto_3b
    iget-object v0, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mAudioTrack:Landroid/speech/tts/BlockingAudioTrack;

    invoke-virtual {v0}, Landroid/speech/tts/BlockingAudioTrack;->waitAndRelease()V

    .line 134
    invoke-direct {p0}, Landroid/speech/tts/SynthesisPlaybackQueueItem;->dispatchEndStatus()V

    .line 135
    return-void
.end method

.method blacklist stop(I)V
    .registers 3

    .line 154
    :try_start_0
    iget-object v0, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mListLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 157
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mStopped:Z

    .line 158
    iput p1, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mStatusCode:I

    .line 165
    iget-object p1, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mNotFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Condition;->signal()V

    .line 167
    iget-object p1, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mRunState:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result p1

    if-nez p1, :cond_21

    .line 170
    invoke-direct {p0}, Landroid/speech/tts/SynthesisPlaybackQueueItem;->dispatchEndStatus()V
    :try_end_1b
    .catchall {:try_start_0 .. :try_end_1b} :catchall_32

    .line 179
    iget-object p1, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mListLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 171
    return-void

    .line 177
    :cond_21
    :try_start_21
    iget-object p1, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mReadReady:Ljava/util/concurrent/locks/Condition;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_26
    .catchall {:try_start_21 .. :try_end_26} :catchall_32

    .line 179
    iget-object p1, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mListLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 180
    nop

    .line 185
    iget-object p1, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mAudioTrack:Landroid/speech/tts/BlockingAudioTrack;

    invoke-virtual {p1}, Landroid/speech/tts/BlockingAudioTrack;->stop()V

    .line 186
    return-void

    .line 179
    :catchall_32
    move-exception p1

    iget-object v0, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mListLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 180
    throw p1
.end method

.method blacklist updateMarker()V
    .registers 3

    .line 228
    iget-object v0, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->markerList:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/speech/tts/SynthesisPlaybackQueueItem$ProgressMarker;

    .line 229
    if-eqz v0, :cond_17

    .line 232
    iget v1, v0, Landroid/speech/tts/SynthesisPlaybackQueueItem$ProgressMarker;->frames:I

    if-nez v1, :cond_10

    const/4 v0, 0x1

    goto :goto_12

    :cond_10
    iget v0, v0, Landroid/speech/tts/SynthesisPlaybackQueueItem$ProgressMarker;->frames:I

    .line 233
    :goto_12
    iget-object v1, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mAudioTrack:Landroid/speech/tts/BlockingAudioTrack;

    invoke-virtual {v1, v0}, Landroid/speech/tts/BlockingAudioTrack;->setNotificationMarkerPosition(I)V

    .line 235
    :cond_17
    return-void
.end method
