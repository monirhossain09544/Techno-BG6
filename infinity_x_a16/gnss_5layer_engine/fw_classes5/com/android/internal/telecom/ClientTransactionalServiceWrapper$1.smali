.class Lcom/android/internal/telecom/ClientTransactionalServiceWrapper$1;
.super Lcom/android/internal/telecom/ICallEventCallback$Stub;
.source "ClientTransactionalServiceWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telecom/ClientTransactionalServiceWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final blacklist ON_ANSWER:Ljava/lang/String; = "onAnswer"

.field private static final blacklist ON_AVAILABLE_CALL_ENDPOINTS:Ljava/lang/String; = "onAvailableCallEndpointsChanged"

.field private static final blacklist ON_CALL_STREAMING_FAILED:Ljava/lang/String; = "onCallStreamingFailed"

.field private static final blacklist ON_DISCONNECT:Ljava/lang/String; = "onDisconnect"

.field private static final blacklist ON_EVENT:Ljava/lang/String; = "onEvent"

.field private static final blacklist ON_MUTE_STATE_CHANGED:Ljava/lang/String; = "onMuteStateChanged"

.field private static final blacklist ON_REQ_ENDPOINT_CHANGE:Ljava/lang/String; = "onRequestEndpointChange"

.field private static final blacklist ON_SET_ACTIVE:Ljava/lang/String; = "onSetActive"

.field private static final blacklist ON_SET_INACTIVE:Ljava/lang/String; = "onSetInactive"

.field private static final blacklist ON_STREAMING_STARTED:Ljava/lang/String; = "onStreamingStarted"

.field private static final blacklist ON_VIDEO_STATE_CHANGED:Ljava/lang/String; = "onVideoStateChanged"


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telecom/ClientTransactionalServiceWrapper;


