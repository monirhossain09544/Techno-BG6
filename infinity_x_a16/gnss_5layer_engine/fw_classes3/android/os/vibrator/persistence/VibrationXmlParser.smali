.class public final Landroid/os/vibrator/persistence/VibrationXmlParser;
.super Ljava/lang/Object;
.source "VibrationXmlParser.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/vibrator/persistence/VibrationXmlParser$ElementParser;,
        Landroid/os/vibrator/persistence/VibrationXmlParser$ParseFailedException;,
        Landroid/os/vibrator/persistence/VibrationXmlParser$Flags;
    }
.end annotation


# static fields
.field public static final blacklist APPLICATION_VIBRATION_XML_MIME_TYPE:Ljava/lang/String; = "application/vnd.android.haptics.vibration+xml"

.field public static final blacklist FLAG_ALLOW_HIDDEN_APIS:I = 0x1


# direct methods
.method public static synthetic blacklist $r8$lambda$-R-0-KdYRLwY70_HKmLQlQShGJ8(Lcom/android/modules/utils/TypedXmlPullParser;I)Landroid/os/vibrator/persistence/ParsedVibration;
    .registers 2

    invoke-static {p0, p1}, Landroid/os/vibrator/persistence/VibrationXmlParser;->parseElementInternal(Lcom/android/modules/utils/TypedXmlPullParser;I)Landroid/os/vibrator/persistence/ParsedVibration;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$CboBSd8Io_UpVlYlm872u5okLwk(Lcom/android/modules/utils/TypedXmlPullParser;I)Landroid/os/VibrationEffect;
    .registers 2

    invoke-static {p0, p1}, Landroid/os/vibrator/persistence/VibrationXmlParser;->parseVibrationEffectInternal(Lcom/android/modules/utils/TypedXmlPullParser;I)Landroid/os/VibrationEffect;

    move-result-object p0

    return-object p0
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 402
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 403
    return-void
.end method

.method public static blacklist isSupportedMimeType(Ljava/lang/String;)Z
    .registers 2

    .line 167
    const-string v0, "application/vnd.android.haptics.vibration+xml"

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static whitelist parse(Ljava/io/InputStream;)Landroid/os/vibrator/persistence/ParsedVibration;
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 196
    new-instance v0, Ljava/io/InputStreamReader;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-static {v0}, Landroid/os/vibrator/persistence/VibrationXmlParser;->parseDocument(Ljava/io/Reader;)Landroid/os/vibrator/persistence/ParsedVibration;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist parseDocument(Ljava/io/Reader;)Landroid/os/vibrator/persistence/ParsedVibration;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 256
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/os/vibrator/persistence/VibrationXmlParser;->parseDocument(Ljava/io/Reader;I)Landroid/os/vibrator/persistence/ParsedVibration;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist parseDocument(Ljava/io/Reader;I)Landroid/os/vibrator/persistence/ParsedVibration;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 269
    new-instance v0, Landroid/os/vibrator/persistence/VibrationXmlParser$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/os/vibrator/persistence/VibrationXmlParser$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p0, p1, v0}, Landroid/os/vibrator/persistence/VibrationXmlParser;->parseDocumentInternal(Ljava/io/Reader;ILandroid/os/vibrator/persistence/VibrationXmlParser$ElementParser;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/vibrator/persistence/ParsedVibration;

    return-object p0
.end method

.method private static blacklist parseDocumentInternal(Ljava/io/Reader;ILandroid/os/vibrator/persistence/VibrationXmlParser$ElementParser;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/Reader;",
            "I",
            "Landroid/os/vibrator/persistence/VibrationXmlParser$ElementParser<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 353
    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newFastPullParser()Lcom/android/modules/utils/TypedXmlPullParser;

    move-result-object v1

    .line 354
    const-string v2, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->setFeature(Ljava/lang/String;Z)V

    .line 355
    invoke-interface {v1, p0}, Lcom/android/modules/utils/TypedXmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 358
    invoke-static {v1}, Lcom/android/internal/vibrator/persistence/XmlReader;->readDocumentStart(Lcom/android/modules/utils/TypedXmlPullParser;)V

    .line 361
    invoke-interface {p2, v1, p1}, Landroid/os/vibrator/persistence/VibrationXmlParser$ElementParser;->parse(Lcom/android/modules/utils/TypedXmlPullParser;I)Ljava/lang/Object;

    move-result-object p0

    .line 364
    invoke-static {v1}, Lcom/android/internal/vibrator/persistence/XmlReader;->readDocumentEndTag(Lcom/android/modules/utils/TypedXmlPullParser;)V
    :try_end_18
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_18} :catch_20
    .catch Lcom/android/internal/vibrator/persistence/XmlParserException; {:try_start_1 .. :try_end_18} :catch_19

    .line 366
    return-object p0

    .line 369
    :catch_19
    move-exception p0

    .line 370
    new-instance p1, Landroid/os/vibrator/persistence/VibrationXmlParser$ParseFailedException;

    invoke-direct {p1, p0, v0}, Landroid/os/vibrator/persistence/VibrationXmlParser$ParseFailedException;-><init>(Lcom/android/internal/vibrator/persistence/XmlParserException;Landroid/os/vibrator/persistence/VibrationXmlParser-IA;)V

    throw p1

    .line 367
    :catch_20
    move-exception p0

    .line 368
    new-instance p1, Landroid/os/vibrator/persistence/VibrationXmlParser$ParseFailedException;

    const-string p2, "Error initializing XMLPullParser"

    invoke-direct {p1, p2, p0, v0}, Landroid/os/vibrator/persistence/VibrationXmlParser$ParseFailedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Landroid/os/vibrator/persistence/VibrationXmlParser-IA;)V

    throw p1
