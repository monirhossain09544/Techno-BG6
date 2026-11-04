.class public Landroid/os/RegistrantList;
.super Ljava/lang/Object;
.source "RegistrantList.java"


# instance fields
.field greylist-max-o registrants:Ljava/util/ArrayList;


# direct methods
.method public constructor greylist <init>()V
    .registers 2

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/os/RegistrantList;->registrants:Ljava/util/ArrayList;

    .line 30
    return-void
.end method

.method private declared-synchronized greylist-max-o internalNotifyRegistrants(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 6

    monitor-enter p0

    .line 90
    :try_start_1
    iget-object v0, p0, Landroid/os/RegistrantList;->registrants:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_8
    if-ge v1, v0, :cond_18

    .line 91
    iget-object v2, p0, Landroid/os/RegistrantList;->registrants:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Registrant;

    .line 92
    invoke-virtual {v2, p1, p2}, Landroid/os/Registrant;->internalNotifyRegistrant(Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_1a

    .line 90
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 94
    :cond_18
    monitor-exit p0

    return-void

    .line 89
    :catchall_1a
    move-exception p1

    :try_start_1b
    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    throw p1
.end method


# virtual methods
.method public declared-synchronized greylist add(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 5

    monitor-enter p0

    .line 36
    :try_start_1
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 37
    monitor-exit p0

    return-void

    .line 35
    :catchall_b
    move-exception p1

    :try_start_c
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_b

    throw p1
.end method

.method public declared-synchronized greylist add(Landroid/os/Registrant;)V
    .registers 3

    monitor-enter p0

    .line 52
    :try_start_1
    invoke-virtual {p0}, Landroid/os/RegistrantList;->removeCleared()V

    .line 53
    iget-object v0, p0, Landroid/os/RegistrantList;->registrants:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 54
    monitor-exit p0

    return-void

    .line 51
    :catchall_b
    move-exception p1

    :try_start_c
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_b

    throw p1
.end method

.method public declared-synchronized greylist addUnique(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 5

    monitor-enter p0

    .line 44
    :try_start_1
    invoke-virtual {p0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 45
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    .line 46
    monitor-exit p0

    return-void

    .line 43
    :catchall_e
    move-exception p1

    :try_start_f
    monitor-exit p0
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_e

    throw p1
.end method

.method public declared-synchronized greylist-max-p get(I)Ljava/lang/Object;
    .registers 3

    monitor-enter p0

    .line 84
    :try_start_1
    iget-object v0, p0, Landroid/os/RegistrantList;->registrants:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-object p1

    .line 84
    :catchall_9
    move-exception p1

    :try_start_a
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_9

    throw p1
.end method

.method public greylist-max-o notifyException(Ljava/lang/Throwable;)V
    .registers 3

    .line 106
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Landroid/os/RegistrantList;->internalNotifyRegistrants(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 107
    return-void
.end method

.method public greylist notifyRegistrants()V
    .registers 2

    .line 100
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Landroid/os/RegistrantList;->internalNotifyRegistrants(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 101
    return-void
.end method

.method public greylist notifyRegistrants(Landroid/os/AsyncResult;)V
    .registers 3

    .line 121
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {p0, v0, p1}, Landroid/os/RegistrantList;->internalNotifyRegistrants(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 122
    return-void
.end method

.method public greylist notifyResult(Ljava/lang/Object;)V
    .registers 3

    .line 113
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/os/RegistrantList;->internalNotifyRegistrants(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 114
    return-void
.end method

.method public declared-synchronized greylist remove(Landroid/os/Handler;)V
    .registers 6

    monitor-enter p0

    .line 128
    :try_start_1
    iget-object v0, p0, Landroid/os/RegistrantList;->registrants:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_8
    if-ge v1, v0, :cond_20

    .line 129
    iget-object v2, p0, Landroid/os/RegistrantList;->registrants:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Registrant;

    .line 132
    invoke-virtual {v2}, Landroid/os/Registrant;->getHandler()Landroid/os/Handler;

    move-result-object v3

    .line 137
    if-eqz v3, :cond_1a

    if-ne v3, p1, :cond_1d

    .line 138
    :cond_1a
    invoke-virtual {v2}, Landroid/os/Registrant;->clear()V

    .line 128
    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 142
    :cond_20
    invoke-virtual {p0}, Landroid/os/RegistrantList;->removeCleared()V
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_25

    .line 143
    monitor-exit p0

    return-void

    .line 127
    :catchall_25
    move-exception p1

    :try_start_26
    monitor-exit p0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    throw p1
.end method

.method public declared-synchronized blacklist removeAll()V
    .registers 2

    monitor-enter p0

    .line 70
    :try_start_1
    iget-object v0, p0, Landroid/os/RegistrantList;->registrants:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 71
    monitor-exit p0

    return-void

    .line 69
    :catchall_8
    move-exception v0

    :try_start_9
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_9 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public declared-synchronized greylist removeCleared()V
    .registers 3

    monitor-enter p0

    .line 60
    :try_start_1
    iget-object v0, p0, Landroid/os/RegistrantList;->registrants:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_9
    if-ltz v0, :cond_1f

    .line 61
    iget-object v1, p0, Landroid/os/RegistrantList;->registrants:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Registrant;

    .line 63
    iget-object v1, v1, Landroid/os/Registrant;->refH:Ljava/lang/ref/WeakReference;

    if-nez v1, :cond_1c

    .line 64
    iget-object v1, p0, Landroid/os/RegistrantList;->registrants:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_21

    .line 60
    :cond_1c
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    .line 67
    :cond_1f
    monitor-exit p0

    return-void

    .line 59
    :catchall_21
    move-exception v0

    :try_start_22
    monitor-exit p0
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    throw v0
.end method

.method public declared-synchronized greylist size()I
    .registers 2

    monitor-enter p0

    .line 77
    :try_start_1
    iget-object v0, p0, Landroid/os/RegistrantList;->registrants:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return v0

    .line 77
    :catchall_9
    move-exception v0

    :try_start_a
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_9

    throw v0
.end method
