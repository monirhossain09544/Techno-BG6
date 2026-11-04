.class Lcom/android/internal/os/BinderCallsStats$1;
.super Ljava/lang/Object;
.source "BinderCallsStats.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BinderCallsStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/os/BinderCallsStats;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/os/BinderCallsStats;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 125
    iput-object p1, p0, Lcom/android/internal/os/BinderCallsStats$1;->this$0:Lcom/android/internal/os/BinderCallsStats;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 12

    .line 128
    iget-object v0, p0, Lcom/android/internal/os/BinderCallsStats$1;->this$0:Lcom/android/internal/os/BinderCallsStats;

    invoke-static {v0}, Lcom/android/internal/os/BinderCallsStats;->-$$Nest$fgetmCallStatsObserver(Lcom/android/internal/os/BinderCallsStats;)Lcom/android/internal/os/BinderInternal$CallStatsObserver;

    move-result-object v0

    if-nez v0, :cond_9

    .line 129
    return-void

    .line 132
    :cond_9
    iget-object v0, p0, Lcom/android/internal/os/BinderCallsStats$1;->this$0:Lcom/android/internal/os/BinderCallsStats;

    invoke-static {v0}, Lcom/android/internal/os/BinderCallsStats;->-$$Nest$mnoteCallsStatsDelayed(Lcom/android/internal/os/BinderCallsStats;)V

    .line 134
    iget-object v0, p0, Lcom/android/internal/os/BinderCallsStats$1;->this$0:Lcom/android/internal/os/BinderCallsStats;

    invoke-static {v0}, Lcom/android/internal/os/BinderCallsStats;->-$$Nest$fgetmLock(Lcom/android/internal/os/BinderCallsStats;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 135
    :try_start_15
    iget-object v1, p0, Lcom/android/internal/os/BinderCallsStats$1;->this$0:Lcom/android/internal/os/BinderCallsStats;

    invoke-static {v1}, Lcom/android/internal/os/BinderCallsStats;->-$$Nest$fgetmSendUidsToObserver(Lcom/android/internal/os/BinderCallsStats;)Landroid/util/ArraySet;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    .line 136
    const/4 v2, 0x0

    move v3, v2

    :goto_21
    if-ge v3, v1, :cond_88

    .line 137
    iget-object v4, p0, Lcom/android/internal/os/BinderCallsStats$1;->this$0:Lcom/android/internal/os/BinderCallsStats;

    invoke-static {v4}, Lcom/android/internal/os/BinderCallsStats;->-$$Nest$fgetmUidEntries(Lcom/android/internal/os/BinderCallsStats;)Landroid/util/SparseArray;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/os/BinderCallsStats$1;->this$0:Lcom/android/internal/os/BinderCallsStats;

    invoke-static {v5}, Lcom/android/internal/os/BinderCallsStats;->-$$Nest$fgetmSendUidsToObserver(Lcom/android/internal/os/BinderCallsStats;)Landroid/util/ArraySet;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/os/BinderCallsStats$UidEntry;

    .line 138
    if-eqz v4, :cond_85

    .line 139
    invoke-static {v4}, Lcom/android/internal/os/BinderCallsStats$UidEntry;->-$$Nest$fgetmCallStats(Lcom/android/internal/os/BinderCallsStats$UidEntry;)Landroid/util/ArrayMap;

    move-result-object v5

    .line 140
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v6

    .line 141
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 142
    move v8, v2

    :goto_4f
    if-ge v8, v6, :cond_61

    .line 143
    invoke-virtual {v5, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/os/BinderCallsStats$CallStat;

    invoke-virtual {v9}, Lcom/android/internal/os/BinderCallsStats$CallStat;->clone()Lcom/android/internal/os/BinderCallsStats$CallStat;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    add-int/lit8 v8, v8, 0x1

    goto :goto_4f

    .line 145
    :cond_61
    iget-object v6, p0, Lcom/android/internal/os/BinderCallsStats$1;->this$0:Lcom/android/internal/os/BinderCallsStats;

    invoke-static {v6}, Lcom/android/internal/os/BinderCallsStats;->-$$Nest$fgetmCallStatsObserver(Lcom/android/internal/os/BinderCallsStats;)Lcom/android/internal/os/BinderInternal$CallStatsObserver;

    move-result-object v6

    iget v8, v4, Lcom/android/internal/os/BinderCallsStats$UidEntry;->workSourceUid:I

    iget-wide v9, v4, Lcom/android/internal/os/BinderCallsStats$UidEntry;->incrementalCallCount:J

    invoke-interface {v6, v8, v9, v10, v7}, Lcom/android/internal/os/BinderInternal$CallStatsObserver;->noteCallStats(IJLjava/util/Collection;)V

    .line 148
    const-wide/16 v6, 0x0

    iput-wide v6, v4, Lcom/android/internal/os/BinderCallsStats$UidEntry;->incrementalCallCount:J

    .line 149
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    :goto_78
    if-ltz v4, :cond_85

    .line 150
    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/os/BinderCallsStats$CallStat;

    iput-wide v6, v8, Lcom/android/internal/os/BinderCallsStats$CallStat;->incrementalCallCount:J

    .line 149
    add-int/lit8 v4, v4, -0x1

    goto :goto_78

    .line 136
    :cond_85
    add-int/lit8 v3, v3, 0x1

    goto :goto_21

    .line 154
    :cond_88
    iget-object v1, p0, Lcom/android/internal/os/BinderCallsStats$1;->this$0:Lcom/android/internal/os/BinderCallsStats;

    invoke-static {v1}, Lcom/android/internal/os/BinderCallsStats;->-$$Nest$fgetmSendUidsToObserver(Lcom/android/internal/os/BinderCallsStats;)Landroid/util/ArraySet;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    .line 155
    monitor-exit v0

    .line 156
    return-void

    .line 155
    :catchall_93
    move-exception v1

    monitor-exit v0
    :try_end_95
    .catchall {:try_start_15 .. :try_end_95} :catchall_93

    throw v1
.end method
