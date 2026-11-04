.class final Landroid/preference/SeekBarVolumizer$Receiver;
.super Landroid/content/BroadcastReceiver;
.source "SeekBarVolumizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/preference/SeekBarVolumizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Receiver"
.end annotation


# instance fields
.field private greylist-max-o mListening:Z

.field final synthetic blacklist this$0:Landroid/preference/SeekBarVolumizer;


# direct methods
.method private constructor blacklist <init>(Landroid/preference/SeekBarVolumizer;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 608
    iput-object p1, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/preference/SeekBarVolumizer;Landroid/preference/SeekBarVolumizer-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/preference/SeekBarVolumizer$Receiver;-><init>(Landroid/preference/SeekBarVolumizer;)V

    return-void
.end method

.method private greylist-max-o updateVolumeSlider(II)V
    .registers 6

    .line 680
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    invoke-static {v0}, Landroid/preference/SeekBarVolumizer;->-$$Nest$fgetmStreamType(Landroid/preference/SeekBarVolumizer;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_c

    move p1, v1

    goto :goto_d

    :cond_c
    move p1, v2

    .line 681
    :goto_d
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    invoke-static {v0}, Landroid/preference/SeekBarVolumizer;->-$$Nest$fgetmSeekBar(Landroid/preference/SeekBarVolumizer;)Landroid/widget/SeekBar;

    move-result-object v0

    if-eqz v0, :cond_3f

    if-eqz p1, :cond_3f

    const/4 p1, -0x1

    if-eq p2, p1, :cond_3f

    .line 682
    iget-object p1, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    invoke-static {p1}, Landroid/preference/SeekBarVolumizer;->-$$Nest$fgetmAudioManager(Landroid/preference/SeekBarVolumizer;)Landroid/media/AudioManager;

    move-result-object p1

    iget-object v0, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    invoke-static {v0}, Landroid/preference/SeekBarVolumizer;->-$$Nest$fgetmStreamType(Landroid/preference/SeekBarVolumizer;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result p1

    if-nez p1, :cond_30

    if-nez p2, :cond_2f

    goto :goto_30

    :cond_2f
    move v1, v2

    .line 684
    :cond_30
    :goto_30
    iget-object p1, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    invoke-static {p1}, Landroid/preference/SeekBarVolumizer;->-$$Nest$fgetmUiHandler(Landroid/preference/SeekBarVolumizer;)Landroid/preference/SeekBarVolumizer$H;

    move-result-object p1

    iget-object v0, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    invoke-static {v0}, Landroid/preference/SeekBarVolumizer;->-$$Nest$fgetmLastAudibleStreamVolume(Landroid/preference/SeekBarVolumizer;)I

    move-result v0

    invoke-virtual {p1, p2, v0, v1}, Landroid/preference/SeekBarVolumizer$H;->postUpdateSlider(IIZ)V

    .line 686
    :cond_3f
    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    .line 628
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 629
    const-string v0, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    const/4 v2, -0x1

    if-eqz v0, :cond_2e

    .line 630
    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 631
    const-string v0, "android.media.EXTRA_VOLUME_STREAM_VALUE"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 632
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    invoke-static {v0}, Landroid/preference/SeekBarVolumizer;->-$$Nest$fgetmDeviceHasProductStrategies(Landroid/preference/SeekBarVolumizer;)Z

    move-result v0

    if-eqz v0, :cond_2c

    iget-object v0, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    invoke-static {v0}, Landroid/preference/SeekBarVolumizer;->-$$Nest$misDelay(Landroid/preference/SeekBarVolumizer;)Z

    move-result v0

    if-nez v0, :cond_2c

    .line 633
    invoke-direct {p0, p1, p2}, Landroid/preference/SeekBarVolumizer$Receiver;->updateVolumeSlider(II)V

    .line 635
    :cond_2c
    goto/16 :goto_124

    :cond_2e
    const-string v0, "android.media.INTERNAL_RINGER_MODE_CHANGED_ACTION"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 636
    iget-object p1, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    invoke-static {p1}, Landroid/preference/SeekBarVolumizer;->-$$Nest$fgetmNotificationOrRing(Landroid/preference/SeekBarVolumizer;)Z

    move-result p1

    if-eqz p1, :cond_4d

    .line 637
    iget-object p1, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    iget-object p2, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    invoke-static {p2}, Landroid/preference/SeekBarVolumizer;->-$$Nest$fgetmAudioManager(Landroid/preference/SeekBarVolumizer;)Landroid/media/AudioManager;

    move-result-object p2

    invoke-virtual {p2}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result p2

    invoke-static {p1, p2}, Landroid/preference/SeekBarVolumizer;->-$$Nest$fputmRingerMode(Landroid/preference/SeekBarVolumizer;I)V

    .line 639
    :cond_4d
    iget-object p1, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    invoke-static {p1}, Landroid/preference/SeekBarVolumizer;->-$$Nest$fgetmAffectedByRingerMode(Landroid/preference/SeekBarVolumizer;)Z

    move-result p1

    if-eqz p1, :cond_124

    .line 640
    iget-object p1, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    invoke-static {p1}, Landroid/preference/SeekBarVolumizer;->-$$Nest$mupdateSlider(Landroid/preference/SeekBarVolumizer;)V

    goto/16 :goto_124

    .line 642
    :cond_5c
    const-string v0, "android.media.STREAM_DEVICES_CHANGED_ACTION"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b3

    .line 643
    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 645
    iget-object p2, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    invoke-static {p2}, Landroid/preference/SeekBarVolumizer;->-$$Nest$fgetmDeviceHasProductStrategies(Landroid/preference/SeekBarVolumizer;)Z

    move-result p2

    if-eqz p2, :cond_8c

    .line 646
    iget-object p2, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    invoke-static {p2}, Landroid/preference/SeekBarVolumizer;->-$$Nest$misDelay(Landroid/preference/SeekBarVolumizer;)Z

    move-result p2

    if-eqz p2, :cond_7e

    .line 648
    iget-object p1, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    invoke-static {p1}, Landroid/preference/SeekBarVolumizer;->-$$Nest$mpostUpdateSliderMaybeLater(Landroid/preference/SeekBarVolumizer;)V

    goto :goto_b1

    .line 650
    :cond_7e
    iget-object p2, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    invoke-static {p2}, Landroid/preference/SeekBarVolumizer;->-$$Nest$fgetmAudioManager(Landroid/preference/SeekBarVolumizer;)Landroid/media/AudioManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result p2

    .line 651
    invoke-direct {p0, p1, p2}, Landroid/preference/SeekBarVolumizer$Receiver;->updateVolumeSlider(II)V

    .line 652
    goto :goto_b1

    .line 655
    :cond_8c
    iget-object p2, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    invoke-static {p2, p1}, Landroid/preference/SeekBarVolumizer;->-$$Nest$mgetVolumeGroupIdForLegacyStreamType(Landroid/preference/SeekBarVolumizer;I)I

    move-result p2

    .line 656
    if-eq p2, v2, :cond_b1

    iget-object v0, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    invoke-static {v0}, Landroid/preference/SeekBarVolumizer;->-$$Nest$fgetmVolumeGroupId(Landroid/preference/SeekBarVolumizer;)I

    move-result v0

    if-ne p2, v0, :cond_b1

    .line 658
    iget-object p2, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    invoke-static {p2}, Landroid/preference/SeekBarVolumizer;->-$$Nest$fgetmAudioManager(Landroid/preference/SeekBarVolumizer;)Landroid/media/AudioManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result p2

    .line 659
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    invoke-static {v0}, Landroid/preference/SeekBarVolumizer;->-$$Nest$misDelay(Landroid/preference/SeekBarVolumizer;)Z

    move-result v0

    if-nez v0, :cond_b1

    .line 660
    invoke-direct {p0, p1, p2}, Landroid/preference/SeekBarVolumizer$Receiver;->updateVolumeSlider(II)V

    .line 664
    :cond_b1
    :goto_b1
    goto/16 :goto_124

    :cond_b3
    const-string p2, "android.app.action.INTERRUPTION_FILTER_CHANGED"

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_d0

    .line 665
    iget-object p1, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    iget-object p2, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    invoke-static {p2}, Landroid/preference/SeekBarVolumizer;->-$$Nest$fgetmNotificationManager(Landroid/preference/SeekBarVolumizer;)Landroid/app/NotificationManager;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/NotificationManager;->getZenMode()I

    move-result p2

    invoke-static {p1, p2}, Landroid/preference/SeekBarVolumizer;->-$$Nest$fputmZenMode(Landroid/preference/SeekBarVolumizer;I)V

    .line 666
    iget-object p1, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    invoke-static {p1}, Landroid/preference/SeekBarVolumizer;->-$$Nest$mupdateSlider(Landroid/preference/SeekBarVolumizer;)V

    goto :goto_124

    .line 667
    :cond_d0
    const-string p2, "android.app.action.NOTIFICATION_POLICY_CHANGED"

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_124

    .line 668
    iget-object p1, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    iget-object p2, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    invoke-static {p2}, Landroid/preference/SeekBarVolumizer;->-$$Nest$fgetmNotificationManager(Landroid/preference/SeekBarVolumizer;)Landroid/app/NotificationManager;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/NotificationManager;->getConsolidatedNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/preference/SeekBarVolumizer;->-$$Nest$fputmNotificationPolicy(Landroid/preference/SeekBarVolumizer;Landroid/app/NotificationManager$Policy;)V

    .line 669
    iget-object p1, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    iget-object p2, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    invoke-static {p2}, Landroid/preference/SeekBarVolumizer;->-$$Nest$fgetmNotificationPolicy(Landroid/preference/SeekBarVolumizer;)Landroid/app/NotificationManager$Policy;

    move-result-object p2

    iget p2, p2, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit8 p2, p2, 0x20

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_f9

    move p2, v1

    goto :goto_fa

    :cond_f9
    move p2, v0

    :goto_fa
    invoke-static {p1, p2}, Landroid/preference/SeekBarVolumizer;->-$$Nest$fputmAllowAlarms(Landroid/preference/SeekBarVolumizer;Z)V

    .line 671
    iget-object p1, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    iget-object p2, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    invoke-static {p2}, Landroid/preference/SeekBarVolumizer;->-$$Nest$fgetmNotificationPolicy(Landroid/preference/SeekBarVolumizer;)Landroid/app/NotificationManager$Policy;

    move-result-object p2

    iget p2, p2, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit8 p2, p2, 0x40

    if-eqz p2, :cond_10c

    move v0, v1

    :cond_10c
    invoke-static {p1, v0}, Landroid/preference/SeekBarVolumizer;->-$$Nest$fputmAllowMedia(Landroid/preference/SeekBarVolumizer;Z)V

    .line 673
    iget-object p1, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    iget-object p2, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    invoke-static {p2}, Landroid/preference/SeekBarVolumizer;->-$$Nest$fgetmNotificationPolicy(Landroid/preference/SeekBarVolumizer;)Landroid/app/NotificationManager$Policy;

    move-result-object p2

    invoke-static {p2}, Landroid/service/notification/ZenModeConfig;->areAllPriorityOnlyRingerSoundsMuted(Landroid/app/NotificationManager$Policy;)Z

    move-result p2

    xor-int/2addr p2, v1

    invoke-static {p1, p2}, Landroid/preference/SeekBarVolumizer;->-$$Nest$fputmAllowRinger(Landroid/preference/SeekBarVolumizer;Z)V

    .line 675
    iget-object p1, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    invoke-static {p1}, Landroid/preference/SeekBarVolumizer;->-$$Nest$mupdateSlider(Landroid/preference/SeekBarVolumizer;)V

    .line 677
    :cond_124
    :goto_124
    return-void
.end method

.method public greylist-max-o setListening(Z)V
    .registers 3

    .line 612
    iget-boolean v0, p0, Landroid/preference/SeekBarVolumizer$Receiver;->mListening:Z

    if-ne v0, p1, :cond_5

    return-void

    .line 613
    :cond_5
    iput-boolean p1, p0, Landroid/preference/SeekBarVolumizer$Receiver;->mListening:Z

    .line 614
    if-eqz p1, :cond_2e

    .line 615
    new-instance p1, Landroid/content/IntentFilter;

    const-string v0, "android.media.VOLUME_CHANGED_ACTION"

    invoke-direct {p1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 616
    const-string v0, "android.media.INTERNAL_RINGER_MODE_CHANGED_ACTION"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 617
    const-string v0, "android.app.action.INTERRUPTION_FILTER_CHANGED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 618
    const-string v0, "android.app.action.NOTIFICATION_POLICY_CHANGED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 619
    const-string v0, "android.media.STREAM_DEVICES_CHANGED_ACTION"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 620
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    invoke-static {v0}, Landroid/preference/SeekBarVolumizer;->-$$Nest$fgetmContext(Landroid/preference/SeekBarVolumizer;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 621
    goto :goto_37

    .line 622
    :cond_2e
    iget-object p1, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    invoke-static {p1}, Landroid/preference/SeekBarVolumizer;->-$$Nest$fgetmContext(Landroid/preference/SeekBarVolumizer;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 624
    :goto_37
    return-void
.end method
