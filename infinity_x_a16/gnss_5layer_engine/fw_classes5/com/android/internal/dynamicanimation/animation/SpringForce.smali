.class public final Lcom/android/internal/dynamicanimation/animation/SpringForce;
.super Ljava/lang/Object;
.source "SpringForce.java"

# interfaces
.implements Lcom/android/internal/dynamicanimation/animation/Force;


# static fields
.field public static final blacklist DAMPING_RATIO_HIGH_BOUNCY:F = 0.2f

.field public static final blacklist DAMPING_RATIO_LOW_BOUNCY:F = 0.75f

.field public static final blacklist DAMPING_RATIO_MEDIUM_BOUNCY:F = 0.5f

.field public static final blacklist DAMPING_RATIO_NO_BOUNCY:F = 1.0f

.field public static final blacklist STIFFNESS_HIGH:F = 10000.0f

.field public static final blacklist STIFFNESS_LOW:F = 200.0f

.field public static final blacklist STIFFNESS_MEDIUM:F = 1500.0f

.field public static final blacklist STIFFNESS_VERY_LOW:F = 50.0f

.field private static final blacklist UNSET:D = 1.7976931348623157E308

.field private static final blacklist VELOCITY_THRESHOLD_MULTIPLIER:D = 62.5


# instance fields
.field private blacklist mDampedFreq:D

.field blacklist mDampingRatio:D

.field private blacklist mFinalPosition:D

.field private blacklist mGammaMinus:D

.field private blacklist mGammaPlus:D

.field private blacklist mInitialized:Z

.field private final blacklist mMassState:Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$MassState;

.field blacklist mNaturalFreq:D

.field private blacklist mValueThreshold:D

.field private blacklist mVelocityThreshold:D


# direct methods
.method public constructor blacklist <init>()V
    .registers 3

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    const-wide v0, 0x4097700000000000L    # 1500.0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/dynamicanimation/animation/SpringForce;->mNaturalFreq:D

    .line 84
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    iput-wide v0, p0, Lcom/android/internal/dynamicanimation/animation/SpringForce;->mDampingRatio:D

    .line 90
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/dynamicanimation/animation/SpringForce;->mInitialized:Z

    .line 103
    const-wide v0, 0x7fefffffffffffffL    # Double.MAX_VALUE

    iput-wide v0, p0, Lcom/android/internal/dynamicanimation/animation/SpringForce;->mFinalPosition:D

    .line 106
    new-instance v0, Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$MassState;

    invoke-direct {v0}, Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$MassState;-><init>()V

    iput-object v0, p0, Lcom/android/internal/dynamicanimation/animation/SpringForce;->mMassState:Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$MassState;

    .line 114
    return-void
.end method

.method public constructor blacklist <init>(F)V
    .registers 4

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    const-wide v0, 0x4097700000000000L    # 1500.0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/dynamicanimation/animation/SpringForce;->mNaturalFreq:D

    .line 84
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    iput-wide v0, p0, Lcom/android/internal/dynamicanimation/animation/SpringForce;->mDampingRatio:D

    .line 90
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/dynamicanimation/animation/SpringForce;->mInitialized:Z

    .line 103
    const-wide v0, 0x7fefffffffffffffL    # Double.MAX_VALUE

    iput-wide v0, p0, Lcom/android/internal/dynamicanimation/animation/SpringForce;->mFinalPosition:D

    .line 106
    new-instance v0, Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$MassState;

    invoke-direct {v0}, Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$MassState;-><init>()V

    iput-object v0, p0, Lcom/android/internal/dynamicanimation/animation/SpringForce;->mMassState:Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$MassState;

    .line 122
    float-to-double v0, p1

    iput-wide v0, p0, Lcom/android/internal/dynamicanimation/animation/SpringForce;->mFinalPosition:D

    .line 123
    return-void
.end method

