.class Landroid/speech/tts/TextToSpeechService$AudioOutputParams;
.super Ljava/lang/Object;
.source "TextToSpeechService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/speech/tts/TextToSpeechService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AudioOutputParams"
.end annotation


# instance fields
.field public final greylist-max-o mAudioAttributes:Landroid/media/AudioAttributes;

.field public final greylist-max-o mPan:F

.field public final greylist-max-o mSessionId:I

.field public final greylist-max-o mVolume:F


# direct methods
.method constructor greylist-max-o <init>()V
    .registers 2

    .line 722
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 723
    const/4 v0, 0x0

    iput v0, p0, Landroid/speech/tts/TextToSpeechService$AudioOutputParams;->mSessionId:I

    .line 724
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/speech/tts/TextToSpeechService$AudioOutputParams;->mVolume:F

    .line 725
    const/4 v0, 0x0

    iput v0, p0, Landroid/speech/tts/TextToSpeechService$AudioOutputParams;->mPan:F

    .line 726
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/speech/tts/TextToSpeechService$AudioOutputParams;->mAudioAttributes:Landroid/media/AudioAttributes;

    .line 727
    return-void
.end method

.method constructor greylist-max-o <init>(IFFLandroid/media/AudioAttributes;)V
    .registers 5

    .line 730
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 731
    iput p1, p0, Landroid/speech/tts/TextToSpeechService$AudioOutputParams;->mSessionId:I

    .line 732
    iput p2, p0, Landroid/speech/tts/TextToSpeechService$AudioOutputParams;->mVolume:F

    .line 733
    iput p3, p0, Landroid/speech/tts/TextToSpeechService$AudioOutputParams;->mPan:F

    .line 734
    iput-object p4, p0, Landroid/speech/tts/TextToSpeechService$AudioOutputParams;->mAudioAttributes:Landroid/media/AudioAttributes;

    .line 735
    return-void
.end method

.method static greylist-max-o createFromParamsBundle(Landroid/os/Bundle;Z)Landroid/speech/tts/TextToSpeechService$AudioOutputParams;
    .registers 7

    .line 739
    if-nez p0, :cond_8

    .line 740
    new-instance p0, Landroid/speech/tts/TextToSpeechService$AudioOutputParams;

    invoke-direct {p0}, Landroid/speech/tts/TextToSpeechService$AudioOutputParams;-><init>()V

    return-object p0

    .line 743
    :cond_8
    const-class v0, Landroid/media/AudioAttributes;

    .line 744
    const-string v1, "audioAttributes"

    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioAttributes;

    .line 746
    if-nez v0, :cond_32

    .line 747
    const-string/jumbo v0, "streamType"

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 749
    new-instance v1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 750
    invoke-virtual {v1, v0}, Landroid/media/AudioAttributes$Builder;->setLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 751
    if-eqz p1, :cond_29

    .line 752
    const/4 p1, 0x1

    goto :goto_2a

    .line 753
    :cond_29
    const/4 p1, 0x4

    .line 751
    :goto_2a
    invoke-virtual {v0, p1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object p1

    .line 754
    invoke-virtual {p1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    .line 757
    :cond_32
    new-instance p1, Landroid/speech/tts/TextToSpeechService$AudioOutputParams;

    .line 758
    const-string/jumbo v1, "sessionId"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 761
    const-string/jumbo v2, "volume"

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {p0, v2, v3}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v2

    .line 764
    const-string/jumbo v3, "pan"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result p0

    invoke-direct {p1, v1, v2, p0, v0}, Landroid/speech/tts/TextToSpeechService$AudioOutputParams;-><init>(IFFLandroid/media/AudioAttributes;)V

    .line 757
    return-object p1
.end method
