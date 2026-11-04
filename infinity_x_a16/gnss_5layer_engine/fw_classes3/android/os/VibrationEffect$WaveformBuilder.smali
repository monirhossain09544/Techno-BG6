.class public final Landroid/os/VibrationEffect$WaveformBuilder;
.super Ljava/lang/Object;
.source "VibrationEffect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/VibrationEffect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WaveformBuilder"
.end annotation


# static fields
.field private static final blacklist EPSILON:F = 1.0E-5f


# instance fields
.field private blacklist mLastAmplitude:F

.field private blacklist mLastFrequencyHz:F

.field private blacklist mSegments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/os/vibrator/VibrationEffectSegment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>()V
    .registers 2

    .line 2265
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2261
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/os/VibrationEffect$WaveformBuilder;->mSegments:Ljava/util/ArrayList;

    .line 2262
    const/4 v0, 0x0

    iput v0, p0, Landroid/os/VibrationEffect$WaveformBuilder;->mLastAmplitude:F

    .line 2263
    iput v0, p0, Landroid/os/VibrationEffect$WaveformBuilder;->mLastFrequencyHz:F

    .line 2265
    return-void
.end method

.method private blacklist addTransitionSegment(Ljava/time/Duration;FF)V
    .registers 12

    .line 2414
    const-string v0, "Duration is null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2415
    invoke-virtual {p1}, Ljava/time/Duration;->isNegative()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Transition duration must be non-negative"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 2417
    invoke-virtual {p1}, Ljava/time/Duration;->toMillis()J

    move-result-wide v0

    long-to-int v7, v0

    .line 2420
    if-lez v7, :cond_4e

    .line 2421
    iget p1, p0, Landroid/os/VibrationEffect$WaveformBuilder;->mLastAmplitude:F

    sub-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const v0, 0x3727c5ac    # 1.0E-5f

    cmpg-float p1, p1, v0

    if-gez p1, :cond_3d

    iget p1, p0, Landroid/os/VibrationEffect$WaveformBuilder;->mLastFrequencyHz:F

    sub-float/2addr p1, p3

    .line 2422
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpg-float p1, p1, v0

    if-gez p1, :cond_3d

    .line 2424
    iget-object p1, p0, Landroid/os/VibrationEffect$WaveformBuilder;->mSegments:Ljava/util/ArrayList;

    new-instance v0, Landroid/os/vibrator/StepSegment;

    invoke-direct {v0, p2, p3, v7}, Landroid/os/vibrator/StepSegment;-><init>(FFI)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v4, p2

    move v6, p3

    goto :goto_50

    .line 2426
    :cond_3d
    iget-object p1, p0, Landroid/os/VibrationEffect$WaveformBuilder;->mSegments:Ljava/util/ArrayList;

    new-instance v2, Landroid/os/vibrator/RampSegment;

    iget v3, p0, Landroid/os/VibrationEffect$WaveformBuilder;->mLastAmplitude:F

    iget v5, p0, Landroid/os/VibrationEffect$WaveformBuilder;->mLastFrequencyHz:F

    move v4, p2

    move v6, p3

    invoke-direct/range {v2 .. v7}, Landroid/os/vibrator/RampSegment;-><init>(FFFFI)V

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_50

    .line 2420
    :cond_4e
    move v4, p2

    move v6, p3

    .line 2431
    :goto_50
    iput v4, p0, Landroid/os/VibrationEffect$WaveformBuilder;->mLastAmplitude:F

    .line 2432
    iput v6, p0, Landroid/os/VibrationEffect$WaveformBuilder;->mLastFrequencyHz:F

    .line 2433
    return-void
.end method

