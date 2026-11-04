.class public final synthetic Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;

.field public final synthetic blacklist f$1:Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;

    iput-object p2, p0, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService$$ExternalSyntheticLambda0;->f$1:Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;

    iget-object v1, p0, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService$$ExternalSyntheticLambda0;->f$1:Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;

    invoke-static {v0, v1}, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->$r8$lambda$pbz45n9udyFwPHC8VQZi28kRmxQ(Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;)V

    return-void
.end method
