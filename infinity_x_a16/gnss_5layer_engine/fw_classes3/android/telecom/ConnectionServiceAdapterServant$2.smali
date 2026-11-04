.class Landroid/telecom/ConnectionServiceAdapterServant$2;
.super Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;
.source "ConnectionServiceAdapterServant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/ConnectionServiceAdapterServant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/telecom/ConnectionServiceAdapterServant;


# direct methods
.method constructor blacklist <init>(Landroid/telecom/ConnectionServiceAdapterServant;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 407
    iput-object p1, p0, Landroid/telecom/ConnectionServiceAdapterServant$2;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-direct {p0}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist addConferenceCall(Ljava/lang/String;Landroid/telecom/ParcelableConference;Landroid/telecom/Logging/Session$Info;)V
    .registers 4

    .line 511
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object p3

    .line 512
    iput-object p1, p3, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 513
    iput-object p2, p3, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 514
    iget-object p1, p0, Landroid/telecom/ConnectionServiceAdapterServant$2;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {p1}, Landroid/telecom/ConnectionServiceAdapterServant;->-$$Nest$fgetmHandler(Landroid/telecom/ConnectionServiceAdapterServant;)Landroid/os/Handler;

    move-result-object p1

    const/16 p2, 0xa

    invoke-virtual {p1, p2, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 515
    return-void
.end method

.method public blacklist addConferenceCallFromConnection(Ljava/lang/String;Landroid/telecom/ParcelableConference;Landroid/telecom/Logging/Session$Info;)V
    .registers 4

    .line 521
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object p3

    .line 522
    iput-object p1, p3, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 523
    iput-object p2, p3, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 524
    iget-object p1, p0, Landroid/telecom/ConnectionServiceAdapterServant$2;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {p1}, Landroid/telecom/ConnectionServiceAdapterServant;->-$$Nest$fgetmHandler(Landroid/telecom/ConnectionServiceAdapterServant;)Landroid/os/Handler;

    move-result-object p1

    const/16 p2, 0x28

    invoke-virtual {p1, p2, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 525
    return-void
.end method

.method public final blacklist addExistingConnection(Ljava/lang/String;Landroid/telecom/ParcelableConnection;Landroid/telecom/Logging/Session$Info;)V
    .registers 4

    .line 624
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object p3

    .line 625
    iput-object p1, p3, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 626
    iput-object p2, p3, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 627
    iget-object p1, p0, Landroid/telecom/ConnectionServiceAdapterServant$2;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {p1}, Landroid/telecom/ConnectionServiceAdapterServant;->-$$Nest$fgetmHandler(Landroid/telecom/ConnectionServiceAdapterServant;)Landroid/os/Handler;

    move-result-object p1

    const/16 p2, 0x15

    invoke-virtual {p1, p2, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 628
    return-void
.end method

.method public blacklist handleCreateConferenceComplete(Ljava/lang/String;Landroid/telecom/ConnectionRequest;Landroid/telecom/ParcelableConference;Landroid/telecom/Logging/Session$Info;)V
    .registers 5

    .line 427
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object p4

    .line 428
    iput-object p1, p4, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 429
    iput-object p2, p4, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 430
    iput-object p3, p4, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 431
    iget-object p1, p0, Landroid/telecom/ConnectionServiceAdapterServant$2;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {p1}, Landroid/telecom/ConnectionServiceAdapterServant;->-$$Nest$fgetmHandler(Landroid/telecom/ConnectionServiceAdapterServant;)Landroid/os/Handler;

    move-result-object p1

    const/16 p2, 0x25

    invoke-virtual {p1, p2, p4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 432
    return-void
.end method

.method public blacklist handleCreateConnectionComplete(Ljava/lang/String;Landroid/telecom/ConnectionRequest;Landroid/telecom/ParcelableConnection;Landroid/telecom/Logging/Session$Info;)V
    .registers 5

    .line 414
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object p4

    .line 415
    iput-object p1, p4, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 416
    iput-object p2, p4, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 417
    iput-object p3, p4, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 418
    iget-object p1, p0, Landroid/telecom/ConnectionServiceAdapterServant$2;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {p1}, Landroid/telecom/ConnectionServiceAdapterServant;->-$$Nest$fgetmHandler(Landroid/telecom/ConnectionServiceAdapterServant;)Landroid/os/Handler;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2, p4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 419
    return-void
.end method

.method public final blacklist onConnectionEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/telecom/Logging/Session$Info;)V
    .registers 5

    .line 661
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object p4

    .line 662
    iput-object p1, p4, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 663
    iput-object p2, p4, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 664
    iput-object p3, p4, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 665
    iget-object p1, p0, Landroid/telecom/ConnectionServiceAdapterServant$2;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {p1}, Landroid/telecom/ConnectionServiceAdapterServant;->-$$Nest$fgetmHandler(Landroid/telecom/ConnectionServiceAdapterServant;)Landroid/os/Handler;

    move-result-object p1

    const/16 p2, 0x1a

    invoke-virtual {p1, p2, p4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 666
    return-void
.end method

.method public blacklist onConnectionServiceFocusReleased(Landroid/telecom/Logging/Session$Info;)V
    .registers 3

    .line 705
    iget-object p1, p0, Landroid/telecom/ConnectionServiceAdapterServant$2;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {p1}, Landroid/telecom/ConnectionServiceAdapterServant;->-$$Nest$fgetmHandler(Landroid/telecom/ConnectionServiceAdapterServant;)Landroid/os/Handler;

    move-result-object p1

    const/16 v0, 0x23

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 706
    return-void
.end method

.method public blacklist onPhoneAccountChanged(Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;Landroid/telecom/Logging/Session$Info;)V
    .registers 4

    .line 697
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object p3

    .line 698
    iput-object p1, p3, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 699
    iput-object p2, p3, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 700
    iget-object p1, p0, Landroid/telecom/ConnectionServiceAdapterServant$2;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {p1}, Landroid/telecom/ConnectionServiceAdapterServant;->-$$Nest$fgetmHandler(Landroid/telecom/ConnectionServiceAdapterServant;)Landroid/os/Handler;

    move-result-object p1

    const/16 p2, 0x22

    invoke-virtual {p1, p2, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 701
    return-void
.end method

.method public blacklist onPostDialChar(Ljava/lang/String;CLandroid/telecom/Logging/Session$Info;)V
    .registers 4

    .line 545
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object p3

    .line 546
    iput-object p1, p3, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 547
    iput p2, p3, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 548
    iget-object p1, p0, Landroid/telecom/ConnectionServiceAdapterServant$2;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {p1}, Landroid/telecom/ConnectionServiceAdapterServant;->-$$Nest$fgetmHandler(Landroid/telecom/ConnectionServiceAdapterServant;)Landroid/os/Handler;

    move-result-object p1

    const/16 p2, 0x16

    invoke-virtual {p1, p2, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 549
    return-void
.end method

.method public blacklist onPostDialWait(Ljava/lang/String;Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    .registers 4

    .line 536
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object p3

    .line 537
    iput-object p1, p3, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 538
    iput-object p2, p3, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 539
    iget-object p1, p0, Landroid/telecom/ConnectionServiceAdapterServant$2;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {p1}, Landroid/telecom/ConnectionServiceAdapterServant;->-$$Nest$fgetmHandler(Landroid/telecom/ConnectionServiceAdapterServant;)Landroid/os/Handler;

    move-result-object p1

    const/16 p2, 0xc

    invoke-virtual {p1, p2, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 540
    return-void
.end method

.method public blacklist onRemoteRttRequest(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 691
    iget-object p2, p0, Landroid/telecom/ConnectionServiceAdapterServant$2;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {p2}, Landroid/telecom/ConnectionServiceAdapterServant;->-$$Nest$fgetmHandler(Landroid/telecom/ConnectionServiceAdapterServant;)Landroid/os/Handler;

    move-result-object p2

    const/16 v0, 0x21

    invoke-virtual {p2, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 692
    return-void
.end method

.method public blacklist onRttInitiationFailure(Ljava/lang/String;ILandroid/telecom/Logging/Session$Info;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 678
    iget-object p3, p0, Landroid/telecom/ConnectionServiceAdapterServant$2;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {p3}, Landroid/telecom/ConnectionServiceAdapterServant;->-$$Nest$fgetmHandler(Landroid/telecom/ConnectionServiceAdapterServant;)Landroid/os/Handler;

    move-result-object p3

    const/16 v0, 0x1f

    const/4 v1, 0x0

    invoke-virtual {p3, v0, p2, v1, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 679
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 680
    return-void
.end method

.method public blacklist onRttInitiationSuccess(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 671
    iget-object p2, p0, Landroid/telecom/ConnectionServiceAdapterServant$2;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {p2}, Landroid/telecom/ConnectionServiceAdapterServant;->-$$Nest$fgetmHandler(Landroid/telecom/ConnectionServiceAdapterServant;)Landroid/os/Handler;

    move-result-object p2

    const/16 v0, 0x1e

    invoke-virtual {p2, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 672
    return-void
.end method

.method public blacklist onRttSessionRemotelyTerminated(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 685
    iget-object p2, p0, Landroid/telecom/ConnectionServiceAdapterServant$2;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {p2}, Landroid/telecom/ConnectionServiceAdapterServant;->-$$Nest$fgetmHandler(Landroid/telecom/ConnectionServiceAdapterServant;)Landroid/os/Handler;

    move-result-object p2

    const/16 v0, 0x20

    invoke-virtual {p2, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 686
    return-void
.end method

.method public final blacklist putExtras(Ljava/lang/String;Landroid/os/Bundle;Landroid/telecom/Logging/Session$Info;)V
    .registers 4

    .line 632
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object p3

    .line 633
    iput-object p1, p3, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 634
    iput-object p2, p3, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 635
    iget-object p1, p0, Landroid/telecom/ConnectionServiceAdapterServant$2;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {p1}, Landroid/telecom/ConnectionServiceAdapterServant;->-$$Nest$fgetmHandler(Landroid/telecom/ConnectionServiceAdapterServant;)Landroid/os/Handler;

    move-result-object p1

    const/16 p2, 0x18

    invoke-virtual {p1, p2, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 636
    return-void
.end method

.method public blacklist queryLocation(Ljava/lang/String;JLjava/lang/String;Landroid/os/ResultReceiver;Landroid/telecom/Logging/Session$Info;)V
    .registers 8

    .line 742
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 743
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 744
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 745
    iput-object p4, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 746
    iput-object p5, v0, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    .line 747
    iput-object p6, v0, Lcom/android/internal/os/SomeArgs;->arg5:Ljava/lang/Object;

    .line 748
    iget-object p1, p0, Landroid/telecom/ConnectionServiceAdapterServant$2;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {p1}, Landroid/telecom/ConnectionServiceAdapterServant;->-$$Nest$fgetmHandler(Landroid/telecom/ConnectionServiceAdapterServant;)Landroid/os/Handler;

    move-result-object p1

    const/16 p2, 0x27

    invoke-virtual {p1, p2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 749
    return-void
.end method

.method public blacklist queryRemoteConnectionServices(Lcom/android/internal/telecom/RemoteServiceCallback;Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    .registers 4

    .line 554
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object p3

    .line 555
    iput-object p1, p3, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 556
    iput-object p2, p3, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 557
    iget-object p1, p0, Landroid/telecom/ConnectionServiceAdapterServant$2;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {p1}, Landroid/telecom/ConnectionServiceAdapterServant;->-$$Nest$fgetmHandler(Landroid/telecom/ConnectionServiceAdapterServant;)Landroid/os/Handler;

    move-result-object p1

    const/16 p2, 0xd

    invoke-virtual {p1, p2, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 558
    return-void
.end method

.method public blacklist removeCall(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    .registers 4

    .line 530
    iget-object p2, p0, Landroid/telecom/ConnectionServiceAdapterServant$2;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {p2}, Landroid/telecom/ConnectionServiceAdapterServant;->-$$Nest$fgetmHandler(Landroid/telecom/ConnectionServiceAdapterServant;)Landroid/os/Handler;

    move-result-object p2

    const/16 v0, 0xb

    invoke-virtual {p2, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 531
    return-void
.end method

.method public final blacklist removeExtras(Ljava/lang/String;Ljava/util/List;Landroid/telecom/Logging/Session$Info;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/telecom/Logging/Session$Info;",
            ")V"
        }
    .end annotation

    .line 641
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object p3

    .line 642
    iput-object p1, p3, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 643
    iput-object p2, p3, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 644
    iget-object p1, p0, Landroid/telecom/ConnectionServiceAdapterServant$2;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {p1}, Landroid/telecom/ConnectionServiceAdapterServant;->-$$Nest$fgetmHandler(Landroid/telecom/ConnectionServiceAdapterServant;)Landroid/os/Handler;

    move-result-object p1

    const/16 p2, 0x19

    invoke-virtual {p1, p2, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 645
    return-void
.end method

.method public blacklist requestCallEndpointChange(Ljava/lang/String;Landroid/telecom/CallEndpoint;Landroid/os/ResultReceiver;Landroid/telecom/Logging/Session$Info;)V
    .registers 5

    .line 737
    return-void
.end method

.method public blacklist resetConnectionTime(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    .registers 3

    .line 711
    return-void
.end method

.method public blacklist setActive(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    .registers 4

    .line 437
    iget-object p2, p0, Landroid/telecom/ConnectionServiceAdapterServant$2;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {p2}, Landroid/telecom/ConnectionServiceAdapterServant;->-$$Nest$fgetmHandler(Landroid/telecom/ConnectionServiceAdapterServant;)Landroid/os/Handler;

    move-result-object p2

    const/4 v0, 0x2

    invoke-virtual {p2, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 438
    return-void
.end method

.method public final blacklist setAddress(Ljava/lang/String;Landroid/net/Uri;ILandroid/telecom/Logging/Session$Info;)V
    .registers 5

    .line 594
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object p4

    .line 595
    iput-object p1, p4, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 596
    iput-object p2, p4, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 597
    iput p3, p4, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 598
    iget-object p1, p0, Landroid/telecom/ConnectionServiceAdapterServant$2;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {p1}, Landroid/telecom/ConnectionServiceAdapterServant;->-$$Nest$fgetmHandler(Landroid/telecom/ConnectionServiceAdapterServant;)Landroid/os/Handler;

    move-result-object p1

    const/16 p2, 0x12

    invoke-virtual {p1, p2, p4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 599
    return-void
.end method

.method public blacklist setAudioProcessing(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;I)V
    .registers 4

    .line 754
    return-void
.end method

.method public final blacklist setAudioRoute(Ljava/lang/String;ILjava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    .registers 6

    .line 650
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 651
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 652
    iput p2, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 653
    iput-object p3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 654
    iput-object p4, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 655
    iget-object p1, p0, Landroid/telecom/ConnectionServiceAdapterServant$2;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {p1}, Landroid/telecom/ConnectionServiceAdapterServant;->-$$Nest$fgetmHandler(Landroid/telecom/ConnectionServiceAdapterServant;)Landroid/os/Handler;

    move-result-object p1

    const/16 p2, 0x1d

    invoke-virtual {p1, p2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 656
    return-void
.end method

.method public blacklist setCallDirection(Ljava/lang/String;ILandroid/telecom/Logging/Session$Info;)V
    .registers 5

    .line 726
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 727
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 728
    iput p2, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 729
    iput-object p3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 730
    iget-object p1, p0, Landroid/telecom/ConnectionServiceAdapterServant$2;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {p1}, Landroid/telecom/ConnectionServiceAdapterServant;->-$$Nest$fgetmHandler(Landroid/telecom/ConnectionServiceAdapterServant;)Landroid/os/Handler;

    move-result-object p1

    const/16 p2, 0x26

    invoke-virtual {p1, p2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 731
    return-void
.end method

.method public final blacklist setCallerDisplayName(Ljava/lang/String;Ljava/lang/String;ILandroid/telecom/Logging/Session$Info;)V
    .registers 5

    .line 605
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object p4

    .line 606
    iput-object p1, p4, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 607
    iput-object p2, p4, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 608
    iput p3, p4, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 609
    iget-object p1, p0, Landroid/telecom/ConnectionServiceAdapterServant$2;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {p1}, Landroid/telecom/ConnectionServiceAdapterServant;->-$$Nest$fgetmHandler(Landroid/telecom/ConnectionServiceAdapterServant;)Landroid/os/Handler;

    move-result-object p1

    const/16 p2, 0x13

    invoke-virtual {p1, p2, p4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 610
    return-void
.end method

.method public blacklist setConferenceMergeFailed(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    .registers 4

    .line 494
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object p2

    .line 495
    iput-object p1, p2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 496
    iget-object p1, p0, Landroid/telecom/ConnectionServiceAdapterServant$2;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {p1}, Landroid/telecom/ConnectionServiceAdapterServant;->-$$Nest$fgetmHandler(Landroid/telecom/ConnectionServiceAdapterServant;)Landroid/os/Handler;

    move-result-object p1

    const/16 v0, 0x17

    invoke-virtual {p1, v0, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 497
    return-void
.end method

.method public blacklist setConferenceState(Ljava/lang/String;ZLandroid/telecom/Logging/Session$Info;)V
    .registers 5

    .line 716
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 717
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 718
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 719
    iput-object p3, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 720
    iget-object p1, p0, Landroid/telecom/ConnectionServiceAdapterServant$2;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {p1}, Landroid/telecom/ConnectionServiceAdapterServant;->-$$Nest$fgetmHandler(Landroid/telecom/ConnectionServiceAdapterServant;)Landroid/os/Handler;

    move-result-object p1

    const/16 p2, 0x24

    invoke-virtual {p1, p2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 721
    return-void
.end method

.method public final blacklist setConferenceableConnections(Ljava/lang/String;Ljava/util/List;Landroid/telecom/Logging/Session$Info;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/telecom/Logging/Session$Info;",
            ")V"
        }
    .end annotation

    .line 615
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object p3

    .line 616
    iput-object p1, p3, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 617
    iput-object p2, p3, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 618
    iget-object p1, p0, Landroid/telecom/ConnectionServiceAdapterServant$2;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {p1}, Landroid/telecom/ConnectionServiceAdapterServant;->-$$Nest$fgetmHandler(Landroid/telecom/ConnectionServiceAdapterServant;)Landroid/os/Handler;

    move-result-object p1

    const/16 p2, 0x14

    invoke-virtual {p1, p2, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 619
    return-void
.end method

.method public blacklist setConnectionCapabilities(Ljava/lang/String;ILandroid/telecom/Logging/Session$Info;)V
    .registers 6

    .line 479
    iget-object p3, p0, Landroid/telecom/ConnectionServiceAdapterServant$2;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {p3}, Landroid/telecom/ConnectionServiceAdapterServant;->-$$Nest$fgetmHandler(Landroid/telecom/ConnectionServiceAdapterServant;)Landroid/os/Handler;

    move-result-object p3

    const/16 v0, 0x8

    const/4 v1, 0x0

    invoke-virtual {p3, v0, p2, v1, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 481
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 482
    return-void
.end method

.method public blacklist setConnectionProperties(Ljava/lang/String;ILandroid/telecom/Logging/Session$Info;)V
    .registers 6

    .line 487
    iget-object p3, p0, Landroid/telecom/ConnectionServiceAdapterServant$2;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {p3}, Landroid/telecom/ConnectionServiceAdapterServant;->-$$Nest$fgetmHandler(Landroid/telecom/ConnectionServiceAdapterServant;)Landroid/os/Handler;

    move-result-object p3

    const/16 v0, 0x1b

    const/4 v1, 0x0

    invoke-virtual {p3, v0, p2, v1, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 489
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 490
    return-void
.end method

.method public blacklist setDialing(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    .registers 4

    .line 447
    iget-object p2, p0, Landroid/telecom/ConnectionServiceAdapterServant$2;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {p2}, Landroid/telecom/ConnectionServiceAdapterServant;->-$$Nest$fgetmHandler(Landroid/telecom/ConnectionServiceAdapterServant;)Landroid/os/Handler;

    move-result-object p2

    const/4 v0, 0x4

    invoke-virtual {p2, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 448
    return-void
.end method

.method public blacklist setDisconnected(Ljava/lang/String;Landroid/telecom/DisconnectCause;Landroid/telecom/Logging/Session$Info;)V
    .registers 4

    .line 458
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object p3

    .line 459
    iput-object p1, p3, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 460
    iput-object p2, p3, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 461
    iget-object p1, p0, Landroid/telecom/ConnectionServiceAdapterServant$2;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {p1}, Landroid/telecom/ConnectionServiceAdapterServant;->-$$Nest$fgetmHandler(Landroid/telecom/ConnectionServiceAdapterServant;)Landroid/os/Handler;

    move-result-object p1

    const/4 p2, 0x5

    invoke-virtual {p1, p2, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 462
    return-void
.end method

.method public blacklist setIsConferenced(Ljava/lang/String;Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    .registers 4

    .line 502
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object p3

    .line 503
    iput-object p1, p3, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 504
    iput-object p2, p3, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 505
    iget-object p1, p0, Landroid/telecom/ConnectionServiceAdapterServant$2;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {p1}, Landroid/telecom/ConnectionServiceAdapterServant;->-$$Nest$fgetmHandler(Landroid/telecom/ConnectionServiceAdapterServant;)Landroid/os/Handler;

    move-result-object p1

    const/16 p2, 0x9

    invoke-virtual {p1, p2, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 506
    return-void
.end method

.method public final blacklist setIsVoipAudioMode(Ljava/lang/String;ZLandroid/telecom/Logging/Session$Info;)V
    .registers 6

    .line 578
    iget-object p3, p0, Landroid/telecom/ConnectionServiceAdapterServant$2;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {p3}, Landroid/telecom/ConnectionServiceAdapterServant;->-$$Nest$fgetmHandler(Landroid/telecom/ConnectionServiceAdapterServant;)Landroid/os/Handler;

    move-result-object p3

    const/4 v0, 0x0

    const/16 v1, 0x10

    invoke-virtual {p3, v1, p2, v0, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 579
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 580
    return-void
.end method

.method public blacklist setOnHold(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    .registers 4

    .line 466
    iget-object p2, p0, Landroid/telecom/ConnectionServiceAdapterServant$2;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {p2}, Landroid/telecom/ConnectionServiceAdapterServant;->-$$Nest$fgetmHandler(Landroid/telecom/ConnectionServiceAdapterServant;)Landroid/os/Handler;

    move-result-object p2

    const/4 v0, 0x6

    invoke-virtual {p2, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 467
    return-void
.end method

.method public blacklist setPulling(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    .registers 4

    .line 452
    iget-object p2, p0, Landroid/telecom/ConnectionServiceAdapterServant$2;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {p2}, Landroid/telecom/ConnectionServiceAdapterServant;->-$$Nest$fgetmHandler(Landroid/telecom/ConnectionServiceAdapterServant;)Landroid/os/Handler;

    move-result-object p2

    const/16 v0, 0x1c

    invoke-virtual {p2, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 453
    return-void
.end method

.method public blacklist setRingbackRequested(Ljava/lang/String;ZLandroid/telecom/Logging/Session$Info;)V
    .registers 6

    .line 472
    iget-object p3, p0, Landroid/telecom/ConnectionServiceAdapterServant$2;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {p3}, Landroid/telecom/ConnectionServiceAdapterServant;->-$$Nest$fgetmHandler(Landroid/telecom/ConnectionServiceAdapterServant;)Landroid/os/Handler;

    move-result-object p3

    const/4 v0, 0x0

    const/4 v1, 0x7

    invoke-virtual {p3, v1, p2, v0, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 473
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 474
    return-void
.end method

.method public blacklist setRinging(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    .registers 4

    .line 442
    iget-object p2, p0, Landroid/telecom/ConnectionServiceAdapterServant$2;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {p2}, Landroid/telecom/ConnectionServiceAdapterServant;->-$$Nest$fgetmHandler(Landroid/telecom/ConnectionServiceAdapterServant;)Landroid/os/Handler;

    move-result-object p2

    const/4 v0, 0x3

    invoke-virtual {p2, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 443
    return-void
.end method

.method public blacklist setSimulatedRinging(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    .registers 3

    .line 759
    return-void
.end method

.method public final blacklist setStatusHints(Ljava/lang/String;Landroid/telecom/StatusHints;Landroid/telecom/Logging/Session$Info;)V
    .registers 4

    .line 585
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object p3

    .line 586
    iput-object p1, p3, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 587
    iput-object p2, p3, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 588
    iget-object p1, p0, Landroid/telecom/ConnectionServiceAdapterServant$2;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {p1}, Landroid/telecom/ConnectionServiceAdapterServant;->-$$Nest$fgetmHandler(Landroid/telecom/ConnectionServiceAdapterServant;)Landroid/os/Handler;

    move-result-object p1

    const/16 p2, 0x11

    invoke-virtual {p1, p2, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 589
    return-void
.end method

.method public blacklist setVideoProvider(Ljava/lang/String;Lcom/android/internal/telecom/IVideoProvider;Landroid/telecom/Logging/Session$Info;)V
    .registers 4

    .line 569
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object p3

    .line 570
    iput-object p1, p3, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 571
    iput-object p2, p3, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 572
    iget-object p1, p0, Landroid/telecom/ConnectionServiceAdapterServant$2;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {p1}, Landroid/telecom/ConnectionServiceAdapterServant;->-$$Nest$fgetmHandler(Landroid/telecom/ConnectionServiceAdapterServant;)Landroid/os/Handler;

    move-result-object p1

    const/16 p2, 0xf

    invoke-virtual {p1, p2, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 573
    return-void
.end method

.method public blacklist setVideoState(Ljava/lang/String;ILandroid/telecom/Logging/Session$Info;)V
    .registers 6

    .line 563
    iget-object p3, p0, Landroid/telecom/ConnectionServiceAdapterServant$2;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {p3}, Landroid/telecom/ConnectionServiceAdapterServant;->-$$Nest$fgetmHandler(Landroid/telecom/ConnectionServiceAdapterServant;)Landroid/os/Handler;

    move-result-object p3

    const/16 v0, 0xe

    const/4 v1, 0x0

    invoke-virtual {p3, v0, p2, v1, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 564
    return-void
.end method