.method private blacklist checkVibrationParameter(Landroid/os/VibrationEffect$VibrationParameter;Ljava/lang/String;)V
    .registers 5

    .line 2383
    const-string v0, "%s is null"

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 2384
    instance-of v0, p1, Landroid/os/VibrationEffect$AmplitudeVibrationParameter;

    if-nez v0, :cond_14

    instance-of p1, p1, Landroid/os/VibrationEffect$FrequencyVibrationParameter;

    if-eqz p1, :cond_12

    goto :goto_14

    :cond_12
    const/4 p1, 0x0

    goto :goto_15

    :cond_14
    :goto_14
    const/4 p1, 0x1

    :goto_15
    const-string v0, "%s is a unknown parameter"

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, v0, p2}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 2388
    return-void
.end method

.method private blacklist extractTargetAmplitude(Landroid/os/VibrationEffect$VibrationParameter;Landroid/os/VibrationEffect$VibrationParameter;)F
    .registers 4

    .line 2392
    instance-of v0, p2, Landroid/os/VibrationEffect$AmplitudeVibrationParameter;

    if-eqz v0, :cond_9

    .line 2393
    check-cast p2, Landroid/os/VibrationEffect$AmplitudeVibrationParameter;

    iget p1, p2, Landroid/os/VibrationEffect$AmplitudeVibrationParameter;->amplitude:F

    return p1

    .line 2395
    :cond_9
    instance-of p2, p1, Landroid/os/VibrationEffect$AmplitudeVibrationParameter;

    if-eqz p2, :cond_12

    .line 2396
    check-cast p1, Landroid/os/VibrationEffect$AmplitudeVibrationParameter;

    iget p1, p1, Landroid/os/VibrationEffect$AmplitudeVibrationParameter;->amplitude:F

    return p1

    .line 2398
    :cond_12
    iget p1, p0, Landroid/os/VibrationEffect$WaveformBuilder;->mLastAmplitude:F

    return p1
.end method

.method private blacklist extractTargetFrequency(Landroid/os/VibrationEffect$VibrationParameter;Landroid/os/VibrationEffect$VibrationParameter;)F
    .registers 4

    .line 2403
    instance-of v0, p2, Landroid/os/VibrationEffect$FrequencyVibrationParameter;

    if-eqz v0, :cond_9

    .line 2404
    check-cast p2, Landroid/os/VibrationEffect$FrequencyVibrationParameter;

    iget p1, p2, Landroid/os/VibrationEffect$FrequencyVibrationParameter;->frequencyHz:F

    return p1

    .line 2406
    :cond_9
    instance-of p2, p1, Landroid/os/VibrationEffect$FrequencyVibrationParameter;

    if-eqz p2, :cond_12

    .line 2407
    check-cast p1, Landroid/os/VibrationEffect$FrequencyVibrationParameter;

    iget p1, p1, Landroid/os/VibrationEffect$FrequencyVibrationParameter;->frequencyHz:F

    return p1

    .line 2409
    :cond_12
    iget p1, p0, Landroid/os/VibrationEffect$WaveformBuilder;->mLastFrequencyHz:F

    return p1
.end method


# virtual methods
.method public blacklist addSustain(Ljava/time/Duration;)Landroid/os/VibrationEffect$WaveformBuilder;
    .registers 6

    .line 2353
    invoke-virtual {p1}, Ljava/time/Duration;->toMillis()J

    move-result-wide v0

    long-to-int p1, v0

    .line 2354
    const/4 v0, 0x1

    if-lt p1, v0, :cond_9

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    const-string v1, "Sustain duration must be >= 1ms"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 2355
    iget-object v0, p0, Landroid/os/VibrationEffect$WaveformBuilder;->mSegments:Ljava/util/ArrayList;

    new-instance v1, Landroid/os/vibrator/StepSegment;

    iget v2, p0, Landroid/os/VibrationEffect$WaveformBuilder;->mLastAmplitude:F

    iget v3, p0, Landroid/os/VibrationEffect$WaveformBuilder;->mLastFrequencyHz:F

    invoke-direct {v1, v2, v3, p1}, Landroid/os/vibrator/StepSegment;-><init>(FFI)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2356
    return-object p0
