.class Lcom/android/internal/util/PersistentServiceConnection$1;
.super Ljava/lang/Object;
.source "PersistentServiceConnection.java"

# interfaces
.implements Lcom/android/internal/util/ObservableServiceConnection$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/util/PersistentServiceConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/internal/util/ObservableServiceConnection$Callback<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private blacklist mConnectedTime:J

.field final synthetic blacklist this$0:Lcom/android/internal/util/PersistentServiceConnection;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/util/PersistentServiceConnection;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 46
    iput-object p1, p0, Lcom/android/internal/util/PersistentServiceConnection$1;->this$0:Lcom/android/internal/util/PersistentServiceConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onConnected(Lcom/android/internal/util/ObservableServiceConnection;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/ObservableServiceConnection<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 51
    iget-object p1, p0, Lcom/android/internal/util/PersistentServiceConnection$1;->this$0:Lcom/android/internal/util/PersistentServiceConnection;

    invoke-static {p1}, Lcom/android/internal/util/PersistentServiceConnection;->-$$Nest$fgetmInjector(Lcom/android/internal/util/PersistentServiceConnection;)Lcom/android/internal/util/PersistentServiceConnection$Injector;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/util/PersistentServiceConnection$Injector;->uptimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/internal/util/PersistentServiceConnection$1;->mConnectedTime:J

    .line 52
    return-void
.end method

.method public blacklist onDisconnected(Lcom/android/internal/util/ObservableServiceConnection;I)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/ObservableServiceConnection<",
            "TT;>;I)V"
        }
    .end annotation

    .line 57
    const/4 p1, 0x4

    if-ne p2, p1, :cond_4

    return-void

    .line 58
    :cond_4
    iget-object p1, p0, Lcom/android/internal/util/PersistentServiceConnection$1;->this$0:Lcom/android/internal/util/PersistentServiceConnection;

    invoke-static {p1}, Lcom/android/internal/util/PersistentServiceConnection;->-$$Nest$fgetmLock(Lcom/android/internal/util/PersistentServiceConnection;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 59
    :try_start_b
    iget-object p2, p0, Lcom/android/internal/util/PersistentServiceConnection$1;->this$0:Lcom/android/internal/util/PersistentServiceConnection;

    invoke-static {p2}, Lcom/android/internal/util/PersistentServiceConnection;->-$$Nest$fgetmInjector(Lcom/android/internal/util/PersistentServiceConnection;)Lcom/android/internal/util/PersistentServiceConnection$Injector;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/internal/util/PersistentServiceConnection$Injector;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/internal/util/PersistentServiceConnection$1;->mConnectedTime:J

    sub-long/2addr v0, v2

    iget-object p2, p0, Lcom/android/internal/util/PersistentServiceConnection$1;->this$0:Lcom/android/internal/util/PersistentServiceConnection;

    invoke-static {p2}, Lcom/android/internal/util/PersistentServiceConnection;->-$$Nest$fgetmMinConnectionDurationMs(Lcom/android/internal/util/PersistentServiceConnection;)I

    move-result p2

    int-to-long v2, p2

    cmp-long p2, v0, v2

    if-lez p2, :cond_2f

    .line 60
    iget-object p2, p0, Lcom/android/internal/util/PersistentServiceConnection$1;->this$0:Lcom/android/internal/util/PersistentServiceConnection;

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/android/internal/util/PersistentServiceConnection;->-$$Nest$fputmReconnectAttempts(Lcom/android/internal/util/PersistentServiceConnection;I)V

    .line 61
    iget-object p2, p0, Lcom/android/internal/util/PersistentServiceConnection$1;->this$0:Lcom/android/internal/util/PersistentServiceConnection;

    invoke-static {p2}, Lcom/android/internal/util/PersistentServiceConnection;->-$$Nest$mbindInternalLocked(Lcom/android/internal/util/PersistentServiceConnection;)Z

    goto :goto_34

    .line 63
    :cond_2f
    iget-object p2, p0, Lcom/android/internal/util/PersistentServiceConnection$1;->this$0:Lcom/android/internal/util/PersistentServiceConnection;

    invoke-static {p2}, Lcom/android/internal/util/PersistentServiceConnection;->-$$Nest$mscheduleConnectionAttemptLocked(Lcom/android/internal/util/PersistentServiceConnection;)V

    .line 65
    :goto_34
    monitor-exit p1

    .line 66
    return-void

    .line 65
    :catchall_36
    move-exception p2

    monitor-exit p1
    :try_end_38
    .catchall {:try_start_b .. :try_end_38} :catchall_36

    throw p2
.end method
