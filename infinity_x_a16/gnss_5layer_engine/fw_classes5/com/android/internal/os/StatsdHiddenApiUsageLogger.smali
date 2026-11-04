.class Lcom/android/internal/os/StatsdHiddenApiUsageLogger;
.super Ljava/lang/Object;
.source "StatsdHiddenApiUsageLogger.java"

# interfaces
.implements Ldalvik/system/VMRuntime$HiddenApiUsageLogger;


# static fields
.field private static final blacklist sInstance:Lcom/android/internal/os/StatsdHiddenApiUsageLogger;


# instance fields
.field private blacklist mHiddenApiAccessLogSampleRate:I

.field private blacklist mHiddenApiAccessStatslogSampleRate:I

.field private final blacklist mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 31
    new-instance v0, Lcom/android/internal/os/StatsdHiddenApiUsageLogger;

    invoke-direct {v0}, Lcom/android/internal/os/StatsdHiddenApiUsageLogger;-><init>()V

    sput-object v0, Lcom/android/internal/os/StatsdHiddenApiUsageLogger;->sInstance:Lcom/android/internal/os/StatsdHiddenApiUsageLogger;

    return-void
.end method

.method constructor blacklist <init>()V
    .registers 2

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {v0}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/StatsdHiddenApiUsageLogger;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/os/StatsdHiddenApiUsageLogger;->mHiddenApiAccessLogSampleRate:I

    .line 33
    iput v0, p0, Lcom/android/internal/os/StatsdHiddenApiUsageLogger;->mHiddenApiAccessStatslogSampleRate:I

    return-void
.end method

.method static blacklist getInstance()Lcom/android/internal/os/StatsdHiddenApiUsageLogger;
    .registers 1

    .line 41
    sget-object v0, Lcom/android/internal/os/StatsdHiddenApiUsageLogger;->sInstance:Lcom/android/internal/os/StatsdHiddenApiUsageLogger;

    return-object v0
.end method

.method private blacklist logUsage(Ljava/lang/String;Ljava/lang/String;IZ)V
    .registers 8

    .line 57
    nop

    .line 58
    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p3, :pswitch_data_3e

    goto :goto_11

    .line 69
    :pswitch_7
    const/4 v1, 0x3

    goto :goto_11

    .line 66
    :pswitch_9
    nop

    .line 67
    const/4 v1, 0x2

    goto :goto_11

    .line 63
    :pswitch_c
    nop

    .line 64
    move v1, v0

    goto :goto_11

    .line 60
    :pswitch_f
    nop

    .line 61
    nop

    .line 73
    :goto_11
    new-instance p3, Landroid/metrics/LogMaker;

    const/16 v2, 0x56f

    invoke-direct {p3, v2}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 74
    invoke-virtual {p3, p1}, Landroid/metrics/LogMaker;->setPackageName(Ljava/lang/String;)Landroid/metrics/LogMaker;

    move-result-object p1

    .line 75
    const/16 p3, 0x572

    invoke-virtual {p1, p3, p2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object p1

    .line 77
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 76
    const/16 p3, 0x570

    invoke-virtual {p1, p3, p2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object p1

    .line 79
    if-eqz p4, :cond_37

    .line 80
    const/16 p2, 0x571

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 83
    :cond_37
    iget-object p2, p0, Lcom/android/internal/os/StatsdHiddenApiUsageLogger;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {p2, p1}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 84
    return-void

    nop

    :pswitch_data_3e
    .packed-switch 0x0
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_7
    .end packed-switch
.end method

.method private blacklist newLogUsage(Ljava/lang/String;IZ)V
    .registers 6

    .line 87
    nop

    .line 88
    const/4 v0, 0x0

    packed-switch p2, :pswitch_data_1a

    goto :goto_10

    .line 99
    :pswitch_6
    const/4 v0, 0x3

    goto :goto_10

    .line 96
    :pswitch_8
    nop

    .line 97
    const/4 v0, 0x2

    goto :goto_10

    .line 93
    :pswitch_b
    nop

    .line 94
    const/4 v0, 0x1

    goto :goto_10

    .line 90
    :pswitch_e
    nop

    .line 91
    nop

    .line 103
    :goto_10
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result p2

    .line 104
    const/16 v1, 0xb2

    invoke-static {v1, p2, p1, v0, p3}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;IZ)V

    .line 106
    return-void

    :pswitch_data_1a
    .packed-switch 0x0
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_6
    .end packed-switch
.end method

.method static blacklist setHiddenApiAccessLogSampleRates(II)V
    .registers 3

    .line 36
    sget-object v0, Lcom/android/internal/os/StatsdHiddenApiUsageLogger;->sInstance:Lcom/android/internal/os/StatsdHiddenApiUsageLogger;

    iput p0, v0, Lcom/android/internal/os/StatsdHiddenApiUsageLogger;->mHiddenApiAccessLogSampleRate:I

    .line 37
    sget-object p0, Lcom/android/internal/os/StatsdHiddenApiUsageLogger;->sInstance:Lcom/android/internal/os/StatsdHiddenApiUsageLogger;

    iput p1, p0, Lcom/android/internal/os/StatsdHiddenApiUsageLogger;->mHiddenApiAccessStatslogSampleRate:I

    .line 38
    return-void
.end method


# virtual methods
.method public blacklist test-api hiddenApiUsed(ILjava/lang/String;Ljava/lang/String;IZ)V
    .registers 7

    .line 46
    iget v0, p0, Lcom/android/internal/os/StatsdHiddenApiUsageLogger;->mHiddenApiAccessLogSampleRate:I

    if-ge p1, v0, :cond_7

    .line 47
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/android/internal/os/StatsdHiddenApiUsageLogger;->logUsage(Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 50
    :cond_7
    iget p2, p0, Lcom/android/internal/os/StatsdHiddenApiUsageLogger;->mHiddenApiAccessStatslogSampleRate:I

    if-ge p1, p2, :cond_e

    .line 51
    invoke-direct {p0, p3, p4, p5}, Lcom/android/internal/os/StatsdHiddenApiUsageLogger;->newLogUsage(Ljava/lang/String;IZ)V

    .line 53
    :cond_e
    return-void
.end method