.method private blacklist init()V
    .registers 11

    .line 238
    iget-boolean v0, p0, Lcom/android/internal/dynamicanimation/animation/SpringForce;->mInitialized:Z

    if-eqz v0, :cond_5

    .line 239
    return-void

    .line 242
    :cond_5
    iget-wide v0, p0, Lcom/android/internal/dynamicanimation/animation/SpringForce;->mFinalPosition:D

    const-wide v2, 0x7fefffffffffffffL    # Double.MAX_VALUE

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_66

    .line 247
    iget-wide v0, p0, Lcom/android/internal/dynamicanimation/animation/SpringForce;->mDampingRatio:D

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_45

    .line 249
    iget-wide v0, p0, Lcom/android/internal/dynamicanimation/animation/SpringForce;->mDampingRatio:D

    neg-double v0, v0

    iget-wide v4, p0, Lcom/android/internal/dynamicanimation/animation/SpringForce;->mNaturalFreq:D

    mul-double/2addr v0, v4

    iget-wide v4, p0, Lcom/android/internal/dynamicanimation/animation/SpringForce;->mNaturalFreq:D

    iget-wide v6, p0, Lcom/android/internal/dynamicanimation/animation/SpringForce;->mDampingRatio:D

    iget-wide v8, p0, Lcom/android/internal/dynamicanimation/animation/SpringForce;->mDampingRatio:D

    mul-double/2addr v6, v8

    sub-double/2addr v6, v2

    .line 250
    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    add-double/2addr v0, v4

    iput-wide v0, p0, Lcom/android/internal/dynamicanimation/animation/SpringForce;->mGammaPlus:D

    .line 251
    iget-wide v0, p0, Lcom/android/internal/dynamicanimation/animation/SpringForce;->mDampingRatio:D

    neg-double v0, v0

    iget-wide v4, p0, Lcom/android/internal/dynamicanimation/animation/SpringForce;->mNaturalFreq:D

    mul-double/2addr v0, v4

    iget-wide v4, p0, Lcom/android/internal/dynamicanimation/animation/SpringForce;->mNaturalFreq:D

    iget-wide v6, p0, Lcom/android/internal/dynamicanimation/animation/SpringForce;->mDampingRatio:D

    iget-wide v8, p0, Lcom/android/internal/dynamicanimation/animation/SpringForce;->mDampingRatio:D

    mul-double/2addr v6, v8

    sub-double/2addr v6, v2

    .line 252
    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    mul-double/2addr v4, v2

    sub-double/2addr v0, v4

    iput-wide v0, p0, Lcom/android/internal/dynamicanimation/animation/SpringForce;->mGammaMinus:D

    goto :goto_62

    .line 253
    :cond_45
    iget-wide v0, p0, Lcom/android/internal/dynamicanimation/animation/SpringForce;->mDampingRatio:D

    const-wide/16 v4, 0x0

    cmpl-double v0, v0, v4

    if-ltz v0, :cond_62

    iget-wide v0, p0, Lcom/android/internal/dynamicanimation/animation/SpringForce;->mDampingRatio:D

    cmpg-double v0, v0, v2

    if-gez v0, :cond_62

    .line 255
    iget-wide v0, p0, Lcom/android/internal/dynamicanimation/animation/SpringForce;->mNaturalFreq:D

    iget-wide v4, p0, Lcom/android/internal/dynamicanimation/animation/SpringForce;->mDampingRatio:D

    iget-wide v6, p0, Lcom/android/internal/dynamicanimation/animation/SpringForce;->mDampingRatio:D

    mul-double/2addr v4, v6

    sub-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/dynamicanimation/animation/SpringForce;->mDampedFreq:D

    .line 258
    :cond_62
    :goto_62
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/dynamicanimation/animation/SpringForce;->mInitialized:Z

    .line 259
    return-void

    .line 243
    :cond_66
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Error: Final position of the spring must be set before the animation starts"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public blacklist getAcceleration(FF)F
    .registers 9

    .line 213
    invoke-virtual {p0}, Lcom/android/internal/dynamicanimation/animation/SpringForce;->getFinalPosition()F

    move-result v0

    sub-float/2addr p1, v0

    .line 215
    iget-wide v0, p0, Lcom/android/internal/dynamicanimation/animation/SpringForce;->mNaturalFreq:D

    iget-wide v2, p0, Lcom/android/internal/dynamicanimation/animation/SpringForce;->mNaturalFreq:D

    mul-double/2addr v0, v2

    .line 216
    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    iget-wide v4, p0, Lcom/android/internal/dynamicanimation/animation/SpringForce;->mNaturalFreq:D

    mul-double/2addr v4, v2

    iget-wide v2, p0, Lcom/android/internal/dynamicanimation/animation/SpringForce;->mDampingRatio:D

    mul-double/2addr v4, v2

    .line 218
    neg-double v0, v0

    float-to-double v2, p1

    mul-double/2addr v0, v2

    float-to-double p1, p2

    mul-double/2addr v4, p1

    sub-double/2addr v0, v4

    double-to-float p1, v0

    return p1
