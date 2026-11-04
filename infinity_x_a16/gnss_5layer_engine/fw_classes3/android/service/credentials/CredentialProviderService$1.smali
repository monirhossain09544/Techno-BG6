.class Landroid/service/credentials/CredentialProviderService$1;
.super Landroid/service/credentials/ICredentialProviderService$Stub;
.source "CredentialProviderService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/credentials/CredentialProviderService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/service/credentials/CredentialProviderService;


# direct methods
.method constructor blacklist <init>(Landroid/service/credentials/CredentialProviderService;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 244
    iput-object p1, p0, Landroid/service/credentials/CredentialProviderService$1;->this$0:Landroid/service/credentials/CredentialProviderService;

    invoke-direct {p0}, Landroid/service/credentials/ICredentialProviderService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onBeginCreateCredential(Landroid/service/credentials/BeginCreateCredentialRequest;Landroid/service/credentials/IBeginCreateCredentialCallback;)V
    .registers 8

    .line 287
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    invoke-static {}, Landroid/os/CancellationSignal;->createTransport()Landroid/os/ICancellationSignal;

    move-result-object v0

    .line 292
    :try_start_a
    invoke-interface {p2, v0}, Landroid/service/credentials/IBeginCreateCredentialCallback;->onCancellable(Landroid/os/ICancellationSignal;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_d} :catch_e

    .line 295
    goto :goto_12

    .line 293
    :catch_e
    move-exception v1

    .line 294
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 297
    :goto_12
    iget-object v1, p0, Landroid/service/credentials/CredentialProviderService$1;->this$0:Landroid/service/credentials/CredentialProviderService;

    invoke-static {v1}, Landroid/service/credentials/CredentialProviderService;->-$$Nest$fgetmHandler(Landroid/service/credentials/CredentialProviderService;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Landroid/service/credentials/CredentialProviderService$1$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Landroid/service/credentials/CredentialProviderService$1$$ExternalSyntheticLambda2;-><init>()V

    iget-object v3, p0, Landroid/service/credentials/CredentialProviderService$1;->this$0:Landroid/service/credentials/CredentialProviderService;

    .line 300
    invoke-static {v0}, Landroid/os/CancellationSignal;->fromTransport(Landroid/os/ICancellationSignal;)Landroid/os/CancellationSignal;

    move-result-object v0

    new-instance v4, Landroid/service/credentials/CredentialProviderService$1$2;

    invoke-direct {v4, p0, p2}, Landroid/service/credentials/CredentialProviderService$1$2;-><init>(Landroid/service/credentials/CredentialProviderService$1;Landroid/service/credentials/IBeginCreateCredentialCallback;)V

    .line 297
    invoke-static {v2, v3, p1, v0, v4}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuadConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 321
    return-void
.end method

.method public blacklist onBeginGetCredential(Landroid/service/credentials/BeginGetCredentialRequest;Landroid/service/credentials/IBeginGetCredentialCallback;)V
    .registers 8

    .line 248
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    invoke-static {}, Landroid/os/CancellationSignal;->createTransport()Landroid/os/ICancellationSignal;

    move-result-object v0

    .line 253
    :try_start_a
    invoke-interface {p2, v0}, Landroid/service/credentials/IBeginGetCredentialCallback;->onCancellable(Landroid/os/ICancellationSignal;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_d} :catch_e

    .line 256
    goto :goto_12

    .line 254
    :catch_e
    move-exception v1

    .line 255
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 258
    :goto_12
    iget-object v1, p0, Landroid/service/credentials/CredentialProviderService$1;->this$0:Landroid/service/credentials/CredentialProviderService;

    invoke-static {v1}, Landroid/service/credentials/CredentialProviderService;->-$$Nest$fgetmHandler(Landroid/service/credentials/CredentialProviderService;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Landroid/service/credentials/CredentialProviderService$1$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Landroid/service/credentials/CredentialProviderService$1$$ExternalSyntheticLambda1;-><init>()V

    iget-object v3, p0, Landroid/service/credentials/CredentialProviderService$1;->this$0:Landroid/service/credentials/CredentialProviderService;

    .line 261
    invoke-static {v0}, Landroid/os/CancellationSignal;->fromTransport(Landroid/os/ICancellationSignal;)Landroid/os/CancellationSignal;

    move-result-object v0

    new-instance v4, Landroid/service/credentials/CredentialProviderService$1$1;

    invoke-direct {v4, p0, p2}, Landroid/service/credentials/CredentialProviderService$1$1;-><init>(Landroid/service/credentials/CredentialProviderService$1;Landroid/service/credentials/IBeginGetCredentialCallback;)V

    .line 258
    invoke-static {v2, v3, p1, v0, v4}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuadConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 282
    return-void
.end method

.method public blacklist onClearCredentialState(Landroid/service/credentials/ClearCredentialStateRequest;Landroid/service/credentials/IClearCredentialStateCallback;)V
    .registers 8

    .line 326
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    invoke-static {}, Landroid/os/CancellationSignal;->createTransport()Landroid/os/ICancellationSignal;

    move-result-object v0

    .line 331
    :try_start_a
    invoke-interface {p2, v0}, Landroid/service/credentials/IClearCredentialStateCallback;->onCancellable(Landroid/os/ICancellationSignal;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_d} :catch_e

    .line 334
    goto :goto_12

    .line 332
    :catch_e
    move-exception v1

    .line 333
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 336
    :goto_12
    iget-object v1, p0, Landroid/service/credentials/CredentialProviderService$1;->this$0:Landroid/service/credentials/CredentialProviderService;

    invoke-static {v1}, Landroid/service/credentials/CredentialProviderService;->-$$Nest$fgetmHandler(Landroid/service/credentials/CredentialProviderService;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Landroid/service/credentials/CredentialProviderService$1$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Landroid/service/credentials/CredentialProviderService$1$$ExternalSyntheticLambda0;-><init>()V

    iget-object v3, p0, Landroid/service/credentials/CredentialProviderService$1;->this$0:Landroid/service/credentials/CredentialProviderService;

    .line 339
    invoke-static {v0}, Landroid/os/CancellationSignal;->fromTransport(Landroid/os/ICancellationSignal;)Landroid/os/CancellationSignal;

    move-result-object v0

    new-instance v4, Landroid/service/credentials/CredentialProviderService$1$3;

    invoke-direct {v4, p0, p2}, Landroid/service/credentials/CredentialProviderService$1$3;-><init>(Landroid/service/credentials/CredentialProviderService$1;Landroid/service/credentials/IClearCredentialStateCallback;)V

    .line 336
    invoke-static {v2, v3, p1, v0, v4}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuadConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 359
    return-void
.end method
