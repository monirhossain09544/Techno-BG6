.class Lcom/android/internal/util/ObservableServiceConnection$1;
.super Lcom/android/internal/util/CallbackRegistry$NotifierCallback;
.source "ObservableServiceConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/util/ObservableServiceConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/util/CallbackRegistry$NotifierCallback<",
        "Lcom/android/internal/util/ObservableServiceConnection$Callback<",
        "TT;>;",
        "Lcom/android/internal/util/ObservableServiceConnection<",
        "TT;>;TT;>;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/util/ObservableServiceConnection;


# direct methods
.method public static synthetic blacklist $r8$lambda$VfJC7yxl7-QcEVYrfSZbu7mDjME(Lcom/android/internal/util/ObservableServiceConnection$1;Ljava/lang/Object;Lcom/android/internal/util/ObservableServiceConnection$Callback;Lcom/android/internal/util/ObservableServiceConnection;I)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/util/ObservableServiceConnection$1;->lambda$onNotifyCallback$0(Ljava/lang/Object;Lcom/android/internal/util/ObservableServiceConnection$Callback;Lcom/android/internal/util/ObservableServiceConnection;I)V

    return-void
.end method

.method constructor blacklist <init>(Lcom/android/internal/util/ObservableServiceConnection;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 130
    iput-object p1, p0, Lcom/android/internal/util/ObservableServiceConnection$1;->this$0:Lcom/android/internal/util/ObservableServiceConnection;

    invoke-direct {p0}, Lcom/android/internal/util/CallbackRegistry$NotifierCallback;-><init>()V

    return-void
.end method

.method private synthetic blacklist lambda$onNotifyCallback$0(Ljava/lang/Object;Lcom/android/internal/util/ObservableServiceConnection$Callback;Lcom/android/internal/util/ObservableServiceConnection;I)V
    .registers 6

    .line 136
    iget-object v0, p0, Lcom/android/internal/util/ObservableServiceConnection$1;->this$0:Lcom/android/internal/util/ObservableServiceConnection;

    invoke-static {v0}, Lcom/android/internal/util/ObservableServiceConnection;->-$$Nest$fgetmLock(Lcom/android/internal/util/ObservableServiceConnection;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 137
    if-eqz p1, :cond_d

    .line 138
    :try_start_9
    invoke-interface {p2, p3, p1}, Lcom/android/internal/util/ObservableServiceConnection$Callback;->onConnected(Lcom/android/internal/util/ObservableServiceConnection;Ljava/lang/Object;)V

    goto :goto_18

    .line 139
    :cond_d
    iget-object p1, p0, Lcom/android/internal/util/ObservableServiceConnection$1;->this$0:Lcom/android/internal/util/ObservableServiceConnection;

    invoke-static {p1}, Lcom/android/internal/util/ObservableServiceConnection;->-$$Nest$fgetmLastDisconnectReason(Lcom/android/internal/util/ObservableServiceConnection;)I

    move-result p1

    if-eqz p1, :cond_18

    .line 140
    invoke-interface {p2, p3, p4}, Lcom/android/internal/util/ObservableServiceConnection$Callback;->onDisconnected(Lcom/android/internal/util/ObservableServiceConnection;I)V

    .line 142
    :cond_18
    :goto_18
    monitor-exit v0

    .line 143
    return-void

    .line 142
    :catchall_1a
    move-exception p1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_9 .. :try_end_1c} :catchall_1a

    throw p1
.end method


# virtual methods
.method public blacklist onNotifyCallback(Lcom/android/internal/util/ObservableServiceConnection$Callback;Lcom/android/internal/util/ObservableServiceConnection;ILjava/lang/Object;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/ObservableServiceConnection$Callback<",
            "TT;>;",
            "Lcom/android/internal/util/ObservableServiceConnection<",
            "TT;>;ITT;)V"
        }
    .end annotation

    .line 135
    iget-object v0, p0, Lcom/android/internal/util/ObservableServiceConnection$1;->this$0:Lcom/android/internal/util/ObservableServiceConnection;

    invoke-static {v0}, Lcom/android/internal/util/ObservableServiceConnection;->-$$Nest$fgetmExecutor(Lcom/android/internal/util/ObservableServiceConnection;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/android/internal/util/ObservableServiceConnection$1$$ExternalSyntheticLambda0;

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move-object v3, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/util/ObservableServiceConnection$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/util/ObservableServiceConnection$1;Ljava/lang/Object;Lcom/android/internal/util/ObservableServiceConnection$Callback;Lcom/android/internal/util/ObservableServiceConnection;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 144
    return-void
.end method

.method public bridge synthetic blacklist onNotifyCallback(Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 130
    check-cast p1, Lcom/android/internal/util/ObservableServiceConnection$Callback;

    check-cast p2, Lcom/android/internal/util/ObservableServiceConnection;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/util/ObservableServiceConnection$1;->onNotifyCallback(Lcom/android/internal/util/ObservableServiceConnection$Callback;Lcom/android/internal/util/ObservableServiceConnection;ILjava/lang/Object;)V

    return-void
.end method