.end method

.method public blacklist getDampingRatio()F
    .registers 3

    .line 185
    iget-wide v0, p0, Lcom/android/internal/dynamicanimation/animation/SpringForce;->mDampingRatio:D

    double-to-float v0, v0

    return v0
.end method

.method public blacklist getFinalPosition()F
    .registers 3

    .line 205
    iget-wide v0, p0, Lcom/android/internal/dynamicanimation/animation/SpringForce;->mFinalPosition:D

    double-to-float v0, v0

    return v0
.end method

.method public blacklist getStiffness()F
    .registers 5

    .line 151
    iget-wide v0, p0, Lcom/android/internal/dynamicanimation/animation/SpringForce;->mNaturalFreq:D

    iget-wide v2, p0, Lcom/android/internal/dynamicanimation/animation/SpringForce;->mNaturalFreq:D

    mul-double/2addr v0, v2

    double-to-float v0, v0

    return v0
.end method

.method public blacklist isAtEquilibrium(FF)Z
    .registers 7

    .line 223
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    float-to-double v0, p2

    iget-wide v2, p0, Lcom/android/internal/dynamicanimation/animation/SpringForce;->mVelocityThreshold:D

    cmpg-double p2, v0, v2

    if-gez p2, :cond_1d

    .line 224
    invoke-virtual {p0}, Lcom/android/internal/dynamicanimation/animation/SpringForce;->getFinalPosition()F

    move-result p2

    sub-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    float-to-double p1, p1

    iget-wide v0, p0, Lcom/android/internal/dynamicanimation/animation/SpringForce;->mValueThreshold:D

    cmpg-double p1, p1, v0

    if-gez p1, :cond_1d

    .line 225
    const/4 p1, 0x1

    return p1

    .line 227
    :cond_1d
    const/4 p1, 0x0

    return p1
.end method

.method public blacklist setDampingRatio(F)Lcom/android/internal/dynamicanimation/animation/SpringForce;
    .registers 4

    .line 170
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_c

    .line 173
    float-to-double v0, p1

    iput-wide v0, p0, Lcom/android/internal/dynamicanimation/animation/SpringForce;->mDampingRatio:D

    .line 175
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/internal/dynamicanimation/animation/SpringForce;->mInitialized:Z

    .line 176
    return-object p0

    .line 171
    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Damping ratio must be non-negative"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public blacklist setFinalPosition(F)Lcom/android/internal/dynamicanimation/animation/SpringForce;
    .registers 4

    .line 195
    float-to-double v0, p1

    iput-wide v0, p0, Lcom/android/internal/dynamicanimation/animation/SpringForce;->mFinalPosition:D

    .line 196
    return-object p0
.end method

.method public blacklist setStiffness(F)Lcom/android/internal/dynamicanimation/animation/SpringForce;
    .registers 4

    .line 136
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-lez v0, :cond_10

    .line 139
    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/dynamicanimation/animation/SpringForce;->mNaturalFreq:D

    .line 141
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/internal/dynamicanimation/animation/SpringForce;->mInitialized:Z

    .line 142
    return-object p0

    .line 137
    :cond_10
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Spring stiffness constant must be positive."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method blacklist setValueThreshold(D)V
    .registers 5

    .line 320
    invoke-static {p1, p2}, Ljava/lang/Math;->abs(D)D

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/internal/dynamicanimation/animation/SpringForce;->mValueThreshold:D

    .line 321
    iget-wide p1, p0, Lcom/android/internal/dynamicanimation/animation/SpringForce;->mValueThreshold:D

    const-wide v0, 0x404f400000000000L    # 62.5

    mul-double/2addr p1, v0

    iput-wide p1, p0, Lcom/android/internal/dynamicanimation/animation/SpringForce;->mVelocityThreshold:D

    .line 322
    return-void
.end method

