.class final Lcom/android/internal/vibrator/persistence/SerializedVendorEffect$Parser;
.super Ljava/lang/Object;
.source "SerializedVendorEffect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/vibrator/persistence/SerializedVendorEffect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Parser"
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist parseNext(Lcom/android/modules/utils/TypedXmlPullParser;I)Lcom/android/internal/vibrator/persistence/SerializedVendorEffect;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/vibrator/persistence/XmlParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 94
    const-string p1, "vendor-effect"

    invoke-static {p0, p1}, Lcom/android/internal/vibrator/persistence/XmlValidator;->checkStartTag(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)V

    .line 95
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/android/internal/vibrator/persistence/XmlValidator;->checkTagHasNoUnexpectedAttributes(Lcom/android/modules/utils/TypedXmlPullParser;[Ljava/lang/String;)V

    .line 98
    invoke-static {p0, p1}, Lcom/android/internal/vibrator/persistence/XmlReader;->readNextText(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)V

    .line 101
    :try_start_e
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 102
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_1f

    move v2, v3

    goto :goto_20

    :cond_1f
    move v2, v0

    :goto_20
    const-string v4, "Expected tag %s to have base64 representation of vendor data, got empty"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v2, v4, v5}, Lcom/android/internal/vibrator/persistence/XmlValidator;->checkParserCondition(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 106
    new-instance v2, Ljava/io/ByteArrayInputStream;

    .line 107
    invoke-static {v1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 106
    invoke-static {v2}, Landroid/os/PersistableBundle;->readFromStream(Ljava/io/InputStream;)Landroid/os/PersistableBundle;

    move-result-object v1

    .line 108
    invoke-virtual {v1}, Landroid/os/PersistableBundle;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3d

    move v0, v3

    :cond_3d
    const-string v2, "Expected tag %s to have non-empty vendor data, got empty bundle"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/android/internal/vibrator/persistence/XmlValidator;->checkParserCondition(ZLjava/lang/String;[Ljava/lang/Object;)V
    :try_end_46
    .catch Ljava/lang/IllegalArgumentException; {:try_start_e .. :try_end_46} :catch_59
    .catch Ljava/lang/NullPointerException; {:try_start_e .. :try_end_46} :catch_59
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_46} :catch_50

    .line 119
    nop

    .line 122
    invoke-static {p0}, Lcom/android/internal/vibrator/persistence/XmlReader;->readEndTag(Lcom/android/modules/utils/TypedXmlPullParser;)V

    .line 124
    new-instance p0, Lcom/android/internal/vibrator/persistence/SerializedVendorEffect;

    invoke-direct {p0, v1}, Lcom/android/internal/vibrator/persistence/SerializedVendorEffect;-><init>(Landroid/os/PersistableBundle;)V

    return-object p0

    .line 117
    :catch_50
    move-exception p0

    .line 118
    new-instance p1, Lcom/android/internal/vibrator/persistence/XmlParserException;

    const-string v0, "Error reading vendor data from decoded bytes"

    invoke-direct {p1, v0, p0}, Lcom/android/internal/vibrator/persistence/XmlParserException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 111
    :catch_59
    move-exception v0

    .line 112
    new-instance v1, Lcom/android/internal/vibrator/persistence/XmlParserException;

    .line 115
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getText()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p1, p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 113
    const-string p1, "Expected base64 representation of vendor data in tag %s, got %s"

    invoke-static {p1, p0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Lcom/android/internal/vibrator/persistence/XmlParserException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
