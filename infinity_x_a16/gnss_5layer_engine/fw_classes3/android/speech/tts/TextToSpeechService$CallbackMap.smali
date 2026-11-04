.class Landroid/speech/tts/TextToSpeechService$CallbackMap;
.super Landroid/os/RemoteCallbackList;
.source "TextToSpeechService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/speech/tts/TextToSpeechService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallbackMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/RemoteCallbackList<",
        "Landroid/speech/tts/ITextToSpeechCallback;",
        ">;"
    }
.end annotation


# instance fields
.field private final greylist-max-o mCallerToCallback:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/os/IBinder;",
            "Landroid/speech/tts/ITextToSpeechCallback;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic blacklist this$0:Landroid/speech/tts/TextToSpeechService;


# direct methods
.method private constructor blacklist <init>(Landroid/speech/tts/TextToSpeechService;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 1516
    iput-object p1, p0, Landroid/speech/tts/TextToSpeechService$CallbackMap;->this$0:Landroid/speech/tts/TextToSpeechService;

    invoke-direct {p0}, Landroid/os/RemoteCallbackList;-><init>()V

    .line 1517
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Landroid/speech/tts/TextToSpeechService$CallbackMap;->mCallerToCallback:Ljava/util/HashMap;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/speech/tts/TextToSpeechService;Landroid/speech/tts/TextToSpeechService-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/speech/tts/TextToSpeechService$CallbackMap;-><init>(Landroid/speech/tts/TextToSpeechService;)V

    return-void
.end method

.method private greylist-max-o getCallbackFor(Ljava/lang/Object;)Landroid/speech/tts/ITextToSpeechCallback;
    .registers 4

    .line 1626
    check-cast p1, Landroid/os/IBinder;

    .line 1627
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$CallbackMap;->mCallerToCallback:Ljava/util/HashMap;

    monitor-enter v0

    .line 1628
    :try_start_5
    iget-object v1, p0, Landroid/speech/tts/TextToSpeechService$CallbackMap;->mCallerToCallback:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/speech/tts/ITextToSpeechCallback;

    .line 1629
    monitor-exit v0

    .line 1631
    return-object p1

    .line 1629
    :catchall_f
    move-exception p1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_f

    throw p1
.end method


# virtual methods
.method public greylist-max-o dispatchOnAudioAvailable(Ljava/lang/Object;Ljava/lang/String;[B)V
    .registers 4

    .line 1587
    invoke-direct {p0, p1}, Landroid/speech/tts/TextToSpeechService$CallbackMap;->getCallbackFor(Ljava/lang/Object;)Landroid/speech/tts/ITextToSpeechCallback;

    move-result-object p1

    .line 1588
    if-nez p1, :cond_7

    return-void

    .line 1590
    :cond_7
    :try_start_7
    invoke-interface {p1, p2, p3}, Landroid/speech/tts/ITextToSpeechCallback;->onAudioAvailable(Ljava/lang/String;[B)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_a} :catch_b

    .line 1593
    goto :goto_24

    .line 1591
    :catch_b
    move-exception p1

    .line 1592
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Callback dispatchOnAudioAvailable(String, byte[]) failed: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "TextToSpeechService"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1594
    :goto_24
    return-void
.end method

.method public greylist-max-o dispatchOnBeginSynthesis(Ljava/lang/Object;Ljava/lang/String;III)V
    .registers 6

    .line 1577
    invoke-direct {p0, p1}, Landroid/speech/tts/TextToSpeechService$CallbackMap;->getCallbackFor(Ljava/lang/Object;)Landroid/speech/tts/ITextToSpeechCallback;

    move-result-object p1

    .line 1578
    if-nez p1, :cond_7

    return-void

    .line 1580
    :cond_7
    :try_start_7
    invoke-interface {p1, p2, p3, p4, p5}, Landroid/speech/tts/ITextToSpeechCallback;->onBeginSynthesis(Ljava/lang/String;III)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_a} :catch_b

    .line 1583
    goto :goto_24

    .line 1581
    :catch_b
    move-exception p1

    .line 1582
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Callback dispatchOnBeginSynthesis(String, int, int, int) failed: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "TextToSpeechService"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1584
    :goto_24
    return-void
.end method

.method public greylist-max-o dispatchOnError(Ljava/lang/Object;Ljava/lang/String;I)V
    .registers 4

    .line 1567
    invoke-direct {p0, p1}, Landroid/speech/tts/TextToSpeechService$CallbackMap;->getCallbackFor(Ljava/lang/Object;)Landroid/speech/tts/ITextToSpeechCallback;

    move-result-object p1

    .line 1568
    if-nez p1, :cond_7

    return-void

    .line 1570
    :cond_7
    :try_start_7
    invoke-interface {p1, p2, p3}, Landroid/speech/tts/ITextToSpeechCallback;->onError(Ljava/lang/String;I)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_a} :catch_b

    .line 1573
    goto :goto_24

    .line 1571
    :catch_b
    move-exception p1

    .line 1572
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Callback onError failed: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "TextToSpeechService"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1574
    :goto_24
    return-void
