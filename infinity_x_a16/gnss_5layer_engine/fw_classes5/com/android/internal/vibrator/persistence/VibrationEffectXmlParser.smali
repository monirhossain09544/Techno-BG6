.class public Lcom/android/internal/vibrator/persistence/VibrationEffectXmlParser;
.super Ljava/lang/Object;
.source "VibrationEffectXmlParser.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist parseTag(Lcom/android/modules/utils/TypedXmlPullParser;I)Lcom/android/internal/vibrator/persistence/XmlSerializedVibration;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/modules/utils/TypedXmlPullParser;",
            "I)",
            "Lcom/android/internal/vibrator/persistence/XmlSerializedVibration<",
            "+",
            "Landroid/os/VibrationEffect;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/vibrator/persistence/XmlParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 156
    const-string v0, "vibration-effect"

    invoke-static {p0, v0}, Lcom/android/internal/vibrator/persistence/XmlValidator;->checkStartTag(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)V

    .line 157
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/android/internal/vibrator/persistence/XmlValidator;->checkTagHasNoUnexpectedAttributes(Lcom/android/modules/utils/TypedXmlPullParser;[Ljava/lang/String;)V

    .line 159
    invoke-static {p0, p1}, Lcom/android/internal/vibrator/persistence/VibrationEffectXmlParser;->parseVibrationContent(Lcom/android/modules/utils/TypedXmlPullParser;I)Lcom/android/internal/vibrator/persistence/XmlSerializedVibration;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist parseVibrationContent(Lcom/android/modules/utils/TypedXmlPullParser;I)Lcom/android/internal/vibrator/persistence/XmlSerializedVibration;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/modules/utils/TypedXmlPullParser;",
            "I)",
            "Lcom/android/internal/vibrator/persistence/XmlSerializedVibration<",
            "+",
            "Landroid/os/VibrationEffect;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/vibrator/persistence/XmlParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 172
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 173
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v1

    .line 175
    nop

    .line 176
    invoke-static {p0, v1}, Lcom/android/internal/vibrator/persistence/XmlReader;->readNextTagWithin(Lcom/android/modules/utils/TypedXmlPullParser;I)Z

    move-result v2

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    .line 175
    const-string v5, "Unsupported empty vibration tag"

    invoke-static {v2, v5, v4}, Lcom/android/internal/vibrator/persistence/XmlValidator;->checkParserCondition(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 181
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_10c

    :cond_20
    goto :goto_66

    :sswitch_21
    const-string v3, "waveform-envelope-effect"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    const/4 v3, 0x4

    goto :goto_67

    :sswitch_2b
    const-string v3, "primitive-effect"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    const/4 v3, 0x2

    goto :goto_67

    :sswitch_35
    const-string v4, "vendor-effect"

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    goto :goto_67

    :sswitch_3e
    const-string v3, "repeating-effect"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    const/4 v3, 0x6

    goto :goto_67

    :sswitch_48
    const-string v3, "waveform-effect"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    const/4 v3, 0x3

    goto :goto_67

    :sswitch_52
    const-string v3, "predefined-effect"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    const/4 v3, 0x1

    goto :goto_67

    :sswitch_5c
    const-string v3, "basic-envelope-effect"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    const/4 v3, 0x5

    goto :goto_67

    :goto_66
    const/4 v3, -0x1

    :goto_67
    packed-switch v3, :pswitch_data_12a

    goto/16 :goto_e4

    .line 204
    :pswitch_6c
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/os/vibrator/Flags;->normalizedPwleEffects()Z

    move-result v2

    if-eqz v2, :cond_7c

    .line 205
    new-instance v2, Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;

    .line 206
    invoke-static {p0, p1}, Lcom/android/internal/vibrator/persistence/SerializedWaveformEnvelopeEffect$Parser;->parseNext(Lcom/android/modules/utils/TypedXmlPullParser;I)Lcom/android/internal/vibrator/persistence/SerializedWaveformEnvelopeEffect;

    move-result-object p1

    invoke-direct {v2, p1}, Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;-><init>(Lcom/android/internal/vibrator/persistence/SerializedComposedEffect$SerializedSegment;)V

    .line 207
    goto :goto_e0

    .line 210
    :cond_7c
    :pswitch_7c
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/os/vibrator/Flags;->normalizedPwleEffects()Z

    move-result v2

    if-eqz v2, :cond_8c

    .line 211
    new-instance v2, Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;

    .line 212
    invoke-static {p0, p1}, Lcom/android/internal/vibrator/persistence/SerializedBasicEnvelopeEffect$Parser;->parseNext(Lcom/android/modules/utils/TypedXmlPullParser;I)Lcom/android/internal/vibrator/persistence/SerializedBasicEnvelopeEffect;

    move-result-object p1

    invoke-direct {v2, p1}, Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;-><init>(Lcom/android/internal/vibrator/persistence/SerializedComposedEffect$SerializedSegment;)V

    .line 213
    goto :goto_e0

    .line 216
    :cond_8c
    :pswitch_8c
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/os/vibrator/Flags;->normalizedPwleEffects()Z

    move-result v2

    if-eqz v2, :cond_e4

    .line 217
    new-instance v2, Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;

    .line 218
    invoke-static {p0, p1}, Lcom/android/internal/vibrator/persistence/SerializedRepeatingEffect$Parser;->parseNext(Lcom/android/modules/utils/TypedXmlPullParser;I)Lcom/android/internal/vibrator/persistence/SerializedRepeatingEffect;

    move-result-object p1

    invoke-direct {v2, p1}, Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;-><init>(Lcom/android/internal/vibrator/persistence/SerializedComposedEffect$SerializedSegment;)V

    .line 219
    goto :goto_e0

    .line 200
    :pswitch_9c
    new-instance v2, Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;

    .line 201
    invoke-static {p0}, Lcom/android/internal/vibrator/persistence/SerializedAmplitudeStepWaveform$Parser;->parseNext(Lcom/android/modules/utils/TypedXmlPullParser;)Lcom/android/internal/vibrator/persistence/SerializedAmplitudeStepWaveform;

    move-result-object p1

    invoke-direct {v2, p1}, Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;-><init>(Lcom/android/internal/vibrator/persistence/SerializedComposedEffect$SerializedSegment;)V

    .line 202
    goto :goto_e0

    .line 192
    :pswitch_a6
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 194
    :cond_ab
    invoke-static {p0}, Lcom/android/internal/vibrator/persistence/SerializedCompositionPrimitive$Parser;->parseNext(Lcom/android/modules/utils/TypedXmlPullParser;)Lcom/android/internal/vibrator/persistence/SerializedCompositionPrimitive;

    move-result-object p1

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 195
    invoke-static {p0, v1}, Lcom/android/internal/vibrator/persistence/XmlReader;->readNextTagWithin(Lcom/android/modules/utils/TypedXmlPullParser;I)Z

    move-result p1

    if-nez p1, :cond_ab

    .line 196
    new-instance p1, Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;

    .line 197
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Lcom/android/internal/vibrator/persistence/SerializedComposedEffect$SerializedSegment;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/android/internal/vibrator/persistence/SerializedComposedEffect$SerializedSegment;

    invoke-direct {p1, v2}, Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;-><init>([Lcom/android/internal/vibrator/persistence/SerializedComposedEffect$SerializedSegment;)V

    .line 198
    move-object v2, p1

    goto :goto_e0

    .line 183
    :pswitch_cb
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/os/vibrator/Flags;->vendorVibrationEffects()Z

    move-result v2

    if-eqz v2, :cond_d6

    .line 184
    invoke-static {p0, p1}, Lcom/android/internal/vibrator/persistence/SerializedVendorEffect$Parser;->parseNext(Lcom/android/modules/utils/TypedXmlPullParser;I)Lcom/android/internal/vibrator/persistence/SerializedVendorEffect;

    move-result-object v2

    .line 185
    goto :goto_e0

    .line 188
    :cond_d6
    :pswitch_d6
    new-instance v2, Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;

    .line 189
    invoke-static {p0, p1}, Lcom/android/internal/vibrator/persistence/SerializedPredefinedEffect$Parser;->parseNext(Lcom/android/modules/utils/TypedXmlPullParser;I)Lcom/android/internal/vibrator/persistence/SerializedPredefinedEffect;

    move-result-object p1

    invoke-direct {v2, p1}, Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;-><init>(Lcom/android/internal/vibrator/persistence/SerializedComposedEffect$SerializedSegment;)V

    .line 190
    nop

    .line 227
    :goto_e0
    invoke-static {p0, v0, v1}, Lcom/android/internal/vibrator/persistence/XmlReader;->readEndTag(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)V

    .line 229
    return-object v2

    .line 222
    :cond_e4
    :goto_e4
    new-instance p1, Lcom/android/internal/vibrator/persistence/XmlParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected tag "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, " in vibration tag "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/android/internal/vibrator/persistence/XmlParserException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :sswitch_data_10c
    .sparse-switch
        -0x7e589d71 -> :sswitch_5c
        -0x4f1c8cc8 -> :sswitch_52
        -0x2d8d05df -> :sswitch_48
        -0x1b108e49 -> :sswitch_3e
        -0x14fe824a -> :sswitch_35
        0x8e61537 -> :sswitch_2b
        0x49de0b9e -> :sswitch_21
    .end sparse-switch

    :pswitch_data_12a
    .packed-switch 0x0
        :pswitch_cb
        :pswitch_d6
        :pswitch_a6
        :pswitch_9c
        :pswitch_6c
        :pswitch_7c
        :pswitch_8c
    .end packed-switch
.end method
