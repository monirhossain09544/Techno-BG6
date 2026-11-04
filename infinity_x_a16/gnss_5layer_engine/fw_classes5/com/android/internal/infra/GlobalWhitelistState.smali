.class public Lcom/android/internal/infra/GlobalWhitelistState;
.super Ljava/lang/Object;
.source "GlobalWhitelistState.java"


# instance fields
.field protected final blacklist mGlobalWhitelistStateLock:Ljava/lang/Object;

.field protected blacklist mWhitelisterHelpers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/infra/WhitelistHelper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/infra/GlobalWhitelistState;->mGlobalWhitelistStateLock:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public blacklist dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 9

    .line 130
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "State: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lcom/android/internal/infra/GlobalWhitelistState;->mGlobalWhitelistStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 132
    :try_start_b
    iget-object v1, p0, Lcom/android/internal/infra/GlobalWhitelistState;->mWhitelisterHelpers:Landroid/util/SparseArray;

    if-nez v1, :cond_16

    .line 133
    const-string p1, "empty"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 134
    monitor-exit v0

    return-void

    .line 136
    :cond_16
    iget-object v1, p0, Lcom/android/internal/infra/GlobalWhitelistState;->mWhitelisterHelpers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v1, " services"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 137
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "  "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 138
    const/4 v1, 0x0

    :goto_38
    iget-object v2, p0, Lcom/android/internal/infra/GlobalWhitelistState;->mWhitelisterHelpers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_67

    .line 139
    iget-object v2, p0, Lcom/android/internal/infra/GlobalWhitelistState;->mWhitelisterHelpers:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 140
    iget-object v3, p0, Lcom/android/internal/infra/GlobalWhitelistState;->mWhitelisterHelpers:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/infra/WhitelistHelper;

    .line 141
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Whitelist for userId "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, p1, v2, p2}, Lcom/android/internal/infra/WhitelistHelper;->dump(Ljava/lang/String;Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 138
    add-int/lit8 v1, v1, 0x1

    goto :goto_38

    .line 143
    :cond_67
    monitor-exit v0

    .line 144
    return-void

    .line 143
    :catchall_69
    move-exception p1

    monitor-exit v0
    :try_end_6b
    .catchall {:try_start_b .. :try_end_6b} :catchall_69

    throw p1
.end method