.end method

.method public greylist-max-o dispatchOnRangeStart(Ljava/lang/Object;Ljava/lang/String;III)V
    .registers 6

    .line 1598
    invoke-direct {p0, p1}, Landroid/speech/tts/TextToSpeechService$CallbackMap;->getCallbackFor(Ljava/lang/Object;)Landroid/speech/tts/ITextToSpeechCallback;

    move-result-object p1

    .line 1599
    if-nez p1, :cond_7

    return-void

    .line 1601
    :cond_7
    :try_start_7
    invoke-interface {p1, p2, p3, p4, p5}, Landroid/speech/tts/ITextToSpeechCallback;->onRangeStart(Ljava/lang/String;III)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_a} :catch_b

    .line 1604
    goto :goto_24

    .line 1602
    :catch_b
    move-exception p1

    .line 1603
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Callback dispatchOnRangeStart(String, int, int, int) failed: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "TextToSpeechService"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1605
    :goto_24
    return-void
.end method

.method public greylist-max-o dispatchOnStart(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 4

    .line 1556
    invoke-direct {p0, p1}, Landroid/speech/tts/TextToSpeechService$CallbackMap;->getCallbackFor(Ljava/lang/Object;)Landroid/speech/tts/ITextToSpeechCallback;

    move-result-object p1

    .line 1557
    if-nez p1, :cond_7

    return-void

    .line 1559
    :cond_7
    :try_start_7
    invoke-interface {p1, p2}, Landroid/speech/tts/ITextToSpeechCallback;->onStart(Ljava/lang/String;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_a} :catch_b

    .line 1562
    goto :goto_24

    .line 1560
    :catch_b
    move-exception p1

    .line 1561
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Callback onStart failed: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "TextToSpeechService"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1563
    :goto_24
    return-void
.end method

.method public greylist-max-o dispatchOnStop(Ljava/lang/Object;Ljava/lang/String;Z)V
    .registers 4

    .line 1536
    invoke-direct {p0, p1}, Landroid/speech/tts/TextToSpeechService$CallbackMap;->getCallbackFor(Ljava/lang/Object;)Landroid/speech/tts/ITextToSpeechCallback;

    move-result-object p1

    .line 1537
    if-nez p1, :cond_7

    return-void

    .line 1539
    :cond_7
    :try_start_7
    invoke-interface {p1, p2, p3}, Landroid/speech/tts/ITextToSpeechCallback;->onStop(Ljava/lang/String;Z)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_a} :catch_b

    .line 1542
    goto :goto_24

    .line 1540
    :catch_b
    move-exception p1

    .line 1541
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Callback onStop failed: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "TextToSpeechService"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1543
    :goto_24
    return-void
.end method

