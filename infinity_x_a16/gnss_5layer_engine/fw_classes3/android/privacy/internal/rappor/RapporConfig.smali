.class public Landroid/privacy/internal/rappor/RapporConfig;
.super Ljava/lang/Object;
.source "RapporConfig.java"

# interfaces
.implements Landroid/privacy/DifferentialPrivacyConfig;


# static fields
.field private static final blacklist ALGORITHM_NAME:Ljava/lang/String; = "Rappor"


# instance fields
.field final blacklist mEncoderId:Ljava/lang/String;

.field final blacklist mNumBits:I

.field final blacklist mNumBloomHashes:I

.field final blacklist mNumCohorts:I

.field final blacklist mProbabilityF:D

.field final blacklist mProbabilityP:D

.field final blacklist mProbabilityQ:D


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;IDDDII)V
    .registers 27

    .line 54
    move-object/from16 v0, p0

    move/from16 v1, p2

    move-wide/from16 v2, p3

    move-wide/from16 v4, p5

    move-wide/from16 v6, p7

    move/from16 v8, p9

    move/from16 v9, p10

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 55
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    const/4 v11, 0x1

    xor-int/2addr v10, v11

    const-string v12, "encoderId cannot be empty"

    invoke-static {v10, v12}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 56
    move-object/from16 v10, p1

    iput-object v10, v0, Landroid/privacy/internal/rappor/RapporConfig;->mEncoderId:Ljava/lang/String;

    .line 57
    if-lez v1, :cond_24

    move v12, v11

    goto :goto_25

    :cond_24
    const/4 v12, 0x0

    :goto_25
    const-string/jumbo v13, "numBits needs to be > 0"

    invoke-static {v12, v13}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 58
    iput v1, v0, Landroid/privacy/internal/rappor/RapporConfig;->mNumBits:I

    .line 59
    const-wide/16 v12, 0x0

    cmpl-double v1, v2, v12

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    if-ltz v1, :cond_3b

    cmpg-double v1, v2, v14

    if-gtz v1, :cond_3b

    move v1, v11

    goto :goto_3c

    :cond_3b
    const/4 v1, 0x0

    :goto_3c
    const-string/jumbo v10, "probabilityF must be in range [0.0, 1.0]"

    invoke-static {v1, v10}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 61
    iput-wide v2, v0, Landroid/privacy/internal/rappor/RapporConfig;->mProbabilityF:D

    .line 62
    cmpl-double v1, v4, v12

    if-ltz v1, :cond_4e

    cmpg-double v1, v4, v14

    if-gtz v1, :cond_4e

    move v1, v11

    goto :goto_4f

    :cond_4e
    const/4 v1, 0x0

    :goto_4f
    const-string/jumbo v2, "probabilityP must be in range [0.0, 1.0]"

    invoke-static {v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 64
    iput-wide v4, v0, Landroid/privacy/internal/rappor/RapporConfig;->mProbabilityP:D

    .line 65
    cmpl-double v1, v6, v12

    if-ltz v1, :cond_61

    cmpg-double v1, v6, v14

    if-gtz v1, :cond_61

    move v1, v11

    goto :goto_62

    :cond_61
    const/4 v1, 0x0

    :goto_62
    const-string/jumbo v2, "probabilityQ must be in range [0.0, 1.0]"

    invoke-static {v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 67
    iput-wide v6, v0, Landroid/privacy/internal/rappor/RapporConfig;->mProbabilityQ:D

    .line 68
    if-lez v8, :cond_6e

    move v1, v11

    goto :goto_6f

    :cond_6e
    const/4 v1, 0x0

    :goto_6f
    const-string/jumbo v2, "numCohorts needs to be > 0"

    invoke-static {v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 69
    iput v8, v0, Landroid/privacy/internal/rappor/RapporConfig;->mNumCohorts:I

    .line 70
    if-lez v9, :cond_7a

    goto :goto_7b

    :cond_7a
    const/4 v11, 0x0

    :goto_7b
    const-string/jumbo v1, "numBloomHashes needs to be > 0"

    invoke-static {v11, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 71
    iput v9, v0, Landroid/privacy/internal/rappor/RapporConfig;->mNumBloomHashes:I

    .line 72
    return-void
.end method


# virtual methods
.method public blacklist getAlgorithm()Ljava/lang/String;
    .registers 2

    .line 76
    const-string v0, "Rappor"

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 8

    .line 81
    iget-object v0, p0, Landroid/privacy/internal/rappor/RapporConfig;->mEncoderId:Ljava/lang/String;

    iget v1, p0, Landroid/privacy/internal/rappor/RapporConfig;->mNumBits:I

    .line 84
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-wide v2, p0, Landroid/privacy/internal/rappor/RapporConfig;->mProbabilityF:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    iget-wide v3, p0, Landroid/privacy/internal/rappor/RapporConfig;->mProbabilityP:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    iget-wide v4, p0, Landroid/privacy/internal/rappor/RapporConfig;->mProbabilityQ:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    iget v5, p0, Landroid/privacy/internal/rappor/RapporConfig;->mNumCohorts:I

    .line 85
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v6, p0, Landroid/privacy/internal/rappor/RapporConfig;->mNumBloomHashes:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array/range {v0 .. v6}, [Ljava/lang/Object;

    move-result-object v0

    .line 81
    const-string v1, "EncoderId: %s, NumBits: %d, ProbabilityF: %.3f, ProbabilityP: %.3f, ProbabilityQ: %.3f, NumCohorts: %d, NumBloomHashes: %d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
