.class Landroid/telecom/ConnectionService$1;
.super Lcom/android/internal/telecom/IConnectionService$Stub;
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
.method constructor blacklist <init>(Landroid/telecom/ConnectionService;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 461
    iput-object p1, p0, Landroid/telecom/ConnectionService$1;->this$0:Landroid/telecom/ConnectionService;

    invoke-direct {p0}, Lcom/android/internal/telecom/IConnectionService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist abort(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    .registers 4

    .line 634
    const-string v0, "CS.ab"

    invoke-static {p2, v0}, Landroid/telecom/Log;->startSession(Landroid/telecom/Logging/Session$Info;Ljava/lang/String;)V

    .line 636
    :try_start_5
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object p2

    .line 637
    iput-object p1, p2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 638
    invoke-static {}, Landroid/telecom/Log;->createSubsession()Landroid/telecom/Logging/Session;

    move-result-object p1

    iput-object p1, p2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 639
    iget-object p1, p0, Landroid/telecom/ConnectionService$1;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {p1}, Landroid/telecom/ConnectionService;->-$$Nest$fgetmHandler(Landroid/telecom/ConnectionService;)Landroid/os/Handler;

    move-result-object p1

    const/4 v0, 0x3

    invoke-virtual {p1, v0, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V
    :try_end_1f
    .catchall {:try_start_5 .. :try_end_1f} :catchall_24

    .line 641
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 642
    nop

    .line 643
    return-void

    .line 641
    :catchall_24
    move-exception p1

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 642
    throw p1
.end method

.method public blacklist addConferenceParticipants(Ljava/lang/String;Ljava/util/List;Landroid/telecom/Logging/Session$Info;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/telecom/Logging/Session$Info;",
            ")V"
        }
    .end annotation

    .line 985
    const-string v0, "CS.aP"

    invoke-static {p3, v0}, Landroid/telecom/Log;->startSession(Landroid/telecom/Logging/Session$Info;Ljava/lang/String;)V

    .line 987
    :try_start_5
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object p3

    .line 988
    iput-object p1, p3, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 989
    iput-object p2, p3, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 990
    invoke-static {}, Landroid/telecom/Log;->createSubsession()Landroid/telecom/Logging/Session;

    move-result-object p1

    iput-object p1, p3, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 991
    iget-object p1, p0, Landroid/telecom/ConnectionService$1;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {p1}, Landroid/telecom/ConnectionService;->-$$Nest$fgetmHandler(Landroid/telecom/ConnectionService;)Landroid/os/Handler;

    move-result-object p1

    const/16 p2, 0x27

    invoke-virtual {p1, p2, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V
    :try_end_22
    .catchall {:try_start_5 .. :try_end_22} :catchall_27

    .line 993
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 994
    nop

    .line 995
    return-void

    .line 993
    :catchall_27
    move-exception p1

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 994
    throw p1
.end method

.method public blacklist addConnectionServiceAdapter(Lcom/android/internal/telecom/IConnectionServiceAdapter;Landroid/telecom/Logging/Session$Info;)V
    .registers 4

    .line 465
    const-string v0, "CS.aCSA"

    invoke-static {p2, v0}, Landroid/telecom/Log;->startSession(Landroid/telecom/Logging/Session$Info;Ljava/lang/String;)V

    .line 467
    :try_start_5
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object p2

    .line 468
    iput-object p1, p2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 469
    invoke-static {}, Landroid/telecom/Log;->createSubsession()Landroid/telecom/Logging/Session;

    move-result-object p1

    iput-object p1, p2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 470
    iget-object p1, p0, Landroid/telecom/ConnectionService$1;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {p1}, Landroid/telecom/ConnectionService;->-$$Nest$fgetmHandler(Landroid/telecom/ConnectionService;)Landroid/os/Handler;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V
    :try_end_1f
    .catchall {:try_start_5 .. :try_end_1f} :catchall_24

    .line 472
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 473
    nop

    .line 474
    return-void

    .line 472
    :catchall_24
    move-exception p1

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 473
    throw p1
.end method

.method public blacklist answer(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    .registers 4

    .line 661
    const-string v0, "CS.an"

    invoke-static {p2, v0}, Landroid/telecom/Log;->startSession(Landroid/telecom/Logging/Session$Info;Ljava/lang/String;)V

    .line 663
    :try_start_5
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object p2

    .line 664
    iput-object p1, p2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 665
    invoke-static {}, Landroid/telecom/Log;->createSubsession()Landroid/telecom/Logging/Session;

    move-result-object p1

    iput-object p1, p2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 666
    iget-object p1, p0, Landroid/telecom/ConnectionService$1;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {p1}, Landroid/telecom/ConnectionService;->-$$Nest$fgetmHandler(Landroid/telecom/ConnectionService;)Landroid/os/Handler;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V
    :try_end_1f
    .catchall {:try_start_5 .. :try_end_1f} :catchall_24

    .line 668
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 669
    nop

    .line 670
    return-void

    .line 668
    :catchall_24
    move-exception p1

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 669
    throw p1
.end method

.method public blacklist answerVideo(Ljava/lang/String;ILandroid/telecom/Logging/Session$Info;)V
    .registers 5

    .line 647
    const-string v0, "CS.anV"

    invoke-static {p3, v0}, Landroid/telecom/Log;->startSession(Landroid/telecom/Logging/Session$Info;Ljava/lang/String;)V

    .line 649
    :try_start_5
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object p3

    .line 650
    iput-object p1, p3, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 651
    invoke-static {}, Landroid/telecom/Log;->createSubsession()Landroid/telecom/Logging/Session;

    move-result-object p1

    iput-object p1, p3, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 652
    iput p2, p3, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 653
    iget-object p1, p0, Landroid/telecom/ConnectionService$1;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {p1}, Landroid/telecom/ConnectionService;->-$$Nest$fgetmHandler(Landroid/telecom/ConnectionService;)Landroid/os/Handler;

    move-result-object p1

    const/16 p2, 0x11

    invoke-virtual {p1, p2, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V
    :try_end_22
    .catchall {:try_start_5 .. :try_end_22} :catchall_27

    .line 655
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 656
    nop

    .line 657
    return-void

    .line 655
    :catchall_27
    move-exception p1

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 656
    throw p1
.end method

.method public blacklist conference(Ljava/lang/String;Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    .registers 5

    .line 931
    const-string v0, "CS.c"

    invoke-static {p3, v0}, Landroid/telecom/Log;->startSession(Landroid/telecom/Logging/Session$Info;Ljava/lang/String;)V

    .line 933
    :try_start_5
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object p3

    .line 934
    iput-object p1, p3, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 935
    iput-object p2, p3, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 936
    invoke-static {}, Landroid/telecom/Log;->createSubsession()Landroid/telecom/Logging/Session;

    move-result-object p1

    iput-object p1, p3, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 937
    iget-object p1, p0, Landroid/telecom/ConnectionService$1;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {p1}, Landroid/telecom/ConnectionService;->-$$Nest$fgetmHandler(Landroid/telecom/ConnectionService;)Landroid/os/Handler;

    move-result-object p1

    const/16 p2, 0xc

    invoke-virtual {p1, p2, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V
    :try_end_22
    .catchall {:try_start_5 .. :try_end_22} :catchall_27

    .line 939
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 940
    nop

    .line 941
    return-void

    .line 939
    :catchall_27
    move-exception p1

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 940
    throw p1
.end method

.method public blacklist connectionServiceFocusGained(Landroid/telecom/Logging/Session$Info;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1129
    const-string v0, "CS.cSFG"

    invoke-static {p1, v0}, Landroid/telecom/Log;->startSession(Landroid/telecom/Logging/Session$Info;Ljava/lang/String;)V

    .line 1131
    :try_start_5
    iget-object p1, p0, Landroid/telecom/ConnectionService$1;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {p1}, Landroid/telecom/ConnectionService;->-$$Nest$fgetmHandler(Landroid/telecom/ConnectionService;)Landroid/os/Handler;

    move-result-object p1

    const/16 v0, 0x1f

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_19

    .line 1133
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1134
    nop

    .line 1135
    return-void

    .line 1133
    :catchall_19
    move-exception p1

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1134
    throw p1
.end method

.method public blacklist connectionServiceFocusLost(Landroid/telecom/Logging/Session$Info;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1119
    const-string v0, "CS.cSFL"

    invoke-static {p1, v0}, Landroid/telecom/Log;->startSession(Landroid/telecom/Logging/Session$Info;Ljava/lang/String;)V

    .line 1121
    :try_start_5
    iget-object p1, p0, Landroid/telecom/ConnectionService$1;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {p1}, Landroid/telecom/ConnectionService;->-$$Nest$fgetmHandler(Landroid/telecom/ConnectionService;)Landroid/os/Handler;

    move-result-object p1

    const/16 v0, 0x1e

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_19

    .line 1123
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1124
    nop

    .line 1125
    return-void

    .line 1123
    :catchall_19
    move-exception p1

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1124
    throw p1
.end method

.method public blacklist consultativeTransfer(Ljava/lang/String;Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    .registers 5

    .line 747
    const-string v0, "CS.cTrans"

    invoke-static {p3, v0}, Landroid/telecom/Log;->startSession(Landroid/telecom/Logging/Session$Info;Ljava/lang/String;)V

    .line 749
    :try_start_5
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object p3

    .line 750
    iput-object p1, p3, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 751
    iput-object p2, p3, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 752
    invoke-static {}, Landroid/telecom/Log;->createSubsession()Landroid/telecom/Logging/Session;

    move-result-object p1

    iput-object p1, p3, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 753
    iget-object p1, p0, Landroid/telecom/ConnectionService$1;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {p1}, Landroid/telecom/ConnectionService;->-$$Nest$fgetmHandler(Landroid/telecom/ConnectionService;)Landroid/os/Handler;

    move-result-object p1

    const/16 p2, 0x29

    invoke-virtual {p1, p2, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 754
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V
    :try_end_22
    .catchall {:try_start_5 .. :try_end_22} :catchall_27

    .line 756
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 757
    nop

    .line 758
    return-void

    .line 756
    :catchall_27
    move-exception p1

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 757
    throw p1
.end method

.method public blacklist createConference(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Landroid/telecom/ConnectionRequest;ZZLandroid/telecom/Logging/Session$Info;)V
    .registers 8

    .line 554
    const-string v0, "CS.crConf"

    invoke-static {p6, v0}, Landroid/telecom/Log;->startSession(Landroid/telecom/Logging/Session$Info;Ljava/lang/String;)V

    .line 556
    :try_start_5
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object p6

    .line 557
    iput-object p1, p6, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 558
    iput-object p2, p6, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 559
    iput-object p3, p6, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 560
    invoke-static {}, Landroid/telecom/Log;->createSubsession()Landroid/telecom/Logging/Session;

    move-result-object p1

    iput-object p1, p6, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    .line 561
    const/4 p1, 0x1

    const/4 p2, 0x0

    if-eqz p4, :cond_1b

    move p3, p1

    goto :goto_1c

    :cond_1b
    move p3, p2

    :goto_1c
    iput p3, p6, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 562
    if-eqz p5, :cond_21

    goto :goto_22

    :cond_21
    move p1, p2

    :goto_22
    iput p1, p6, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 563
    iget-object p1, p0, Landroid/telecom/ConnectionService$1;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {p1}, Landroid/telecom/ConnectionService;->-$$Nest$fgetmHandler(Landroid/telecom/ConnectionService;)Landroid/os/Handler;

    move-result-object p1

    const/16 p2, 0x23

    invoke-virtual {p1, p2, p6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V
    :try_end_33
    .catchall {:try_start_5 .. :try_end_33} :catchall_38

    .line 565
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 566
    nop

    .line 567
    return-void

    .line 565
    :catchall_38
    move-exception p1

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 566
    throw p1
.end method

.method public blacklist createConferenceComplete(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    .registers 4

    .line 571
    const-string v0, "CS.crConfC"

    invoke-static {p2, v0}, Landroid/telecom/Log;->startSession(Landroid/telecom/Logging/Session$Info;Ljava/lang/String;)V

    .line 573
    :try_start_5
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object p2

    .line 574
    iput-object p1, p2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 575
    invoke-static {}, Landroid/telecom/Log;->createSubsession()Landroid/telecom/Logging/Session;

    move-result-object p1

    iput-object p1, p2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 576
    iget-object p1, p0, Landroid/telecom/ConnectionService$1;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {p1}, Landroid/telecom/ConnectionService;->-$$Nest$fgetmHandler(Landroid/telecom/ConnectionService;)Landroid/os/Handler;

    move-result-object p1

    const/16 v0, 0x24

    invoke-virtual {p1, v0, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V
    :try_end_20
    .catchall {:try_start_5 .. :try_end_20} :catchall_25

    .line 578
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 579
    nop

    .line 580
    return-void

    .line 578
    :catchall_25
    move-exception p1

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 579
    throw p1
.end method

.method public blacklist createConferenceFailed(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Landroid/telecom/ConnectionRequest;ZLandroid/telecom/Logging/Session$Info;)V
    .registers 7

    .line 589
    const-string v0, "CS.crConfF"

    invoke-static {p5, v0}, Landroid/telecom/Log;->startSession(Landroid/telecom/Logging/Session$Info;Ljava/lang/String;)V

    .line 591
    :try_start_5
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object p5

    .line 592
    iput-object p2, p5, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 593
    iput-object p3, p5, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 594
    invoke-static {}, Landroid/telecom/Log;->createSubsession()Landroid/telecom/Logging/Session;

    move-result-object p2

    iput-object p2, p5, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 595
    iput-object p1, p5, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    .line 596
    if-eqz p4, :cond_19

    const/4 p1, 0x1

    goto :goto_1a

    :cond_19
    const/4 p1, 0x0

    :goto_1a
    iput p1, p5, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 597
    iget-object p1, p0, Landroid/telecom/ConnectionService$1;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {p1}, Landroid/telecom/ConnectionService;->-$$Nest$fgetmHandler(Landroid/telecom/ConnectionService;)Landroid/os/Handler;

    move-result-object p1

    const/16 p2, 0x25

    invoke-virtual {p1, p2, p5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V
    :try_end_2b
    .catchall {:try_start_5 .. :try_end_2b} :catchall_30

    .line 599
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 600
    nop

    .line 601
    return-void

    .line 599
    :catchall_30
    move-exception p1

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 600
    throw p1
.end method

.method public blacklist createConnection(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Landroid/telecom/ConnectionRequest;ZZLandroid/telecom/Logging/Session$Info;)V
    .registers 8

    .line 497
    const-string v0, "CS.crCo"

    invoke-static {p6, v0}, Landroid/telecom/Log;->startSession(Landroid/telecom/Logging/Session$Info;Ljava/lang/String;)V

    .line 499
    :try_start_5
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object p6

    .line 500
    iput-object p1, p6, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 501
    iput-object p2, p6, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 502
    iput-object p3, p6, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 503
    invoke-static {}, Landroid/telecom/Log;->createSubsession()Landroid/telecom/Logging/Session;

    move-result-object p1

    iput-object p1, p6, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    .line 504
    const/4 p1, 0x1

    const/4 p2, 0x0

    if-eqz p4, :cond_1b

    move p3, p1

    goto :goto_1c

    :cond_1b
    move p3, p2

    :goto_1c
    iput p3, p6, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 505
    if-eqz p5, :cond_21

    goto :goto_22

    :cond_21
    move p1, p2

    :goto_22
    iput p1, p6, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 506
    iget-object p1, p0, Landroid/telecom/ConnectionService$1;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {p1}, Landroid/telecom/ConnectionService;->-$$Nest$fgetmHandler(Landroid/telecom/ConnectionService;)Landroid/os/Handler;

    move-result-object p1

    const/4 p2, 0x2

    invoke-virtual {p1, p2, p6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V
    :try_end_32
    .catchall {:try_start_5 .. :try_end_32} :catchall_37

    .line 508
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 509
    nop

    .line 510
    return-void

    .line 508
    :catchall_37
    move-exception p1

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 509
    throw p1
.end method

.method public blacklist createConnectionComplete(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    .registers 4

    .line 514
    const-string v0, "CS.crCoC"

    invoke-static {p2, v0}, Landroid/telecom/Log;->startSession(Landroid/telecom/Logging/Session$Info;Ljava/lang/String;)V

    .line 516
    :try_start_5
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object p2

    .line 517
    iput-object p1, p2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 518
    invoke-static {}, Landroid/telecom/Log;->createSubsession()Landroid/telecom/Logging/Session;

    move-result-object p1

    iput-object p1, p2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 519
    iget-object p1, p0, Landroid/telecom/ConnectionService$1;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {p1}, Landroid/telecom/ConnectionService;->-$$Nest$fgetmHandler(Landroid/telecom/ConnectionService;)Landroid/os/Handler;

    move-result-object p1

    const/16 v0, 0x1d

    invoke-virtual {p1, v0, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V
    :try_end_20
    .catchall {:try_start_5 .. :try_end_20} :catchall_25

    .line 521
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 522
    nop

    .line 523
    return-void

    .line 521
    :catchall_25
    move-exception p1

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 522
    throw p1
.end method

.method public blacklist createConnectionFailed(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Landroid/telecom/ConnectionRequest;ZLandroid/telecom/Logging/Session$Info;)V
    .registers 7

    .line 532
    const-string v0, "CS.crCoF"

    invoke-static {p5, v0}, Landroid/telecom/Log;->startSession(Landroid/telecom/Logging/Session$Info;Ljava/lang/String;)V

    .line 534
    :try_start_5
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object p5

    .line 535
    iput-object p2, p5, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 536
    iput-object p3, p5, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 537
    invoke-static {}, Landroid/telecom/Log;->createSubsession()Landroid/telecom/Logging/Session;

    move-result-object p2

    iput-object p2, p5, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 538
    iput-object p1, p5, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    .line 539
    if-eqz p4, :cond_19

    const/4 p1, 0x1

    goto :goto_1a

    :cond_19
    const/4 p1, 0x0

    :goto_1a
    iput p1, p5, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 540
    iget-object p1, p0, Landroid/telecom/ConnectionService$1;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {p1}, Landroid/telecom/ConnectionService;->-$$Nest$fgetmHandler(Landroid/telecom/ConnectionService;)Landroid/os/Handler;

    move-result-object p1

    const/16 p2, 0x19

    invoke-virtual {p1, p2, p5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V
    :try_end_2b
    .catchall {:try_start_5 .. :try_end_2b} :catchall_30

    .line 542
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 543
    nop

    .line 544
    return-void

    .line 542
    :catchall_30
    move-exception p1

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 543
    throw p1
.end method

.method public blacklist deflect(Ljava/lang/String;Landroid/net/Uri;Landroid/telecom/Logging/Session$Info;)V
    .registers 5

    .line 674
    const-string v0, "CS.def"

    invoke-static {p3, v0}, Landroid/telecom/Log;->startSession(Landroid/telecom/Logging/Session$Info;Ljava/lang/String;)V

    .line 676
    :try_start_5
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object p3

    .line 677
    iput-object p1, p3, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 678
    iput-object p2, p3, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 679
    invoke-static {}, Landroid/telecom/Log;->createSubsession()Landroid/telecom/Logging/Session;

    move-result-object p1

    iput-object p1, p3, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 680
    iget-object p1, p0, Landroid/telecom/ConnectionService$1;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {p1}, Landroid/telecom/ConnectionService;->-$$Nest$fgetmHandler(Landroid/telecom/ConnectionService;)Landroid/os/Handler;

    move-result-object p1

    const/16 p2, 0x22

    invoke-virtual {p1, p2, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V
    :try_end_22
    .catchall {:try_start_5 .. :try_end_22} :catchall_27

    .line 682
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 683
    nop

    .line 684
    return-void

    .line 682
    :catchall_27
    move-exception p1

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 683
    throw p1
.end method

.method public blacklist disconnect(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    .registers 4

    .line 775
    const-string v0, "CS.d"

    invoke-static {p2, v0}, Landroid/telecom/Log;->startSession(Landroid/telecom/Logging/Session$Info;Ljava/lang/String;)V

    .line 777
    :try_start_5
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object p2

    .line 778
    iput-object p1, p2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 779
    invoke-static {}, Landroid/telecom/Log;->createSubsession()Landroid/telecom/Logging/Session;

    move-result-object p1

    iput-object p1, p2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 780
    iget-object p1, p0, Landroid/telecom/ConnectionService$1;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {p1}, Landroid/telecom/ConnectionService;->-$$Nest$fgetmHandler(Landroid/telecom/ConnectionService;)Landroid/os/Handler;

    move-result-object p1

    const/4 v0, 0x6

    invoke-virtual {p1, v0, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V
    :try_end_1f
    .catchall {:try_start_5 .. :try_end_1f} :catchall_24

    .line 782
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 783
    nop

    .line 784
    return-void

    .line 782
    :catchall_24
    move-exception p1

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 783
    throw p1
.end method

.method public blacklist handoverComplete(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    .registers 4

    .line 621
    const-string v0, "CS.hC"

    invoke-static {p2, v0}, Landroid/telecom/Log;->startSession(Landroid/telecom/Logging/Session$Info;Ljava/lang/String;)V

    .line 623
    :try_start_5
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object p2

    .line 624
    iput-object p1, p2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 625
    invoke-static {}, Landroid/telecom/Log;->createSubsession()Landroid/telecom/Logging/Session;

    move-result-object p1

    iput-object p1, p2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 626
    iget-object p1, p0, Landroid/telecom/ConnectionService$1;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {p1}, Landroid/telecom/ConnectionService;->-$$Nest$fgetmHandler(Landroid/telecom/ConnectionService;)Landroid/os/Handler;

    move-result-object p1

    const/16 v0, 0x21

    invoke-virtual {p1, v0, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V
    :try_end_20
    .catchall {:try_start_5 .. :try_end_20} :catchall_25

    .line 628
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 629
    nop

    .line 630
    return-void

    .line 628
    :catchall_25
    move-exception p1

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 629
    throw p1
.end method

.method public blacklist handoverFailed(Ljava/lang/String;Landroid/telecom/ConnectionRequest;ILandroid/telecom/Logging/Session$Info;)V
    .registers 6

    .line 606
    const-string v0, "CS.haF"

    invoke-static {p4, v0}, Landroid/telecom/Log;->startSession(Landroid/telecom/Logging/Session$Info;Ljava/lang/String;)V

    .line 608
    :try_start_5
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object p4

    .line 609
    iput-object p1, p4, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 610
    iput-object p2, p4, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 611
    invoke-static {}, Landroid/telecom/Log;->createSubsession()Landroid/telecom/Logging/Session;

    move-result-object p1

    iput-object p1, p4, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 612
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p4, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    .line 613
    iget-object p1, p0, Landroid/telecom/ConnectionService$1;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {p1}, Landroid/telecom/ConnectionService;->-$$Nest$fgetmHandler(Landroid/telecom/ConnectionService;)Landroid/os/Handler;

    move-result-object p1

    const/16 p2, 0x20

    invoke-virtual {p1, p2, p4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V
    :try_end_28
    .catchall {:try_start_5 .. :try_end_28} :catchall_2d

    .line 615
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 616
    nop

    .line 617
    return-void

    .line 615
    :catchall_2d
    move-exception p1

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 616
    throw p1
.end method

.method public blacklist hold(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    .registers 4

    .line 788
    const-string v0, "CS.h"

    invoke-static {p2, v0}, Landroid/telecom/Log;->startSession(Landroid/telecom/Logging/Session$Info;Ljava/lang/String;)V

    .line 790
    :try_start_5
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object p2

    .line 791
    iput-object p1, p2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 792
    invoke-static {}, Landroid/telecom/Log;->createSubsession()Landroid/telecom/Logging/Session;

    move-result-object p1

    iput-object p1, p2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 793
    iget-object p1, p0, Landroid/telecom/ConnectionService$1;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {p1}, Landroid/telecom/ConnectionService;->-$$Nest$fgetmHandler(Landroid/telecom/ConnectionService;)Landroid/os/Handler;

    move-result-object p1

    const/4 v0, 0x7

    invoke-virtual {p1, v0, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V
    :try_end_1f
    .catchall {:try_start_5 .. :try_end_1f} :catchall_24

    .line 795
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 796
    nop

    .line 797
    return-void

    .line 795
    :catchall_24
    move-exception p1

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 796
    throw p1
.end method

.method public blacklist mergeConference(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    .registers 4

    .line 958
    const-string v0, "CS.mC"

    invoke-static {p2, v0}, Landroid/telecom/Log;->startSession(Landroid/telecom/Logging/Session$Info;Ljava/lang/String;)V

    .line 960
    :try_start_5
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object p2

    .line 961
    iput-object p1, p2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 962
    invoke-static {}, Landroid/telecom/Log;->createSubsession()Landroid/telecom/Logging/Session;

    move-result-object p1

    iput-object p1, p2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 963
    iget-object p1, p0, Landroid/telecom/ConnectionService$1;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {p1}, Landroid/telecom/ConnectionService;->-$$Nest$fgetmHandler(Landroid/telecom/ConnectionService;)Landroid/os/Handler;

    move-result-object p1

    const/16 v0, 0x12

    invoke-virtual {p1, v0, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V
    :try_end_20
    .catchall {:try_start_5 .. :try_end_20} :catchall_25

    .line 965
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 966
    nop

    .line 967
    return-void

    .line 965
    :catchall_25
    move-exception p1

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 966
    throw p1
.end method

.method public blacklist onAvailableCallEndpointsChanged(Ljava/lang/String;Ljava/util/List;Landroid/telecom/Logging/Session$Info;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/telecom/CallEndpoint;",
            ">;",
            "Landroid/telecom/Logging/Session$Info;",
            ")V"
        }
    .end annotation

    .line 845
    const-string v0, "CS.oACEC"

    invoke-static {p3, v0}, Landroid/telecom/Log;->startSession(Landroid/telecom/Logging/Session$Info;Ljava/lang/String;)V

    .line 847
    :try_start_5
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object p3

    .line 848
    iput-object p1, p3, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 849
    iput-object p2, p3, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 850
    invoke-static {}, Landroid/telecom/Log;->createSubsession()Landroid/telecom/Logging/Session;

    move-result-object p1

    iput-object p1, p3, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 851
    iget-object p1, p0, Landroid/telecom/ConnectionService$1;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {p1}, Landroid/telecom/ConnectionService;->-$$Nest$fgetmHandler(Landroid/telecom/ConnectionService;)Landroid/os/Handler;

    move-result-object p1

    const/16 p2, 0x2e

    invoke-virtual {p1, p2, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 852
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V
    :try_end_22
    .catchall {:try_start_5 .. :try_end_22} :catchall_27

    .line 854
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 855
    nop

    .line 856
    return-void

    .line 854
    :catchall_27
    move-exception p1

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 855
    throw p1
.end method

.method public blacklist onCallAudioStateChanged(Ljava/lang/String;Landroid/telecom/CallAudioState;Landroid/telecom/Logging/Session$Info;)V
    .registers 5

    .line 815
    const-string v0, "CS.cASC"

    invoke-static {p3, v0}, Landroid/telecom/Log;->startSession(Landroid/telecom/Logging/Session$Info;Ljava/lang/String;)V

    .line 817
    :try_start_5
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object p3

    .line 818
    iput-object p1, p3, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 819
    iput-object p2, p3, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 820
    invoke-static {}, Landroid/telecom/Log;->createSubsession()Landroid/telecom/Logging/Session;

    move-result-object p1

    iput-object p1, p3, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 821
    iget-object p1, p0, Landroid/telecom/ConnectionService$1;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {p1}, Landroid/telecom/ConnectionService;->-$$Nest$fgetmHandler(Landroid/telecom/ConnectionService;)Landroid/os/Handler;

    move-result-object p1

    const/16 p2, 0x9

    invoke-virtual {p1, p2, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V
    :try_end_22
    .catchall {:try_start_5 .. :try_end_22} :catchall_27

    .line 823
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 824
    nop

    .line 825
    return-void

    .line 823
    :catchall_27
    move-exception p1

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 824
    throw p1
.end method

.method public blacklist onCallEndpointChanged(Ljava/lang/String;Landroid/telecom/CallEndpoint;Landroid/telecom/Logging/Session$Info;)V
    .registers 5

    .line 830
    const-string v0, "CS.oCEC"

    invoke-static {p3, v0}, Landroid/telecom/Log;->startSession(Landroid/telecom/Logging/Session$Info;Ljava/lang/String;)V

    .line 832
    :try_start_5
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object p3

    .line 833
    iput-object p1, p3, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 834
    iput-object p2, p3, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 835
    invoke-static {}, Landroid/telecom/Log;->createSubsession()Landroid/telecom/Logging/Session;

    move-result-object p1

    iput-object p1, p3, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 836
    iget-object p1, p0, Landroid/telecom/ConnectionService$1;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {p1}, Landroid/telecom/ConnectionService;->-$$Nest$fgetmHandler(Landroid/telecom/ConnectionService;)Landroid/os/Handler;

    move-result-object p1

    const/16 p2, 0x2d

    invoke-virtual {p1, p2, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V
    :try_end_22
    .catchall {:try_start_5 .. :try_end_22} :catchall_27

    .line 838
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 839
    nop

    .line 840
    return-void

    .line 838
    :catchall_27
    move-exception p1

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 839
    throw p1
.end method

.method public blacklist onCallFilteringCompleted(Ljava/lang/String;Landroid/telecom/Connection$CallFilteringCompletionInfo;Landroid/telecom/Logging/Session$Info;)V
    .registers 5

    .line 1044
    const-string v0, "CS.oCFC"

    invoke-static {p3, v0}, Landroid/telecom/Log;->startSession(Landroid/telecom/Logging/Session$Info;Ljava/lang/String;)V

    .line 1046
    :try_start_5
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object p3

    .line 1047
    iput-object p1, p3, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 1048
    iput-object p2, p3, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 1049
    invoke-static {}, Landroid/telecom/Log;->createSubsession()Landroid/telecom/Logging/Session;

    move-result-object p1

    iput-object p1, p3, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 1050
    iget-object p1, p0, Landroid/telecom/ConnectionService$1;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {p1}, Landroid/telecom/ConnectionService;->-$$Nest$fgetmHandler(Landroid/telecom/ConnectionService;)Landroid/os/Handler;

    move-result-object p1

    const/16 p2, 0x2a

    invoke-virtual {p1, p2, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V
    :try_end_22
    .catchall {:try_start_5 .. :try_end_22} :catchall_27

    .line 1052
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1053
    nop

    .line 1054
    return-void

    .line 1052
    :catchall_27
    move-exception p1

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1053
    throw p1
.end method

.method public blacklist onExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;Landroid/telecom/Logging/Session$Info;)V
    .registers 5

    .line 1058
    const-string v0, "CS.oEC"

    invoke-static {p3, v0}, Landroid/telecom/Log;->startSession(Landroid/telecom/Logging/Session$Info;Ljava/lang/String;)V

    .line 1060
    :try_start_5
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object p3

    .line 1061
    iput-object p1, p3, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 1062
    iput-object p2, p3, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 1063
    invoke-static {}, Landroid/telecom/Log;->createSubsession()Landroid/telecom/Logging/Session;

    move-result-object p1

    iput-object p1, p3, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 1064
    iget-object p1, p0, Landroid/telecom/ConnectionService$1;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {p1}, Landroid/telecom/ConnectionService;->-$$Nest$fgetmHandler(Landroid/telecom/ConnectionService;)Landroid/os/Handler;

    move-result-object p1

    const/16 p2, 0x18

    invoke-virtual {p1, p2, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V
    :try_end_22
    .catchall {:try_start_5 .. :try_end_22} :catchall_27

    .line 1066
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1067
    nop

    .line 1068
    return-void

    .line 1066
    :catchall_27
    move-exception p1

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1067
    throw p1
.end method

.method public blacklist onMuteStateChanged(Ljava/lang/String;ZLandroid/telecom/Logging/Session$Info;)V
    .registers 5

    .line 860
    const-string v0, "CS.oMSC"

    invoke-static {p3, v0}, Landroid/telecom/Log;->startSession(Landroid/telecom/Logging/Session$Info;Ljava/lang/String;)V

    .line 862
    :try_start_5
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object p3

    .line 863
    iput-object p1, p3, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 864
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p3, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 865
    invoke-static {}, Landroid/telecom/Log;->createSubsession()Landroid/telecom/Logging/Session;

    move-result-object p1

    iput-object p1, p3, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 866
    iget-object p1, p0, Landroid/telecom/ConnectionService$1;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {p1}, Landroid/telecom/ConnectionService;->-$$Nest$fgetmHandler(Landroid/telecom/ConnectionService;)Landroid/os/Handler;

    move-result-object p1

    const/16 p2, 0x2f

    invoke-virtual {p1, p2, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V
    :try_end_26
    .catchall {:try_start_5 .. :try_end_26} :catchall_2b

    .line 868
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 869
    nop

    .line 870
    return-void

    .line 868
    :catchall_2b
    move-exception p1

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 869
    throw p1
.end method

.method public blacklist onPostDialContinue(Ljava/lang/String;ZLandroid/telecom/Logging/Session$Info;)V
    .registers 5

    .line 999
    const-string v0, "CS.oPDC"

    invoke-static {p3, v0}, Landroid/telecom/Log;->startSession(Landroid/telecom/Logging/Session$Info;Ljava/lang/String;)V

    .line 1001
    :try_start_5
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object p3

    .line 1002
    iput-object p1, p3, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 1003
    invoke-static {}, Landroid/telecom/Log;->createSubsession()Landroid/telecom/Logging/Session;

    move-result-object p1

    iput-object p1, p3, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 1004
    if-eqz p2, :cond_15

    const/4 p1, 0x1

    goto :goto_16

    :cond_15
    const/4 p1, 0x0

    :goto_16
    iput p1, p3, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 1005
    iget-object p1, p0, Landroid/telecom/ConnectionService$1;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {p1}, Landroid/telecom/ConnectionService;->-$$Nest$fgetmHandler(Landroid/telecom/ConnectionService;)Landroid/os/Handler;

    move-result-object p1

    const/16 p2, 0xe

    invoke-virtual {p1, p2, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V
    :try_end_27
    .catchall {:try_start_5 .. :try_end_27} :catchall_2c

    .line 1007
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1008
    nop

    .line 1009
    return-void

    .line 1007
    :catchall_2c
    move-exception p1

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1008
    throw p1
.end method

.method public blacklist onTrackedByNonUiService(Ljava/lang/String;ZLandroid/telecom/Logging/Session$Info;)V
    .registers 5

    .line 890
    const-string v0, "CS.tBNUS"

    invoke-static {p3, v0}, Landroid/telecom/Log;->startSession(Landroid/telecom/Logging/Session$Info;Ljava/lang/String;)V

    .line 892
    :try_start_5
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object p3

    .line 893
    iput-object p1, p3, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 894
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p3, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 895
    invoke-static {}, Landroid/telecom/Log;->createSubsession()Landroid/telecom/Logging/Session;

    move-result-object p1

    iput-object p1, p3, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 896
    iget-object p1, p0, Landroid/telecom/ConnectionService$1;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {p1}, Landroid/telecom/ConnectionService;->-$$Nest$fgetmHandler(Landroid/telecom/ConnectionService;)Landroid/os/Handler;

    move-result-object p1

    const/16 p2, 0x2c

    invoke-virtual {p1, p2, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V
    :try_end_26
    .catchall {:try_start_5 .. :try_end_26} :catchall_2b

    .line 898
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 899
    nop

    .line 900
    return-void

    .line 898
    :catchall_2b
    move-exception p1

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 899
    throw p1
.end method

.method public blacklist onUsingAlternativeUi(Ljava/lang/String;ZLandroid/telecom/Logging/Session$Info;)V
    .registers 5

    .line 875
    const-string v0, "CS.uAU"

    invoke-static {p3, v0}, Landroid/telecom/Log;->startSession(Landroid/telecom/Logging/Session$Info;Ljava/lang/String;)V

    .line 877
    :try_start_5
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object p3

    .line 878
    iput-object p1, p3, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 879
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p3, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 880
    invoke-static {}, Landroid/telecom/Log;->createSubsession()Landroid/telecom/Logging/Session;

    move-result-object p1

    iput-object p1, p3, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 881
    iget-object p1, p0, Landroid/telecom/ConnectionService$1;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {p1}, Landroid/telecom/ConnectionService;->-$$Nest$fgetmHandler(Landroid/telecom/ConnectionService;)Landroid/os/Handler;

    move-result-object p1

    const/16 p2, 0x2b

    invoke-virtual {p1, p2, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V
    :try_end_26
    .catchall {:try_start_5 .. :try_end_26} :catchall_2b

    .line 883
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 884
    nop

    .line 885
    return-void

    .line 883
    :catchall_2b
    move-exception p1

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 884
    throw p1
.end method

.method public blacklist playDtmfTone(Ljava/lang/String;CLandroid/telecom/Logging/Session$Info;)V
    .registers 5

    .line 904
    const-string v0, "CS.pDT"

    invoke-static {p3, v0}, Landroid/telecom/Log;->startSession(Landroid/telecom/Logging/Session$Info;Ljava/lang/String;)V

    .line 906
    :try_start_5
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object p3

    .line 907
    invoke-static {p2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p2

    iput-object p2, p3, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 908
    iput-object p1, p3, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 909
    invoke-static {}, Landroid/telecom/Log;->createSubsession()Landroid/telecom/Logging/Session;

    move-result-object p1

    iput-object p1, p3, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 910
    iget-object p1, p0, Landroid/telecom/ConnectionService$1;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {p1}, Landroid/telecom/ConnectionService;->-$$Nest$fgetmHandler(Landroid/telecom/ConnectionService;)Landroid/os/Handler;

    move-result-object p1

    const/16 p2, 0xa

    invoke-virtual {p1, p2, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V
    :try_end_26
    .catchall {:try_start_5 .. :try_end_26} :catchall_2b

    .line 912
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 913
    nop

    .line 914
    return-void

    .line 912
    :catchall_2b
    move-exception p1

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 913
    throw p1
.end method

.method public blacklist pullExternalCall(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    .registers 4

    .line 1013
    const-string v0, "CS.pEC"

    invoke-static {p2, v0}, Landroid/telecom/Log;->startSession(Landroid/telecom/Logging/Session$Info;Ljava/lang/String;)V

    .line 1015
    :try_start_5
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object p2

    .line 1016
    iput-object p1, p2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 1017
    invoke-static {}, Landroid/telecom/Log;->createSubsession()Landroid/telecom/Logging/Session;

    move-result-object p1

    iput-object p1, p2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 1018
    iget-object p1, p0, Landroid/telecom/ConnectionService$1;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {p1}, Landroid/telecom/ConnectionService;->-$$Nest$fgetmHandler(Landroid/telecom/ConnectionService;)Landroid/os/Handler;

    move-result-object p1

    const/16 v0, 0x16

    invoke-virtual {p1, v0, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V
    :try_end_20
    .catchall {:try_start_5 .. :try_end_20} :catchall_25

    .line 1020
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1021
    nop

    .line 1022
    return-void

    .line 1020
    :catchall_25
    move-exception p1

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1021
    throw p1
.end method

.method public blacklist reject(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    .registers 4

    .line 688
    const-string v0, "CS.r"

    invoke-static {p2, v0}, Landroid/telecom/Log;->startSession(Landroid/telecom/Logging/Session$Info;Ljava/lang/String;)V

    .line 690
    :try_start_5
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object p2

    .line 691
    iput-object p1, p2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 692
    invoke-static {}, Landroid/telecom/Log;->createSubsession()Landroid/telecom/Logging/Session;

    move-result-object p1

    iput-object p1, p2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 693
    iget-object p1, p0, Landroid/telecom/ConnectionService$1;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {p1}, Landroid/telecom/ConnectionService;->-$$Nest$fgetmHandler(Landroid/telecom/ConnectionService;)Landroid/os/Handler;

    move-result-object p1

    const/4 v0, 0x5

    invoke-virtual {p1, v0, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V
    :try_end_1f
    .catchall {:try_start_5 .. :try_end_1f} :catchall_24

    .line 695
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 696
    nop

    .line 697
    return-void

    .line 695
    :catchall_24
    move-exception p1

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 696
    throw p1
.end method

.method public blacklist rejectWithMessage(Ljava/lang/String;Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    .registers 5

    .line 716
    const-string v0, "CS.rWM"

    invoke-static {p3, v0}, Landroid/telecom/Log;->startSession(Landroid/telecom/Logging/Session$Info;Ljava/lang/String;)V

    .line 718
    :try_start_5
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object p3

    .line 719
    iput-object p1, p3, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 720
    iput-object p2, p3, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 721
    invoke-static {}, Landroid/telecom/Log;->createSubsession()Landroid/telecom/Logging/Session;

    move-result-object p1

    iput-object p1, p3, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 722
    iget-object p1, p0, Landroid/telecom/ConnectionService$1;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {p1}, Landroid/telecom/ConnectionService;->-$$Nest$fgetmHandler(Landroid/telecom/ConnectionService;)Landroid/os/Handler;

    move-result-object p1

    const/16 p2, 0x14

    invoke-virtual {p1, p2, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V
    :try_end_22
    .catchall {:try_start_5 .. :try_end_22} :catchall_27

    .line 724
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 725
    nop

    .line 726
    return-void

    .line 724
    :catchall_27
    move-exception p1

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 725
    throw p1
.end method

.method public blacklist rejectWithReason(Ljava/lang/String;ILandroid/telecom/Logging/Session$Info;)V
    .registers 5

    .line 702
    const-string v0, "CS.r"

    invoke-static {p3, v0}, Landroid/telecom/Log;->startSession(Landroid/telecom/Logging/Session$Info;Ljava/lang/String;)V

    .line 704
    :try_start_5
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object p3

    .line 705
    iput-object p1, p3, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 706
    iput p2, p3, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 707
    invoke-static {}, Landroid/telecom/Log;->createSubsession()Landroid/telecom/Logging/Session;

    move-result-object p1

    iput-object p1, p3, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 708
    iget-object p1, p0, Landroid/telecom/ConnectionService$1;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {p1}, Landroid/telecom/ConnectionService;->-$$Nest$fgetmHandler(Landroid/telecom/ConnectionService;)Landroid/os/Handler;

    move-result-object p1

    const/16 p2, 0x26

    invoke-virtual {p1, p2, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V
    :try_end_22
    .catchall {:try_start_5 .. :try_end_22} :catchall_27

    .line 710
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 711
    nop

    .line 712
    return-void

    .line 710
    :catchall_27
    move-exception p1

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 711
    throw p1
.end method

.method public blacklist removeConnectionServiceAdapter(Lcom/android/internal/telecom/IConnectionServiceAdapter;Landroid/telecom/Logging/Session$Info;)V
    .registers 4

    .line 478
    const-string v0, "CS.rCSA"

    invoke-static {p2, v0}, Landroid/telecom/Log;->startSession(Landroid/telecom/Logging/Session$Info;Ljava/lang/String;)V

    .line 480
    :try_start_5
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object p2

    .line 481
    iput-object p1, p2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 482
    invoke-static {}, Landroid/telecom/Log;->createSubsession()Landroid/telecom/Logging/Session;

    move-result-object p1

    iput-object p1, p2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 483
    iget-object p1, p0, Landroid/telecom/ConnectionService$1;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {p1}, Landroid/telecom/ConnectionService;->-$$Nest$fgetmHandler(Landroid/telecom/ConnectionService;)Landroid/os/Handler;

    move-result-object p1

    const/16 v0, 0x10

    invoke-virtual {p1, v0, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V
    :try_end_20
    .catchall {:try_start_5 .. :try_end_20} :catchall_25

    .line 485
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 486
    nop

    .line 487
    return-void

    .line 485
    :catchall_25
    move-exception p1

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 486
    throw p1
.end method

.method public blacklist respondToRttUpgradeRequest(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/telecom/Logging/Session$Info;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1101
    const-string v0, "CS.rTRUR"

    invoke-static {p4, v0}, Landroid/telecom/Log;->startSession(Landroid/telecom/Logging/Session$Info;Ljava/lang/String;)V

    .line 1103
    :try_start_5
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object p4

    .line 1104
    iput-object p1, p4, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 1105
    if-eqz p3, :cond_18

    if-nez p2, :cond_10

    goto :goto_18

    .line 1108
    :cond_10
    new-instance p1, Landroid/telecom/Connection$RttTextStream;

    invoke-direct {p1, p3, p2}, Landroid/telecom/Connection$RttTextStream;-><init>(Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;)V

    iput-object p1, p4, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    goto :goto_1b

    .line 1106
    :cond_18
    :goto_18
    const/4 p1, 0x0

    iput-object p1, p4, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 1110
    :goto_1b
    invoke-static {}, Landroid/telecom/Log;->createSubsession()Landroid/telecom/Logging/Session;

    move-result-object p1

    iput-object p1, p4, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 1111
    iget-object p1, p0, Landroid/telecom/ConnectionService$1;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {p1}, Landroid/telecom/ConnectionService;->-$$Nest$fgetmHandler(Landroid/telecom/ConnectionService;)Landroid/os/Handler;

    move-result-object p1

    const/16 p2, 0x1c

    invoke-virtual {p1, p2, p4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V
    :try_end_30
    .catchall {:try_start_5 .. :try_end_30} :catchall_35

    .line 1113
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1114
    nop

    .line 1115
    return-void

    .line 1113
    :catchall_35
    move-exception p1

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1114
    throw p1
.end method

.method public blacklist sendCallEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/telecom/Logging/Session$Info;)V
    .registers 6

    .line 1027
    const-string v0, "CS.sCE"

    invoke-static {p4, v0}, Landroid/telecom/Log;->startSession(Landroid/telecom/Logging/Session$Info;Ljava/lang/String;)V

    .line 1029
    :try_start_5
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object p4

    .line 1030
    iput-object p1, p4, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 1031
    iput-object p2, p4, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 1032
    iput-object p3, p4, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 1033
    invoke-static {}, Landroid/telecom/Log;->createSubsession()Landroid/telecom/Logging/Session;

    move-result-object p1

    iput-object p1, p4, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    .line 1034
    iget-object p1, p0, Landroid/telecom/ConnectionService$1;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {p1}, Landroid/telecom/ConnectionService;->-$$Nest$fgetmHandler(Landroid/telecom/ConnectionService;)Landroid/os/Handler;

    move-result-object p1

    const/16 p2, 0x17

    invoke-virtual {p1, p2, p4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V
    :try_end_24
    .catchall {:try_start_5 .. :try_end_24} :catchall_29

    .line 1036
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1037
    nop

    .line 1038
    return-void

    .line 1036
    :catchall_29
    move-exception p1

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1037
    throw p1
.end method

.method public blacklist silence(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    .registers 4

    .line 762
    const-string v0, "CS.s"

    invoke-static {p2, v0}, Landroid/telecom/Log;->startSession(Landroid/telecom/Logging/Session$Info;Ljava/lang/String;)V

    .line 764
    :try_start_5
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object p2

    .line 765
    iput-object p1, p2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 766
    invoke-static {}, Landroid/telecom/Log;->createSubsession()Landroid/telecom/Logging/Session;

    move-result-object p1

    iput-object p1, p2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 767
    iget-object p1, p0, Landroid/telecom/ConnectionService$1;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {p1}, Landroid/telecom/ConnectionService;->-$$Nest$fgetmHandler(Landroid/telecom/ConnectionService;)Landroid/os/Handler;

    move-result-object p1

    const/16 v0, 0x15

    invoke-virtual {p1, v0, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V
    :try_end_20
    .catchall {:try_start_5 .. :try_end_20} :catchall_25

    .line 769
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 770
    nop

    .line 771
    return-void

    .line 769
    :catchall_25
    move-exception p1

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 770
    throw p1
.end method

.method public blacklist splitFromConference(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    .registers 4

    .line 945
    const-string v0, "CS.sFC"

    invoke-static {p2, v0}, Landroid/telecom/Log;->startSession(Landroid/telecom/Logging/Session$Info;Ljava/lang/String;)V

    .line 947
    :try_start_5
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object p2

    .line 948
    iput-object p1, p2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 949
    invoke-static {}, Landroid/telecom/Log;->createSubsession()Landroid/telecom/Logging/Session;

    move-result-object p1

    iput-object p1, p2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 950
    iget-object p1, p0, Landroid/telecom/ConnectionService$1;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {p1}, Landroid/telecom/ConnectionService;->-$$Nest$fgetmHandler(Landroid/telecom/ConnectionService;)Landroid/os/Handler;

    move-result-object p1

    const/16 v0, 0xd

    invoke-virtual {p1, v0, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V
    :try_end_20
    .catchall {:try_start_5 .. :try_end_20} :catchall_25

    .line 952
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 953
    nop

    .line 954
    return-void

    .line 952
    :catchall_25
    move-exception p1

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 953
    throw p1
.end method

.method public blacklist startRtt(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/telecom/Logging/Session$Info;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1073
    const-string v0, "CS.+RTT"

    invoke-static {p4, v0}, Landroid/telecom/Log;->startSession(Landroid/telecom/Logging/Session$Info;Ljava/lang/String;)V

    .line 1075
    :try_start_5
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object p4

    .line 1076
    iput-object p1, p4, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 1077
    new-instance p1, Landroid/telecom/Connection$RttTextStream;

    invoke-direct {p1, p3, p2}, Landroid/telecom/Connection$RttTextStream;-><init>(Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;)V

    iput-object p1, p4, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 1078
    invoke-static {}, Landroid/telecom/Log;->createSubsession()Landroid/telecom/Logging/Session;

    move-result-object p1

    iput-object p1, p4, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 1079
    iget-object p1, p0, Landroid/telecom/ConnectionService$1;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {p1}, Landroid/telecom/ConnectionService;->-$$Nest$fgetmHandler(Landroid/telecom/ConnectionService;)Landroid/os/Handler;

    move-result-object p1

    const/16 p2, 0x1a

    invoke-virtual {p1, p2, p4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V
    :try_end_27
    .catchall {:try_start_5 .. :try_end_27} :catchall_2c

    .line 1081
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1082
    nop

    .line 1083
    return-void

    .line 1081
    :catchall_2c
    move-exception p1

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1082
    throw p1
.end method

.method public blacklist stopDtmfTone(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    .registers 4

    .line 918
    const-string v0, "CS.sDT"

    invoke-static {p2, v0}, Landroid/telecom/Log;->startSession(Landroid/telecom/Logging/Session$Info;Ljava/lang/String;)V

    .line 920
    :try_start_5
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object p2

    .line 921
    iput-object p1, p2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 922
    invoke-static {}, Landroid/telecom/Log;->createSubsession()Landroid/telecom/Logging/Session;

    move-result-object p1

    iput-object p1, p2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 923
    iget-object p1, p0, Landroid/telecom/ConnectionService$1;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {p1}, Landroid/telecom/ConnectionService;->-$$Nest$fgetmHandler(Landroid/telecom/ConnectionService;)Landroid/os/Handler;

    move-result-object p1

    const/16 v0, 0xb

    invoke-virtual {p1, v0, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V
    :try_end_20
    .catchall {:try_start_5 .. :try_end_20} :catchall_25

    .line 925
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 926
    nop

    .line 927
    return-void

    .line 925
    :catchall_25
    move-exception p1

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 926
    throw p1
.end method

.method public blacklist stopRtt(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1087
    const-string v0, "CS.-RTT"

    invoke-static {p2, v0}, Landroid/telecom/Log;->startSession(Landroid/telecom/Logging/Session$Info;Ljava/lang/String;)V

    .line 1089
    :try_start_5
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object p2

    .line 1090
    iput-object p1, p2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 1091
    invoke-static {}, Landroid/telecom/Log;->createSubsession()Landroid/telecom/Logging/Session;

    move-result-object p1

    iput-object p1, p2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 1092
    iget-object p1, p0, Landroid/telecom/ConnectionService$1;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {p1}, Landroid/telecom/ConnectionService;->-$$Nest$fgetmHandler(Landroid/telecom/ConnectionService;)Landroid/os/Handler;

    move-result-object p1

    const/16 v0, 0x1b

    invoke-virtual {p1, v0, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V
    :try_end_20
    .catchall {:try_start_5 .. :try_end_20} :catchall_25

    .line 1094
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1095
    nop

    .line 1096
    return-void

    .line 1094
    :catchall_25
    move-exception p1

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1095
    throw p1
.end method

.method public blacklist swapConference(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    .registers 4

    .line 971
    const-string v0, "CS.sC"

    invoke-static {p2, v0}, Landroid/telecom/Log;->startSession(Landroid/telecom/Logging/Session$Info;Ljava/lang/String;)V

    .line 973
    :try_start_5
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object p2

    .line 974
    iput-object p1, p2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 975
    invoke-static {}, Landroid/telecom/Log;->createSubsession()Landroid/telecom/Logging/Session;

    move-result-object p1

    iput-object p1, p2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 976
    iget-object p1, p0, Landroid/telecom/ConnectionService$1;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {p1}, Landroid/telecom/ConnectionService;->-$$Nest$fgetmHandler(Landroid/telecom/ConnectionService;)Landroid/os/Handler;

    move-result-object p1

    const/16 v0, 0x13

    invoke-virtual {p1, v0, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V
    :try_end_20
    .catchall {:try_start_5 .. :try_end_20} :catchall_25

    .line 978
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 979
    nop

    .line 980
    return-void

    .line 978
    :catchall_25
    move-exception p1

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 979
    throw p1
.end method

.method public blacklist transfer(Ljava/lang/String;Landroid/net/Uri;ZLandroid/telecom/Logging/Session$Info;)V
    .registers 6

    .line 731
    const-string v0, "CS.trans"

    invoke-static {p4, v0}, Landroid/telecom/Log;->startSession(Landroid/telecom/Logging/Session$Info;Ljava/lang/String;)V

    .line 733
    :try_start_5
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object p4

    .line 734
    iput-object p1, p4, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 735
    iput-object p2, p4, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 736
    if-eqz p3, :cond_11

    const/4 p1, 0x1

    goto :goto_12

    :cond_11
    const/4 p1, 0x0

    :goto_12
    iput p1, p4, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 737
    invoke-static {}, Landroid/telecom/Log;->createSubsession()Landroid/telecom/Logging/Session;

    move-result-object p1

    iput-object p1, p4, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 738
    iget-object p1, p0, Landroid/telecom/ConnectionService$1;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {p1}, Landroid/telecom/ConnectionService;->-$$Nest$fgetmHandler(Landroid/telecom/ConnectionService;)Landroid/os/Handler;

    move-result-object p1

    const/16 p2, 0x28

    invoke-virtual {p1, p2, p4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V
    :try_end_29
    .catchall {:try_start_5 .. :try_end_29} :catchall_2e

    .line 740
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 741
    nop

    .line 742
    return-void

    .line 740
    :catchall_2e
    move-exception p1

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 741
    throw p1
.end method

.method public blacklist unhold(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    .registers 4

    .line 801
    const-string v0, "CS.u"

    invoke-static {p2, v0}, Landroid/telecom/Log;->startSession(Landroid/telecom/Logging/Session$Info;Ljava/lang/String;)V

    .line 803
    :try_start_5
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object p2

    .line 804
    iput-object p1, p2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 805
    invoke-static {}, Landroid/telecom/Log;->createSubsession()Landroid/telecom/Logging/Session;

    move-result-object p1

    iput-object p1, p2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 806
    iget-object p1, p0, Landroid/telecom/ConnectionService$1;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {p1}, Landroid/telecom/ConnectionService;->-$$Nest$fgetmHandler(Landroid/telecom/ConnectionService;)Landroid/os/Handler;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V
    :try_end_20
    .catchall {:try_start_5 .. :try_end_20} :catchall_25

    .line 808
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 809
    nop

    .line 810
    return-void

    .line 808
    :catchall_25
    move-exception p1

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 809
    throw p1
.end method
