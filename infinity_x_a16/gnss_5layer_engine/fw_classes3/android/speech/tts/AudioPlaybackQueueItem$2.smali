.class Landroid/speech/tts/AudioPlaybackQueueItem$2;
.super Ljava/lang/Object;
.source "AudioPlaybackQueueItem.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/speech/tts/AudioPlaybackQueueItem;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/speech/tts/AudioPlaybackQueueItem;


# direct methods
.method constructor blacklist <init>(Landroid/speech/tts/AudioPlaybackQueueItem;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 75
    iput-object p1, p0, Landroid/speech/tts/AudioPlaybackQueueItem$2;->this$0:Landroid/speech/tts/AudioPlaybackQueueItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onCompletion(Landroid/media/MediaPlayer;)V
    .registers 3

    .line 78
    iget-object p1, p0, Landroid/speech/tts/AudioPlaybackQueueItem$2;->this$0:Landroid/speech/tts/AudioPlaybackQueueItem;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Landroid/speech/tts/AudioPlaybackQueueItem;->-$$Nest$fputmFinished(Landroid/speech/tts/AudioPlaybackQueueItem;Z)V

    .line 79
    iget-object p1, p0, Landroid/speech/tts/AudioPlaybackQueueItem$2;->this$0:Landroid/speech/tts/AudioPlaybackQueueItem;

    invoke-static {p1}, Landroid/speech/tts/AudioPlaybackQueueItem;->-$$Nest$fgetmDone(Landroid/speech/tts/AudioPlaybackQueueItem;)Landroid/os/ConditionVariable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/ConditionVariable;->open()V

    .line 80
    return-void
.end method
