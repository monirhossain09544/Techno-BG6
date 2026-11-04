.class public interface abstract Lcom/android/internal/listeners/ListenerExecutor;
.super Ljava/lang/Object;
.source "ListenerExecutor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;,
        Lcom/android/internal/listeners/ListenerExecutor$FailureCallback;
    }
.end annotation


# direct methods
.method public static synthetic blacklist lambda$executeSafely$0(Ljava/lang/Object;Ljava/util/function/Supplier;Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;Lcom/android/internal/listeners/ListenerExecutor$FailureCallback;)V
    .registers 5

    .line 124
    nop

    .line 126
    const/4 v0, 0x0

    :try_start_2
    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_c

    .line 127
    invoke-interface {p2, p0}, Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;->operate(Ljava/lang/Object;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_b} :catch_15
    .catchall {:try_start_2 .. :try_end_b} :catchall_13

    .line 128
    const/4 v0, 0x1

    .line 140
    :cond_c
    :goto_c
    invoke-interface {p2, v0}, Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;->onPostExecute(Z)V

    .line 141
    invoke-interface {p2, v0}, Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;->onComplete(Z)V

    .line 142
    goto :goto_23

    .line 140
    :catchall_13
    move-exception p0

    goto :goto_27

    .line 130
    :catch_15
    move-exception p0

    .line 131
    :try_start_16
    instance-of p1, p0, Ljava/lang/RuntimeException;

    if-nez p1, :cond_24

    .line 134
    invoke-interface {p2, p0}, Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;->onFailure(Ljava/lang/Exception;)V

    .line 135
    if-eqz p3, :cond_c

    .line 136
    invoke-interface {p3, p2, p0}, Lcom/android/internal/listeners/ListenerExecutor$FailureCallback;->onFailure(Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;Ljava/lang/Exception;)V

    goto :goto_c

    .line 143
    :goto_23
    return-void

    .line 132
    :cond_24
    check-cast p0, Ljava/lang/RuntimeException;

    throw p0
    :try_end_27
    .catchall {:try_start_16 .. :try_end_27} :catchall_13

    .line 140
    :goto_27
    invoke-interface {p2, v0}, Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;->onPostExecute(Z)V

    .line 141
    invoke-interface {p2, v0}, Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;->onComplete(Z)V

    .line 142
    throw p0
.end method


# virtual methods
.method public blacklist executeSafely(Ljava/util/concurrent/Executor;Ljava/util/function/Supplier;Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T",
            "Listener:Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Supplier<",
            "TT",
            "Listener;",
            ">;",
            "Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation<",
            "TT",
            "Listener;",
            ">;)V"
        }
    .end annotation

    .line 94
    const/4 v0, 0x0

    invoke-interface {p0, p1, p2, p3, v0}, Lcom/android/internal/listeners/ListenerExecutor;->executeSafely(Ljava/util/concurrent/Executor;Ljava/util/function/Supplier;Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;Lcom/android/internal/listeners/ListenerExecutor$FailureCallback;)V

    .line 95
    return-void
.end method

.method public blacklist executeSafely(Ljava/util/concurrent/Executor;Ljava/util/function/Supplier;Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;Lcom/android/internal/listeners/ListenerExecutor$FailureCallback;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T",
            "Listener:Ljava/lang/Object;",
            "T",
            "ListenerOperation::Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation<",
            "TT",
            "Listener;",
            ">;>(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Supplier<",
            "TT",
            "Listener;",
            ">;TT",
            "ListenerOperation;",
            "Lcom/android/internal/listeners/ListenerExecutor$FailureCallback<",
            "TT",
            "ListenerOperation;",
            ">;)V"
        }
    .end annotation

    .line 109
    if-nez p3, :cond_3

    .line 110
    return-void

    .line 113
    :cond_3
    invoke-interface {p2}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    .line 114
    if-nez v0, :cond_a

    .line 115
    return-void

    .line 118
    :cond_a
    nop

    .line 119
    nop

    .line 121
    const/4 v1, 0x0

    :try_start_d
    invoke-interface {p3}, Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;->onPreExecute()V
    :try_end_10
    .catchall {:try_start_d .. :try_end_10} :catchall_1f

    .line 122
    nop

    .line 123
    const/4 v2, 0x1

    :try_start_12
    new-instance v3, Lcom/android/internal/listeners/ListenerExecutor$$ExternalSyntheticLambda0;

    invoke-direct {v3, v0, p2, p3, p4}, Lcom/android/internal/listeners/ListenerExecutor$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Ljava/util/function/Supplier;Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;Lcom/android/internal/listeners/ListenerExecutor$FailureCallback;)V

    invoke-interface {p1, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1a
    .catchall {:try_start_12 .. :try_end_1a} :catchall_1d

    .line 144
    nop

    .line 146
    nop

    .line 153
    return-void

    .line 146
    :catchall_1d
    move-exception p1

    goto :goto_21

    :catchall_1f
    move-exception p1

    move v2, v1

    .line 147
    :goto_21
    if-eqz v2, :cond_26

    .line 148
    invoke-interface {p3, v1}, Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;->onPostExecute(Z)V

    .line 150
    :cond_26
    invoke-interface {p3, v1}, Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;->onComplete(Z)V

    .line 152
    throw p1
.end method
