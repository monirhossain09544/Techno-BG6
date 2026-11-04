.class final Landroid/service/notification/NotificationAssistantService$MyHandler;
.super Landroid/os/Handler;
.source "NotificationAssistantService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/notification/NotificationAssistantService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MyHandler"
.end annotation


# static fields
.field public static final blacklist MSG_ON_ACTION_INVOKED:I = 0x7

.field public static final blacklist MSG_ON_ALLOWED_ADJUSTMENTS_CHANGED:I = 0x8

.field public static final blacklist MSG_ON_NOTIFICATIONS_SEEN:I = 0x3

.field public static final blacklist MSG_ON_NOTIFICATION_CLICKED:I = 0xc

.field public static final blacklist MSG_ON_NOTIFICATION_DIRECT_REPLY_SENT:I = 0x5

.field public static final greylist-max-o MSG_ON_NOTIFICATION_ENQUEUED:I = 0x1

.field public static final blacklist MSG_ON_NOTIFICATION_EXPANSION_CHANGED:I = 0x4

.field public static final blacklist MSG_ON_NOTIFICATION_FEEDBACK_RECEIVED:I = 0xd

.field public static final greylist-max-o MSG_ON_NOTIFICATION_SNOOZED:I = 0x2

.field public static final blacklist MSG_ON_NOTIFICATION_VISIBILITY_CHANGED:I = 0xb

.field public static final blacklist MSG_ON_PANEL_HIDDEN:I = 0xa

.field public static final blacklist MSG_ON_PANEL_REVEALED:I = 0x9

.field public static final blacklist MSG_ON_SUGGESTED_REPLY_SENT:I = 0x6


# instance fields
.field final synthetic blacklist this$0:Landroid/service/notification/NotificationAssistantService;


