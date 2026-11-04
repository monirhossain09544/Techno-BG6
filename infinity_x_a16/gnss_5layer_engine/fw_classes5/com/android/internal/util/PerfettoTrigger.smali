.class public Lcom/android/internal/util/PerfettoTrigger;
.super Ljava/lang/Object;
.source "PerfettoTrigger.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "PerfettoTrigger"

.field private static final blacklist THROTTLE_MILLIS:J = 0x493e0L

.field private static final blacklist TRIGGER_COMMAND:Ljava/lang/String; = "/system/bin/trigger_perfetto"

.field private static final blacklist sLastInvocationPerTrigger:Landroid/util/SparseLongArray;

.field private static final blacklist sLock:Ljava/lang/Object;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 40
    new-instance v0, Landroid/util/SparseLongArray;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Landroid/util/SparseLongArray;-><init>(I)V

    sput-object v0, Lcom/android/internal/util/PerfettoTrigger;->sLastInvocationPerTrigger:Landroid/util/SparseLongArray;

    .line 41
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/util/PerfettoTrigger;->sLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist trigger(Ljava/lang/String;)V
    .registers 6

    .line 51
    sget-object v0, Lcom/android/internal/util/PerfettoTrigger;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 52
    :try_start_3
    sget-object v1, Lcom/android/internal/util/PerfettoTrigger;->sLastInvocationPerTrigger:Landroid/util/SparseLongArray;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v1

    .line 53
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long/2addr v3, v1

    .line 54
    const-wide/32 v1, 0x493e0

    cmp-long v1, v3, v1

    if-gez v1, :cond_39

    .line 55
    const-string v1, "PerfettoTrigger"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not triggering "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v2, " - not enough time since last trigger"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    monitor-exit v0

    return-void

    .line 60
    :cond_39
    sget-object v1, Lcom/android/internal/util/PerfettoTrigger;->sLastInvocationPerTrigger:Landroid/util/SparseLongArray;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 61
    monitor-exit v0
    :try_end_47
    .catchall {:try_start_3 .. :try_end_47} :catchall_9d

    .line 64
    invoke-static {}, Landroid/os/PerfettoTrace;->getAttempedSystemRegistration()Z

    move-result v0

    if-eqz v0, :cond_52

    .line 65
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/os/PerfettoTrace;->activateTrigger(Ljava/lang/String;I)V

    .line 66
    return-void

    .line 70
    :cond_52
    :try_start_52
    new-instance v0, Ljava/lang/ProcessBuilder;

    const-string v1, "/system/bin/trigger_perfetto"

    filled-new-array {v1, p0}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    .line 71
    const-string v1, "PerfettoTrigger"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Triggering "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v0}, Ljava/lang/ProcessBuilder;->command()Ljava/util/List;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    invoke-virtual {v0}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;
    :try_end_82
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_82} :catch_83

    .line 75
    goto :goto_9c

    .line 73
    :catch_83
    move-exception v0

    .line 74
    const-string v1, "PerfettoTrigger"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to trigger "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 76
    :goto_9c
    return-void

    .line 61
    :catchall_9d
    move-exception p0

    :try_start_9e
    monitor-exit v0
    :try_end_9f
    .catchall {:try_start_9e .. :try_end_9f} :catchall_9d

    throw p0
.end method
