.class final Landroid/service/notification/NotificationListenerService$MyHandler;
.super Landroid/os/Handler;
.source "NotificationListenerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/notification/NotificationListenerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MyHandler"
.end annotation


# static fields
.field public static final greylist-max-o MSG_ON_INTERRUPTION_FILTER_CHANGED:I = 0x6

.field public static final greylist-max-o MSG_ON_LISTENER_CONNECTED:I = 0x3

.field public static final greylist-max-o MSG_ON_LISTENER_HINTS_CHANGED:I = 0x5

.field public static final greylist-max-o MSG_ON_NOTIFICATION_CHANNEL_GROUP_MODIFIED:I = 0x8

.field public static final greylist-max-o MSG_ON_NOTIFICATION_CHANNEL_MODIFIED:I = 0x7

.field public static final greylist-max-o MSG_ON_NOTIFICATION_POSTED:I = 0x1

.field public static final greylist-max-o MSG_ON_NOTIFICATION_RANKING_UPDATE:I = 0x4

.field public static final greylist-max-o MSG_ON_NOTIFICATION_REMOVED:I = 0x2

.field public static final blacklist MSG_ON_STATUS_BAR_ICON_BEHAVIOR_CHANGED:I = 0x9


# instance fields
.field final synthetic blacklist this$0:Landroid/service/notification/NotificationListenerService;


