.class final Landroid/os/MessageQueue$MessageCounts;
.super Ljava/lang/Object;
.source "MessageQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/MessageQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "MessageCounts"
.end annotation


# static fields
.field private static final blacklist AWAKE:J = 0x7fffffffffffffffL

.field private static final blacklist MESSAGE_FLUSH_THRESHOLD:I = 0xa

.field private static blacklist sCounts:Ljava/lang/invoke/VarHandle;


# instance fields
.field private volatile blacklist mCountsValue:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 4

    .line 2781
    :try_start_0
    invoke-static {}, Ljava/lang/invoke/MethodHandles;->lookup()Ljava/lang/invoke/MethodHandles$Lookup;

    move-result-object v0

    .line 2782
    const-class v1, Landroid/os/MessageQueue$MessageCounts;

    const-string v2, "mCountsValue"

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2, v3}, Ljava/lang/invoke/MethodHandles$Lookup;->findVarHandle(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/invoke/VarHandle;

    move-result-object v0

    sput-object v0, Landroid/os/MessageQueue$MessageCounts;->sCounts:Ljava/lang/invoke/VarHandle;
    :try_end_10
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_10} :catch_12

    .line 2786
    nop

    .line 2787
    return-void

    .line 2784
    :catch_12
    move-exception v0

    .line 2785
    new-instance v1, Ljava/lang/ExceptionInInitializerError;

    invoke-direct {v1, v0}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method constructor blacklist <init>()V
    .registers 3

    .line 2774
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2776
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/os/MessageQueue$MessageCounts;->mCountsValue:J

    return-void
.end method

.method private static blacklist combineCounts(II)J
    .registers 4

    .line 2806
    int-to-long v0, p0

    const/16 p0, 0x20

    shl-long/2addr v0, p0

    int-to-long p0, p1

    or-long/2addr p0, v0

    return-wide p0
.end method

.method private static blacklist numCancelled(J)I
    .registers 2

    .line 2802
    long-to-int p0, p0

    return p0
.end method

.method private static blacklist numQueued(J)I
    .registers 3

    .line 2798
    const/16 v0, 0x20

    ushr-long/2addr p0, v0

    long-to-int p0, p0

    return p0
.end method


# virtual methods
.method public blacklist clearCounts()V
    .registers 3

    .line 2849
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/os/MessageQueue$MessageCounts;->mCountsValue:J

    .line 2850
    return-void
.end method

.method public blacklist incrementCancelled()Z
    .registers 9

    .line 2826
    nop

    :goto_1
    iget-wide v2, p0, Landroid/os/MessageQueue$MessageCounts;->mCountsValue:J

    .line 2827
    const-wide v0, 0x7fffffffffffffffL

    cmp-long v4, v2, v0

    const/4 v5, 0x0

    if-nez v4, :cond_e

    .line 2828
    return v5

    .line 2830
    :cond_e
    invoke-static {v2, v3}, Landroid/os/MessageQueue$MessageCounts;->numQueued(J)I

    move-result v4

    .line 2831
    invoke-static {v2, v3}, Landroid/os/MessageQueue$MessageCounts;->numCancelled(J)I

    move-result v6

    .line 2832
    const/16 v7, 0xa

    if-le v4, v7, :cond_1f

    shr-int/lit8 v7, v4, 0x1

    if-ge v7, v6, :cond_1f

    const/4 v5, 0x1

    :cond_1f
    move v7, v5

    .line 2835
    if-eqz v7, :cond_24

    .line 2836
    move-wide v4, v0

    goto :goto_2f

    .line 2838
    :cond_24
    add-int/lit8 v0, v6, 0x1

    .line 2839
    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2838
    invoke-static {v4, v0}, Landroid/os/MessageQueue$MessageCounts;->combineCounts(II)J

    move-result-wide v0

    move-wide v4, v0

    .line 2842
    :goto_2f
    sget-object v0, Landroid/os/MessageQueue$MessageCounts;->sCounts:Ljava/lang/invoke/VarHandle;

    move-object v1, p0

    invoke-polymorphic/range {v0 .. v5}, Ljava/lang/invoke/VarHandle;->compareAndSet([Ljava/lang/Object;)Z, (Landroid/os/MessageQueue$MessageCounts;JJ)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 2843
    return v7

    .line 2845
    :cond_3a
    goto :goto_1
.end method

.method public blacklist incrementQueued()V
    .registers 7

    .line 2811
    nop

    :goto_1
    iget-wide v2, p0, Landroid/os/MessageQueue$MessageCounts;->mCountsValue:J

    .line 2812
    invoke-static {v2, v3}, Landroid/os/MessageQueue$MessageCounts;->numQueued(J)I

    move-result v0

    .line 2813
    invoke-static {v2, v3}, Landroid/os/MessageQueue$MessageCounts;->numCancelled(J)I

    move-result v1

    .line 2815
    add-int/lit8 v4, v0, 0x1

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v0, v1}, Landroid/os/MessageQueue$MessageCounts;->combineCounts(II)J

    move-result-wide v4

    .line 2818
    const-wide v0, 0x7fffffffffffffffL

    cmp-long v0, v2, v0

    if-eqz v0, :cond_2a

    sget-object v0, Landroid/os/MessageQueue$MessageCounts;->sCounts:Ljava/lang/invoke/VarHandle;

    move-object v1, p0

    invoke-polymorphic/range {v0 .. v5}, Ljava/lang/invoke/VarHandle;->compareAndSet([Ljava/lang/Object;)Z, (Landroid/os/MessageQueue$MessageCounts;JJ)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 2819
    goto :goto_2a

    .line 2821
    :cond_29
    goto :goto_1

    .line 2822
    :cond_2a
    :goto_2a
    return-void
.end method
