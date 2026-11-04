.class public Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;
.super Landroid/service/notification/INotificationListener$Stub;
.source "NotificationListenerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/notification/NotificationListenerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "NotificationListenerWrapper"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/service/notification/NotificationListenerService;


# direct methods
.method protected constructor blacklist <init>(Landroid/service/notification/NotificationListenerService;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1502
    iput-object p1, p0, Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    invoke-direct {p0}, Landroid/service/notification/INotificationListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onActionClicked(Ljava/lang/String;Landroid/app/Notification$Action;I)V
    .registers 4

    .line 1722
    return-void
.end method

.method public blacklist onAllowedAdjustmentsChanged()V
    .registers 1

    .line 1732
    return-void
.end method

.method public blacklist onInterruptionFilterChanged(IJ)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1645
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 1646
    iput-wide p2, v0, Lcom/android/internal/os/SomeArgs;->argl1:J

    .line 1647
    iget-object p2, p0, Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    invoke-static {p2}, Landroid/service/notification/NotificationListenerService;->-$$Nest$fgetmHandler(Landroid/service/notification/NotificationListenerService;)Landroid/os/Handler;

    move-result-object p2

    const/4 p3, 0x6

    const/4 v1, 0x0

    invoke-virtual {p2, p3, p1, v1, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1648
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 1649
    return-void
.end method

.method public blacklist onListenerConnected(Landroid/service/notification/NotificationRankingUpdate;Landroid/service/notification/IDispatchCompletionListener;J)V
    .registers 7

    .line 1600
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/service/notification/Flags;->reportNlsStartAndEnd()Z

    move-result v0

    if-eqz v0, :cond_13

    if-nez p2, :cond_13

    .line 1601
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    invoke-static {v0}, Landroid/service/notification/NotificationListenerService;->-$$Nest$fgetTAG(Landroid/service/notification/NotificationListenerService;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "No completion listener supplied for this service!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1605
    :cond_13
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    invoke-static {v0}, Landroid/service/notification/NotificationListenerService;->-$$Nest$fgetmLock(Landroid/service/notification/NotificationListenerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1606
    :try_start_1a
    iget-object v1, p0, Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    invoke-virtual {v1, p1}, Landroid/service/notification/NotificationListenerService;->applyUpdateLocked(Landroid/service/notification/NotificationRankingUpdate;)V

    .line 1607
    iget-object p1, p0, Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    invoke-static {p1, p2}, Landroid/service/notification/NotificationListenerService;->-$$Nest$fputmCompletionListener(Landroid/service/notification/NotificationListenerService;Landroid/service/notification/IDispatchCompletionListener;)V

    .line 1608
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_1a .. :try_end_25} :catchall_54

    .line 1609
    iget-object p1, p0, Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    invoke-static {p1}, Landroid/service/notification/NotificationListenerService;->-$$Nest$fgetisConnected(Landroid/service/notification/NotificationListenerService;)Z

    move-result p1

    if-eqz p1, :cond_39

    .line 1610
    iget-object p1, p0, Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    invoke-static {p1}, Landroid/service/notification/NotificationListenerService;->-$$Nest$fgetTAG(Landroid/service/notification/NotificationListenerService;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "onListenerConnected called on an already connected service! This can result in duplicate events."

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1613
    :cond_39
    iget-object p1, p0, Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Landroid/service/notification/NotificationListenerService;->-$$Nest$fputisConnected(Landroid/service/notification/NotificationListenerService;Z)V

    .line 1614
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object p1

    .line 1615
    iput-wide p3, p1, Lcom/android/internal/os/SomeArgs;->argl1:J

    .line 1616
    iget-object p2, p0, Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    invoke-static {p2}, Landroid/service/notification/NotificationListenerService;->-$$Nest$fgetmHandler(Landroid/service/notification/NotificationListenerService;)Landroid/os/Handler;

    move-result-object p2

    const/4 p3, 0x3

    invoke-virtual {p2, p3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 1617
    return-void

    .line 1608
    :catchall_54
    move-exception p1

    :try_start_55
    monitor-exit v0
    :try_end_56
    .catchall {:try_start_55 .. :try_end_56} :catchall_54

    throw p1
.end method

.method public blacklist onListenerHintsChanged(IJ)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1636
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 1637
    iput-wide p2, v0, Lcom/android/internal/os/SomeArgs;->argl1:J

    .line 1638
    iget-object p2, p0, Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    invoke-static {p2}, Landroid/service/notification/NotificationListenerService;->-$$Nest$fgetmHandler(Landroid/service/notification/NotificationListenerService;)Landroid/os/Handler;

    move-result-object p2

    const/4 p3, 0x5

    const/4 v1, 0x0

    invoke-virtual {p2, p3, p1, v1, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1639
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 1640
    return-void
.end method

.method public blacklist onNotificationChannelGroupModification(Ljava/lang/String;Landroid/os/UserHandle;Landroid/app/NotificationChannelGroup;IJ)V
    .registers 8

    .line 1752
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 1753
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 1754
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 1755
    iput-object p3, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 1756
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    .line 1757
    iput-wide p5, v0, Lcom/android/internal/os/SomeArgs;->argl1:J

    .line 1758
    iget-object p1, p0, Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    invoke-static {p1}, Landroid/service/notification/NotificationListenerService;->-$$Nest$fgetmHandler(Landroid/service/notification/NotificationListenerService;)Landroid/os/Handler;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1759
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 1760
    return-void
.end method

.method public blacklist onNotificationChannelModification(Ljava/lang/String;Landroid/os/UserHandle;Landroid/app/NotificationChannel;IJ)V
    .registers 8

    .line 1738
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 1739
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 1740
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 1741
    iput-object p3, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 1742
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    .line 1743
    iput-wide p5, v0, Lcom/android/internal/os/SomeArgs;->argl1:J

    .line 1744
    iget-object p1, p0, Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    invoke-static {p1}, Landroid/service/notification/NotificationListenerService;->-$$Nest$fgetmHandler(Landroid/service/notification/NotificationListenerService;)Landroid/os/Handler;

    move-result-object p1

    const/4 p2, 0x7

    invoke-virtual {p1, p2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1745
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 1746
    return-void
.end method

.method public blacklist onNotificationClicked(Ljava/lang/String;)V
    .registers 2

    .line 1727
    return-void
.end method

.method public blacklist onNotificationDirectReply(Ljava/lang/String;)V
    .registers 2

    .line 1712
    return-void
.end method

.method public blacklist onNotificationEnqueuedWithChannel(Landroid/service/notification/IStatusBarNotificationHolder;Landroid/app/NotificationChannel;Landroid/service/notification/NotificationRankingUpdate;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1657
    return-void
.end method

.method public blacklist onNotificationEnqueuedWithChannelFull(Landroid/service/notification/StatusBarNotification;Landroid/app/NotificationChannel;Landroid/service/notification/NotificationRankingUpdate;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1665
    return-void
.end method

.method public blacklist onNotificationExpansionChanged(Ljava/lang/String;ZZ)V
    .registers 4

    .line 1707
    return-void
.end method

.method public blacklist onNotificationFeedbackReceived(Ljava/lang/String;Landroid/service/notification/NotificationRankingUpdate;Landroid/os/Bundle;)V
    .registers 4

    .line 1776
    return-void
.end method

.method public blacklist onNotificationPosted(Landroid/service/notification/IStatusBarNotificationHolder;Landroid/service/notification/NotificationRankingUpdate;J)V
    .registers 6

    .line 1508
    const-string/jumbo v0, "onNotificationPosted: Error receiving StatusBarNotification"

    :try_start_3
    invoke-interface {p1}, Landroid/service/notification/IStatusBarNotificationHolder;->get()Landroid/service/notification/StatusBarNotification;

    move-result-object p1
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_7} :catch_1d

    .line 1513
    nop

    .line 1514
    if-nez p1, :cond_19

    .line 1515
    iget-object p1, p0, Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    invoke-static {p1}, Landroid/service/notification/NotificationListenerService;->-$$Nest$fgetTAG(Landroid/service/notification/NotificationListenerService;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1516
    iget-object p1, p0, Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    invoke-static {p1, p3, p4}, Landroid/service/notification/NotificationListenerService;->-$$Nest$mnotifyDispatchCompletion(Landroid/service/notification/NotificationListenerService;J)V

    .line 1517
    return-void

    .line 1519
    :cond_19
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;->onNotificationPostedFull(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationRankingUpdate;J)V

    .line 1520
    return-void

    .line 1509
    :catch_1d
    move-exception p1

    .line 1510
    iget-object p2, p0, Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    invoke-static {p2}, Landroid/service/notification/NotificationListenerService;->-$$Nest$fgetTAG(Landroid/service/notification/NotificationListenerService;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1511
    iget-object p1, p0, Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    invoke-static {p1, p3, p4}, Landroid/service/notification/NotificationListenerService;->-$$Nest$mnotifyDispatchCompletion(Landroid/service/notification/NotificationListenerService;J)V

    .line 1512
    return-void
.end method

.method public blacklist onNotificationPostedFull(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationRankingUpdate;J)V
    .registers 8

    .line 1527
    :try_start_0
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/service/notification/NotificationListenerService;->createLegacyIconExtras(Landroid/app/Notification;)V

    .line 1528
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/service/notification/NotificationListenerService;->-$$Nest$mmaybePopulateRemoteViews(Landroid/service/notification/NotificationListenerService;Landroid/app/Notification;)V

    .line 1529
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/service/notification/NotificationListenerService;->-$$Nest$mmaybePopulatePeople(Landroid/service/notification/NotificationListenerService;Landroid/app/Notification;)V
    :try_end_1b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_1b} :catch_1c

    .line 1535
    goto :goto_3f

    .line 1530
    :catch_1c
    move-exception v0

    .line 1532
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    invoke-static {v0}, Landroid/service/notification/NotificationListenerService;->-$$Nest$fgetTAG(Landroid/service/notification/NotificationListenerService;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onNotificationPosted: can\'t rebuild notification from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1533
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1532
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1534
    const/4 p1, 0x0

    .line 1537
    :goto_3f
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 1538
    iput-wide p3, v0, Lcom/android/internal/os/SomeArgs;->argl1:J

    .line 1541
    iget-object p3, p0, Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    invoke-static {p3}, Landroid/service/notification/NotificationListenerService;->-$$Nest$fgetmLock(Landroid/service/notification/NotificationListenerService;)Ljava/lang/Object;

    move-result-object p3

    monitor-enter p3

    .line 1542
    :try_start_4c
    iget-object p4, p0, Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    invoke-virtual {p4, p2}, Landroid/service/notification/NotificationListenerService;->applyUpdateLocked(Landroid/service/notification/NotificationRankingUpdate;)V

    .line 1543
    if-eqz p1, :cond_6c

    .line 1544
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 1545
    iget-object p1, p0, Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    invoke-static {p1}, Landroid/service/notification/NotificationListenerService;->-$$Nest$fgetmRankingMap(Landroid/service/notification/NotificationListenerService;)Landroid/service/notification/NotificationListenerService$RankingMap;

    move-result-object p1

    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 1547
    iget-object p1, p0, Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    invoke-static {p1}, Landroid/service/notification/NotificationListenerService;->-$$Nest$fgetmHandler(Landroid/service/notification/NotificationListenerService;)Landroid/os/Handler;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1548
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_82

    .line 1551
    :cond_6c
    iget-object p1, p0, Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    invoke-static {p1}, Landroid/service/notification/NotificationListenerService;->-$$Nest$fgetmRankingMap(Landroid/service/notification/NotificationListenerService;)Landroid/service/notification/NotificationListenerService$RankingMap;

    move-result-object p1

    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 1552
    iget-object p1, p0, Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    invoke-static {p1}, Landroid/service/notification/NotificationListenerService;->-$$Nest$fgetmHandler(Landroid/service/notification/NotificationListenerService;)Landroid/os/Handler;

    move-result-object p1

    const/4 p2, 0x4

    invoke-virtual {p1, p2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1553
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 1555
    :goto_82
    monitor-exit p3

    .line 1556
    return-void

    .line 1555
    :catchall_84
    move-exception p1

    monitor-exit p3
    :try_end_86
    .catchall {:try_start_4c .. :try_end_86} :catchall_84

    throw p1
.end method

.method public blacklist onNotificationRankingUpdate(Landroid/service/notification/NotificationRankingUpdate;J)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1622
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 1623
    iput-wide p2, v0, Lcom/android/internal/os/SomeArgs;->argl1:J

    .line 1625
    iget-object p2, p0, Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    invoke-static {p2}, Landroid/service/notification/NotificationListenerService;->-$$Nest$fgetmLock(Landroid/service/notification/NotificationListenerService;)Ljava/lang/Object;

    move-result-object p2

    monitor-enter p2

    .line 1626
    :try_start_d
    iget-object p3, p0, Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    invoke-virtual {p3, p1}, Landroid/service/notification/NotificationListenerService;->applyUpdateLocked(Landroid/service/notification/NotificationRankingUpdate;)V

    .line 1627
    iget-object p1, p0, Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    invoke-static {p1}, Landroid/service/notification/NotificationListenerService;->-$$Nest$fgetmRankingMap(Landroid/service/notification/NotificationListenerService;)Landroid/service/notification/NotificationListenerService$RankingMap;

    move-result-object p1

    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 1628
    iget-object p1, p0, Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    invoke-static {p1}, Landroid/service/notification/NotificationListenerService;->-$$Nest$fgetmHandler(Landroid/service/notification/NotificationListenerService;)Landroid/os/Handler;

    move-result-object p1

    const/4 p3, 0x4

    invoke-virtual {p1, p3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1629
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 1630
    monitor-exit p2

    .line 1632
    return-void

    .line 1630
    :catchall_2a
    move-exception p1

    monitor-exit p2
    :try_end_2c
    .catchall {:try_start_d .. :try_end_2c} :catchall_2a

    throw p1
.end method

.method public blacklist onNotificationRemoved(Landroid/service/notification/IStatusBarNotificationHolder;Landroid/service/notification/NotificationRankingUpdate;Landroid/service/notification/NotificationStats;IJ)V
    .registers 15

    .line 1564
    :try_start_0
    invoke-interface {p1}, Landroid/service/notification/IStatusBarNotificationHolder;->get()Landroid/service/notification/StatusBarNotification;

    move-result-object v2
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_4} :catch_e

    .line 1569
    nop

    .line 1570
    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-wide v6, p5

    invoke-virtual/range {v1 .. v7}, Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;->onNotificationRemovedFull(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationRankingUpdate;Landroid/service/notification/NotificationStats;IJ)V

    .line 1571
    return-void

    .line 1565
    :catch_e
    move-exception v0

    move-object v1, p0

    move-wide v6, p5

    move-object p1, v0

    .line 1566
    iget-object p2, v1, Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    invoke-static {p2}, Landroid/service/notification/NotificationListenerService;->-$$Nest$fgetTAG(Landroid/service/notification/NotificationListenerService;)Ljava/lang/String;

    move-result-object p2

    const-string/jumbo p3, "onNotificationRemoved: Error receiving StatusBarNotification"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1567
    iget-object p1, v1, Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    invoke-static {p1, v6, v7}, Landroid/service/notification/NotificationListenerService;->-$$Nest$mnotifyDispatchCompletion(Landroid/service/notification/NotificationListenerService;J)V

    .line 1568
    return-void
.end method

.method public blacklist onNotificationRemovedFull(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationRankingUpdate;Landroid/service/notification/NotificationStats;IJ)V
    .registers 9

    .line 1577
    if-nez p1, :cond_14

    .line 1578
    iget-object p1, p0, Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    invoke-static {p1}, Landroid/service/notification/NotificationListenerService;->-$$Nest$fgetTAG(Landroid/service/notification/NotificationListenerService;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "onNotificationRemoved: Error receiving StatusBarNotification"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1579
    iget-object p1, p0, Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    invoke-static {p1, p5, p6}, Landroid/service/notification/NotificationListenerService;->-$$Nest$mnotifyDispatchCompletion(Landroid/service/notification/NotificationListenerService;J)V

    .line 1580
    return-void

    .line 1583
    :cond_14
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    invoke-static {v0}, Landroid/service/notification/NotificationListenerService;->-$$Nest$fgetmLock(Landroid/service/notification/NotificationListenerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1584
    :try_start_1b
    iget-object v1, p0, Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    invoke-virtual {v1, p2}, Landroid/service/notification/NotificationListenerService;->applyUpdateLocked(Landroid/service/notification/NotificationRankingUpdate;)V

    .line 1585
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object p2

    .line 1586
    iput-object p1, p2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 1587
    iget-object p1, p0, Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    invoke-static {p1}, Landroid/service/notification/NotificationListenerService;->-$$Nest$fgetmRankingMap(Landroid/service/notification/NotificationListenerService;)Landroid/service/notification/NotificationListenerService$RankingMap;

    move-result-object p1

    iput-object p1, p2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 1588
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p2, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 1589
    iput-object p3, p2, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    .line 1590
    iput-wide p5, p2, Lcom/android/internal/os/SomeArgs;->argl1:J

    .line 1591
    iget-object p1, p0, Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    invoke-static {p1}, Landroid/service/notification/NotificationListenerService;->-$$Nest$fgetmHandler(Landroid/service/notification/NotificationListenerService;)Landroid/os/Handler;

    move-result-object p1

    const/4 p3, 0x2

    invoke-virtual {p1, p3, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1592
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 1593
    monitor-exit v0

    .line 1595
    return-void

    .line 1593
    :catchall_48
    move-exception p1

    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_1b .. :try_end_4a} :catchall_48

    throw p1
.end method

.method public greylist-max-o onNotificationSnoozedUntilContext(Landroid/service/notification/IStatusBarNotificationHolder;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1694
    return-void
.end method

.method public blacklist onNotificationSnoozedUntilContextFull(Landroid/service/notification/StatusBarNotification;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1701
    return-void
.end method

.method public blacklist onNotificationVisibilityChanged(Ljava/lang/String;Z)V
    .registers 3

    .line 1687
    return-void
.end method

.method public blacklist onNotificationsSeen(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1671
    return-void
.end method

.method public blacklist onPanelHidden()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1681
    return-void
.end method

.method public blacklist onPanelRevealed(I)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1676
    return-void
.end method

.method public blacklist onStatusBarIconsBehaviorChanged(ZJ)V
    .registers 5

    .line 1765
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 1766
    iput-wide p2, v0, Lcom/android/internal/os/SomeArgs;->argl1:J

    .line 1767
    iput p1, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 1768
    iget-object p1, p0, Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;->this$0:Landroid/service/notification/NotificationListenerService;

    invoke-static {p1}, Landroid/service/notification/NotificationListenerService;->-$$Nest$fgetmHandler(Landroid/service/notification/NotificationListenerService;)Landroid/os/Handler;

    move-result-object p1

    const/16 p2, 0x9

    invoke-virtual {p1, p2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1769
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 1770
    return-void
.end method

.method public blacklist onSuggestedReplySent(Ljava/lang/String;Ljava/lang/CharSequence;I)V
    .registers 4

    .line 1717
    return-void
.end method