# direct methods
.method public constructor blacklist <init>(Landroid/service/notification/NotificationAssistantService;Landroid/os/Looper;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 605
    iput-object p1, p0, Landroid/service/notification/NotificationAssistantService$MyHandler;->this$0:Landroid/service/notification/NotificationAssistantService;

    .line 606
    const/4 p1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 607
    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 7

    .line 611
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_142

    goto/16 :goto_140

    .line 718
    :pswitch_9
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 719
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 720
    iget-object v1, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v1, Landroid/service/notification/NotificationListenerService$RankingMap;

    .line 721
    iget-object v2, p1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v2, Landroid/os/Bundle;

    .line 722
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 723
    iget-object p1, p0, Landroid/service/notification/NotificationAssistantService$MyHandler;->this$0:Landroid/service/notification/NotificationAssistantService;

    invoke-virtual {p1, v0, v1, v2}, Landroid/service/notification/NotificationAssistantService;->onNotificationFeedbackReceived(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$RankingMap;Landroid/os/Bundle;)V

    .line 724
    goto/16 :goto_140

    .line 711
    :pswitch_23
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 712
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 713
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 714
    iget-object p1, p0, Landroid/service/notification/NotificationAssistantService$MyHandler;->this$0:Landroid/service/notification/NotificationAssistantService;

    invoke-virtual {p1, v0}, Landroid/service/notification/NotificationAssistantService;->onNotificationClicked(Ljava/lang/String;)V

    .line 715
    goto/16 :goto_140

    .line 703
    :pswitch_35
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 704
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 705
    iget v3, p1, Lcom/android/internal/os/SomeArgs;->argi1:I

    if-ne v3, v2, :cond_42

    move v1, v2

    .line 706
    :cond_42
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 707
    iget-object p1, p0, Landroid/service/notification/NotificationAssistantService$MyHandler;->this$0:Landroid/service/notification/NotificationAssistantService;

    invoke-virtual {p1, v0, v1}, Landroid/service/notification/NotificationAssistantService;->onNotificationVisibilityChanged(Ljava/lang/String;Z)V

    .line 708
    goto/16 :goto_140

    .line 699
    :pswitch_4c
    iget-object p1, p0, Landroid/service/notification/NotificationAssistantService$MyHandler;->this$0:Landroid/service/notification/NotificationAssistantService;

    invoke-virtual {p1}, Landroid/service/notification/NotificationAssistantService;->onPanelHidden()V

    .line 700
    goto/16 :goto_140

    .line 692
    :pswitch_53
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 693
    iget v0, p1, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 694
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 695
    iget-object p1, p0, Landroid/service/notification/NotificationAssistantService$MyHandler;->this$0:Landroid/service/notification/NotificationAssistantService;

    invoke-virtual {p1, v0}, Landroid/service/notification/NotificationAssistantService;->onPanelRevealed(I)V

    .line 696
    goto/16 :goto_140

    .line 688
    :pswitch_63
    iget-object p1, p0, Landroid/service/notification/NotificationAssistantService$MyHandler;->this$0:Landroid/service/notification/NotificationAssistantService;

    invoke-virtual {p1}, Landroid/service/notification/NotificationAssistantService;->onAllowedAdjustmentsChanged()V

    .line 689
    goto/16 :goto_140

    .line 679
    :pswitch_6a
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 680
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 681
    iget-object v1, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v1, Landroid/app/Notification$Action;

    .line 682
    iget v2, p1, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 683
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 684
    iget-object p1, p0, Landroid/service/notification/NotificationAssistantService$MyHandler;->this$0:Landroid/service/notification/NotificationAssistantService;

    invoke-virtual {p1, v0, v1, v2}, Landroid/service/notification/NotificationAssistantService;->onActionInvoked(Ljava/lang/String;Landroid/app/Notification$Action;I)V

    .line 685
    goto/16 :goto_140

    .line 670
    :pswitch_82
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 671
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 672
    iget-object v1, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v1, Ljava/lang/CharSequence;

    .line 673
    iget v2, p1, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 674
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 675
    iget-object p1, p0, Landroid/service/notification/NotificationAssistantService$MyHandler;->this$0:Landroid/service/notification/NotificationAssistantService;

    invoke-virtual {p1, v0, v1, v2}, Landroid/service/notification/NotificationAssistantService;->onSuggestedReplySent(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 676
    goto/16 :goto_140

    .line 663
    :pswitch_9a
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 664
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 665
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 666
    iget-object p1, p0, Landroid/service/notification/NotificationAssistantService$MyHandler;->this$0:Landroid/service/notification/NotificationAssistantService;

    invoke-virtual {p1, v0}, Landroid/service/notification/NotificationAssistantService;->onNotificationDirectReplied(Ljava/lang/String;)V

    .line 667
    goto/16 :goto_140

    .line 654
    :pswitch_ac
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 655
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 656
    iget v3, p1, Lcom/android/internal/os/SomeArgs;->argi1:I

    if-ne v3, v2, :cond_ba

    move v3, v2

    goto :goto_bb

    :cond_ba
    move v3, v1

    .line 657
    :goto_bb
    iget v4, p1, Lcom/android/internal/os/SomeArgs;->argi2:I

    if-ne v4, v2, :cond_c0

    move v1, v2

    .line 658
    :cond_c0
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 659
    iget-object p1, p0, Landroid/service/notification/NotificationAssistantService$MyHandler;->this$0:Landroid/service/notification/NotificationAssistantService;

    invoke-virtual {p1, v0, v3, v1}, Landroid/service/notification/NotificationAssistantService;->onNotificationExpansionChanged(Ljava/lang/String;ZZ)V

    .line 660
    goto/16 :goto_140

    .line 647
    :pswitch_ca
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 648
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    .line 649
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 650
    iget-object p1, p0, Landroid/service/notification/NotificationAssistantService$MyHandler;->this$0:Landroid/service/notification/NotificationAssistantService;

    invoke-virtual {p1, v0}, Landroid/service/notification/NotificationAssistantService;->onNotificationsSeen(Ljava/util/List;)V

    .line 651
    goto :goto_140

    .line 639
    :pswitch_db
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 640
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Landroid/service/notification/StatusBarNotification;

    .line 641
    iget-object v1, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 642
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 643
    iget-object p1, p0, Landroid/service/notification/NotificationAssistantService$MyHandler;->this$0:Landroid/service/notification/NotificationAssistantService;

    invoke-virtual {p1, v0, v1}, Landroid/service/notification/NotificationAssistantService;->onNotificationSnoozedUntilContext(Landroid/service/notification/StatusBarNotification;Ljava/lang/String;)V

    .line 644
    goto :goto_140

    .line 613
    :pswitch_f0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 614
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Landroid/service/notification/StatusBarNotification;

    .line 615
    iget-object v1, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v1, Landroid/app/NotificationChannel;

    .line 616
    iget-object v2, p1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v2, Landroid/service/notification/NotificationListenerService$RankingMap;

    .line 617
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 618
    iget-object p1, p0, Landroid/service/notification/NotificationAssistantService$MyHandler;->this$0:Landroid/service/notification/NotificationAssistantService;

    invoke-virtual {p1, v0, v1, v2}, Landroid/service/notification/NotificationAssistantService;->onNotificationEnqueued(Landroid/service/notification/StatusBarNotification;Landroid/app/NotificationChannel;Landroid/service/notification/NotificationListenerService$RankingMap;)Landroid/service/notification/Adjustment;

    move-result-object p1

    .line 619
    iget-object v0, p0, Landroid/service/notification/NotificationAssistantService$MyHandler;->this$0:Landroid/service/notification/NotificationAssistantService;

    invoke-static {v0, p1}, Landroid/service/notification/NotificationAssistantService;->-$$Nest$msetAdjustmentIssuer(Landroid/service/notification/NotificationAssistantService;Landroid/service/notification/Adjustment;)V

    .line 620
    if-eqz p1, :cond_140

    .line 621
    iget-object v0, p0, Landroid/service/notification/NotificationAssistantService$MyHandler;->this$0:Landroid/service/notification/NotificationAssistantService;

    invoke-virtual {v0}, Landroid/service/notification/NotificationAssistantService;->isBound()Z

    move-result v0

    const-string v1, "NotificationAssistants"

    if-nez v0, :cond_120

    .line 622
    const-string p1, "MSG_ON_NOTIFICATION_ENQUEUED: service not bound, skip."

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    return-void

    .line 626
    :cond_120
    :try_start_120
    iget-object v0, p0, Landroid/service/notification/NotificationAssistantService$MyHandler;->this$0:Landroid/service/notification/NotificationAssistantService;

    invoke-virtual {v0}, Landroid/service/notification/NotificationAssistantService;->getNotificationInterface()Landroid/app/INotificationManager;

    move-result-object v0

    iget-object v2, p0, Landroid/service/notification/NotificationAssistantService$MyHandler;->this$0:Landroid/service/notification/NotificationAssistantService;

    iget-object v2, v2, Landroid/service/notification/NotificationAssistantService;->mWrapper:Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;

    invoke-interface {v0, v2, p1}, Landroid/app/INotificationManager;->applyEnqueuedAdjustmentFromAssistant(Landroid/service/notification/INotificationListener;Landroid/service/notification/Adjustment;)V
    :try_end_12d
    .catch Landroid/os/RemoteException; {:try_start_120 .. :try_end_12d} :catch_135
    .catch Ljava/lang/SecurityException; {:try_start_120 .. :try_end_12d} :catch_12e

    goto :goto_134

    .line 631
    :catch_12e
    move-exception p1

    .line 633
    const-string v0, "Enqueue adjustment failed; no longer connected"

    invoke-static {v1, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 634
    :goto_134
    goto :goto_140

    .line 628
    :catch_135
    move-exception p1

    .line 629
    const-string v0, "Unable to contact notification manager"

    invoke-static {v1, v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 630
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 727
    :cond_140
    :goto_140
    return-void

    nop

    :pswitch_data_142
    .packed-switch 0x1
        :pswitch_f0
        :pswitch_db
        :pswitch_ca
        :pswitch_ac
        :pswitch_9a
        :pswitch_82
        :pswitch_6a
        :pswitch_63
        :pswitch_53
        :pswitch_4c
        :pswitch_35
        :pswitch_23
        :pswitch_9
    .end packed-switch
.end method
