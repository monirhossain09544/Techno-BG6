.class public Landroid/os/SystemService;
.super Ljava/lang/Object;
.source "SystemService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/SystemService$State;
    }
.end annotation


# static fields
.field private static greylist-max-o sPropertyLock:Ljava/lang/Object;

.field private static greylist-max-o sStates:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/os/SystemService$State;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetsPropertyLock()Ljava/lang/Object;
    .registers 1

    sget-object v0, Landroid/os/SystemService;->sPropertyLock:Ljava/lang/Object;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsStates()Ljava/util/HashMap;
    .registers 1

    sget-object v0, Landroid/os/SystemService;->sStates:Ljava/util/HashMap;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 33
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Landroid/os/SystemService;->sStates:Ljava/util/HashMap;

    .line 49
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/os/SystemService;->sPropertyLock:Ljava/lang/Object;

    .line 52
    new-instance v0, Landroid/os/SystemService$1;

    invoke-direct {v0}, Landroid/os/SystemService$1;-><init>()V

    invoke-static {v0}, Landroid/os/SystemProperties;->addChangeCallback(Ljava/lang/Runnable;)V

    .line 60
    return-void
.end method

.method public constructor greylist-max-o <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist-max-o getState(Ljava/lang/String;)Landroid/os/SystemService$State;
    .registers 3

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "init.svc."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 84
    sget-object v0, Landroid/os/SystemService;->sStates:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/SystemService$State;

    .line 85
    if-eqz p0, :cond_22

    .line 86
    return-object p0

    .line 88
    :cond_22
    sget-object p0, Landroid/os/SystemService$State;->STOPPED:Landroid/os/SystemService$State;

    return-object p0
.end method

.method public static greylist-max-o isRunning(Ljava/lang/String;)Z
    .registers 2

    .line 103
    sget-object v0, Landroid/os/SystemService$State;->RUNNING:Landroid/os/SystemService$State;

    invoke-static {p0}, Landroid/os/SystemService;->getState(Ljava/lang/String;)Landroid/os/SystemService$State;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/SystemService$State;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static greylist-max-o isStopped(Ljava/lang/String;)Z
    .registers 2

    .line 96
    sget-object v0, Landroid/os/SystemService$State;->STOPPED:Landroid/os/SystemService$State;

    invoke-static {p0}, Landroid/os/SystemService;->getState(Ljava/lang/String;)Landroid/os/SystemService$State;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/SystemService$State;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static greylist-max-o restart(Ljava/lang/String;)V
    .registers 2

    .line 76
    const-string v0, "ctl.restart"

    invoke-static {v0, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    return-void
.end method

.method public static greylist start(Ljava/lang/String;)V
    .registers 2

    .line 65
    const-string v0, "ctl.start"

    invoke-static {v0, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    return-void
.end method

.method public static greylist-max-r stop(Ljava/lang/String;)V
    .registers 2

    .line 71
    const-string v0, "ctl.stop"

    invoke-static {v0, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method public static varargs blacklist waitForAnyStopped([Ljava/lang/String;)V
    .registers 6

    .line 137
    nop

    :goto_1
    sget-object v0, Landroid/os/SystemService;->sPropertyLock:Ljava/lang/Object;

    monitor-enter v0

    .line 138
    :try_start_4
    array-length v1, p0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_1b

    aget-object v3, p0, v2

    .line 139
    sget-object v4, Landroid/os/SystemService$State;->STOPPED:Landroid/os/SystemService$State;

    invoke-static {v3}, Landroid/os/SystemService;->getState(Ljava/lang/String;)Landroid/os/SystemService$State;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/os/SystemService$State;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 140
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_4 .. :try_end_17} :catchall_24

    return-void

    .line 138
    :cond_18
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 145
    :cond_1b
    :try_start_1b
    sget-object v1, Landroid/os/SystemService;->sPropertyLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_20
    .catch Ljava/lang/InterruptedException; {:try_start_1b .. :try_end_20} :catch_21
    .catchall {:try_start_1b .. :try_end_20} :catchall_24

    .line 147
    goto :goto_22

    .line 146
    :catch_21
    move-exception v1

    .line 148
    :goto_22
    :try_start_22
    monitor-exit v0

    goto :goto_1

    :catchall_24
    move-exception p0

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_22 .. :try_end_26} :catchall_24

    throw p0
.end method

.method public static greylist-max-o waitForState(Ljava/lang/String;Landroid/os/SystemService$State;J)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 111
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    add-long/2addr v0, p2

    .line 113
    :goto_5
    sget-object v2, Landroid/os/SystemService;->sPropertyLock:Ljava/lang/Object;

    monitor-enter v2

    .line 114
    :try_start_8
    invoke-static {p0}, Landroid/os/SystemService;->getState(Ljava/lang/String;)Landroid/os/SystemService$State;

    move-result-object v3

    .line 115
    invoke-virtual {p1, v3}, Landroid/os/SystemService$State;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 116
    monitor-exit v2

    return-void

    .line 119
    :cond_14
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4
    :try_end_18
    .catchall {:try_start_8 .. :try_end_18} :catchall_5c

    cmp-long v4, v4, v0

    if-gez v4, :cond_25

    .line 125
    :try_start_1c
    sget-object v3, Landroid/os/SystemService;->sPropertyLock:Ljava/lang/Object;

    invoke-virtual {v3, p2, p3}, Ljava/lang/Object;->wait(J)V
    :try_end_21
    .catch Ljava/lang/InterruptedException; {:try_start_1c .. :try_end_21} :catch_22
    .catchall {:try_start_1c .. :try_end_21} :catchall_5c

    .line 127
    goto :goto_23

    .line 126
    :catch_22
    move-exception v3

    .line 128
    :goto_23
    :try_start_23
    monitor-exit v2

    goto :goto_5

    .line 120
    :cond_25
    new-instance v0, Ljava/util/concurrent/TimeoutException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Service "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, " currently "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, "; waited "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p2, "ms for "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 128
    :catchall_5c
    move-exception p0

    monitor-exit v2
    :try_end_5e
    .catchall {:try_start_23 .. :try_end_5e} :catchall_5c

    throw p0
.end method
