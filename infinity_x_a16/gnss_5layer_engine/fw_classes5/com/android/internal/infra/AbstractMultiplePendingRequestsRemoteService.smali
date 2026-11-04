.class public abstract Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;
.super Lcom/android/internal/infra/AbstractRemoteService;
.source "AbstractMultiplePendingRequestsRemoteService.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService<",
        "TS;TI;>;I::",
        "Landroid/os/IInterface;",
        ">",
        "Lcom/android/internal/infra/AbstractRemoteService<",
        "TS;TI;>;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final blacklist PENDING_REQUEST_TIMEOUT_MS:J = 0x1388L


# instance fields
.field private final blacklist mInitialCapacity:I

.field protected final blacklist mPendingRequests:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest<",
            "TS;TI;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$pbz45n9udyFwPHC8VQZi28kRmxQ(Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->lambda$handlePendingRequestWhileUnBound$0(Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/ComponentName;ILcom/android/internal/infra/AbstractRemoteService$VultureCallback;Landroid/os/Handler;IZI)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Landroid/content/ComponentName;",
            "I",
            "Lcom/android/internal/infra/AbstractRemoteService$VultureCallback<",
            "TS;>;",
            "Landroid/os/Handler;",
            "IZI)V"
        }
    .end annotation

    .line 53
    invoke-direct/range {p0 .. p8}, Lcom/android/internal/infra/AbstractRemoteService;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/ComponentName;ILcom/android/internal/infra/AbstractRemoteService$VultureCallback;Landroid/os/Handler;IZ)V

    .line 55
    move-object p1, p0

    iput p9, p1, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->mInitialCapacity:I

    .line 56
    new-instance p2, Ljava/util/ArrayList;

    iget p3, p1, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->mInitialCapacity:I

    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p2, p1, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->mPendingRequests:Ljava/util/List;

    .line 57
    return-void
.end method

.method private synthetic blacklist lambda$handlePendingRequestWhileUnBound$0(Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;)V
    .registers 5

    .line 119
    iget-object v0, p0, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->mPendingRequests:Ljava/util/List;

    monitor-enter v0

    .line 120
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->mPendingRequests:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 121
    iget-boolean v1, p0, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->mVerbose:Z

    if-eqz v1, :cond_16

    .line 122
    iget-object v1, p0, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->mTag:Ljava/lang/String;

    const-string v2, "pendingRequest timeout, remove"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    :cond_16
    invoke-virtual {p1}, Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;->onFailed()V

    .line 125
    invoke-virtual {p1}, Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;->finish()Z

    .line 127
    :cond_1c
    monitor-exit v0

    .line 128
    return-void

    .line 127
    :catchall_1e
    move-exception p1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw p1
.end method


# virtual methods
.method public blacklist dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 5

    .line 99
    invoke-super {p0, p1, p2}, Lcom/android/internal/infra/AbstractRemoteService;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 101
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "initialCapacity="

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->mInitialCapacity:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    .line 102
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 104
    iget-object v0, p0, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->mPendingRequests:Ljava/util/List;

    monitor-enter v0

    .line 105
    :try_start_1d
    iget-object v1, p0, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->mPendingRequests:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 106
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_1d .. :try_end_24} :catchall_3a

    .line 107
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object p1

    const-string p2, "pendingRequests="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object p1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 108
    return-void

    .line 106
    :catchall_3a
    move-exception p1

    :try_start_3b
    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_3a

    throw p1
.end method

