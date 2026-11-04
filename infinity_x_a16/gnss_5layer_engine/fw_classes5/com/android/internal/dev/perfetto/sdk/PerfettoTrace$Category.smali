.class public Lcom/android/internal/dev/perfetto/sdk/PerfettoTrace$Category;
.super Ljava/lang/Object;
.source "PerfettoTrace.java"

# interfaces
.implements Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$PerfettoPointer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/dev/perfetto/sdk/PerfettoTrace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Category"
.end annotation


# instance fields
.field private volatile blacklist mIsRegistered:Z

.field private final blacklist mName:Ljava/lang/String;

.field private volatile blacklist mPtr:J

.field private final blacklist mTags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 3

    .line 65
    invoke-static {}, Ljava/util/List;->of()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrace$Category;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 66
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p1, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrace$Category;->mName:Ljava/lang/String;

    .line 76
    iput-object p2, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrace$Category;->mTags:Ljava/util/List;

    .line 77
    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrace$Category;->mPtr:J

    .line 78
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrace$Category;->mIsRegistered:Z

    .line 79
    return-void
.end method

.method private static native blacklist native_delete()J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist native_init(Ljava/lang/String;[Ljava/lang/String;)J
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist native_is_enabled(J)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist native_register(J)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist native_unregister(J)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method


# virtual methods
.method public blacklist getName()Ljava/lang/String;
    .registers 2

    .line 144
    iget-object v0, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrace$Category;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getPtr()J
    .registers 3

    .line 140
    iget-wide v0, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrace$Category;->mPtr:J

    return-wide v0
.end method

.method public blacklist getTags()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 148
    iget-object v0, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrace$Category;->mTags:Ljava/util/List;

    return-object v0
.end method

.method public blacklist isEnabled()Z
    .registers 5

    .line 128
    iget-wide v0, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrace$Category;->mPtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_12

    iget-wide v0, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrace$Category;->mPtr:J

    invoke-static {v0, v1}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrace$Category;->native_is_enabled(J)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method public blacklist isRegistered()Z
    .registers 2

    .line 133
    iget-boolean v0, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrace$Category;->mIsRegistered:Z

    return v0
.end method

.method public declared-synchronized blacklist register()Lcom/android/internal/dev/perfetto/sdk/PerfettoTrace$Category;
    .registers 10

    monitor-enter p0

    .line 98
    :try_start_1
    iget-wide v0, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrace$Category;->mPtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    if-nez v0, :cond_2f

    .line 99
    iget-object v0, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrace$Category;->mName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrace$Category;->mTags:Ljava/util/List;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrace$Category;->native_init(Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v5

    .line 100
    invoke-static {}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrace;->-$$Nest$sfgetsNativeMemoryCleaner()Lcom/android/internal/dev/perfetto/sdk/PerfettoNativeMemoryCleaner;

    move-result-object v3

    invoke-static {}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrace$Category;->native_delete()J

    move-result-wide v7
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_3d

    move-object v4, p0

    :try_start_24
    invoke-virtual/range {v3 .. v8}, Lcom/android/internal/dev/perfetto/sdk/PerfettoNativeMemoryCleaner;->registerNativeAllocation(Ljava/lang/Object;JJ)V

    .line 101
    invoke-static {v5, v6}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrace$Category;->native_register(J)V

    .line 104
    iput-wide v5, v4, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrace$Category;->mPtr:J

    .line 105
    iput-boolean v1, v4, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrace$Category;->mIsRegistered:Z

    .line 106
    goto :goto_3b

    .line 107
    :cond_2f
    move-object v4, p0

    iget-boolean v0, v4, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrace$Category;->mIsRegistered:Z

    if-nez v0, :cond_3b

    .line 108
    iget-wide v2, v4, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrace$Category;->mPtr:J

    invoke-static {v2, v3}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrace$Category;->native_register(J)V

    .line 109
    iput-boolean v1, v4, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrace$Category;->mIsRegistered:Z
    :try_end_3b
    .catchall {:try_start_24 .. :try_end_3b} :catchall_41

    .line 112
    :cond_3b
    :goto_3b
    monitor-exit p0

    return-object v4

    .line 97
    :catchall_3d
    move-exception v0

    move-object v4, p0

    :goto_3f
    :try_start_3f
    monitor-exit p0
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_41

    throw v0

    :catchall_41
    move-exception v0

    goto :goto_3f
.end method

.method public declared-synchronized blacklist unregister()Lcom/android/internal/dev/perfetto/sdk/PerfettoTrace$Category;
    .registers 3

    monitor-enter p0

    .line 117
    :try_start_1
    iget-boolean v0, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrace$Category;->mIsRegistered:Z

    if-eqz v0, :cond_d

    .line 119
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrace$Category;->mIsRegistered:Z

    .line 120
    iget-wide v0, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrace$Category;->mPtr:J

    invoke-static {v0, v1}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrace$Category;->native_unregister(J)V
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 122
    :cond_d
    monitor-exit p0

    return-object p0

    .line 116
    :catchall_f
    move-exception v0

    :try_start_10
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_f

    throw v0
.end method
