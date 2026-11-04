.class public final Lcom/android/internal/inputmethod/CompletableFutureUtil;
.super Ljava/lang/Object;
.source "CompletableFutureUtil.java"


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method

.method public static blacklist getBooleanResult(Ljava/util/concurrent/CompletableFuture;)Z
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .line 159
    invoke-static {p0}, Lcom/android/internal/inputmethod/CompletableFutureUtil;->getValueOrRethrowErrorInternal(Ljava/util/concurrent/CompletableFuture;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static blacklist getIntegerResult(Ljava/util/concurrent/CompletableFuture;)I
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 172
    invoke-static {p0}, Lcom/android/internal/inputmethod/CompletableFutureUtil;->getValueOrRethrowErrorInternal(Ljava/util/concurrent/CompletableFuture;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static blacklist getResult(Ljava/util/concurrent/CompletableFuture;)Ljava/lang/Object;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/CompletableFuture<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 146
    invoke-static {p0}, Lcom/android/internal/inputmethod/CompletableFutureUtil;->getValueOrRethrowErrorInternal(Ljava/util/concurrent/CompletableFuture;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist getResultOrFalse(Ljava/util/concurrent/CompletableFuture;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/inputmethod/CancellationGroup;J)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/android/internal/inputmethod/CancellationGroup;",
            "J)Z"
        }
    .end annotation

    .line 197
    move-wide v0, p4

    move-object p5, p3

    move-wide p3, v0

    invoke-static/range {p0 .. p5}, Lcom/android/internal/inputmethod/CompletableFutureUtil;->getValueOrNullInternal(Ljava/util/concurrent/CompletableFuture;Ljava/lang/String;Ljava/lang/String;JLcom/android/internal/inputmethod/CancellationGroup;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    .line 199
    if-eqz p0, :cond_10

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method

.method public static blacklist getResultOrNull(Ljava/util/concurrent/CompletableFuture;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/inputmethod/CancellationGroup;J)Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/CompletableFuture<",
            "TT;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/android/internal/inputmethod/CancellationGroup;",
            "J)TT;"
        }
    .end annotation

    .line 251
    move-wide v0, p4

    move-object p5, p3

    move-wide p3, v0

    invoke-static/range {p0 .. p5}, Lcom/android/internal/inputmethod/CompletableFutureUtil;->getValueOrNullInternal(Ljava/util/concurrent/CompletableFuture;Ljava/lang/String;Ljava/lang/String;JLcom/android/internal/inputmethod/CancellationGroup;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist getResultOrZero(Ljava/util/concurrent/CompletableFuture;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/inputmethod/CancellationGroup;J)I
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/android/internal/inputmethod/CancellationGroup;",
            "J)I"
        }
    .end annotation

    .line 223
    move-wide v0, p4

    move-object p5, p3

    move-wide p3, v0

    invoke-static/range {p0 .. p5}, Lcom/android/internal/inputmethod/CompletableFutureUtil;->getValueOrNullInternal(Ljava/util/concurrent/CompletableFuture;Ljava/lang/String;Ljava/lang/String;JLcom/android/internal/inputmethod/CancellationGroup;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    .line 225
    if-eqz p0, :cond_10

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method

.method private static blacklist getValueOrNullInternal(Ljava/util/concurrent/CompletableFuture;Ljava/lang/String;Ljava/lang/String;JLcom/android/internal/inputmethod/CancellationGroup;)Ljava/lang/Object;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/CompletableFuture<",
            "TT;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Lcom/android/internal/inputmethod/CancellationGroup;",
            ")TT;"
        }
    .end annotation

    .line 71
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p5, :cond_c

    .line 72
    invoke-virtual {p5, p0}, Lcom/android/internal/inputmethod/CancellationGroup;->tryRegisterFutureOrCancelImmediately(Ljava/util/concurrent/CompletableFuture;)Z

    move-result v2

    if-eqz v2, :cond_c

    move v2, v0

    goto :goto_d

    :cond_c
    move v2, v1

    .line 73
    :goto_d
    nop

    .line 77
    :goto_e
    const/4 v3, 0x0

    :try_start_f
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, p3, p4, v4}, Ljava/util/concurrent/CompletableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1
    :try_end_15
    .catch Ljava/util/concurrent/CompletionException; {:try_start_f .. :try_end_15} :catch_68
    .catch Ljava/util/concurrent/CancellationException; {:try_start_f .. :try_end_15} :catch_54
    .catch Ljava/lang/InterruptedException; {:try_start_f .. :try_end_15} :catch_50
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_f .. :try_end_15} :catch_3c
    .catchall {:try_start_f .. :try_end_15} :catchall_24

    .line 99
    if-eqz v2, :cond_1a

    .line 100
    invoke-virtual {p5, p0}, Lcom/android/internal/inputmethod/CancellationGroup;->unregisterFuture(Ljava/util/concurrent/CompletableFuture;)V

    .line 102
    :cond_1a
    if-eqz v1, :cond_23

    .line 103
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    .line 77
    :cond_23
    return-object p1

    .line 93
    :catchall_24
    move-exception p3

    .line 94
    :try_start_25
    invoke-virtual {p3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lcom/android/internal/inputmethod/CompletableFutureUtil;->logErrorInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2c
    .catchall {:try_start_25 .. :try_end_2c} :catchall_9b

    .line 95
    nop

    .line 99
    if-eqz v2, :cond_32

    .line 100
    invoke-virtual {p5, p0}, Lcom/android/internal/inputmethod/CancellationGroup;->unregisterFuture(Ljava/util/concurrent/CompletableFuture;)V

    .line 102
    :cond_32
    if-eqz v1, :cond_3b

    .line 103
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    .line 95
    :cond_3b
    return-object v3

    .line 90
    :catch_3c
    move-exception v0

    .line 91
    :try_start_3d
    invoke-static {p1, p2, p3, p4}, Lcom/android/internal/inputmethod/CompletableFutureUtil;->logTimeoutInternal(Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_40
    .catchall {:try_start_3d .. :try_end_40} :catchall_9b

    .line 92
    nop

    .line 99
    if-eqz v2, :cond_46

    .line 100
    invoke-virtual {p5, p0}, Lcom/android/internal/inputmethod/CancellationGroup;->unregisterFuture(Ljava/util/concurrent/CompletableFuture;)V

    .line 102
    :cond_46
    if-eqz v1, :cond_4f

    .line 103
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    .line 92
    :cond_4f
    return-object v3

    .line 88
    :catch_50
    move-exception v1

    .line 89
    nop

    .line 96
    move v1, v0

    goto :goto_e

    .line 85
    :catch_54
    move-exception p3

    .line 86
    :try_start_55
    invoke-static {p1, p2}, Lcom/android/internal/inputmethod/CompletableFutureUtil;->logCancellationInternal(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_58
    .catchall {:try_start_55 .. :try_end_58} :catchall_9b

    .line 87
    nop

    .line 99
    if-eqz v2, :cond_5e

    .line 100
    invoke-virtual {p5, p0}, Lcom/android/internal/inputmethod/CancellationGroup;->unregisterFuture(Ljava/util/concurrent/CompletableFuture;)V

    .line 102
    :cond_5e
    if-eqz v1, :cond_67

    .line 103
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    .line 87
    :cond_67
    return-object v3

    .line 78
    :catch_68
    move-exception p3

    .line 79
    :try_start_69
    invoke-virtual {p3}, Ljava/util/concurrent/CompletionException;->getCause()Ljava/lang/Throwable;

    move-result-object p4

    instance-of p4, p4, Ljava/util/concurrent/CancellationException;

    if-eqz p4, :cond_84

    .line 80
    invoke-static {p1, p2}, Lcom/android/internal/inputmethod/CompletableFutureUtil;->logCancellationInternal(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_74
    .catchall {:try_start_69 .. :try_end_74} :catchall_9b

    .line 81
    nop

    .line 99
    if-eqz v2, :cond_7a

    .line 100
    invoke-virtual {p5, p0}, Lcom/android/internal/inputmethod/CancellationGroup;->unregisterFuture(Ljava/util/concurrent/CompletableFuture;)V

    .line 102
    :cond_7a
    if-eqz v1, :cond_83

    .line 103
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    .line 81
    :cond_83
    return-object v3

    .line 83
    :cond_84
    :try_start_84
    invoke-virtual {p3}, Ljava/util/concurrent/CompletionException;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lcom/android/internal/inputmethod/CompletableFutureUtil;->logErrorInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8b
    .catchall {:try_start_84 .. :try_end_8b} :catchall_9b

    .line 84
    nop

    .line 99
    if-eqz v2, :cond_91

    .line 100
    invoke-virtual {p5, p0}, Lcom/android/internal/inputmethod/CancellationGroup;->unregisterFuture(Ljava/util/concurrent/CompletableFuture;)V

    .line 102
    :cond_91
    if-eqz v1, :cond_9a

    .line 103
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    .line 84
    :cond_9a
    return-object v3

    .line 99
    :catchall_9b
    move-exception p1

    if-eqz v2, :cond_a1

    .line 100
    invoke-virtual {p5, p0}, Lcom/android/internal/inputmethod/CancellationGroup;->unregisterFuture(Ljava/util/concurrent/CompletableFuture;)V

    .line 102
    :cond_a1
    if-eqz v1, :cond_aa

    .line 103
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    .line 105
    :cond_aa
    throw p1
.end method

.method private static blacklist getValueOrRethrowErrorInternal(Ljava/util/concurrent/CompletableFuture;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/CompletableFuture<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 45
    const/4 v0, 0x0

    .line 49
    :goto_1
    :try_start_1
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->get()Ljava/lang/Object;

    move-result-object p0
    :try_end_5
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_5} :catch_15
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_5} :catch_11
    .catchall {:try_start_1 .. :try_end_5} :catchall_f

    .line 58
    if-eqz v0, :cond_e

    .line 59
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 49
    :cond_e
    return-object p0

    .line 58
    :catchall_f
    move-exception p0

    goto :goto_28

    .line 53
    :catch_11
    move-exception v0

    .line 54
    nop

    .line 55
    const/4 v0, 0x1

    goto :goto_1

    .line 50
    :catch_15
    move-exception p0

    .line 51
    :try_start_16
    invoke-virtual {p0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    .line 52
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    invoke-direct {v1, v2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_28
    .catchall {:try_start_16 .. :try_end_28} :catchall_f

    .line 58
    :goto_28
    if-eqz v0, :cond_31

    .line 59
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 61
    :cond_31
    throw p0
.end method

.method private static blacklist logCancellationInternal(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 128
    if-eqz p0, :cond_1c

    if-nez p1, :cond_5

    goto :goto_1c

    .line 131
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " was cancelled."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    return-void

    .line 129
    :cond_1c
    :goto_1c
    return-void
.end method

.method private static blacklist logErrorInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 120
    if-eqz p0, :cond_20

    if-nez p1, :cond_5

    goto :goto_20

    .line 123
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " was failed with an exception="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    return-void

    .line 121
    :cond_20
    :goto_20
    return-void
.end method

.method private static blacklist logTimeoutInternal(Ljava/lang/String;Ljava/lang/String;J)V
    .registers 5

    .line 111
    if-eqz p0, :cond_26

    if-nez p1, :cond_5

    goto :goto_26

    .line 114
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " didn\'t respond in "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " msec."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    return-void

    .line 112
    :cond_26
    :goto_26
    return-void
.end method
