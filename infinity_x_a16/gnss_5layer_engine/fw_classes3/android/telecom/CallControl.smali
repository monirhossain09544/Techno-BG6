.class public final Landroid/telecom/CallControl;
.super Ljava/lang/Object;
.source "CallControl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telecom/CallControl$CallControlResultReceiver;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private final blacklist mCallId:Ljava/lang/String;

.field private final blacklist mServerInterface:Lcom/android/internal/telecom/ICallControl;


# direct methods
.method static bridge synthetic blacklist -$$Nest$mgetTransactionException(Landroid/telecom/CallControl;Landroid/os/Bundle;)Landroid/telecom/CallException;
    .registers 2

    invoke-direct {p0, p1}, Landroid/telecom/CallControl;->getTransactionException(Landroid/os/Bundle;)Landroid/telecom/CallException;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Landroid/telecom/CallControl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 55
    const-class v0, Landroid/telecom/CallControl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/telecom/CallControl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Lcom/android/internal/telecom/ICallControl;)V
    .registers 3

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Landroid/telecom/CallControl;->mCallId:Ljava/lang/String;

    .line 62
    iput-object p2, p0, Landroid/telecom/CallControl;->mServerInterface:Lcom/android/internal/telecom/ICallControl;

    .line 63
    return-void
.end method

.method private blacklist getTransactionException(Landroid/os/Bundle;)Landroid/telecom/CallException;
    .registers 4

    .line 413
    nop

    .line 414
    if-eqz p1, :cond_14

    const-string v0, "TelecomTransactionalExceptionKey"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 415
    const-class v1, Landroid/telecom/CallException;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telecom/CallException;

    return-object p1

    .line 418
    :cond_14
    new-instance p1, Landroid/telecom/CallException;

    const/4 v0, 0x1

    const-string/jumbo v1, "unknown error"

    invoke-direct {p1, v1, v0}, Landroid/telecom/CallException;-><init>(Ljava/lang/String;I)V

    return-object p1
.end method

.method private blacklist validateDisconnectCause(Landroid/telecom/DisconnectCause;)V
    .registers 4

    .line 423
    invoke-virtual {p1}, Landroid/telecom/DisconnectCause;->getCode()I

    move-result v0

    .line 424
    const/4 v1, 0x2

    if-eq v0, v1, :cond_29

    const/4 v1, 0x3

    if-eq v0, v1, :cond_29

    const/4 v1, 0x5

    if-eq v0, v1, :cond_29

    const/4 v1, 0x6

    if-ne v0, v1, :cond_11

    goto :goto_29

    .line 426
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 430
    invoke-virtual {p1}, Landroid/telecom/DisconnectCause;->getCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 426
    const-string v1, "The DisconnectCause code provided, %d , is not a valid Disconnect code. Valid DisconnectCause codes are limited to [DisconnectCause.LOCAL, DisconnectCause.REMOTE, DisconnectCause.MISSED, or DisconnectCause.REJECTED]"

    invoke-static {v1, p1}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 432
    :cond_29
    :goto_29
    return-void
.end method

.method private blacklist validateVideoState(I)V
    .registers 4

    .line 436
    const/4 v0, 0x1

    if-eq p1, v0, :cond_1b

    const/4 v0, 0x2

    if-ne p1, v0, :cond_7

    goto :goto_1b

    .line 437
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 440
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 437
    const-string v1, "The VideoState argument passed in, %d , is not a valid VideoState. The VideoState choices are limited to CallAttributes.AUDIO_CALL orCallAttributes.VIDEO_CALL"

    invoke-static {v1, p1}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 442
    :cond_1b
    :goto_1b
    return-void
.end method


