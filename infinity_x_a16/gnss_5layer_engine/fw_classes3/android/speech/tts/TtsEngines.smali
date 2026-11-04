.class public Landroid/speech/tts/TtsEngines;
.super Ljava/lang/Object;
.source "TtsEngines.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/speech/tts/TtsEngines$EngineInfoComparator;
    }
.end annotation


# static fields
.field private static final greylist-max-o DBG:Z = false

.field private static final greylist-max-o LOCALE_DELIMITER_NEW:Ljava/lang/String; = "_"

.field private static final greylist-max-o LOCALE_DELIMITER_OLD:Ljava/lang/String; = "-"

.field private static final greylist-max-o TAG:Ljava/lang/String; = "TtsEngines"

.field private static final greylist-max-o XML_TAG_NAME:Ljava/lang/String; = "tts-engine"

.field private static final greylist-max-o sNormalizeCountry:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o sNormalizeLanguage:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final greylist-max-o mContext:Landroid/content/Context;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 7

    .line 84
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 85
    invoke-static {}, Ljava/util/Locale;->getISOLanguages()[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_c
    if-ge v4, v2, :cond_22

    aget-object v5, v1, v4

    .line 87
    :try_start_10
    new-instance v6, Ljava/util/Locale;

    invoke-direct {v6, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1c
    .catch Ljava/util/MissingResourceException; {:try_start_10 .. :try_end_1c} :catch_1d

    .line 90
    goto :goto_1f

    .line 88
    :catch_1d
    move-exception v5

    .line 89
    nop

    .line 85
    :goto_1f
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    .line 92
    :cond_22
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Landroid/speech/tts/TtsEngines;->sNormalizeLanguage:Ljava/util/Map;

    .line 94
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 95
    invoke-static {}, Ljava/util/Locale;->getISOCountries()[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    :goto_32
    if-ge v3, v2, :cond_4a

    aget-object v4, v1, v3

    .line 97
    :try_start_36
    new-instance v5, Ljava/util/Locale;

    const-string v6, ""

    invoke-direct {v5, v6, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_44
    .catch Ljava/util/MissingResourceException; {:try_start_36 .. :try_end_44} :catch_45

    .line 100
    goto :goto_47

    .line 98
    :catch_45
    move-exception v4

    .line 99
    nop

    .line 95
    :goto_47
    add-int/lit8 v3, v3, 0x1

    goto :goto_32

    .line 102
    :cond_4a
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Landroid/speech/tts/TtsEngines;->sNormalizeCountry:Ljava/util/Map;

    .line 103
    return-void
.end method

.method public constructor greylist <init>(Landroid/content/Context;)V
    .registers 2

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    iput-object p1, p0, Landroid/speech/tts/TtsEngines;->mContext:Landroid/content/Context;

    .line 108
    return-void
.end method

.method private greylist-max-o getEngineInfo(Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;)Landroid/speech/tts/TextToSpeech$EngineInfo;
    .registers 6

    .line 282
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 283
    if-eqz v0, :cond_31

    .line 284
    new-instance v1, Landroid/speech/tts/TextToSpeech$EngineInfo;

    invoke-direct {v1}, Landroid/speech/tts/TextToSpeech$EngineInfo;-><init>()V

    .line 287
    iget-object v2, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iput-object v2, v1, Landroid/speech/tts/TextToSpeech$EngineInfo;->name:Ljava/lang/String;

    .line 288
    invoke-virtual {v0, p2}, Landroid/content/pm/ServiceInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p2

    .line 289
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1a

    iget-object p2, v1, Landroid/speech/tts/TextToSpeech$EngineInfo;->name:Ljava/lang/String;

    goto :goto_1e

    :cond_1a
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_1e
    iput-object p2, v1, Landroid/speech/tts/TextToSpeech$EngineInfo;->label:Ljava/lang/String;

    .line 290
    invoke-virtual {v0}, Landroid/content/pm/ServiceInfo;->getIconResource()I

    move-result p2

    iput p2, v1, Landroid/speech/tts/TextToSpeech$EngineInfo;->icon:I

    .line 291
    iget p1, p1, Landroid/content/pm/ResolveInfo;->priority:I

    iput p1, v1, Landroid/speech/tts/TextToSpeech$EngineInfo;->priority:I

    .line 292
    invoke-direct {p0, v0}, Landroid/speech/tts/TtsEngines;->isSystemEngine(Landroid/content/pm/ServiceInfo;)Z

    move-result p1

    iput-boolean p1, v1, Landroid/speech/tts/TextToSpeech$EngineInfo;->system:Z

    .line 293
    return-object v1

    .line 296
    :cond_31
    const/4 p1, 0x0

    return-object p1
.end method

.method private greylist-max-o isSystemEngine(Landroid/content/pm/ServiceInfo;)Z
    .registers 3

    .line 182
    iget-object p1, p1, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 183
    if-eqz p1, :cond_b

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v0, 0x1

    and-int/2addr p1, v0

    if-eqz p1, :cond_b

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method public static greylist normalizeTTSLocale(Ljava/util/Locale;)Ljava/util/Locale;
    .registers 4

    .line 447
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 448
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_15

    .line 449
    sget-object v1, Landroid/speech/tts/TtsEngines;->sNormalizeLanguage:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 450
    if-eqz v1, :cond_15

    .line 451
    move-object v0, v1

    .line 455
    :cond_15
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    .line 456
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2a

    .line 457
    sget-object v2, Landroid/speech/tts/TtsEngines;->sNormalizeCountry:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 458
    if-eqz v2, :cond_2a

    .line 459
    move-object v1, v2

    .line 462
    :cond_2a
    new-instance v2, Ljava/util/Locale;

    invoke-virtual {p0}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, v0, v1, p0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method private static greylist-max-o parseEnginePrefFromList(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    .line 501
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_38

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_38

    .line 505
    :cond_e
    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 507
    array-length v0, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_17
    if-ge v3, v0, :cond_37

    aget-object v4, p0, v3

    .line 508
    const/16 v5, 0x3a

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 509
    if-lez v5, :cond_34

    .line 510
    invoke-virtual {v4, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_34

    .line 511
    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 507
    :cond_34
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    .line 516
    :cond_37
    return-object v1

    .line 502
    :cond_38
    :goto_38
    return-object v1
.end method

.method private greylist-max-o settingsActivityFromServiceInfo(Landroid/content/pm/ServiceInfo;Landroid/content/pm/PackageManager;)Ljava/lang/String;
    .registers 10

    .line 234
    const-string v0, ":"

    const-string v1, "Error parsing metadata for "

    const-string v2, "TtsEngines"

    .line 236
    const/4 v3, 0x0

    :try_start_7
    const-string v4, "android.speech.tts"

    invoke-virtual {p1, p2, v4}, Landroid/content/pm/ServiceInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v4
    :try_end_d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_d} :catch_e6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_d} :catch_c1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_d} :catch_9c
    .catchall {:try_start_7 .. :try_end_d} :catchall_9a

    .line 237
    if-nez v4, :cond_2c

    .line 238
    :try_start_f
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No meta-data found for :"

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_25
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_f .. :try_end_25} :catch_98
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_f .. :try_end_25} :catch_96
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_25} :catch_94
    .catchall {:try_start_f .. :try_end_25} :catchall_105

    .line 239
    nop

    .line 275
    if-eqz v4, :cond_2b

    .line 276
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V

    .line 239
    :cond_2b
    return-object v3

    .line 242
    :cond_2c
    :try_start_2c
    iget-object v5, p1, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p2, v5}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object p2

    .line 245
    :cond_32
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_8d

    .line 246
    const/4 v6, 0x2

    if-ne v5, v6, :cond_32

    .line 247
    const-string/jumbo v5, "tts-engine"

    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_74

    .line 248
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Package "

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v5, " uses unknown tag :"

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 249
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 248
    invoke-static {v2, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2c .. :try_end_6d} :catch_98
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2c .. :try_end_6d} :catch_96
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_6d} :catch_94
    .catchall {:try_start_2c .. :try_end_6d} :catchall_105

    .line 250
    nop

    .line 275
    if-eqz v4, :cond_73

    .line 276
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V

    .line 250
    :cond_73
    return-object v3

    .line 253
    :cond_74
    :try_start_74
    invoke-static {v4}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v5

    .line 254
    sget-object v6, Lcom/android/internal/R$styleable;->TextToSpeechEngine:[I

    invoke-virtual {p2, v5, v6}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 256
    const/4 v5, 0x0

    invoke-virtual {p2, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 258
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_86
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_74 .. :try_end_86} :catch_98
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_74 .. :try_end_86} :catch_96
    .catch Ljava/io/IOException; {:try_start_74 .. :try_end_86} :catch_94
    .catchall {:try_start_74 .. :try_end_86} :catchall_105

    .line 260
    nop

    .line 275
    if-eqz v4, :cond_8c

    .line 276
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V

    .line 260
    :cond_8c
    return-object v5

    .line 264
    :cond_8d
    nop

    .line 275
    if-eqz v4, :cond_93

    .line 276
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V

    .line 264
    :cond_93
    return-object v3

    .line 271
    :catch_94
    move-exception p2

    goto :goto_9e

    .line 268
    :catch_96
    move-exception p2

    goto :goto_c3

    .line 265
    :catch_98
    move-exception p2

    goto :goto_e8

    .line 275
    :catchall_9a
    move-exception p1

    goto :goto_107

    .line 271
    :catch_9c
    move-exception p2

    move-object v4, v3

    .line 272
    :goto_9e
    :try_start_9e
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ba
    .catchall {:try_start_9e .. :try_end_ba} :catchall_105

    .line 273
    nop

    .line 275
    if-eqz v4, :cond_c0

    .line 276
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V

    .line 273
    :cond_c0
    return-object v3

    .line 268
    :catch_c1
    move-exception p2

    move-object v4, v3

    .line 269
    :goto_c3
    :try_start_c3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_df
    .catchall {:try_start_c3 .. :try_end_df} :catchall_105

    .line 270
    nop

    .line 275
    if-eqz v4, :cond_e5

    .line 276
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V

    .line 270
    :cond_e5
    return-object v3

    .line 265
    :catch_e6
    move-exception p2

    move-object v4, v3

    .line 266
    :goto_e8
    :try_start_e8
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Could not load resources for : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_fe
    .catchall {:try_start_e8 .. :try_end_fe} :catchall_105

    .line 267
    nop

    .line 275
    if-eqz v4, :cond_104

    .line 276
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V

    .line 267
    :cond_104
    return-object v3

    .line 275
    :catchall_105
    move-exception p1

    move-object v3, v4

    :goto_107
    if-eqz v3, :cond_10c

    .line 276
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    .line 278
    :cond_10c
    throw p1
