.class Landroid/speech/tts/BlockingAudioTrack;
.super Ljava/lang/Object;
.source "BlockingAudioTrack.java"


# static fields
.field private static final blacklist DBG:Z = false

.field private static final blacklist MAX_PROGRESS_WAIT_MS:J = 0x9c4L

.field private static final blacklist MAX_SLEEP_TIME_MS:J = 0x9c4L

.field private static final blacklist MIN_AUDIO_BUFFER_SIZE:I = 0x2000

.field private static final blacklist MIN_SLEEP_TIME_MS:J = 0x14L

.field private static final blacklist TAG:Ljava/lang/String; = "TTS.BlockingAudioTrack"


# instance fields
.field private blacklist mAudioBufferSize:I

.field private final blacklist mAudioFormat:I

.field private final blacklist mAudioParams:Landroid/speech/tts/TextToSpeechService$AudioOutputParams;

.field private blacklist mAudioTrack:Landroid/media/AudioTrack;

.field private blacklist mAudioTrackLock:Ljava/lang/Object;

.field private final blacklist mBytesPerFrame:I

.field private blacklist mBytesWritten:I

.field private final blacklist mChannelCount:I

.field private blacklist mIsShortUtterance:Z

.field private final blacklist mSampleRateInHz:I

.field private blacklist mSessionId:I

.field private volatile blacklist mStopped:Z


# direct methods
.method constructor blacklist <init>(Landroid/speech/tts/TextToSpeechService$AudioOutputParams;III)V
    .registers 7

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const/4 v0, 0x0

    iput v0, p0, Landroid/speech/tts/BlockingAudioTrack;->mBytesWritten:I

    .line 72
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/speech/tts/BlockingAudioTrack;->mAudioTrackLock:Ljava/lang/Object;

    .line 80
    iput-object p1, p0, Landroid/speech/tts/BlockingAudioTrack;->mAudioParams:Landroid/speech/tts/TextToSpeechService$AudioOutputParams;

    .line 81
    iput p2, p0, Landroid/speech/tts/BlockingAudioTrack;->mSampleRateInHz:I

    .line 82
    iput p3, p0, Landroid/speech/tts/BlockingAudioTrack;->mAudioFormat:I

    .line 83
    iput p4, p0, Landroid/speech/tts/BlockingAudioTrack;->mChannelCount:I

    .line 85
    iget p1, p0, Landroid/speech/tts/BlockingAudioTrack;->mAudioFormat:I

    invoke-static {p1}, Landroid/media/AudioFormat;->getBytesPerSample(I)I

    move-result p1

    iget p2, p0, Landroid/speech/tts/BlockingAudioTrack;->mChannelCount:I

    mul-int/2addr p1, p2

    iput p1, p0, Landroid/speech/tts/BlockingAudioTrack;->mBytesPerFrame:I

    .line 86
    iput-boolean v0, p0, Landroid/speech/tts/BlockingAudioTrack;->mIsShortUtterance:Z

    .line 87
    iput v0, p0, Landroid/speech/tts/BlockingAudioTrack;->mAudioBufferSize:I

    .line 88
    iput v0, p0, Landroid/speech/tts/BlockingAudioTrack;->mBytesWritten:I

    .line 90
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/speech/tts/BlockingAudioTrack;->mAudioTrack:Landroid/media/AudioTrack;

    .line 91
    iput-boolean v0, p0, Landroid/speech/tts/BlockingAudioTrack;->mStopped:Z

    .line 92
    return-void
.end method