# virtual methods
.method public whitelist answer(ILjava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Ljava/lang/Void;",
            "Landroid/telecom/CallException;",
            ">;)V"
        }
    .end annotation

    .line 126
    invoke-direct {p0, p1}, Landroid/telecom/CallControl;->validateVideoState(I)V

    .line 127
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    :try_start_9
    iget-object v0, p0, Landroid/telecom/CallControl;->mServerInterface:Lcom/android/internal/telecom/ICallControl;

    iget-object v1, p0, Landroid/telecom/CallControl;->mCallId:Ljava/lang/String;

    new-instance v2, Landroid/telecom/CallControl$CallControlResultReceiver;

    const-string v3, "answer"

    invoke-direct {v2, p0, v3, p2, p3}, Landroid/telecom/CallControl$CallControlResultReceiver;-><init>(Landroid/telecom/CallControl;Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    invoke-interface {v0, p1, v1, v2}, Lcom/android/internal/telecom/ICallControl;->answer(ILjava/lang/String;Landroid/os/ResultReceiver;)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_17} :catch_19

    .line 135
    nop

    .line 136
    return-void

    .line 133
    :catch_19
    move-exception p1

    .line 134
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist disconnect(Landroid/telecom/DisconnectCause;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telecom/DisconnectCause;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Ljava/lang/Void;",
            "Landroid/telecom/CallException;",
            ">;)V"
        }
    .end annotation

    .line 198
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    invoke-direct {p0, p1}, Landroid/telecom/CallControl;->validateDisconnectCause(Landroid/telecom/DisconnectCause;)V

    .line 203
    :try_start_c
    iget-object v0, p0, Landroid/telecom/CallControl;->mServerInterface:Lcom/android/internal/telecom/ICallControl;

    iget-object v1, p0, Landroid/telecom/CallControl;->mCallId:Ljava/lang/String;

    new-instance v2, Landroid/telecom/CallControl$CallControlResultReceiver;

    const-string v3, "disconnect"

    invoke-direct {v2, p0, v3, p2, p3}, Landroid/telecom/CallControl$CallControlResultReceiver;-><init>(Landroid/telecom/CallControl;Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    invoke-interface {v0, v1, p1, v2}, Lcom/android/internal/telecom/ICallControl;->disconnect(Ljava/lang/String;Landroid/telecom/DisconnectCause;Landroid/os/ResultReceiver;)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_1a} :catch_1c

    .line 207
    nop

    .line 208
    return-void

    .line 205
    :catch_1c
    move-exception p1

    .line 206
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist getCallId()Landroid/os/ParcelUuid;
    .registers 2

    .line 71
    iget-object v0, p0, Landroid/telecom/CallControl;->mCallId:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    return-object v0
.end method

