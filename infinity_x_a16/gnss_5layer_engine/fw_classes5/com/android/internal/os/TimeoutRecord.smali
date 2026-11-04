.class public Lcom/android/internal/os/TimeoutRecord;
.super Ljava/lang/Object;
.source "TimeoutRecord.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/TimeoutRecord$TimeoutKind;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "TimeoutRecord"


# instance fields
.field public final blacklist mEndTakenBeforeLocks:Z

.field public final blacklist mEndUptimeMillis:J

.field private blacklist mExpiredTimer:Ljava/lang/Object;

.field public final blacklist mKind:I

.field public final blacklist mLatencyTracker:Lcom/android/internal/os/anr/AnrLatencyTracker;

.field public final blacklist mReason:Ljava/lang/String;


# direct methods
.method private constructor blacklist <init>(ILjava/lang/String;JZ)V
    .registers 6

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput p1, p0, Lcom/android/internal/os/TimeoutRecord;->mKind:I

    .line 95
    iput-object p2, p0, Lcom/android/internal/os/TimeoutRecord;->mReason:Ljava/lang/String;

    .line 96
    iput-wide p3, p0, Lcom/android/internal/os/TimeoutRecord;->mEndUptimeMillis:J

    .line 97
    iput-boolean p5, p0, Lcom/android/internal/os/TimeoutRecord;->mEndTakenBeforeLocks:Z

    .line 98
    new-instance p2, Lcom/android/internal/os/anr/AnrLatencyTracker;

    invoke-direct {p2, p1, p3, p4}, Lcom/android/internal/os/anr/AnrLatencyTracker;-><init>(IJ)V

    iput-object p2, p0, Lcom/android/internal/os/TimeoutRecord;->mLatencyTracker:Lcom/android/internal/os/anr/AnrLatencyTracker;

    .line 99
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/internal/os/TimeoutRecord;->mExpiredTimer:Ljava/lang/Object;

    .line 100
    return-void
.end method

.method private static blacklist endingApproximatelyNow(ILjava/lang/String;)Lcom/android/internal/os/TimeoutRecord;
    .registers 8

    .line 108
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 109
    new-instance v0, Lcom/android/internal/os/TimeoutRecord;

    const/4 v5, 0x0

    move v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/os/TimeoutRecord;-><init>(ILjava/lang/String;JZ)V

    return-object v0
.end method

.method private static blacklist endingNow(ILjava/lang/String;)Lcom/android/internal/os/TimeoutRecord;
    .registers 8

    .line 103
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 104
    new-instance v0, Lcom/android/internal/os/TimeoutRecord;

    const/4 v5, 0x1

    move v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/os/TimeoutRecord;-><init>(ILjava/lang/String;JZ)V

    return-object v0
.end method