.method private blacklist blockUntilCompletion(Landroid/media/AudioTrack;)V
    .registers 16

    .line 279
    iget v0, p0, Landroid/speech/tts/BlockingAudioTrack;->mBytesWritten:I

    iget v1, p0, Landroid/speech/tts/BlockingAudioTrack;->mBytesPerFrame:I

    div-int/2addr v0, v1

    .line 281
    nop

    .line 282
    nop

    .line 283
    const/4 v1, -0x1

    const-wide/16 v2, 0x0

    move-wide v4, v2

    .line 285
    :goto_b
    invoke-virtual {p1}, Landroid/media/AudioTrack;->getPlaybackHeadPosition()I

    move-result v6

    if-ge v6, v0, :cond_49

    .line 286
    invoke-virtual {p1}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v7

    const/4 v8, 0x3

    if-ne v7, v8, :cond_49

    iget-boolean v7, p0, Landroid/speech/tts/BlockingAudioTrack;->mStopped:Z

    if-nez v7, :cond_49

    .line 288
    sub-int v7, v0, v6

    mul-int/lit16 v7, v7, 0x3e8

    .line 289
    invoke-virtual {p1}, Landroid/media/AudioTrack;->getSampleRate()I

    move-result v8

    div-int/2addr v7, v8

    int-to-long v8, v7

    .line 290
    const-wide/16 v10, 0x14

    const-wide/16 v12, 0x9c4

    invoke-static/range {v8 .. v13}, Landroid/speech/tts/BlockingAudioTrack;->clip(JJJ)J

    move-result-wide v7

    .line 295
    if-ne v6, v1, :cond_3f

    .line 298
    add-long/2addr v4, v7

    .line 300
    const-wide/16 v9, 0x9c4

    cmp-long v1, v4, v9

    if-lez v1, :cond_40

    .line 301
    const-string p1, "TTS.BlockingAudioTrack"

    const-string v0, "Waited unsuccessfully for 2500ms for AudioTrack to make progress, Aborting"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    goto :goto_49

    .line 306
    :cond_3f
    move-wide v4, v2

    .line 308
    :cond_40
    nop

    .line 316
    :try_start_41
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_44
    .catch Ljava/lang/InterruptedException; {:try_start_41 .. :try_end_44} :catch_47

    .line 319
    nop

    .line 320
    move v1, v6

    goto :goto_b

    .line 317
    :catch_47
    move-exception v0

    .line 318
    nop

    .line 321
    :cond_49
    :goto_49
    return-void
.end method

.method private blacklist blockUntilDone(Landroid/media/AudioTrack;)V
    .registers 3

    .line 243
    iget v0, p0, Landroid/speech/tts/BlockingAudioTrack;->mBytesWritten:I

    if-gtz v0, :cond_5

    .line 244
    return-void

    .line 247
    :cond_5
    iget-boolean v0, p0, Landroid/speech/tts/BlockingAudioTrack;->mIsShortUtterance:Z

    if-eqz v0, :cond_d

    .line 259
    invoke-direct {p0}, Landroid/speech/tts/BlockingAudioTrack;->blockUntilEstimatedCompletion()V

    goto :goto_10

    .line 261
    :cond_d
    invoke-direct {p0, p1}, Landroid/speech/tts/BlockingAudioTrack;->blockUntilCompletion(Landroid/media/AudioTrack;)V

    .line 263
    :goto_10
    return-void
.end method

.method private blacklist blockUntilEstimatedCompletion()V
    .registers 3

    .line 266
    iget v0, p0, Landroid/speech/tts/BlockingAudioTrack;->mBytesWritten:I

    iget v1, p0, Landroid/speech/tts/BlockingAudioTrack;->mBytesPerFrame:I

    div-int/2addr v0, v1

    .line 267
    mul-int/lit16 v0, v0, 0x3e8

    iget v1, p0, Landroid/speech/tts/BlockingAudioTrack;->mSampleRateInHz:I

    div-int/2addr v0, v1

    int-to-long v0, v0

    .line 272
    :try_start_b
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_e
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_e} :catch_f

    .line 275
    goto :goto_10

    .line 273
    :catch_f
    move-exception v0

    .line 276
    :goto_10
    return-void
.end method

.method private static final blacklist clip(FFF)F
    .registers 4

    .line 345
    cmpg-float v0, p0, p1

    if-gez v0, :cond_6

    move p0, p1

    goto :goto_c

    :cond_6
    cmpg-float p1, p0, p2

    if-gez p1, :cond_b

    goto :goto_c

    :cond_b
    move p0, p2

    :goto_c
    return p0
.end method

.method private static final blacklist clip(JJJ)J
    .registers 7

    .line 341
    cmp-long v0, p0, p2

    if-gez v0, :cond_6

    move-wide p0, p2

    goto :goto_c

    :cond_6
    cmp-long p2, p0, p4

    if-gez p2, :cond_b

    goto :goto_c

    :cond_b
    move-wide p0, p4

    :goto_c
    return-wide p0
.end method

