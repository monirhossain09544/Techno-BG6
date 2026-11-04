.class public final Landroid/os/vibrator/persistence/VibrationXmlSerializer;
.super Ljava/lang/Object;
.source "VibrationXmlSerializer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/vibrator/persistence/VibrationXmlSerializer$SerializationFailedException;,
        Landroid/os/vibrator/persistence/VibrationXmlSerializer$Flags;
    }
.end annotation


# static fields
.field public static final blacklist FLAG_ALLOW_HIDDEN_APIS:I = 0x1

.field public static final blacklist FLAG_PRETTY_PRINT:I = 0x2

.field private static final blacklist XML_ENCODING:Ljava/lang/String;

.field private static final blacklist XML_FEATURE_INDENT_OUTPUT:Ljava/lang/String; = "http://xmlpull.org/v1/doc/features.html#indent-output"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 76
    sget-object v0, Landroid/util/Xml$Encoding;->UTF_8:Landroid/util/Xml$Encoding;

    invoke-virtual {v0}, Landroid/util/Xml$Encoding;->name()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/vibrator/persistence/VibrationXmlSerializer;->XML_ENCODING:Ljava/lang/String;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    return-void
.end method

.method public static blacklist serialize(Landroid/os/VibrationEffect;Ljava/io/Writer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 94
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/os/vibrator/persistence/VibrationXmlSerializer;->serialize(Landroid/os/VibrationEffect;Ljava/io/Writer;I)V

    .line 95
    return-void
.end method

.method public static blacklist serialize(Landroid/os/VibrationEffect;Ljava/io/Writer;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 108
    nop

    .line 109
    invoke-static {p0, p2}, Landroid/os/vibrator/persistence/VibrationXmlSerializer;->toSerializedVibration(Landroid/os/VibrationEffect;I)Lcom/android/internal/vibrator/persistence/XmlSerializedVibration;

    move-result-object p0

    .line 110
    invoke-static {}, Landroid/util/Xml;->newFastSerializer()Lcom/android/modules/utils/TypedXmlSerializer;

    move-result-object v0

    .line 111
    and-int/lit8 p2, p2, 0x2

    const/4 v1, 0x0

    if-eqz p2, :cond_10

    const/4 p2, 0x1

    goto :goto_11

    :cond_10
    move p2, v1

    :goto_11
    const-string v2, "http://xmlpull.org/v1/doc/features.html#indent-output"

    invoke-interface {v0, v2, p2}, Lcom/android/modules/utils/TypedXmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 112
    invoke-interface {v0, p1}, Lcom/android/modules/utils/TypedXmlSerializer;->setOutput(Ljava/io/Writer;)V

    .line 113
    sget-object p1, Landroid/os/vibrator/persistence/VibrationXmlSerializer;->XML_ENCODING:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lcom/android/modules/utils/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 114
    invoke-interface {p0, v0}, Lcom/android/internal/vibrator/persistence/XmlSerializedVibration;->write(Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 115
    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endDocument()V

    .line 116
    return-void
.end method

.method private static blacklist toSerializedVibration(Landroid/os/VibrationEffect;I)Lcom/android/internal/vibrator/persistence/XmlSerializedVibration;
    .registers 4
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
            Landroid/os/vibrator/persistence/VibrationXmlSerializer$SerializationFailedException;
        }
    .end annotation

    .line 121
    nop

    .line 122
    const/4 v0, 0x1

    and-int/2addr p1, v0

    if-eqz p1, :cond_6

    .line 123
    goto :goto_7

    .line 122
    :cond_6
    const/4 v0, 0x0

    .line 127
    :goto_7
    :try_start_7
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/os/vibrator/Flags;->normalizedPwleEffects()Z

    move-result p1

    if-eqz p1, :cond_12

    .line 128
    invoke-static {p0, v0}, Lcom/android/internal/vibrator/persistence/VibrationEffectSerializer;->serialize(Landroid/os/VibrationEffect;I)Lcom/android/internal/vibrator/persistence/XmlSerializedVibration;

    move-result-object p1

    goto :goto_16

    .line 131
    :cond_12
    invoke-static {p0, v0}, Lcom/android/internal/vibrator/persistence/LegacyVibrationEffectXmlSerializer;->serialize(Landroid/os/VibrationEffect;I)Lcom/android/internal/vibrator/persistence/XmlSerializedVibration;

    move-result-object p1

    .line 134
    :goto_16
    invoke-static {p1, p0}, Lcom/android/internal/vibrator/persistence/XmlValidator;->checkSerializedVibration(Lcom/android/internal/vibrator/persistence/XmlSerializedVibration;Landroid/os/VibrationEffect;)V
    :try_end_19
    .catch Lcom/android/internal/vibrator/persistence/XmlSerializerException; {:try_start_7 .. :try_end_19} :catch_1b

    .line 138
    nop

    .line 140
    return-object p1

    .line 135
    :catch_1b
    move-exception p1

    .line 137
    new-instance v0, Landroid/os/vibrator/persistence/VibrationXmlSerializer$SerializationFailedException;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroid/os/vibrator/persistence/VibrationXmlSerializer$SerializationFailedException;-><init>(Landroid/os/VibrationEffect;Ljava/lang/Throwable;Landroid/os/vibrator/persistence/VibrationXmlSerializer-IA;)V

    throw v0
.end method
