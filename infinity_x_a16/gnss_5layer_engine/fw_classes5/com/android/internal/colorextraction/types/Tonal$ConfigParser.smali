.class public Lcom/android/internal/colorextraction/types/Tonal$ConfigParser;
.super Ljava/lang/Object;
.source "Tonal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/colorextraction/types/Tonal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfigParser"
.end annotation


# instance fields
.field private final blacklist mTonalPalettes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 6

    .line 478
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 479
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/colorextraction/types/Tonal$ConfigParser;->mTonalPalettes:Ljava/util/ArrayList;

    .line 483
    :try_start_a
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x1170005

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object p1

    .line 484
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    .line 485
    :goto_19
    const/4 v1, 0x1

    if-eq v0, v1, :cond_62

    .line 486
    if-eqz v0, :cond_5d

    const/4 v1, 0x3

    if-ne v0, v1, :cond_22

    goto :goto_5d

    .line 489
    :cond_22
    const/4 v1, 0x2

    if-ne v0, v1, :cond_35

    .line 490
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 491
    const-string v1, "palettes"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 492
    invoke-direct {p0, p1}, Lcom/android/internal/colorextraction/types/Tonal$ConfigParser;->parsePalettes(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 494
    :cond_34
    goto :goto_5d

    .line 495
    :cond_35
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid XML event "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " - "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 496
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-direct {v1, v0, p1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v1

    .line 498
    :cond_5d
    :goto_5d
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0
    :try_end_61
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a .. :try_end_61} :catch_64
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_61} :catch_64

    goto :goto_19

    .line 502
    :cond_62
    nop

    .line 503
    return-void

    .line 500
    :catch_64
    move-exception p1

    .line 501
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private blacklist parsePalettes(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 526
    const/4 v0, 0x0

    const-string v1, "palettes"

    const/4 v2, 0x2

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 527
    :goto_7
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_47

    .line 528
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    if-eq v0, v2, :cond_15

    .line 529
    goto :goto_7

    .line 531
    :cond_15
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 533
    const-string v1, "palette"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 534
    iget-object v0, p0, Lcom/android/internal/colorextraction/types/Tonal$ConfigParser;->mTonalPalettes:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/android/internal/colorextraction/types/Tonal$ConfigParser;->readPalette(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 535
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 539
    goto :goto_7

    .line 537
    :cond_2e
    new-instance p1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 540
    :cond_47
    return-void
.end method

.method private blacklist readFloatArray(Ljava/lang/String;)[F
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 559
    const-string v0, " "

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "\n"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 560
    array-length v0, p1

    new-array v0, v0, [F

    .line 561
    const/4 v1, 0x0

    :goto_18
    array-length v2, p1

    if-ge v1, v2, :cond_26

    .line 562
    aget-object v2, p1, v1

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    aput v2, v0, v1

    .line 561
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    .line 564
    :cond_26
    return-object v0
.end method

.method private blacklist readPalette(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 544
    const-string v0, "palette"

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 546
    const-string v0, "h"

    invoke-interface {p1, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/colorextraction/types/Tonal$ConfigParser;->readFloatArray(Ljava/lang/String;)[F

    move-result-object v0

    .line 547
    const-string v1, "s"

    invoke-interface {p1, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/colorextraction/types/Tonal$ConfigParser;->readFloatArray(Ljava/lang/String;)[F

    move-result-object v1

    .line 548
    const-string v3, "l"

    invoke-interface {p1, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/colorextraction/types/Tonal$ConfigParser;->readFloatArray(Ljava/lang/String;)[F

    move-result-object v3

    .line 550
    if-eqz v0, :cond_31

    if-eqz v1, :cond_31

    if-eqz v3, :cond_31

    .line 554
    new-instance p1, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;

    invoke-direct {p1, v0, v1, v3}, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;-><init>([F[F[F)V

    return-object p1

    .line 551
    :cond_31
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "Incomplete range tag."

    invoke-direct {v0, v1, p1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private blacklist readRange(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/internal/colorextraction/types/Tonal$ColorRange;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 511
    const-string v0, "range"

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 512
    const-string v0, "h"

    invoke-interface {p1, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/colorextraction/types/Tonal$ConfigParser;->readFloatArray(Ljava/lang/String;)[F

    move-result-object v0

    .line 513
    const-string v1, "s"

    invoke-interface {p1, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/colorextraction/types/Tonal$ConfigParser;->readFloatArray(Ljava/lang/String;)[F

    move-result-object v1

    .line 514
    const-string v3, "l"

    invoke-interface {p1, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/colorextraction/types/Tonal$ConfigParser;->readFloatArray(Ljava/lang/String;)[F

    move-result-object v3

    .line 516
    if-eqz v0, :cond_66

    if-eqz v1, :cond_66

    if-eqz v3, :cond_66

    .line 520
    new-instance p1, Lcom/android/internal/colorextraction/types/Tonal$ColorRange;

    new-instance v2, Landroid/util/Range;

    const/4 v4, 0x0

    aget v5, v0, v4

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    const/4 v6, 0x1

    aget v0, v0, v6

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-direct {v2, v5, v0}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    new-instance v0, Landroid/util/Range;

    aget v5, v1, v4

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aget v1, v1, v6

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-direct {v0, v5, v1}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    new-instance v1, Landroid/util/Range;

    aget v4, v3, v4

    .line 521
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aget v3, v3, v6

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-direct {v1, v4, v3}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    invoke-direct {p1, v2, v0, v1}, Lcom/android/internal/colorextraction/types/Tonal$ColorRange;-><init>(Landroid/util/Range;Landroid/util/Range;Landroid/util/Range;)V

    .line 520
    return-object p1

    .line 517
    :cond_66
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "Incomplete range tag."

    invoke-direct {v0, v1, p1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public blacklist getTonalPalettes()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;",
            ">;"
        }
    .end annotation

    .line 506
    iget-object v0, p0, Lcom/android/internal/colorextraction/types/Tonal$ConfigParser;->mTonalPalettes:Ljava/util/ArrayList;

    return-object v0
.end method