.method private blacklist createStreamingAudioTrack()Landroid/media/AudioTrack;
    .registers 10

    .line 216
    iget v0, p0, Landroid/speech/tts/BlockingAudioTrack;->mChannelCount:I

    invoke-static {v0}, Landroid/speech/tts/BlockingAudioTrack;->getChannelConfig(I)I

    move-result v0

    .line 218
    iget v1, p0, Landroid/speech/tts/BlockingAudioTrack;->mSampleRateInHz:I

    iget v2, p0, Landroid/speech/tts/BlockingAudioTrack;->mAudioFormat:I

    .line 219
    invoke-static {v1, v0, v2}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v1

    .line 220
    const/16 v2, 0x2000

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 222
    new-instance v1, Landroid/media/AudioFormat$Builder;

    invoke-direct {v1}, Landroid/media/AudioFormat$Builder;-><init>()V

    .line 223
    invoke-virtual {v1, v0}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    iget v1, p0, Landroid/speech/tts/BlockingAudioTrack;->mAudioFormat:I

    .line 224
    invoke-virtual {v0, v1}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    iget v1, p0, Landroid/speech/tts/BlockingAudioTrack;->mSampleRateInHz:I

    .line 225
    invoke-virtual {v0, v1}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v5

    .line 226
    new-instance v3, Landroid/media/AudioTrack;

    iget-object v0, p0, Landroid/speech/tts/BlockingAudioTrack;->mAudioParams:Landroid/speech/tts/TextToSpeechService$AudioOutputParams;

    iget-object v4, v0, Landroid/speech/tts/TextToSpeechService$AudioOutputParams;->mAudioAttributes:Landroid/media/AudioAttributes;

    iget-object v0, p0, Landroid/speech/tts/BlockingAudioTrack;->mAudioParams:Landroid/speech/tts/TextToSpeechService$AudioOutputParams;

    iget v8, v0, Landroid/speech/tts/TextToSpeechService$AudioOutputParams;->mSessionId:I

    const/4 v7, 0x1

    invoke-direct/range {v3 .. v8}, Landroid/media/AudioTrack;-><init>(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;III)V

    .line 230
    invoke-virtual {v3}, Landroid/media/AudioTrack;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4e

    .line 231
    const-string v0, "TTS.BlockingAudioTrack"

    const-string v1, "Unable to create audio track."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    invoke-virtual {v3}, Landroid/media/AudioTrack;->release()V

    .line 233
    const/4 v0, 0x0

    return-object v0

    .line 236
    :cond_4e
    iput v6, p0, Landroid/speech/tts/BlockingAudioTrack;->mAudioBufferSize:I

    .line 238
    iget-object v0, p0, Landroid/speech/tts/BlockingAudioTrack;->mAudioParams:Landroid/speech/tts/TextToSpeechService$AudioOutputParams;

    iget v0, v0, Landroid/speech/tts/TextToSpeechService$AudioOutputParams;->mVolume:F

    iget-object v1, p0, Landroid/speech/tts/BlockingAudioTrack;->mAudioParams:Landroid/speech/tts/TextToSpeechService$AudioOutputParams;

    iget v1, v1, Landroid/speech/tts/TextToSpeechService$AudioOutputParams;->mPan:F

    invoke-static {v3, v0, v1}, Landroid/speech/tts/BlockingAudioTrack;->setupVolume(Landroid/media/AudioTrack;FF)V

    .line 239
    return-object v3
.end method

.method static blacklist getChannelConfig(I)I
    .registers 2

    .line 175
    const/4 v0, 0x1

    if-ne p0, v0, :cond_5

    .line 176
    const/4 p0, 0x4

    return p0

    .line 177
    :cond_5
    const/4 v0, 0x2

    if-ne p0, v0, :cond_b

    .line 178
    const/16 p0, 0xc

    return p0

    .line 181
    :cond_b
    const/4 p0, 0x0

    return p0
.end method

.method private static blacklist setupVolume(Landroid/media/AudioTrack;FF)V
    .registers 6

    .line 324
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p1, v0, v1}, Landroid/speech/tts/BlockingAudioTrack;->clip(FFF)F

    move-result p1

    .line 325
    const/high16 v2, -0x40800000    # -1.0f

    invoke-static {p2, v2, v1}, Landroid/speech/tts/BlockingAudioTrack;->clip(FFF)F

    move-result p2

    .line 327
    nop

    .line 328
    nop

    .line 329
    cmpl-float v2, p2, v0

    if-lez v2, :cond_18

    .line 330
    sub-float/2addr v1, p2

    mul-float/2addr v1, p1

    move p2, p1

    move p1, v1

    goto :goto_20

    .line 331
    :cond_18
    cmpg-float v0, p2, v0

    if-gez v0, :cond_1f

    .line 332
    add-float/2addr p2, v1

    mul-float/2addr p2, p1

    goto :goto_20

    .line 331
    :cond_1f
    move p2, p1

    .line 335
    :goto_20
    invoke-virtual {p0, p1, p2}, Landroid/media/AudioTrack;->setStereoVolume(FF)I

    move-result p0

    if-eqz p0, :cond_2d

    .line 336
    const-string p0, "TTS.BlockingAudioTrack"

    const-string p1, "Failed to set volume"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    :cond_2d
    return-void