.method public static blacklist forApp(Ljava/lang/String;)Lcom/android/internal/os/TimeoutRecord;
    .registers 2

    .line 190
    const/4 v0, 0x7

    invoke-static {v0, p0}, Lcom/android/internal/os/TimeoutRecord;->endingApproximatelyNow(ILjava/lang/String;)Lcom/android/internal/os/TimeoutRecord;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist forAppStart(Ljava/lang/String;)Lcom/android/internal/os/TimeoutRecord;
    .registers 2

    .line 208
    const/16 v0, 0xa

    invoke-static {v0, p0}, Lcom/android/internal/os/TimeoutRecord;->endingNow(ILjava/lang/String;)Lcom/android/internal/os/TimeoutRecord;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist forBroadcastReceiver(Landroid/content/Intent;)Lcom/android/internal/os/TimeoutRecord;
    .registers 3

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Broadcast of "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 135
    invoke-virtual {p0, v0}, Landroid/content/Intent;->toString(Ljava/lang/StringBuilder;)V

    .line 136
    const/4 p0, 0x3

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/os/TimeoutRecord;->endingNow(ILjava/lang/String;)Lcom/android/internal/os/TimeoutRecord;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist forBroadcastReceiver(Landroid/content/Intent;J)Lcom/android/internal/os/TimeoutRecord;
    .registers 5

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Broadcast of "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 144
    invoke-virtual {p0, v0}, Landroid/content/Intent;->toString(Ljava/lang/StringBuilder;)V

    .line 145
    const-string p0, ", waited "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 147
    const-string p0, "ms"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    const/4 p0, 0x3

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/internal/os/TimeoutRecord;->endingNow(ILjava/lang/String;)Lcom/android/internal/os/TimeoutRecord;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist forBroadcastReceiver(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/os/TimeoutRecord;
    .registers 4

    .line 117
    if-eqz p1, :cond_1d

    .line 118
    if-eqz p2, :cond_13

    .line 119
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 120
    new-instance p0, Landroid/content/ComponentName;

    invoke-direct {p0, p1, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-object p0, v0

    goto :goto_1e

    .line 122
    :cond_13
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2, p0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 123
    invoke-virtual {p2, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-object p0, p2

    goto :goto_1e

    .line 126
    :cond_1d
    nop

    .line 128
    :goto_1e
    invoke-static {p0}, Lcom/android/internal/os/TimeoutRecord;->forBroadcastReceiver(Landroid/content/Intent;)Lcom/android/internal/os/TimeoutRecord;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist forContentProvider(Ljava/lang/String;)Lcom/android/internal/os/TimeoutRecord;
    .registers 2

    .line 184
    const/4 v0, 0x6

    invoke-static {v0, p0}, Lcom/android/internal/os/TimeoutRecord;->endingApproximatelyNow(ILjava/lang/String;)Lcom/android/internal/os/TimeoutRecord;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist forInputDispatchNoFocusedWindow(Ljava/lang/String;)Lcom/android/internal/os/TimeoutRecord;
    .registers 2

    .line 154
    const/4 v0, 0x1

    invoke-static {v0, p0}, Lcom/android/internal/os/TimeoutRecord;->endingNow(ILjava/lang/String;)Lcom/android/internal/os/TimeoutRecord;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist forInputDispatchWindowUnresponsive(Ljava/lang/String;)Lcom/android/internal/os/TimeoutRecord;
    .registers 2

    .line 160
    const/4 v0, 0x2

    invoke-static {v0, p0}, Lcom/android/internal/os/TimeoutRecord;->endingNow(ILjava/lang/String;)Lcom/android/internal/os/TimeoutRecord;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist forJobService(Ljava/lang/String;)Lcom/android/internal/os/TimeoutRecord;
    .registers 2

    .line 202
    const/16 v0, 0x9

    invoke-static {v0, p0}, Lcom/android/internal/os/TimeoutRecord;->endingNow(ILjava/lang/String;)Lcom/android/internal/os/TimeoutRecord;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist forServiceExec(Ljava/lang/String;J)Lcom/android/internal/os/TimeoutRecord;
    .registers 5

    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "executing service "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ", waited "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "ms"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 170
    const/4 p1, 0x5

    invoke-static {p1, p0}, Lcom/android/internal/os/TimeoutRecord;->endingNow(ILjava/lang/String;)Lcom/android/internal/os/TimeoutRecord;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist forServiceStartWithEndTime(Ljava/lang/String;J)Lcom/android/internal/os/TimeoutRecord;
    .registers 9

    .line 177
    new-instance v0, Lcom/android/internal/os/TimeoutRecord;

    const/4 v1, 0x4

    const/4 v5, 0x1

    move-object v2, p0

    move-wide v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/os/TimeoutRecord;-><init>(ILjava/lang/String;JZ)V

    return-object v0
.end method

.method public static blacklist forShortFgsTimeout(Ljava/lang/String;)Lcom/android/internal/os/TimeoutRecord;
    .registers 2

    .line 196
    const/16 v0, 0x8

    invoke-static {v0, p0}, Lcom/android/internal/os/TimeoutRecord;->endingNow(ILjava/lang/String;)Lcom/android/internal/os/TimeoutRecord;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public blacklist getAppExitInfoAnrSubreason()I
    .registers 3

    .line 239
    iget v0, p0, Lcom/android/internal/os/TimeoutRecord;->mKind:I

    packed-switch v0, :pswitch_data_40

    .line 261
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown TimeoutKind: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/os/TimeoutRecord;->mKind:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TimeoutRecord"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    const/4 v0, 0x0

    goto :goto_3e

    .line 243
    :pswitch_21
    const/16 v0, 0x22

    goto :goto_3e

    .line 257
    :pswitch_24
    const/16 v0, 0x2d

    goto :goto_3e

    .line 251
    :pswitch_27
    const/16 v0, 0x27

    goto :goto_3e

    .line 241
    :pswitch_2a
    const/16 v0, 0x21

    goto :goto_3e

    .line 247
    :pswitch_2d
    const/16 v0, 0x24

    goto :goto_3e

    .line 249
    :pswitch_30
    const/16 v0, 0x25

    goto :goto_3e

    .line 259
    :pswitch_33
    const/16 v0, 0x2f

    goto :goto_3e

    .line 245
    :pswitch_36
    const/16 v0, 0x23

    goto :goto_3e

    .line 253
    :pswitch_39
    const/16 v0, 0x29

    goto :goto_3e

    .line 254
    :pswitch_3c
    const/16 v0, 0x2a

    .line 239
    :goto_3e
    return v0

    nop

    :pswitch_data_40
    .packed-switch 0x1
        :pswitch_3c
        :pswitch_39
        :pswitch_36
        :pswitch_33
        :pswitch_30
        :pswitch_2d
        :pswitch_2a
        :pswitch_27
        :pswitch_24
        :pswitch_21
    .end packed-switch
.end method

.method public blacklist getExpiredTimer()Ljava/lang/Object;
    .registers 2

    .line 225
    iget-object v0, p0, Lcom/android/internal/os/TimeoutRecord;->mExpiredTimer:Ljava/lang/Object;

    return-object v0
.end method

.method public blacklist setExpiredTimer(Ljava/lang/Object;)Lcom/android/internal/os/TimeoutRecord;
    .registers 2

    .line 216
    iput-object p1, p0, Lcom/android/internal/os/TimeoutRecord;->mExpiredTimer:Ljava/lang/Object;

    .line 217
    return-object p0
.end method
