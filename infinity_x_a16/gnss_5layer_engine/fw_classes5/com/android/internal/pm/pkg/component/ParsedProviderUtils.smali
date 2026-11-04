.class public Lcom/android/internal/pm/pkg/component/ParsedProviderUtils;
.super Ljava/lang/Object;
.source "ParsedProviderUtils.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "PackageParsing"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist parseGrantUriPermission(Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            "Landroid/content/pm/parsing/result/ParseInput;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/internal/pm/pkg/component/ParsedProvider;",
            ">;"
        }
    .end annotation

    .line 231
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestGrantUriPermission:[I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 234
    :try_start_6
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 236
    nop

    .line 237
    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v3

    .line 239
    const/4 v4, 0x3

    const/4 v5, 0x1

    if-eqz v3, :cond_1b

    .line 240
    new-instance v1, Landroid/os/PatternMatcher;

    invoke-direct {v1, v3, v4}, Landroid/os/PatternMatcher;-><init>(Ljava/lang/String;I)V

    goto :goto_4f

    .line 242
    :cond_1b
    const/4 v3, 0x2

    invoke-virtual {p2, v3, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v6

    .line 244
    if-eqz v6, :cond_28

    .line 245
    new-instance v1, Landroid/os/PatternMatcher;

    invoke-direct {v1, v6, v3}, Landroid/os/PatternMatcher;-><init>(Ljava/lang/String;I)V

    goto :goto_4f

    .line 247
    :cond_28
    invoke-virtual {p2, v5, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v3

    .line 249
    if-eqz v3, :cond_34

    .line 250
    new-instance v1, Landroid/os/PatternMatcher;

    invoke-direct {v1, v3, v5}, Landroid/os/PatternMatcher;-><init>(Ljava/lang/String;I)V

    goto :goto_4f

    .line 252
    :cond_34
    invoke-virtual {p2, v4, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v3

    .line 254
    if-eqz v3, :cond_41

    .line 255
    new-instance v2, Landroid/os/PatternMatcher;

    invoke-direct {v2, v3, v1}, Landroid/os/PatternMatcher;-><init>(Ljava/lang/String;I)V

    move-object v1, v2

    goto :goto_4f

    .line 257
    :cond_41
    invoke-virtual {p2, v2, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v1

    .line 259
    if-eqz v1, :cond_4e

    .line 260
    new-instance v3, Landroid/os/PatternMatcher;

    invoke-direct {v3, v1, v2}, Landroid/os/PatternMatcher;-><init>(Ljava/lang/String;I)V

    move-object v1, v3

    goto :goto_4f

    .line 259
    :cond_4e
    const/4 v1, 0x0

    .line 267
    :goto_4f
    if-eqz v1, :cond_58

    .line 268
    invoke-virtual {p0, v1}, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;->addUriPermissionPattern(Landroid/os/PatternMatcher;)Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;

    .line 269
    invoke-virtual {p0, v5}, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;->setGrantUriPermissions(Z)Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;

    goto :goto_8c

    .line 275
    :cond_58
    const-string v1, "PackageParsing"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown element under <path-permission>: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " at "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 276
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getBaseApkPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 275
    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    :goto_8c
    invoke-interface {p4, p0}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0
    :try_end_90
    .catchall {:try_start_6 .. :try_end_90} :catchall_94

    .line 281
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 279
    return-object p0

    .line 281
    :catchall_94
    move-exception p0

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 282
    throw p0
.end method

.method private static blacklist parsePathPermission(Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            "Landroid/content/pm/parsing/result/ParseInput;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/internal/pm/pkg/component/ParsedProvider;",
            ">;"
        }
    .end annotation

    .line 288
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestPathPermission:[I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 291
    :try_start_6
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 293
    const/4 v1, 0x0

    invoke-virtual {p2, v1, v1}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v2

    .line 295
    const/4 v3, 0x1

    invoke-virtual {p2, v3, v1}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v4

    .line 297
    if-nez v4, :cond_17

    .line 298
    move-object v4, v2

    .line 300
    :cond_17
    const/4 v5, 0x2

    invoke-virtual {p2, v5, v1}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v6

    .line 302
    if-nez v6, :cond_1f

    .line 303
    goto :goto_20

    .line 302
    :cond_1f
    move-object v2, v6

    .line 306
    :goto_20
    nop

    .line 307
    if-eqz v4, :cond_29

    .line 308
    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    .line 309
    move v6, v3

    goto :goto_2a

    .line 307
    :cond_29
    move v6, v1

    .line 311
    :goto_2a
    if-eqz v2, :cond_31

    .line 312
    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2
    :try_end_30
    .catchall {:try_start_6 .. :try_end_30} :catchall_ef

    .line 313
    move v6, v3

    .line 316
    :cond_31
    const-string v7, " "

    const-string v8, " at "

    const-string v9, "PackageParsing"

    if-nez v6, :cond_6f

    .line 321
    :try_start_39
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No readPermission or writePermission for <path-permission>: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 322
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getBaseApkPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 323
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 321
    invoke-static {v9, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    invoke-interface {p4, p0}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0
    :try_end_6b
    .catchall {:try_start_39 .. :try_end_6b} :catchall_ef

    .line 378
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 324
    return-object p0

    .line 328
    :cond_6f
    nop

    .line 329
    const/4 v6, 0x7

    :try_start_71
    invoke-virtual {p2, v6, v1}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v6

    .line 330
    const/4 v10, 0x3

    if-eqz v6, :cond_7e

    .line 331
    new-instance v1, Landroid/content/pm/PathPermission;

    invoke-direct {v1, v6, v10, v4, v2}, Landroid/content/pm/PathPermission;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_b3

    .line 334
    :cond_7e
    const/4 v6, 0x5

    invoke-virtual {p2, v6, v1}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v6

    .line 335
    if-eqz v6, :cond_8b

    .line 336
    new-instance v1, Landroid/content/pm/PathPermission;

    invoke-direct {v1, v6, v5, v4, v2}, Landroid/content/pm/PathPermission;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_b3

    .line 339
    :cond_8b
    const/4 v5, 0x4

    invoke-virtual {p2, v5, v1}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v6

    .line 341
    if-eqz v6, :cond_98

    .line 342
    new-instance v1, Landroid/content/pm/PathPermission;

    invoke-direct {v1, v6, v3, v4, v2}, Landroid/content/pm/PathPermission;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_b3

    .line 345
    :cond_98
    const/4 v3, 0x6

    invoke-virtual {p2, v3, v1}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v3

    .line 347
    if-eqz v3, :cond_a5

    .line 348
    new-instance v1, Landroid/content/pm/PathPermission;

    invoke-direct {v1, v3, v5, v4, v2}, Landroid/content/pm/PathPermission;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_b3

    .line 351
    :cond_a5
    invoke-virtual {p2, v10, v1}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v3

    .line 353
    if-eqz v3, :cond_b2

    .line 354
    new-instance v5, Landroid/content/pm/PathPermission;

    invoke-direct {v5, v3, v1, v4, v2}, Landroid/content/pm/PathPermission;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    move-object v1, v5

    goto :goto_b3

    .line 353
    :cond_b2
    const/4 v1, 0x0

    .line 362
    :goto_b3
    if-eqz v1, :cond_b9

    .line 363
    invoke-virtual {p0, v1}, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;->addPathPermission(Landroid/content/pm/PathPermission;)Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;

    goto :goto_e7

    .line 370
    :cond_b9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No path, pathPrefix, or pathPattern for <path-permission>: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 371
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getBaseApkPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 373
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 370
    invoke-static {v9, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    :goto_e7
    invoke-interface {p4, p0}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0
    :try_end_eb
    .catchall {:try_start_71 .. :try_end_eb} :catchall_ef

    .line 378
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 376
    return-object p0

    .line 378
    :catchall_ef
    move-exception p0

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 379
    throw p0
.end method

.method public static blacklist parseProvider([Ljava/lang/String;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;IZLjava/lang/String;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;
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
            "Lcom/android/internal/pm/pkg/component/ParsedProvider;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 62
    invoke-interface/range {p1 .. p1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getTargetSdkVersion()I

    move-result v0

    .line 63
    invoke-interface/range {p1 .. p1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 64
    new-instance v2, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;

    invoke-direct {v2}, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;-><init>()V

    .line 65
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 67
    sget-object v4, Lcom/android/internal/R$styleable;->AndroidManifestProvider:[I

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    invoke-virtual {v5, v6, v4}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 69
    nop

    .line 70
    const/16 v11, 0x11

    const/16 v12, 0xe

    const/16 v13, 0x12

    const/4 v14, 0x6

    const/4 v15, 0x1

    const/16 v16, 0x0

    const/16 v17, 0xf

    const/16 v18, 0x2

    const/16 v19, 0x8

    const/16 v20, 0x13

    const/16 v21, 0x15

    const/16 v22, 0x17

    const/16 v23, 0x19

    move-object/from16 v5, p1

    move/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object v6, v4

    move-object/from16 v4, p0

    :try_start_41
    invoke-static/range {v2 .. v23}, Lcom/android/internal/pm/pkg/component/ParsedMainComponentUtils;->parseMainComponent(Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;Ljava/lang/String;[Ljava/lang/String;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/TypedArray;IZLjava/lang/String;Landroid/content/pm/parsing/result/ParseInput;IIIIIIIIIIIII)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v4

    .line 85
    invoke-interface {v4}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v5

    if-eqz v5, :cond_53

    .line 86
    invoke-interface {v10, v4}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_4f
    .catchall {:try_start_41 .. :try_end_4f} :catchall_14f

    .line 144
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 86
    return-object v0

    .line 89
    :cond_53
    const/16 v4, 0xa

    const/4 v5, 0x0

    :try_start_56
    invoke-virtual {v6, v4, v5}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v4

    .line 94
    const/16 v7, 0xb

    invoke-virtual {v6, v7, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    invoke-virtual {v2, v7}, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;->setSyncable(Z)Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;

    move-result-object v7

    const/16 v8, 0x11

    const/4 v9, 0x1

    if-ge v0, v8, :cond_6b

    move v0, v9

    goto :goto_6c

    :cond_6b
    move v0, v5

    .line 96
    :goto_6c
    const/4 v8, 0x7

    invoke-virtual {v6, v8, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-virtual {v7, v0}, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;->setExported(Z)Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;

    .line 99
    const/4 v0, 0x3

    invoke-virtual {v6, v0, v5}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v0

    .line 101
    const/4 v7, 0x4

    invoke-virtual {v6, v7, v5}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v7

    .line 103
    if-nez v7, :cond_81

    .line 104
    move-object v7, v0

    .line 106
    :cond_81
    if-nez v7, :cond_8b

    .line 107
    invoke-interface/range {p1 .. p1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getPermission()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;->setReadPermission(Ljava/lang/String;)Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;

    goto :goto_8e

    .line 109
    :cond_8b
    invoke-virtual {v2, v7}, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;->setReadPermission(Ljava/lang/String;)Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;

    .line 111
    :goto_8e
    const/4 v7, 0x5

    invoke-virtual {v6, v7, v5}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v7

    .line 113
    if-nez v7, :cond_96

    .line 114
    goto :goto_97

    .line 113
    :cond_96
    move-object v0, v7

    .line 116
    :goto_97
    if-nez v0, :cond_a1

    .line 117
    invoke-interface/range {p1 .. p1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getPermission()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;->setWritePermission(Ljava/lang/String;)Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;

    goto :goto_a4

    .line 119
    :cond_a1
    invoke-virtual {v2, v0}, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;->setWritePermission(Ljava/lang/String;)Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;

    .line 122
    :goto_a4
    nop

    .line 123
    const/16 v0, 0xd

    invoke-virtual {v6, v0, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    .line 122
    invoke-virtual {v2, v0}, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;->setGrantUriPermissions(Z)Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;

    move-result-object v0

    .line 125
    const/16 v7, 0x16

    invoke-virtual {v6, v7, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    .line 124
    invoke-virtual {v0, v7}, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;->setForceUriPermissions(Z)Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;

    move-result-object v0

    .line 128
    const/16 v7, 0x9

    invoke-virtual {v6, v7, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    .line 127
    invoke-virtual {v0, v7}, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;->setMultiProcess(Z)Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;

    move-result-object v0

    .line 129
    const/16 v7, 0xc

    invoke-virtual {v6, v7, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    invoke-virtual {v0, v7}, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;->setInitOrder(I)Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;

    move-result-object v0

    .line 130
    invoke-virtual {v2}, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;->getFlags()I

    move-result v7

    const/high16 v8, 0x40000000    # 2.0f

    const/16 v11, 0x10

    invoke-static {v8, v11, v6}, Lcom/android/internal/pm/pkg/component/ComponentParseUtils;->flag(IILandroid/content/res/TypedArray;)I

    move-result v8

    or-int/2addr v7, v8

    invoke-virtual {v0, v7}, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;->setFlags(I)Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;

    .line 133
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/multiuser/Flags;->enableSystemUserOnlyForServicesAndProviders()Z

    move-result v0

    if-eqz v0, :cond_f3

    .line 134
    invoke-virtual {v2}, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;->getFlags()I

    move-result v0

    const/high16 v7, 0x20000000

    const/16 v8, 0x18

    invoke-static {v7, v8, v6}, Lcom/android/internal/pm/pkg/component/ComponentParseUtils;->flag(IILandroid/content/res/TypedArray;)I

    move-result v7

    or-int/2addr v0, v7

    invoke-virtual {v2, v0}, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;->setFlags(I)Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;

    .line 137
    :cond_f3
    const/16 v0, 0x14

    invoke-virtual {v6, v0, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    .line 139
    if-eqz v0, :cond_10b

    .line 140
    invoke-virtual {v2}, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;->getFlags()I

    move-result v5

    const/high16 v7, 0x100000

    or-int/2addr v5, v7

    invoke-virtual {v2, v5}, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;->setFlags(I)Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;

    .line 141
    move-object/from16 v5, p1

    invoke-interface {v5, v9}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setVisibleToInstantApps(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    :try_end_10a
    .catchall {:try_start_56 .. :try_end_10a} :catchall_14f

    goto :goto_10d

    .line 139
    :cond_10b
    move-object/from16 v5, p1

    .line 144
    :goto_10d
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 145
    nop

    .line 147
    invoke-interface {v5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->isSaveStateDisallowed()Z

    move-result v6

    if-eqz v6, :cond_128

    .line 149
    invoke-virtual {v2}, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;->getProcessName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_128

    .line 150
    const-string v0, "Heavy-weight applications can not have providers in main process"

    invoke-interface {v10, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 155
    :cond_128
    if-nez v4, :cond_131

    .line 156
    const-string v0, "<provider> does not include authorities attribute"

    invoke-interface {v10, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 158
    :cond_131
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_13e

    .line 159
    const-string v0, "<provider> has empty authorities attribute"

    invoke-interface {v10, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 161
    :cond_13e
    invoke-virtual {v2, v4}, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;->setAuthority(Ljava/lang/String;)Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;

    .line 163
    move v4, v0

    move-object v1, v3

    move-object v0, v5

    move-object v6, v10

    move-object/from16 v3, p3

    move-object v5, v2

    move-object/from16 v2, p2

    invoke-static/range {v0 .. v6}, Lcom/android/internal/pm/pkg/component/ParsedProviderUtils;->parseProviderTags(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Ljava/lang/String;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZLcom/android/internal/pm/pkg/component/ParsedProviderImpl;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 144
    :catchall_14f
    move-exception v0

    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 145
    throw v0
.end method

.method private static blacklist parseProviderTags(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Ljava/lang/String;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZLcom/android/internal/pm/pkg/component/ParsedProviderImpl;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            "Ljava/lang/String;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            "Z",
            "Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;",
            "Landroid/content/pm/parsing/result/ParseInput;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/internal/pm/pkg/component/ParsedProvider;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 171
    move-object/from16 v0, p5

    move-object/from16 v9, p6

    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v10

    .line 173
    :goto_8
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_c7

    const/4 v3, 0x3

    if-ne v1, v3, :cond_18

    .line 175
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v4

    if-le v4, v10, :cond_c7

    .line 176
    :cond_18
    const/4 v4, 0x2

    if-eq v1, v4, :cond_1c

    .line 177
    goto :goto_8

    .line 179
    :cond_1c
    invoke-static {}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->getAconfigFlags()Lcom/android/internal/pm/pkg/component/AconfigFlags;

    move-result-object v1

    invoke-virtual {v1, p0, p3}, Lcom/android/internal/pm/pkg/component/AconfigFlags;->skipCurrentElement(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 180
    invoke-static {p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 181
    goto :goto_8

    .line 184
    :cond_2a
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 186
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_cc

    :cond_35
    goto :goto_67

    :sswitch_36
    const-string v2, "path-permission"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    const/4 v2, 0x4

    goto :goto_68

    :sswitch_40
    const-string v2, "property"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    move v2, v4

    goto :goto_68

    :sswitch_4a
    const-string v2, "intent-filter"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    const/4 v2, 0x0

    goto :goto_68

    :sswitch_54
    const-string v3, "meta-data"

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    goto :goto_68

    :sswitch_5d
    const-string v2, "grant-uri-permission"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    move v2, v3

    goto :goto_68

    :goto_67
    const/4 v2, -0x1

    :goto_68
    packed-switch v2, :pswitch_data_e2

    .line 216
    invoke-static {p1, p0, p3, v9}, Lcom/android/internal/pm/pkg/parsing/ParsingUtils;->unknownTag(Ljava/lang/String;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2

    goto :goto_ba

    .line 212
    :pswitch_70
    invoke-static {v0, p0, p2, p3, v9}, Lcom/android/internal/pm/pkg/component/ParsedProviderUtils;->parsePathPermission(Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    .line 213
    move-object v2, v1

    goto :goto_ba

    .line 208
    :pswitch_76
    invoke-static {v0, p0, p2, p3, v9}, Lcom/android/internal/pm/pkg/component/ParsedProviderUtils;->parseGrantUriPermission(Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    .line 209
    move-object v2, v1

    goto :goto_ba

    .line 205
    :pswitch_7c
    invoke-static {v0, p0, p2, p3, v9}, Lcom/android/internal/pm/pkg/component/ParsedComponentUtils;->addProperty(Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    .line 206
    move-object v2, v1

    goto :goto_ba

    .line 202
    :pswitch_82
    invoke-static {v0, p0, p2, p3, v9}, Lcom/android/internal/pm/pkg/component/ParsedComponentUtils;->addMetaData(Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    .line 203
    move-object v2, v1

    goto :goto_ba

    .line 188
    :pswitch_88
    nop

    .line 189
    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-static/range {v0 .. v9}, Lcom/android/internal/pm/pkg/component/ParsedMainComponentUtils;->parseIntentFilter(Lcom/android/internal/pm/pkg/component/ParsedMainComponent;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZZZZZLandroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v5

    .line 193
    nop

    .line 194
    invoke-interface {v5}, Landroid/content/pm/parsing/result/ParseResult;->isSuccess()Z

    move-result v2

    if-eqz v2, :cond_b9

    .line 195
    invoke-interface {v5}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;

    .line 196
    invoke-virtual {v2}, Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v4

    .line 197
    invoke-virtual {v4}, Landroid/content/IntentFilter;->getOrder()I

    move-result v4

    invoke-virtual {v0}, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;->getOrder()I

    move-result v6

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;->setOrder(I)Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;

    .line 198
    invoke-virtual {v0, v2}, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;->addIntent(Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;)V

    .line 199
    nop

    .line 220
    :cond_b9
    move-object v2, v5

    :goto_ba
    invoke-interface {v2}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v4

    if-eqz v4, :cond_c5

    .line 221
    invoke-interface {v9, v2}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    .line 223
    :cond_c5
    goto/16 :goto_8

    .line 225
    :cond_c7
    invoke-interface {v9, v0}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    :sswitch_data_cc
    .sparse-switch
        -0x6c28de5f -> :sswitch_5d
        -0x4284098e -> :sswitch_54
        -0x3d616837 -> :sswitch_4a
        -0x3b32222b -> :sswitch_40
        0x25eb3477 -> :sswitch_36
    .end sparse-switch

    :pswitch_data_e2
    .packed-switch 0x0
        :pswitch_88
        :pswitch_82
        :pswitch_7c
        :pswitch_76
        :pswitch_70
    .end packed-switch
.end method