.method blacklist updateValues(DDJ)Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$MassState;
    .registers 22

    .line 267
    invoke-direct {p0}, Lcom/android/internal/dynamicanimation/animation/SpringForce;->init()V

    .line 269
    move-wide/from16 v1, p5

    long-to-double v1, v1

    const-wide v3, 0x408f400000000000L    # 1000.0

    div-double/2addr v1, v3

    .line 270
    iget-wide v3, p0, Lcom/android/internal/dynamicanimation/animation/SpringForce;->mFinalPosition:D

    sub-double v3, p1, v3

    .line 273
    iget-wide v5, p0, Lcom/android/internal/dynamicanimation/animation/SpringForce;->mDampingRatio:D

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    cmpl-double v5, v5, v7

    const-wide v9, 0x4005bf0a8b145769L    # Math.E

    if-lez v5, :cond_5f

    .line 275
    iget-wide v5, p0, Lcom/android/internal/dynamicanimation/animation/SpringForce;->mGammaMinus:D

    mul-double/2addr v5, v3

    sub-double v5, v5, p3

    iget-wide v7, p0, Lcom/android/internal/dynamicanimation/animation/SpringForce;->mGammaMinus:D

    iget-wide v11, p0, Lcom/android/internal/dynamicanimation/animation/SpringForce;->mGammaPlus:D

    sub-double/2addr v7, v11

    div-double/2addr v5, v7

    sub-double v5, v3, v5

    .line 277
    iget-wide v7, p0, Lcom/android/internal/dynamicanimation/animation/SpringForce;->mGammaMinus:D

    mul-double/2addr v7, v3

    sub-double v7, v7, p3

    iget-wide v3, p0, Lcom/android/internal/dynamicanimation/animation/SpringForce;->mGammaMinus:D

    iget-wide v11, p0, Lcom/android/internal/dynamicanimation/animation/SpringForce;->mGammaPlus:D

    sub-double/2addr v3, v11

    div-double/2addr v7, v3

    .line 279
    iget-wide v3, p0, Lcom/android/internal/dynamicanimation/animation/SpringForce;->mGammaMinus:D

    mul-double/2addr v3, v1

    invoke-static {v9, v10, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    mul-double/2addr v3, v5

    iget-wide v11, p0, Lcom/android/internal/dynamicanimation/animation/SpringForce;->mGammaPlus:D

    mul-double/2addr v11, v1

    .line 280
    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v11

    mul-double/2addr v11, v7

    add-double/2addr v3, v11

    .line 281
    iget-wide v11, p0, Lcom/android/internal/dynamicanimation/animation/SpringForce;->mGammaMinus:D

    mul-double/2addr v5, v11

    iget-wide v11, p0, Lcom/android/internal/dynamicanimation/animation/SpringForce;->mGammaMinus:D

    mul-double/2addr v11, v1

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v11

    mul-double/2addr v5, v11

    iget-wide v11, p0, Lcom/android/internal/dynamicanimation/animation/SpringForce;->mGammaPlus:D

    mul-double/2addr v7, v11

    iget-wide v11, p0, Lcom/android/internal/dynamicanimation/animation/SpringForce;->mGammaPlus:D

    mul-double/2addr v11, v1

    .line 282
    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    mul-double/2addr v7, v1

    add-double/2addr v5, v7

    .line 283
    goto/16 :goto_ee

    :cond_5f
    iget-wide v5, p0, Lcom/android/internal/dynamicanimation/animation/SpringForce;->mDampingRatio:D

    cmpl-double v5, v5, v7

    if-nez v5, :cond_90

    .line 285
    nop

    .line 286
    iget-wide v5, p0, Lcom/android/internal/dynamicanimation/animation/SpringForce;->mNaturalFreq:D

    mul-double/2addr v5, v3

    add-double v5, p3, v5

    .line 287
    mul-double v7, v5, v1

    add-double/2addr v3, v7

    iget-wide v7, p0, Lcom/android/internal/dynamicanimation/animation/SpringForce;->mNaturalFreq:D

    neg-double v7, v7

    mul-double/2addr v7, v1

    invoke-static {v9, v10, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    mul-double/2addr v7, v3

    .line 288
    iget-wide v11, p0, Lcom/android/internal/dynamicanimation/animation/SpringForce;->mNaturalFreq:D

    neg-double v11, v11

    mul-double/2addr v11, v1

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v11

    mul-double/2addr v3, v11

    iget-wide v11, p0, Lcom/android/internal/dynamicanimation/animation/SpringForce;->mNaturalFreq:D

    neg-double v11, v11

    mul-double/2addr v3, v11

    iget-wide v11, p0, Lcom/android/internal/dynamicanimation/animation/SpringForce;->mNaturalFreq:D

    neg-double v11, v11

    mul-double/2addr v11, v1

    .line 289
    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    mul-double/2addr v5, v1

    add-double/2addr v5, v3

    .line 290
    move-wide v3, v7

    goto :goto_ee

    .line 292
    :cond_90
    nop

    .line 293
    iget-wide v5, p0, Lcom/android/internal/dynamicanimation/animation/SpringForce;->mDampedFreq:D

    div-double/2addr v7, v5

    iget-wide v5, p0, Lcom/android/internal/dynamicanimation/animation/SpringForce;->mDampingRatio:D

    iget-wide v11, p0, Lcom/android/internal/dynamicanimation/animation/SpringForce;->mNaturalFreq:D

    mul-double/2addr v5, v11

    mul-double/2addr v5, v3

    add-double v5, v5, p3

    mul-double/2addr v7, v5

    .line 295
    iget-wide v5, p0, Lcom/android/internal/dynamicanimation/animation/SpringForce;->mDampingRatio:D

    neg-double v5, v5

    iget-wide v11, p0, Lcom/android/internal/dynamicanimation/animation/SpringForce;->mNaturalFreq:D

    mul-double/2addr v5, v11

    mul-double/2addr v5, v1

    invoke-static {v9, v10, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    iget-wide v11, p0, Lcom/android/internal/dynamicanimation/animation/SpringForce;->mDampedFreq:D

    mul-double/2addr v11, v1

    .line 296
    invoke-static {v11, v12}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    mul-double/2addr v11, v3

    iget-wide v13, p0, Lcom/android/internal/dynamicanimation/animation/SpringForce;->mDampedFreq:D

    mul-double/2addr v13, v1

    .line 297
    invoke-static {v13, v14}, Ljava/lang/Math;->sin(D)D

    move-result-wide v13

    mul-double/2addr v13, v7

    add-double/2addr v11, v13

    mul-double/2addr v5, v11

    .line 298
    iget-wide v11, p0, Lcom/android/internal/dynamicanimation/animation/SpringForce;->mNaturalFreq:D

    neg-double v11, v11

    mul-double/2addr v11, v5

    iget-wide v13, p0, Lcom/android/internal/dynamicanimation/animation/SpringForce;->mDampingRatio:D

    mul-double/2addr v11, v13

    iget-wide v13, p0, Lcom/android/internal/dynamicanimation/animation/SpringForce;->mDampingRatio:D

    neg-double v13, v13

    iget-wide v9, p0, Lcom/android/internal/dynamicanimation/animation/SpringForce;->mNaturalFreq:D

    mul-double/2addr v13, v9

    mul-double/2addr v13, v1

    .line 299
    const-wide v9, 0x4005bf0a8b145769L    # Math.E

    invoke-static {v9, v10, v13, v14}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    iget-wide v13, p0, Lcom/android/internal/dynamicanimation/animation/SpringForce;->mDampedFreq:D

    neg-double v13, v13

    mul-double/2addr v13, v3

    iget-wide v3, p0, Lcom/android/internal/dynamicanimation/animation/SpringForce;->mDampedFreq:D

    mul-double/2addr v3, v1

    .line 300
    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    mul-double/2addr v13, v3

    iget-wide v3, p0, Lcom/android/internal/dynamicanimation/animation/SpringForce;->mDampedFreq:D

    mul-double/2addr v3, v7

    iget-wide v7, p0, Lcom/android/internal/dynamicanimation/animation/SpringForce;->mDampedFreq:D

    mul-double/2addr v7, v1

    .line 301
    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    mul-double/2addr v3, v1

    add-double/2addr v13, v3

    mul-double/2addr v9, v13

    add-double v1, v11, v9

    move-wide v3, v5

    move-wide v5, v1

    .line 304
    :goto_ee
    iget-object v1, p0, Lcom/android/internal/dynamicanimation/animation/SpringForce;->mMassState:Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$MassState;

    iget-wide v7, p0, Lcom/android/internal/dynamicanimation/animation/SpringForce;->mFinalPosition:D

    add-double/2addr v3, v7

    double-to-float v2, v3

    iput v2, v1, Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$MassState;->mValue:F

    .line 305
    iget-object v1, p0, Lcom/android/internal/dynamicanimation/animation/SpringForce;->mMassState:Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$MassState;

    double-to-float v2, v5

    iput v2, v1, Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$MassState;->mVelocity:F

    .line 306
    iget-object v0, p0, Lcom/android/internal/dynamicanimation/animation/SpringForce;->mMassState:Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$MassState;

    return-object v0
.end method