.method final blacklist handleBindFailure()V
    .registers 6

    .line 85
    iget-object v0, p0, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->mPendingRequests:Ljava/util/List;

    monitor-enter v0

    .line 86
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->mPendingRequests:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 87
    iget-boolean v2, p0, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->mVerbose:Z

    if-eqz v2, :cond_2b

    iget-object v2, p0, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->mTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sending failure to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " pending requests"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :cond_2b
    const/4 v2, 0x0

    :goto_2c
    if-ge v2, v1, :cond_3f

    .line 89
    iget-object v3, p0, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->mPendingRequests:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;

    .line 90
    invoke-virtual {v3}, Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;->onFailed()V

    .line 91
    invoke-virtual {v3}, Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;->finish()Z

    .line 88
    add-int/lit8 v2, v2, 0x1

    goto :goto_2c

    .line 93
    :cond_3f
    iget-object v1, p0, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->mPendingRequests:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 94
    monitor-exit v0

    .line 95
    return-void

    .line 94
    :catchall_46
    move-exception v1

    monitor-exit v0
    :try_end_48
    .catchall {:try_start_3 .. :try_end_48} :catchall_46

    throw v1
.end method

.method protected blacklist handleOnDestroy()V
    .registers 6

    .line 73
    iget-object v0, p0, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->mPendingRequests:Ljava/util/List;

    monitor-enter v0

    .line 74
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->mPendingRequests:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 75
    iget-boolean v2, p0, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->mVerbose:Z

    if-eqz v2, :cond_2b

    iget-object v2, p0, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->mTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Canceling "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " pending requests"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :cond_2b
    const/4 v2, 0x0

    :goto_2c
    if-ge v2, v1, :cond_3c

    .line 77
    iget-object v3, p0, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->mPendingRequests:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;

    invoke-virtual {v3}, Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;->cancel()Z

    .line 76
    add-int/lit8 v2, v2, 0x1

    goto :goto_2c

    .line 79
    :cond_3c
    iget-object v1, p0, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->mPendingRequests:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 80
    monitor-exit v0

    .line 81
    return-void

    .line 80
    :catchall_43
    move-exception v1

    monitor-exit v0
    :try_end_45
    .catchall {:try_start_3 .. :try_end_45} :catchall_43

    throw v1
.end method

.method blacklist handlePendingRequestWhileUnBound(Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest<",
            "TS;TI;>;)V"
        }
    .end annotation

    .line 112
    iget-object v0, p0, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->mPendingRequests:Ljava/util/List;

    monitor-enter v0

    .line 113
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->mPendingRequests:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    iget-boolean v1, p0, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->mVerbose:Z

    if-eqz v1, :cond_34

    .line 115
    iget-object v1, p0, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "queued "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->mPendingRequests:Ljava/util/List;

    .line 116
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " requests; last="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 115
    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    :cond_34
    new-instance v1, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;)V

    .line 129
    iget-object p1, p0, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 130
    monitor-exit v0

    .line 131
    return-void

    .line 130
    :catchall_42
    move-exception p1

    monitor-exit v0
    :try_end_44
    .catchall {:try_start_3 .. :try_end_44} :catchall_42

    throw p1
.end method

.method blacklist handlePendingRequests()V
    .registers 6

    .line 61
    iget-object v0, p0, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->mPendingRequests:Ljava/util/List;

    monitor-enter v0

    .line 62
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->mPendingRequests:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 63
    iget-boolean v2, p0, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->mVerbose:Z

    if-eqz v2, :cond_2b

    iget-object v2, p0, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->mTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sending "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " pending requests"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    :cond_2b
    const/4 v2, 0x0

    :goto_2c
    if-ge v2, v1, :cond_3c

    .line 65
    iget-object v3, p0, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->mPendingRequests:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;

    invoke-virtual {p0, v3}, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->handlePendingRequest(Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;)V

    .line 64
    add-int/lit8 v2, v2, 0x1

    goto :goto_2c

    .line 67
    :cond_3c
    iget-object v1, p0, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->mPendingRequests:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 68
    monitor-exit v0

    .line 69
    return-void

    .line 68
    :catchall_43
    move-exception v1

    monitor-exit v0
    :try_end_45
    .catchall {:try_start_3 .. :try_end_45} :catchall_43

    throw v1
.end method
