.class final Landroid/speech/tts/AudioPlaybackHandler$MessageLoop;
.super Ljava/lang/Object;
.source "AudioPlaybackHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/speech/tts/AudioPlaybackHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MessageLoop"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/speech/tts/AudioPlaybackHandler;


# direct methods
.method private constructor blacklist <init>(Landroid/speech/tts/AudioPlaybackHandler;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 118
    iput-object p1, p0, Landroid/speech/tts/AudioPlaybackHandler$MessageLoop;->this$0:Landroid/speech/tts/AudioPlaybackHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/speech/tts/AudioPlaybackHandler;Landroid/speech/tts/AudioPlaybackHandler-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/speech/tts/AudioPlaybackHandler$MessageLoop;-><init>(Landroid/speech/tts/AudioPlaybackHandler;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 3

    .line 122
    nop

    :goto_1
    nop

    .line 124
    :try_start_2
    iget-object v0, p0, Landroid/speech/tts/AudioPlaybackHandler$MessageLoop;->this$0:Landroid/speech/tts/AudioPlaybackHandler;

    invoke-static {v0}, Landroid/speech/tts/AudioPlaybackHandler;->-$$Nest$fgetmQueue(Landroid/speech/tts/AudioPlaybackHandler;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/speech/tts/PlaybackQueueItem;
    :try_end_e
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_e} :catch_1e

    .line 128
    nop

    .line 134
    iget-object v1, p0, Landroid/speech/tts/AudioPlaybackHandler$MessageLoop;->this$0:Landroid/speech/tts/AudioPlaybackHandler;

    invoke-static {v1, v0}, Landroid/speech/tts/AudioPlaybackHandler;->-$$Nest$fputmCurrentWorkItem(Landroid/speech/tts/AudioPlaybackHandler;Landroid/speech/tts/PlaybackQueueItem;)V

    .line 135
    invoke-virtual {v0}, Landroid/speech/tts/PlaybackQueueItem;->run()V

    .line 136
    iget-object v0, p0, Landroid/speech/tts/AudioPlaybackHandler$MessageLoop;->this$0:Landroid/speech/tts/AudioPlaybackHandler;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/speech/tts/AudioPlaybackHandler;->-$$Nest$fputmCurrentWorkItem(Landroid/speech/tts/AudioPlaybackHandler;Landroid/speech/tts/PlaybackQueueItem;)V

    .line 137
    goto :goto_1

    .line 125
    :catch_1e
    move-exception v0

    .line 127
    return-void
.end method
