.class public Lcom/android/internal/pm/pkg/component/ParsedIntentInfoUtils;
.super Ljava/lang/Object;
.source "ParsedIntentInfoUtils.java"


# static fields
.field public static final blacklist DEBUG:Z = false

.field private static final blacklist TAG:Ljava/lang/String; = "PackageParsing"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist parseData(Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZLandroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            "Z",
            "Landroid/content/pm/parsing/result/ParseInput;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;",
            ">;"
        }
    .end annotation

    .line 377
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object p0

    .line 378
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestData:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 380
    const/4 p2, 0x0

    :try_start_b
    invoke-virtual {p1, p2, p2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v0
    :try_end_f
    .catchall {:try_start_b .. :try_end_f} :catchall_ea

    .line 382
    if-eqz v0, :cond_22

    .line 384
    :try_start_11
    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_14
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_11 .. :try_end_14} :catch_15
    .catchall {:try_start_11 .. :try_end_14} :catchall_ea

    .line 387
    goto :goto_22

    .line 385
    :catch_15
    move-exception p0

    .line 386
    :try_start_16
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p4, p0}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0
    :try_end_1e
    .catchall {:try_start_16 .. :try_end_1e} :catchall_ea

    .line 495
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 386
    return-object p0

    .line 390
    :cond_22
    :goto_22
    const/16 v0, 0xb

    :try_start_24
    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v0

    .line 392
    if-eqz v0, :cond_2d

    .line 393
    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addMimeGroup(Ljava/lang/String;)V

    .line 396
    :cond_2d
    const/4 v0, 0x1

    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v1

    .line 398
    if-eqz v1, :cond_37

    .line 399
    invoke-virtual {p0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 402
    :cond_37
    const/16 v1, 0x8

    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v1

    .line 404
    if-eqz v1, :cond_42

    .line 405
    invoke-virtual {p0, v1, p2}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    .line 409
    :cond_42
    const/16 v1, 0x9

    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v1

    .line 411
    if-eqz v1, :cond_4d

    .line 412
    invoke-virtual {p0, v1, v0}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    .line 416
    :cond_4d
    const/16 v1, 0xa

    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v1

    .line 418
    const/4 v2, 0x2

    if-eqz v1, :cond_65

    .line 419
    if-nez p3, :cond_62

    .line 420
    const-string p0, "sspPattern not allowed here; ssp must be literal"

    invoke-interface {p4, p0}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0
    :try_end_5e
    .catchall {:try_start_24 .. :try_end_5e} :catchall_ea

    .line 495
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 420
    return-object p0

    .line 423
    :cond_62
    :try_start_62
    invoke-virtual {p0, v1, v2}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    .line 427
    :cond_65
    const/16 v1, 0xf

    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v1

    .line 429
    const/4 v3, 0x3

    if-eqz v1, :cond_7d

    .line 430
    if-nez p3, :cond_7a

    .line 431
    const-string p0, "sspAdvancedPattern not allowed here; ssp must be literal"

    invoke-interface {p4, p0}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0
    :try_end_76
    .catchall {:try_start_62 .. :try_end_76} :catchall_ea

    .line 495
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 431
    return-object p0

    .line 434
    :cond_7a
    :try_start_7a
    invoke-virtual {p0, v1, v3}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    .line 438
    :cond_7d
    const/16 v1, 0xd

    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v1

    .line 440
    const/4 v4, 0x4

    if-eqz v1, :cond_89

    .line 441
    invoke-virtual {p0, v1, v4}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    .line 446
    :cond_89
    invoke-virtual {p1, v2, p2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v1

    .line 448
    invoke-virtual {p1, v3, p2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v5

    .line 450
    if-eqz v1, :cond_96

    .line 451
    invoke-virtual {p0, v1, v5}, Landroid/content/IntentFilter;->addDataAuthority(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    :cond_96
    invoke-virtual {p1, v4, p2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v1

    .line 456
    if-eqz v1, :cond_9f

    .line 457
    invoke-virtual {p0, v1, p2}, Landroid/content/IntentFilter;->addDataPath(Ljava/lang/String;I)V

    .line 460
    :cond_9f
    const/4 v1, 0x5

    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v1

    .line 462
    if-eqz v1, :cond_a9

    .line 463
    invoke-virtual {p0, v1, v0}, Landroid/content/IntentFilter;->addDataPath(Ljava/lang/String;I)V

    .line 466
    :cond_a9
    const/4 v0, 0x6

    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v0

    .line 468
    if-eqz v0, :cond_bf

    .line 469
    if-nez p3, :cond_bc

    .line 470
    const-string p0, "pathPattern not allowed here; path must be literal"

    invoke-interface {p4, p0}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0
    :try_end_b8
    .catchall {:try_start_7a .. :try_end_b8} :catchall_ea

    .line 495
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 470
    return-object p0

    .line 473
    :cond_bc
    :try_start_bc
    invoke-virtual {p0, v0, v2}, Landroid/content/IntentFilter;->addDataPath(Ljava/lang/String;I)V

    .line 476
    :cond_bf
    const/16 v0, 0xe

    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v0

    .line 478
    if-eqz v0, :cond_d6

    .line 479
    if-nez p3, :cond_d3

    .line 480
    const-string p0, "pathAdvancedPattern not allowed here; path must be literal"

    invoke-interface {p4, p0}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0
    :try_end_cf
    .catchall {:try_start_bc .. :try_end_cf} :catchall_ea

    .line 495
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 480
    return-object p0

    .line 483
    :cond_d3
    :try_start_d3
    invoke-virtual {p0, v0, v3}, Landroid/content/IntentFilter;->addDataPath(Ljava/lang/String;I)V

    .line 486
    :cond_d6
    const/16 p3, 0xc

    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object p2

    .line 488
    if-eqz p2, :cond_e1

    .line 489
    invoke-virtual {p0, p2, v4}, Landroid/content/IntentFilter;->addDataPath(Ljava/lang/String;I)V

    .line 493
    :cond_e1
    const/4 p0, 0x0

    invoke-interface {p4, p0}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0
    :try_end_e6
    .catchall {:try_start_d3 .. :try_end_e6} :catchall_ea

    .line 495
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 493
    return-object p0

    .line 495
    :catchall_ea
    move-exception p0

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 496
    throw p0
.end method

.method public static blacklist parseIntentInfo(Ljava/lang/String;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZZLandroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            "ZZ",
            "Landroid/content/pm/parsing/result/ParseInput;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 61
    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    new-instance v0, Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;

    invoke-direct {v0}, Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;-><init>()V

    .line 62
    invoke-virtual {v0}, Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v6

    .line 63
    sget-object v4, Lcom/android/internal/R$styleable;->AndroidManifestIntentFilter:[I

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 65
    nop

    .line 66
    const/4 v7, 0x2

    const/4 v8, 0x0

    :try_start_18
    invoke-virtual {v4, v7, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    .line 65
    invoke-virtual {v6, v5}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 67
    const/4 v9, 0x3

    invoke-virtual {v4, v9, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    invoke-virtual {v6, v5}, Landroid/content/IntentFilter;->setOrder(I)V

    .line 69
    invoke-virtual {v4, v8}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v5

    .line 70
    if-eqz v5, :cond_3d

    .line 71
    iget v10, v5, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v0, v10}, Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;->setLabelRes(I)Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;

    .line 72
    iget v10, v5, Landroid/util/TypedValue;->resourceId:I

    if-nez v10, :cond_3d

    .line 73
    invoke-virtual {v5}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;->setNonLocalizedLabel(Ljava/lang/CharSequence;)Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;

    .line 77
    :cond_3d
    sget-boolean v5, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->sUseRoundIcon:Z

    if-eqz v5, :cond_49

    .line 78
    const/4 v5, 0x7

    invoke-virtual {v4, v5, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;->setIcon(I)Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;

    .line 82
    :cond_49
    invoke-virtual {v0}, Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;->getIcon()I

    move-result v5

    const/4 v10, 0x1

    if-nez v5, :cond_58

    .line 83
    nop

    .line 84
    invoke-virtual {v4, v10, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    .line 83
    invoke-virtual {v0, v5}, Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;->setIcon(I)Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;

    .line 87
    :cond_58
    if-eqz p5, :cond_62

    .line 88
    const/4 v5, 0x6

    invoke-virtual {v4, v5, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    invoke-virtual {v6, v5}, Landroid/content/IntentFilter;->setAutoVerify(Z)V
    :try_end_62
    .catchall {:try_start_18 .. :try_end_62} :catchall_164

    .line 93
    :cond_62
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 94
    nop

    .line 95
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v11

    .line 97
    :goto_6a
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v4

    if-eq v4, v10, :cond_153

    if-ne v4, v9, :cond_7e

    .line 99
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v5

    if-le v5, v11, :cond_79

    goto :goto_7e

    :cond_79
    move-object v4, v0

    move-object/from16 v0, p6

    goto/16 :goto_156

    .line 100
    :cond_7e
    :goto_7e
    if-eq v4, v7, :cond_81

    .line 101
    goto :goto_6a

    .line 103
    :cond_81
    invoke-static {}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->getAconfigFlags()Lcom/android/internal/pm/pkg/component/AconfigFlags;

    move-result-object v4

    invoke-virtual {v4, v1, v3}, Lcom/android/internal/pm/pkg/component/AconfigFlags;->skipCurrentElement(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v4

    if-eqz v4, :cond_8f

    .line 104
    invoke-static {v3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 105
    goto :goto_6a

    .line 109
    :cond_8f
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 110
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_16a

    :cond_9a
    goto :goto_c3

    :sswitch_9b
    const-string v5, "category"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9a

    move v4, v10

    goto :goto_c4

    :sswitch_a5
    const-string v5, "data"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9a

    move v4, v7

    goto :goto_c4

    :sswitch_af
    const-string v5, "uri-relative-filter-group"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9a

    move v4, v9

    goto :goto_c4

    :sswitch_b9
    const-string v5, "action"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9a

    move v4, v8

    goto :goto_c4

    :goto_c3
    const/4 v4, -0x1

    :goto_c4
    const-wide/32 v12, 0x9029125

    const/4 v5, 0x0

    const-string v14, "name"

    const-string v15, "http://schemas.android.com/apk/res/android"

    const-string v7, "No value supplied for <android:name>"

    packed-switch v4, :pswitch_data_17c

    move-object v4, v0

    move-object/from16 v0, p6

    goto/16 :goto_13e

    .line 145
    :pswitch_d6
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/Flags;->relativeReferenceIntentFilters()Z

    move-result v4

    if-eqz v4, :cond_e8

    .line 146
    move/from16 v4, p4

    move-object/from16 v5, p6

    invoke-static/range {v0 .. v5}, Lcom/android/internal/pm/pkg/component/ParsedIntentInfoUtils;->parseRelRefGroup(Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZLandroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v7

    .line 147
    move-object v4, v0

    move-object v0, v5

    goto/16 :goto_144

    .line 145
    :cond_e8
    move-object v4, v0

    move-object/from16 v0, p6

    goto :goto_13e

    .line 142
    :pswitch_ec
    move-object v4, v0

    move-object/from16 v0, p6

    move/from16 v5, p4

    invoke-static {v4, v2, v3, v5, v0}, Lcom/android/internal/pm/pkg/component/ParsedIntentInfoUtils;->parseData(Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZLandroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v7

    .line 143
    goto :goto_144

    .line 127
    :pswitch_f6
    move-object v4, v0

    move-object/from16 v0, p6

    invoke-interface {v3, v15, v14}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 128
    if-nez v14, :cond_104

    .line 129
    invoke-interface {v0, v7}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v7

    goto :goto_144

    .line 130
    :cond_104
    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_112

    .line 131
    invoke-virtual {v6, v14}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 133
    invoke-interface {v0, v7, v12, v13}, Landroid/content/pm/parsing/result/ParseInput;->deferError(Ljava/lang/String;J)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v7

    goto :goto_144

    .line 136
    :cond_112
    invoke-virtual {v6, v14}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 137
    invoke-interface {v0, v5}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v7

    .line 139
    goto :goto_144

    .line 112
    :pswitch_11a
    move-object v4, v0

    move-object/from16 v0, p6

    invoke-interface {v3, v15, v14}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 113
    if-nez v14, :cond_128

    .line 114
    invoke-interface {v0, v7}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v7

    goto :goto_144

    .line 115
    :cond_128
    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_136

    .line 116
    invoke-virtual {v6, v14}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 118
    invoke-interface {v0, v7, v12, v13}, Landroid/content/pm/parsing/result/ParseInput;->deferError(Ljava/lang/String;J)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v7

    goto :goto_144

    .line 121
    :cond_136
    invoke-virtual {v6, v14}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 122
    invoke-interface {v0, v5}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v7

    .line 124
    goto :goto_144

    .line 150
    :goto_13e
    const-string v5, "<intent-filter>"

    invoke-static {v5, v1, v3, v0}, Lcom/android/internal/pm/pkg/parsing/ParsingUtils;->unknownTag(Ljava/lang/String;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v7

    .line 154
    :goto_144
    invoke-interface {v7}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v5

    if-eqz v5, :cond_14f

    .line 155
    invoke-interface {v0, v7}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 157
    :cond_14f
    move-object v0, v4

    const/4 v7, 0x2

    goto/16 :goto_6a

    .line 97
    :cond_153
    move-object v4, v0

    move-object/from16 v0, p6

    .line 159
    :goto_156
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v6, v1}, Landroid/content/IntentFilter;->hasCategory(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v4, v1}, Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;->setHasDefault(Z)Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;

    .line 176
    invoke-interface {v0, v4}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 93
    :catchall_164
    move-exception v0

    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 94
    throw v0

    nop

    :sswitch_data_16a
    .sparse-switch
        -0x54d081ca -> :sswitch_b9
        -0x472f1456 -> :sswitch_af
        0x2eefaa -> :sswitch_a5
        0x302bcfe -> :sswitch_9b
    .end sparse-switch

    :pswitch_data_17c
    .packed-switch 0x0
        :pswitch_11a
        :pswitch_f6
        :pswitch_ec
        :pswitch_d6
    .end packed-switch
.end method

.method private static blacklist parseRelRefGroup(Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZLandroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            "Z",
            "Landroid/content/pm/parsing/result/ParseInput;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 184
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object p0

    .line 185
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestUriRelativeFilterGroup:[I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 189
    nop

    .line 190
    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_d
    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    if-nez v3, :cond_15

    .line 191
    move v3, v1

    goto :goto_16

    .line 190
    :cond_15
    move v3, v2

    .line 193
    :goto_16
    new-instance v4, Landroid/content/UriRelativeFilterGroup;

    invoke-direct {v4, v3}, Landroid/content/UriRelativeFilterGroup;-><init>(I)V
    :try_end_1b
    .catchall {:try_start_d .. :try_end_1b} :catchall_89

    .line 195
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 196
    nop

    .line 197
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v0

    .line 199
    :goto_23
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v3

    if-eq v3, v1, :cond_76

    const/4 v5, 0x3

    if-ne v3, v5, :cond_32

    .line 201
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v5

    if-le v5, v0, :cond_76

    .line 202
    :cond_32
    const/4 v5, 0x2

    if-eq v3, v5, :cond_36

    .line 203
    goto :goto_23

    .line 205
    :cond_36
    invoke-static {}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->getAconfigFlags()Lcom/android/internal/pm/pkg/component/AconfigFlags;

    move-result-object v3

    invoke-virtual {v3, p1, p3}, Lcom/android/internal/pm/pkg/component/AconfigFlags;->skipCurrentElement(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v3

    if-eqz v3, :cond_44

    .line 206
    invoke-static {p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 207
    goto :goto_23

    .line 211
    :cond_44
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 212
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v5

    packed-switch v5, :pswitch_data_8e

    :cond_4f
    goto :goto_5a

    :pswitch_50
    const-string v5, "data"

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4f

    move v3, v2

    goto :goto_5b

    :goto_5a
    const/4 v3, -0x1

    :goto_5b
    packed-switch v3, :pswitch_data_94

    .line 217
    const-string v3, "<uri-relative-filter-group>"

    invoke-static {v3, p1, p3, p5}, Lcom/android/internal/pm/pkg/parsing/ParsingUtils;->unknownTag(Ljava/lang/String;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3

    goto :goto_6a

    .line 214
    :pswitch_65
    invoke-static {v4, p2, p3, p4, p5}, Lcom/android/internal/pm/pkg/component/ParsedIntentInfoUtils;->parseRelRefGroupData(Landroid/content/UriRelativeFilterGroup;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZLandroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3

    .line 215
    nop

    .line 222
    :goto_6a
    invoke-interface {v3}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v5

    if-eqz v5, :cond_75

    .line 223
    invoke-interface {p5, v3}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    .line 225
    :cond_75
    goto :goto_23

    .line 227
    :cond_76
    invoke-virtual {v4}, Landroid/content/UriRelativeFilterGroup;->getUriRelativeFilters()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p1

    if-lez p1, :cond_83

    .line 228
    invoke-virtual {p0, v4}, Landroid/content/IntentFilter;->addUriRelativeFilterGroup(Landroid/content/UriRelativeFilterGroup;)V

    .line 230
    :cond_83
    const/4 p0, 0x0

    invoke-interface {p5, p0}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    .line 195
    :catchall_89
    move-exception p0

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 196
    throw p0

    :pswitch_data_8e
    .packed-switch 0x2eefaa
        :pswitch_50
    .end packed-switch

    :pswitch_data_94
    .packed-switch 0x0
        :pswitch_65
    .end packed-switch
.end method

.method private static blacklist parseRelRefGroupData(Landroid/content/UriRelativeFilterGroup;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZLandroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/UriRelativeFilterGroup;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            "Z",
            "Landroid/content/pm/parsing/result/ParseInput;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;",
            ">;"
        }
    .end annotation

    .line 237
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestData:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 239
    const/4 p2, 0x4

    const/4 v0, 0x0

    :try_start_8
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v1

    .line 241
    if-eqz v1, :cond_16

    .line 242
    new-instance v2, Landroid/content/UriRelativeFilter;

    invoke-direct {v2, v0, v0, v1}, Landroid/content/UriRelativeFilter;-><init>(IILjava/lang/String;)V

    invoke-virtual {p0, v2}, Landroid/content/UriRelativeFilterGroup;->addUriRelativeFilter(Landroid/content/UriRelativeFilter;)V

    .line 246
    :cond_16
    const/4 v1, 0x5

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v1

    .line 248
    const/4 v2, 0x1

    if-eqz v1, :cond_26

    .line 249
    new-instance v3, Landroid/content/UriRelativeFilter;

    invoke-direct {v3, v0, v2, v1}, Landroid/content/UriRelativeFilter;-><init>(IILjava/lang/String;)V

    invoke-virtual {p0, v3}, Landroid/content/UriRelativeFilterGroup;->addUriRelativeFilter(Landroid/content/UriRelativeFilter;)V

    .line 253
    :cond_26
    const/4 v1, 0x6

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v1

    .line 255
    const/4 v3, 0x2

    if-eqz v1, :cond_42

    .line 256
    if-nez p3, :cond_3a

    .line 257
    const-string p0, "pathPattern not allowed here; path must be literal"

    invoke-interface {p4, p0}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0
    :try_end_36
    .catchall {:try_start_8 .. :try_end_36} :catchall_147

    .line 370
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 257
    return-object p0

    .line 260
    :cond_3a
    :try_start_3a
    new-instance v4, Landroid/content/UriRelativeFilter;

    invoke-direct {v4, v0, v3, v1}, Landroid/content/UriRelativeFilter;-><init>(IILjava/lang/String;)V

    invoke-virtual {p0, v4}, Landroid/content/UriRelativeFilterGroup;->addUriRelativeFilter(Landroid/content/UriRelativeFilter;)V

    .line 264
    :cond_42
    const/16 v1, 0xe

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v1

    .line 266
    const/4 v4, 0x3

    if-eqz v1, :cond_5f

    .line 267
    if-nez p3, :cond_57

    .line 268
    const-string p0, "pathAdvancedPattern not allowed here; path must be literal"

    invoke-interface {p4, p0}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0
    :try_end_53
    .catchall {:try_start_3a .. :try_end_53} :catchall_147

    .line 370
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 268
    return-object p0

    .line 271
    :cond_57
    :try_start_57
    new-instance v5, Landroid/content/UriRelativeFilter;

    invoke-direct {v5, v0, v4, v1}, Landroid/content/UriRelativeFilter;-><init>(IILjava/lang/String;)V

    invoke-virtual {p0, v5}, Landroid/content/UriRelativeFilterGroup;->addUriRelativeFilter(Landroid/content/UriRelativeFilter;)V

    .line 275
    :cond_5f
    const/16 v1, 0xc

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v1

    .line 277
    if-eqz v1, :cond_6f

    .line 278
    new-instance v5, Landroid/content/UriRelativeFilter;

    invoke-direct {v5, v0, p2, v1}, Landroid/content/UriRelativeFilter;-><init>(IILjava/lang/String;)V

    invoke-virtual {p0, v5}, Landroid/content/UriRelativeFilterGroup;->addUriRelativeFilter(Landroid/content/UriRelativeFilter;)V

    .line 282
    :cond_6f
    const/4 v1, 0x7

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v1

    .line 284
    if-eqz v1, :cond_7e

    .line 285
    new-instance v5, Landroid/content/UriRelativeFilter;

    invoke-direct {v5, v3, v0, v1}, Landroid/content/UriRelativeFilter;-><init>(IILjava/lang/String;)V

    invoke-virtual {p0, v5}, Landroid/content/UriRelativeFilterGroup;->addUriRelativeFilter(Landroid/content/UriRelativeFilter;)V

    .line 289
    :cond_7e
    const/16 v1, 0x15

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v1

    .line 291
    if-eqz v1, :cond_8e

    .line 292
    new-instance v5, Landroid/content/UriRelativeFilter;

    invoke-direct {v5, v3, v2, v1}, Landroid/content/UriRelativeFilter;-><init>(IILjava/lang/String;)V

    invoke-virtual {p0, v5}, Landroid/content/UriRelativeFilterGroup;->addUriRelativeFilter(Landroid/content/UriRelativeFilter;)V

    .line 296
    :cond_8e
    const/16 v1, 0x16

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v1

    .line 298
    if-eqz v1, :cond_aa

    .line 299
    if-nez p3, :cond_a2

    .line 300
    const-string p0, "fragmentPattern not allowed here; fragment must be literal"

    invoke-interface {p4, p0}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0
    :try_end_9e
    .catchall {:try_start_57 .. :try_end_9e} :catchall_147

    .line 370
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 300
    return-object p0

    .line 303
    :cond_a2
    :try_start_a2
    new-instance v5, Landroid/content/UriRelativeFilter;

    invoke-direct {v5, v3, v3, v1}, Landroid/content/UriRelativeFilter;-><init>(IILjava/lang/String;)V

    invoke-virtual {p0, v5}, Landroid/content/UriRelativeFilterGroup;->addUriRelativeFilter(Landroid/content/UriRelativeFilter;)V

    .line 307
    :cond_aa
    const/16 v1, 0x17

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v1

    .line 309
    if-eqz v1, :cond_c6

    .line 310
    if-nez p3, :cond_be

    .line 311
    const-string p0, "fragmentAdvancedPattern not allowed here; fragment must be literal"

    invoke-interface {p4, p0}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0
    :try_end_ba
    .catchall {:try_start_a2 .. :try_end_ba} :catchall_147

    .line 370
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 311
    return-object p0

    .line 314
    :cond_be
    :try_start_be
    new-instance v5, Landroid/content/UriRelativeFilter;

    invoke-direct {v5, v3, v4, v1}, Landroid/content/UriRelativeFilter;-><init>(IILjava/lang/String;)V

    invoke-virtual {p0, v5}, Landroid/content/UriRelativeFilterGroup;->addUriRelativeFilter(Landroid/content/UriRelativeFilter;)V

    .line 318
    :cond_c6
    const/16 v1, 0x18

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v1

    .line 320
    if-eqz v1, :cond_d6

    .line 321
    new-instance v5, Landroid/content/UriRelativeFilter;

    invoke-direct {v5, v3, p2, v1}, Landroid/content/UriRelativeFilter;-><init>(IILjava/lang/String;)V

    invoke-virtual {p0, v5}, Landroid/content/UriRelativeFilterGroup;->addUriRelativeFilter(Landroid/content/UriRelativeFilter;)V

    .line 325
    :cond_d6
    const/16 v1, 0x10

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v1

    .line 327
    if-eqz v1, :cond_e6

    .line 328
    new-instance v5, Landroid/content/UriRelativeFilter;

    invoke-direct {v5, v2, v0, v1}, Landroid/content/UriRelativeFilter;-><init>(IILjava/lang/String;)V

    invoke-virtual {p0, v5}, Landroid/content/UriRelativeFilterGroup;->addUriRelativeFilter(Landroid/content/UriRelativeFilter;)V

    .line 332
    :cond_e6
    const/16 v1, 0x11

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v1

    .line 334
    if-eqz v1, :cond_f6

    .line 335
    new-instance v5, Landroid/content/UriRelativeFilter;

    invoke-direct {v5, v2, v2, v1}, Landroid/content/UriRelativeFilter;-><init>(IILjava/lang/String;)V

    invoke-virtual {p0, v5}, Landroid/content/UriRelativeFilterGroup;->addUriRelativeFilter(Landroid/content/UriRelativeFilter;)V

    .line 339
    :cond_f6
    const/16 v1, 0x12

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v1

    .line 341
    if-eqz v1, :cond_112

    .line 342
    if-nez p3, :cond_10a

    .line 343
    const-string p0, "queryPattern not allowed here; query must be literal"

    invoke-interface {p4, p0}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0
    :try_end_106
    .catchall {:try_start_be .. :try_end_106} :catchall_147

    .line 370
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 343
    return-object p0

    .line 346
    :cond_10a
    :try_start_10a
    new-instance v5, Landroid/content/UriRelativeFilter;

    invoke-direct {v5, v2, v3, v1}, Landroid/content/UriRelativeFilter;-><init>(IILjava/lang/String;)V

    invoke-virtual {p0, v5}, Landroid/content/UriRelativeFilterGroup;->addUriRelativeFilter(Landroid/content/UriRelativeFilter;)V

    .line 350
    :cond_112
    const/16 v1, 0x13

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v1

    .line 352
    if-eqz v1, :cond_12e

    .line 353
    if-nez p3, :cond_126

    .line 354
    const-string p0, "queryAdvancedPattern not allowed here; query must be literal"

    invoke-interface {p4, p0}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0
    :try_end_122
    .catchall {:try_start_10a .. :try_end_122} :catchall_147

    .line 370
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 354
    return-object p0

    .line 357
    :cond_126
    :try_start_126
    new-instance p3, Landroid/content/UriRelativeFilter;

    invoke-direct {p3, v2, v4, v1}, Landroid/content/UriRelativeFilter;-><init>(IILjava/lang/String;)V

    invoke-virtual {p0, p3}, Landroid/content/UriRelativeFilterGroup;->addUriRelativeFilter(Landroid/content/UriRelativeFilter;)V

    .line 361
    :cond_12e
    const/16 p3, 0x14

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object p3

    .line 363
    if-eqz p3, :cond_13e

    .line 364
    new-instance v0, Landroid/content/UriRelativeFilter;

    invoke-direct {v0, v2, p2, p3}, Landroid/content/UriRelativeFilter;-><init>(IILjava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/content/UriRelativeFilterGroup;->addUriRelativeFilter(Landroid/content/UriRelativeFilter;)V

    .line 368
    :cond_13e
    const/4 p0, 0x0

    invoke-interface {p4, p0}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0
    :try_end_143
    .catchall {:try_start_126 .. :try_end_143} :catchall_147

    .line 370
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 368
    return-object p0

    .line 370
    :catchall_147
    move-exception p0

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 371
    throw p0
.end method
