.class public final Landroid/os/WaitState;
.super Ljava/lang/Object;
.source "WaitState.java"


# static fields
.field private static final blacklist COUNTER_BITS:J = 0x14L

.field private static final blacklist HAS_SYNC_BARRIER:J = 0x4000000000000000L

.field private static final blacklist IS_COUNTER:J = -0x8000000000000000L

.field private static final blacklist MASK:J = 0x3fffffffffffffffL


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist composeDeadline(JZ)J
    .registers 5

    .line 64
    const/16 v0, 0x14

    shl-long/2addr p0, v0

    .line 65
    if-eqz p2, :cond_8

    .line 66
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    or-long/2addr p0, v0

    .line 69
    :cond_8
    return-wide p0
.end method

.method public static blacklist getCount(J)J
    .registers 4

    .line 36
    const-wide v0, 0x7fffffffffffffffL

    and-long/2addr p0, v0

    return-wide p0
.end method

.method public static blacklist getTSMillis(J)J
    .registers 4

    .line 54
    const-wide v0, 0x3fffffffffffffffL    # 1.9999999999999998

    and-long/2addr p0, v0

    const/16 v0, 0x14

    ushr-long/2addr p0, v0

    return-wide p0
.end method

.method public static blacklist hasSyncBarrier(J)Z
    .registers 4

    .line 49
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    and-long/2addr p0, v0

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-eqz p0, :cond_b

    const/4 p0, 0x1

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    return p0
.end method

.method public static blacklist incrementCounter(J)J
    .registers 4

    .line 40
    invoke-static {p0, p1}, Landroid/os/WaitState;->getCount(J)J

    move-result-wide p0

    const-wide/16 v0, 0x1

    add-long/2addr p0, v0

    .line 41
    const-wide/high16 v0, -0x8000000000000000L

    or-long/2addr p0, v0

    return-wide p0
.end method

.method public static blacklist incrementDeadline(J)J
    .registers 6

    .line 58
    const-wide/high16 v0, -0x4000000000000000L    # -2.0

    and-long/2addr v0, p0

    .line 59
    const-wide v2, 0x3fffffffffffffffL    # 1.9999999999999998

    and-long/2addr p0, v2

    .line 60
    const-wide/16 v2, 0x1

    add-long/2addr p0, v2

    or-long/2addr p0, v0

    return-wide p0
.end method

.method public static blacklist initCounter()J
    .registers 2

    .line 45
    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0
.end method

.method public static blacklist isCounter(J)Z
    .registers 4

    .line 32
    const-wide/high16 v0, -0x8000000000000000L

    and-long/2addr p0, v0

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-eqz p0, :cond_b

    const/4 p0, 0x1

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    return p0
.end method
