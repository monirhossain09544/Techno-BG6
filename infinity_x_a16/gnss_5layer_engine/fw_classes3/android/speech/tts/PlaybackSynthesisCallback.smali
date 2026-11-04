.class Landroid/speech/tts/PlaybackSynthesisCallback;
.super Landroid/speech/tts/AbstractSynthesisCallback;
.source "PlaybackSynthesisCallback.java"


# static fields
.field private static final blacklist DBG:Z = false

.field private static final blacklist MIN_AUDIO_BUFFER_SIZE:I = 0x2000

.field private static final blacklist TAG:Ljava/lang/String; = "PlaybackSynthesisRequest"


# instance fields
.field private final blacklist mAudioParams:Landroid/speech/tts/TextToSpeechService$AudioOutputParams;

.field private final blacklist mAudioTrackHandler:Landroid/speech/tts/AudioPlaybackHandler;

.field private final blacklist mCallerIdentity:Ljava/lang/Object;

.field private final blacklist mDispatcher:Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;

.field private volatile blacklist mDone:Z

.field private blacklist mItem:Landroid/speech/tts/SynthesisPlaybackQueueItem;

.field private final blacklist mLogger:Landroid/speech/tts/AbstractEventLogger;

.field private final blacklist mStateLock:Ljava/lang/Object;

.field protected blacklist mStatusCode:I


# direct methods
.method constructor blacklist <init>(Landroid/speech/tts/TextToSpeechService$AudioOutputParams;Landroid/speech/tts/AudioPlaybackHandler;Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;Ljava/lang/Object;Landroid/speech/tts/AbstractEventLogger;Z)V
    .registers 7

    .line 59
    invoke-direct {p0, p6}, Landroid/speech/tts/AbstractSynthesisCallback;-><init>(Z)V

    .line 39
    new-instance p6, Ljava/lang/Object;

    invoke-direct {p6}, Ljava/lang/Object;-><init>()V

    iput-object p6, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mStateLock:Ljava/lang/Object;

    .line 44
    const/4 p6, 0x0

    iput-object p6, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mItem:Landroid/speech/tts/SynthesisPlaybackQueueItem;

    .line 46
    const/4 p6, 0x0

    iput-boolean p6, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mDone:Z

    .line 60
    iput-object p1, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mAudioParams:Landroid/speech/tts/TextToSpeechService$AudioOutputParams;

    .line 61
    iput-object p2, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mAudioTrackHandler:Landroid/speech/tts/AudioPlaybackHandler;

    .line 62
    iput-object p3, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mDispatcher:Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;

    .line 63
    iput-object p4, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mCallerIdentity:Ljava/lang/Object;

    .line 64
    iput-object p5, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mLogger:Landroid/speech/tts/AbstractEventLogger;

    .line 65
    iput p6, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mStatusCode:I

    .line 66
    return-void
.end method


