.class public final Lcom/android/internal/vibrator/persistence/LegacyVibrationEffectXmlSerializer;
.super Ljava/lang/Object;
.source "LegacyVibrationEffectXmlSerializer.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 56
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

    .line 65
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/os/vibrator/Flags;->vendorVibrationEffects()Z

    move-result v0

    if-eqz v0, :cond_11

    instance-of v0, p0, Landroid/os/VibrationEffect$VendorEffect;

    if-eqz v0, :cond_11

    .line 66
    check-cast p0, Landroid/os/VibrationEffect$VendorEffect;

    .line 67
    invoke-static {p0}, Lcom/android/internal/vibrator/persistence/LegacyVibrationEffectXmlSerializer;->serializeVendorEffect(Landroid/os/VibrationEffect$VendorEffect;)Lcom/android/internal/vibrator/persistence/SerializedVendorEffect;

    move-result-object p0

    return-object p0

    .line 70
    :cond_11
    instance-of v0, p0, Landroid/os/VibrationEffect$Composed;

    const-string v1, "Unsupported VibrationEffect type %s"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/internal/vibrator/persistence/XmlValidator;->checkSerializerCondition(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 73
    move-object v0, p0

    check-cast v0, Landroid/os/VibrationEffect$Composed;

    .line 74
    invoke-virtual {v0}, Landroid/os/VibrationEffect$Composed;->getSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    const-string v2, "Unsupported empty VibrationEffect %s"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v1, v2, p0}, Lcom/android/internal/vibrator/persistence/XmlValidator;->checkSerializerCondition(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 77
    invoke-virtual {v0}, Landroid/os/VibrationEffect$Composed;->getSegments()Ljava/util/List;

    move-result-object p0

    const/4 v1, 0x0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/vibrator/VibrationEffectSegment;

    .line 78
    instance-of v1, p0, Landroid/os/vibrator/PrebakedSegment;

    if-eqz v1, :cond_46

    .line 79
    invoke-static {v0, p1}, Lcom/android/internal/vibrator/persistence/LegacyVibrationEffectXmlSerializer;->serializePredefinedEffect(Landroid/os/VibrationEffect$Composed;I)Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;

    move-result-object p0

    return-object p0

    .line 81
    :cond_46
    instance-of p1, p0, Landroid/os/vibrator/PrimitiveSegment;

    if-eqz p1, :cond_4f

    .line 82
    invoke-static {v0}, Lcom/android/internal/vibrator/persistence/LegacyVibrationEffectXmlSerializer;->serializePrimitiveEffect(Landroid/os/VibrationEffect$Composed;)Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;

    move-result-object p0

    return-object p0

    .line 84
    :cond_4f
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/os/vibrator/Flags;->normalizedPwleEffects()Z

    move-result p1

    if-eqz p1, :cond_5e

    instance-of p1, p0, Landroid/os/vibrator/PwleSegment;

    if-eqz p1, :cond_5e

    .line 85
    invoke-static {v0}, Lcom/android/internal/vibrator/persistence/LegacyVibrationEffectXmlSerializer;->serializeWaveformEnvelopeEffect(Landroid/os/VibrationEffect$Composed;)Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;

    move-result-object p0

    return-object p0

    .line 87
    :cond_5e
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/os/vibrator/Flags;->normalizedPwleEffects()Z

    move-result p1

    if-eqz p1, :cond_6d

    instance-of p0, p0, Landroid/os/vibrator/BasicPwleSegment;

    if-eqz p0, :cond_6d

    .line 88
    invoke-static {v0}, Lcom/android/internal/vibrator/persistence/LegacyVibrationEffectXmlSerializer;->serializeBasicEnvelopeEffect(Landroid/os/VibrationEffect$Composed;)Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;

    move-result-object p0

    return-object p0

    .line 90
    :cond_6d
    invoke-static {v0}, Lcom/android/internal/vibrator/persistence/LegacyVibrationEffectXmlSerializer;->serializeWaveformEffect(Landroid/os/VibrationEffect$Composed;)Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist serializeBasicEnvelopeEffect(Landroid/os/VibrationEffect$Composed;)Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/vibrator/persistence/XmlSerializerException;
        }
    .end annotation

    .line 149
    new-instance v0, Lcom/android/internal/vibrator/persistence/SerializedBasicEnvelopeEffect$Builder;

    invoke-direct {v0}, Lcom/android/internal/vibrator/persistence/SerializedBasicEnvelopeEffect$Builder;-><init>()V

    .line 150
    invoke-virtual {p0}, Landroid/os/VibrationEffect$Composed;->getSegments()Ljava/util/List;

    move-result-object v1

    .line 151
    invoke-virtual {p0}, Landroid/os/VibrationEffect$Composed;->getRepeatIndex()I

    move-result v2

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-ne v2, v3, :cond_13

    const/4 v2, 0x1

    goto :goto_14

    :cond_13
    move v2, v4

    :goto_14
    const-string v3, "Unsupported repeating basic envelope effect %s"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v2, v3, p0}, Lcom/android/internal/vibrator/persistence/XmlValidator;->checkSerializerCondition(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 153
    nop

    :goto_1e
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p0

    if-ge v4, p0, :cond_64

    .line 154
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    instance-of p0, p0, Landroid/os/vibrator/BasicPwleSegment;

    .line 155
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 154
    const-string v3, "Unsupported segment for basic envelope effect %s"

    invoke-static {p0, v3, v2}, Lcom/android/internal/vibrator/persistence/XmlValidator;->checkSerializerCondition(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 156
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/vibrator/BasicPwleSegment;

    .line 158
    if-nez v4, :cond_52

    invoke-virtual {p0}, Landroid/os/vibrator/BasicPwleSegment;->getStartSharpness()F

    move-result v2

    invoke-virtual {p0}, Landroid/os/vibrator/BasicPwleSegment;->getEndSharpness()F

    move-result v3

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_52

    .line 160
    invoke-virtual {p0}, Landroid/os/vibrator/BasicPwleSegment;->getStartSharpness()F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/internal/vibrator/persistence/SerializedBasicEnvelopeEffect$Builder;->setInitialSharpness(F)V

    .line 163
    :cond_52
    invoke-virtual {p0}, Landroid/os/vibrator/BasicPwleSegment;->getEndIntensity()F

    move-result v2

    invoke-virtual {p0}, Landroid/os/vibrator/BasicPwleSegment;->getEndSharpness()F

    move-result v3

    .line 164
    invoke-virtual {p0}, Landroid/os/vibrator/BasicPwleSegment;->getDuration()J

    move-result-wide v5

    .line 163
    invoke-virtual {v0, v2, v3, v5, v6}, Lcom/android/internal/vibrator/persistence/SerializedBasicEnvelopeEffect$Builder;->addControlPoint(FFJ)V

    .line 153
    add-int/lit8 v4, v4, 0x1

    goto :goto_1e

    .line 167
    :cond_64
    new-instance p0, Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;

    invoke-virtual {v0}, Lcom/android/internal/vibrator/persistence/SerializedBasicEnvelopeEffect$Builder;->build()Lcom/android/internal/vibrator/persistence/SerializedBasicEnvelopeEffect;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;-><init>(Lcom/android/internal/vibrator/persistence/SerializedComposedEffect$SerializedSegment;)V

    return-object p0
.end method

.method private static blacklist serializePrebakedSegment(Landroid/os/vibrator/VibrationEffectSegment;I)Lcom/android/internal/vibrator/persistence/SerializedPredefinedEffect;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/vibrator/persistence/XmlSerializerException;
        }
    .end annotation

    .line 198
    instance-of v0, p0, Landroid/os/vibrator/PrebakedSegment;

    const-string v1, "Unsupported segment for predefined effect %s"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/internal/vibrator/persistence/XmlValidator;->checkSerializerCondition(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 201
    check-cast p0, Landroid/os/vibrator/PrebakedSegment;

    .line 202
    nop

    .line 203
    invoke-virtual {p0}, Landroid/os/vibrator/PrebakedSegment;->getEffectId()I

    move-result v0

    .line 202
    invoke-static {v0, p1}, Lcom/android/internal/vibrator/persistence/XmlConstants$PredefinedEffectName;->findById(II)Lcom/android/internal/vibrator/persistence/XmlConstants$PredefinedEffectName;

    move-result-object v0

    .line 205
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1c

    move v3, v2

    goto :goto_1d

    :cond_1c
    move v3, v1

    .line 206
    :goto_1d
    invoke-virtual {p0}, Landroid/os/vibrator/PrebakedSegment;->getEffectId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    .line 205
    const-string v5, "Unsupported predefined effect id %s"

    invoke-static {v3, v5, v4}, Lcom/android/internal/vibrator/persistence/XmlValidator;->checkSerializerCondition(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 208
    and-int/2addr p1, v2

    if-nez p1, :cond_4a

    .line 210
    nop

    .line 211
    invoke-virtual {p0}, Landroid/os/vibrator/PrebakedSegment;->shouldFallback()Z

    move-result p1

    if-ne p1, v2, :cond_39

    move v1, v2

    .line 213
    :cond_39
    invoke-virtual {p0}, Landroid/os/vibrator/PrebakedSegment;->shouldFallback()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 210
    const-string v2, "Unsupported predefined effect with should fallback %s"

    invoke-static {v1, v2, p1}, Lcom/android/internal/vibrator/persistence/XmlValidator;->checkSerializerCondition(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 216
    :cond_4a
    new-instance p1, Lcom/android/internal/vibrator/persistence/SerializedPredefinedEffect;

    invoke-virtual {p0}, Landroid/os/vibrator/PrebakedSegment;->shouldFallback()Z

    move-result p0

    invoke-direct {p1, v0, p0}, Lcom/android/internal/vibrator/persistence/SerializedPredefinedEffect;-><init>(Lcom/android/internal/vibrator/persistence/XmlConstants$PredefinedEffectName;Z)V

    return-object p1
.end method

.method private static blacklist serializePredefinedEffect(Landroid/os/VibrationEffect$Composed;I)Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/vibrator/persistence/XmlSerializerException;
        }
    .end annotation

    .line 96
    invoke-virtual {p0}, Landroid/os/VibrationEffect$Composed;->getSegments()Ljava/util/List;

    move-result-object v0

    .line 97
    invoke-virtual {p0}, Landroid/os/VibrationEffect$Composed;->getRepeatIndex()I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v1, v2, :cond_f

    move v1, v3

    goto :goto_10

    :cond_f
    move v1, v4

    :goto_10
    const-string v2, "Unsupported repeating predefined effect %s"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v1, v2, v5}, Lcom/android/internal/vibrator/persistence/XmlValidator;->checkSerializerCondition(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 99
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v3, :cond_20

    goto :goto_21

    :cond_20
    move v3, v4

    :goto_21
    const-string v1, "Unsupported multiple segments in predefined effect %s"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v3, v1, p0}, Lcom/android/internal/vibrator/persistence/XmlValidator;->checkSerializerCondition(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 101
    new-instance p0, Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/vibrator/VibrationEffectSegment;

    invoke-static {v0, p1}, Lcom/android/internal/vibrator/persistence/LegacyVibrationEffectXmlSerializer;->serializePrebakedSegment(Landroid/os/vibrator/VibrationEffectSegment;I)Lcom/android/internal/vibrator/persistence/SerializedPredefinedEffect;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;-><init>(Lcom/android/internal/vibrator/persistence/SerializedComposedEffect$SerializedSegment;)V

    return-object p0
.end method

.method private static blacklist serializePrimitiveEffect(Landroid/os/VibrationEffect$Composed;)Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/vibrator/persistence/XmlSerializerException;
        }
    .end annotation

    .line 111
    invoke-virtual {p0}, Landroid/os/VibrationEffect$Composed;->getSegments()Ljava/util/List;

    move-result-object v0

    .line 112
    invoke-virtual {p0}, Landroid/os/VibrationEffect$Composed;->getRepeatIndex()I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_e

    const/4 v1, 0x1

    goto :goto_f

    :cond_e
    move v1, v3

    :goto_f
    const-string v2, "Unsupported repeating primitive composition %s"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v1, v2, p0}, Lcom/android/internal/vibrator/persistence/XmlValidator;->checkSerializerCondition(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 115
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    new-array p0, p0, [Lcom/android/internal/vibrator/persistence/SerializedComposedEffect$SerializedSegment;

    .line 116
    nop

    :goto_1f
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v3, v1, :cond_34

    .line 117
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/vibrator/VibrationEffectSegment;

    invoke-static {v1}, Lcom/android/internal/vibrator/persistence/LegacyVibrationEffectXmlSerializer;->serializePrimitiveSegment(Landroid/os/vibrator/VibrationEffectSegment;)Lcom/android/internal/vibrator/persistence/SerializedCompositionPrimitive;

    move-result-object v1

    aput-object v1, p0, v3

    .line 116
    add-int/lit8 v3, v3, 0x1

    goto :goto_1f

    .line 120
    :cond_34
    new-instance v0, Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;

    invoke-direct {v0, p0}, Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;-><init>([Lcom/android/internal/vibrator/persistence/SerializedComposedEffect$SerializedSegment;)V

    return-object v0
.end method

.method private static blacklist serializePrimitiveSegment(Landroid/os/vibrator/VibrationEffectSegment;)Lcom/android/internal/vibrator/persistence/SerializedCompositionPrimitive;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/vibrator/persistence/XmlSerializerException;
        }
    .end annotation

    .line 221
    instance-of v0, p0, Landroid/os/vibrator/PrimitiveSegment;

    const-string v1, "Unsupported segment for primitive composition %s"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/internal/vibrator/persistence/XmlValidator;->checkSerializerCondition(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 224
    check-cast p0, Landroid/os/vibrator/PrimitiveSegment;

    .line 225
    nop

    .line 226
    invoke-virtual {p0}, Landroid/os/vibrator/PrimitiveSegment;->getPrimitiveId()I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveEffectName;->findById(I)Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveEffectName;

    move-result-object v0

    .line 228
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1c

    move v3, v1

    goto :goto_1d

    :cond_1c
    move v3, v2

    .line 229
    :goto_1d
    invoke-virtual {p0}, Landroid/os/vibrator/PrimitiveSegment;->getPrimitiveId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    .line 228
    const-string v5, "Unsupported primitive effect id %s"

    invoke-static {v3, v5, v4}, Lcom/android/internal/vibrator/persistence/XmlValidator;->checkSerializerCondition(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 231
    nop

    .line 233
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/os/vibrator/Flags;->primitiveCompositionAbsoluteDelay()Z

    move-result v3

    const-string v4, "Unsupported primitive delay type %s"

    if-eqz v3, :cond_53

    .line 234
    invoke-virtual {p0}, Landroid/os/vibrator/PrimitiveSegment;->getDelayType()I

    move-result v3

    invoke-static {v3}, Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveDelayType;->findByType(I)Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveDelayType;

    move-result-object v3

    .line 235
    if-eqz v3, :cond_42

    goto :goto_43

    :cond_42
    move v1, v2

    .line 236
    :goto_43
    invoke-virtual {p0}, Landroid/os/vibrator/PrimitiveSegment;->getDelayType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 235
    invoke-static {v1, v4, v2}, Lcom/android/internal/vibrator/persistence/XmlValidator;->checkSerializerCondition(ZLjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_6c

    .line 238
    :cond_53
    nop

    .line 239
    invoke-virtual {p0}, Landroid/os/vibrator/PrimitiveSegment;->getDelayType()I

    move-result v3

    if-nez v3, :cond_5b

    goto :goto_5c

    :cond_5b
    move v1, v2

    .line 240
    :goto_5c
    invoke-virtual {p0}, Landroid/os/vibrator/PrimitiveSegment;->getDelayType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 238
    invoke-static {v1, v4, v2}, Lcom/android/internal/vibrator/persistence/XmlValidator;->checkSerializerCondition(ZLjava/lang/String;[Ljava/lang/Object;)V

    const/4 v3, 0x0

    .line 243
    :goto_6c
    new-instance v1, Lcom/android/internal/vibrator/persistence/SerializedCompositionPrimitive;

    .line 244
    invoke-virtual {p0}, Landroid/os/vibrator/PrimitiveSegment;->getScale()F

    move-result v2

    invoke-virtual {p0}, Landroid/os/vibrator/PrimitiveSegment;->getDelay()I

    move-result p0

    invoke-direct {v1, v0, v2, p0, v3}, Lcom/android/internal/vibrator/persistence/SerializedCompositionPrimitive;-><init>(Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveEffectName;FILcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveDelayType;)V

    .line 243
    return-object v1
.end method

.method private static blacklist serializeVendorEffect(Landroid/os/VibrationEffect$VendorEffect;)Lcom/android/internal/vibrator/persistence/SerializedVendorEffect;
    .registers 2

    .line 106
    new-instance v0, Lcom/android/internal/vibrator/persistence/SerializedVendorEffect;

    invoke-virtual {p0}, Landroid/os/VibrationEffect$VendorEffect;->getVendorData()Landroid/os/PersistableBundle;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/internal/vibrator/persistence/SerializedVendorEffect;-><init>(Landroid/os/PersistableBundle;)V

    return-object v0
.end method

.method private static blacklist serializeWaveformEffect(Landroid/os/VibrationEffect$Composed;)Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/vibrator/persistence/XmlSerializerException;
        }
    .end annotation

    .line 172
    new-instance v0, Lcom/android/internal/vibrator/persistence/SerializedAmplitudeStepWaveform$Builder;

    invoke-direct {v0}, Lcom/android/internal/vibrator/persistence/SerializedAmplitudeStepWaveform$Builder;-><init>()V

    .line 175
    invoke-virtual {p0}, Landroid/os/VibrationEffect$Composed;->getSegments()Ljava/util/List;

    move-result-object v1

    .line 176
    const/4 v2, 0x0

    move v3, v2

    :goto_b
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_65

    .line 177
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Landroid/os/vibrator/StepSegment;

    .line 178
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    .line 177
    const-string v6, "Unsupported segment for waveform effect %s"

    invoke-static {v4, v6, v5}, Lcom/android/internal/vibrator/persistence/XmlValidator;->checkSerializerCondition(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 180
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/vibrator/StepSegment;

    .line 181
    invoke-virtual {p0}, Landroid/os/VibrationEffect$Composed;->getRepeatIndex()I

    move-result v5

    if-ne v5, v3, :cond_33

    .line 182
    invoke-virtual {v0}, Lcom/android/internal/vibrator/persistence/SerializedAmplitudeStepWaveform$Builder;->setRepeatIndexToCurrentEntry()V

    .line 185
    :cond_33
    invoke-virtual {v4}, Landroid/os/vibrator/StepSegment;->getFrequencyHz()F

    move-result v5

    const/4 v6, 0x0

    invoke-static {v5, v6}, Ljava/lang/Float;->compare(FF)I

    move-result v5

    if-nez v5, :cond_40

    const/4 v5, 0x1

    goto :goto_41

    :cond_40
    move v5, v2

    .line 186
    :goto_41
    invoke-virtual {v4}, Landroid/os/vibrator/StepSegment;->getFrequencyHz()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    .line 185
    const-string v7, "Unsupported segment with non-default frequency %f"

    invoke-static {v5, v7, v6}, Lcom/android/internal/vibrator/persistence/XmlValidator;->checkSerializerCondition(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 188
    nop

    .line 189
    invoke-virtual {v4}, Landroid/os/vibrator/StepSegment;->getDuration()J

    move-result-wide v5

    invoke-virtual {v4}, Landroid/os/vibrator/StepSegment;->getAmplitude()F

    move-result v4

    invoke-static {v4}, Lcom/android/internal/vibrator/persistence/LegacyVibrationEffectXmlSerializer;->toAmplitudeInt(F)I

    move-result v4

    .line 188
    invoke-virtual {v0, v5, v6, v4}, Lcom/android/internal/vibrator/persistence/SerializedAmplitudeStepWaveform$Builder;->addDurationAndAmplitude(JI)V

    .line 176
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 192
    :cond_65
    new-instance p0, Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;

    invoke-virtual {v0}, Lcom/android/internal/vibrator/persistence/SerializedAmplitudeStepWaveform$Builder;->build()Lcom/android/internal/vibrator/persistence/SerializedAmplitudeStepWaveform;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;-><init>(Lcom/android/internal/vibrator/persistence/SerializedComposedEffect$SerializedSegment;)V

    return-object p0
.end method

.method private static blacklist serializeWaveformEnvelopeEffect(Landroid/os/VibrationEffect$Composed;)Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/vibrator/persistence/XmlSerializerException;
        }
    .end annotation

    .line 125
    new-instance v0, Lcom/android/internal/vibrator/persistence/SerializedWaveformEnvelopeEffect$Builder;

    invoke-direct {v0}, Lcom/android/internal/vibrator/persistence/SerializedWaveformEnvelopeEffect$Builder;-><init>()V

    .line 127
    invoke-virtual {p0}, Landroid/os/VibrationEffect$Composed;->getSegments()Ljava/util/List;

    move-result-object v1

    .line 128
    invoke-virtual {p0}, Landroid/os/VibrationEffect$Composed;->getRepeatIndex()I

    move-result v2

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-ne v2, v3, :cond_13

    const/4 v2, 0x1

    goto :goto_14

    :cond_13
    move v2, v4

    :goto_14
    const-string v3, "Unsupported repeating waveform envelope effect %s"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v2, v3, p0}, Lcom/android/internal/vibrator/persistence/XmlValidator;->checkSerializerCondition(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 130
    nop

    :goto_1e
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p0

    if-ge v4, p0, :cond_64

    .line 131
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    instance-of p0, p0, Landroid/os/vibrator/PwleSegment;

    .line 132
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 131
    const-string v3, "Unsupported segment for waveform envelope effect %s"

    invoke-static {p0, v3, v2}, Lcom/android/internal/vibrator/persistence/XmlValidator;->checkSerializerCondition(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 133
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/vibrator/PwleSegment;

    .line 135
    if-nez v4, :cond_52

    invoke-virtual {p0}, Landroid/os/vibrator/PwleSegment;->getStartFrequencyHz()F

    move-result v2

    invoke-virtual {p0}, Landroid/os/vibrator/PwleSegment;->getEndFrequencyHz()F

    move-result v3

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_52

    .line 137
    invoke-virtual {p0}, Landroid/os/vibrator/PwleSegment;->getStartFrequencyHz()F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/internal/vibrator/persistence/SerializedWaveformEnvelopeEffect$Builder;->setInitialFrequencyHz(F)V

    .line 140
    :cond_52
    invoke-virtual {p0}, Landroid/os/vibrator/PwleSegment;->getEndAmplitude()F

    move-result v2

    invoke-virtual {p0}, Landroid/os/vibrator/PwleSegment;->getEndFrequencyHz()F

    move-result v3

    .line 141
    invoke-virtual {p0}, Landroid/os/vibrator/PwleSegment;->getDuration()J

    move-result-wide v5

    .line 140
    invoke-virtual {v0, v2, v3, v5, v6}, Lcom/android/internal/vibrator/persistence/SerializedWaveformEnvelopeEffect$Builder;->addControlPoint(FFJ)V

    .line 130
    add-int/lit8 v4, v4, 0x1

    goto :goto_1e

    .line 144
    :cond_64
    new-instance p0, Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;

    invoke-virtual {v0}, Lcom/android/internal/vibrator/persistence/SerializedWaveformEnvelopeEffect$Builder;->build()Lcom/android/internal/vibrator/persistence/SerializedWaveformEnvelopeEffect;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;-><init>(Lcom/android/internal/vibrator/persistence/SerializedComposedEffect$SerializedSegment;)V

    return-object p0
.end method

.method private static blacklist toAmplitudeInt(F)I
    .registers 2

    .line 248
    const/high16 v0, -0x40800000    # -1.0f

    invoke-static {p0, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_a

    .line 249
    const/4 p0, -0x1

    goto :goto_11

    .line 250
    :cond_a
    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr p0, v0

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    .line 248
    :goto_11
    return p0
.end method
