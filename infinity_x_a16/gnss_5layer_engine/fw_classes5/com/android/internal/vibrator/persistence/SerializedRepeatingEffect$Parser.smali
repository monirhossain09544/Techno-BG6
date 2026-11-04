.class final Lcom/android/internal/vibrator/persistence/SerializedRepeatingEffect$Parser;
.super Ljava/lang/Object;
.source "SerializedRepeatingEffect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/vibrator/persistence/SerializedRepeatingEffect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Parser"
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist parseEffect(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/vibrator/persistence/XmlParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 151
    invoke-static {p0, p1}, Lcom/android/internal/vibrator/persistence/XmlValidator;->checkStartTag(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)V

    .line 152
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/android/internal/vibrator/persistence/XmlValidator;->checkTagHasNoUnexpectedAttributes(Lcom/android/modules/utils/TypedXmlPullParser;[Ljava/lang/String;)V

    .line 153
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v1

    .line 154
    nop

    .line 155
    invoke-static {p0, v1}, Lcom/android/internal/vibrator/persistence/XmlReader;->readNextTagWithin(Lcom/android/modules/utils/TypedXmlPullParser;I)Z

    move-result v2

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v3

    .line 154
    const-string v4, "Unsupported empty %s tag"

    invoke-static {v2, v4, v3}, Lcom/android/internal/vibrator/persistence/XmlValidator;->checkParserCondition(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 159
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_b0

    :cond_26
    goto :goto_58

    :sswitch_27
    const-string v0, "waveform-entry"

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    const/4 v0, 0x2

    goto :goto_59

    :sswitch_31
    const-string v0, "waveform-envelope-effect"

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    const/4 v0, 0x3

    goto :goto_59

    :sswitch_3b
    const-string v0, "primitive-effect"

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    const/4 v0, 0x1

    goto :goto_59

    :sswitch_45
    const-string v3, "predefined-effect"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    goto :goto_59

    :sswitch_4e
    const-string v0, "basic-envelope-effect"

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    const/4 v0, 0x4

    goto :goto_59

    :goto_58
    const/4 v0, -0x1

    :goto_59
    packed-switch v0, :pswitch_data_c6

    .line 179
    new-instance p2, Lcom/android/internal/vibrator/persistence/XmlParserException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected tag "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " in vibration tag "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Lcom/android/internal/vibrator/persistence/XmlParserException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 175
    :pswitch_83
    new-instance v0, Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;

    .line 176
    invoke-static {p0, p2}, Lcom/android/internal/vibrator/persistence/SerializedBasicEnvelopeEffect$Parser;->parseNext(Lcom/android/modules/utils/TypedXmlPullParser;I)Lcom/android/internal/vibrator/persistence/SerializedBasicEnvelopeEffect;

    move-result-object p2

    invoke-direct {v0, p2}, Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;-><init>(Lcom/android/internal/vibrator/persistence/SerializedComposedEffect$SerializedSegment;)V

    .line 177
    goto :goto_ab

    .line 171
    :pswitch_8d
    new-instance v0, Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;

    .line 172
    invoke-static {p0, p2}, Lcom/android/internal/vibrator/persistence/SerializedWaveformEnvelopeEffect$Parser;->parseNext(Lcom/android/modules/utils/TypedXmlPullParser;I)Lcom/android/internal/vibrator/persistence/SerializedWaveformEnvelopeEffect;

    move-result-object p2

    invoke-direct {v0, p2}, Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;-><init>(Lcom/android/internal/vibrator/persistence/SerializedComposedEffect$SerializedSegment;)V

    .line 173
    goto :goto_ab

    .line 168
    :pswitch_97
    invoke-static {p0, v1}, Lcom/android/internal/vibrator/persistence/SerializedRepeatingEffect$Parser;->parseWaveformEntries(Lcom/android/modules/utils/TypedXmlPullParser;I)Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;

    move-result-object v0

    .line 169
    goto :goto_ab

    .line 165
    :pswitch_9c
    invoke-static {p0, v1}, Lcom/android/internal/vibrator/persistence/SerializedRepeatingEffect$Parser;->parsePrimitiveEffects(Lcom/android/modules/utils/TypedXmlPullParser;I)Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;

    move-result-object v0

    .line 166
    goto :goto_ab

    .line 161
    :pswitch_a1
    new-instance v0, Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;

    .line 162
    invoke-static {p0, p2}, Lcom/android/internal/vibrator/persistence/SerializedPredefinedEffect$Parser;->parseNext(Lcom/android/modules/utils/TypedXmlPullParser;I)Lcom/android/internal/vibrator/persistence/SerializedPredefinedEffect;

    move-result-object p2

    invoke-direct {v0, p2}, Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;-><init>(Lcom/android/internal/vibrator/persistence/SerializedComposedEffect$SerializedSegment;)V

    .line 163
    nop

    .line 184
    :goto_ab
    invoke-static {p0, p1, v1}, Lcom/android/internal/vibrator/persistence/XmlReader;->readEndTag(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)V

    .line 186
    return-object v0

    nop

    :sswitch_data_b0
    .sparse-switch
        -0x7e589d71 -> :sswitch_4e
        -0x4f1c8cc8 -> :sswitch_45
        0x8e61537 -> :sswitch_3b
        0x49de0b9e -> :sswitch_31
        0x61a475e2 -> :sswitch_27
    .end sparse-switch

    :pswitch_data_c6
    .packed-switch 0x0
        :pswitch_a1
        :pswitch_9c
        :pswitch_97
        :pswitch_8d
        :pswitch_83
    .end packed-switch
.end method

.method static blacklist parseNext(Lcom/android/modules/utils/TypedXmlPullParser;I)Lcom/android/internal/vibrator/persistence/SerializedRepeatingEffect;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/vibrator/persistence/XmlParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 124
    const-string v0, "repeating-effect"

    invoke-static {p0, v0}, Lcom/android/internal/vibrator/persistence/XmlValidator;->checkStartTag(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)V

    .line 125
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/android/internal/vibrator/persistence/XmlValidator;->checkTagHasNoUnexpectedAttributes(Lcom/android/modules/utils/TypedXmlPullParser;[Ljava/lang/String;)V

    .line 127
    new-instance v1, Lcom/android/internal/vibrator/persistence/SerializedRepeatingEffect$Builder;

    invoke-direct {v1}, Lcom/android/internal/vibrator/persistence/SerializedRepeatingEffect$Builder;-><init>()V

    .line 128
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v2

    .line 130
    invoke-static {p0, v2}, Lcom/android/internal/vibrator/persistence/XmlReader;->readNextTagWithin(Lcom/android/modules/utils/TypedXmlPullParser;I)Z

    move-result v3

    .line 131
    if-eqz v3, :cond_31

    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "preamble"

    invoke-virtual {v5, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_31

    .line 132
    invoke-static {p0, v5, p1}, Lcom/android/internal/vibrator/persistence/SerializedRepeatingEffect$Parser;->parseEffect(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/internal/vibrator/persistence/SerializedRepeatingEffect$Builder;->setPreamble(Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;)V

    .line 133
    invoke-static {p0, v2}, Lcom/android/internal/vibrator/persistence/XmlReader;->readNextTagWithin(Lcom/android/modules/utils/TypedXmlPullParser;I)Z

    move-result v3

    .line 136
    :cond_31
    const-string v4, "Missing %s tag in %s"

    const-string v5, "repeating"

    filled-new-array {v5, v0}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v3, v4, v6}, Lcom/android/internal/vibrator/persistence/XmlValidator;->checkParserCondition(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 138
    invoke-static {p0, v5, p1}, Lcom/android/internal/vibrator/persistence/SerializedRepeatingEffect$Parser;->parseEffect(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/android/internal/vibrator/persistence/SerializedRepeatingEffect$Builder;->setRepeating(Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;)V

    .line 140
    invoke-virtual {v1}, Lcom/android/internal/vibrator/persistence/SerializedRepeatingEffect$Builder;->hasRepeatingSegment()Z

    move-result p1

    const-string v3, "Unexpected %s tag with no repeating segment"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {p1, v3, v4}, Lcom/android/internal/vibrator/persistence/XmlValidator;->checkParserCondition(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 144
    invoke-static {p0, v0, v2}, Lcom/android/internal/vibrator/persistence/XmlReader;->readEndTag(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)V

    .line 146
    invoke-virtual {v1}, Lcom/android/internal/vibrator/persistence/SerializedRepeatingEffect$Builder;->build()Lcom/android/internal/vibrator/persistence/SerializedRepeatingEffect;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist parsePrimitiveEffects(Lcom/android/modules/utils/TypedXmlPullParser;I)Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/internal/vibrator/persistence/XmlParserException;
        }
    .end annotation

    .line 192
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 194
    :cond_5
    invoke-static {p0}, Lcom/android/internal/vibrator/persistence/SerializedCompositionPrimitive$Parser;->parseNext(Lcom/android/modules/utils/TypedXmlPullParser;)Lcom/android/internal/vibrator/persistence/SerializedCompositionPrimitive;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 195
    invoke-static {p0, p1}, Lcom/android/internal/vibrator/persistence/XmlReader;->readNextTagWithin(Lcom/android/modules/utils/TypedXmlPullParser;I)Z

    move-result v1

    if-nez v1, :cond_5

    .line 196
    new-instance p0, Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;

    .line 198
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Lcom/android/internal/vibrator/persistence/SerializedComposedEffect$SerializedSegment;

    .line 196
    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/android/internal/vibrator/persistence/SerializedComposedEffect$SerializedSegment;

    invoke-direct {p0, p1}, Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;-><init>([Lcom/android/internal/vibrator/persistence/SerializedComposedEffect$SerializedSegment;)V

    return-object p0
.end method

.method private static blacklist parseWaveformEntries(Lcom/android/modules/utils/TypedXmlPullParser;I)Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/internal/vibrator/persistence/XmlParserException;
        }
    .end annotation

    .line 204
    new-instance v0, Lcom/android/internal/vibrator/persistence/SerializedWaveformEffectEntries$Builder;

    invoke-direct {v0}, Lcom/android/internal/vibrator/persistence/SerializedWaveformEffectEntries$Builder;-><init>()V

    .line 207
    :cond_5
    nop

    .line 208
    invoke-static {p0, v0}, Lcom/android/internal/vibrator/persistence/SerializedWaveformEffectEntries$Parser;->parseWaveformEntry(Lcom/android/modules/utils/TypedXmlPullParser;Lcom/android/internal/vibrator/persistence/SerializedWaveformEffectEntries$Builder;)V

    .line 209
    invoke-static {p0, p1}, Lcom/android/internal/vibrator/persistence/XmlReader;->readNextTagWithin(Lcom/android/modules/utils/TypedXmlPullParser;I)Z

    move-result v1

    if-nez v1, :cond_5

    .line 210
    invoke-virtual {v0}, Lcom/android/internal/vibrator/persistence/SerializedWaveformEffectEntries$Builder;->hasNonZeroDuration()Z

    move-result p0

    const-string p1, "waveform-entry"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "Unexpected %s tag with total duration zero"

    invoke-static {p0, v1, p1}, Lcom/android/internal/vibrator/persistence/XmlValidator;->checkParserCondition(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 212
    new-instance p0, Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;

    invoke-virtual {v0}, Lcom/android/internal/vibrator/persistence/SerializedWaveformEffectEntries$Builder;->build()Lcom/android/internal/vibrator/persistence/SerializedWaveformEffectEntries;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;-><init>(Lcom/android/internal/vibrator/persistence/SerializedComposedEffect$SerializedSegment;)V

    return-object p0
.end method