# virtual methods
.method public whitelist audioAvailable([BII)I
    .registers 9

    .line 172
    invoke-virtual {p0}, Landroid/speech/tts/PlaybackSynthesisCallback;->getMaxBufferSize()I

    move-result v0

    if-gt p3, v0, :cond_4d

    if-lez p3, :cond_4d

    .line 177
    nop

    .line 178
    iget-object v0, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 179
    :try_start_c
    iget-object v1, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mItem:Landroid/speech/tts/SynthesisPlaybackQueueItem;

    const/4 v2, -0x5

    const/4 v3, -0x1

    if-nez v1, :cond_16

    .line 180
    iput v2, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mStatusCode:I

    .line 181
    monitor-exit v0

    return v3

    .line 183
    :cond_16
    iget v1, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mStatusCode:I

    if-eqz v1, :cond_1c

    .line 185
    monitor-exit v0

    return v3

    .line 187
    :cond_1c
    iget v1, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mStatusCode:I

    const/4 v4, -0x2

    if-ne v1, v4, :cond_27

    .line 188
    invoke-virtual {p0}, Landroid/speech/tts/PlaybackSynthesisCallback;->errorCodeOnStop()I

    move-result p1

    monitor-exit v0

    return p1

    .line 190
    :cond_27
    iget-object v1, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mItem:Landroid/speech/tts/SynthesisPlaybackQueueItem;

    .line 191
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_c .. :try_end_2a} :catchall_4a

    .line 194
    new-array v0, p3, [B

    .line 195
    const/4 v4, 0x0

    invoke-static {p1, p2, v0, v4, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 196
    iget-object p1, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mDispatcher:Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;

    invoke-interface {p1, v0}, Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;->dispatchOnAudioAvailable([B)V

    .line 201
    :try_start_35
    invoke-virtual {v1, v0}, Landroid/speech/tts/SynthesisPlaybackQueueItem;->put([B)V
    :try_end_38
    .catch Ljava/lang/InterruptedException; {:try_start_35 .. :try_end_38} :catch_3f

    .line 207
    nop

    .line 209
    iget-object p1, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mLogger:Landroid/speech/tts/AbstractEventLogger;

    invoke-virtual {p1}, Landroid/speech/tts/AbstractEventLogger;->onEngineDataReceived()V

    .line 210
    return v4

    .line 202
    :catch_3f
    move-exception p1

    .line 203
    iget-object p1, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mStateLock:Ljava/lang/Object;

    monitor-enter p1

    .line 204
    :try_start_43
    iput v2, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mStatusCode:I

    .line 205
    monitor-exit p1

    return v3

    .line 206
    :catchall_47
    move-exception p2

    monitor-exit p1
    :try_end_49
    .catchall {:try_start_43 .. :try_end_49} :catchall_47

    throw p2

    .line 191
    :catchall_4a
    move-exception p1

    :try_start_4b
    monitor-exit v0
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_4a

    throw p1

    .line 173
    :cond_4d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "buffer is too large or of zero length ("

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " bytes)"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist done()I
    .registers 5

    .line 217
    nop

    .line 218
    nop

    .line 219
    iget-object v0, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 220
    :try_start_5
    iget-boolean v1, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mDone:Z

    const/4 v2, -0x1

    if-eqz v1, :cond_13

    .line 221
    const-string v1, "PlaybackSynthesisRequest"

    const-string v3, "Duplicate call to done()"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    monitor-exit v0

    return v2

    .line 226
    :cond_13
    iget v1, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mStatusCode:I

    const/4 v3, -0x2

    if-ne v1, v3, :cond_1e

    .line 228
    invoke-virtual {p0}, Landroid/speech/tts/PlaybackSynthesisCallback;->errorCodeOnStop()I

    move-result v1

    monitor-exit v0

    return v1

    .line 230
    :cond_1e
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mDone:Z

    .line 232
    iget-object v1, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mItem:Landroid/speech/tts/SynthesisPlaybackQueueItem;

    if-nez v1, :cond_44

    .line 235
    const-string v1, "PlaybackSynthesisRequest"

    const-string v3, "done() was called before start() call"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    iget v1, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mStatusCode:I

    if-nez v1, :cond_36

    .line 237
    iget-object v1, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mDispatcher:Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;

    invoke-interface {v1}, Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;->dispatchOnSuccess()V

    goto :goto_3d

    .line 239
    :cond_36
    iget-object v1, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mDispatcher:Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;

    iget v3, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mStatusCode:I

    invoke-interface {v1, v3}, Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;->dispatchOnError(I)V

    .line 241
    :goto_3d
    iget-object v1, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mLogger:Landroid/speech/tts/AbstractEventLogger;

    invoke-virtual {v1}, Landroid/speech/tts/AbstractEventLogger;->onEngineComplete()V

    .line 242
    monitor-exit v0

    return v2

    .line 245
    :cond_44
    iget-object v1, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mItem:Landroid/speech/tts/SynthesisPlaybackQueueItem;

    .line 246
    iget v2, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mStatusCode:I

    .line 247
    monitor-exit v0
    :try_end_49
    .catchall {:try_start_5 .. :try_end_49} :catchall_59

    .line 250
    if-nez v2, :cond_4f

    .line 251
    invoke-virtual {v1}, Landroid/speech/tts/SynthesisPlaybackQueueItem;->done()V

    goto :goto_52

    .line 253
    :cond_4f
    invoke-virtual {v1, v2}, Landroid/speech/tts/SynthesisPlaybackQueueItem;->stop(I)V

    .line 255
    :goto_52
    iget-object v0, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mLogger:Landroid/speech/tts/AbstractEventLogger;

    invoke-virtual {v0}, Landroid/speech/tts/AbstractEventLogger;->onEngineComplete()V

    .line 256
    const/4 v0, 0x0

    return v0

    .line 247
    :catchall_59
    move-exception v1

    :try_start_5a
    monitor-exit v0
    :try_end_5b
    .catchall {:try_start_5a .. :try_end_5b} :catchall_59

    throw v1
.end method

.method public whitelist error()V
    .registers 2

    .line 261
    const/4 v0, -0x3

    invoke-virtual {p0, v0}, Landroid/speech/tts/PlaybackSynthesisCallback;->error(I)V

    .line 262
    return-void
.end method

.method public whitelist error(I)V
    .registers 4

    .line 267
    iget-object v0, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 268
    :try_start_3
    iget-boolean v1, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mDone:Z

    if-eqz v1, :cond_9

    .line 269
    monitor-exit v0

    return-void

    .line 271
    :cond_9
    iput p1, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mStatusCode:I

    .line 272
    monitor-exit v0

    .line 273
    return-void

    .line 272
    :catchall_d
    move-exception p1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p1
.end method

.method public whitelist getMaxBufferSize()I
    .registers 2

    .line 107
    const/16 v0, 0x2000

    return v0
.end method

.method public whitelist hasFinished()Z
    .registers 3

    .line 119
    iget-object v0, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 120
    :try_start_3
    iget-boolean v1, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mDone:Z

    monitor-exit v0

    return v1

    .line 121
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public whitelist hasStarted()Z
    .registers 3

    .line 112
    iget-object v0, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 113
    :try_start_3
    iget-object v1, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mItem:Landroid/speech/tts/SynthesisPlaybackQueueItem;

    if-eqz v1, :cond_9

    const/4 v1, 0x1

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    monitor-exit v0

    return v1

    .line 114
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public whitelist rangeStart(III)V
    .registers 5

    .line 277
    iget-object v0, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mItem:Landroid/speech/tts/SynthesisPlaybackQueueItem;

    if-nez v0, :cond_c

    .line 278
    const-string p1, "PlaybackSynthesisRequest"

    const-string p2, "mItem is null"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    return-void

    .line 281
    :cond_c
    iget-object v0, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mItem:Landroid/speech/tts/SynthesisPlaybackQueueItem;

    invoke-virtual {v0, p1, p2, p3}, Landroid/speech/tts/SynthesisPlaybackQueueItem;->rangeStart(III)V

    .line 282
    return-void
.end method

.method public whitelist start(III)I
    .registers 14

    .line 128
    const/4 v0, 0x3

    if-eq p2, v0, :cond_27

    const/4 v0, 0x2

    if-eq p2, v0, :cond_27

    const/4 v0, 0x4

    if-eq p2, v0, :cond_27

    .line 131
    const-string v0, "PlaybackSynthesisRequest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Audio format encoding "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not supported. Please use one of AudioFormat.ENCODING_PCM_8BIT, AudioFormat.ENCODING_PCM_16BIT or AudioFormat.ENCODING_PCM_FLOAT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    :cond_27
    iget-object v0, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mDispatcher:Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;

    invoke-interface {v0, p1, p2, p3}, Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;->dispatchOnBeginSynthesis(III)V

    .line 137
    invoke-static {p3}, Landroid/speech/tts/BlockingAudioTrack;->getChannelConfig(I)I

    move-result v0

    .line 139
    iget-object v1, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 140
    const/4 v2, -0x1

    if-nez v0, :cond_53

    .line 141
    :try_start_36
    const-string p1, "PlaybackSynthesisRequest"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unsupported number of channels :"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    const/4 p1, -0x5

    iput p1, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mStatusCode:I

    .line 143
    monitor-exit v1

    return v2

    .line 145
    :cond_53
    iget v0, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mStatusCode:I

    const/4 v3, -0x2

    if-ne v0, v3, :cond_5e

    .line 147
    invoke-virtual {p0}, Landroid/speech/tts/PlaybackSynthesisCallback;->errorCodeOnStop()I

    move-result p1

    monitor-exit v1

    return p1

    .line 149
    :cond_5e
    iget v0, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mStatusCode:I

    if-eqz v0, :cond_64

    .line 151
    monitor-exit v1

    return v2

    .line 153
    :cond_64
    iget-object v0, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mItem:Landroid/speech/tts/SynthesisPlaybackQueueItem;

    if-eqz v0, :cond_71

    .line 154
    const-string p1, "PlaybackSynthesisRequest"

    const-string p2, "Start called twice"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    monitor-exit v1

    return v2

    .line 157
    :cond_71
    new-instance v2, Landroid/speech/tts/SynthesisPlaybackQueueItem;

    iget-object v3, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mAudioParams:Landroid/speech/tts/TextToSpeechService$AudioOutputParams;

    iget-object v7, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mDispatcher:Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;

    iget-object v8, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mCallerIdentity:Ljava/lang/Object;

    iget-object v9, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mLogger:Landroid/speech/tts/AbstractEventLogger;

    move v4, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v2 .. v9}, Landroid/speech/tts/SynthesisPlaybackQueueItem;-><init>(Landroid/speech/tts/TextToSpeechService$AudioOutputParams;IIILandroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;Ljava/lang/Object;Landroid/speech/tts/AbstractEventLogger;)V

    .line 160
    iget-object p1, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mAudioTrackHandler:Landroid/speech/tts/AudioPlaybackHandler;

    invoke-virtual {p1, v2}, Landroid/speech/tts/AudioPlaybackHandler;->enqueue(Landroid/speech/tts/PlaybackQueueItem;)V

    .line 161
    iput-object v2, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mItem:Landroid/speech/tts/SynthesisPlaybackQueueItem;

    .line 162
    monitor-exit v1

    .line 164
    const/4 p1, 0x0

    return p1

    .line 162
    :catchall_8b
    move-exception v0

    move-object p1, v0

    monitor-exit v1
    :try_end_8e
    .catchall {:try_start_36 .. :try_end_8e} :catchall_8b

    throw p1
.end method

.method blacklist stop()V
    .registers 4

    .line 73
    iget-object v0, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 74
    :try_start_3
    iget-boolean v1, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mDone:Z

    if-eqz v1, :cond_9

    .line 75
    monitor-exit v0

    return-void

    .line 77
    :cond_9
    iget v1, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mStatusCode:I

    const/4 v2, -0x2

    if-ne v1, v2, :cond_18

    .line 78
    const-string v1, "PlaybackSynthesisRequest"

    const-string/jumbo v2, "stop() called twice"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    monitor-exit v0

    return-void

    .line 82
    :cond_18
    iget-object v1, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mItem:Landroid/speech/tts/SynthesisPlaybackQueueItem;

    .line 83
    iput v2, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mStatusCode:I

    .line 84
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_2e

    .line 86
    if-eqz v1, :cond_23

    .line 91
    invoke-virtual {v1, v2}, Landroid/speech/tts/SynthesisPlaybackQueueItem;->stop(I)V

    goto :goto_2d

    .line 98
    :cond_23
    iget-object v0, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mLogger:Landroid/speech/tts/AbstractEventLogger;

    invoke-virtual {v0, v2}, Landroid/speech/tts/AbstractEventLogger;->onCompleted(I)V

    .line 99
    iget-object v0, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mDispatcher:Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;

    invoke-interface {v0}, Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;->dispatchOnStop()V

    .line 101
    :goto_2d
    return-void

    .line 84
    :catchall_2e
    move-exception v1

    :try_start_2f
    monitor-exit v0
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2e

    throw v1
.end method
