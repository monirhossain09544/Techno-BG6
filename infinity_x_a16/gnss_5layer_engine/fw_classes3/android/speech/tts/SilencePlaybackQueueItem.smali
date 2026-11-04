.class Landroid/speech/tts/SilencePlaybackQueueItem;
.super Landroid/speech/tts/PlaybackQueueItem;
.source "SilencePlaybackQueueItem.java"


# instance fields
.field private final blacklist mCondVar:Landroid/os/ConditionVariable;

.field private final blacklist mSilenceDurationMs:J


# direct methods
.method constructor blacklist <init>(Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;Ljava/lang/Object;J)V
    .registers 5

    .line 27
    invoke-direct {p0, p1, p2}, Landroid/speech/tts/PlaybackQueueItem;-><init>(Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;Ljava/lang/Object;)V

    .line 22
    new-instance p1, Landroid/os/ConditionVariable;

    invoke-direct {p1}, Landroid/os/ConditionVariable;-><init>()V

    iput-object p1, p0, Landroid/speech/tts/SilencePlaybackQueueItem;->mCondVar:Landroid/os/ConditionVariable;

    .line 28
    iput-wide p3, p0, Landroid/speech/tts/SilencePlaybackQueueItem;->mSilenceDurationMs:J

    .line 29
    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 5

    .line 33
    invoke-virtual {p0}, Landroid/speech/tts/SilencePlaybackQueueItem;->getDispatcher()Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;

    move-result-object v0

    invoke-interface {v0}, Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;->dispatchOnStart()V

    .line 34
    nop

    .line 35
    iget-wide v0, p0, Landroid/speech/tts/SilencePlaybackQueueItem;->mSilenceDurationMs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_19

    .line 36
    iget-object v0, p0, Landroid/speech/tts/SilencePlaybackQueueItem;->mCondVar:Landroid/os/ConditionVariable;

    iget-wide v1, p0, Landroid/speech/tts/SilencePlaybackQueueItem;->mSilenceDurationMs:J

    invoke-virtual {v0, v1, v2}, Landroid/os/ConditionVariable;->block(J)Z

    move-result v0

    goto :goto_1a

    .line 35
    :cond_19
    const/4 v0, 0x0

    .line 38
    :goto_1a
    if-eqz v0, :cond_24

    .line 39
    invoke-virtual {p0}, Landroid/speech/tts/SilencePlaybackQueueItem;->getDispatcher()Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;

    move-result-object v0

    invoke-interface {v0}, Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;->dispatchOnStop()V

    goto :goto_2b

    .line 41
    :cond_24
    invoke-virtual {p0}, Landroid/speech/tts/SilencePlaybackQueueItem;->getDispatcher()Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;

    move-result-object v0

    invoke-interface {v0}, Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;->dispatchOnSuccess()V

    .line 44
    :goto_2b
    return-void
.end method

.method blacklist stop(I)V
    .registers 2

    .line 48
    iget-object p1, p0, Landroid/speech/tts/SilencePlaybackQueueItem;->mCondVar:Landroid/os/ConditionVariable;

    invoke-virtual {p1}, Landroid/os/ConditionVariable;->open()V

    .line 49
    return-void
.end method
