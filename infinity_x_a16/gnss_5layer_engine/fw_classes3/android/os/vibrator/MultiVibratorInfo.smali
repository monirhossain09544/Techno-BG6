.class public final Landroid/os/vibrator/MultiVibratorInfo;
.super Landroid/os/VibratorInfo;
.source "MultiVibratorInfo.java"


# static fields
.field private static final blacklist EPSILON:F = 1.0E-5f

.field private static final blacklist TAG:Ljava/lang/String; = "MultiVibratorInfo"


# direct methods
.method public constructor blacklist <init>(I[Landroid/os/VibratorInfo;)V
    .registers 5

    .line 50
    invoke-static {p2}, Landroid/os/vibrator/MultiVibratorInfo;->frequencyProfileLegacyIntersection([Landroid/os/VibratorInfo;)Landroid/os/VibratorInfo$FrequencyProfileLegacy;

    move-result-object v0

    .line 51
    invoke-static {p2}, Landroid/os/vibrator/MultiVibratorInfo;->frequencyProfileIntersection([Landroid/os/VibratorInfo;)Landroid/os/VibratorInfo$FrequencyProfile;

    move-result-object v1

    .line 50
    invoke-direct {p0, p1, p2, v0, v1}, Landroid/os/vibrator/MultiVibratorInfo;-><init>(I[Landroid/os/VibratorInfo;Landroid/os/VibratorInfo$FrequencyProfileLegacy;Landroid/os/VibratorInfo$FrequencyProfile;)V

    .line 52
    return-void
.end method

.method private constructor blacklist <init>(I[Landroid/os/VibratorInfo;Landroid/os/VibratorInfo$FrequencyProfileLegacy;Landroid/os/VibratorInfo$FrequencyProfile;)V
    .registers 24

    .line 58
    move-object/from16 v0, p2

    .line 60
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/os/vibrator/Flags;->normalizedPwleEffects()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-virtual/range {p4 .. p4}, Landroid/os/VibratorInfo$FrequencyProfile;->isEmpty()Z

    move-result v1

    goto :goto_11

    .line 61
    :cond_d
    invoke-virtual/range {p3 .. p3}, Landroid/os/VibratorInfo$FrequencyProfileLegacy;->isEmpty()Z

    move-result v1

    .line 59
    :goto_11
    invoke-static {v0, v1}, Landroid/os/vibrator/MultiVibratorInfo;->capabilitiesIntersection([Landroid/os/VibratorInfo;Z)I

    move-result v1

    int-to-long v4, v1

    .line 62
    invoke-static {v0}, Landroid/os/vibrator/MultiVibratorInfo;->supportedEffectsIntersection([Landroid/os/VibratorInfo;)Landroid/util/SparseBooleanArray;

    move-result-object v6

    .line 63
    invoke-static {v0}, Landroid/os/vibrator/MultiVibratorInfo;->supportedBrakingIntersection([Landroid/os/VibratorInfo;)Landroid/util/SparseBooleanArray;

    move-result-object v7

    .line 64
    invoke-static {v0}, Landroid/os/vibrator/MultiVibratorInfo;->supportedPrimitivesAndDurationsIntersection([Landroid/os/VibratorInfo;)Landroid/util/SparseIntArray;

    move-result-object v8

    new-instance v1, Landroid/os/vibrator/MultiVibratorInfo$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/os/vibrator/MultiVibratorInfo$$ExternalSyntheticLambda0;-><init>()V

    .line 65
    invoke-static {v0, v1}, Landroid/os/vibrator/MultiVibratorInfo;->integerLimitIntersection([Landroid/os/VibratorInfo;Ljava/util/function/Function;)I

    move-result v9

    new-instance v1, Landroid/os/vibrator/MultiVibratorInfo$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Landroid/os/vibrator/MultiVibratorInfo$$ExternalSyntheticLambda1;-><init>()V

    .line 66
    invoke-static {v0, v1}, Landroid/os/vibrator/MultiVibratorInfo;->integerLimitIntersection([Landroid/os/VibratorInfo;Ljava/util/function/Function;)I

    move-result v10

    new-instance v1, Landroid/os/vibrator/MultiVibratorInfo$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Landroid/os/vibrator/MultiVibratorInfo$$ExternalSyntheticLambda2;-><init>()V

    .line 67
    invoke-static {v0, v1}, Landroid/os/vibrator/MultiVibratorInfo;->integerLimitIntersection([Landroid/os/VibratorInfo;Ljava/util/function/Function;)I

    move-result v11

    new-instance v1, Landroid/os/vibrator/MultiVibratorInfo$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Landroid/os/vibrator/MultiVibratorInfo$$ExternalSyntheticLambda3;-><init>()V

    .line 68
    invoke-static {v0, v1}, Landroid/os/vibrator/MultiVibratorInfo;->integerLimitIntersection([Landroid/os/VibratorInfo;Ljava/util/function/Function;)I

    move-result v12

    new-instance v1, Landroid/os/vibrator/MultiVibratorInfo$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Landroid/os/vibrator/MultiVibratorInfo$$ExternalSyntheticLambda4;-><init>()V

    .line 69
    invoke-static {v0, v1}, Landroid/os/vibrator/MultiVibratorInfo;->floatPropertyIntersection([Landroid/os/VibratorInfo;Ljava/util/function/Function;)F

    move-result v13

    new-instance v1, Landroid/os/vibrator/MultiVibratorInfo$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Landroid/os/vibrator/MultiVibratorInfo$$ExternalSyntheticLambda5;-><init>()V

    .line 72
    invoke-static {v0, v1}, Landroid/os/vibrator/MultiVibratorInfo;->integerLimitIntersection([Landroid/os/VibratorInfo;Ljava/util/function/Function;)I

    move-result v16

    new-instance v1, Landroid/os/vibrator/MultiVibratorInfo$$ExternalSyntheticLambda6;

    invoke-direct {v1}, Landroid/os/vibrator/MultiVibratorInfo$$ExternalSyntheticLambda6;-><init>()V

    .line 74
    invoke-static {v0, v1}, Landroid/os/vibrator/MultiVibratorInfo;->integerLimitIntersection([Landroid/os/VibratorInfo;Ljava/util/function/Function;)I

    move-result v17

    new-instance v1, Landroid/os/vibrator/MultiVibratorInfo$$ExternalSyntheticLambda7;

    invoke-direct {v1}, Landroid/os/vibrator/MultiVibratorInfo$$ExternalSyntheticLambda7;-><init>()V

    .line 76
    invoke-static {v0, v1}, Landroid/os/vibrator/MultiVibratorInfo;->integerLimitIntersection([Landroid/os/VibratorInfo;Ljava/util/function/Function;)I

    move-result v18

    .line 58
    move-object/from16 v2, p0

    move/from16 v3, p1

    move-object/from16 v14, p3

    move-object/from16 v15, p4

    invoke-direct/range {v2 .. v18}, Landroid/os/VibratorInfo;-><init>(IJLandroid/util/SparseBooleanArray;Landroid/util/SparseBooleanArray;Landroid/util/SparseIntArray;IIIIFLandroid/os/VibratorInfo$FrequencyProfileLegacy;Landroid/os/VibratorInfo$FrequencyProfile;III)V

    .line 78
    return-void
.end method

.method private static blacklist capabilitiesIntersection([Landroid/os/VibratorInfo;Z)I
    .registers 10

    .line 82
    nop

    .line 83
    array-length v0, p0

    const/4 v1, -0x1

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v0, :cond_13

    aget-object v3, p0, v2

    .line 84
    int-to-long v4, v1

    invoke-virtual {v3}, Landroid/os/VibratorInfo;->getCapabilities()J

    move-result-wide v6

    and-long v3, v4, v6

    long-to-int v1, v3

    .line 83
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 86
    :cond_13
    if-eqz p1, :cond_17

    .line 88
    and-int/lit16 v1, v1, -0x201

    .line 90
    :cond_17
    return v1
.end method

.method private static blacklist floatPropertyIntersection([Landroid/os/VibratorInfo;Ljava/util/function/Function;)F
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/os/VibratorInfo;",
            "Ljava/util/function/Function<",
            "Landroid/os/VibratorInfo;",
            "Ljava/lang/Float;",
            ">;)F"
        }
    .end annotation

    .line 206
    const/4 v0, 0x0

    aget-object v0, p0, v0

    invoke-interface {p1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 207
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    const/high16 v2, 0x7fc00000    # Float.NaN

    if-eqz v1, :cond_16

    .line 209
    return v2

    .line 211
    :cond_16
    const/4 v1, 0x1

    :goto_17
    array-length v3, p0

    if-ge v1, v3, :cond_30

    .line 212
    aget-object v3, p0, v1

    invoke-interface {p1, v3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-eqz v3, :cond_2d

    .line 214
    return v2

    .line 211
    :cond_2d
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    .line 217
    :cond_30
    return v0
.end method

.method private static blacklist frequencyProfileIntersection([Landroid/os/VibratorInfo;)Landroid/os/VibratorInfo$FrequencyProfile;
    .registers 15

    .line 222
    const/high16 v0, 0x7fc00000    # Float.NaN

    const/4 v1, 0x0

    if-eqz p0, :cond_fd

    array-length v2, p0

    if-nez v2, :cond_a

    goto/16 :goto_fd

    .line 227
    :cond_a
    new-instance v2, Landroid/os/vibrator/MultiVibratorInfo$$ExternalSyntheticLambda9;

    invoke-direct {v2}, Landroid/os/vibrator/MultiVibratorInfo$$ExternalSyntheticLambda9;-><init>()V

    invoke-static {p0, v2}, Landroid/os/vibrator/MultiVibratorInfo;->floatPropertyIntersection([Landroid/os/VibratorInfo;Ljava/util/function/Function;)F

    move-result v2

    .line 229
    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 230
    new-instance p0, Landroid/os/VibratorInfo$FrequencyProfile;

    invoke-direct {p0, v0, v1, v1}, Landroid/os/VibratorInfo$FrequencyProfile;-><init>(F[F[F)V

    return-object p0

    .line 234
    :cond_1f
    nop

    .line 235
    nop

    .line 236
    new-instance v3, Ljava/util/TreeSet;

    invoke-direct {v3}, Ljava/util/TreeSet;-><init>()V

    .line 238
    array-length v4, p0

    const v5, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v9, v5

    move v8, v6

    :goto_2e
    if-ge v8, v4, :cond_88

    aget-object v10, p0, v8

    .line 239
    invoke-virtual {v10}, Landroid/os/VibratorInfo;->getFrequencyProfile()Landroid/os/VibratorInfo$FrequencyProfile;

    move-result-object v11

    invoke-virtual {v11}, Landroid/os/VibratorInfo$FrequencyProfile;->getMinFrequencyHz()F

    move-result v11

    .line 240
    invoke-virtual {v10}, Landroid/os/VibratorInfo;->getFrequencyProfile()Landroid/os/VibratorInfo$FrequencyProfile;

    move-result-object v12

    invoke-virtual {v12}, Landroid/os/VibratorInfo$FrequencyProfile;->getMaxFrequencyHz()F

    move-result v12

    .line 242
    invoke-static {v11}, Ljava/lang/Float;->isNaN(F)Z

    move-result v13

    if-nez v13, :cond_82

    invoke-static {v12}, Ljava/lang/Float;->isNaN(F)Z

    move-result v13

    if-eqz v13, :cond_4f

    goto :goto_82

    .line 248
    :cond_4f
    invoke-static {v7, v11}, Ljava/lang/Math;->max(FF)F

    move-result v7

    .line 249
    invoke-static {v9, v12}, Ljava/lang/Math;->min(FF)F

    move-result v9

    .line 251
    invoke-virtual {v10}, Landroid/os/VibratorInfo;->getFrequencyProfile()Landroid/os/VibratorInfo$FrequencyProfile;

    move-result-object v11

    invoke-virtual {v11}, Landroid/os/VibratorInfo$FrequencyProfile;->getFrequenciesHz()[F

    move-result-object v11

    if-nez v11, :cond_67

    .line 252
    new-instance p0, Landroid/os/VibratorInfo$FrequencyProfile;

    invoke-direct {p0, v0, v1, v1}, Landroid/os/VibratorInfo$FrequencyProfile;-><init>(F[F[F)V

    return-object p0

    .line 256
    :cond_67
    invoke-virtual {v10}, Landroid/os/VibratorInfo;->getFrequencyProfile()Landroid/os/VibratorInfo$FrequencyProfile;

    move-result-object v10

    invoke-virtual {v10}, Landroid/os/VibratorInfo$FrequencyProfile;->getFrequenciesHz()[F

    move-result-object v10

    array-length v11, v10

    move v12, v6

    :goto_71
    if-ge v12, v11, :cond_7f

    aget v13, v10, v12

    .line 257
    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    invoke-interface {v3, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 256
    add-int/lit8 v12, v12, 0x1

    goto :goto_71

    .line 238
    :cond_7f
    add-int/lit8 v8, v8, 0x1

    goto :goto_2e

    .line 244
    :cond_82
    :goto_82
    new-instance p0, Landroid/os/VibratorInfo$FrequencyProfile;

    invoke-direct {p0, v0, v1, v1}, Landroid/os/VibratorInfo$FrequencyProfile;-><init>(F[F[F)V

    return-object p0

    .line 261
    :cond_88
    cmpl-float v4, v7, v9

    if-lez v4, :cond_92

    .line 263
    new-instance p0, Landroid/os/VibratorInfo$FrequencyProfile;

    invoke-direct {p0, v0, v1, v1}, Landroid/os/VibratorInfo$FrequencyProfile;-><init>(F[F[F)V

    return-object p0

    .line 268
    :cond_92
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 269
    :goto_96
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b2

    .line 270
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 271
    cmpg-float v4, v1, v7

    if-ltz v4, :cond_ae

    cmpl-float v1, v1, v9

    if-lez v1, :cond_b1

    .line 272
    :cond_ae
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 274
    :cond_b1
    goto :goto_96

    .line 276
    :cond_b2
    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v0

    new-array v0, v0, [F

    .line 277
    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [F

    .line 278
    nop

    .line 280
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v4, v6

    :goto_c4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_f7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Float;

    .line 281
    nop

    .line 282
    array-length v8, p0

    move v10, v5

    move v9, v6

    :goto_d4
    if-ge v9, v8, :cond_ec

    aget-object v11, p0, v9

    .line 284
    nop

    .line 285
    invoke-virtual {v11}, Landroid/os/VibratorInfo;->getFrequencyProfile()Landroid/os/VibratorInfo$FrequencyProfile;

    move-result-object v11

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v12

    invoke-virtual {v11, v12}, Landroid/os/VibratorInfo$FrequencyProfile;->getOutputAccelerationGs(F)F

    move-result v11

    .line 284
    invoke-static {v10, v11}, Ljava/lang/Math;->min(FF)F

    move-result v10

    .line 282
    add-int/lit8 v9, v9, 0x1

    goto :goto_d4

    .line 287
    :cond_ec
    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    aput v7, v0, v4

    .line 288
    aput v10, v1, v4

    .line 289
    add-int/lit8 v4, v4, 0x1

    .line 290
    goto :goto_c4

    .line 292
    :cond_f7
    new-instance p0, Landroid/os/VibratorInfo$FrequencyProfile;

    invoke-direct {p0, v2, v0, v1}, Landroid/os/VibratorInfo$FrequencyProfile;-><init>(F[F[F)V

    return-object p0

    .line 223
    :cond_fd
    :goto_fd
    new-instance p0, Landroid/os/VibratorInfo$FrequencyProfile;

    invoke-direct {p0, v0, v1, v1}, Landroid/os/VibratorInfo$FrequencyProfile;-><init>(F[F[F)V

    return-object p0
.end method

.method private static blacklist frequencyProfileLegacyIntersection([Landroid/os/VibratorInfo;)Landroid/os/VibratorInfo$FrequencyProfileLegacy;
    .registers 16

    .line 297
    new-instance v0, Landroid/os/vibrator/MultiVibratorInfo$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Landroid/os/vibrator/MultiVibratorInfo$$ExternalSyntheticLambda8;-><init>()V

    invoke-static {p0, v0}, Landroid/os/vibrator/MultiVibratorInfo;->floatPropertyIntersection([Landroid/os/VibratorInfo;Ljava/util/function/Function;)F

    move-result v0

    .line 299
    new-instance v1, Landroid/os/vibrator/MultiVibratorInfo$$ExternalSyntheticLambda9;

    invoke-direct {v1}, Landroid/os/vibrator/MultiVibratorInfo$$ExternalSyntheticLambda9;-><init>()V

    invoke-static {p0, v1}, Landroid/os/vibrator/MultiVibratorInfo;->floatPropertyIntersection([Landroid/os/VibratorInfo;Ljava/util/function/Function;)F

    move-result v1

    .line 301
    invoke-static {p0, v0}, Landroid/os/vibrator/MultiVibratorInfo;->frequencyRangeIntersection([Landroid/os/VibratorInfo;F)Landroid/util/Range;

    move-result-object v2

    .line 303
    const/4 v3, 0x0

    const/high16 v4, 0x7fc00000    # Float.NaN

    if-eqz v2, :cond_d6

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_23

    goto/16 :goto_d6

    .line 307
    :cond_23
    nop

    .line 308
    invoke-virtual {v2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-virtual {v2}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    sub-float/2addr v5, v6

    div-float/2addr v5, v0

    const/high16 v6, 0x3f800000    # 1.0f

    add-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 309
    new-array v6, v5, [F

    .line 314
    const v7, 0x7f7fffff    # Float.MAX_VALUE

    invoke-static {v6, v7}, Ljava/util/Arrays;->fill([FF)V

    .line 316
    array-length v7, p0

    const/4 v8, 0x0

    move v9, v8

    :goto_4c
    if-ge v9, v7, :cond_c6

    aget-object v10, p0, v9

    .line 317
    invoke-virtual {v10}, Landroid/os/VibratorInfo;->getFrequencyProfileLegacy()Landroid/os/VibratorInfo$FrequencyProfileLegacy;

    move-result-object v11

    invoke-virtual {v11}, Landroid/os/VibratorInfo$FrequencyProfileLegacy;->getFrequencyRangeHz()Landroid/util/Range;

    move-result-object v11

    .line 318
    invoke-virtual {v10}, Landroid/os/VibratorInfo;->getFrequencyProfileLegacy()Landroid/os/VibratorInfo$FrequencyProfileLegacy;

    move-result-object v12

    invoke-virtual {v12}, Landroid/os/VibratorInfo$FrequencyProfileLegacy;->getMaxAmplitudes()[F

    move-result-object v12

    .line 319
    nop

    .line 320
    invoke-virtual {v2}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v13

    check-cast v13, Ljava/lang/Float;

    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v13

    invoke-virtual {v11}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v11

    check-cast v11, Ljava/lang/Float;

    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v11

    sub-float/2addr v13, v11

    div-float/2addr v13, v0

    .line 319
    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v11

    .line 321
    add-int v13, v11, v5

    add-int/lit8 v13, v13, -0x1

    .line 323
    if-ltz v11, :cond_9a

    array-length v14, v12

    if-lt v13, v14, :cond_85

    goto :goto_9a

    .line 330
    :cond_85
    move v10, v8

    :goto_86
    if-ge v10, v5, :cond_97

    .line 331
    aget v13, v6, v10

    add-int v14, v11, v10

    aget v14, v12, v14

    invoke-static {v13, v14}, Ljava/lang/Math;->min(FF)F

    move-result v13

    aput v13, v6, v10

    .line 330
    add-int/lit8 v10, v10, 0x1

    goto :goto_86

    .line 316
    :cond_97
    add-int/lit8 v9, v9, 0x1

    goto :goto_4c

    .line 324
    :cond_9a
    :goto_9a
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error calculating the intersection of vibrator frequency profiles: attempted to fetch from vibrator "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 326
    invoke-virtual {v10}, Landroid/os/VibratorInfo;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " max amplitude with bad index "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 324
    const-string v0, "MultiVibratorInfo"

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    new-instance p0, Landroid/os/VibratorInfo$FrequencyProfileLegacy;

    invoke-direct {p0, v1, v4, v4, v3}, Landroid/os/VibratorInfo$FrequencyProfileLegacy;-><init>(FFF[F)V

    return-object p0

    .line 336
    :cond_c6
    new-instance p0, Landroid/os/VibratorInfo$FrequencyProfileLegacy;

    invoke-virtual {v2}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-direct {p0, v1, v2, v0, v6}, Landroid/os/VibratorInfo$FrequencyProfileLegacy;-><init>(FFF[F)V

    return-object p0

    .line 304
    :cond_d6
    :goto_d6
    new-instance p0, Landroid/os/VibratorInfo$FrequencyProfileLegacy;

    invoke-direct {p0, v1, v4, v0, v3}, Landroid/os/VibratorInfo$FrequencyProfileLegacy;-><init>(FFF[F)V

    return-object p0
.end method

.method private static blacklist frequencyRangeIntersection([Landroid/os/VibratorInfo;F)Landroid/util/Range;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/os/VibratorInfo;",
            "F)",
            "Landroid/util/Range<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 343
    const/4 v0, 0x0

    aget-object v0, p0, v0

    invoke-virtual {v0}, Landroid/os/VibratorInfo;->getFrequencyProfileLegacy()Landroid/os/VibratorInfo$FrequencyProfileLegacy;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/VibratorInfo$FrequencyProfileLegacy;->getFrequencyRangeHz()Landroid/util/Range;

    move-result-object v0

    .line 344
    const/4 v1, 0x0

    if-nez v0, :cond_f

    .line 346
    return-object v1

    .line 348
    :cond_f
    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 349
    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 354
    const/4 v3, 0x1

    :goto_24
    array-length v4, p0

    if-ge v3, v4, :cond_8a

    .line 355
    aget-object v4, p0, v3

    invoke-virtual {v4}, Landroid/os/VibratorInfo;->getFrequencyProfileLegacy()Landroid/os/VibratorInfo$FrequencyProfileLegacy;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/VibratorInfo$FrequencyProfileLegacy;->getFrequencyRangeHz()Landroid/util/Range;

    move-result-object v4

    .line 356
    if-nez v4, :cond_34

    .line 358
    return-object v1

    .line 361
    :cond_34
    invoke-virtual {v4}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    cmpl-float v5, v5, v0

    if-gez v5, :cond_89

    .line 362
    invoke-virtual {v4}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    cmpg-float v5, v5, v2

    if-gtz v5, :cond_51

    goto :goto_89

    .line 367
    :cond_51
    invoke-virtual {v4}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    sub-float v5, v2, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 368
    rem-float/2addr v5, p1

    const v6, 0x3727c5ac    # 1.0E-5f

    cmpl-float v5, v5, v6

    if-lez v5, :cond_6a

    .line 370
    return-object v1

    .line 373
    :cond_6a
    invoke-virtual {v4}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-static {v2, v5}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 374
    invoke-virtual {v4}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-static {v0, v4}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 354
    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    .line 364
    :cond_89
    :goto_89
    return-object v1

    .line 377
    :cond_8a
    sub-float p0, v0, v2

    cmpg-float p0, p0, p1

    if-gez p0, :cond_91

    .line 379
    return-object v1

    .line 382
    :cond_91
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist integerLimitIntersection([Landroid/os/VibratorInfo;Ljava/util/function/Function;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/os/VibratorInfo;",
            "Ljava/util/function/Function<",
            "Landroid/os/VibratorInfo;",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 192
    nop

    .line 193
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_4
    if-ge v1, v0, :cond_1c

    aget-object v3, p0, v1

    .line 194
    invoke-interface {p1, v3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 195
    if-eqz v2, :cond_18

    if-lez v3, :cond_19

    if-ge v3, v2, :cond_19

    .line 198
    :cond_18
    move v2, v3

    .line 193
    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 201
    :cond_1c
    return v2
.end method

.method static synthetic blacklist lambda$frequencyProfileLegacyIntersection$0(Landroid/os/VibratorInfo;)Ljava/lang/Float;
    .registers 1

    .line 298
    invoke-virtual {p0}, Landroid/os/VibratorInfo;->getFrequencyProfileLegacy()Landroid/os/VibratorInfo$FrequencyProfileLegacy;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/VibratorInfo$FrequencyProfileLegacy;->getFrequencyResolutionHz()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist supportedBrakingIntersection([Landroid/os/VibratorInfo;)Landroid/util/SparseBooleanArray;
    .registers 8

    .line 95
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_3
    if-ge v2, v0, :cond_12

    aget-object v3, p0, v2

    .line 96
    invoke-virtual {v3}, Landroid/os/VibratorInfo;->isBrakingSupportKnown()Z

    move-result v3

    if-nez v3, :cond_f

    .line 98
    const/4 p0, 0x0

    return-object p0

    .line 95
    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 102
    :cond_12
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 103
    aget-object v2, p0, v1

    invoke-virtual {v2}, Landroid/os/VibratorInfo;->getSupportedBraking()Landroid/util/SparseBooleanArray;

    move-result-object v2

    .line 106
    nop

    :goto_1e
    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_46

    .line 107
    invoke-virtual {v2, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    .line 108
    invoke-virtual {v2, v1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v4

    if-nez v4, :cond_2f

    .line 110
    goto :goto_43

    .line 113
    :cond_2f
    const/4 v4, 0x1

    move v5, v4

    :goto_31
    array-length v6, p0

    if-ge v5, v6, :cond_40

    .line 114
    aget-object v6, p0, v5

    invoke-virtual {v6, v3}, Landroid/os/VibratorInfo;->hasBrakingSupport(I)Z

    move-result v6

    if-nez v6, :cond_3d

    .line 116
    goto :goto_43

    .line 113
    :cond_3d
    add-int/lit8 v5, v5, 0x1

    goto :goto_31

    .line 120
    :cond_40
    invoke-virtual {v0, v3, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 106
    :goto_43
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    .line 123
    :cond_46
    return-object v0
.end method

.method private static blacklist supportedEffectsIntersection([Landroid/os/VibratorInfo;)Landroid/util/SparseBooleanArray;
    .registers 8

    .line 128
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_3
    if-ge v2, v0, :cond_12

    aget-object v3, p0, v2

    .line 129
    invoke-virtual {v3}, Landroid/os/VibratorInfo;->isEffectSupportKnown()Z

    move-result v3

    if-nez v3, :cond_f

    .line 131
    const/4 p0, 0x0

    return-object p0

    .line 128
    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 135
    :cond_12
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 136
    aget-object v2, p0, v1

    invoke-virtual {v2}, Landroid/os/VibratorInfo;->getSupportedEffects()Landroid/util/SparseBooleanArray;

    move-result-object v2

    .line 139
    nop

    :goto_1e
    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_46

    .line 140
    invoke-virtual {v2, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    .line 141
    invoke-virtual {v2, v1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v4

    if-nez v4, :cond_2f

    .line 143
    goto :goto_43

    .line 146
    :cond_2f
    const/4 v4, 0x1

    move v5, v4

    :goto_31
    array-length v6, p0

    if-ge v5, v6, :cond_40

    .line 147
    aget-object v6, p0, v5

    invoke-virtual {v6, v3}, Landroid/os/VibratorInfo;->isEffectSupported(I)I

    move-result v6

    if-eq v6, v4, :cond_3d

    .line 149
    goto :goto_43

    .line 146
    :cond_3d
    add-int/lit8 v5, v5, 0x1

    goto :goto_31

    .line 153
    :cond_40
    invoke-virtual {v0, v3, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 139
    :goto_43
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    .line 156
    :cond_46
    return-object v0
.end method

.method private static blacklist supportedPrimitivesAndDurationsIntersection([Landroid/os/VibratorInfo;)Landroid/util/SparseIntArray;
    .registers 8

    .line 162
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 163
    const/4 v1, 0x0

    aget-object v2, p0, v1

    invoke-virtual {v2}, Landroid/os/VibratorInfo;->getSupportedPrimitives()Landroid/util/SparseIntArray;

    move-result-object v2

    .line 166
    nop

    :goto_d
    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_38

    .line 167
    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    .line 168
    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v4

    .line 169
    if-nez v4, :cond_1e

    .line 171
    goto :goto_35

    .line 174
    :cond_1e
    const/4 v5, 0x1

    :goto_1f
    array-length v6, p0

    if-ge v5, v6, :cond_32

    .line 175
    aget-object v6, p0, v5

    invoke-virtual {v6, v3}, Landroid/os/VibratorInfo;->getPrimitiveDuration(I)I

    move-result v6

    .line 176
    if-nez v6, :cond_2b

    .line 178
    goto :goto_35

    .line 181
    :cond_2b
    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 174
    add-int/lit8 v5, v5, 0x1

    goto :goto_1f

    .line 185
    :cond_32
    invoke-virtual {v0, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 166
    :goto_35
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 187
    :cond_38
    return-object v0
.end method
