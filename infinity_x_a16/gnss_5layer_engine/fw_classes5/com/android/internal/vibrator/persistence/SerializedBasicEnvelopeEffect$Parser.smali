.class final Lcom/android/internal/vibrator/persistence/SerializedBasicEnvelopeEffect$Parser;
.super Ljava/lang/Object;
.source "SerializedBasicEnvelopeEffect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/vibrator/persistence/SerializedBasicEnvelopeEffect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Parser"
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist parseControlPoint(Lcom/android/modules/utils/TypedXmlPullParser;Lcom/android/internal/vibrator/persistence/SerializedBasicEnvelopeEffect$Builder;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/vibrator/persistence/XmlParserException;
        }
    .end annotation

    .line 152
    const-string v0, "control-point"

    invoke-static {p0, v0}, Lcom/android/internal/vibrator/persistence/XmlValidator;->checkStartTag(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)V

    .line 153
    const-string v0, "durationMs"

    const-string v1, "intensity"

    const-string v2, "sharpness"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/internal/vibrator/persistence/XmlValidator;->checkTagHasNoUnexpectedAttributes(Lcom/android/modules/utils/TypedXmlPullParser;[Ljava/lang/String;)V

    .line 156
    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {p0, v1, v3, v4}, Lcom/android/internal/vibrator/persistence/XmlReader;->readAttributeFloatInRange(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;FF)F

    move-result v1

    .line 158
    invoke-static {p0, v2, v3, v4}, Lcom/android/internal/vibrator/persistence/XmlReader;->readAttributeFloatInRange(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;FF)F

    move-result v2

    .line 160
    invoke-static {p0, v0}, Lcom/android/internal/vibrator/persistence/XmlReader;->readAttributePositiveLong(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)J

    move-result-wide v3

    .line 162
    invoke-virtual {p1, v1, v2, v3, v4}, Lcom/android/internal/vibrator/persistence/SerializedBasicEnvelopeEffect$Builder;->addControlPoint(FFJ)V

    .line 163
    return-void
.end method

.method static blacklist parseNext(Lcom/android/modules/utils/TypedXmlPullParser;I)Lcom/android/internal/vibrator/persistence/SerializedBasicEnvelopeEffect;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/vibrator/persistence/XmlParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 123
    const-string p1, "basic-envelope-effect"

    invoke-static {p0, p1}, Lcom/android/internal/vibrator/persistence/XmlValidator;->checkStartTag(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)V

    .line 124
    const-string v0, "initialSharpness"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/vibrator/persistence/XmlValidator;->checkTagHasNoUnexpectedAttributes(Lcom/android/modules/utils/TypedXmlPullParser;[Ljava/lang/String;)V

    .line 126
    new-instance v1, Lcom/android/internal/vibrator/persistence/SerializedBasicEnvelopeEffect$Builder;

    invoke-direct {v1}, Lcom/android/internal/vibrator/persistence/SerializedBasicEnvelopeEffect$Builder;-><init>()V

    .line 127
    nop

    .line 128
    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x7fc00000    # Float.NaN

    invoke-static {p0, v0, v2, v3, v4}, Lcom/android/internal/vibrator/persistence/XmlReader;->readAttributeFloatInRange(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;FFF)F

    move-result v0

    .line 127
    invoke-virtual {v1, v0}, Lcom/android/internal/vibrator/persistence/SerializedBasicEnvelopeEffect$Builder;->setInitialSharpness(F)V

    .line 131
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v0

    .line 134
    :goto_24
    invoke-static {p0, v0}, Lcom/android/internal/vibrator/persistence/XmlReader;->readNextTagWithin(Lcom/android/modules/utils/TypedXmlPullParser;I)Z

    move-result v3

    if-eqz v3, :cond_31

    .line 135
    invoke-static {p0, v1}, Lcom/android/internal/vibrator/persistence/SerializedBasicEnvelopeEffect$Parser;->parseControlPoint(Lcom/android/modules/utils/TypedXmlPullParser;Lcom/android/internal/vibrator/persistence/SerializedBasicEnvelopeEffect$Builder;)V

    .line 137
    invoke-static {p0}, Lcom/android/internal/vibrator/persistence/XmlReader;->readEndTag(Lcom/android/modules/utils/TypedXmlPullParser;)V

    goto :goto_24

    .line 141
    :cond_31
    invoke-static {v1}, Lcom/android/internal/vibrator/persistence/SerializedBasicEnvelopeEffect$Builder;->-$$Nest$fgetmControlPoints(Lcom/android/internal/vibrator/persistence/SerializedBasicEnvelopeEffect$Builder;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    const/4 v0, 0x1

    xor-int/2addr p0, v0

    const-string v3, "Expected tag %s to have at least one control point"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, v3, p1}, Lcom/android/internal/vibrator/persistence/XmlValidator;->checkParserCondition(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 144
    invoke-static {v1}, Lcom/android/internal/vibrator/persistence/SerializedBasicEnvelopeEffect$Builder;->-$$Nest$fgetmControlPoints(Lcom/android/internal/vibrator/persistence/SerializedBasicEnvelopeEffect$Builder;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->getLast()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/vibrator/persistence/SerializedBasicEnvelopeEffect$BasicControlPoint;

    invoke-static {p0}, Lcom/android/internal/vibrator/persistence/SerializedBasicEnvelopeEffect$BasicControlPoint;->-$$Nest$fgetmIntensity(Lcom/android/internal/vibrator/persistence/SerializedBasicEnvelopeEffect$BasicControlPoint;)F

    move-result p0

    cmpl-float p0, p0, v2

    const/4 p1, 0x0

    if-nez p0, :cond_58

    goto :goto_59

    :cond_58
    move v0, p1

    :goto_59
    const-string p0, "Basic envelope effects must end at a zero intensity control point"

    new-array p1, p1, [Ljava/lang/Object;

    invoke-static {v0, p0, p1}, Lcom/android/internal/vibrator/persistence/XmlValidator;->checkParserCondition(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 147
    invoke-virtual {v1}, Lcom/android/internal/vibrator/persistence/SerializedBasicEnvelopeEffect$Builder;->build()Lcom/android/internal/vibrator/persistence/SerializedBasicEnvelopeEffect;

    move-result-object p0

    return-object p0
.end method