.method public whitelist requestCallEndpointChange(Landroid/telecom/CallEndpoint;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telecom/CallEndpoint;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Ljava/lang/Void;",
            "Landroid/telecom/CallException;",
            ">;)V"
        }
    .end annotation

    .line 261
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    :try_start_9
    iget-object v0, p0, Landroid/telecom/CallControl;->mServerInterface:Lcom/android/internal/telecom/ICallControl;

    new-instance v1, Landroid/telecom/CallControl$CallControlResultReceiver;

    const-string/jumbo v2, "requestCallEndpointChange"

    invoke-direct {v1, p0, v2, p2, p3}, Landroid/telecom/CallControl$CallControlResultReceiver;-><init>(Landroid/telecom/CallControl;Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telecom/ICallControl;->requestCallEndpointChange(Landroid/telecom/CallEndpoint;Landroid/os/ResultReceiver;)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_16} :catch_18

    .line 269
    nop

    .line 270
    return-void

    .line 267
    :catch_18
    move-exception p1

    .line 268
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist requestMuteState(ZLjava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Ljava/lang/Void;",
            "Landroid/telecom/CallException;",
            ">;)V"
        }
    .end annotation

    .line 294
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    :try_start_6
    iget-object v0, p0, Landroid/telecom/CallControl;->mServerInterface:Lcom/android/internal/telecom/ICallControl;

    new-instance v1, Landroid/telecom/CallControl$CallControlResultReceiver;

    const-string/jumbo v2, "requestMuteState"

    invoke-direct {v1, p0, v2, p2, p3}, Landroid/telecom/CallControl$CallControlResultReceiver;-><init>(Landroid/telecom/CallControl;Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telecom/ICallControl;->setMuteState(ZLandroid/os/ResultReceiver;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_13} :catch_15

    .line 301
    nop

    .line 302
    return-void

    .line 299
    :catch_15
    move-exception p1

    .line 300
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist requestVideoState(ILjava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Ljava/lang/Void;",
            "Landroid/telecom/CallException;",
            ">;)V"
        }
    .end annotation

    .line 332
    invoke-direct {p0, p1}, Landroid/telecom/CallControl;->validateVideoState(I)V

    .line 333
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    :try_start_9
    iget-object v0, p0, Landroid/telecom/CallControl;->mServerInterface:Lcom/android/internal/telecom/ICallControl;

    iget-object v1, p0, Landroid/telecom/CallControl;->mCallId:Ljava/lang/String;

    new-instance v2, Landroid/telecom/CallControl$CallControlResultReceiver;

    const-string/jumbo v3, "requestVideoState"

    invoke-direct {v2, p0, v3, p2, p3}, Landroid/telecom/CallControl$CallControlResultReceiver;-><init>(Landroid/telecom/CallControl;Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    invoke-interface {v0, p1, v1, v2}, Lcom/android/internal/telecom/ICallControl;->requestVideoState(ILjava/lang/String;Landroid/os/ResultReceiver;)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_18} :catch_1a

    .line 340
    nop

    .line 341
    return-void

    .line 338
    :catch_1a
    move-exception p1

    .line 339
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 5

    .line 363
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    :try_start_6
    iget-object v0, p0, Landroid/telecom/CallControl;->mServerInterface:Lcom/android/internal/telecom/ICallControl;

    iget-object v1, p0, Landroid/telecom/CallControl;->mCallId:Ljava/lang/String;

    invoke-interface {v0, v1, p1, p2}, Lcom/android/internal/telecom/ICallControl;->sendEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_d} :catch_f

    .line 369
    nop

    .line 370
    return-void

    .line 367
    :catch_f
    move-exception p1

    .line 368
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist setActive(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Ljava/lang/Void;",
            "Landroid/telecom/CallException;",
            ">;)V"
        }
    .end annotation

    .line 94
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    :try_start_6
    iget-object v0, p0, Landroid/telecom/CallControl;->mServerInterface:Lcom/android/internal/telecom/ICallControl;

    iget-object v1, p0, Landroid/telecom/CallControl;->mCallId:Ljava/lang/String;

    new-instance v2, Landroid/telecom/CallControl$CallControlResultReceiver;

    const-string/jumbo v3, "setActive"

    invoke-direct {v2, p0, v3, p1, p2}, Landroid/telecom/CallControl$CallControlResultReceiver;-><init>(Landroid/telecom/CallControl;Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telecom/ICallControl;->setActive(Ljava/lang/String;Landroid/os/ResultReceiver;)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_15} :catch_17

    .line 102
    nop

    .line 103
    return-void

    .line 100
    :catch_17
    move-exception p1

    .line 101
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist setInactive(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Ljava/lang/Void;",
            "Landroid/telecom/CallException;",
            ">;)V"
        }
    .end annotation

    .line 156
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    :try_start_6
    iget-object v0, p0, Landroid/telecom/CallControl;->mServerInterface:Lcom/android/internal/telecom/ICallControl;

    iget-object v1, p0, Landroid/telecom/CallControl;->mCallId:Ljava/lang/String;

    new-instance v2, Landroid/telecom/CallControl$CallControlResultReceiver;

    const-string/jumbo v3, "setInactive"

    invoke-direct {v2, p0, v3, p1, p2}, Landroid/telecom/CallControl$CallControlResultReceiver;-><init>(Landroid/telecom/CallControl;Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telecom/ICallControl;->setInactive(Ljava/lang/String;Landroid/os/ResultReceiver;)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_15} :catch_17

    .line 164
    nop

    .line 165
    return-void

    .line 162
    :catch_17
    move-exception p1

    .line 163
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist startCallStreaming(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Ljava/lang/Void;",
            "Landroid/telecom/CallException;",
            ">;)V"
        }
    .end annotation

    .line 230
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    :try_start_6
    iget-object v0, p0, Landroid/telecom/CallControl;->mServerInterface:Lcom/android/internal/telecom/ICallControl;

    iget-object v1, p0, Landroid/telecom/CallControl;->mCallId:Ljava/lang/String;

    new-instance v2, Landroid/telecom/CallControl$CallControlResultReceiver;

    const-string/jumbo v3, "startCallStreaming"

    invoke-direct {v2, p0, v3, p1, p2}, Landroid/telecom/CallControl$CallControlResultReceiver;-><init>(Landroid/telecom/CallControl;Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telecom/ICallControl;->startCallStreaming(Ljava/lang/String;Landroid/os/ResultReceiver;)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_15} :catch_17

    .line 237
    nop

    .line 238
    return-void

    .line 235
    :catch_17
    move-exception p1

    .line 236
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method