.end method

.method private static blacklist writeToAudioTrack(Landroid/media/AudioTrack;[B)I
    .registers 4

    .line 192
    invoke-virtual {p0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_a

    .line 194
    invoke-virtual {p0}, Landroid/media/AudioTrack;->play()V

    .line 197
    :cond_a
    const/4 v0, 0x0

    .line 198
    :goto_b
    array-length v1, p1

    if-ge v0, v1, :cond_33

    .line 202
    array-length v1, p1

    sub-int/2addr v1, v0

    .line 203
    invoke-virtual {p0, p1, v0, v1}, Landroid/media/AudioTrack;->write([BII)I

    move-result v1

    .line 204
    if-gtz v1, :cond_31

    .line 205
    if-gez v1, :cond_33

    .line 206
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "An error occurred while writing to audio track: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TTS.BlockingAudioTrack"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_33

    .line 210
    :cond_31
    add-int/2addr v0, v1

    .line 211
    goto :goto_b

    .line 212
    :cond_33
    :goto_33
    return v0
.end method


# virtual methods
.method blacklist getAudioLengthMs(I)J
    .registers 4

    .line 185
    iget v0, p0, Landroid/speech/tts/BlockingAudioTrack;->mBytesPerFrame:I

    div-int/2addr p1, v0

    .line 186
    mul-int/lit16 p1, p1, 0x3e8

    iget v0, p0, Landroid/speech/tts/BlockingAudioTrack;->mSampleRateInHz:I

    div-int/2addr p1, v0

    int-to-long v0, p1

    .line 188
    return-wide v0
.end method

.method public blacklist init()Z
    .registers 3

    .line 95
    invoke-direct {p0}, Landroid/speech/tts/BlockingAudioTrack;->createStreamingAudioTrack()Landroid/media/AudioTrack;

    move-result-object v0

    .line 96
    iget-object v1, p0, Landroid/speech/tts/BlockingAudioTrack;->mAudioTrackLock:Ljava/lang/Object;

    monitor-enter v1

    .line 97
    :try_start_7
    iput-object v0, p0, Landroid/speech/tts/BlockingAudioTrack;->mAudioTrack:Landroid/media/AudioTrack;

    .line 98
    monitor-exit v1

    .line 100
    if-nez v0, :cond_e

    .line 101
    const/4 v0, 0x0

    return v0

    .line 103
    :cond_e
    const/4 v0, 0x1

    return v0

    .line 98
    :catchall_10
    move-exception v0

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_10

    throw v0
.end method

.method public blacklist setNotificationMarkerPosition(I)V
    .registers 4

    .line 363
    iget-object v0, p0, Landroid/speech/tts/BlockingAudioTrack;->mAudioTrackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 364
    :try_start_3
    iget-object v1, p0, Landroid/speech/tts/BlockingAudioTrack;->mAudioTrack:Landroid/media/AudioTrack;

    if-eqz v1, :cond_c

    .line 365
    iget-object v1, p0, Landroid/speech/tts/BlockingAudioTrack;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v1, p1}, Landroid/media/AudioTrack;->setNotificationMarkerPosition(I)I

    .line 367
    :cond_c
    monitor-exit v0

    .line 368
    return-void

    .line 367
    :catchall_e
    move-exception p1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw p1
.end method

.method public blacklist setPlaybackPositionUpdateListener(Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;)V
    .registers 4

    .line 354
    iget-object v0, p0, Landroid/speech/tts/BlockingAudioTrack;->mAudioTrackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 355
    :try_start_3
    iget-object v1, p0, Landroid/speech/tts/BlockingAudioTrack;->mAudioTrack:Landroid/media/AudioTrack;

    if-eqz v1, :cond_c

    .line 356
    iget-object v1, p0, Landroid/speech/tts/BlockingAudioTrack;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v1, p1}, Landroid/media/AudioTrack;->setPlaybackPositionUpdateListener(Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;)V

    .line 358
    :cond_c
    monitor-exit v0

    .line 359
    return-void

    .line 358
    :catchall_e
    move-exception p1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw p1
.end method

.method public blacklist stop()V
    .registers 3

    .line 108
    iget-object v0, p0, Landroid/speech/tts/BlockingAudioTrack;->mAudioTrackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 109
    :try_start_3
    iget-object v1, p0, Landroid/speech/tts/BlockingAudioTrack;->mAudioTrack:Landroid/media/AudioTrack;

    if-eqz v1, :cond_c

    .line 110
    iget-object v1, p0, Landroid/speech/tts/BlockingAudioTrack;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->stop()V

    .line 112
    :cond_c
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/speech/tts/BlockingAudioTrack;->mStopped:Z

    .line 113
    monitor-exit v0

    .line 114
    return-void

    .line 113
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public blacklist waitAndRelease()V
    .registers 4

    .line 132
    nop

    .line 133
    iget-object v0, p0, Landroid/speech/tts/BlockingAudioTrack;->mAudioTrackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 134
    :try_start_4
    iget-object v1, p0, Landroid/speech/tts/BlockingAudioTrack;->mAudioTrack:Landroid/media/AudioTrack;

    .line 135
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_31

    .line 136
    if-nez v1, :cond_a

    .line 138
    return-void

    .line 147
    :cond_a
    iget v0, p0, Landroid/speech/tts/BlockingAudioTrack;->mBytesWritten:I

    iget v2, p0, Landroid/speech/tts/BlockingAudioTrack;->mAudioBufferSize:I

    if-ge v0, v2, :cond_1a

    iget-boolean v0, p0, Landroid/speech/tts/BlockingAudioTrack;->mStopped:Z

    if-nez v0, :cond_1a

    .line 153
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/speech/tts/BlockingAudioTrack;->mIsShortUtterance:Z

    .line 154
    invoke-virtual {v1}, Landroid/media/AudioTrack;->stop()V

    .line 158
    :cond_1a
    iget-boolean v0, p0, Landroid/speech/tts/BlockingAudioTrack;->mStopped:Z

    if-nez v0, :cond_23

    .line 160
    iget-object v0, p0, Landroid/speech/tts/BlockingAudioTrack;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-direct {p0, v0}, Landroid/speech/tts/BlockingAudioTrack;->blockUntilDone(Landroid/media/AudioTrack;)V

    .line 167
    :cond_23
    iget-object v2, p0, Landroid/speech/tts/BlockingAudioTrack;->mAudioTrackLock:Ljava/lang/Object;

    monitor-enter v2

    .line 168
    const/4 v0, 0x0

    :try_start_27
    iput-object v0, p0, Landroid/speech/tts/BlockingAudioTrack;->mAudioTrack:Landroid/media/AudioTrack;

    .line 169
    monitor-exit v2
    :try_end_2a
    .catchall {:try_start_27 .. :try_end_2a} :catchall_2e

    .line 170
    invoke-virtual {v1}, Landroid/media/AudioTrack;->release()V

    .line 171
    return-void

    .line 169
    :catchall_2e
    move-exception v0

    :try_start_2f
    monitor-exit v2
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2e

    throw v0

    .line 135
    :catchall_31
    move-exception v1

    :try_start_32
    monitor-exit v0
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_31

    throw v1
.end method

.method public blacklist write([B)I
    .registers 4

    .line 117
    nop

    .line 118
    iget-object v0, p0, Landroid/speech/tts/BlockingAudioTrack;->mAudioTrackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 119
    :try_start_4
    iget-object v1, p0, Landroid/speech/tts/BlockingAudioTrack;->mAudioTrack:Landroid/media/AudioTrack;

    .line 120
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_1a

    .line 122
    if-eqz v1, :cond_18

    iget-boolean v0, p0, Landroid/speech/tts/BlockingAudioTrack;->mStopped:Z

    if-eqz v0, :cond_e

    goto :goto_18

    .line 125
    :cond_e
    invoke-static {v1, p1}, Landroid/speech/tts/BlockingAudioTrack;->writeToAudioTrack(Landroid/media/AudioTrack;[B)I

    move-result p1

    .line 127
    iget v0, p0, Landroid/speech/tts/BlockingAudioTrack;->mBytesWritten:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/speech/tts/BlockingAudioTrack;->mBytesWritten:I

    .line 128
    return p1

    .line 123
    :cond_18
    :goto_18
    const/4 p1, -0x1

    return p1

    .line 120
    :catchall_1a
    move-exception p1

    :try_start_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    throw p1
.end method
