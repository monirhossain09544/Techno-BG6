.class Lcom/android/internal/os/RuntimeInit$MethodAndArgsCaller;
.super Ljava/lang/Object;
.source "RuntimeInit.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/RuntimeInit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MethodAndArgsCaller"
.end annotation


# instance fields
.field private final blacklist mArgs:[Ljava/lang/String;

.field private final blacklist mMethod:Ljava/lang/reflect/Method;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/reflect/Method;[Ljava/lang/String;)V
    .registers 3

    .line 564
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 565
    iput-object p1, p0, Lcom/android/internal/os/RuntimeInit$MethodAndArgsCaller;->mMethod:Ljava/lang/reflect/Method;

    .line 566
    iput-object p2, p0, Lcom/android/internal/os/RuntimeInit$MethodAndArgsCaller;->mArgs:[Ljava/lang/String;

    .line 567
    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 4

    .line 571
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/os/RuntimeInit$MethodAndArgsCaller;->mMethod:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/android/internal/os/RuntimeInit$MethodAndArgsCaller;->mArgs:[Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_c} :catch_27
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_c} :catch_e

    .line 582
    nop

    .line 583
    return-void

    .line 574
    :catch_e
    move-exception v0

    .line 575
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    .line 576
    instance-of v2, v1, Ljava/lang/RuntimeException;

    if-nez v2, :cond_24

    .line 578
    instance-of v2, v1, Ljava/lang/Error;

    if-eqz v2, :cond_1e

    .line 579
    check-cast v1, Ljava/lang/Error;

    throw v1

    .line 581
    :cond_1e
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 577
    :cond_24
    check-cast v1, Ljava/lang/RuntimeException;

    throw v1

    .line 572
    :catch_27
    move-exception v0

    .line 573
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
