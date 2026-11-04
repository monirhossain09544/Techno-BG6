.class public Lcom/android/internal/vibrator/persistence/VibrationEffectSerializer;
.super Ljava/lang/Object;
.source "VibrationEffectSerializer.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "VibrationEffectSerializer"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist serialize(Landroid/os/VibrationEffect;I)Lcom/android/internal/vibrator/persistence/XmlSerializedVibration;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/VibrationEffect;",
            "I)",
            "Lcom/android/internal/vibrator/persistence/XmlSerializedVibration<",
            "+",
            "Landroid/os/VibrationEffect;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/vibrator/persistence/XmlSerializerException;
        }
    .end annotation

    .line 68
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/os/vibrator/Flags;->vendorVibrationEffects()Z

    move-result v0

    if-eqz v0, :cond_11

    instance-of v0, p0, Landroid/os/VibrationEffect$VendorEffect;

    if-eqz v0, :cond_11

    .line 69
    check-cast p0, Landroid/os/VibrationEffect$VendorEffect;

    .line 70
    invoke-static {p0}, Lcom/android/internal/vibrator/persistence/VibrationEffectSerializer;->serializeVendorEffect(Landroid/os/VibrationEffect$VendorEffect;)Lcom/android/internal/vibrator/persistence/SerializedVendorEffect;

    move-result-object p0

    return-object p0

    .line 73
    :cond_11
    instance-of v0, p0, Landroid/os/VibrationEffect$Composed;

    const-string v1, "Unsupported VibrationEffect type %s"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/internal/vibrator/persistence/XmlValidator;->checkSerializerCondition(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 76
    move-object v0, p0

    check-cast v0, Landroid/os/VibrationEffect$Composed;

    .line 77
    invoke-virtual {v0}, Landroid/os/VibrationEffect$Composed;->getSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    const-string v2, "Unsupported empty VibrationEffect %s"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v1, v2, p0}, Lcom/android/internal/vibrator/persistence/XmlValidator;->checkSerializerCondition(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 80
    invoke-virtual {v0}, Landroid/os/VibrationEffect$Composed;->getSegments()Ljava/util/List;

    move-result-object p0

    .line 81
    invoke-virtual {v0}, Landroid/os/VibrationEffect$Composed;->getRepeatIndex()I

    move-result v0

    .line 84
    if-ltz v0, :cond_47

    .line 85
    invoke-static {p0, v0}, Lcom/android/internal/vibrator/persistence/VibrationEffectSerializer;->trySerializeRepeatingAmplitudeWaveformEffect(Ljava/util/List;I)Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;

    move-result-object v1

    .line 86
    if-nez v1, :cond_4b

    .line 87
    invoke-static {p0, v0, p1}, Lcom/android/internal/vibrator/persistence/VibrationEffectSerializer;->serializeRepeatingEffect(Ljava/util/List;II)Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;

    move-result-object v1

    goto :goto_4b

    .line 90
    :cond_47
    invoke-static {p0, p1}, Lcom/android/internal/vibrator/persistence/VibrationEffectSerializer;->serializeNonRepeatingEffect(Ljava/util/List;I)Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;

    move-result-object v1

    .line 93
    :cond_4b
    :goto_4b
    return-object v1
.end method

.method private static blacklist serializeBasicEnvelopeEffect(Ljava/util/List;)Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/vibrator/VibrationEffectSegment;",
            ">;)",
            "Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/vibrator/persistence/XmlSerializerException;
        }
    .end annotation

    .line 206
    new-instance v0, Lcom/android/internal/vibrator/persistence/SerializedBasicEnvelopeEffect$Builder;

    invoke-direct {v0}, Lcom/android/internal/vibrator/persistence/SerializedBasicEnvelopeEffect$Builder;-><init>()V

    .line 207
    const/4 v1, 0x0

    :goto_6
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4c

    .line 208
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Landroid/os/vibrator/BasicPwleSegment;

    .line 209
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    .line 208
    const-string v4, "Unsupported segment for basic envelope effect %s"

    invoke-static {v2, v4, v3}, Lcom/android/internal/vibrator/persistence/XmlValidator;->checkSerializerCondition(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 210
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/vibrator/BasicPwleSegment;

    .line 212
    if-nez v1, :cond_3a

    invoke-virtual {v2}, Landroid/os/vibrator/BasicPwleSegment;->getStartSharpness()F

    move-result v3

    invoke-virtual {v2}, Landroid/os/vibrator/BasicPwleSegment;->getEndSharpness()F

    move-result v4

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_3a

    .line 214
    invoke-virtual {v2}, Landroid/os/vibrator/BasicPwleSegment;->getStartSharpness()F

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/internal/vibrator/persistence/SerializedBasicEnvelopeEffect$Builder;->setInitialSharpness(F)V

    .line 217
    :cond_3a
    invoke-virtual {v2}, Landroid/os/vibrator/BasicPwleSegment;->getEndIntensity()F

    move-result v3

    invoke-virtual {v2}, Landroid/os/vibrator/BasicPwleSegment;->getEndSharpness()F

    move-result v4

    .line 218
    invoke-virtual {v2}, Landroid/os/vibrator/BasicPwleSegment;->getDuration()J

    move-result-wide v5

    .line 217
    invoke-virtual {v0, v3, v4, v5, v6}, Lcom/android/internal/vibrator/persistence/SerializedBasicEnvelopeEffect$Builder;->addControlPoint(FFJ)V

    .line 207
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 221
    :cond_4c
    new-instance p0, Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;

    invoke-virtual {v0}, Lcom/android/internal/vibrator/persistence/SerializedBasicEnvelopeEffect$Builder;->build()Lcom/android/internal/vibrator/persistence/SerializedBasicEnvelopeEffect;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;-><init>(Lcom/android/internal/vibrator/persistence/SerializedComposedEffect$SerializedSegment;)V

    return-object p0
.end method

.method private static blacklist serializeEffectEntries(Ljava/util/List;I)Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/vibrator/VibrationEffectSegment;",
            ">;I)",
            "Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/vibrator/persistence/XmlSerializerException;
        }
    .end annotation

    .line 130
    invoke-static {p0, p1}, Lcom/android/internal/vibrator/persistence/VibrationEffectSerializer;->trySerializeNonWaveformEffect(Ljava/util/List;I)Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;

    move-result-object p1

    .line 131
    if-nez p1, :cond_a

    .line 132
    invoke-static {p0}, Lcom/android/internal/vibrator/persistence/VibrationEffectSerializer;->serializeWaveformEffectEntries(Ljava/util/List;)Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;

    move-result-object p1

    .line 135
    :cond_a
    return-object p1
