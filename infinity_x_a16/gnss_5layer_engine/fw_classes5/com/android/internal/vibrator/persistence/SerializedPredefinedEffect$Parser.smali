.class final Lcom/android/internal/vibrator/persistence/SerializedPredefinedEffect$Parser;
.super Ljava/lang/Object;
.source "SerializedPredefinedEffect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/vibrator/persistence/SerializedPredefinedEffect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Parser"
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist parseNext(Lcom/android/modules/utils/TypedXmlPullParser;I)Lcom/android/internal/vibrator/persistence/SerializedPredefinedEffect;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/vibrator/persistence/XmlParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 81
    const-string v0, "predefined-effect"

    invoke-static {p0, v0}, Lcom/android/internal/vibrator/persistence/XmlValidator;->checkStartTag(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)V

    .line 83
    and-int/lit8 v0, p1, 0x1

    const/4 v1, 0x1

    if-eqz v0, :cond_c

    move v0, v1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    .line 84
    :goto_d
    const-string v2, "fallback"

    const-string v3, "name"

    if-eqz v0, :cond_1b

    .line 85
    filled-new-array {v3, v2}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/internal/vibrator/persistence/XmlValidator;->checkTagHasNoUnexpectedAttributes(Lcom/android/modules/utils/TypedXmlPullParser;[Ljava/lang/String;)V

    goto :goto_22

    .line 88
    :cond_1b
    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/internal/vibrator/persistence/XmlValidator;->checkTagHasNoUnexpectedAttributes(Lcom/android/modules/utils/TypedXmlPullParser;[Ljava/lang/String;)V

    .line 91
    :goto_22
    sget-object v4, Lcom/android/internal/vibrator/persistence/XmlConstants;->NAMESPACE:Ljava/lang/String;

    invoke-interface {p0, v4, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 92
    if-eqz v3, :cond_5d

    .line 95
    invoke-static {v3, p1}, Lcom/android/internal/vibrator/persistence/XmlConstants$PredefinedEffectName;->findByName(Ljava/lang/String;I)Lcom/android/internal/vibrator/persistence/XmlConstants$PredefinedEffectName;

    move-result-object p1

    .line 96
    if-eqz p1, :cond_44

    .line 100
    nop

    .line 101
    if-eqz v0, :cond_3a

    .line 102
    sget-object v0, Lcom/android/internal/vibrator/persistence/XmlConstants;->NAMESPACE:Ljava/lang/String;

    invoke-interface {p0, v0, v2, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    goto :goto_3b

    .line 103
    :cond_3a
    nop

    .line 106
    :goto_3b
    invoke-static {p0}, Lcom/android/internal/vibrator/persistence/XmlReader;->readEndTag(Lcom/android/modules/utils/TypedXmlPullParser;)V

    .line 108
    new-instance p0, Lcom/android/internal/vibrator/persistence/SerializedPredefinedEffect;

    invoke-direct {p0, p1, v1}, Lcom/android/internal/vibrator/persistence/SerializedPredefinedEffect;-><init>(Lcom/android/internal/vibrator/persistence/XmlConstants$PredefinedEffectName;Z)V

    return-object p0

    .line 97
    :cond_44
    new-instance p0, Lcom/android/internal/vibrator/persistence/XmlParserException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unexpected predefined effect name "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/vibrator/persistence/XmlParserException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 93
    :cond_5d
    new-instance p0, Lcom/android/internal/vibrator/persistence/XmlParserException;

    const-string p1, "Missing predefined effect name"

    invoke-direct {p0, p1}, Lcom/android/internal/vibrator/persistence/XmlParserException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
