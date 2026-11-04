.class public Lcom/android/internal/pm/pkg/component/ParsedActivityUtils;
.super Ljava/lang/Object;
.source "ParsedActivityUtils.java"


# static fields
.field public static final blacklist LOG_UNSAFE_BROADCASTS:Z = false

.field private static final blacklist RECREATE_ON_CONFIG_CHANGES_MASK:I = 0x3

.field public static final blacklist SAFE_BROADCASTS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String; = "PackageParsing"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 75
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/internal/pm/pkg/component/ParsedActivityUtils;->SAFE_BROADCASTS:Ljava/util/Set;

    .line 77
    sget-object v0, Lcom/android/internal/pm/pkg/component/ParsedActivityUtils;->SAFE_BROADCASTS:Ljava/util/Set;

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 78
    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getActivityConfigChanges(II)I
    .registers 2

    .line 657
    not-int p1, p1

    and-int/lit8 p1, p1, 0x3

    or-int/2addr p0, p1

    return p0
.end method

.method private static blacklist getActivityResizeMode(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/TypedArray;I)I
    .registers 7

    .line 545
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getResizeableActivity()Ljava/lang/Boolean;

    move-result-object v0

    .line 547
    const/16 v1, 0x28

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_2f

    if-eqz v0, :cond_10

    goto :goto_2f

    .line 558
    :cond_10
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->isResizeableActivityViaSdkVersion()Z

    move-result p0

    if-eqz p0, :cond_17

    .line 561
    return v3

    .line 566
    :cond_17
    invoke-static {p2}, Landroid/content/pm/ActivityInfo;->isFixedOrientationPortrait(I)Z

    move-result p0

    if-eqz p0, :cond_1f

    .line 567
    const/4 p0, 0x6

    return p0

    .line 568
    :cond_1f
    invoke-static {p2}, Landroid/content/pm/ActivityInfo;->isFixedOrientationLandscape(I)Z

    move-result p0

    if-eqz p0, :cond_27

    .line 569
    const/4 p0, 0x5

    return p0

    .line 570
    :cond_27
    const/16 p0, 0xe

    if-ne p2, p0, :cond_2d

    .line 571
    const/4 p0, 0x7

    return p0

    .line 573
    :cond_2d
    const/4 p0, 0x4

    return p0

    .line 550
    :cond_2f
    :goto_2f
    const/4 p0, 0x0

    if-eqz v0, :cond_39

    .line 551
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_39

    goto :goto_3a

    :cond_39
    move v3, p0

    .line 550
    :goto_3a
    invoke-virtual {p1, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    if-eqz p1, :cond_42

    .line 552
    const/4 p0, 0x2

    return p0

    .line 554
    :cond_42
    return p0
.end method

.method public static blacklist parseActivityAlias(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZLjava/lang/String;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            "Z",
            "Ljava/lang/String;",
            "Landroid/content/pm/parsing/result/ParseInput;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/internal/pm/pkg/component/ParsedActivity;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 265
    move-object/from16 v10, p5

    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestActivityAlias:[I

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v1, v2, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 267
    const/4 v0, 0x7

    const/16 v3, 0x400

    :try_start_f
    invoke-virtual {v5, v0, v3}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v0

    .line 270
    if-nez v0, :cond_1f

    .line 271
    const-string v0, "<activity-alias> does not specify android:targetActivity"

    invoke-interface {v10, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_1b
    .catchall {:try_start_f .. :try_end_1b} :catchall_11a

    .line 331
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 271
    return-object v0

    .line 274
    :cond_1f
    :try_start_1f
    invoke-interface/range {p0 .. p0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 275
    invoke-static {v3, v0}, Lcom/android/internal/pm/pkg/parsing/ParsingUtils;->buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 276
    if-nez v0, :cond_44

    .line 277
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Empty class name in package "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v10, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_40
    .catchall {:try_start_1f .. :try_end_40} :catchall_11a

    .line 331
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 277
    return-object v0

    .line 280
    :cond_44
    nop

    .line 282
    :try_start_45
    invoke-interface/range {p0 .. p0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getActivities()Ljava/util/List;

    move-result-object v3

    .line 283
    invoke-static {v3}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result v4

    .line 284
    const/16 v24, 0x0

    move/from16 v6, v24

    :goto_51
    if-ge v6, v4, :cond_68

    .line 285
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/pm/pkg/component/ParsedActivity;

    .line 286
    invoke-interface {v7}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_65

    .line 287
    nop

    .line 288
    goto :goto_69

    .line 284
    :cond_65
    add-int/lit8 v6, v6, 0x1

    goto :goto_51

    :cond_68
    const/4 v7, 0x0

    .line 292
    :goto_69
    if-nez v7, :cond_9e

    .line 293
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<activity-alias> target activity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " not found in manifest with activities = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 295
    invoke-interface/range {p0 .. p0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getActivities()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", parsedActivities = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 293
    invoke-interface {v10, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_9a
    .catchall {:try_start_45 .. :try_end_9a} :catchall_11a

    .line 331
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 293
    return-object v0

    .line 299
    :cond_9e
    :try_start_9e
    invoke-static {v0, v7}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->makeAlias(Ljava/lang/String;Lcom/android/internal/pm/pkg/component/ParsedActivity;)Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;

    move-result-object v0

    .line 300
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ">"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_bf
    .catchall {:try_start_9e .. :try_end_bf} :catchall_11a

    .line 302
    const/16 v22, 0xc

    const/16 v23, 0xf

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/16 v11, 0xa

    const/4 v12, 0x6

    const/4 v13, -0x1

    const/4 v14, 0x4

    const/4 v15, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x8

    const/16 v18, 0x2

    const/16 v19, -0x1

    const/16 v20, 0xb

    const/16 v21, -0x1

    move/from16 v8, p3

    move-object/from16 v9, p4

    move-object v2, v0

    move-object v6, v5

    move-object/from16 v5, p0

    :try_start_df
    invoke-static/range {v2 .. v23}, Lcom/android/internal/pm/pkg/component/ParsedMainComponentUtils;->parseMainComponent(Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;Ljava/lang/String;[Ljava/lang/String;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/TypedArray;IZLjava/lang/String;Landroid/content/pm/parsing/result/ParseInput;IIIIIIIIIIIII)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_e3
    .catchall {:try_start_df .. :try_end_e3} :catchall_117

    move-object v5, v6

    .line 317
    :try_start_e4
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v4

    if-eqz v4, :cond_f2

    .line 318
    invoke-interface {v10, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_ee
    .catchall {:try_start_e4 .. :try_end_ee} :catchall_11a

    .line 331
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 318
    return-object v0

    .line 322
    :cond_f2
    nop

    .line 323
    :try_start_f3
    invoke-virtual {v2}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->getFlags()I

    move-result v0

    const/high16 v4, 0x100000

    and-int/2addr v0, v4

    if-eqz v0, :cond_fe

    const/16 v24, 0x1

    :cond_fe
    move/from16 v8, v24

    .line 325
    const/4 v11, 0x3

    const/4 v12, 0x5

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/16 v10, 0x9

    move-object/from16 v9, p5

    move-object v4, v1

    move-object v0, v2

    move-object v2, v3

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    invoke-static/range {v0 .. v12}, Lcom/android/internal/pm/pkg/component/ParsedActivityUtils;->parseActivityOrAlias(Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Ljava/lang/String;Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources;Landroid/content/res/TypedArray;ZZZLandroid/content/pm/parsing/result/ParseInput;III)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_113
    .catchall {:try_start_f3 .. :try_end_113} :catchall_11a

    .line 331
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 325
    return-object v0

    .line 331
    :catchall_117
    move-exception v0

    move-object v5, v6

    goto :goto_11b

    :catchall_11a
    move-exception v0

    :goto_11b
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 332
    throw v0
.end method

.method private static blacklist parseActivityOrAlias(Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Ljava/lang/String;Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources;Landroid/content/res/TypedArray;ZZZLandroid/content/pm/parsing/result/ParseInput;III)Landroid/content/pm/parsing/result/ParseResult;
    .registers 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            "Ljava/lang/String;",
            "Landroid/content/res/XmlResourceParser;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/TypedArray;",
            "ZZZ",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "III)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/internal/pm/pkg/component/ParsedActivity;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 350
    move-object/from16 v5, p3

    move-object/from16 v4, p4

    move-object/from16 v7, p5

    move-object/from16 v6, p9

    move/from16 v0, p12

    const/16 v1, 0x400

    move/from16 v2, p10

    invoke-virtual {v7, v2, v1}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v1

    .line 351
    if-eqz v1, :cond_48

    .line 352
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 353
    invoke-static {v2, v1}, Lcom/android/internal/pm/pkg/parsing/ParsingUtils;->buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 354
    if-nez v2, :cond_45

    .line 355
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Activity "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " specified invalid parentActivityName "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PackageParsing"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_48

    .line 358
    :cond_45
    invoke-virtual {p0, v2}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->setParentActivityName(Ljava/lang/String;)Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;

    .line 362
    :cond_48
    :goto_48
    const/4 v8, 0x0

    move/from16 v1, p11

    invoke-virtual {v7, v1, v8}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v1

    .line 363
    if-eqz p7, :cond_55

    .line 367
    invoke-virtual {p0, v1}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->setPermission(Ljava/lang/String;)Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;

    goto :goto_5f

    .line 369
    :cond_55
    if-eqz v1, :cond_58

    goto :goto_5c

    :cond_58
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getPermission()Ljava/lang/String;

    move-result-object v1

    :goto_5c
    invoke-virtual {p0, v1}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->setPermission(Ljava/lang/String;)Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;

    .line 372
    :goto_5f
    nop

    .line 373
    if-eqz p7, :cond_65

    .line 374
    const/16 v1, 0xe

    goto :goto_67

    .line 375
    :cond_65
    const/16 v1, 0x3d

    .line 373
    :goto_67
    invoke-static {v7, v4, v1, v6}, Lcom/android/internal/pm/pkg/parsing/ParsingUtils;->parseKnownActivityEmbeddingCerts(Landroid/content/res/TypedArray;Landroid/content/res/Resources;ILandroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    .line 376
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v2

    if-eqz v2, :cond_76

    .line 377
    invoke-interface {v6, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    .line 379
    :cond_76
    nop

    .line 380
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 381
    if-eqz v1, :cond_82

    .line 382
    invoke-virtual {p0, v1}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->setKnownActivityEmbeddingCerts(Ljava/util/Set;)V

    .line 386
    :cond_82
    invoke-virtual {v7, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v9

    .line 387
    if-eqz v9, :cond_8f

    .line 388
    invoke-virtual {v7, v0, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->setExported(Z)Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;

    .line 391
    :cond_8f
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v10

    .line 393
    :goto_93
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_17c

    const/4 v2, 0x3

    if-ne v0, v2, :cond_a3

    .line 395
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v2

    if-le v2, v10, :cond_17c

    .line 396
    :cond_a3
    const/4 v1, 0x2

    if-eq v0, v1, :cond_a7

    .line 397
    goto :goto_93

    .line 399
    :cond_a7
    invoke-static {}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->getAconfigFlags()Lcom/android/internal/pm/pkg/component/AconfigFlags;

    move-result-object v0

    invoke-virtual {v0, p1, v5}, Lcom/android/internal/pm/pkg/component/AconfigFlags;->skipCurrentElement(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v0

    if-eqz v0, :cond_b5

    .line 400
    invoke-static {v5}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 401
    goto :goto_93

    .line 405
    :cond_b5
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "intent-filter"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f2

    .line 406
    xor-int/lit8 v2, p6, 0x1

    move-object v1, p0

    move-object v0, p1

    move/from16 v3, p8

    invoke-static/range {v0 .. v6}, Lcom/android/internal/pm/pkg/component/ParsedActivityUtils;->parseIntentFilter(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;ZZLandroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2

    .line 408
    invoke-interface {v2}, Landroid/content/pm/parsing/result/ParseResult;->isSuccess()Z

    move-result v3

    if-eqz v3, :cond_ef

    .line 409
    invoke-interface {v2}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;

    .line 410
    if-eqz v3, :cond_ef

    .line 411
    invoke-virtual {v3}, Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v11

    .line 412
    invoke-virtual {v11}, Landroid/content/IntentFilter;->getOrder()I

    move-result v11

    invoke-virtual {p0}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->getOrder()I

    move-result v12

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v11

    invoke-virtual {p0, v11}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->setOrder(I)Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;

    .line 413
    invoke-virtual {p0, v3}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->addIntent(Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;)V

    .line 433
    :cond_ef
    nop

    .line 434
    goto/16 :goto_16f

    :cond_f2
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "meta-data"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_104

    .line 435
    invoke-static {p0, p1, v4, v5, v6}, Lcom/android/internal/pm/pkg/component/ParsedComponentUtils;->addMetaData(Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2

    goto/16 :goto_16f

    .line 436
    :cond_104
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "property"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_115

    .line 437
    invoke-static {p0, p1, v4, v5, v6}, Lcom/android/internal/pm/pkg/component/ParsedComponentUtils;->addProperty(Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2

    goto :goto_16f

    .line 438
    :cond_115
    if-nez p6, :cond_145

    if-nez p7, :cond_145

    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "preferred"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_145

    .line 439
    const/4 v2, 0x1

    move-object v1, p0

    move-object v0, p1

    move/from16 v3, p8

    invoke-static/range {v0 .. v6}, Lcom/android/internal/pm/pkg/component/ParsedActivityUtils;->parseIntentFilter(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;ZZLandroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2

    .line 442
    invoke-interface {v2}, Landroid/content/pm/parsing/result/ParseResult;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_143

    .line 443
    invoke-interface {v2}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;

    .line 444
    if-eqz v1, :cond_143

    .line 445
    invoke-virtual {p0}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->getClassName()Ljava/lang/String;

    move-result-object v11

    invoke-interface {p1, v11, v1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->addPreferredActivityFilter(Ljava/lang/String;Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 448
    :cond_143
    nop

    .line 449
    goto :goto_16f

    :cond_145
    if-nez p6, :cond_16b

    if-nez p7, :cond_16b

    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "layout"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16b

    .line 450
    nop

    .line 451
    invoke-static {v4, v5, v6}, Lcom/android/internal/pm/pkg/component/ParsedActivityUtils;->parseActivityWindowLayout(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2

    .line 452
    invoke-interface {v2}, Landroid/content/pm/parsing/result/ParseResult;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_169

    .line 453
    invoke-interface {v2}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ActivityInfo$WindowLayout;

    invoke-virtual {p0, v1}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->setWindowLayout(Landroid/content/pm/ActivityInfo$WindowLayout;)Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;

    .line 455
    :cond_169
    nop

    .line 456
    goto :goto_16f

    .line 457
    :cond_16b
    invoke-static {p2, p1, v5, v6}, Lcom/android/internal/pm/pkg/parsing/ParsingUtils;->unknownTag(Ljava/lang/String;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2

    .line 460
    :goto_16f
    invoke-interface {v2}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v1

    if-eqz v1, :cond_17a

    .line 461
    invoke-interface {v6, v2}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    .line 463
    :cond_17a
    goto/16 :goto_93

    .line 465
    :cond_17c
    if-nez p7, :cond_1a6

    invoke-virtual {p0}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->getLaunchMode()I

    move-result p1

    const/4 p2, 0x4

    if-eq p1, p2, :cond_1a6

    .line 466
    invoke-virtual {p0}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->getMetaData()Landroid/os/Bundle;

    move-result-object p1

    const-string v2, "android.activity.launch_mode"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1a6

    .line 468
    invoke-virtual {p0}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->getMetaData()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 470
    if-eqz p1, :cond_1a6

    const-string v2, "singleInstancePerTask"

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1a6

    .line 471
    invoke-virtual {p0, p2}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->setLaunchMode(I)Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;

    .line 475
    :cond_1a6
    if-nez p7, :cond_1c7

    .line 478
    const/16 p1, 0x3b

    invoke-virtual {v7, p1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    .line 480
    invoke-virtual {p0}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->getMetaData()Landroid/os/Bundle;

    move-result-object p2

    const-string v2, "android.can_display_on_remote_devices"

    invoke-virtual {p2, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-nez p2, :cond_1bb

    .line 482
    move p1, v8

    .line 484
    :cond_1bb
    if-eqz p1, :cond_1c7

    .line 485
    invoke-virtual {p0}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->getFlags()I

    move-result p1

    const/high16 p2, 0x10000

    or-int/2addr p1, p2

    invoke-virtual {p0, p1}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->setFlags(I)Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;

    .line 490
    :cond_1c7
    nop

    .line 491
    invoke-static {p0, v6}, Lcom/android/internal/pm/pkg/component/ParsedActivityUtils;->resolveActivityWindowLayout(Lcom/android/internal/pm/pkg/component/ParsedActivity;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p1

    .line 492
    invoke-interface {p1}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result p2

    if-eqz p2, :cond_1d7

    .line 493
    invoke-interface {v6, p1}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    .line 495
    :cond_1d7
    invoke-interface {p1}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ActivityInfo$WindowLayout;

    invoke-virtual {p0, p1}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->setWindowLayout(Landroid/content/pm/ActivityInfo$WindowLayout;)Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;

    .line 497
    if-nez v9, :cond_227

    .line 498
    invoke-virtual {p0}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->getIntents()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_1ed

    move v8, v1

    .line 499
    :cond_1ed
    if-eqz v8, :cond_224

    .line 500
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 501
    invoke-virtual {p0}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ": Targeting S+ (version "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const/16 p2, 0x1f

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " and above) requires that an explicit value for android:exported be defined when intent filters are present"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 500
    const-wide/32 v1, 0x8f45e27

    invoke-interface {v6, p1, v1, v2}, Landroid/content/pm/parsing/result/ParseInput;->deferError(Ljava/lang/String;J)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p1

    .line 505
    invoke-interface {p1}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result p2

    if-eqz p2, :cond_224

    .line 506
    invoke-interface {v6, p1}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    .line 509
    :cond_224
    invoke-virtual {p0, v8}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->setExported(Z)Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;

    .line 512
    :cond_227
    invoke-interface {v6, p0}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist parseActivityOrReceiver([Ljava/lang/String;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;IZLjava/lang/String;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 32
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            "IZ",
            "Ljava/lang/String;",
            "Landroid/content/pm/parsing/result/ParseInput;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/internal/pm/pkg/component/ParsedActivity;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 92
    invoke-interface/range {p1 .. p1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 93
    new-instance v2, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;

    invoke-direct {v2}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;-><init>()V

    .line 95
    const-string v1, "receiver"

    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 96
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ">"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 97
    sget-object v4, Lcom/android/internal/R$styleable;->AndroidManifestActivity:[I

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    invoke-virtual {v5, v6, v4}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 99
    nop

    .line 100
    const/16 v11, 0x1e

    const/16 v12, 0x11

    const/16 v13, 0x2a

    const/4 v14, 0x5

    const/4 v15, 0x2

    const/16 v16, 0x1

    const/16 v17, 0x17

    const/16 v18, 0x3

    const/16 v19, 0x7

    const/16 v20, 0x2c

    const/16 v21, 0x30

    const/16 v22, 0x39

    const/16 v23, 0x42

    move-object/from16 v5, p1

    move/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object v6, v4

    move-object/from16 v4, p0

    :try_start_60
    invoke-static/range {v2 .. v23}, Lcom/android/internal/pm/pkg/component/ParsedMainComponentUtils;->parseMainComponent(Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;Ljava/lang/String;[Ljava/lang/String;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/TypedArray;IZLjava/lang/String;Landroid/content/pm/parsing/result/ParseInput;IIIIIIIIIIIII)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v4

    move-object v9, v10

    .line 115
    invoke-interface {v4}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v7

    if-eqz v7, :cond_73

    .line 116
    invoke-interface {v9, v4}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_6f
    .catchall {:try_start_60 .. :try_end_6f} :catchall_303

    .line 257
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 116
    return-object v0

    .line 119
    :cond_73
    if-eqz v1, :cond_8f

    :try_start_75
    invoke-interface {v5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->isSaveStateDisallowed()Z

    move-result v4

    if-eqz v4, :cond_8f

    .line 121
    invoke-virtual {v2}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->getProcessName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8f

    .line 122
    const-string v0, "Heavy-weight applications can not have receivers in main process"

    invoke-interface {v9, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_8b
    .catchall {:try_start_75 .. :try_end_8b} :catchall_303

    .line 257
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 122
    return-object v0

    .line 131
    :cond_8f
    const/4 v4, 0x0

    :try_start_90
    invoke-virtual {v6, v4, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    invoke-virtual {v2, v7}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->setTheme(I)Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;

    move-result-object v7

    .line 132
    invoke-interface {v5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getUiOptions()I

    move-result v8

    const/16 v10, 0x1a

    invoke-virtual {v6, v10, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->setUiOptions(I)Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;

    .line 134
    invoke-virtual {v2}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->getFlags()I

    move-result v7

    invoke-interface {v5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->isTaskReparentingAllowed()Z

    move-result v8

    const/16 v10, 0x40

    const/16 v11, 0x13

    invoke-static {v10, v11, v8, v6}, Lcom/android/internal/pm/pkg/component/ComponentParseUtils;->flag(IIZLandroid/content/res/TypedArray;)I

    move-result v8

    .line 135
    const/16 v11, 0x8

    const/16 v12, 0x12

    invoke-static {v11, v12, v6}, Lcom/android/internal/pm/pkg/component/ComponentParseUtils;->flag(IILandroid/content/res/TypedArray;)I

    move-result v12

    or-int/2addr v8, v12

    .line 136
    const/4 v12, 0x4

    const/16 v13, 0xb

    invoke-static {v12, v13, v6}, Lcom/android/internal/pm/pkg/component/ComponentParseUtils;->flag(IILandroid/content/res/TypedArray;)I

    move-result v13

    or-int/2addr v8, v13

    .line 137
    const/16 v13, 0x20

    const/16 v14, 0xd

    invoke-static {v13, v14, v6}, Lcom/android/internal/pm/pkg/component/ComponentParseUtils;->flag(IILandroid/content/res/TypedArray;)I

    move-result v14

    or-int/2addr v8, v14

    .line 138
    const/16 v14, 0x100

    const/16 v15, 0x16

    invoke-static {v14, v15, v6}, Lcom/android/internal/pm/pkg/component/ComponentParseUtils;->flag(IILandroid/content/res/TypedArray;)I

    move-result v14

    or-int/2addr v8, v14

    .line 139
    const/4 v14, 0x2

    const/16 v15, 0xa

    invoke-static {v14, v15, v6}, Lcom/android/internal/pm/pkg/component/ComponentParseUtils;->flag(IILandroid/content/res/TypedArray;)I

    move-result v15

    or-int/2addr v8, v15

    .line 140
    const/16 v15, 0x800

    const/16 v11, 0x18

    invoke-static {v15, v11, v6}, Lcom/android/internal/pm/pkg/component/ComponentParseUtils;->flag(IILandroid/content/res/TypedArray;)I

    move-result v11

    or-int/2addr v8, v11

    .line 141
    const/4 v11, 0x1

    const/16 v15, 0x9

    invoke-static {v11, v15, v6}, Lcom/android/internal/pm/pkg/component/ComponentParseUtils;->flag(IILandroid/content/res/TypedArray;)I

    move-result v15

    or-int/2addr v8, v15

    .line 142
    const/16 v15, 0x80

    const/16 v12, 0x15

    invoke-static {v15, v12, v6}, Lcom/android/internal/pm/pkg/component/ComponentParseUtils;->flag(IILandroid/content/res/TypedArray;)I

    move-result v12

    or-int/2addr v8, v12

    .line 143
    const/16 v12, 0x400

    const/16 v15, 0x27

    invoke-static {v12, v15, v6}, Lcom/android/internal/pm/pkg/component/ComponentParseUtils;->flag(IILandroid/content/res/TypedArray;)I

    move-result v15

    or-int/2addr v8, v15

    .line 144
    const/16 v15, 0x1d

    invoke-static {v12, v15, v6}, Lcom/android/internal/pm/pkg/component/ComponentParseUtils;->flag(IILandroid/content/res/TypedArray;)I

    move-result v15

    or-int/2addr v8, v15

    .line 145
    const/16 v15, 0x10

    const/16 v12, 0xc

    invoke-static {v15, v12, v6}, Lcom/android/internal/pm/pkg/component/ComponentParseUtils;->flag(IILandroid/content/res/TypedArray;)I

    move-result v12

    or-int/2addr v8, v12

    .line 146
    const/high16 v12, 0x20000000

    invoke-static {v12, v10, v6}, Lcom/android/internal/pm/pkg/component/ComponentParseUtils;->flag(IILandroid/content/res/TypedArray;)I

    move-result v10

    or-int/2addr v8, v10

    or-int/2addr v7, v8

    .line 134
    invoke-virtual {v2, v7}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->setFlags(I)Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;

    .line 148
    if-nez v1, :cond_26f

    .line 149
    invoke-virtual {v2}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->getFlags()I

    move-result v7

    invoke-interface {v5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->isHardwareAccelerated()Z

    move-result v8

    const/16 v10, 0x200

    const/16 v12, 0x19

    invoke-static {v10, v12, v8, v6}, Lcom/android/internal/pm/pkg/component/ComponentParseUtils;->flag(IIZLandroid/content/res/TypedArray;)I

    move-result v8

    .line 150
    const/high16 v10, -0x80000000

    const/16 v12, 0x1f

    invoke-static {v10, v12, v6}, Lcom/android/internal/pm/pkg/component/ComponentParseUtils;->flag(IILandroid/content/res/TypedArray;)I

    move-result v10

    or-int/2addr v8, v10

    .line 151
    const/high16 v10, 0x40000

    const/16 v12, 0x43

    invoke-static {v10, v12, v6}, Lcom/android/internal/pm/pkg/component/ComponentParseUtils;->flag(IILandroid/content/res/TypedArray;)I

    move-result v10

    or-int/2addr v8, v10

    .line 152
    const/16 v10, 0x2000

    const/16 v12, 0x23

    invoke-static {v10, v12, v6}, Lcom/android/internal/pm/pkg/component/ComponentParseUtils;->flag(IILandroid/content/res/TypedArray;)I

    move-result v10

    or-int/2addr v8, v10

    .line 153
    const/16 v10, 0x1000

    const/16 v12, 0x24

    invoke-static {v10, v12, v6}, Lcom/android/internal/pm/pkg/component/ComponentParseUtils;->flag(IILandroid/content/res/TypedArray;)I

    move-result v10

    or-int/2addr v8, v10

    .line 154
    const/16 v10, 0x4000

    const/16 v12, 0x25

    invoke-static {v10, v12, v6}, Lcom/android/internal/pm/pkg/component/ComponentParseUtils;->flag(IILandroid/content/res/TypedArray;)I

    move-result v10

    or-int/2addr v8, v10

    .line 155
    const/high16 v10, 0x800000

    const/16 v12, 0x33

    invoke-static {v10, v12, v6}, Lcom/android/internal/pm/pkg/component/ComponentParseUtils;->flag(IILandroid/content/res/TypedArray;)I

    move-result v10

    or-int/2addr v8, v10

    .line 156
    const/high16 v10, 0x400000

    const/16 v12, 0x29

    invoke-static {v10, v12, v6}, Lcom/android/internal/pm/pkg/component/ComponentParseUtils;->flag(IILandroid/content/res/TypedArray;)I

    move-result v10

    or-int/2addr v8, v10

    .line 157
    const/high16 v10, 0x1000000

    const/16 v12, 0x34

    invoke-static {v10, v12, v6}, Lcom/android/internal/pm/pkg/component/ComponentParseUtils;->flag(IILandroid/content/res/TypedArray;)I

    move-result v10

    or-int/2addr v8, v10

    .line 158
    const/high16 v10, 0x2000000

    const/16 v12, 0x38

    invoke-static {v10, v12, v6}, Lcom/android/internal/pm/pkg/component/ComponentParseUtils;->flag(IILandroid/content/res/TypedArray;)I

    move-result v10

    or-int/2addr v8, v10

    or-int/2addr v7, v8

    .line 159
    const/high16 v8, 0x10000000

    const/16 v10, 0x3c

    invoke-static {v8, v10, v6}, Lcom/android/internal/pm/pkg/component/ComponentParseUtils;->flag(IILandroid/content/res/TypedArray;)I

    move-result v8

    or-int/2addr v7, v8

    .line 149
    invoke-virtual {v2, v7}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->setFlags(I)Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;

    .line 161
    invoke-virtual {v2}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->getPrivateFlags()I

    move-result v7

    const/16 v8, 0x36

    invoke-static {v11, v8, v6}, Lcom/android/internal/pm/pkg/component/ComponentParseUtils;->flag(IILandroid/content/res/TypedArray;)I

    move-result v8

    .line 163
    const/16 v10, 0x3a

    invoke-static {v14, v10, v11, v6}, Lcom/android/internal/pm/pkg/component/ComponentParseUtils;->flag(IIZLandroid/content/res/TypedArray;)I

    move-result v10

    or-int/2addr v8, v10

    or-int/2addr v7, v8

    .line 161
    invoke-virtual {v2, v7}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->setPrivateFlags(I)Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;

    .line 166
    const/16 v7, 0x31

    invoke-virtual {v6, v7, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    invoke-virtual {v2, v7}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->setColorMode(I)Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;

    move-result-object v7

    .line 167
    const/16 v8, 0x21

    invoke-virtual {v6, v8, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->setDocumentLaunchMode(I)Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;

    move-result-object v7

    .line 168
    const/16 v8, 0xe

    invoke-virtual {v6, v8, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->setLaunchMode(I)Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;

    move-result-object v7

    .line 169
    const/16 v8, 0x26

    invoke-virtual {v6, v8, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->setLockTaskLaunchMode(I)Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;

    move-result-object v7

    .line 170
    invoke-static {}, Landroid/app/ActivityTaskManager;->getDefaultAppRecentsLimitStatic()I

    move-result v8

    const/16 v10, 0x22

    invoke-virtual {v6, v10, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->setMaxRecents(I)Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;

    move-result-object v7

    .line 171
    invoke-virtual {v6, v13, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->setPersistableMode(I)Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;

    move-result-object v7

    .line 172
    const/16 v8, 0x2b

    invoke-virtual {v6, v8}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->setRequestedVrComponent(Ljava/lang/String;)Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;

    move-result-object v7

    .line 173
    const/4 v8, -0x1

    const/16 v10, 0x2e

    invoke-virtual {v6, v10, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v10

    invoke-virtual {v7, v10}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->setRotationAnimation(I)Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;

    move-result-object v7

    .line 174
    const/16 v10, 0x14

    invoke-virtual {v6, v10, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v10

    invoke-virtual {v7, v10}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->setSoftInputMode(I)Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;

    move-result-object v7

    .line 176
    invoke-virtual {v6, v15, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v10

    .line 177
    const/16 v12, 0x2f

    invoke-virtual {v6, v12, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v12

    .line 175
    invoke-static {v10, v12}, Lcom/android/internal/pm/pkg/component/ParsedActivityUtils;->getActivityConfigChanges(II)I

    move-result v10

    invoke-virtual {v7, v10}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->setConfigChanges(I)Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;

    .line 180
    const/16 v7, 0xf

    invoke-virtual {v6, v7, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    .line 181
    invoke-static {v5, v6, v7}, Lcom/android/internal/pm/pkg/component/ParsedActivityUtils;->getActivityResizeMode(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/TypedArray;I)I

    move-result v8

    .line 182
    invoke-virtual {v2, v7}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->setScreenOrientation(I)Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;

    move-result-object v7

    .line 183
    invoke-virtual {v7, v8}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->setResizeMode(I)Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;

    .line 185
    const/16 v7, 0x32

    invoke-virtual {v6, v7}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v10

    const/4 v12, 0x0

    if-eqz v10, :cond_23a

    .line 186
    invoke-virtual {v6, v7}, Landroid/content/res/TypedArray;->getType(I)I

    move-result v10

    const/4 v13, 0x4

    if-ne v10, v13, :cond_23a

    .line 188
    nop

    .line 189
    invoke-virtual {v6, v7, v12}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v7

    .line 188
    invoke-virtual {v2, v8, v7}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->setMaxAspectRatio(IF)Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;

    .line 193
    :cond_23a
    const/16 v7, 0x35

    invoke-virtual {v6, v7}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v10

    if-eqz v10, :cond_252

    .line 194
    invoke-virtual {v6, v7}, Landroid/content/res/TypedArray;->getType(I)I

    move-result v10

    const/4 v13, 0x4

    if-ne v10, v13, :cond_253

    .line 196
    nop

    .line 197
    invoke-virtual {v6, v7, v12}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v7

    .line 196
    invoke-virtual {v2, v8, v7}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->setMinAspectRatio(IF)Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;

    goto :goto_253

    .line 193
    :cond_252
    const/4 v13, 0x4

    .line 201
    :cond_253
    :goto_253
    const/16 v7, 0x3e

    invoke-virtual {v6, v7}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v8

    if-eqz v8, :cond_26e

    .line 202
    invoke-virtual {v6, v7, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    .line 205
    invoke-virtual {v2}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->getPrivateFlags()I

    move-result v8

    .line 206
    if-eqz v7, :cond_267

    move v12, v13

    goto :goto_269

    .line 207
    :cond_267
    const/16 v12, 0x8

    :goto_269
    or-int v7, v8, v12

    .line 205
    invoke-virtual {v2, v7}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->setPrivateFlags(I)Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;

    .line 209
    :cond_26e
    goto :goto_287

    .line 210
    :cond_26f
    invoke-virtual {v2, v4}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->setLaunchMode(I)Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;

    move-result-object v7

    .line 211
    invoke-virtual {v7, v4}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->setConfigChanges(I)Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;

    move-result-object v7

    .line 212
    invoke-virtual {v2}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->getFlags()I

    move-result v8

    const/high16 v10, 0x40000000    # 2.0f

    const/16 v12, 0x1c

    invoke-static {v10, v12, v6}, Lcom/android/internal/pm/pkg/component/ComponentParseUtils;->flag(IILandroid/content/res/TypedArray;)I

    move-result v10

    or-int/2addr v8, v10

    invoke-virtual {v7, v8}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->setFlags(I)Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;

    .line 216
    :goto_287
    const/16 v7, 0x400

    const/16 v8, 0x8

    invoke-virtual {v6, v8, v7}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v7

    .line 220
    nop

    .line 221
    invoke-interface {v5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getTaskAffinity()Ljava/lang/String;

    move-result-object v8

    .line 220
    invoke-static {v0, v8, v7, v9}, Lcom/android/internal/pm/pkg/component/ComponentParseUtils;->buildTaskAffinityName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    .line 222
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v7

    if-eqz v7, :cond_2a6

    .line 223
    invoke-interface {v9, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_2a2
    .catchall {:try_start_90 .. :try_end_2a2} :catchall_303

    .line 257
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 223
    return-object v0

    .line 226
    :cond_2a6
    :try_start_2a6
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->setTaskAffinity(Ljava/lang/String;)Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;

    .line 228
    const/16 v0, 0x2d

    invoke-virtual {v6, v0, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    .line 229
    if-eqz v8, :cond_2c4

    .line 230
    invoke-virtual {v2}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->getFlags()I

    move-result v0

    const/high16 v7, 0x100000

    or-int/2addr v0, v7

    invoke-virtual {v2, v0}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->setFlags(I)Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;

    .line 231
    invoke-interface {v5, v11}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setVisibleToInstantApps(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 234
    :cond_2c4
    const/16 v0, 0x3f

    invoke-virtual {v6, v0, v4}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v0

    .line 237
    if-eqz v0, :cond_2dc

    .line 238
    invoke-static {v0, v4, v4}, Landroid/content/pm/parsing/FrameworkParsingPackageUtils;->validateName(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_2dc

    .line 240
    const-string v0, "requiredDisplayCategory attribute can only consist of alphanumeric characters, \'_\', and \'.\'"

    invoke-interface {v9, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_2d8
    .catchall {:try_start_2a6 .. :try_end_2d8} :catchall_303

    .line 257
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 240
    return-object v0

    .line 244
    :cond_2dc
    :try_start_2dc
    invoke-virtual {v2, v0}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->setRequiredDisplayCategory(Ljava/lang/String;)Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;

    .line 246
    const/16 v0, 0x41

    invoke-virtual {v6, v0, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->setRequireContentUriPermissionFromCaller(I)Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;
    :try_end_2e8
    .catchall {:try_start_2dc .. :try_end_2e8} :catchall_303

    .line 250
    const/4 v11, 0x4

    const/4 v12, 0x6

    const/4 v7, 0x0

    const/16 v10, 0x1b

    move-object v0, v6

    move v6, v1

    move-object v1, v5

    move-object v5, v0

    move-object/from16 v4, p2

    move-object v0, v2

    move-object v2, v3

    move-object/from16 v3, p3

    :try_start_2f7
    invoke-static/range {v0 .. v12}, Lcom/android/internal/pm/pkg/component/ParsedActivityUtils;->parseActivityOrAlias(Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Ljava/lang/String;Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources;Landroid/content/res/TypedArray;ZZZLandroid/content/pm/parsing/result/ParseInput;III)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_2fb
    .catchall {:try_start_2f7 .. :try_end_2fb} :catchall_300

    move-object v6, v5

    .line 257
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 250
    return-object v0

    .line 257
    :catchall_300
    move-exception v0

    move-object v6, v5

    goto :goto_304

    :catchall_303
    move-exception v0

    :goto_304
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 258
    throw v0
.end method

.method private static blacklist parseActivityWindowLayout(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Landroid/util/AttributeSet;",
            "Landroid/content/pm/parsing/result/ParseInput;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Landroid/content/pm/ActivityInfo$WindowLayout;",
            ">;"
        }
    .end annotation

    .line 580
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestLayout:[I

    invoke-virtual {p0, p1, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p0

    .line 582
    nop

    .line 583
    nop

    .line 584
    nop

    .line 585
    nop

    .line 586
    const/4 p1, 0x3

    :try_start_b
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->getType(I)I

    move-result v0

    .line 587
    const/4 v1, 0x6

    const/4 v2, 0x5

    const/high16 v3, -0x40800000    # -1.0f

    const/4 v4, 0x1

    const/4 v5, -0x1

    if-ne v0, v1, :cond_1f

    .line 588
    invoke-virtual {p0, p1, v4, v4, v3}, Landroid/content/res/TypedArray;->getFraction(IIIF)F

    move-result p1

    move v0, v2

    move v2, p1

    move p1, v5

    goto :goto_2b

    .line 590
    :cond_1f
    if-ne v0, v2, :cond_28

    .line 591
    invoke-virtual {p0, p1, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    move v0, v2

    move v2, v3

    goto :goto_2b

    .line 590
    :cond_28
    move v0, v2

    move v2, v3

    move p1, v5

    .line 594
    :goto_2b
    const/4 v6, 0x4

    invoke-virtual {p0, v6}, Landroid/content/res/TypedArray;->getType(I)I

    move-result v7

    .line 595
    if-ne v7, v1, :cond_3a

    .line 596
    invoke-virtual {p0, v6, v4, v4, v3}, Landroid/content/res/TypedArray;->getFraction(IIIF)F

    move-result v3

    move v1, v4

    move v4, v3

    move v3, v5

    goto :goto_48

    .line 598
    :cond_3a
    if-ne v7, v0, :cond_45

    .line 599
    invoke-virtual {p0, v6, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    move v9, v3

    move v3, v1

    move v1, v4

    move v4, v9

    goto :goto_48

    .line 598
    :cond_45
    move v1, v4

    move v4, v3

    move v3, v5

    .line 602
    :goto_48
    const/16 v6, 0x11

    const/4 v7, 0x0

    invoke-virtual {p0, v7, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    .line 603
    invoke-virtual {p0, v1, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    .line 604
    const/4 v8, 0x2

    invoke-virtual {p0, v8, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    .line 606
    nop

    .line 607
    invoke-virtual {p0, v0, v7}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v8

    .line 609
    new-instance v0, Landroid/content/pm/ActivityInfo$WindowLayout;

    move v7, v5

    move v5, v6

    move v6, v1

    move v1, p1

    invoke-direct/range {v0 .. v8}, Landroid/content/pm/ActivityInfo$WindowLayout;-><init>(IFIFIIILjava/lang/String;)V

    .line 612
    invoke-interface {p2, v0}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p1
    :try_end_6a
    .catchall {:try_start_b .. :try_end_6a} :catchall_6e

    .line 614
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 612
    return-object p1

    .line 614
    :catchall_6e
    move-exception v0

    move-object p1, v0

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 615
    throw p1
.end method

.method private static blacklist parseIntentFilter(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;ZZLandroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            "Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;",
            "ZZ",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            "Landroid/content/pm/parsing/result/ParseInput;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 520
    const/4 v6, 0x1

    const/4 v8, 0x1

    const/4 v5, 0x1

    move-object v1, p0

    move-object v0, p1

    move v7, p2

    move v4, p3

    move-object v2, p4

    move-object v3, p5

    move-object/from16 v9, p6

    invoke-static/range {v0 .. v9}, Lcom/android/internal/pm/pkg/component/ParsedMainComponentUtils;->parseIntentFilter(Lcom/android/internal/pm/pkg/component/ParsedMainComponent;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZZZZZLandroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    .line 524
    invoke-interface {p0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result p2

    if-eqz p2, :cond_1a

    .line 525
    invoke-interface {v9, p0}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    .line 528
    :cond_1a
    invoke-interface {p0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;

    .line 529
    if-eqz p0, :cond_47

    .line 530
    invoke-virtual {p0}, Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object p2

    .line 531
    invoke-virtual {p2}, Landroid/content/IntentFilter;->isVisibleToInstantApp()Z

    move-result p3

    if-eqz p3, :cond_36

    .line 532
    invoke-virtual {p1}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->getFlags()I

    move-result p3

    const/high16 p4, 0x100000

    or-int/2addr p3, p4

    invoke-virtual {p1, p3}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->setFlags(I)Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;

    .line 534
    :cond_36
    invoke-virtual {p2}, Landroid/content/IntentFilter;->isImplicitlyVisibleToInstantApp()Z

    move-result p2

    if-eqz p2, :cond_47

    .line 535
    nop

    .line 536
    invoke-virtual {p1}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->getFlags()I

    move-result p2

    const/high16 p3, 0x200000

    or-int/2addr p2, p3

    .line 535
    invoke-virtual {p1, p2}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->setFlags(I)Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;

    .line 540
    :cond_47
    invoke-interface {v9, p0}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist resolveActivityWindowLayout(Lcom/android/internal/pm/pkg/component/ParsedActivity;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/pm/pkg/component/ParsedActivity;",
            "Landroid/content/pm/parsing/result/ParseInput;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Landroid/content/pm/ActivityInfo$WindowLayout;",
            ">;"
        }
    .end annotation

    .line 627
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getMetaData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "android.activity_window_layout_affinity"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 629
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getWindowLayout()Landroid/content/pm/ActivityInfo$WindowLayout;

    move-result-object p0

    invoke-interface {p1, p0}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    .line 633
    :cond_15
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getWindowLayout()Landroid/content/pm/ActivityInfo$WindowLayout;

    move-result-object v0

    if-eqz v0, :cond_2c

    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getWindowLayout()Landroid/content/pm/ActivityInfo$WindowLayout;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ActivityInfo$WindowLayout;->windowLayoutAffinity:Ljava/lang/String;

    if-eqz v0, :cond_2c

    .line 634
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getWindowLayout()Landroid/content/pm/ActivityInfo$WindowLayout;

    move-result-object p0

    invoke-interface {p1, p0}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    .line 637
    :cond_2c
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getMetaData()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 639
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getWindowLayout()Landroid/content/pm/ActivityInfo$WindowLayout;

    move-result-object p0

    .line 640
    if-nez p0, :cond_4a

    .line 641
    new-instance v2, Landroid/content/pm/ActivityInfo$WindowLayout;

    const/4 v8, -0x1

    const/4 v9, -0x1

    const/4 v3, -0x1

    const/high16 v4, -0x40800000    # -1.0f

    const/4 v5, -0x1

    const/high16 v6, -0x40800000    # -1.0f

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v10}, Landroid/content/pm/ActivityInfo$WindowLayout;-><init>(IFIFIIILjava/lang/String;)V

    move-object p0, v2

    goto :goto_4c

    .line 645
    :cond_4a
    iput-object v10, p0, Landroid/content/pm/ActivityInfo$WindowLayout;->windowLayoutAffinity:Ljava/lang/String;

    .line 647
    :goto_4c
    invoke-interface {p1, p0}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0
.end method
