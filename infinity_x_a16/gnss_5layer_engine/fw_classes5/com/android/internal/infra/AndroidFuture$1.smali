.class Lcom/android/internal/infra/AndroidFuture$1;
.super Lcom/android/internal/infra/IAndroidFuture$Stub;
.source "AndroidFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/infra/AndroidFuture;->writeToParcel(Landroid/os/Parcel;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/infra/AndroidFuture;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/infra/AndroidFuture;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 528
    iput-object p1, p0, Lcom/android/internal/infra/AndroidFuture$1;->this$0:Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {p0}, Lcom/android/internal/infra/IAndroidFuture$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist complete(Lcom/android/internal/infra/AndroidFuture;)V
    .registers 5

    .line 533
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/infra/AndroidFuture$1;->this$0:Lcom/android/internal/infra/AndroidFuture;

    invoke-virtual {p1}, Lcom/android/internal/infra/AndroidFuture;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    move-result v0
    :try_end_a
    .catchall {:try_start_0 .. :try_end_a} :catchall_b

    .line 536
    goto :goto_18

    .line 534
    :catchall_b
    move-exception v0

    .line 535
    iget-object v1, p0, Lcom/android/internal/infra/AndroidFuture$1;->this$0:Lcom/android/internal/infra/AndroidFuture;

    iget-object v2, p0, Lcom/android/internal/infra/AndroidFuture$1;->this$0:Lcom/android/internal/infra/AndroidFuture;

    invoke-virtual {v2, v0}, Lcom/android/internal/infra/AndroidFuture;->unwrapExecutionException(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/internal/infra/AndroidFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    move-result v0

    .line 537
    :goto_18
    if-nez v0, :cond_40

    .line 538
    invoke-static {}, Lcom/android/internal/infra/AndroidFuture;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Remote result "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " ignored, as local future is already completed: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v1, p0, Lcom/android/internal/infra/AndroidFuture$1;->this$0:Lcom/android/internal/infra/AndroidFuture;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    :cond_40
    return-void
.end method
