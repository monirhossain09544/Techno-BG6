.class final Landroid/service/voice/AlwaysOnHotwordDetector$SoundTriggerListener;
.super Lcom/android/internal/app/IHotwordRecognitionStatusCallback$Stub;
.source "AlwaysOnHotwordDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/voice/AlwaysOnHotwordDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SoundTriggerListener"
.end annotation


# instance fields
.field private final greylist-max-o mHandler:Landroid/os/Handler;


# direct methods
.method public constructor greylist-max-o <init>(Landroid/os/Handler;)V
    .registers 2

    .line 1658
    invoke-direct {p0}, Lcom/android/internal/app/IHotwordRecognitionStatusCallback$Stub;-><init>()V

    .line 1659
    iput-object p1, p0, Landroid/service/voice/AlwaysOnHotwordDetector$SoundTriggerListener;->mHandler:Landroid/os/Handler;

    .line 1660
    return-void
.end method


# virtual methods
.method public greylist-max-o onGenericSoundTriggerDetected(Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;)V
    .registers 4

    .line 1693
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Generic sound trigger event detected at AOHD: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AlwaysOnHotwordDetector"

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1694
    return-void
.end method

.method public blacklist onHotwordDetectionServiceFailure(Landroid/service/voice/HotwordDetectionServiceFailure;)V
    .registers 4

    .line 1709
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onHotwordDetectionServiceFailure: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AlwaysOnHotwordDetector"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1710
    if-eqz p1, :cond_27

    .line 1711
    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector$SoundTriggerListener;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1712
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_34

    .line 1714
    :cond_27
    iget-object p1, p0, Landroid/service/voice/AlwaysOnHotwordDetector$SoundTriggerListener;->mHandler:Landroid/os/Handler;

    const/16 v0, 0xb

    const-string v1, "Error data is null"

    invoke-static {p1, v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1715
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 1717
    :goto_34
    return-void
.end method

.method public blacklist onKeyphraseDetected(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;Landroid/service/voice/HotwordDetectedResult;)V
    .registers 5

    .line 1668
    const-string v0, "AlwaysOnHotwordDetector"

    const-string/jumbo v1, "onDetected"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1670
    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector$SoundTriggerListener;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;

    invoke-direct {v1, p1}, Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;-><init>(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;)V

    .line 1672
    invoke-virtual {v1, p2}, Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;->setHotwordDetectedResult(Landroid/service/voice/HotwordDetectedResult;)Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;

    move-result-object p1

    .line 1673
    invoke-virtual {p1}, Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;->build()Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload;

    move-result-object p1

    .line 1670
    const/4 p2, 0x2

    invoke-static {v0, p2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1674
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 1675
    return-void
.end method

.method public blacklist onKeyphraseDetectedFromExternalSource(Landroid/service/voice/HotwordDetectedResult;)V
    .registers 4

    .line 1679
    const-string v0, "AlwaysOnHotwordDetector"

    const-string/jumbo v1, "onKeyphraseDetectedFromExternalSource"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1680
    new-instance v0, Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;

    invoke-direct {v0}, Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;-><init>()V

    .line 1681
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/app/wearable/Flags;->enableHotwordWearableSensingApi()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 1682
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;->setIsRecognitionStopped(Z)Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;

    .line 1684
    :cond_17
    iget-object v1, p0, Landroid/service/voice/AlwaysOnHotwordDetector$SoundTriggerListener;->mHandler:Landroid/os/Handler;

    .line 1687
    invoke-virtual {v0, p1}, Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;->setHotwordDetectedResult(Landroid/service/voice/HotwordDetectedResult;)Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;->build()Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload;

    move-result-object p1

    .line 1684
    const/4 v0, 0x2

    invoke-static {v1, v0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1688
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 1689
    return-void
.end method

.method public blacklist onOpenFile(Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1774
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Hotword cannot access files from the disk."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public blacklist onProcessRestarted()V
    .registers 3

    .line 1768
    const-string v0, "AlwaysOnHotwordDetector"

    const-string/jumbo v1, "onProcessRestarted"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1769
    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector$SoundTriggerListener;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1770
    return-void
.end method

.method public greylist-max-o onRecognitionPaused()V
    .registers 3

    .line 1744
    const-string v0, "AlwaysOnHotwordDetector"

    const-string/jumbo v1, "onRecognitionPaused"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1745
    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector$SoundTriggerListener;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1746
    return-void
.end method

.method public greylist-max-o onRecognitionResumed()V
    .registers 3

    .line 1750
    const-string v0, "AlwaysOnHotwordDetector"

    const-string/jumbo v1, "onRecognitionResumed"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1751
    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector$SoundTriggerListener;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1752
    return-void
.end method

.method public blacklist onRejected(Landroid/service/voice/HotwordRejectedResult;)V
    .registers 4

    .line 1701
    const-string v0, "AlwaysOnHotwordDetector"

    const-string/jumbo v1, "onRejected"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1703
    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector$SoundTriggerListener;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 1704
    return-void
.end method

.method public blacklist onSoundTriggerFailure(Landroid/service/voice/SoundTriggerFailure;)V
    .registers 4

    .line 1730
    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector$SoundTriggerListener;->mHandler:Landroid/os/Handler;

    .line 1731
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 1730
    const/16 v1, 0xa

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1731
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 1732
    return-void
.end method

.method public blacklist onStatusReported(I)V
    .registers 4

    .line 1759
    const-string v0, "AlwaysOnHotwordDetector"

    const-string/jumbo v1, "onStatusReported"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1761
    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector$SoundTriggerListener;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 1762
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 1763
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1764
    return-void
.end method

.method public blacklist onUnknownFailure(Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1736
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onUnknownFailure: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AlwaysOnHotwordDetector"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1737
    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector$SoundTriggerListener;->mHandler:Landroid/os/Handler;

    .line 1738
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_22

    goto :goto_24

    .line 1739
    :cond_22
    const-string p1, "Error data is null"

    .line 1737
    :goto_24
    const/16 v1, 0xb

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1739
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 1740
    return-void
.end method

.method public blacklist onVisualQueryDetectionServiceFailure(Landroid/service/voice/VisualQueryDetectionServiceFailure;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1724
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onVisualQueryDetectionServiceFailure: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AlwaysOnHotwordDetector"

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1726
    return-void
.end method
