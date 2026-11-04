.class Landroid/telecom/ConnectionService$2;
.super Landroid/os/Handler;
.source "ConnectionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/ConnectionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/telecom/ConnectionService;


# direct methods
.method constructor blacklist <init>(Landroid/telecom/ConnectionService;Landroid/os/Looper;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 1138
    iput-object p1, p0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 16

    .line 1141
    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x0

    const-string v4, "createConnectionFailed %s"

    const-string v5, "Enqueueing pre-init conference request %s"

    const-string v6, "H.CS.crCoC"

    const-string v7, "H.CS.crCoF"

    const-string v8, "H.CS.crCo"

    const-string v9, "H.CS.r"

    const-string v10, "Enqueueing pre-init request %s"

    const-string v11, "H.CS.cASC"

    const/4 v12, 0x0

    const/4 v13, 0x1

    packed-switch v2, :pswitch_data_90c

    :pswitch_18
    goto/16 :goto_90a

    .line 1837
    :pswitch_1a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lcom/android/internal/os/SomeArgs;

    .line 1838
    iget-object v0, v2, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    invoke-static {v0, v11}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 1841
    :try_start_26
    iget-object v0, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 1842
    iget-object v3, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 1843
    iget-object v1, p0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v1, v0, v3}, Landroid/telecom/ConnectionService;->-$$Nest$monMuteStateChanged(Landroid/telecom/ConnectionService;Ljava/lang/String;Z)V
    :try_end_37
    .catchall {:try_start_26 .. :try_end_37} :catchall_40

    .line 1845
    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1846
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1847
    nop

    .line 1848
    goto/16 :goto_90a

    .line 1845
    :catchall_40
    move-exception v0

    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1846
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1847
    throw v0

    .line 1823
    :pswitch_48
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lcom/android/internal/os/SomeArgs;

    .line 1824
    iget-object v0, v2, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    invoke-static {v0, v11}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 1827
    :try_start_54
    iget-object v0, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 1828
    iget-object v3, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Ljava/util/List;

    .line 1829
    iget-object v1, p0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v1, v0, v3}, Landroid/telecom/ConnectionService;->-$$Nest$monAvailableCallEndpointsChanged(Landroid/telecom/ConnectionService;Ljava/lang/String;Ljava/util/List;)V
    :try_end_61
    .catchall {:try_start_54 .. :try_end_61} :catchall_6a

    .line 1831
    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1832
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1833
    nop

    .line 1834
    goto/16 :goto_90a

    .line 1831
    :catchall_6a
    move-exception v0

    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1832
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1833
    throw v0

    .line 1809
    :pswitch_72
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lcom/android/internal/os/SomeArgs;

    .line 1810
    iget-object v0, v2, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    invoke-static {v0, v11}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 1813
    :try_start_7e
    iget-object v0, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 1814
    iget-object v3, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Landroid/telecom/CallEndpoint;

    .line 1815
    iget-object v1, p0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v1, v0, v3}, Landroid/telecom/ConnectionService;->-$$Nest$monCallEndpointChanged(Landroid/telecom/ConnectionService;Ljava/lang/String;Landroid/telecom/CallEndpoint;)V
    :try_end_8b
    .catchall {:try_start_7e .. :try_end_8b} :catchall_94

    .line 1817
    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1818
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1819
    nop

    .line 1820
    goto/16 :goto_90a

    .line 1817
    :catchall_94
    move-exception v0

    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1818
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1819
    throw v0

    .line 1576
    :pswitch_9c
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lcom/android/internal/os/SomeArgs;

    .line 1577
    iget-object v0, v2, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    const-string v3, "H.CS.tBNUS"

    invoke-static {v0, v3}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 1580
    :try_start_aa
    iget-object v0, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 1581
    iget-object v3, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 1582
    iget-object v1, p0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v1, v0, v3}, Landroid/telecom/ConnectionService;->-$$Nest$monTrackedByNonUiService(Landroid/telecom/ConnectionService;Ljava/lang/String;Z)V
    :try_end_bb
    .catchall {:try_start_aa .. :try_end_bb} :catchall_c4

    .line 1584
    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1585
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1586
    nop

    .line 1587
    goto/16 :goto_90a

    .line 1584
    :catchall_c4
    move-exception v0

    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1585
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1586
    throw v0

    .line 1562
    :pswitch_cc
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lcom/android/internal/os/SomeArgs;

    .line 1563
    iget-object v0, v2, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    const-string v3, "H.CS.uAU"

    invoke-static {v0, v3}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 1566
    :try_start_da
    iget-object v0, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 1567
    iget-object v3, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 1568
    iget-object v1, p0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v1, v0, v3}, Landroid/telecom/ConnectionService;->-$$Nest$monUsingAlternativeUi(Landroid/telecom/ConnectionService;Ljava/lang/String;Z)V
    :try_end_eb
    .catchall {:try_start_da .. :try_end_eb} :catchall_f4

    .line 1570
    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1571
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1572
    nop

    .line 1573
    goto/16 :goto_90a

    .line 1570
    :catchall_f4
    move-exception v0

    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1571
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1572
    throw v0

    .line 1718
    :pswitch_fc
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lcom/android/internal/os/SomeArgs;

    .line 1720
    :try_start_101
    iget-object v0, v2, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    const-string v3, "H.CS.oCFC"

    invoke-static {v0, v3}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 1722
    iget-object v0, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 1723
    iget-object v3, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Landroid/telecom/Connection$CallFilteringCompletionInfo;

    .line 1725
    iget-object v1, p0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v1, v0, v3}, Landroid/telecom/ConnectionService;->-$$Nest$monCallFilteringCompleted(Landroid/telecom/ConnectionService;Ljava/lang/String;Landroid/telecom/Connection$CallFilteringCompletionInfo;)V
    :try_end_117
    .catchall {:try_start_101 .. :try_end_117} :catchall_120

    .line 1727
    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1728
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1729
    nop

    .line 1730
    goto/16 :goto_90a

    .line 1727
    :catchall_120
    move-exception v0

    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1728
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1729
    throw v0

    .line 1492
    :pswitch_128
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lcom/android/internal/os/SomeArgs;

    .line 1493
    iget-object v0, v2, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    const-string v3, "H.CS.cTrans"

    invoke-static {v0, v3}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 1496
    :try_start_136
    iget-object v0, p0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    iget-object v1, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v3, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-static {v0, v1, v3}, Landroid/telecom/ConnectionService;->-$$Nest$mconsultativeTransfer(Landroid/telecom/ConnectionService;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_143
    .catchall {:try_start_136 .. :try_end_143} :catchall_14c

    .line 1498
    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1499
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1500
    nop

    .line 1501
    goto/16 :goto_90a

    .line 1498
    :catchall_14c
    move-exception v0

    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1499
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1500
    throw v0

    .line 1480
    :pswitch_154
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lcom/android/internal/os/SomeArgs;

    .line 1481
    iget-object v0, v2, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    const-string v3, "H.CS.trans"

    invoke-static {v0, v3}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 1483
    :try_start_162
    iget v0, v2, Lcom/android/internal/os/SomeArgs;->argi1:I

    if-ne v0, v13, :cond_167

    move v12, v13

    .line 1484
    :cond_167
    iget-object v0, p0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    iget-object v1, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v3, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Landroid/net/Uri;

    invoke-static {v0, v1, v3, v12}, Landroid/telecom/ConnectionService;->-$$Nest$mtransfer(Landroid/telecom/ConnectionService;Ljava/lang/String;Landroid/net/Uri;Z)V
    :try_end_174
    .catchall {:try_start_162 .. :try_end_174} :catchall_17d

    .line 1486
    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1487
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1488
    nop

    .line 1489
    goto/16 :goto_90a

    .line 1486
    :catchall_17d
    move-exception v0

    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1487
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1488
    throw v0

    .line 1664
    :pswitch_185
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lcom/android/internal/os/SomeArgs;

    .line 1666
    :try_start_18a
    iget-object v0, v2, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    const-string v3, "H.CS.aP"

    invoke-static {v0, v3}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 1668
    iget-object v0, p0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    iget-object v1, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v3, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Ljava/util/List;

    invoke-static {v0, v1, v3}, Landroid/telecom/ConnectionService;->-$$Nest$maddConferenceParticipants(Landroid/telecom/ConnectionService;Ljava/lang/String;Ljava/util/List;)V
    :try_end_1a0
    .catchall {:try_start_18a .. :try_end_1a0} :catchall_1a9

    .line 1670
    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1671
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1672
    nop

    .line 1673
    goto/16 :goto_90a

    .line 1670
    :catchall_1a9
    move-exception v0

    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1671
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1672
    throw v0

    .line 1457
    :pswitch_1b1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lcom/android/internal/os/SomeArgs;

    .line 1458
    iget-object v0, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    invoke-static {v0, v9}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 1460
    :try_start_1bd
    iget-object v0, p0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    iget-object v1, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget v3, v2, Lcom/android/internal/os/SomeArgs;->argi1:I

    invoke-static {v0, v1, v3}, Landroid/telecom/ConnectionService;->-$$Nest$mreject(Landroid/telecom/ConnectionService;Ljava/lang/String;I)V
    :try_end_1c8
    .catchall {:try_start_1bd .. :try_end_1c8} :catchall_1d1

    .line 1462
    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1463
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1464
    nop

    .line 1465
    goto/16 :goto_90a

    .line 1462
    :catchall_1d1
    move-exception v0

    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1463
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1464
    throw v0

    .line 1334
    :pswitch_1d9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v8, v0

    check-cast v8, Lcom/android/internal/os/SomeArgs;

    .line 1335
    iget-object v0, v8, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    invoke-static {v0, v7}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 1338
    :try_start_1e5
    iget-object v0, v8, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 1339
    iget-object v2, v8, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    move-object v6, v2

    check-cast v6, Landroid/telecom/ConnectionRequest;

    .line 1340
    iget v2, v8, Lcom/android/internal/os/SomeArgs;->argi1:I

    if-ne v2, v13, :cond_1f4

    move v7, v13

    goto :goto_1f5

    :cond_1f4
    move v7, v12

    .line 1341
    :goto_1f5
    iget-object v2, v8, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    move-object v4, v2

    check-cast v4, Landroid/telecom/PhoneAccountHandle;

    .line 1343
    iget-object v2, p0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v2}, Landroid/telecom/ConnectionService;->-$$Nest$fgetmAreAccountsInitialized(Landroid/telecom/ConnectionService;)Z

    move-result v2

    if-nez v2, :cond_221

    .line 1344
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {p0, v5, v2}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1345
    iget-object v2, p0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v2}, Landroid/telecom/ConnectionService;->-$$Nest$fgetmPreInitializationConnectionRequests(Landroid/telecom/ConnectionService;)Ljava/util/List;

    move-result-object v9

    move-object v5, v0

    new-instance v0, Landroid/telecom/ConnectionService$2$6;

    const-string v2, "H.CS.crConfF.pIConfR"

    const/4 v3, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Landroid/telecom/ConnectionService$2$6;-><init>(Landroid/telecom/ConnectionService$2;Ljava/lang/String;Ljava/lang/Object;Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Landroid/telecom/ConnectionRequest;Z)V

    .line 1355
    invoke-virtual {v0}, Landroid/telecom/ConnectionService$2$6;->prepare()Ljava/lang/Runnable;

    move-result-object v0

    .line 1345
    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_230

    .line 1357
    :cond_221
    move-object v5, v0

    const-string v0, "createConferenceFailed %s"

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {p0, v0, v2}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1358
    iget-object v0, p0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v0, v4, v5, v6, v7}, Landroid/telecom/ConnectionService;->-$$Nest$mcreateConferenceFailed(Landroid/telecom/ConnectionService;Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Landroid/telecom/ConnectionRequest;Z)V
    :try_end_230
    .catchall {:try_start_1e5 .. :try_end_230} :catchall_239

    .line 1362
    :goto_230
    invoke-virtual {v8}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1363
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1364
    nop

    .line 1365
    goto/16 :goto_90a

    .line 1362
    :catchall_239
    move-exception v0

    invoke-virtual {v8}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1363
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1364
    throw v0

    .line 1307
    :pswitch_241
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lcom/android/internal/os/SomeArgs;

    .line 1308
    iget-object v0, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    invoke-static {v0, v6}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 1311
    :try_start_24d
    iget-object v0, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 1312
    iget-object v4, p0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v4}, Landroid/telecom/ConnectionService;->-$$Nest$fgetmAreAccountsInitialized(Landroid/telecom/ConnectionService;)Z

    move-result v4

    if-nez v4, :cond_275

    .line 1313
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {p0, v5, v4}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1314
    iget-object v4, p0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v4}, Landroid/telecom/ConnectionService;->-$$Nest$fgetmPreInitializationConnectionRequests(Landroid/telecom/ConnectionService;)Ljava/util/List;

    move-result-object v4

    new-instance v5, Landroid/telecom/ConnectionService$2$5;

    const-string v6, "H.CS.crConfC.pIConfR"

    invoke-direct {v5, p0, v6, v3, v0}, Landroid/telecom/ConnectionService$2$5;-><init>(Landroid/telecom/ConnectionService$2;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 1323
    invoke-virtual {v5}, Landroid/telecom/ConnectionService$2$5;->prepare()Ljava/lang/Runnable;

    move-result-object v0

    .line 1314
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_27a

    .line 1325
    :cond_275
    iget-object v1, p0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v1, v0}, Landroid/telecom/ConnectionService;->-$$Nest$mnotifyCreateConferenceComplete(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    :try_end_27a
    .catchall {:try_start_24d .. :try_end_27a} :catchall_283

    .line 1328
    :goto_27a
    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1329
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1330
    nop

    .line 1331
    goto/16 :goto_90a

    .line 1328
    :catchall_283
    move-exception v0

    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1329
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1330
    throw v0

    .line 1269
    :pswitch_28b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v9, v0

    check-cast v9, Lcom/android/internal/os/SomeArgs;

    .line 1270
    iget-object v0, v9, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    invoke-static {v0, v8}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 1272
    :try_start_297
    iget-object v0, v9, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Landroid/telecom/PhoneAccountHandle;

    .line 1274
    iget-object v0, v9, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    .line 1275
    iget-object v0, v9, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Landroid/telecom/ConnectionRequest;

    .line 1276
    iget v0, v9, Lcom/android/internal/os/SomeArgs;->argi1:I

    if-ne v0, v13, :cond_2ac

    move v5, v13

    goto :goto_2ad

    :cond_2ac
    move v5, v12

    .line 1277
    :goto_2ad
    iget v0, v9, Lcom/android/internal/os/SomeArgs;->argi2:I

    if-ne v0, v13, :cond_2b3

    move v6, v13

    goto :goto_2b4

    :cond_2b3
    move v6, v12

    .line 1278
    :goto_2b4
    iget-object v0, p0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v0}, Landroid/telecom/ConnectionService;->-$$Nest$fgetmAreAccountsInitialized(Landroid/telecom/ConnectionService;)Z

    move-result v0

    if-nez v0, :cond_2e1

    .line 1279
    const-string v0, "Enqueueing pre-initconference request %s"

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {p0, v0, v7}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1280
    iget-object v0, p0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v0}, Landroid/telecom/ConnectionService;->-$$Nest$fgetmPreInitializationConnectionRequests(Landroid/telecom/ConnectionService;)Ljava/util/List;

    move-result-object v10

    new-instance v0, Landroid/telecom/ConnectionService$2$4;

    move v8, v6

    move-object v6, v4

    move-object v4, v2

    const-string v2, "H.CS.crConf.pIConfR"

    move v7, v5

    move-object v5, v3

    const/4 v3, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Landroid/telecom/ConnectionService$2$4;-><init>(Landroid/telecom/ConnectionService$2;Ljava/lang/String;Ljava/lang/Object;Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Landroid/telecom/ConnectionRequest;ZZ)V

    .line 1292
    invoke-virtual {v0}, Landroid/telecom/ConnectionService$2$4;->prepare()Ljava/lang/Runnable;

    move-result-object v0

    .line 1280
    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2f0

    .line 1294
    :cond_2e1
    move v7, v5

    move v8, v6

    move-object v5, v3

    move-object v6, v4

    move-object v4, v2

    iget-object v1, p0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    move-object v2, v4

    move-object v3, v5

    move-object v4, v6

    move v5, v7

    move v6, v8

    invoke-static/range {v1 .. v6}, Landroid/telecom/ConnectionService;->-$$Nest$mcreateConference(Landroid/telecom/ConnectionService;Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Landroid/telecom/ConnectionRequest;ZZ)V
    :try_end_2f0
    .catchall {:try_start_297 .. :try_end_2f0} :catchall_2f9

    .line 1301
    :goto_2f0
    invoke-virtual {v9}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1302
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1303
    nop

    .line 1304
    goto/16 :goto_90a

    .line 1301
    :catchall_2f9
    move-exception v0

    invoke-virtual {v9}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1302
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1303
    throw v0

    .line 1435
    :pswitch_301
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lcom/android/internal/os/SomeArgs;

    .line 1436
    iget-object v0, v2, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    const-string v3, "H.CS.def"

    invoke-static {v0, v3}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 1438
    :try_start_30f
    iget-object v0, p0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    iget-object v1, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v3, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Landroid/net/Uri;

    invoke-static {v0, v1, v3}, Landroid/telecom/ConnectionService;->-$$Nest$mdeflect(Landroid/telecom/ConnectionService;Ljava/lang/String;Landroid/net/Uri;)V
    :try_end_31c
    .catchall {:try_start_30f .. :try_end_31c} :catchall_325

    .line 1440
    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1441
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1442
    nop

    .line 1443
    goto/16 :goto_90a

    .line 1440
    :catchall_325
    move-exception v0

    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1441
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1442
    throw v0

    .line 1733
    :pswitch_32d
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lcom/android/internal/os/SomeArgs;

    .line 1735
    :try_start_332
    iget-object v0, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    const-string v3, "H.CS.hC"

    invoke-static {v0, v3}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 1737
    iget-object v0, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 1738
    iget-object v1, p0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v1, v0}, Landroid/telecom/ConnectionService;->-$$Nest$mnotifyHandoverComplete(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    :try_end_344
    .catchall {:try_start_332 .. :try_end_344} :catchall_34d

    .line 1740
    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1741
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1742
    nop

    .line 1743
    goto/16 :goto_90a

    .line 1740
    :catchall_34d
    move-exception v0

    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1741
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1742
    throw v0

    .line 1369
    :pswitch_355
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v7, v0

    check-cast v7, Lcom/android/internal/os/SomeArgs;

    .line 1370
    iget-object v0, v7, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    const-string v2, "H.CS.haF"

    invoke-static {v0, v2}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 1373
    :try_start_363
    iget-object v0, v7, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 1374
    iget-object v2, v7, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    move-object v5, v2

    check-cast v5, Landroid/telecom/ConnectionRequest;

    .line 1375
    iget-object v2, v7, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 1376
    iget-object v2, p0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v2}, Landroid/telecom/ConnectionService;->-$$Nest$fgetmAreAccountsInitialized(Landroid/telecom/ConnectionService;)Z

    move-result v2

    if-nez v2, :cond_39b

    .line 1377
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {p0, v10, v2}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1378
    iget-object v2, p0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v2}, Landroid/telecom/ConnectionService;->-$$Nest$fgetmPreInitializationConnectionRequests(Landroid/telecom/ConnectionService;)Ljava/util/List;

    move-result-object v8

    move-object v4, v0

    new-instance v0, Landroid/telecom/ConnectionService$2$7;

    const-string v2, "H.CS.haF.pICR"

    const/4 v3, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Landroid/telecom/ConnectionService$2$7;-><init>(Landroid/telecom/ConnectionService$2;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Landroid/telecom/ConnectionRequest;I)V

    .line 1387
    invoke-virtual {v0}, Landroid/telecom/ConnectionService$2$7;->prepare()Ljava/lang/Runnable;

    move-result-object v0

    .line 1378
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3a7

    .line 1389
    :cond_39b
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {p0, v4, v2}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1390
    iget-object v1, p0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v1, v0, v5, v6}, Landroid/telecom/ConnectionService;->-$$Nest$mhandoverFailed(Landroid/telecom/ConnectionService;Ljava/lang/String;Landroid/telecom/ConnectionRequest;I)V
    :try_end_3a7
    .catchall {:try_start_363 .. :try_end_3a7} :catchall_3b0

    .line 1393
    :goto_3a7
    invoke-virtual {v7}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1394
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1395
    nop

    .line 1396
    goto/16 :goto_90a

    .line 1393
    :catchall_3b0
    move-exception v0

    invoke-virtual {v7}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1394
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1395
    throw v0

    .line 1803
    :pswitch_3b8
    iget-object v0, p0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-virtual {v0}, Landroid/telecom/ConnectionService;->onConnectionServiceFocusGained()V

    .line 1804
    goto/16 :goto_90a

    .line 1806
    :pswitch_3bf
    iget-object v0, p0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-virtual {v0}, Landroid/telecom/ConnectionService;->onConnectionServiceFocusLost()V

    .line 1807
    goto/16 :goto_90a

    .line 1209
    :pswitch_3c6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lcom/android/internal/os/SomeArgs;

    .line 1210
    iget-object v0, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    invoke-static {v0, v6}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 1213
    :try_start_3d2
    iget-object v0, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 1214
    iget-object v4, p0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v4}, Landroid/telecom/ConnectionService;->-$$Nest$fgetmAreAccountsInitialized(Landroid/telecom/ConnectionService;)Z

    move-result v4

    if-nez v4, :cond_3fa

    .line 1215
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {p0, v10, v4}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1216
    iget-object v4, p0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v4}, Landroid/telecom/ConnectionService;->-$$Nest$fgetmPreInitializationConnectionRequests(Landroid/telecom/ConnectionService;)Ljava/util/List;

    move-result-object v4

    new-instance v5, Landroid/telecom/ConnectionService$2$2;

    const-string v6, "H.CS.crCoC.pICR"

    invoke-direct {v5, p0, v6, v3, v0}, Landroid/telecom/ConnectionService$2$2;-><init>(Landroid/telecom/ConnectionService$2;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 1225
    invoke-virtual {v5}, Landroid/telecom/ConnectionService$2$2;->prepare()Ljava/lang/Runnable;

    move-result-object v0

    .line 1216
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3ff

    .line 1227
    :cond_3fa
    iget-object v1, p0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v1, v0}, Landroid/telecom/ConnectionService;->-$$Nest$mnotifyCreateConnectionComplete(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    :try_end_3ff
    .catchall {:try_start_3d2 .. :try_end_3ff} :catchall_408

    .line 1230
    :goto_3ff
    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1231
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1232
    nop

    .line 1233
    goto/16 :goto_90a

    .line 1230
    :catchall_408
    move-exception v0

    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1231
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1232
    throw v0

    .line 1788
    :pswitch_410
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lcom/android/internal/os/SomeArgs;

    .line 1790
    :try_start_415
    iget-object v0, v2, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    const-string v3, "H.CS.rTRUR"

    invoke-static {v0, v3}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 1792
    iget-object v0, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 1793
    iget-object v3, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Landroid/telecom/Connection$RttTextStream;

    .line 1795
    iget-object v1, p0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v1, v0, v3}, Landroid/telecom/ConnectionService;->-$$Nest$mhandleRttUpgradeResponse(Landroid/telecom/ConnectionService;Ljava/lang/String;Landroid/telecom/Connection$RttTextStream;)V
    :try_end_42b
    .catchall {:try_start_415 .. :try_end_42b} :catchall_434

    .line 1797
    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1798
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1799
    nop

    .line 1800
    goto/16 :goto_90a

    .line 1797
    :catchall_434
    move-exception v0

    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1798
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1799
    throw v0

    .line 1775
    :pswitch_43c
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lcom/android/internal/os/SomeArgs;

    .line 1777
    :try_start_441
    iget-object v0, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    const-string v3, "H.CS.-RTT"

    invoke-static {v0, v3}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 1779
    iget-object v0, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 1780
    iget-object v1, p0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v1, v0}, Landroid/telecom/ConnectionService;->-$$Nest$mstopRtt(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    :try_end_453
    .catchall {:try_start_441 .. :try_end_453} :catchall_45c

    .line 1782
    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1783
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1784
    nop

    .line 1785
    goto/16 :goto_90a

    .line 1782
    :catchall_45c
    move-exception v0

    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1783
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1784
    throw v0

    .line 1760
    :pswitch_464
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lcom/android/internal/os/SomeArgs;

    .line 1762
    :try_start_469
    iget-object v0, v2, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    const-string v3, "H.CS.+RTT"

    invoke-static {v0, v3}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 1764
    iget-object v0, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 1765
    iget-object v3, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Landroid/telecom/Connection$RttTextStream;

    .line 1767
    iget-object v1, p0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v1, v0, v3}, Landroid/telecom/ConnectionService;->-$$Nest$mstartRtt(Landroid/telecom/ConnectionService;Ljava/lang/String;Landroid/telecom/Connection$RttTextStream;)V
    :try_end_47f
    .catchall {:try_start_469 .. :try_end_47f} :catchall_488

    .line 1769
    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1770
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1771
    nop

    .line 1772
    goto/16 :goto_90a

    .line 1769
    :catchall_488
    move-exception v0

    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1770
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1771
    throw v0

    .line 1236
    :pswitch_490
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v8, v0

    check-cast v8, Lcom/android/internal/os/SomeArgs;

    .line 1237
    iget-object v0, v8, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    invoke-static {v0, v7}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 1240
    :try_start_49c
    iget-object v0, v8, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Ljava/lang/String;

    .line 1241
    iget-object v0, v8, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Landroid/telecom/ConnectionRequest;

    .line 1242
    iget v0, v8, Lcom/android/internal/os/SomeArgs;->argi1:I

    if-ne v0, v13, :cond_4ac

    move v7, v13

    goto :goto_4ad

    :cond_4ac
    move v7, v12

    .line 1243
    :goto_4ad
    iget-object v0, v8, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/PhoneAccountHandle;

    .line 1245
    iget-object v2, p0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v2}, Landroid/telecom/ConnectionService;->-$$Nest$fgetmAreAccountsInitialized(Landroid/telecom/ConnectionService;)Z

    move-result v2

    if-nez v2, :cond_4d8

    .line 1246
    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {p0, v10, v2}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1247
    iget-object v2, p0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v2}, Landroid/telecom/ConnectionService;->-$$Nest$fgetmPreInitializationConnectionRequests(Landroid/telecom/ConnectionService;)Ljava/util/List;

    move-result-object v9

    move-object v4, v0

    new-instance v0, Landroid/telecom/ConnectionService$2$3;

    const-string v2, "H.CS.crCoF.pICR"

    const/4 v3, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Landroid/telecom/ConnectionService$2$3;-><init>(Landroid/telecom/ConnectionService$2;Ljava/lang/String;Ljava/lang/Object;Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Landroid/telecom/ConnectionRequest;Z)V

    .line 1256
    invoke-virtual {v0}, Landroid/telecom/ConnectionService$2$3;->prepare()Ljava/lang/Runnable;

    move-result-object v0

    .line 1247
    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4e4

    .line 1258
    :cond_4d8
    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {p0, v4, v2}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1259
    iget-object v1, p0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v1, v0, v5, v6, v7}, Landroid/telecom/ConnectionService;->-$$Nest$mcreateConnectionFailed(Landroid/telecom/ConnectionService;Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Landroid/telecom/ConnectionRequest;Z)V
    :try_end_4e4
    .catchall {:try_start_49c .. :try_end_4e4} :catchall_4ed

    .line 1263
    :goto_4e4
    invoke-virtual {v8}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1264
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1265
    nop

    .line 1266
    goto/16 :goto_90a

    .line 1263
    :catchall_4ed
    move-exception v0

    invoke-virtual {v8}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1264
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1265
    throw v0

    .line 1746
    :pswitch_4f5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lcom/android/internal/os/SomeArgs;

    .line 1748
    :try_start_4fa
    iget-object v0, v2, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    const-string v3, "H.CS.oEC"

    invoke-static {v0, v3}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 1750
    iget-object v0, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 1751
    iget-object v3, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    .line 1752
    iget-object v1, p0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v1, v0, v3}, Landroid/telecom/ConnectionService;->-$$Nest$mhandleExtrasChanged(Landroid/telecom/ConnectionService;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_510
    .catchall {:try_start_4fa .. :try_end_510} :catchall_519

    .line 1754
    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1755
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1756
    nop

    .line 1757
    goto/16 :goto_90a

    .line 1754
    :catchall_519
    move-exception v0

    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1755
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1756
    throw v0

    .line 1703
    :pswitch_521
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lcom/android/internal/os/SomeArgs;

    .line 1705
    :try_start_526
    iget-object v0, v2, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    const-string v3, "H.CS.sCE"

    invoke-static {v0, v3}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 1707
    iget-object v0, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 1708
    iget-object v3, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .line 1709
    iget-object v4, v2, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v4, Landroid/os/Bundle;

    .line 1710
    iget-object v1, p0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v1, v0, v3, v4}, Landroid/telecom/ConnectionService;->-$$Nest$msendCallEvent(Landroid/telecom/ConnectionService;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_540
    .catchall {:try_start_526 .. :try_end_540} :catchall_549

    .line 1712
    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1713
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1714
    nop

    .line 1715
    goto/16 :goto_90a

    .line 1712
    :catchall_549
    move-exception v0

    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1713
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1714
    throw v0

    .line 1691
    :pswitch_551
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lcom/android/internal/os/SomeArgs;

    .line 1693
    :try_start_556
    iget-object v0, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    const-string v3, "H.CS.pEC"

    invoke-static {v0, v3}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 1695
    iget-object v0, p0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    iget-object v1, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/telecom/ConnectionService;->-$$Nest$mpullExternalCall(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    :try_end_568
    .catchall {:try_start_556 .. :try_end_568} :catchall_571

    .line 1697
    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1698
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1699
    nop

    .line 1700
    goto/16 :goto_90a

    .line 1697
    :catchall_571
    move-exception v0

    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1698
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1699
    throw v0

    .line 1515
    :pswitch_579
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lcom/android/internal/os/SomeArgs;

    .line 1516
    iget-object v0, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    const-string v3, "H.CS.s"

    invoke-static {v0, v3}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 1518
    :try_start_587
    iget-object v0, p0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    iget-object v1, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/telecom/ConnectionService;->-$$Nest$msilence(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    :try_end_590
    .catchall {:try_start_587 .. :try_end_590} :catchall_599

    .line 1520
    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1521
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1522
    nop

    .line 1523
    goto/16 :goto_90a

    .line 1520
    :catchall_599
    move-exception v0

    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1521
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1522
    throw v0

    .line 1468
    :pswitch_5a1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lcom/android/internal/os/SomeArgs;

    .line 1469
    iget-object v0, v2, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    const-string v3, "H.CS.rWM"

    invoke-static {v0, v3}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 1472
    :try_start_5af
    iget-object v0, p0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    iget-object v1, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v3, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-static {v0, v1, v3}, Landroid/telecom/ConnectionService;->-$$Nest$mreject(Landroid/telecom/ConnectionService;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5bc
    .catchall {:try_start_5af .. :try_end_5bc} :catchall_5c5

    .line 1474
    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1475
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1476
    nop

    .line 1477
    goto/16 :goto_90a

    .line 1474
    :catchall_5c5
    move-exception v0

    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1475
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1476
    throw v0

    .line 1652
    :pswitch_5cd
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lcom/android/internal/os/SomeArgs;

    .line 1654
    :try_start_5d2
    iget-object v0, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    const-string v3, "H.CS.sC"

    invoke-static {v0, v3}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 1656
    iget-object v0, p0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    iget-object v1, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/telecom/ConnectionService;->-$$Nest$mswapConference(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    :try_end_5e4
    .catchall {:try_start_5d2 .. :try_end_5e4} :catchall_5ed

    .line 1658
    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1659
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1660
    nop

    .line 1661
    goto/16 :goto_90a

    .line 1658
    :catchall_5ed
    move-exception v0

    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1659
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1660
    throw v0

    .line 1640
    :pswitch_5f5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lcom/android/internal/os/SomeArgs;

    .line 1642
    :try_start_5fa
    iget-object v0, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    const-string v3, "H.CS.mC"

    invoke-static {v0, v3}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 1644
    iget-object v0, p0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    iget-object v1, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/telecom/ConnectionService;->-$$Nest$mmergeConference(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    :try_end_60c
    .catchall {:try_start_5fa .. :try_end_60c} :catchall_615

    .line 1646
    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1647
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1648
    nop

    .line 1649
    goto/16 :goto_90a

    .line 1646
    :catchall_615
    move-exception v0

    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1647
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1648
    throw v0

    .line 1421
    :pswitch_61d
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lcom/android/internal/os/SomeArgs;

    .line 1422
    iget-object v0, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    const-string v3, "H.CS.anV"

    invoke-static {v0, v3}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 1425
    :try_start_62b
    iget-object v0, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 1426
    iget v3, v2, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 1427
    iget-object v1, p0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v1, v0, v3}, Landroid/telecom/ConnectionService;->-$$Nest$manswerVideo(Landroid/telecom/ConnectionService;Ljava/lang/String;I)V
    :try_end_636
    .catchall {:try_start_62b .. :try_end_636} :catchall_63f

    .line 1429
    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1430
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1431
    nop

    .line 1432
    goto/16 :goto_90a

    .line 1429
    :catchall_63f
    move-exception v0

    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1430
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1431
    throw v0

    .line 1157
    :pswitch_647
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lcom/android/internal/os/SomeArgs;

    .line 1159
    :try_start_64c
    iget-object v0, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    const-string v3, "H.CS.rCSA"

    invoke-static {v0, v3}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 1161
    iget-object v0, p0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v0}, Landroid/telecom/ConnectionService;->-$$Nest$fgetmAdapter(Landroid/telecom/ConnectionService;)Landroid/telecom/ConnectionServiceAdapter;

    move-result-object v0

    iget-object v1, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    invoke-virtual {v0, v1}, Landroid/telecom/ConnectionServiceAdapter;->removeAdapter(Lcom/android/internal/telecom/IConnectionServiceAdapter;)V
    :try_end_662
    .catchall {:try_start_64c .. :try_end_662} :catchall_66b

    .line 1163
    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1164
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1165
    nop

    .line 1166
    goto/16 :goto_90a

    .line 1163
    :catchall_66b
    move-exception v0

    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1164
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1165
    throw v0

    .line 1677
    :pswitch_673
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lcom/android/internal/os/SomeArgs;

    .line 1679
    :try_start_678
    iget-object v0, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    const-string v3, "H.CS.oPDC"

    invoke-static {v0, v3}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 1681
    iget-object v0, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 1682
    iget v3, v2, Lcom/android/internal/os/SomeArgs;->argi1:I

    if-ne v3, v13, :cond_68a

    move v12, v13

    .line 1683
    :cond_68a
    iget-object v1, p0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v1, v0, v12}, Landroid/telecom/ConnectionService;->-$$Nest$monPostDialContinue(Landroid/telecom/ConnectionService;Ljava/lang/String;Z)V
    :try_end_68f
    .catchall {:try_start_678 .. :try_end_68f} :catchall_698

    .line 1685
    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1686
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1687
    nop

    .line 1688
    goto/16 :goto_90a

    .line 1685
    :catchall_698
    move-exception v0

    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1686
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1687
    throw v0

    .line 1628
    :pswitch_6a0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lcom/android/internal/os/SomeArgs;

    .line 1630
    :try_start_6a5
    iget-object v0, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    const-string v3, "H.CS.sFC"

    invoke-static {v0, v3}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 1632
    iget-object v0, p0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    iget-object v1, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/telecom/ConnectionService;->-$$Nest$msplitFromConference(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    :try_end_6b7
    .catchall {:try_start_6a5 .. :try_end_6b7} :catchall_6c0

    .line 1634
    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1635
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1636
    nop

    .line 1637
    goto/16 :goto_90a

    .line 1634
    :catchall_6c0
    move-exception v0

    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1635
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1636
    throw v0

    .line 1614
    :pswitch_6c8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lcom/android/internal/os/SomeArgs;

    .line 1616
    :try_start_6cd
    iget-object v0, v2, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    const-string v3, "H.CS.c"

    invoke-static {v0, v3}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 1618
    iget-object v0, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 1619
    iget-object v3, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .line 1620
    iget-object v1, p0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v1, v0, v3}, Landroid/telecom/ConnectionService;->-$$Nest$mconference(Landroid/telecom/ConnectionService;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6e3
    .catchall {:try_start_6cd .. :try_end_6e3} :catchall_6ec

    .line 1622
    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1623
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1624
    nop

    .line 1625
    goto/16 :goto_90a

    .line 1622
    :catchall_6ec
    move-exception v0

    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1623
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1624
    throw v0

    .line 1602
    :pswitch_6f4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lcom/android/internal/os/SomeArgs;

    .line 1604
    :try_start_6f9
    iget-object v0, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    const-string v3, "H.CS.sDT"

    invoke-static {v0, v3}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 1606
    iget-object v0, p0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    iget-object v1, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/telecom/ConnectionService;->-$$Nest$mstopDtmfTone(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    :try_end_70b
    .catchall {:try_start_6f9 .. :try_end_70b} :catchall_714

    .line 1608
    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1609
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1610
    nop

    .line 1611
    goto/16 :goto_90a

    .line 1608
    :catchall_714
    move-exception v0

    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1609
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1610
    throw v0

    .line 1590
    :pswitch_71c
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lcom/android/internal/os/SomeArgs;

    .line 1592
    :try_start_721
    iget-object v0, v2, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    const-string v3, "H.CS.pDT"

    invoke-static {v0, v3}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 1594
    iget-object v0, p0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    iget-object v1, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v3, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Character;

    invoke-virtual {v3}, Ljava/lang/Character;->charValue()C

    move-result v3

    invoke-static {v0, v1, v3}, Landroid/telecom/ConnectionService;->-$$Nest$mplayDtmfTone(Landroid/telecom/ConnectionService;Ljava/lang/String;C)V
    :try_end_73b
    .catchall {:try_start_721 .. :try_end_73b} :catchall_744

    .line 1596
    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1597
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1598
    nop

    .line 1599
    goto/16 :goto_90a

    .line 1596
    :catchall_744
    move-exception v0

    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1597
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1598
    throw v0

    .line 1548
    :pswitch_74c
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lcom/android/internal/os/SomeArgs;

    .line 1549
    iget-object v0, v2, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    invoke-static {v0, v11}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 1552
    :try_start_758
    iget-object v0, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 1553
    iget-object v3, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Landroid/telecom/CallAudioState;

    .line 1554
    iget-object v1, p0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    new-instance v4, Landroid/telecom/CallAudioState;

    invoke-direct {v4, v3}, Landroid/telecom/CallAudioState;-><init>(Landroid/telecom/CallAudioState;)V

    invoke-static {v1, v0, v4}, Landroid/telecom/ConnectionService;->-$$Nest$monCallAudioStateChanged(Landroid/telecom/ConnectionService;Ljava/lang/String;Landroid/telecom/CallAudioState;)V
    :try_end_76a
    .catchall {:try_start_758 .. :try_end_76a} :catchall_773

    .line 1556
    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1557
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1558
    nop

    .line 1559
    goto/16 :goto_90a

    .line 1556
    :catchall_773
    move-exception v0

    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1557
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1558
    throw v0

    .line 1537
    :pswitch_77b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lcom/android/internal/os/SomeArgs;

    .line 1538
    iget-object v0, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    const-string v3, "H.CS.u"

    invoke-static {v0, v3}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 1540
    :try_start_789
    iget-object v0, p0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    iget-object v1, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/telecom/ConnectionService;->-$$Nest$munhold(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    :try_end_792
    .catchall {:try_start_789 .. :try_end_792} :catchall_79b

    .line 1542
    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1543
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1544
    nop

    .line 1545
    goto/16 :goto_90a

    .line 1542
    :catchall_79b
    move-exception v0

    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1543
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1544
    throw v0

    .line 1526
    :pswitch_7a3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lcom/android/internal/os/SomeArgs;

    .line 1527
    iget-object v0, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    invoke-static {v0, v9}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 1529
    :try_start_7af
    iget-object v0, p0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    iget-object v1, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/telecom/ConnectionService;->-$$Nest$mhold(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    :try_end_7b8
    .catchall {:try_start_7af .. :try_end_7b8} :catchall_7c1

    .line 1531
    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1532
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1533
    nop

    .line 1534
    goto/16 :goto_90a

    .line 1531
    :catchall_7c1
    move-exception v0

    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1532
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1533
    throw v0

    .line 1504
    :pswitch_7c9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lcom/android/internal/os/SomeArgs;

    .line 1505
    iget-object v0, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    const-string v3, "H.CS.d"

    invoke-static {v0, v3}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 1507
    :try_start_7d7
    iget-object v0, p0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    iget-object v1, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/telecom/ConnectionService;->-$$Nest$mdisconnect(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    :try_end_7e0
    .catchall {:try_start_7d7 .. :try_end_7e0} :catchall_7e9

    .line 1509
    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1510
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1511
    nop

    .line 1512
    goto/16 :goto_90a

    .line 1509
    :catchall_7e9
    move-exception v0

    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1510
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1511
    throw v0

    .line 1446
    :pswitch_7f1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lcom/android/internal/os/SomeArgs;

    .line 1447
    iget-object v0, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    invoke-static {v0, v9}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 1449
    :try_start_7fd
    iget-object v0, p0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    iget-object v1, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/telecom/ConnectionService;->-$$Nest$mreject(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    :try_end_806
    .catchall {:try_start_7fd .. :try_end_806} :catchall_80f

    .line 1451
    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1452
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1453
    nop

    .line 1454
    goto/16 :goto_90a

    .line 1451
    :catchall_80f
    move-exception v0

    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1452
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1453
    throw v0

    .line 1410
    :pswitch_817
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lcom/android/internal/os/SomeArgs;

    .line 1411
    iget-object v0, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    const-string v3, "H.CS.an"

    invoke-static {v0, v3}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 1413
    :try_start_825
    iget-object v0, p0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    iget-object v1, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/telecom/ConnectionService;->-$$Nest$manswer(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    :try_end_82e
    .catchall {:try_start_825 .. :try_end_82e} :catchall_837

    .line 1415
    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1416
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1417
    nop

    .line 1418
    goto/16 :goto_90a

    .line 1415
    :catchall_837
    move-exception v0

    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1416
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1417
    throw v0

    .line 1399
    :pswitch_83f
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lcom/android/internal/os/SomeArgs;

    .line 1400
    iget-object v0, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    const-string v3, "H.CS.ab"

    invoke-static {v0, v3}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 1402
    :try_start_84d
    iget-object v0, p0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    iget-object v1, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/telecom/ConnectionService;->-$$Nest$mabort(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    :try_end_856
    .catchall {:try_start_84d .. :try_end_856} :catchall_85f

    .line 1404
    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1405
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1406
    nop

    .line 1407
    goto/16 :goto_90a

    .line 1404
    :catchall_85f
    move-exception v0

    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1405
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1406
    throw v0

    .line 1169
    :pswitch_867
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v9, v0

    check-cast v9, Lcom/android/internal/os/SomeArgs;

    .line 1170
    iget-object v0, v9, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    invoke-static {v0, v8}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 1172
    :try_start_873
    iget-object v0, v9, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Landroid/telecom/PhoneAccountHandle;

    .line 1174
    iget-object v0, v9, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    .line 1175
    iget-object v0, v9, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Landroid/telecom/ConnectionRequest;

    .line 1176
    iget v0, v9, Lcom/android/internal/os/SomeArgs;->argi1:I

    if-ne v0, v13, :cond_888

    move v5, v13

    goto :goto_889

    :cond_888
    move v5, v12

    .line 1177
    :goto_889
    iget v0, v9, Lcom/android/internal/os/SomeArgs;->argi2:I

    if-ne v0, v13, :cond_88f

    move v6, v13

    goto :goto_890

    :cond_88f
    move v6, v12

    .line 1178
    :goto_890
    iget-object v0, p0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v0}, Landroid/telecom/ConnectionService;->-$$Nest$fgetmAreAccountsInitialized(Landroid/telecom/ConnectionService;)Z

    move-result v0

    if-nez v0, :cond_8bb

    .line 1179
    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0, v10, v0}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1180
    iget-object v0, p0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v0}, Landroid/telecom/ConnectionService;->-$$Nest$fgetmPreInitializationConnectionRequests(Landroid/telecom/ConnectionService;)Ljava/util/List;

    move-result-object v10

    new-instance v0, Landroid/telecom/ConnectionService$2$1;

    move v8, v6

    move-object v6, v4

    move-object v4, v2

    const-string v2, "H.CS.crCo.pICR"

    move v7, v5

    move-object v5, v3

    const/4 v3, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Landroid/telecom/ConnectionService$2$1;-><init>(Landroid/telecom/ConnectionService$2;Ljava/lang/String;Ljava/lang/Object;Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Landroid/telecom/ConnectionRequest;ZZ)V

    .line 1193
    invoke-virtual {v0}, Landroid/telecom/ConnectionService$2$1;->prepare()Ljava/lang/Runnable;

    move-result-object v0

    .line 1180
    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8ca

    .line 1195
    :cond_8bb
    move v7, v5

    move v8, v6

    move-object v5, v3

    move-object v6, v4

    move-object v4, v2

    iget-object v1, p0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    move-object v2, v4

    move-object v3, v5

    move-object v4, v6

    move v5, v7

    move v6, v8

    invoke-static/range {v1 .. v6}, Landroid/telecom/ConnectionService;->-$$Nest$mcreateConnection(Landroid/telecom/ConnectionService;Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Landroid/telecom/ConnectionRequest;ZZ)V
    :try_end_8ca
    .catchall {:try_start_873 .. :try_end_8ca} :catchall_8d2

    .line 1203
    :goto_8ca
    invoke-virtual {v9}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1204
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1205
    nop

    .line 1206
    goto :goto_90a

    .line 1203
    :catchall_8d2
    move-exception v0

    invoke-virtual {v9}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1204
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1205
    throw v0

    .line 1143
    :pswitch_8da
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lcom/android/internal/os/SomeArgs;

    .line 1145
    :try_start_8df
    iget-object v0, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    .line 1146
    iget-object v3, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Landroid/telecom/Logging/Session;

    const-string v4, "H.CS.aCSA"

    invoke-static {v3, v4}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 1148
    iget-object v3, p0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v3}, Landroid/telecom/ConnectionService;->-$$Nest$fgetmAdapter(Landroid/telecom/ConnectionService;)Landroid/telecom/ConnectionServiceAdapter;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/telecom/ConnectionServiceAdapter;->addAdapter(Lcom/android/internal/telecom/IConnectionServiceAdapter;)V

    .line 1149
    iget-object v0, p0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v0}, Landroid/telecom/ConnectionService;->-$$Nest$monAdapterAttached(Landroid/telecom/ConnectionService;)V
    :try_end_8fa
    .catchall {:try_start_8df .. :try_end_8fa} :catchall_902

    .line 1151
    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1152
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1153
    nop

    .line 1154
    goto :goto_90a

    .line 1151
    :catchall_902
    move-exception v0

    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1152
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1153
    throw v0

    .line 1853
    :goto_90a
    return-void

    nop

    :pswitch_data_90c
    .packed-switch 0x1
        :pswitch_8da
        :pswitch_867
        :pswitch_83f
        :pswitch_817
        :pswitch_7f1
        :pswitch_7c9
        :pswitch_7a3
        :pswitch_77b
        :pswitch_74c
        :pswitch_71c
        :pswitch_6f4
        :pswitch_6c8
        :pswitch_6a0
        :pswitch_673
        :pswitch_18
        :pswitch_647
        :pswitch_61d
        :pswitch_5f5
        :pswitch_5cd
        :pswitch_5a1
        :pswitch_579
        :pswitch_551
        :pswitch_521
        :pswitch_4f5
        :pswitch_490
        :pswitch_464
        :pswitch_43c
        :pswitch_410
        :pswitch_3c6
        :pswitch_3bf
        :pswitch_3b8
        :pswitch_355
        :pswitch_32d
        :pswitch_301
        :pswitch_28b
        :pswitch_241
        :pswitch_1d9
        :pswitch_1b1
        :pswitch_185
        :pswitch_154
        :pswitch_128
        :pswitch_fc
        :pswitch_cc
        :pswitch_9c
        :pswitch_72
        :pswitch_48
        :pswitch_1a
    .end packed-switch
.end method
