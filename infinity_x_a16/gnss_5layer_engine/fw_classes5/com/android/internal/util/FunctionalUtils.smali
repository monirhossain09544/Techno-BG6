.class public Lcom/android/internal/util/FunctionalUtils;
.super Ljava/lang/Object;
.source "FunctionalUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;,
        Lcom/android/internal/util/FunctionalUtils$ThrowingCheckedFunction;,
        Lcom/android/internal/util/FunctionalUtils$ThrowingChecked2Consumer;,
        Lcom/android/internal/util/FunctionalUtils$ThrowingCheckedConsumer;,
        Lcom/android/internal/util/FunctionalUtils$ThrowingCheckedSupplier;,
        Lcom/android/internal/util/FunctionalUtils$ThrowingBiConsumer;,
        Lcom/android/internal/util/FunctionalUtils$ThrowingBiFunction;,
        Lcom/android/internal/util/FunctionalUtils$ThrowingFunction;,
        Lcom/android/internal/util/FunctionalUtils$RemoteExceptionIgnoringConsumer;,
        Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;,
        Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;
    }
.end annotation


# direct methods
.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getLambdaName(Ljava/lang/Object;)Ljava/lang/String;
    .registers 7

    .line 317
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    .line 319
    const-string v0, "-$$"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 320
    const/4 v1, -0x1

    if-ne v0, v1, :cond_e

    return-object p0

    .line 323
    :cond_e
    add-int/lit8 v2, v0, 0x3

    const/16 v3, 0x24

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 324
    if-ne v2, v1, :cond_19

    return-object p0

    .line 326
    :cond_19
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 327
    const-string v4, "$Lambda"

    const/4 v5, 0x0

    if-ne v3, v1, :cond_3c

    .line 329
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 333
    :cond_3c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 334
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 333
    return-object p0
.end method

.method public static greylist-max-o handleExceptions(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;Ljava/util/function/Consumer;)Ljava/lang/Runnable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Throwable;",
            ">;)",
            "Ljava/lang/Runnable;"
        }
    .end annotation

    .line 83
    new-instance v0, Lcom/android/internal/util/FunctionalUtils$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/util/FunctionalUtils$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;Ljava/util/function/Consumer;)V

    return-object v0
.end method

.method public static greylist-max-o ignoreRemoteException(Lcom/android/internal/util/FunctionalUtils$RemoteExceptionIgnoringConsumer;)Ljava/util/function/Consumer;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/internal/util/FunctionalUtils$RemoteExceptionIgnoringConsumer<",
            "TT;>;)",
            "Ljava/util/function/Consumer<",
            "TT;>;"
        }
    .end annotation

    .line 75
    return-object p0
.end method

.method static synthetic blacklist lambda$handleExceptions$0(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;Ljava/util/function/Consumer;)V
    .registers 2

    .line 85
    :try_start_0
    invoke-interface {p0}, Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;->run()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_4

    .line 88
    goto :goto_8

    .line 86
    :catchall_4
    move-exception p0

    .line 87
    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 89
    :goto_8
    return-void
.end method

.method public static blacklist uncheckExceptions(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)Ljava/lang/Runnable;
    .registers 1

    .line 54
    return-object p0
.end method

.method public static blacklist uncheckExceptions(Lcom/android/internal/util/FunctionalUtils$ThrowingBiConsumer;)Ljava/util/function/BiConsumer;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/internal/util/FunctionalUtils$ThrowingBiConsumer<",
            "TA;TB;>;)",
            "Ljava/util/function/BiConsumer<",
            "TA;TB;>;"
        }
    .end annotation

    .line 61
    return-object p0
.end method

.method public static greylist-max-o uncheckExceptions(Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;)Ljava/util/function/Consumer;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer<",
            "TT;>;)",
            "Ljava/util/function/Consumer<",
            "TT;>;"
        }
    .end annotation

    .line 40
    return-object p0
.end method

.method public static blacklist uncheckExceptions(Lcom/android/internal/util/FunctionalUtils$ThrowingFunction;)Ljava/util/function/Function;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/internal/util/FunctionalUtils$ThrowingFunction<",
            "TI;TO;>;)",
            "Ljava/util/function/Function<",
            "TI;TO;>;"
        }
    .end annotation

    .line 47
    return-object p0
.end method

.method public static blacklist uncheckExceptions(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/util/function/Supplier;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier<",
            "TT;>;)",
            "Ljava/util/function/Supplier<",
            "TT;>;"
        }
    .end annotation

    .line 68
    return-object p0
.end method
