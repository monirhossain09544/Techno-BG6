.class Landroid/service/notification/NotificationAssistantService$NotificationAssistantServiceWrapper;
.super Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;
.source "NotificationAssistantService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/notification/NotificationAssistantService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NotificationAssistantServiceWrapper"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/service/notification/NotificationAssistantService;


# direct methods
.method private constructor blacklist <init>(Landroid/service/notification/NotificationAssistantService;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 432
    iput-object p1, p0, Landroid/service/notification/NotificationAssistantService$NotificationAssistantServiceWrapper;->this$0:Landroid/service/notification/NotificationAssistantService;

    invoke-direct {p0, p1}, Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;-><init>(Landroid/service/notification/NotificationListenerService;)V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/service/notification/NotificationAssistantService;Landroid/service/notification/NotificationAssistantService-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/service/notification/NotificationAssistantService$NotificationAssistantServiceWrapper;-><init>(Landroid/service/notification/NotificationAssistantService;)V

    return-void
.end method


# virtual methods
.method public blacklist onActionClicked(Ljava/lang/String;Landroid/app/Notification$Action;I)V
    .registers 5

    .line 552
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 553
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 554
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 555
    iput p3, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 556
    iget-object p1, p0, Landroid/service/notification/NotificationAssistantService$NotificationAssistantServiceWrapper;->this$0:Landroid/service/notification/NotificationAssistantService;

    iget-object p1, p1, Landroid/service/notification/NotificationAssistantService;->mHandler:Landroid/os/Handler;

    const/4 p2, 0x7

    invoke-virtual {p1, p2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 557
    return-void
.end method

.method public blacklist onAllowedAdjustmentsChanged()V
    .registers 3

    .line 568
    iget-object v0, p0, Landroid/service/notification/NotificationAssistantService$NotificationAssistantServiceWrapper;->this$0:Landroid/service/notification/NotificationAssistantService;

    iget-object v0, v0, Landroid/service/notification/NotificationAssistantService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 569
    return-void
.end method

.method public blacklist onNotificationClicked(Ljava/lang/String;)V
    .registers 4

    .line 561
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 562
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 563
    iget-object p1, p0, Landroid/service/notification/NotificationAssistantService$NotificationAssistantServiceWrapper;->this$0:Landroid/service/notification/NotificationAssistantService;

    iget-object p1, p1, Landroid/service/notification/NotificationAssistantService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xc

    invoke-virtual {p1, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 564
    return-void
.end method

.method public blacklist onNotificationDirectReply(Ljava/lang/String;)V
    .registers 4

    .line 535
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 536
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 537
    iget-object p1, p0, Landroid/service/notification/NotificationAssistantService$NotificationAssistantServiceWrapper;->this$0:Landroid/service/notification/NotificationAssistantService;

    iget-object p1, p1, Landroid/service/notification/NotificationAssistantService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {p1, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 538
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 539
    return-void
.end method

.method public blacklist onNotificationEnqueuedWithChannel(Landroid/service/notification/IStatusBarNotificationHolder;Landroid/app/NotificationChannel;Landroid/service/notification/NotificationRankingUpdate;)V
    .registers 5

    .line 438
    const-string v0, "NotificationAssistants"

    :try_start_2
    invoke-interface {p1}, Landroid/service/notification/IStatusBarNotificationHolder;->get()Landroid/service/notification/StatusBarNotification;

    move-result-object p1
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_6} :catch_14

    .line 442
    nop

    .line 443
    if-nez p1, :cond_10

    .line 444
    const-string/jumbo p1, "onNotificationEnqueuedWithChannel: Error receiving StatusBarNotification"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    return-void

    .line 448
    :cond_10
    invoke-virtual {p0, p1, p2, p3}, Landroid/service/notification/NotificationAssistantService$NotificationAssistantServiceWrapper;->onNotificationEnqueuedWithChannelFull(Landroid/service/notification/StatusBarNotification;Landroid/app/NotificationChannel;Landroid/service/notification/NotificationRankingUpdate;)V

    .line 449
    return-void

    .line 439
    :catch_14
    move-exception p1

    .line 440
    const-string/jumbo p2, "onNotificationEnqueued: Error receiving StatusBarNotification"

    invoke-static {v0, p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 441
    return-void
.end method

.method public blacklist onNotificationEnqueuedWithChannelFull(Landroid/service/notification/StatusBarNotification;Landroid/app/NotificationChannel;Landroid/service/notification/NotificationRankingUpdate;)V
    .registers 5

    .line 454
    iget-object v0, p0, Landroid/service/notification/NotificationAssistantService$NotificationAssistantServiceWrapper;->this$0:Landroid/service/notification/NotificationAssistantService;

    invoke-virtual {v0, p3}, Landroid/service/notification/NotificationAssistantService;->applyUpdateLocked(Landroid/service/notification/NotificationRankingUpdate;)V

    .line 455
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object p3

    .line 456
    iput-object p1, p3, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 457
    iput-object p2, p3, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 458
    iget-object p1, p0, Landroid/service/notification/NotificationAssistantService$NotificationAssistantServiceWrapper;->this$0:Landroid/service/notification/NotificationAssistantService;

    invoke-virtual {p1}, Landroid/service/notification/NotificationAssistantService;->getCurrentRanking()Landroid/service/notification/NotificationListenerService$RankingMap;

    move-result-object p1

    iput-object p1, p3, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 459
    iget-object p1, p0, Landroid/service/notification/NotificationAssistantService$NotificationAssistantServiceWrapper;->this$0:Landroid/service/notification/NotificationAssistantService;

    iget-object p1, p1, Landroid/service/notification/NotificationAssistantService;->mHandler:Landroid/os/Handler;

    const/4 p2, 0x1

    invoke-virtual {p1, p2, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 460
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 461
    return-void
.end method

.method public blacklist onNotificationExpansionChanged(Ljava/lang/String;ZZ)V
    .registers 5

    .line 525
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 526
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 527
    iput p2, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 528
    iput p3, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 529
    iget-object p1, p0, Landroid/service/notification/NotificationAssistantService$NotificationAssistantServiceWrapper;->this$0:Landroid/service/notification/NotificationAssistantService;

    iget-object p1, p1, Landroid/service/notification/NotificationAssistantService;->mHandler:Landroid/os/Handler;

    const/4 p2, 0x4

    invoke-virtual {p1, p2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 530
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 531
    return-void
.end method

.method public blacklist onNotificationFeedbackReceived(Ljava/lang/String;Landroid/service/notification/NotificationRankingUpdate;Landroid/os/Bundle;)V
    .registers 5

    .line 574
    iget-object v0, p0, Landroid/service/notification/NotificationAssistantService$NotificationAssistantServiceWrapper;->this$0:Landroid/service/notification/NotificationAssistantService;

    invoke-virtual {v0, p2}, Landroid/service/notification/NotificationAssistantService;->applyUpdateLocked(Landroid/service/notification/NotificationRankingUpdate;)V

    .line 575
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object p2

    .line 576
    iput-object p1, p2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 577
    iget-object p1, p0, Landroid/service/notification/NotificationAssistantService$NotificationAssistantServiceWrapper;->this$0:Landroid/service/notification/NotificationAssistantService;

    invoke-virtual {p1}, Landroid/service/notification/NotificationAssistantService;->getCurrentRanking()Landroid/service/notification/NotificationListenerService$RankingMap;

    move-result-object p1

    iput-object p1, p2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 578
    iput-object p3, p2, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 579
    iget-object p1, p0, Landroid/service/notification/NotificationAssistantService$NotificationAssistantServiceWrapper;->this$0:Landroid/service/notification/NotificationAssistantService;

    iget-object p1, p1, Landroid/service/notification/NotificationAssistantService;->mHandler:Landroid/os/Handler;

    const/16 p3, 0xd

    invoke-virtual {p1, p3, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 580
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 581
    return-void
.end method

.method public greylist-max-o onNotificationSnoozedUntilContext(Landroid/service/notification/IStatusBarNotificationHolder;Ljava/lang/String;)V
    .registers 5

    .line 468
    const-string/jumbo v0, "onNotificationSnoozed: Error receiving StatusBarNotification"

    const-string v1, "NotificationAssistants"

    :try_start_5
    invoke-interface {p1}, Landroid/service/notification/IStatusBarNotificationHolder;->get()Landroid/service/notification/StatusBarNotification;

    move-result-object p1
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_9} :catch_14

    .line 472
    nop

    .line 473
    if-nez p1, :cond_10

    .line 474
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    return-void

    .line 477
    :cond_10
    invoke-virtual {p0, p1, p2}, Landroid/service/notification/NotificationAssistantService$NotificationAssistantServiceWrapper;->onNotificationSnoozedUntilContextFull(Landroid/service/notification/StatusBarNotification;Ljava/lang/String;)V

    .line 478
    return-void

    .line 469
    :catch_14
    move-exception p1

    .line 470
    invoke-static {v1, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 471
    return-void
.end method

.method public blacklist onNotificationSnoozedUntilContextFull(Landroid/service/notification/StatusBarNotification;Ljava/lang/String;)V
    .registers 4

    .line 483
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 484
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 485
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 486
    iget-object p1, p0, Landroid/service/notification/NotificationAssistantService$NotificationAssistantServiceWrapper;->this$0:Landroid/service/notification/NotificationAssistantService;

    iget-object p1, p1, Landroid/service/notification/NotificationAssistantService;->mHandler:Landroid/os/Handler;

    const/4 p2, 0x2

    invoke-virtual {p1, p2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 487
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 488
    return-void
.end method

.method public blacklist onNotificationVisibilityChanged(Ljava/lang/String;Z)V
    .registers 4

    .line 515
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 516
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 517
    iput p2, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 518
    iget-object p1, p0, Landroid/service/notification/NotificationAssistantService$NotificationAssistantServiceWrapper;->this$0:Landroid/service/notification/NotificationAssistantService;

    iget-object p1, p1, Landroid/service/notification/NotificationAssistantService;->mHandler:Landroid/os/Handler;

    const/16 p2, 0xb

    invoke-virtual {p1, p2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 519
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 520
    return-void
.end method

.method public blacklist onNotificationsSeen(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 492
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 493
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 494
    iget-object p1, p0, Landroid/service/notification/NotificationAssistantService$NotificationAssistantServiceWrapper;->this$0:Landroid/service/notification/NotificationAssistantService;

    iget-object p1, p1, Landroid/service/notification/NotificationAssistantService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 495
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 496
    return-void
.end method

.method public blacklist onPanelHidden()V
    .registers 4

    .line 508
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 509
    iget-object v1, p0, Landroid/service/notification/NotificationAssistantService$NotificationAssistantServiceWrapper;->this$0:Landroid/service/notification/NotificationAssistantService;

    iget-object v1, v1, Landroid/service/notification/NotificationAssistantService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xa

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 510
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 511
    return-void
.end method

.method public blacklist onPanelRevealed(I)V
    .registers 4

    .line 500
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 501
    iput p1, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 502
    iget-object p1, p0, Landroid/service/notification/NotificationAssistantService$NotificationAssistantServiceWrapper;->this$0:Landroid/service/notification/NotificationAssistantService;

    iget-object p1, p1, Landroid/service/notification/NotificationAssistantService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {p1, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 503
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 504
    return-void
.end method

.method public blacklist onSuggestedReplySent(Ljava/lang/String;Ljava/lang/CharSequence;I)V
    .registers 5

    .line 543
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 544
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 545
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 546
    iput p3, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 547
    iget-object p1, p0, Landroid/service/notification/NotificationAssistantService$NotificationAssistantServiceWrapper;->this$0:Landroid/service/notification/NotificationAssistantService;

    iget-object p1, p1, Landroid/service/notification/NotificationAssistantService;->mHandler:Landroid/os/Handler;

    const/4 p2, 0x6

    invoke-virtual {p1, p2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 548
    return-void
.end method
