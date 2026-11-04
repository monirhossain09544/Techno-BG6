.class public Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingConfig;
.super Ljava/lang/Object;
.source "LongitudinalReportingConfig.java"

# interfaces
.implements Landroid/privacy/DifferentialPrivacyConfig;


# static fields
.field private static final blacklist ALGORITHM_NAME:Ljava/lang/String; = "LongitudinalReporting"


# instance fields
.field private final blacklist mEncoderId:Ljava/lang/String;

.field private final blacklist mIRRConfig:Landroid/privacy/internal/rappor/RapporConfig;

.field private final blacklist mProbabilityF:D

.field private final blacklist mProbabilityP:D

.field private final blacklist mProbabilityQ:D


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;DDD)V
    .registers 22

    .line 65
    move-wide/from16 v5, p2

    move-wide/from16 v0, p4

    move-wide/from16 v2, p6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const-wide/16 v7, 0x0

    cmpl-double v4, v5, v7

    const/4 v9, 0x0

    const/4 v10, 0x1

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    if-ltz v4, :cond_19

    cmpg-double v4, v5, v11

    if-gtz v4, :cond_19

    move v4, v10

    goto :goto_1a

    :cond_19
    move v4, v9

    :goto_1a
    const-string/jumbo v13, "probabilityF must be in range [0.0, 1.0]"

    invoke-static {v4, v13}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 68
    iput-wide v5, p0, Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingConfig;->mProbabilityF:D

    .line 69
    cmpl-double v4, v0, v7

    if-ltz v4, :cond_2c

    cmpg-double v4, v0, v11

    if-gtz v4, :cond_2c

    move v4, v10

    goto :goto_2d

    :cond_2c
    move v4, v9

    :goto_2d
    const-string/jumbo v13, "probabilityP must be in range [0.0, 1.0]"

    invoke-static {v4, v13}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 71
    iput-wide v0, p0, Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingConfig;->mProbabilityP:D

    .line 72
    cmpl-double v0, v2, v7

    if-ltz v0, :cond_3e

    cmpg-double v0, v2, v11

    if-gtz v0, :cond_3e

    move v9, v10

    :cond_3e
    const-string/jumbo v0, "probabilityQ must be in range [0.0, 1.0]"

    invoke-static {v9, v0}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 74
    iput-wide v2, p0, Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingConfig;->mProbabilityQ:D

    .line 75
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/2addr v0, v10

    const-string v1, "encoderId cannot be empty"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 76
    iput-object p1, p0, Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingConfig;->mEncoderId:Ljava/lang/String;

    .line 77
    new-instance v0, Landroid/privacy/internal/rappor/RapporConfig;

    sub-double v7, v11, v5

    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    move-object v1, p1

    invoke-direct/range {v0 .. v10}, Landroid/privacy/internal/rappor/RapporConfig;-><init>(Ljava/lang/String;IDDDII)V

    iput-object v0, p0, Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingConfig;->mIRRConfig:Landroid/privacy/internal/rappor/RapporConfig;

    .line 78
    return-void
.end method


# virtual methods
.method public blacklist getAlgorithm()Ljava/lang/String;
    .registers 2

    .line 82
    const-string v0, "LongitudinalReporting"

    return-object v0
.end method

.method blacklist getEncoderId()Ljava/lang/String;
    .registers 2

    .line 98
    iget-object v0, p0, Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingConfig;->mEncoderId:Ljava/lang/String;

    return-object v0
.end method

.method blacklist getIRRConfig()Landroid/privacy/internal/rappor/RapporConfig;
    .registers 2

    .line 86
    iget-object v0, p0, Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingConfig;->mIRRConfig:Landroid/privacy/internal/rappor/RapporConfig;

    return-object v0
.end method

.method blacklist getProbabilityP()D
    .registers 3

    .line 90
    iget-wide v0, p0, Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingConfig;->mProbabilityP:D

    return-wide v0
.end method

.method blacklist getProbabilityQ()D
    .registers 3

    .line 94
    iget-wide v0, p0, Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingConfig;->mProbabilityQ:D

    return-wide v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 6

    .line 103
    iget-object v0, p0, Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingConfig;->mEncoderId:Ljava/lang/String;

    iget-wide v1, p0, Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingConfig;->mProbabilityF:D

    .line 105
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iget-wide v2, p0, Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingConfig;->mProbabilityP:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    iget-wide v3, p0, Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingConfig;->mProbabilityQ:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    .line 103
    const-string v1, "EncoderId: %s, ProbabilityF: %.3f, ProbabilityP: %.3f, ProbabilityQ: %.3f"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
