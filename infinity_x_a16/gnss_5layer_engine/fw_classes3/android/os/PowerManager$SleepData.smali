.class public Landroid/os/PowerManager$SleepData;
.super Ljava/lang/Object;
.source "PowerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/PowerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SleepData"
.end annotation


# instance fields
.field public final blacklist goToSleepReason:I

.field public final blacklist goToSleepUptimeMillis:J


# direct methods
.method public constructor blacklist <init>(JI)V
    .registers 4

    .line 934
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 935
    iput-wide p1, p0, Landroid/os/PowerManager$SleepData;->goToSleepUptimeMillis:J

    .line 936
    iput p3, p0, Landroid/os/PowerManager$SleepData;->goToSleepReason:I

    .line 937
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 8

    .line 943
    instance-of v0, p1, Landroid/os/PowerManager$SleepData;

    const/4 v1, 0x0

    if-eqz v0, :cond_17

    .line 944
    check-cast p1, Landroid/os/PowerManager$SleepData;

    .line 945
    iget-wide v2, p0, Landroid/os/PowerManager$SleepData;->goToSleepUptimeMillis:J

    iget-wide v4, p1, Landroid/os/PowerManager$SleepData;->goToSleepUptimeMillis:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_16

    iget v0, p0, Landroid/os/PowerManager$SleepData;->goToSleepReason:I

    iget p1, p1, Landroid/os/PowerManager$SleepData;->goToSleepReason:I

    if-ne v0, p1, :cond_16

    const/4 v1, 0x1

    :cond_16
    return v1

    .line 948
    :cond_17
    return v1
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 953
    iget-wide v0, p0, Landroid/os/PowerManager$SleepData;->goToSleepUptimeMillis:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget v1, p0, Landroid/os/PowerManager$SleepData;->goToSleepReason:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
