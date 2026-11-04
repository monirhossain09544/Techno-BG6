.class public Landroid/service/notification/RateEstimator;
.super Ljava/lang/Object;
.source "RateEstimator.java"


# static fields
.field private static final blacklist MINIMUM_DT:D = 5.0E-4

.field private static final blacklist RATE_ALPHA:D = 0.7


# instance fields
.field private blacklist mInterarrivalTime:D

.field private blacklist mLastEventTime:Ljava/lang/Long;


# direct methods
.method public constructor blacklist <init>()V
    .registers 3

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const-wide v0, 0x408f400000000000L    # 1000.0

    iput-wide v0, p0, Landroid/service/notification/RateEstimator;->mInterarrivalTime:D

    .line 35
    return-void
.end method

.method private blacklist getInterarrivalEstimate(J)D
    .registers 7

    .line 56
    iget-object v0, p0, Landroid/service/notification/RateEstimator;->mLastEventTime:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sub-long/2addr p1, v0

    long-to-double p1, p1

    const-wide v0, 0x408f400000000000L    # 1000.0

    div-double/2addr p1, v0

    .line 57
    const-wide v0, 0x3f40624dd2f1a9fcL    # 5.0E-4

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide p1

    .line 59
    const-wide v0, 0x3fe6666666666666L    # 0.7

    iget-wide v2, p0, Landroid/service/notification/RateEstimator;->mInterarrivalTime:D

    mul-double/2addr v2, v0

    const-wide v0, 0x3fd3333333333334L    # 0.30000000000000004

    mul-double/2addr p1, v0

    add-double/2addr v2, p1

    return-wide v2
.end method


# virtual methods
.method public blacklist getRate(J)F
    .registers 5

    .line 48
    iget-object v0, p0, Landroid/service/notification/RateEstimator;->mLastEventTime:Ljava/lang/Long;

    if-nez v0, :cond_6

    .line 49
    const/4 p1, 0x0

    return p1

    .line 51
    :cond_6
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-direct {p0, p1, p2}, Landroid/service/notification/RateEstimator;->getInterarrivalEstimate(J)D

    move-result-wide p1

    div-double/2addr v0, p1

    double-to-float p1, v0

    return p1
.end method

.method public blacklist update(J)V
    .registers 5

    .line 39
    iget-object v0, p0, Landroid/service/notification/RateEstimator;->mLastEventTime:Ljava/lang/Long;

    if-eqz v0, :cond_a

    .line 41
    invoke-direct {p0, p1, p2}, Landroid/service/notification/RateEstimator;->getInterarrivalEstimate(J)D

    move-result-wide v0

    iput-wide v0, p0, Landroid/service/notification/RateEstimator;->mInterarrivalTime:D

    .line 43
    :cond_a
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Landroid/service/notification/RateEstimator;->mLastEventTime:Ljava/lang/Long;

    .line 44
    return-void
.end method