.end method

.method public blacklist addTransition(Ljava/time/Duration;Landroid/os/VibrationEffect$VibrationParameter;)Landroid/os/VibrationEffect$WaveformBuilder;
    .registers 5

    .line 2290
    const-string v0, "Duration is null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2291
    const-string/jumbo v0, "targetParameter"

    invoke-direct {p0, p2, v0}, Landroid/os/VibrationEffect$WaveformBuilder;->checkVibrationParameter(Landroid/os/VibrationEffect$VibrationParameter;Ljava/lang/String;)V

    .line 2292
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Landroid/os/VibrationEffect$WaveformBuilder;->extractTargetAmplitude(Landroid/os/VibrationEffect$VibrationParameter;Landroid/os/VibrationEffect$VibrationParameter;)F

    move-result v1

    .line 2293
    invoke-direct {p0, p2, v0}, Landroid/os/VibrationEffect$WaveformBuilder;->extractTargetFrequency(Landroid/os/VibrationEffect$VibrationParameter;Landroid/os/VibrationEffect$VibrationParameter;)F

    move-result p2

    .line 2294
    invoke-direct {p0, p1, v1, p2}, Landroid/os/VibrationEffect$WaveformBuilder;->addTransitionSegment(Ljava/time/Duration;FF)V

    .line 2295
    return-object p0
.end method

.method public blacklist addTransition(Ljava/time/Duration;Landroid/os/VibrationEffect$VibrationParameter;Landroid/os/VibrationEffect$VibrationParameter;)Landroid/os/VibrationEffect$WaveformBuilder;
    .registers 6

    .line 2325
    const-string v0, "Duration is null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2326
    const-string/jumbo v0, "targetParameter1"

    invoke-direct {p0, p2, v0}, Landroid/os/VibrationEffect$WaveformBuilder;->checkVibrationParameter(Landroid/os/VibrationEffect$VibrationParameter;Ljava/lang/String;)V

    .line 2327
    const-string/jumbo v0, "targetParameter2"

    invoke-direct {p0, p3, v0}, Landroid/os/VibrationEffect$WaveformBuilder;->checkVibrationParameter(Landroid/os/VibrationEffect$VibrationParameter;Ljava/lang/String;)V

    .line 2328
    nop

    .line 2329
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 2328
    const-string v1, "Parameter arguments must specify different parameter types"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 2331
    invoke-direct {p0, p2, p3}, Landroid/os/VibrationEffect$WaveformBuilder;->extractTargetAmplitude(Landroid/os/VibrationEffect$VibrationParameter;Landroid/os/VibrationEffect$VibrationParameter;)F

    move-result v0

    .line 2332
    invoke-direct {p0, p2, p3}, Landroid/os/VibrationEffect$WaveformBuilder;->extractTargetFrequency(Landroid/os/VibrationEffect$VibrationParameter;Landroid/os/VibrationEffect$VibrationParameter;)F

    move-result p2

    .line 2333
    invoke-direct {p0, p1, v0, p2}, Landroid/os/VibrationEffect$WaveformBuilder;->addTransitionSegment(Ljava/time/Duration;FF)V

    .line 2334
    return-object p0
.end method

.method public blacklist build()Landroid/os/VibrationEffect;
    .registers 4

    .line 2372
    iget-object v0, p0, Landroid/os/VibrationEffect$WaveformBuilder;->mSegments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_14

    .line 2376
    new-instance v0, Landroid/os/VibrationEffect$Composed;

    iget-object v1, p0, Landroid/os/VibrationEffect$WaveformBuilder;->mSegments:Ljava/util/ArrayList;

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/os/VibrationEffect$Composed;-><init>(Ljava/util/List;I)V

    .line 2377
    invoke-virtual {v0}, Landroid/os/VibrationEffect;->validate()V

    .line 2378
    return-object v0

    .line 2373
    :cond_14
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "WaveformBuilder must have at least one transition to build."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
