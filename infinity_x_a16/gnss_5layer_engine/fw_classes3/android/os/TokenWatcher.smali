.class public abstract Landroid/os/TokenWatcher;
.super Ljava/lang/Object;
.source "TokenWatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/TokenWatcher$Death;
    }
.end annotation


# instance fields
.field private volatile greylist-max-o mAcquired:Z

.field private greylist-max-o mHandler:Landroid/os/Handler;

.field private greylist-max-o mNotificationQueue:I

.field private greylist-max-o mNotificationTask:Ljava/lang/Runnable;

.field private greylist-max-o mTag:Ljava/lang/String;

.field private greylist-max-o mTokens:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/os/IBinder;",
            "Landroid/os/TokenWatcher$Death;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmNotificationQueue(Landroid/os/TokenWatcher;)I
    .registers 1

    iget p0, p0, Landroid/os/TokenWatcher;->mNotificationQueue:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTag(Landroid/os/TokenWatcher;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/os/TokenWatcher;->mTag:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTokens(Landroid/os/TokenWatcher;)Ljava/util/WeakHashMap;
    .registers 1

    iget-object p0, p0, Landroid/os/TokenWatcher;->mTokens:Ljava/util/WeakHashMap;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmNotificationQueue(Landroid/os/TokenWatcher;I)V
    .registers 2

    iput p1, p0, Landroid/os/TokenWatcher;->mNotificationQueue:I

    return-void
.end method

.method public constructor whitelist <init>(Landroid/os/Handler;Ljava/lang/String;)V
    .registers 4

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    new-instance v0, Landroid/os/TokenWatcher$1;

    invoke-direct {v0, p0}, Landroid/os/TokenWatcher$1;-><init>(Landroid/os/TokenWatcher;)V

    iput-object v0, p0, Landroid/os/TokenWatcher;->mNotificationTask:Ljava/lang/Runnable;

    .line 224
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Landroid/os/TokenWatcher;->mTokens:Ljava/util/WeakHashMap;

    .line 227
    const/4 v0, -0x1

    iput v0, p0, Landroid/os/TokenWatcher;->mNotificationQueue:I

    .line 228
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/os/TokenWatcher;->mAcquired:Z

    .line 50
    iput-object p1, p0, Landroid/os/TokenWatcher;->mHandler:Landroid/os/Handler;

    .line 51
    if-eqz p2, :cond_1c

    goto :goto_1e

    :cond_1c
    const-string p2, "TokenWatcher"

    :goto_1e
    iput-object p2, p0, Landroid/os/TokenWatcher;->mTag:Ljava/lang/String;

    .line 52
    return-void
.end method

.method private greylist-max-o dumpInternal()Ljava/util/ArrayList;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 148
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 149
    iget-object v1, p0, Landroid/os/TokenWatcher;->mTokens:Ljava/util/WeakHashMap;

    monitor-enter v1

    .line 150
    :try_start_8
    iget-object v2, p0, Landroid/os/TokenWatcher;->mTokens:Ljava/util/WeakHashMap;

    invoke-virtual {v2}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 151
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Token count: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/os/TokenWatcher;->mTokens:Ljava/util/WeakHashMap;

    invoke-virtual {v4}, Ljava/util/WeakHashMap;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 152
    nop

    .line 153
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :goto_30
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_73

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/IBinder;

    .line 154
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/os/TokenWatcher;->mTokens:Ljava/util/WeakHashMap;

    invoke-virtual {v6, v4}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/TokenWatcher$Death;

    iget-object v6, v6, Landroid/os/TokenWatcher$Death;->tag:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    add-int/lit8 v3, v3, 0x1

    .line 156
    goto :goto_30

    .line 157
    :cond_73
    monitor-exit v1

    .line 158
    return-object v0

    .line 157
    :catchall_75
    move-exception v0

    monitor-exit v1
    :try_end_77
    .catchall {:try_start_8 .. :try_end_77} :catchall_75

    throw v0
.end method

.method private greylist-max-o sendNotificationLocked(Z)V
    .registers 4

    .line 180
    nop

    .line 181
    iget v0, p0, Landroid/os/TokenWatcher;->mNotificationQueue:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_10

    .line 183
    iput p1, p0, Landroid/os/TokenWatcher;->mNotificationQueue:I

    .line 184
    iget-object p1, p0, Landroid/os/TokenWatcher;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Landroid/os/TokenWatcher;->mNotificationTask:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1d

    .line 186
    :cond_10
    iget v0, p0, Landroid/os/TokenWatcher;->mNotificationQueue:I

    if-eq v0, p1, :cond_1d

    .line 188
    iput v1, p0, Landroid/os/TokenWatcher;->mNotificationQueue:I

    .line 189
    iget-object p1, p0, Landroid/os/TokenWatcher;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Landroid/os/TokenWatcher;->mNotificationTask:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 192
    :cond_1d
    :goto_1d
    return-void
.end method


# virtual methods
.method public whitelist acquire(Landroid/os/IBinder;Ljava/lang/String;)V
    .registers 6

    .line 80
    iget-object v0, p0, Landroid/os/TokenWatcher;->mTokens:Ljava/util/WeakHashMap;

    monitor-enter v0

    .line 81
    :try_start_3
    iget-object v1, p0, Landroid/os/TokenWatcher;->mTokens:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 82
    monitor-exit v0

    return-void

    .line 87
    :cond_d
    iget-object v1, p0, Landroid/os/TokenWatcher;->mTokens:Ljava/util/WeakHashMap;

    invoke-virtual {v1}, Ljava/util/WeakHashMap;->size()I

    move-result v1

    .line 89
    new-instance v2, Landroid/os/TokenWatcher$Death;

    invoke-direct {v2, p0, p1, p2}, Landroid/os/TokenWatcher$Death;-><init>(Landroid/os/TokenWatcher;Landroid/os/IBinder;Ljava/lang/String;)V
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_33

    .line 91
    const/4 p2, 0x0

    :try_start_19
    invoke-interface {p1, v2, p2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_1c} :catch_30
    .catchall {:try_start_19 .. :try_end_1c} :catchall_33

    .line 94
    nop

    .line 95
    :try_start_1d
    iget-object p2, p0, Landroid/os/TokenWatcher;->mTokens:Ljava/util/WeakHashMap;

    invoke-virtual {p2, p1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    if-nez v1, :cond_2e

    iget-boolean p1, p0, Landroid/os/TokenWatcher;->mAcquired:Z

    if-nez p1, :cond_2e

    .line 98
    const/4 p1, 0x1

    invoke-direct {p0, p1}, Landroid/os/TokenWatcher;->sendNotificationLocked(Z)V

    .line 99
    iput-boolean p1, p0, Landroid/os/TokenWatcher;->mAcquired:Z

    .line 101
    :cond_2e
    monitor-exit v0

    .line 102
    return-void

    .line 92
    :catch_30
    move-exception p1

    .line 93
    monitor-exit v0

    return-void

    .line 101
    :catchall_33
    move-exception p1

    monitor-exit v0
    :try_end_35
    .catchall {:try_start_1d .. :try_end_35} :catchall_33

    throw p1
.end method

.method public abstract whitelist acquired()V
.end method

.method public whitelist cleanup(Landroid/os/IBinder;Z)V
    .registers 5

    .line 106
    iget-object v0, p0, Landroid/os/TokenWatcher;->mTokens:Ljava/util/WeakHashMap;

    monitor-enter v0

    .line 107
    :try_start_3
    iget-object v1, p0, Landroid/os/TokenWatcher;->mTokens:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/TokenWatcher$Death;

    .line 108
    const/4 v1, 0x0

    if-eqz p2, :cond_18

    if-eqz p1, :cond_18

    .line 109
    iget-object p2, p1, Landroid/os/TokenWatcher$Death;->token:Landroid/os/IBinder;

    invoke-interface {p2, p1, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 110
    const/4 p2, 0x0

    iput-object p2, p1, Landroid/os/TokenWatcher$Death;->token:Landroid/os/IBinder;

    .line 113
    :cond_18
    iget-object p1, p0, Landroid/os/TokenWatcher;->mTokens:Ljava/util/WeakHashMap;

    invoke-virtual {p1}, Ljava/util/WeakHashMap;->size()I

    move-result p1

    if-nez p1, :cond_29

    iget-boolean p1, p0, Landroid/os/TokenWatcher;->mAcquired:Z

    if-eqz p1, :cond_29

    .line 114
    invoke-direct {p0, v1}, Landroid/os/TokenWatcher;->sendNotificationLocked(Z)V

    .line 115
    iput-boolean v1, p0, Landroid/os/TokenWatcher;->mAcquired:Z

    .line 117
    :cond_29
    monitor-exit v0

    .line 118
    return-void

    .line 117
    :catchall_2b
    move-exception p1

    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_3 .. :try_end_2d} :catchall_2b

    throw p1
.end method

.method public whitelist dump()V
    .registers 4

    .line 134
    invoke-direct {p0}, Landroid/os/TokenWatcher;->dumpInternal()Ljava/util/ArrayList;

    move-result-object v0

    .line 135
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 136
    iget-object v2, p0, Landroid/os/TokenWatcher;->mTag:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    goto :goto_8

    .line 138
    :cond_1a
    return-void
.end method

.method public whitelist dump(Ljava/io/PrintWriter;)V
    .registers 4

    .line 141
    invoke-direct {p0}, Landroid/os/TokenWatcher;->dumpInternal()Ljava/util/ArrayList;

    move-result-object v0

    .line 142
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 143
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 144
    goto :goto_8

    .line 145
    :cond_18
    return-void
.end method

.method public whitelist isAcquired()Z
    .registers 3

    .line 127
    iget-object v0, p0, Landroid/os/TokenWatcher;->mTokens:Ljava/util/WeakHashMap;

    monitor-enter v0

    .line 128
    :try_start_3
    iget-boolean v1, p0, Landroid/os/TokenWatcher;->mAcquired:Z

    monitor-exit v0

    return v1

    .line 129
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public whitelist release(Landroid/os/IBinder;)V
    .registers 3

    .line 122
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/os/TokenWatcher;->cleanup(Landroid/os/IBinder;Z)V

    .line 123
    return-void
.end method

.method public abstract whitelist released()V
.end method