# direct methods
.method public constructor blacklist <init>(Landroid/service/notification/NotificationListenerService;Landroid/os/Looper;)V
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

    .line 2552
    iput-object p1, p0, Landroid/service/notification/NotificationListenerService$MyHandler;->this$0:Landroid/service/notification/NotificationListenerService;

    .line 2553
    const/4 p1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 2554
    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 7

    .line 2558
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$MyHandler;->this$0:Landroid/service/notification/NotificationListenerService;

    invoke-static {v0}, Landroid/service/notification/NotificationListenerService;->-$$Nest$fgetisConnected(Landroid/service/notification/NotificationListenerService;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 2559
    return-void

    .line 2561
    :cond_9
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_11c

    goto/16 :goto_11b

    .line 2636
    :pswitch_10
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 2637
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$MyHandler;->this$0:Landroid/service/notification/NotificationListenerService;

    iget v1, p1, Lcom/android/internal/os/SomeArgs;->argi1:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1c

    goto :goto_1d

    :cond_1c
    const/4 v2, 0x0

    :goto_1d
    invoke-virtual {v0, v2}, Landroid/service/notification/NotificationListenerService;->onSilentStatusBarIconsVisibilityChanged(Z)V

    .line 2638
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$MyHandler;->this$0:Landroid/service/notification/NotificationListenerService;

    iget-wide v1, p1, Lcom/android/internal/os/SomeArgs;->argl1:J

    invoke-static {v0, v1, v2}, Landroid/service/notification/NotificationListenerService;->-$$Nest$mnotifyDispatchCompletion(Landroid/service/notification/NotificationListenerService;J)V

    .line 2639
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_11b

    .line 2625
    :pswitch_2c
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 2626
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 2627
    iget-object v1, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v1, Landroid/os/UserHandle;

    .line 2628
    iget-object v2, p1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v2, Landroid/app/NotificationChannelGroup;

    .line 2629
    iget-object v3, p1, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 2630
    iget-object v4, p0, Landroid/service/notification/NotificationListenerService$MyHandler;->this$0:Landroid/service/notification/NotificationListenerService;

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/service/notification/NotificationListenerService;->onNotificationChannelGroupModified(Ljava/lang/String;Landroid/os/UserHandle;Landroid/app/NotificationChannelGroup;I)V

    .line 2631
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$MyHandler;->this$0:Landroid/service/notification/NotificationListenerService;

    iget-wide v1, p1, Lcom/android/internal/os/SomeArgs;->argl1:J

    invoke-static {v0, v1, v2}, Landroid/service/notification/NotificationListenerService;->-$$Nest$mnotifyDispatchCompletion(Landroid/service/notification/NotificationListenerService;J)V

    .line 2632
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 2633
    goto/16 :goto_11b

    .line 2614
    :pswitch_55
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 2615
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 2616
    iget-object v1, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v1, Landroid/os/UserHandle;

    .line 2617
    iget-object v2, p1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v2, Landroid/app/NotificationChannel;

    .line 2618
    iget-object v3, p1, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 2619
    iget-object v4, p0, Landroid/service/notification/NotificationListenerService$MyHandler;->this$0:Landroid/service/notification/NotificationListenerService;

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/service/notification/NotificationListenerService;->onNotificationChannelModified(Ljava/lang/String;Landroid/os/UserHandle;Landroid/app/NotificationChannel;I)V

    .line 2620
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$MyHandler;->this$0:Landroid/service/notification/NotificationListenerService;

    iget-wide v1, p1, Lcom/android/internal/os/SomeArgs;->argl1:J

    invoke-static {v0, v1, v2}, Landroid/service/notification/NotificationListenerService;->-$$Nest$mnotifyDispatchCompletion(Landroid/service/notification/NotificationListenerService;J)V

    .line 2621
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 2622
    goto/16 :goto_11b

    .line 2606
    :pswitch_7e
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 2607
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 2608
    iget-object v1, p0, Landroid/service/notification/NotificationListenerService$MyHandler;->this$0:Landroid/service/notification/NotificationListenerService;

    invoke-virtual {v1, p1}, Landroid/service/notification/NotificationListenerService;->onInterruptionFilterChanged(I)V

    .line 2609
    iget-object p1, p0, Landroid/service/notification/NotificationListenerService$MyHandler;->this$0:Landroid/service/notification/NotificationListenerService;

    iget-wide v1, v0, Lcom/android/internal/os/SomeArgs;->argl1:J

    invoke-static {p1, v1, v2}, Landroid/service/notification/NotificationListenerService;->-$$Nest$mnotifyDispatchCompletion(Landroid/service/notification/NotificationListenerService;J)V

    .line 2610
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 2611
    goto/16 :goto_11b

    .line 2598
    :pswitch_95
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 2599
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 2600
    iget-object v1, p0, Landroid/service/notification/NotificationListenerService$MyHandler;->this$0:Landroid/service/notification/NotificationListenerService;

    invoke-virtual {v1, p1}, Landroid/service/notification/NotificationListenerService;->onListenerHintsChanged(I)V

    .line 2601
    iget-object p1, p0, Landroid/service/notification/NotificationListenerService$MyHandler;->this$0:Landroid/service/notification/NotificationListenerService;

    iget-wide v1, v0, Lcom/android/internal/os/SomeArgs;->argl1:J

    invoke-static {p1, v1, v2}, Landroid/service/notification/NotificationListenerService;->-$$Nest$mnotifyDispatchCompletion(Landroid/service/notification/NotificationListenerService;J)V

    .line 2602
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 2603
    goto :goto_11b

    .line 2590
    :pswitch_ab
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 2591
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Landroid/service/notification/NotificationListenerService$RankingMap;

    .line 2592
    iget-object v1, p0, Landroid/service/notification/NotificationListenerService$MyHandler;->this$0:Landroid/service/notification/NotificationListenerService;

    invoke-virtual {v1, v0}, Landroid/service/notification/NotificationListenerService;->onNotificationRankingUpdate(Landroid/service/notification/NotificationListenerService$RankingMap;)V

    .line 2593
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$MyHandler;->this$0:Landroid/service/notification/NotificationListenerService;

    iget-wide v1, p1, Lcom/android/internal/os/SomeArgs;->argl1:J

    invoke-static {v0, v1, v2}, Landroid/service/notification/NotificationListenerService;->-$$Nest$mnotifyDispatchCompletion(Landroid/service/notification/NotificationListenerService;J)V

    .line 2594
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 2595
    goto :goto_11b

    .line 2583
    :pswitch_c3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 2584
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$MyHandler;->this$0:Landroid/service/notification/NotificationListenerService;

    invoke-virtual {v0}, Landroid/service/notification/NotificationListenerService;->onListenerConnected()V

    .line 2585
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$MyHandler;->this$0:Landroid/service/notification/NotificationListenerService;

    iget-wide v1, p1, Lcom/android/internal/os/SomeArgs;->argl1:J

    invoke-static {v0, v1, v2}, Landroid/service/notification/NotificationListenerService;->-$$Nest$mnotifyDispatchCompletion(Landroid/service/notification/NotificationListenerService;J)V

    .line 2586
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 2587
    goto :goto_11b

    .line 2572
    :pswitch_d7
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 2573
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Landroid/service/notification/StatusBarNotification;

    .line 2574
    iget-object v1, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v1, Landroid/service/notification/NotificationListenerService$RankingMap;

    .line 2575
    iget-object v2, p1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 2576
    iget-object v3, p1, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    check-cast v3, Landroid/service/notification/NotificationStats;

    .line 2577
    iget-object v4, p0, Landroid/service/notification/NotificationListenerService$MyHandler;->this$0:Landroid/service/notification/NotificationListenerService;

    invoke-virtual {v4, v0, v1, v3, v2}, Landroid/service/notification/NotificationListenerService;->onNotificationRemoved(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;Landroid/service/notification/NotificationStats;I)V

    .line 2578
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$MyHandler;->this$0:Landroid/service/notification/NotificationListenerService;

    iget-wide v1, p1, Lcom/android/internal/os/SomeArgs;->argl1:J

    invoke-static {v0, v1, v2}, Landroid/service/notification/NotificationListenerService;->-$$Nest$mnotifyDispatchCompletion(Landroid/service/notification/NotificationListenerService;J)V

    .line 2579
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 2580
    goto :goto_11b

    .line 2563
    :pswitch_ff
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 2564
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Landroid/service/notification/StatusBarNotification;

    .line 2565
    iget-object v1, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v1, Landroid/service/notification/NotificationListenerService$RankingMap;

    .line 2566
    iget-object v2, p0, Landroid/service/notification/NotificationListenerService$MyHandler;->this$0:Landroid/service/notification/NotificationListenerService;

    invoke-virtual {v2, v0, v1}, Landroid/service/notification/NotificationListenerService;->onNotificationPosted(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V

    .line 2567
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$MyHandler;->this$0:Landroid/service/notification/NotificationListenerService;

    iget-wide v1, p1, Lcom/android/internal/os/SomeArgs;->argl1:J

    invoke-static {v0, v1, v2}, Landroid/service/notification/NotificationListenerService;->-$$Nest$mnotifyDispatchCompletion(Landroid/service/notification/NotificationListenerService;J)V

    .line 2568
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 2569
    nop

    .line 2642
    :goto_11b
    return-void

    :pswitch_data_11c
    .packed-switch 0x1
        :pswitch_ff
        :pswitch_d7
        :pswitch_c3
        :pswitch_ab
        :pswitch_95
        :pswitch_7e
        :pswitch_55
        :pswitch_2c
        :pswitch_10
    .end packed-switch
.end method