.end method

.method public static blacklist parseElement(Lcom/android/modules/utils/TypedXmlPullParser;I)Landroid/os/vibrator/persistence/ParsedVibration;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 294
    :try_start_0
    invoke-static {p0, p1}, Landroid/os/vibrator/persistence/VibrationXmlParser;->parseElementInternal(Lcom/android/modules/utils/TypedXmlPullParser;I)Landroid/os/vibrator/persistence/ParsedVibration;

    move-result-object p0
    :try_end_4
    .catch Lcom/android/internal/vibrator/persistence/XmlParserException; {:try_start_0 .. :try_end_4} :catch_5

    return-object p0

    .line 295
    :catch_5
    move-exception p0

    .line 296
    new-instance p1, Landroid/os/vibrator/persistence/VibrationXmlParser$ParseFailedException;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Landroid/os/vibrator/persistence/VibrationXmlParser$ParseFailedException;-><init>(Lcom/android/internal/vibrator/persistence/XmlParserException;Landroid/os/vibrator/persistence/VibrationXmlParser-IA;)V

    throw p1
.end method

.method private static blacklist parseElementInternal(Lcom/android/modules/utils/TypedXmlPullParser;I)Landroid/os/vibrator/persistence/ParsedVibration;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/internal/vibrator/persistence/XmlParserException;
        }
    .end annotation

    .line 304
    invoke-static {p0}, Lcom/android/internal/vibrator/persistence/XmlValidator;->checkStartTag(Lcom/android/modules/utils/TypedXmlPullParser;)V

    .line 306
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 307
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_58

    :cond_e
    goto :goto_25

    :sswitch_f
    const-string/jumbo v1, "vibration-select"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v1, 0x1

    goto :goto_26

    :sswitch_1a
    const-string/jumbo v1, "vibration-effect"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v1, 0x0

    goto :goto_26

    :goto_25
    const/4 v1, -0x1

    :goto_26
    packed-switch v1, :pswitch_data_62

    .line 313
    new-instance p0, Landroid/os/vibrator/persistence/VibrationXmlParser$ParseFailedException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected tag "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " when parsing a vibration"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/os/vibrator/persistence/VibrationXmlParser$ParseFailedException;-><init>(Ljava/lang/String;Landroid/os/vibrator/persistence/VibrationXmlParser-IA;)V

    throw p0

    .line 311
    :pswitch_49
    invoke-static {p0, p1}, Landroid/os/vibrator/persistence/VibrationXmlParser;->parseVibrationSelectInternal(Lcom/android/modules/utils/TypedXmlPullParser;I)Landroid/os/vibrator/persistence/ParsedVibration;

    move-result-object p0

    return-object p0

    .line 309
    :pswitch_4e
    new-instance v0, Landroid/os/vibrator/persistence/ParsedVibration;

    invoke-static {p0, p1}, Landroid/os/vibrator/persistence/VibrationXmlParser;->parseVibrationEffectInternal(Lcom/android/modules/utils/TypedXmlPullParser;I)Landroid/os/VibrationEffect;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/os/vibrator/persistence/ParsedVibration;-><init>(Landroid/os/VibrationEffect;)V

    return-object v0

    :sswitch_data_58
    .sparse-switch
        0x97892c -> :sswitch_1a
        0x18700497 -> :sswitch_f
    .end sparse-switch

    :pswitch_data_62
    .packed-switch 0x0
        :pswitch_4e
        :pswitch_49
    .end packed-switch