.end method

.method private static blacklist serializeNonRepeatingEffect(Ljava/util/List;I)Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/vibrator/VibrationEffectSegment;",
            ">;I)",
            "Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/vibrator/persistence/XmlSerializerException;
        }
    .end annotation

    .line 118
    invoke-static {p0, p1}, Lcom/android/internal/vibrator/persistence/VibrationEffectSerializer;->trySerializeNonWaveformEffect(Ljava/util/List;I)Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;

    move-result-object p1

    .line 119
    if-nez p1, :cond_a

    .line 120
    invoke-static {p0}, Lcom/android/internal/vibrator/persistence/VibrationEffectSerializer;->serializeWaveformEffect(Ljava/util/List;)Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;

    move-result-object p1

    .line 123
    :cond_a
    return-object p1
.end method

.method private static blacklist serializePrebakedSegment(Landroid/os/vibrator/VibrationEffectSegment;I)Lcom/android/internal/vibrator/persistence/SerializedPredefinedEffect;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/vibrator/persistence/XmlSerializerException;
        }
    .end annotation

    .line 282
    instance-of v0, p0, Landroid/os/vibrator/PrebakedSegment;

    const-string v1, "Unsupported segment for predefined effect %s"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/internal/vibrator/persistence/XmlValidator;->checkSerializerCondition(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 285
    check-cast p0, Landroid/os/vibrator/PrebakedSegment;

    .line 286
    nop

    .line 287
    invoke-virtual {p0}, Landroid/os/vibrator/PrebakedSegment;->getEffectId()I

    move-result v0

    .line 286
    invoke-static {v0, p1}, Lcom/android/internal/vibrator/persistence/XmlConstants$PredefinedEffectName;->findById(II)Lcom/android/internal/vibrator/persistence/XmlConstants$PredefinedEffectName;

    move-result-object v0

    .line 289
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1c

    move v3, v2

    goto :goto_1d

    :cond_1c
    move v3, v1

    .line 290
    :goto_1d
    invoke-virtual {p0}, Landroid/os/vibrator/PrebakedSegment;->getEffectId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    .line 289
    const-string v5, "Unsupported predefined effect id %s"

    invoke-static {v3, v5, v4}, Lcom/android/internal/vibrator/persistence/XmlValidator;->checkSerializerCondition(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 292
    and-int/2addr p1, v2

    if-nez p1, :cond_4a

    .line 294
    nop

    .line 295
    invoke-virtual {p0}, Landroid/os/vibrator/PrebakedSegment;->shouldFallback()Z

    move-result p1

    if-ne p1, v2, :cond_39

    move v1, v2

    .line 297
    :cond_39
    invoke-virtual {p0}, Landroid/os/vibrator/PrebakedSegment;->shouldFallback()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 294
    const-string v2, "Unsupported predefined effect with should fallback %s"

    invoke-static {v1, v2, p1}, Lcom/android/internal/vibrator/persistence/XmlValidator;->checkSerializerCondition(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 300
    :cond_4a
    new-instance p1, Lcom/android/internal/vibrator/persistence/SerializedPredefinedEffect;

    invoke-virtual {p0}, Landroid/os/vibrator/PrebakedSegment;->shouldFallback()Z

    move-result p0

    invoke-direct {p1, v0, p0}, Lcom/android/internal/vibrator/persistence/SerializedPredefinedEffect;-><init>(Lcom/android/internal/vibrator/persistence/XmlConstants$PredefinedEffectName;Z)V

    return-object p1
.end method

.method private static blacklist serializePredefinedEffect(Ljava/util/List;I)Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/vibrator/VibrationEffectSegment;",
            ">;I)",
            "Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/vibrator/persistence/XmlSerializerException;
        }
    .end annotation

    .line 162
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    :goto_9
    const-string v0, "Unsupported multiple segments in predefined effect: %s"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/android/internal/vibrator/persistence/XmlValidator;->checkSerializerCondition(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 164
    new-instance v0, Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;

    invoke-interface {p0}, Ljava/util/List;->getFirst()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/vibrator/VibrationEffectSegment;

    invoke-static {p0, p1}, Lcom/android/internal/vibrator/persistence/VibrationEffectSerializer;->serializePrebakedSegment(Landroid/os/vibrator/VibrationEffectSegment;I)Lcom/android/internal/vibrator/persistence/SerializedPredefinedEffect;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;-><init>(Lcom/android/internal/vibrator/persistence/SerializedComposedEffect$SerializedSegment;)V

    return-object v0
.end method

.method private static blacklist serializePrimitiveEffect(Ljava/util/List;)Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/vibrator/VibrationEffectSegment;",
            ">;)",
            "Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/vibrator/persistence/XmlSerializerException;
        }
    .end annotation

    .line 174
    nop

    .line 175
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/android/internal/vibrator/persistence/SerializedComposedEffect$SerializedSegment;

    .line 176
    const/4 v1, 0x0

    :goto_8
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1d

    .line 177
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/vibrator/VibrationEffectSegment;

    invoke-static {v2}, Lcom/android/internal/vibrator/persistence/VibrationEffectSerializer;->serializePrimitiveSegment(Landroid/os/vibrator/VibrationEffectSegment;)Lcom/android/internal/vibrator/persistence/SerializedCompositionPrimitive;

    move-result-object v2

    aput-object v2, v0, v1

    .line 176
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 180
    :cond_1d
    new-instance p0, Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;

    invoke-direct {p0, v0}, Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;-><init>([Lcom/android/internal/vibrator/persistence/SerializedComposedEffect$SerializedSegment;)V

    return-object p0
.end method

.method private static blacklist serializePrimitiveSegment(Landroid/os/vibrator/VibrationEffectSegment;)Lcom/android/internal/vibrator/persistence/SerializedCompositionPrimitive;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/vibrator/persistence/XmlSerializerException;
        }
    .end annotation

    .line 305
    instance-of v0, p0, Landroid/os/vibrator/PrimitiveSegment;

    const-string v1, "Unsupported segment for primitive composition %s"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/internal/vibrator/persistence/XmlValidator;->checkSerializerCondition(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 308
    check-cast p0, Landroid/os/vibrator/PrimitiveSegment;

    .line 309
    nop

    .line 310
    invoke-virtual {p0}, Landroid/os/vibrator/PrimitiveSegment;->getPrimitiveId()I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveEffectName;->findById(I)Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveEffectName;

    move-result-object v0

    .line 312
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1c

    move v3, v1

    goto :goto_1d

    :cond_1c
    move v3, v2

    .line 313
    :goto_1d
    invoke-virtual {p0}, Landroid/os/vibrator/PrimitiveSegment;->getPrimitiveId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    .line 312
    const-string v5, "Unsupported primitive effect id %s"

    invoke-static {v3, v5, v4}, Lcom/android/internal/vibrator/persistence/XmlValidator;->checkSerializerCondition(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 315
    nop

    .line 317
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/os/vibrator/Flags;->primitiveCompositionAbsoluteDelay()Z

    move-result v3

    const-string v4, "Unsupported primitive delay type %s"

    if-eqz v3, :cond_53

    .line 318
    invoke-virtual {p0}, Landroid/os/vibrator/PrimitiveSegment;->getDelayType()I

    move-result v3

    invoke-static {v3}, Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveDelayType;->findByType(I)Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveDelayType;

    move-result-object v3

    .line 319
    if-eqz v3, :cond_42

    goto :goto_43

    :cond_42
    move v1, v2

    .line 320
    :goto_43
    invoke-virtual {p0}, Landroid/os/vibrator/PrimitiveSegment;->getDelayType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 319
    invoke-static {v1, v4, v2}, Lcom/android/internal/vibrator/persistence/XmlValidator;->checkSerializerCondition(ZLjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_6c

    .line 322
    :cond_53
    nop

    .line 323
    invoke-virtual {p0}, Landroid/os/vibrator/PrimitiveSegment;->getDelayType()I

    move-result v3

    if-nez v3, :cond_5b

    goto :goto_5c

    :cond_5b
    move v1, v2

    .line 324
    :goto_5c
    invoke-virtual {p0}, Landroid/os/vibrator/PrimitiveSegment;->getDelayType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 322
    invoke-static {v1, v4, v2}, Lcom/android/internal/vibrator/persistence/XmlValidator;->checkSerializerCondition(ZLjava/lang/String;[Ljava/lang/Object;)V

    const/4 v3, 0x0

    .line 327
    :goto_6c
    new-instance v1, Lcom/android/internal/vibrator/persistence/SerializedCompositionPrimitive;

    .line 328
    invoke-virtual {p0}, Landroid/os/vibrator/PrimitiveSegment;->getScale()F

    move-result v2

    invoke-virtual {p0}, Landroid/os/vibrator/PrimitiveSegment;->getDelay()I

    move-result p0

    invoke-direct {v1, v0, v2, p0, v3}, Lcom/android/internal/vibrator/persistence/SerializedCompositionPrimitive;-><init>(Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveEffectName;FILcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveDelayType;)V

    .line 327
    return-object v1
.end method

.method private static blacklist serializeRepeatingEffect(Ljava/util/List;II)Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/vibrator/VibrationEffectSegment;",
            ">;II)",
            "Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/vibrator/persistence/XmlSerializerException;
        }
    .end annotation

    .line 100
    new-instance v0, Lcom/android/internal/vibrator/persistence/SerializedRepeatingEffect$Builder;

    invoke-direct {v0}, Lcom/android/internal/vibrator/persistence/SerializedRepeatingEffect$Builder;-><init>()V

    .line 101
    if-lez p1, :cond_1b

    .line 102
    const/4 v1, 0x0

    invoke-interface {p0, v1, p1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    .line 103
    invoke-static {v1, p2}, Lcom/android/internal/vibrator/persistence/VibrationEffectSerializer;->serializeEffectEntries(Ljava/util/List;I)Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/vibrator/persistence/SerializedRepeatingEffect$Builder;->setPreamble(Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;)V

    .line 106
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p0, p1, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p0

    .line 109
    :cond_1b
    invoke-static {p0, p2}, Lcom/android/internal/vibrator/persistence/VibrationEffectSerializer;->serializeEffectEntries(Ljava/util/List;I)Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/internal/vibrator/persistence/SerializedRepeatingEffect$Builder;->setRepeating(Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;)V

    .line 111
    new-instance p0, Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;

    invoke-virtual {v0}, Lcom/android/internal/vibrator/persistence/SerializedRepeatingEffect$Builder;->build()Lcom/android/internal/vibrator/persistence/SerializedRepeatingEffect;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;-><init>(Lcom/android/internal/vibrator/persistence/SerializedComposedEffect$SerializedSegment;)V

    return-object p0
.end method

.method private static blacklist serializeStepSegment(Landroid/os/vibrator/VibrationEffectSegment;Ljava/util/function/BiConsumer;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/vibrator/VibrationEffectSegment;",
            "Ljava/util/function/BiConsumer<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/vibrator/persistence/XmlSerializerException;
        }
    .end annotation

    .line 267
    instance-of v0, p0, Landroid/os/vibrator/StepSegment;

    const-string v1, "Unsupported segment for waveform effect %s"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/internal/vibrator/persistence/XmlValidator;->checkSerializerCondition(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 270
    move-object v0, p0

    check-cast v0, Landroid/os/vibrator/StepSegment;

    .line 271
    invoke-virtual {v0}, Landroid/os/vibrator/StepSegment;->getFrequencyHz()F

    move-result v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-nez v1, :cond_1b

    const/4 v1, 0x1

    goto :goto_1c

    :cond_1b
    const/4 v1, 0x0

    .line 273
    :goto_1c
    invoke-virtual {v0}, Landroid/os/vibrator/StepSegment;->getFrequencyHz()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 270
    const-string v3, "Unsupported segment with non-default frequency %f"

    invoke-static {v1, v3, v2}, Lcom/android/internal/vibrator/persistence/XmlValidator;->checkSerializerCondition(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 275
    invoke-virtual {p0}, Landroid/os/vibrator/VibrationEffectSegment;->getDuration()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    .line 276
    invoke-virtual {v0}, Landroid/os/vibrator/StepSegment;->getAmplitude()F

    move-result v0

    invoke-static {v0}, Lcom/android/internal/vibrator/persistence/VibrationEffectSerializer;->toAmplitudeInt(F)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 275
    invoke-interface {p1, p0, v0}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 277
    return-void
.end method

.method private static blacklist serializeVendorEffect(Landroid/os/VibrationEffect$VendorEffect;)Lcom/android/internal/vibrator/persistence/SerializedVendorEffect;
    .registers 2

    .line 169
    new-instance v0, Lcom/android/internal/vibrator/persistence/SerializedVendorEffect;

    invoke-virtual {p0}, Landroid/os/VibrationEffect$VendorEffect;->getVendorData()Landroid/os/PersistableBundle;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/internal/vibrator/persistence/SerializedVendorEffect;-><init>(Landroid/os/PersistableBundle;)V

    return-object v0
.end method

.method private static blacklist serializeWaveformEffect(Ljava/util/List;)Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/vibrator/VibrationEffectSegment;",
            ">;)",
            "Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/vibrator/persistence/XmlSerializerException;
        }
    .end annotation

    .line 245
    new-instance v0, Lcom/android/internal/vibrator/persistence/SerializedAmplitudeStepWaveform$Builder;

    invoke-direct {v0}, Lcom/android/internal/vibrator/persistence/SerializedAmplitudeStepWaveform$Builder;-><init>()V

    .line 247
    const/4 v1, 0x0

    :goto_6
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_20

    .line 248
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/vibrator/VibrationEffectSegment;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/internal/vibrator/persistence/VibrationEffectSerializer$$ExternalSyntheticLambda0;

    invoke-direct {v3, v0}, Lcom/android/internal/vibrator/persistence/VibrationEffectSerializer$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/vibrator/persistence/SerializedAmplitudeStepWaveform$Builder;)V

    invoke-static {v2, v3}, Lcom/android/internal/vibrator/persistence/VibrationEffectSerializer;->serializeStepSegment(Landroid/os/vibrator/VibrationEffectSegment;Ljava/util/function/BiConsumer;)V

    .line 247
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 251
    :cond_20
    new-instance p0, Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;

    invoke-virtual {v0}, Lcom/android/internal/vibrator/persistence/SerializedAmplitudeStepWaveform$Builder;->build()Lcom/android/internal/vibrator/persistence/SerializedAmplitudeStepWaveform;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;-><init>(Lcom/android/internal/vibrator/persistence/SerializedComposedEffect$SerializedSegment;)V

    return-object p0
.end method

.method private static blacklist serializeWaveformEffectEntries(Ljava/util/List;)Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/vibrator/VibrationEffectSegment;",
            ">;)",
            "Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/vibrator/persistence/XmlSerializerException;
        }
    .end annotation

    .line 256
    new-instance v0, Lcom/android/internal/vibrator/persistence/SerializedWaveformEffectEntries$Builder;

    invoke-direct {v0}, Lcom/android/internal/vibrator/persistence/SerializedWaveformEffectEntries$Builder;-><init>()V

    .line 258
    const/4 v1, 0x0

    :goto_6
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_20

    .line 259
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/vibrator/VibrationEffectSegment;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/internal/vibrator/persistence/VibrationEffectSerializer$$ExternalSyntheticLambda1;

    invoke-direct {v3, v0}, Lcom/android/internal/vibrator/persistence/VibrationEffectSerializer$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/vibrator/persistence/SerializedWaveformEffectEntries$Builder;)V

    invoke-static {v2, v3}, Lcom/android/internal/vibrator/persistence/VibrationEffectSerializer;->serializeStepSegment(Landroid/os/vibrator/VibrationEffectSegment;Ljava/util/function/BiConsumer;)V

    .line 258
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 262
    :cond_20
    new-instance p0, Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;

    invoke-virtual {v0}, Lcom/android/internal/vibrator/persistence/SerializedWaveformEffectEntries$Builder;->build()Lcom/android/internal/vibrator/persistence/SerializedWaveformEffectEntries;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;-><init>(Lcom/android/internal/vibrator/persistence/SerializedComposedEffect$SerializedSegment;)V

    return-object p0
.end method

.method private static blacklist serializeWaveformEnvelopeEffect(Ljava/util/List;)Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/vibrator/VibrationEffectSegment;",
            ">;)",
            "Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/vibrator/persistence/XmlSerializerException;
        }
    .end annotation

    .line 185
    new-instance v0, Lcom/android/internal/vibrator/persistence/SerializedWaveformEnvelopeEffect$Builder;

    invoke-direct {v0}, Lcom/android/internal/vibrator/persistence/SerializedWaveformEnvelopeEffect$Builder;-><init>()V

    .line 187
    const/4 v1, 0x0

    :goto_6
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4c

    .line 188
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Landroid/os/vibrator/PwleSegment;

    .line 189
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    .line 188
    const-string v4, "Unsupported segment for waveform envelope effect %s"

    invoke-static {v2, v4, v3}, Lcom/android/internal/vibrator/persistence/XmlValidator;->checkSerializerCondition(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 190
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/vibrator/PwleSegment;

    .line 192
    if-nez v1, :cond_3a

    invoke-virtual {v2}, Landroid/os/vibrator/PwleSegment;->getStartFrequencyHz()F

    move-result v3

    invoke-virtual {v2}, Landroid/os/vibrator/PwleSegment;->getEndFrequencyHz()F

    move-result v4

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_3a

    .line 194
    invoke-virtual {v2}, Landroid/os/vibrator/PwleSegment;->getStartFrequencyHz()F

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/internal/vibrator/persistence/SerializedWaveformEnvelopeEffect$Builder;->setInitialFrequencyHz(F)V

    .line 197
    :cond_3a
    invoke-virtual {v2}, Landroid/os/vibrator/PwleSegment;->getEndAmplitude()F

    move-result v3

    invoke-virtual {v2}, Landroid/os/vibrator/PwleSegment;->getEndFrequencyHz()F

    move-result v4

    .line 198
    invoke-virtual {v2}, Landroid/os/vibrator/PwleSegment;->getDuration()J

    move-result-wide v5

    .line 197
    invoke-virtual {v0, v3, v4, v5, v6}, Lcom/android/internal/vibrator/persistence/SerializedWaveformEnvelopeEffect$Builder;->addControlPoint(FFJ)V

    .line 187
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 201
    :cond_4c
    new-instance p0, Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;

    invoke-virtual {v0}, Lcom/android/internal/vibrator/persistence/SerializedWaveformEnvelopeEffect$Builder;->build()Lcom/android/internal/vibrator/persistence/SerializedWaveformEnvelopeEffect;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;-><init>(Lcom/android/internal/vibrator/persistence/SerializedComposedEffect$SerializedSegment;)V

    return-object p0
.end method

.method private static blacklist toAmplitudeInt(F)I
    .registers 2

    .line 332
    const/high16 v0, -0x40800000    # -1.0f

    invoke-static {p0, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_a

    .line 333
    const/4 p0, -0x1

    goto :goto_11

    .line 334
    :cond_a
    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr p0, v0

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    .line 332
    :goto_11
    return p0
.end method

.method private static blacklist trySerializeNonWaveformEffect(Ljava/util/List;I)Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/vibrator/VibrationEffectSegment;",
            ">;I)",
            "Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/vibrator/persistence/XmlSerializerException;
        }
    .end annotation

    .line 141
    invoke-interface {p0}, Ljava/util/List;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/vibrator/VibrationEffectSegment;

    .line 143
    instance-of v1, v0, Landroid/os/vibrator/PrebakedSegment;

    if-eqz v1, :cond_f

    .line 144
    invoke-static {p0, p1}, Lcom/android/internal/vibrator/persistence/VibrationEffectSerializer;->serializePredefinedEffect(Ljava/util/List;I)Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;

    move-result-object p0

    return-object p0

    .line 146
    :cond_f
    instance-of p1, v0, Landroid/os/vibrator/PrimitiveSegment;

    if-eqz p1, :cond_18

    .line 147
    invoke-static {p0}, Lcom/android/internal/vibrator/persistence/VibrationEffectSerializer;->serializePrimitiveEffect(Ljava/util/List;)Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;

    move-result-object p0

    return-object p0

    .line 149
    :cond_18
    instance-of p1, v0, Landroid/os/vibrator/PwleSegment;

    if-eqz p1, :cond_21

    .line 150
    invoke-static {p0}, Lcom/android/internal/vibrator/persistence/VibrationEffectSerializer;->serializeWaveformEnvelopeEffect(Ljava/util/List;)Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;

    move-result-object p0

    return-object p0

    .line 152
    :cond_21
    instance-of p1, v0, Landroid/os/vibrator/BasicPwleSegment;

    if-eqz p1, :cond_2a

    .line 153
    invoke-static {p0}, Lcom/android/internal/vibrator/persistence/VibrationEffectSerializer;->serializeBasicEnvelopeEffect(Ljava/util/List;)Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;

    move-result-object p0

    return-object p0

    .line 156
    :cond_2a
    const/4 p0, 0x0

    return-object p0
.end method

.method private static blacklist trySerializeRepeatingAmplitudeWaveformEffect(Ljava/util/List;I)Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/vibrator/VibrationEffectSegment;",
            ">;I)",
            "Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;"
        }
    .end annotation

    .line 226
    new-instance v0, Lcom/android/internal/vibrator/persistence/SerializedAmplitudeStepWaveform$Builder;

    invoke-direct {v0}, Lcom/android/internal/vibrator/persistence/SerializedAmplitudeStepWaveform$Builder;-><init>()V

    .line 229
    const/4 v1, 0x0

    :goto_6
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_29

    .line 230
    if-ne p1, v1, :cond_11

    .line 231
    invoke-virtual {v0}, Lcom/android/internal/vibrator/persistence/SerializedAmplitudeStepWaveform$Builder;->setRepeatIndexToCurrentEntry()V

    .line 234
    :cond_11
    :try_start_11
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/vibrator/VibrationEffectSegment;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/internal/vibrator/persistence/VibrationEffectSerializer$$ExternalSyntheticLambda0;

    invoke-direct {v3, v0}, Lcom/android/internal/vibrator/persistence/VibrationEffectSerializer$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/vibrator/persistence/SerializedAmplitudeStepWaveform$Builder;)V

    invoke-static {v2, v3}, Lcom/android/internal/vibrator/persistence/VibrationEffectSerializer;->serializeStepSegment(Landroid/os/vibrator/VibrationEffectSegment;Ljava/util/function/BiConsumer;)V
    :try_end_22
    .catch Lcom/android/internal/vibrator/persistence/XmlSerializerException; {:try_start_11 .. :try_end_22} :catch_26

    .line 237
    nop

    .line 229
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 235
    :catch_26
    move-exception p0

    .line 236
    const/4 p0, 0x0

    return-object p0

    .line 240
    :cond_29
    new-instance p0, Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;

    invoke-virtual {v0}, Lcom/android/internal/vibrator/persistence/SerializedAmplitudeStepWaveform$Builder;->build()Lcom/android/internal/vibrator/persistence/SerializedAmplitudeStepWaveform;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;-><init>(Lcom/android/internal/vibrator/persistence/SerializedComposedEffect$SerializedSegment;)V

    return-object p0
.end method