.method public blacklist getWhitelistedComponents(ILjava/lang/String;)Landroid/util/ArraySet;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/ArraySet<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .line 94
    iget-object v0, p0, Lcom/android/internal/infra/GlobalWhitelistState;->mGlobalWhitelistStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 95
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/infra/GlobalWhitelistState;->mWhitelisterHelpers:Landroid/util/SparseArray;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    monitor-exit v0

    return-object v2

    .line 96
    :cond_a
    iget-object v1, p0, Lcom/android/internal/infra/GlobalWhitelistState;->mWhitelisterHelpers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/infra/WhitelistHelper;

    .line 97
    if-nez p1, :cond_15

    goto :goto_19

    :cond_15
    invoke-virtual {p1, p2}, Lcom/android/internal/infra/WhitelistHelper;->getWhitelistedComponents(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v2

    :goto_19
    monitor-exit v0

    return-object v2

    .line 98
    :catchall_1b
    move-exception p1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw p1
.end method

.method public blacklist getWhitelistedPackages(I)Landroid/util/ArraySet;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 106
    iget-object v0, p0, Lcom/android/internal/infra/GlobalWhitelistState;->mGlobalWhitelistStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 107
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/infra/GlobalWhitelistState;->mWhitelisterHelpers:Landroid/util/SparseArray;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    monitor-exit v0

    return-object v2

    .line 108
    :cond_a
    iget-object v1, p0, Lcom/android/internal/infra/GlobalWhitelistState;->mWhitelisterHelpers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/infra/WhitelistHelper;

    .line 109
    if-nez p1, :cond_15

    goto :goto_19

    :cond_15
    invoke-virtual {p1}, Lcom/android/internal/infra/WhitelistHelper;->getWhitelistedPackages()Landroid/util/ArraySet;

    move-result-object v2

    :goto_19
    monitor-exit v0

    return-object v2

    .line 110
    :catchall_1b
    move-exception p1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw p1
.end method

.method public blacklist isWhitelisted(ILandroid/content/ComponentName;)Z
    .registers 6

    .line 82
    iget-object v0, p0, Lcom/android/internal/infra/GlobalWhitelistState;->mGlobalWhitelistStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 83
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/infra/GlobalWhitelistState;->mWhitelisterHelpers:Landroid/util/SparseArray;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    monitor-exit v0

    return v2

    .line 84
    :cond_a
    iget-object v1, p0, Lcom/android/internal/infra/GlobalWhitelistState;->mWhitelisterHelpers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/infra/WhitelistHelper;

    .line 85
    if-nez p1, :cond_15

    goto :goto_19

    :cond_15
    invoke-virtual {p1, p2}, Lcom/android/internal/infra/WhitelistHelper;->isWhitelisted(Landroid/content/ComponentName;)Z

    move-result v2

    :goto_19
    monitor-exit v0

    return v2

    .line 86
    :catchall_1b
    move-exception p1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw p1
.end method

.method public blacklist isWhitelisted(ILjava/lang/String;)Z
    .registers 6

    .line 71
    iget-object v0, p0, Lcom/android/internal/infra/GlobalWhitelistState;->mGlobalWhitelistStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 72
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/infra/GlobalWhitelistState;->mWhitelisterHelpers:Landroid/util/SparseArray;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    monitor-exit v0

    return v2

    .line 73
    :cond_a
    iget-object v1, p0, Lcom/android/internal/infra/GlobalWhitelistState;->mWhitelisterHelpers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/infra/WhitelistHelper;

    .line 74
    if-nez p1, :cond_15

    goto :goto_19

    :cond_15
    invoke-virtual {p1, p2}, Lcom/android/internal/infra/WhitelistHelper;->isWhitelisted(Ljava/lang/String;)Z

    move-result v2

    :goto_19
    monitor-exit v0

    return v2

    .line 75
    :catchall_1b
    move-exception p1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw p1
.end method

.method public blacklist resetWhitelist(I)V
    .registers 4

    .line 117
    iget-object v0, p0, Lcom/android/internal/infra/GlobalWhitelistState;->mGlobalWhitelistStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 118
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/infra/GlobalWhitelistState;->mWhitelisterHelpers:Landroid/util/SparseArray;

    if-nez v1, :cond_9

    monitor-exit v0

    return-void

    .line 119
    :cond_9
    iget-object v1, p0, Lcom/android/internal/infra/GlobalWhitelistState;->mWhitelisterHelpers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 120
    iget-object p1, p0, Lcom/android/internal/infra/GlobalWhitelistState;->mWhitelisterHelpers:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-nez p1, :cond_19

    .line 121
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/internal/infra/GlobalWhitelistState;->mWhitelisterHelpers:Landroid/util/SparseArray;

    .line 123
    :cond_19
    monitor-exit v0

    .line 124
    return-void

    .line 123
    :catchall_1b
    move-exception p1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw p1
.end method

.method public blacklist setWhitelist(ILjava/util/List;Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Landroid/content/ComponentName;",
            ">;)V"
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lcom/android/internal/infra/GlobalWhitelistState;->mGlobalWhitelistStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 55
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/infra/GlobalWhitelistState;->mWhitelisterHelpers:Landroid/util/SparseArray;

    if-nez v1, :cond_f

    .line 56
    new-instance v1, Landroid/util/SparseArray;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v1, p0, Lcom/android/internal/infra/GlobalWhitelistState;->mWhitelisterHelpers:Landroid/util/SparseArray;

    .line 58
    :cond_f
    iget-object v1, p0, Lcom/android/internal/infra/GlobalWhitelistState;->mWhitelisterHelpers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/infra/WhitelistHelper;

    .line 59
    if-nez v1, :cond_23

    .line 60
    new-instance v1, Lcom/android/internal/infra/WhitelistHelper;

    invoke-direct {v1}, Lcom/android/internal/infra/WhitelistHelper;-><init>()V

    .line 61
    iget-object v2, p0, Lcom/android/internal/infra/GlobalWhitelistState;->mWhitelisterHelpers:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 63
    :cond_23
    invoke-virtual {v1, p2, p3}, Lcom/android/internal/infra/WhitelistHelper;->setWhitelist(Ljava/util/List;Ljava/util/List;)V

    .line 64
    monitor-exit v0

    .line 65
    return-void

    .line 64
    :catchall_28
    move-exception p1

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_28

    throw p1
.end method