# direct methods
.method public static synthetic blacklist $r8$lambda$k8LeACEhoFu8n-DH0iIyKlZX1eI(Lcom/android/internal/telecom/ClientTransactionalServiceWrapper$1;Ljava/lang/String;Landroid/telecom/CallControlCallback;Lcom/android/internal/telecom/ClientTransactionalServiceWrapper$ReceiverWrapper;[Ljava/lang/Object;Ljava/lang/String;)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/internal/telecom/ClientTransactionalServiceWrapper$1;->lambda$handleCallEventCallback$0(Ljava/lang/String;Landroid/telecom/CallControlCallback;Lcom/android/internal/telecom/ClientTransactionalServiceWrapper$ReceiverWrapper;[Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method constructor blacklist <init>(Lcom/android/internal/telecom/ClientTransactionalServiceWrapper;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 143
    iput-object p1, p0, Lcom/android/internal/telecom/ClientTransactionalServiceWrapper$1;->this$0:Lcom/android/internal/telecom/ClientTransactionalServiceWrapper;

    invoke-direct {p0}, Lcom/android/internal/telecom/ICallEventCallback$Stub;-><init>()V

    return-void
.end method

.method private varargs blacklist handleCallEventCallback(Ljava/lang/String;Ljava/lang/String;Landroid/os/ResultReceiver;[Ljava/lang/Object;)V
    .registers 15

    .line 159
    invoke-static {}, Lcom/android/internal/telecom/ClientTransactionalServiceWrapper;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "hCEC: id=[%s], action=[%s]"

    filled-new-array {p2, p1}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iget-object v0, p0, Lcom/android/internal/telecom/ClientTransactionalServiceWrapper$1;->this$0:Lcom/android/internal/telecom/ClientTransactionalServiceWrapper;

    invoke-static {v0}, Lcom/android/internal/telecom/ClientTransactionalServiceWrapper;->-$$Nest$fgetmCallIdToTransactionalCall(Lcom/android/internal/telecom/ClientTransactionalServiceWrapper;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telecom/TransactionalCall;

    .line 163
    if-eqz v0, :cond_66

    .line 165
    invoke-virtual {v0}, Lcom/android/internal/telecom/TransactionalCall;->getCallControlCallback()Landroid/telecom/CallControlCallback;

    move-result-object v4

    .line 167
    new-instance v5, Lcom/android/internal/telecom/ClientTransactionalServiceWrapper$ReceiverWrapper;

    iget-object v1, p0, Lcom/android/internal/telecom/ClientTransactionalServiceWrapper$1;->this$0:Lcom/android/internal/telecom/ClientTransactionalServiceWrapper;

    invoke-direct {v5, v1, p3}, Lcom/android/internal/telecom/ClientTransactionalServiceWrapper$ReceiverWrapper;-><init>(Lcom/android/internal/telecom/ClientTransactionalServiceWrapper;Landroid/os/ResultReceiver;)V

    .line 170
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 172
    :try_start_2e
    invoke-virtual {v0}, Lcom/android/internal/telecom/TransactionalCall;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object p3

    new-instance v1, Lcom/android/internal/telecom/ClientTransactionalServiceWrapper$1$$ExternalSyntheticLambda0;

    move-object v2, p0

    move-object v3, p1

    move-object v7, p2

    move-object v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/telecom/ClientTransactionalServiceWrapper$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/telecom/ClientTransactionalServiceWrapper$1;Ljava/lang/String;Landroid/telecom/CallControlCallback;Lcom/android/internal/telecom/ClientTransactionalServiceWrapper$ReceiverWrapper;[Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p3, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_3e} :catch_45
    .catchall {:try_start_2e .. :try_end_3e} :catchall_42

    .line 196
    :goto_3e
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 197
    goto :goto_66

    .line 196
    :catchall_42
    move-exception v0

    move-object p1, v0

    goto :goto_62

    .line 193
    :catch_45
    move-exception v0

    move-object p1, v0

    .line 194
    :try_start_47
    invoke-static {}, Lcom/android/internal/telecom/ClientTransactionalServiceWrapper;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Telecom hit an exception while handling a CallEventCallback on an executor: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_61
    .catchall {:try_start_47 .. :try_end_61} :catchall_42

    goto :goto_3e

    .line 196
    :goto_62
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 197
    throw p1

    .line 199
    :cond_66
    :goto_66
    return-void
.end method

.method private synthetic blacklist lambda$handleCallEventCallback$0(Ljava/lang/String;Landroid/telecom/CallControlCallback;Lcom/android/internal/telecom/ClientTransactionalServiceWrapper$ReceiverWrapper;[Ljava/lang/Object;Ljava/lang/String;)V
    .registers 8

    .line 173
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    sparse-switch v0, :sswitch_data_66

    :cond_8
    goto :goto_3b

    :sswitch_9
    const-string v0, "onStreamingStarted"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    const/4 p1, 0x4

    goto :goto_3c

    :sswitch_13
    const-string v0, "onAnswer"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    const/4 p1, 0x3

    goto :goto_3c

    :sswitch_1d
    const-string v0, "onSetActive"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    move p1, v1

    goto :goto_3c

    :sswitch_27
    const-string v0, "onDisconnect"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    const/4 p1, 0x2

    goto :goto_3c

    :sswitch_31
    const-string v0, "onSetInactive"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    const/4 p1, 0x1

    goto :goto_3c

    :goto_3b
    const/4 p1, -0x1

    :goto_3c
    packed-switch p1, :pswitch_data_7c

    goto :goto_65

    .line 189
    :pswitch_40
    invoke-interface {p2, p3}, Landroid/telecom/CallControlCallback;->onCallStreamingStarted(Ljava/util/function/Consumer;)V

    goto :goto_65

    .line 186
    :pswitch_44
    aget-object p1, p4, v1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {p2, p1, p3}, Landroid/telecom/CallControlCallback;->onAnswer(ILjava/util/function/Consumer;)V

    .line 187
    goto :goto_65

    .line 181
    :pswitch_50
    aget-object p1, p4, v1

    check-cast p1, Landroid/telecom/DisconnectCause;

    invoke-interface {p2, p1, p3}, Landroid/telecom/CallControlCallback;->onDisconnect(Landroid/telecom/DisconnectCause;Ljava/util/function/Consumer;)V

    .line 183
    iget-object p1, p0, Lcom/android/internal/telecom/ClientTransactionalServiceWrapper$1;->this$0:Lcom/android/internal/telecom/ClientTransactionalServiceWrapper;

    invoke-virtual {p1, p5}, Lcom/android/internal/telecom/ClientTransactionalServiceWrapper;->untrackCall(Ljava/lang/String;)V

    .line 184
    goto :goto_65

    .line 178
    :pswitch_5d
    invoke-interface {p2, p3}, Landroid/telecom/CallControlCallback;->onSetInactive(Ljava/util/function/Consumer;)V

    .line 179
    goto :goto_65

    .line 175
    :pswitch_61
    invoke-interface {p2, p3}, Landroid/telecom/CallControlCallback;->onSetActive(Ljava/util/function/Consumer;)V

    .line 176
    nop

    .line 192
    :goto_65
    return-void

    :sswitch_data_66
    .sparse-switch
        -0x6b667c72 -> :sswitch_31
        -0x19454825 -> :sswitch_27
        0x1a612e9 -> :sswitch_1d
        0x3abf167d -> :sswitch_13
        0x615ea1be -> :sswitch_9
    .end sparse-switch

    :pswitch_data_7c
    .packed-switch 0x0
        :pswitch_61
        :pswitch_5d
        :pswitch_50
        :pswitch_44
        :pswitch_40
    .end packed-switch
.end method

.method static synthetic blacklist lambda$handleEventCallback$1(Ljava/lang/String;Landroid/telecom/CallEventCallback;Ljava/lang/Object;)V
    .registers 4

    .line 282
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_70

    :cond_7
    goto :goto_3a

    :sswitch_8
    const-string v0, "onRequestEndpointChange"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    const/4 p0, 0x0

    goto :goto_3b

    :sswitch_12
    const-string v0, "onVideoStateChanged"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    const/4 p0, 0x3

    goto :goto_3b

    :sswitch_1c
    const-string v0, "onAvailableCallEndpointsChanged"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    const/4 p0, 0x1

    goto :goto_3b

    :sswitch_26
    const-string v0, "onCallStreamingFailed"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    const/4 p0, 0x4

    goto :goto_3b

    :sswitch_30
    const-string v0, "onMuteStateChanged"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    const/4 p0, 0x2

    goto :goto_3b

    :goto_3a
    const/4 p0, -0x1

    :goto_3b
    packed-switch p0, :pswitch_data_86

    goto :goto_6f

    .line 298
    :pswitch_3f
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-interface {p1, p0}, Landroid/telecom/CallEventCallback;->onCallStreamingFailed(I)V

    goto :goto_6f

    .line 293
    :pswitch_49
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/Flags;->transactionalVideoState()Z

    move-result p0

    if-eqz p0, :cond_6f

    .line 294
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-interface {p1, p0}, Landroid/telecom/CallEventCallback;->onVideoStateChanged(I)V

    goto :goto_6f

    .line 290
    :pswitch_59
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-interface {p1, p0}, Landroid/telecom/CallEventCallback;->onMuteStateChanged(Z)V

    .line 291
    goto :goto_6f

    .line 287
    :pswitch_63
    check-cast p2, Ljava/util/List;

    invoke-interface {p1, p2}, Landroid/telecom/CallEventCallback;->onAvailableCallEndpointsChanged(Ljava/util/List;)V

    .line 288
    goto :goto_6f

    .line 284
    :pswitch_69
    check-cast p2, Landroid/telecom/CallEndpoint;

    invoke-interface {p1, p2}, Landroid/telecom/CallEventCallback;->onCallEndpointChanged(Landroid/telecom/CallEndpoint;)V

    .line 285
    nop

    .line 301
    :cond_6f
    :goto_6f
    return-void

    :sswitch_data_70
    .sparse-switch
        -0x7f3ee265 -> :sswitch_30
        -0x21a2eb5e -> :sswitch_26
        -0x62d5f62 -> :sswitch_1c
        0x22a474df -> :sswitch_12
        0x34696575 -> :sswitch_8
    .end sparse-switch

    :pswitch_data_86
    .packed-switch 0x0
        :pswitch_69
        :pswitch_63
        :pswitch_59
        :pswitch_49
        :pswitch_3f
    .end packed-switch
.end method

.method static synthetic blacklist lambda$onEvent$2(Landroid/telecom/CallEventCallback;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 3

    .line 334
    invoke-interface {p0, p1, p2}, Landroid/telecom/CallEventCallback;->onEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 335
    return-void
.end method


# virtual methods
.method public blacklist handleEventCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 8

    .line 273
    invoke-static {}, Lcom/android/internal/telecom/ClientTransactionalServiceWrapper;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "hEC: [%s], callId=[%s]"

    filled-new-array {p2, p1}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    iget-object v0, p0, Lcom/android/internal/telecom/ClientTransactionalServiceWrapper$1;->this$0:Lcom/android/internal/telecom/ClientTransactionalServiceWrapper;

    invoke-static {v0}, Lcom/android/internal/telecom/ClientTransactionalServiceWrapper;->-$$Nest$fgetmCallIdToTransactionalCall(Lcom/android/internal/telecom/ClientTransactionalServiceWrapper;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/telecom/TransactionalCall;

    .line 276
    if-eqz p1, :cond_3c

    .line 277
    invoke-virtual {p1}, Lcom/android/internal/telecom/TransactionalCall;->getCallStateCallback()Landroid/telecom/CallEventCallback;

    move-result-object v0

    .line 278
    invoke-virtual {p1}, Lcom/android/internal/telecom/TransactionalCall;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    .line 279
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 281
    :try_start_2b
    new-instance v3, Lcom/android/internal/telecom/ClientTransactionalServiceWrapper$1$$ExternalSyntheticLambda1;

    invoke-direct {v3, p2, v0, p3}, Lcom/android/internal/telecom/ClientTransactionalServiceWrapper$1$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;Landroid/telecom/CallEventCallback;Ljava/lang/Object;)V

    invoke-interface {p1, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_33
    .catchall {:try_start_2b .. :try_end_33} :catchall_37

    .line 303
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 304
    goto :goto_3c

    .line 303
    :catchall_37
    move-exception p1

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 304
    throw p1

    .line 306
    :cond_3c
    :goto_3c
    return-void
.end method

.method public blacklist onAddCallControl(Ljava/lang/String;ILcom/android/internal/telecom/ICallControl;Landroid/telecom/CallException;)V
    .registers 8

    .line 204
    invoke-static {}, Lcom/android/internal/telecom/ClientTransactionalServiceWrapper;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {p1, v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "oACC: id=[%s], code=[%d]"

    invoke-static {v2, v1}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    iget-object v0, p0, Lcom/android/internal/telecom/ClientTransactionalServiceWrapper$1;->this$0:Lcom/android/internal/telecom/ClientTransactionalServiceWrapper;

    invoke-static {v0}, Lcom/android/internal/telecom/ClientTransactionalServiceWrapper;->-$$Nest$fgetmCallIdToTransactionalCall(Lcom/android/internal/telecom/ClientTransactionalServiceWrapper;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telecom/TransactionalCall;

    .line 207
    if-eqz v0, :cond_43

    .line 208
    nop

    .line 209
    invoke-virtual {v0}, Lcom/android/internal/telecom/TransactionalCall;->getPendingControl()Landroid/os/OutcomeReceiver;

    move-result-object v1

    .line 211
    if-nez p2, :cond_36

    .line 214
    new-instance p2, Landroid/telecom/CallControl;

    invoke-direct {p2, p1, p3}, Landroid/telecom/CallControl;-><init>(Ljava/lang/String;Lcom/android/internal/telecom/ICallControl;)V

    .line 216
    invoke-interface {v1, p2}, Landroid/os/OutcomeReceiver;->onResult(Ljava/lang/Object;)V

    .line 219
    invoke-virtual {v0, p2}, Lcom/android/internal/telecom/TransactionalCall;->setCallControl(Landroid/telecom/CallControl;)V

    .line 220
    goto :goto_42

    .line 221
    :cond_36
    invoke-interface {v1, p4}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    .line 222
    iget-object p2, p0, Lcom/android/internal/telecom/ClientTransactionalServiceWrapper$1;->this$0:Lcom/android/internal/telecom/ClientTransactionalServiceWrapper;

    invoke-static {p2}, Lcom/android/internal/telecom/ClientTransactionalServiceWrapper;->-$$Nest$fgetmCallIdToTransactionalCall(Lcom/android/internal/telecom/ClientTransactionalServiceWrapper;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    :goto_42
    goto :goto_62

    .line 226
    :cond_43
    iget-object p2, p0, Lcom/android/internal/telecom/ClientTransactionalServiceWrapper$1;->this$0:Lcom/android/internal/telecom/ClientTransactionalServiceWrapper;

    invoke-virtual {p2, p1}, Lcom/android/internal/telecom/ClientTransactionalServiceWrapper;->untrackCall(Ljava/lang/String;)V

    .line 227
    invoke-static {}, Lcom/android/internal/telecom/ClientTransactionalServiceWrapper;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "oACC: TransactionalCall object not found for call w/ id="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    :goto_62
    return-void
.end method

.method public blacklist onAnswer(Ljava/lang/String;ILandroid/os/ResultReceiver;)V
    .registers 5

    .line 243
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const-string v0, "onAnswer"

    invoke-direct {p0, v0, p1, p3, p2}, Lcom/android/internal/telecom/ClientTransactionalServiceWrapper$1;->handleCallEventCallback(Ljava/lang/String;Ljava/lang/String;Landroid/os/ResultReceiver;[Ljava/lang/Object;)V

    .line 244
    return-void
.end method

.method public blacklist onAvailableCallEndpointsChanged(Ljava/lang/String;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/telecom/CallEndpoint;",
            ">;)V"
        }
    .end annotation

    .line 259
    const-string v0, "onAvailableCallEndpointsChanged"

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/internal/telecom/ClientTransactionalServiceWrapper$1;->handleEventCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 260
    return-void
.end method

.method public blacklist onCallEndpointChanged(Ljava/lang/String;Landroid/telecom/CallEndpoint;)V
    .registers 4

    .line 254
    const-string v0, "onRequestEndpointChange"

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/internal/telecom/ClientTransactionalServiceWrapper$1;->handleEventCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 255
    return-void
.end method

.method public blacklist onCallStreamingFailed(Ljava/lang/String;I)V
    .registers 6

    .line 320
    invoke-static {}, Lcom/android/internal/telecom/ClientTransactionalServiceWrapper;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {p1, v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "oCSF: id=[%s], reason=[%s]"

    invoke-static {v2, v1}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    const-string v0, "onCallStreamingFailed"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/internal/telecom/ClientTransactionalServiceWrapper$1;->handleEventCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 322
    return-void
.end method

.method public blacklist onCallStreamingStarted(Ljava/lang/String;Landroid/os/ResultReceiver;)V
    .registers 5

    .line 315
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "onStreamingStarted"

    invoke-direct {p0, v1, p1, p2, v0}, Lcom/android/internal/telecom/ClientTransactionalServiceWrapper$1;->handleCallEventCallback(Ljava/lang/String;Ljava/lang/String;Landroid/os/ResultReceiver;[Ljava/lang/Object;)V

    .line 316
    return-void
.end method

.method public blacklist onDisconnect(Ljava/lang/String;Landroid/telecom/DisconnectCause;Landroid/os/ResultReceiver;)V
    .registers 5

    .line 249
    const-string v0, "onDisconnect"

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, v0, p1, p3, p2}, Lcom/android/internal/telecom/ClientTransactionalServiceWrapper$1;->handleCallEventCallback(Ljava/lang/String;Ljava/lang/String;Landroid/os/ResultReceiver;[Ljava/lang/Object;)V

    .line 250
    return-void
.end method

.method public blacklist onEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 8

    .line 327
    iget-object v0, p0, Lcom/android/internal/telecom/ClientTransactionalServiceWrapper$1;->this$0:Lcom/android/internal/telecom/ClientTransactionalServiceWrapper;

    invoke-static {v0}, Lcom/android/internal/telecom/ClientTransactionalServiceWrapper;->-$$Nest$fgetmCallIdToTransactionalCall(Lcom/android/internal/telecom/ClientTransactionalServiceWrapper;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/telecom/TransactionalCall;

    .line 328
    if-eqz p1, :cond_2b

    .line 329
    invoke-virtual {p1}, Lcom/android/internal/telecom/TransactionalCall;->getCallStateCallback()Landroid/telecom/CallEventCallback;

    move-result-object v0

    .line 330
    invoke-virtual {p1}, Lcom/android/internal/telecom/TransactionalCall;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    .line 331
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 333
    :try_start_1a
    new-instance v3, Lcom/android/internal/telecom/ClientTransactionalServiceWrapper$1$$ExternalSyntheticLambda2;

    invoke-direct {v3, v0, p2, p3}, Lcom/android/internal/telecom/ClientTransactionalServiceWrapper$1$$ExternalSyntheticLambda2;-><init>(Landroid/telecom/CallEventCallback;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-interface {p1, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_22
    .catchall {:try_start_1a .. :try_end_22} :catchall_26

    .line 337
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 338
    goto :goto_2b

    .line 337
    :catchall_26
    move-exception p1

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 338
    throw p1

    .line 340
    :cond_2b
    :goto_2b
    return-void
.end method

.method public blacklist onMuteStateChanged(Ljava/lang/String;Z)V
    .registers 4

    .line 264
    const-string v0, "onMuteStateChanged"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/internal/telecom/ClientTransactionalServiceWrapper$1;->handleEventCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 265
    return-void
.end method

.method public blacklist onSetActive(Ljava/lang/String;Landroid/os/ResultReceiver;)V
    .registers 5

    .line 233
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "onSetActive"

    invoke-direct {p0, v1, p1, p2, v0}, Lcom/android/internal/telecom/ClientTransactionalServiceWrapper$1;->handleCallEventCallback(Ljava/lang/String;Ljava/lang/String;Landroid/os/ResultReceiver;[Ljava/lang/Object;)V

    .line 234
    return-void
.end method

.method public blacklist onSetInactive(Ljava/lang/String;Landroid/os/ResultReceiver;)V
    .registers 5

    .line 238
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "onSetInactive"

    invoke-direct {p0, v1, p1, p2, v0}, Lcom/android/internal/telecom/ClientTransactionalServiceWrapper$1;->handleCallEventCallback(Ljava/lang/String;Ljava/lang/String;Landroid/os/ResultReceiver;[Ljava/lang/Object;)V

    .line 239
    return-void
.end method

.method public blacklist onVideoStateChanged(Ljava/lang/String;I)V
    .registers 4

    .line 269
    const-string v0, "onVideoStateChanged"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/internal/telecom/ClientTransactionalServiceWrapper$1;->handleEventCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 270
    return-void
.end method

.method public blacklist removeCallFromTransactionalServiceWrapper(Ljava/lang/String;)V
    .registers 3

    .line 310
    iget-object v0, p0, Lcom/android/internal/telecom/ClientTransactionalServiceWrapper$1;->this$0:Lcom/android/internal/telecom/ClientTransactionalServiceWrapper;

    invoke-virtual {v0, p1}, Lcom/android/internal/telecom/ClientTransactionalServiceWrapper;->untrackCall(Ljava/lang/String;)V

    .line 311
    return-void
.end method