.method public greylist-max-o dispatchOnSuccess(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 4

    .line 1546
    invoke-direct {p0, p1}, Landroid/speech/tts/TextToSpeechService$CallbackMap;->getCallbackFor(Ljava/lang/Object;)Landroid/speech/tts/ITextToSpeechCallback;

    move-result-object p1

    .line 1547
    if-nez p1, :cond_7

    return-void

    .line 1549
    :cond_7
    :try_start_7
    invoke-interface {p1, p2}, Landroid/speech/tts/ITextToSpeechCallback;->onSuccess(Ljava/lang/String;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_a} :catch_b

    .line 1552
    goto :goto_24

    .line 1550
    :catch_b
    move-exception p1

    .line 1551
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Callback onDone failed: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "TextToSpeechService"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1553
    :goto_24
    return-void
.end method

.method public whitelist kill()V
    .registers 3

    .line 1618
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$CallbackMap;->mCallerToCallback:Ljava/util/HashMap;

    monitor-enter v0

    .line 1619
    :try_start_3
    iget-object v1, p0, Landroid/speech/tts/TextToSpeechService$CallbackMap;->mCallerToCallback:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 1620
    invoke-super {p0}, Landroid/os/RemoteCallbackList;->kill()V

    .line 1621
    monitor-exit v0

    .line 1622
    return-void

    .line 1621
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public bridge synthetic whitelist onCallbackDied(Landroid/os/IInterface;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 1516
    check-cast p1, Landroid/speech/tts/ITextToSpeechCallback;

    invoke-virtual {p0, p1, p2}, Landroid/speech/tts/TextToSpeechService$CallbackMap;->onCallbackDied(Landroid/speech/tts/ITextToSpeechCallback;Ljava/lang/Object;)V

    return-void
.end method

.method public greylist-max-o onCallbackDied(Landroid/speech/tts/ITextToSpeechCallback;Ljava/lang/Object;)V
    .registers 4

    .line 1609
    check-cast p2, Landroid/os/IBinder;

    .line 1610
    iget-object p1, p0, Landroid/speech/tts/TextToSpeechService$CallbackMap;->mCallerToCallback:Ljava/util/HashMap;

    monitor-enter p1

    .line 1611
    :try_start_5
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$CallbackMap;->mCallerToCallback:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1612
    monitor-exit p1
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_15

    .line 1613
    iget-object p1, p0, Landroid/speech/tts/TextToSpeechService$CallbackMap;->this$0:Landroid/speech/tts/TextToSpeechService;

    invoke-static {p1}, Landroid/speech/tts/TextToSpeechService;->-$$Nest$fgetmSynthHandler(Landroid/speech/tts/TextToSpeechService;)Landroid/speech/tts/TextToSpeechService$SynthHandler;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/speech/tts/TextToSpeechService$SynthHandler;->stopForApp(Ljava/lang/Object;)I

    .line 1614
    return-void

    .line 1612
    :catchall_15
    move-exception p2

    :try_start_16
    monitor-exit p1
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    throw p2
.end method

.method public greylist-max-o setCallback(Landroid/os/IBinder;Landroid/speech/tts/ITextToSpeechCallback;)V
    .registers 5

    .line 1521
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$CallbackMap;->mCallerToCallback:Ljava/util/HashMap;

    monitor-enter v0

    .line 1523
    if-eqz p2, :cond_11

    .line 1524
    :try_start_5
    invoke-virtual {p0, p2, p1}, Landroid/speech/tts/TextToSpeechService$CallbackMap;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z

    .line 1525
    iget-object v1, p0, Landroid/speech/tts/TextToSpeechService$CallbackMap;->mCallerToCallback:Ljava/util/HashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/speech/tts/ITextToSpeechCallback;

    goto :goto_19

    .line 1527
    :cond_11
    iget-object v1, p0, Landroid/speech/tts/TextToSpeechService$CallbackMap;->mCallerToCallback:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/speech/tts/ITextToSpeechCallback;

    .line 1529
    :goto_19
    if-eqz p1, :cond_20

    if-eq p1, p2, :cond_20

    .line 1530
    invoke-virtual {p0, p1}, Landroid/speech/tts/TextToSpeechService$CallbackMap;->unregister(Landroid/os/IInterface;)Z

    .line 1532
    :cond_20
    monitor-exit v0

    .line 1533
    return-void

    .line 1532
    :catchall_22
    move-exception p1

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_5 .. :try_end_24} :catchall_22

    throw p1
.end method