.end method

.method public static whitelist parseVibrationEffect(Ljava/io/InputStream;)Landroid/os/VibrationEffect;
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 217
    new-instance v0, Ljava/io/InputStreamReader;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-static {v0}, Landroid/os/vibrator/persistence/VibrationXmlParser;->parseVibrationEffect(Ljava/io/Reader;)Landroid/os/VibrationEffect;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist parseVibrationEffect(Ljava/io/Reader;)Landroid/os/VibrationEffect;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 229
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/os/vibrator/persistence/VibrationXmlParser;->parseVibrationEffect(Ljava/io/Reader;I)Landroid/os/VibrationEffect;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist parseVibrationEffect(Ljava/io/Reader;I)Landroid/os/VibrationEffect;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 243
    new-instance v0, Landroid/os/vibrator/persistence/VibrationXmlParser$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Landroid/os/vibrator/persistence/VibrationXmlParser$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {p0, p1, v0}, Landroid/os/vibrator/persistence/VibrationXmlParser;->parseDocumentInternal(Ljava/io/Reader;ILandroid/os/vibrator/persistence/VibrationXmlParser$ElementParser;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/VibrationEffect;

    return-object p0
.end method

.method private static blacklist parseVibrationEffectInternal(Lcom/android/modules/utils/TypedXmlPullParser;I)Landroid/os/VibrationEffect;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/internal/vibrator/persistence/XmlParserException;
        }
    .end annotation

    .line 337
    nop

    .line 338
    const/4 v0, 0x1

    and-int/2addr p1, v0

    if-eqz p1, :cond_6

    .line 339
    goto :goto_7

    .line 338
    :cond_6
    const/4 v0, 0x0

    .line 341
    :goto_7
    invoke-static {p0, v0}, Lcom/android/internal/vibrator/persistence/VibrationEffectXmlParser;->parseTag(Lcom/android/modules/utils/TypedXmlPullParser;I)Lcom/android/internal/vibrator/persistence/XmlSerializedVibration;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/internal/vibrator/persistence/XmlSerializedVibration;->deserialize()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/VibrationEffect;

    return-object p0
.end method

.method private static blacklist parseVibrationSelectInternal(Lcom/android/modules/utils/TypedXmlPullParser;I)Landroid/os/vibrator/persistence/ParsedVibration;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/internal/vibrator/persistence/XmlParserException;
        }
    .end annotation

    .line 322
    const-string/jumbo v0, "vibration-select"

    invoke-static {p0, v0}, Lcom/android/internal/vibrator/persistence/XmlValidator;->checkStartTag(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)V

    .line 323
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/android/internal/vibrator/persistence/XmlValidator;->checkTagHasNoUnexpectedAttributes(Lcom/android/modules/utils/TypedXmlPullParser;[Ljava/lang/String;)V

    .line 325
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v0

    .line 326
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 327
    :goto_15
    invoke-static {p0, v0}, Lcom/android/internal/vibrator/persistence/XmlReader;->readNextTagWithin(Lcom/android/modules/utils/TypedXmlPullParser;I)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 328
    invoke-static {p0, p1}, Landroid/os/vibrator/persistence/VibrationXmlParser;->parseVibrationEffectInternal(Lcom/android/modules/utils/TypedXmlPullParser;I)Landroid/os/VibrationEffect;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_15

    .line 330
    :cond_23
    new-instance p0, Landroid/os/vibrator/persistence/ParsedVibration;

    invoke-direct {p0, v1}, Landroid/os/vibrator/persistence/ParsedVibration;-><init>(Ljava/util/List;)V

    return-object p0
.end method