.end method

.method public static greylist-max-o toOldLocaleStringFormat(Ljava/util/Locale;)[Ljava/lang/String;
    .registers 7

    .line 478
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, ""

    aput-object v2, v0, v1

    const/4 v3, 0x1

    aput-object v2, v0, v3

    const/4 v4, 0x2

    aput-object v2, v0, v4

    .line 482
    :try_start_e
    invoke-virtual {p0}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v1

    .line 483
    invoke-virtual {p0}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    .line 484
    invoke-virtual {p0}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v4
    :try_end_20
    .catch Ljava/util/MissingResourceException; {:try_start_e .. :try_end_20} :catch_21

    .line 486
    return-object v0

    .line 487
    :catch_21
    move-exception p0

    .line 490
    const-string p0, "eng"

    const-string v0, "USA"

    filled-new-array {p0, v0, v2}, [Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private greylist-max-o updateValueInCommaSeparatedList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 15

    .line 550
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 551
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/16 v2, 0x3a

    if-eqz v1, :cond_19

    .line 553
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6f

    .line 555
    :cond_19
    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 557
    nop

    .line 559
    nop

    .line 560
    array-length v1, p1

    const/4 v3, 0x1

    const/4 v4, 0x0

    move v7, v3

    move v5, v4

    move v6, v5

    :goto_27
    const/16 v8, 0x2c

    if-ge v5, v1, :cond_5f

    aget-object v9, p1, v5

    .line 561
    invoke-virtual {v9, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    .line 562
    if-lez v10, :cond_5c

    .line 563
    invoke-virtual {v9, v4, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_52

    .line 564
    if-eqz v7, :cond_41

    .line 565
    move v7, v4

    goto :goto_44

    .line 567
    :cond_41
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 569
    :goto_44
    nop

    .line 570
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v6, v3

    goto :goto_5c

    .line 572
    :cond_52
    if-eqz v7, :cond_56

    .line 573
    move v7, v4

    goto :goto_59

    .line 575
    :cond_56
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 578
    :goto_59
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 560
    :cond_5c
    :goto_5c
    add-int/lit8 v5, v5, 0x1

    goto :goto_27

    .line 583
    :cond_5f
    if-nez v6, :cond_6f

    .line 586
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 587
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 591
    :cond_6f
    :goto_6f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public greylist-max-o getDefaultEngine()Ljava/lang/String;
    .registers 3

    .line 116
    iget-object v0, p0, Landroid/speech/tts/TtsEngines;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "tts_default_synth"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 118
    invoke-virtual {p0, v0}, Landroid/speech/tts/TtsEngines;->isEngineInstalled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    goto :goto_18

    :cond_14
    invoke-virtual {p0}, Landroid/speech/tts/TtsEngines;->getHighestRankedEngineName()Ljava/lang/String;

    move-result-object v0

    :goto_18
    return-object v0
.end method

.method public greylist-max-o getEngineInfo(Ljava/lang/String;)Landroid/speech/tts/TextToSpeech$EngineInfo;
    .registers 5

    .line 140
    iget-object v0, p0, Landroid/speech/tts/TtsEngines;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 141
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.TTS_SERVICE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 142
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 143
    const/high16 p1, 0x10000

    invoke-virtual {v0, v1, p1}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p1

    .line 148
    if-eqz p1, :cond_2b

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2b

    .line 149
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ResolveInfo;

    invoke-direct {p0, p1, v0}, Landroid/speech/tts/TtsEngines;->getEngineInfo(Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;)Landroid/speech/tts/TextToSpeech$EngineInfo;

    move-result-object p1

    return-object p1

    .line 152
    :cond_2b
    const/4 p1, 0x0

    return-object p1
.end method

.method public greylist getEngines()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/speech/tts/TextToSpeech$EngineInfo;",
            ">;"
        }
    .end annotation

    .line 162
    iget-object v0, p0, Landroid/speech/tts/TtsEngines;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 163
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.TTS_SERVICE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 164
    nop

    .line 165
    const/high16 v2, 0x10000

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 166
    if-nez v1, :cond_1b

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 168
    :cond_1b
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 170
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_28
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 171
    invoke-direct {p0, v3, v0}, Landroid/speech/tts/TtsEngines;->getEngineInfo(Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;)Landroid/speech/tts/TextToSpeech$EngineInfo;

    move-result-object v3

    .line 172
    if-eqz v3, :cond_3d

    .line 173
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 175
    :cond_3d
    goto :goto_28

    .line 176
    :cond_3e
    sget-object v0, Landroid/speech/tts/TtsEngines$EngineInfoComparator;->INSTANCE:Landroid/speech/tts/TtsEngines$EngineInfoComparator;

    invoke-static {v2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 178
    return-object v2
.end method

.method public greylist-max-o getHighestRankedEngineName()Ljava/lang/String;
    .registers 4

    .line 126
    invoke-virtual {p0}, Landroid/speech/tts/TtsEngines;->getEngines()Ljava/util/List;

    move-result-object v0

    .line 128
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1e

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/speech/tts/TextToSpeech$EngineInfo;

    iget-boolean v2, v2, Landroid/speech/tts/TextToSpeech$EngineInfo;->system:Z

    if-eqz v2, :cond_1e

    .line 129
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/speech/tts/TextToSpeech$EngineInfo;

    iget-object v0, v0, Landroid/speech/tts/TextToSpeech$EngineInfo;->name:Ljava/lang/String;

    return-object v0

    .line 132
    :cond_1e
    const/4 v0, 0x0

    return-object v0
.end method

.method public greylist getLocalePrefForEngine(Ljava/lang/String;)Ljava/util/Locale;
    .registers 4

    .line 336
    iget-object v0, p0, Landroid/speech/tts/TtsEngines;->mContext:Landroid/content/Context;

    .line 337
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "tts_default_locale"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 336
    invoke-virtual {p0, p1, v0}, Landroid/speech/tts/TtsEngines;->getLocalePrefForEngine(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Locale;

    move-result-object p1

    return-object p1
.end method

.method public greylist-max-o getLocalePrefForEngine(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Locale;
    .registers 4

    .line 343
    invoke-static {p2, p1}, Landroid/speech/tts/TtsEngines;->parseEnginePrefFromList(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 347
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_f

    .line 349
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    return-object p1

    .line 352
    :cond_f
    invoke-virtual {p0, p1}, Landroid/speech/tts/TtsEngines;->parseLocaleString(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object p2

    .line 353
    if-nez p2, :cond_35

    .line 354
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to parse locale "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", returning en_US instead"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "TtsEngines"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    sget-object p2, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 360
    :cond_35
    return-object p2
.end method

.method public greylist getSettingsIntent(Ljava/lang/String;)Landroid/content/Intent;
    .registers 6

    .line 202
    iget-object v0, p0, Landroid/speech/tts/TtsEngines;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 203
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.TTS_SERVICE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 204
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 205
    const v2, 0x10080

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 210
    if-eqz v1, :cond_3a

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3a

    .line 211
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 212
    if-eqz v1, :cond_3a

    .line 213
    invoke-direct {p0, v1, v0}, Landroid/speech/tts/TtsEngines;->settingsActivityFromServiceInfo(Landroid/content/pm/ServiceInfo;Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v0

    .line 214
    if-eqz v0, :cond_3a

    .line 215
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 216
    invoke-virtual {v1, p1, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 217
    return-object v1

    .line 222
    :cond_3a
    const/4 p1, 0x0

    return-object p1
.end method

.method public greylist-max-o isEngineInstalled(Ljava/lang/String;)Z
    .registers 3

    .line 190
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 191
    return v0

    .line 194
    :cond_4
    invoke-virtual {p0, p1}, Landroid/speech/tts/TtsEngines;->getEngineInfo(Ljava/lang/String;)Landroid/speech/tts/TextToSpeech$EngineInfo;

    move-result-object p1

    if-eqz p1, :cond_b

    const/4 v0, 0x1

    :cond_b
    return v0
.end method

.method public greylist-max-o isLocaleSetToDefaultForEngine(Ljava/lang/String;)Z
    .registers 4

    .line 372
    iget-object v0, p0, Landroid/speech/tts/TtsEngines;->mContext:Landroid/content/Context;

    .line 373
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "tts_default_locale"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 372
    invoke-static {v0, p1}, Landroid/speech/tts/TtsEngines;->parseEnginePrefFromList(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    return p1
.end method

.method public greylist parseLocaleString(Ljava/lang/String;)Ljava/util/Locale;
    .registers 12

    .line 386
    nop

    .line 387
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "Failed to convert "

    const-string v3, "TtsEngines"

    const-string v4, ""

    if-nez v0, :cond_70

    .line 388
    const-string v0, "[-_]"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 390
    const/4 v5, 0x0

    aget-object v5, v0, v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 391
    array-length v6, v0

    if-nez v6, :cond_39

    .line 392
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " to a valid Locale object. Only separators"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    return-object v1

    .line 396
    :cond_39
    array-length v6, v0

    const/4 v7, 0x3

    if-le v6, v7, :cond_58

    .line 397
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " to a valid Locale object. Too many separators"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    return-object v1

    .line 401
    :cond_58
    array-length v6, v0

    const/4 v8, 0x2

    if-lt v6, v8, :cond_64

    .line 402
    const/4 v6, 0x1

    aget-object v6, v0, v6

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    goto :goto_65

    .line 401
    :cond_64
    move-object v6, v4

    .line 404
    :goto_65
    array-length v9, v0

    if-lt v9, v7, :cond_6d

    .line 405
    aget-object v4, v0, v8

    move-object v0, v4

    move-object v4, v5

    goto :goto_72

    .line 404
    :cond_6d
    move-object v0, v4

    move-object v4, v5

    goto :goto_72

    .line 387
    :cond_70
    move-object v0, v4

    move-object v6, v0

    .line 410
    :goto_72
    sget-object v5, Landroid/speech/tts/TtsEngines;->sNormalizeLanguage:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 411
    if-eqz v5, :cond_7d

    .line 412
    move-object v4, v5

    .line 415
    :cond_7d
    sget-object v5, Landroid/speech/tts/TtsEngines;->sNormalizeCountry:Ljava/util/Map;

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 416
    if-eqz v5, :cond_88

    .line 417
    move-object v6, v5

    .line 423
    :cond_88
    new-instance v5, Ljava/util/Locale;

    invoke-direct {v5, v4, v6, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    :try_start_8d
    invoke-virtual {v5}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    .line 426
    invoke-virtual {v5}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;
    :try_end_93
    .catch Ljava/util/MissingResourceException; {:try_start_8d .. :try_end_93} :catch_94

    .line 427
    return-object v5

    .line 428
    :catch_94
    move-exception v0

    .line 429
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " to a valid Locale object."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    return-object v1
.end method

.method public declared-synchronized greylist updateLocalePrefForEngine(Ljava/lang/String;Ljava/util/Locale;)V
    .registers 5

    monitor-enter p0

    .line 527
    :try_start_1
    iget-object v0, p0, Landroid/speech/tts/TtsEngines;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "tts_default_locale"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 534
    nop

    .line 535
    if-eqz p2, :cond_16

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_18

    :cond_16
    const-string p2, ""

    .line 534
    :goto_18
    invoke-direct {p0, v0, p1, p2}, Landroid/speech/tts/TtsEngines;->updateValueInCommaSeparatedList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 539
    iget-object p2, p0, Landroid/speech/tts/TtsEngines;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string/jumbo v0, "tts_default_locale"

    .line 540
    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p1

    .line 539
    invoke-static {p2, v0, p1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_2c
    .catchall {:try_start_1 .. :try_end_2c} :catchall_2e

    .line 541
    monitor-exit p0

    return-void

    .line 526
    :catchall_2e
    move-exception p1

    :try_start_2f
    monitor-exit p0
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2e

    throw p1
.end method
