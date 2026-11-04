.class public Lcom/android/internal/pm/pkg/component/ParsedPermissionUtils;
.super Ljava/lang/Object;
.source "ParsedPermissionUtils.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "PackageParsing"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist calculateFootprint(Lcom/android/internal/pm/pkg/component/ParsedPermission;)I
    .registers 2

    .line 326
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 327
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getNonLocalizedLabel()Ljava/lang/CharSequence;

    move-result-object p0

    .line 328
    if-eqz p0, :cond_13

    .line 329
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    add-int/2addr v0, p0

    .line 331
    :cond_13
    return v0
.end method

.method public static blacklist declareDuplicatePermission(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;)Z
    .registers 8

    .line 359
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getPermissions()Ljava/util/List;

    move-result-object p0

    .line 360
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 361
    const/4 v1, 0x0

    if-lez v0, :cond_39

    .line 362
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2, v0}, Landroid/util/ArrayMap;-><init>(I)V

    .line 363
    move v3, v1

    :goto_11
    if-ge v3, v0, :cond_39

    .line 364
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/pm/pkg/component/ParsedPermission;

    .line 365
    invoke-interface {v4}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getName()Ljava/lang/String;

    move-result-object v5

    .line 366
    invoke-virtual {v2, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/pm/pkg/component/ParsedPermission;

    .line 367
    invoke-static {v4, v6}, Lcom/android/internal/pm/pkg/component/ParsedPermissionUtils;->isMalformedDuplicate(Lcom/android/internal/pm/pkg/component/ParsedPermission;Lcom/android/internal/pm/pkg/component/ParsedPermission;)Z

    move-result v6

    if-eqz v6, :cond_33

    .line 369
    const p0, 0x534e4554

    const-string v0, "213323615"

    invoke-static {p0, v0}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 370
    const/4 p0, 0x1

    return p0

    .line 372
    :cond_33
    invoke-virtual {v2, v5, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 375
    :cond_39
    return v1
.end method

.method public static blacklist getProtection(Lcom/android/internal/pm/pkg/component/ParsedPermission;)I
    .registers 1

    .line 318
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getProtectionLevel()I

    move-result p0

    and-int/lit8 p0, p0, 0xf

    return p0
.end method

.method public static blacklist getProtectionFlags(Lcom/android/internal/pm/pkg/component/ParsedPermission;)I
    .registers 1

    .line 322
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getProtectionLevel()I

    move-result p0

    and-int/lit8 p0, p0, -0x10

    return p0
.end method

.method public static blacklist isAppOp(Lcom/android/internal/pm/pkg/component/ParsedPermission;)Z
    .registers 1

    .line 313
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getProtectionLevel()I

    move-result p0

    and-int/lit8 p0, p0, 0x40

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method private static blacklist isMalformedDuplicate(Lcom/android/internal/pm/pkg/component/ParsedPermission;Lcom/android/internal/pm/pkg/component/ParsedPermission;)Z
    .registers 6

    .line 341
    const/4 v0, 0x0

    if-eqz p0, :cond_2e

    if-eqz p1, :cond_2e

    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->isTree()Z

    move-result v1

    if-nez v1, :cond_2e

    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->isTree()Z

    move-result v1

    if-eqz v1, :cond_12

    goto :goto_2e

    .line 345
    :cond_12
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getProtectionLevel()I

    move-result v1

    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getProtectionLevel()I

    move-result v2

    const/4 v3, 0x1

    if-eq v1, v2, :cond_1e

    .line 346
    return v3

    .line 348
    :cond_1e
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getGroup()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getGroup()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2d

    .line 349
    return v3

    .line 352
    :cond_2d
    return v0

    .line 342
    :cond_2e
    :goto_2e
    return v0
.end method

.method public static blacklist isRuntime(Lcom/android/internal/pm/pkg/component/ParsedPermission;)Z
    .registers 2

    .line 309
    invoke-static {p0}, Lcom/android/internal/pm/pkg/component/ParsedPermissionUtils;->getProtection(Lcom/android/internal/pm/pkg/component/ParsedPermission;)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_8

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public static blacklist parsePermission(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZLandroid/content/pm/parsing/result/ParseInput;I)Landroid/content/pm/parsing/result/ParseResult;
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            "Z",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "I)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/internal/pm/pkg/component/ParsedPermission;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 56
    move-object/from16 v1, p1

    invoke-interface/range {p0 .. p0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 57
    new-instance v2, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;

    invoke-direct {v2}, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;-><init>()V

    .line 58
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ">"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 61
    sget-object v4, Lcom/android/internal/R$styleable;->AndroidManifestPermission:[I

    move-object/from16 v15, p2

    invoke-virtual {v1, v15, v4}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 62
    const/4 v13, 0x2

    const/16 v14, 0xa

    const/16 v8, 0x9

    const/4 v9, 0x5

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x7

    move-object/from16 v4, p0

    move/from16 v6, p3

    move-object/from16 v7, p4

    :try_start_3f
    invoke-static/range {v2 .. v14}, Lcom/android/internal/pm/pkg/component/ParsedComponentUtils;->parseComponent(Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;Ljava/lang/String;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/TypedArray;ZLandroid/content/pm/parsing/result/ParseInput;IIIIIII)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v6
    :try_end_43
    .catchall {:try_start_3f .. :try_end_43} :catchall_202

    move-object v4, v5

    move-object v5, v7

    .line 71
    :try_start_45
    invoke-interface {v6}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v7

    if-eqz v7, :cond_55

    .line 72
    invoke-interface {v5, v6}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_4f
    .catchall {:try_start_45 .. :try_end_4f} :catchall_200

    .line 173
    if-eqz v4, :cond_54

    invoke-virtual {v4}, Landroid/content/res/TypedArray;->close()V

    .line 72
    :cond_54
    return-object v0

    .line 75
    :cond_55
    const/4 v6, 0x6

    const/4 v7, -0x1

    :try_start_57
    invoke-virtual {v4, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    .line 76
    if-eq v6, v7, :cond_6c

    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v6, v7, :cond_6c

    .line 77
    const/4 v0, 0x0

    invoke-interface {v5, v0}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_66
    .catchall {:try_start_57 .. :try_end_66} :catchall_200

    .line 173
    if-eqz v4, :cond_6b

    invoke-virtual {v4}, Landroid/content/res/TypedArray;->close()V

    .line 77
    :cond_6b
    return-object v0

    .line 80
    :cond_6c
    const/16 v6, 0xc

    :try_start_6e
    invoke-virtual {v4, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v7
    :try_end_72
    .catchall {:try_start_6e .. :try_end_72} :catchall_200

    const-string v8, "PackageParsing"

    const-string v9, "android"

    const/4 v10, 0x0

    if-eqz v7, :cond_ae

    .line 82
    move/from16 v7, p5

    and-int/lit16 v7, v7, 0x200

    const/4 v11, 0x1

    if-eqz v7, :cond_82

    move v7, v11

    goto :goto_83

    :cond_82
    move v7, v10

    .line 83
    :goto_83
    nop

    .line 84
    :try_start_84
    invoke-virtual {v9, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_8e

    if-eqz v7, :cond_8d

    goto :goto_8e

    :cond_8d
    move v11, v10

    .line 85
    :cond_8e
    :goto_8e
    if-eqz v11, :cond_98

    .line 86
    invoke-virtual {v4, v6}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;->setBackgroundPermission(Ljava/lang/String;)Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;

    goto :goto_ae

    .line 89
    :cond_98
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " defines a background permission. Only the \'android\' and APK_IN_APEX packages can do that."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    :cond_ae
    :goto_ae
    const/4 v6, 0x4

    invoke-virtual {v4, v6}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;->setGroup(Ljava/lang/String;)Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;

    move-result-object v7

    .line 101
    const/16 v11, 0xd

    invoke-virtual {v4, v11, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v11

    invoke-virtual {v7, v11}, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;->setRequestRes(I)Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;

    move-result-object v7

    .line 103
    const/4 v11, 0x3

    invoke-virtual {v4, v11, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v11

    invoke-virtual {v7, v11}, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;->setProtectionLevel(I)Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;

    move-result-object v7

    .line 106
    const/16 v11, 0x8

    invoke-virtual {v4, v11, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v12

    invoke-virtual {v7, v12}, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;->setFlags(I)Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;

    .line 109
    const/16 v7, 0xb

    invoke-virtual {v4, v7, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v12

    .line 111
    if-eqz v12, :cond_11b

    .line 115
    invoke-virtual {v1, v12}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v7

    .line 116
    const-string v13, "array"

    invoke-virtual {v7, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f1

    .line 117
    invoke-virtual {v1, v12}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    .line 118
    if-eqz v7, :cond_f0

    .line 119
    invoke-virtual {v2, v7}, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;->setKnownCerts([Ljava/lang/String;)V

    .line 121
    :cond_f0
    goto :goto_fa

    .line 122
    :cond_f1
    invoke-virtual {v1, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 123
    if-eqz v7, :cond_fa

    .line 124
    invoke-virtual {v2, v7}, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;->setKnownCert(Ljava/lang/String;)V

    .line 127
    :cond_fa
    :goto_fa
    invoke-virtual {v2}, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;->getKnownCerts()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_11a

    .line 128
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, " defines a knownSigner permission but the provided knownCerts resource is null"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    :cond_11a
    goto :goto_124

    .line 134
    :cond_11b
    invoke-virtual {v4, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 136
    if-eqz v0, :cond_124

    .line 137
    invoke-virtual {v2, v0}, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;->setKnownCert(Ljava/lang/String;)V

    .line 141
    :cond_124
    :goto_124
    invoke-virtual {v2}, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 144
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/Flags;->purposeDeclarationEnabled()Z

    move-result v7

    if-eqz v7, :cond_163

    if-eqz v0, :cond_163

    .line 145
    nop

    .line 146
    const/16 v7, 0xe

    invoke-virtual {v4, v7, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    .line 149
    invoke-virtual {v2, v7}, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;->setPurposeRequired(Z)Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;

    .line 150
    if-eqz v7, :cond_163

    .line 151
    nop

    .line 152
    invoke-static {v4, v5}, Lcom/android/internal/pm/pkg/component/ParsedPermissionUtils;->parseRequiresPurposeTargetSdkVersion(Landroid/content/res/TypedArray;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v7

    .line 153
    invoke-interface {v7}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v8

    if-eqz v8, :cond_155

    .line 154
    invoke-interface {v5, v7}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_14f
    .catchall {:try_start_84 .. :try_end_14f} :catchall_200

    .line 173
    if-eqz v4, :cond_154

    invoke-virtual {v4}, Landroid/content/res/TypedArray;->close()V

    .line 154
    :cond_154
    return-object v0

    .line 156
    :cond_155
    nop

    .line 157
    :try_start_156
    invoke-interface {v7}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 156
    invoke-virtual {v2, v7}, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;->setRequiresPurposeTargetSdkVersion(I)Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;

    .line 162
    :cond_163
    invoke-static {v2}, Lcom/android/internal/pm/pkg/component/ParsedPermissionUtils;->isRuntime(Lcom/android/internal/pm/pkg/component/ParsedPermission;)Z

    move-result v7

    if-eqz v7, :cond_198

    if-nez v0, :cond_16c

    goto :goto_198

    .line 167
    :cond_16c
    invoke-virtual {v2}, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;->getFlags()I

    move-result v0

    and-int/2addr v0, v6

    if-eqz v0, :cond_1aa

    .line 168
    invoke-virtual {v2}, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;->getFlags()I

    move-result v0

    and-int/2addr v0, v11

    if-nez v0, :cond_17b

    goto :goto_1aa

    .line 169
    :cond_17b
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Permission cannot be both soft and hard restricted: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 170
    invoke-virtual {v2}, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 163
    :cond_198
    :goto_198
    invoke-virtual {v2}, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, -0x5

    invoke-virtual {v2, v0}, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;->setFlags(I)Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;

    .line 164
    invoke-virtual {v2}, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, -0x9

    invoke-virtual {v2, v0}, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;->setFlags(I)Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;
    :try_end_1aa
    .catchall {:try_start_156 .. :try_end_1aa} :catchall_200

    .line 173
    :cond_1aa
    :goto_1aa
    if-eqz v4, :cond_1af

    invoke-virtual {v4}, Landroid/content/res/TypedArray;->close()V

    .line 175
    :cond_1af
    invoke-virtual {v2}, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;->setName(Ljava/lang/String;)Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;

    .line 177
    nop

    .line 178
    invoke-virtual {v2}, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;->getProtectionLevel()I

    move-result v0

    invoke-static {v0}, Landroid/content/pm/PermissionInfo;->fixProtectionLevel(I)I

    move-result v0

    .line 177
    invoke-virtual {v2, v0}, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;->setProtectionLevel(I)Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;

    .line 180
    invoke-static {v2}, Lcom/android/internal/pm/pkg/component/ParsedPermissionUtils;->getProtectionFlags(Lcom/android/internal/pm/pkg/component/ParsedPermission;)I

    move-result v0

    and-int/lit16 v0, v0, -0x3041

    .line 183
    if-eqz v0, :cond_1e2

    .line 184
    invoke-static {v2}, Lcom/android/internal/pm/pkg/component/ParsedPermissionUtils;->getProtection(Lcom/android/internal/pm/pkg/component/ParsedPermission;)I

    move-result v0

    const/4 v4, 0x2

    if-eq v0, v4, :cond_1e2

    .line 185
    invoke-static {v2}, Lcom/android/internal/pm/pkg/component/ParsedPermissionUtils;->getProtection(Lcom/android/internal/pm/pkg/component/ParsedPermission;)I

    move-result v0

    if-eq v0, v6, :cond_1e2

    .line 186
    const-string v0, "<permission> protectionLevel specifies a non-instant, non-appop, non-runtimeOnly flag but is not based on signature or internal type"

    invoke-interface {v5, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 190
    :cond_1e2
    move-object/from16 v0, p0

    move-object v4, v2

    move-object v2, v15

    invoke-static/range {v0 .. v5}, Lcom/android/internal/pm/pkg/component/ComponentParseUtils;->parseAllMetaData(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Ljava/lang/String;Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    .line 191
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v1

    if-eqz v1, :cond_1f5

    .line 192
    invoke-interface {v5, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 195
    :cond_1f5
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/pm/pkg/component/ParsedPermission;

    invoke-interface {v5, v0}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 61
    :catchall_200
    move-exception v0

    goto :goto_204

    :catchall_202
    move-exception v0

    move-object v4, v5

    :goto_204
    move-object v1, v0

    if-eqz v4, :cond_20f

    :try_start_207
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->close()V
    :try_end_20a
    .catchall {:try_start_207 .. :try_end_20a} :catchall_20b

    goto :goto_20f

    :catchall_20b
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_20f
    :goto_20f
    throw v1
.end method

.method public static blacklist parsePermissionGroup(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZLandroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            "Z",
            "Landroid/content/pm/parsing/result/ParseInput;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 268
    new-instance v0, Lcom/android/internal/pm/pkg/component/ParsedPermissionGroupImpl;

    invoke-direct {v0}, Lcom/android/internal/pm/pkg/component/ParsedPermissionGroupImpl;-><init>()V

    .line 269
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 271
    sget-object v2, Lcom/android/internal/R$styleable;->AndroidManifestPermissionGroup:[I

    move-object/from16 v13, p1

    move-object/from16 v14, p2

    invoke-virtual {v13, v14, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 273
    const/4 v11, 0x2

    const/16 v12, 0x8

    const/4 v6, 0x7

    const/4 v7, 0x4

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x5

    move-object v2, p0

    move/from16 v4, p3

    move-object/from16 v5, p4

    :try_start_39
    invoke-static/range {v0 .. v12}, Lcom/android/internal/pm/pkg/component/ParsedComponentUtils;->parseComponent(Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;Ljava/lang/String;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/TypedArray;ZLandroid/content/pm/parsing/result/ParseInput;IIIIIII)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v4

    .line 282
    invoke-interface {v4}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v2

    if-eqz v2, :cond_4b

    .line 283
    invoke-interface {v5, v4}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0
    :try_end_47
    .catchall {:try_start_39 .. :try_end_47} :catchall_b4

    .line 296
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 283
    return-object p0

    .line 287
    :cond_4b
    const/16 v2, 0xc

    const/4 v4, 0x0

    :try_start_4e
    invoke-virtual {v3, v2, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/internal/pm/pkg/component/ParsedPermissionGroupImpl;->setRequestDetailRes(I)Lcom/android/internal/pm/pkg/component/ParsedPermissionGroupImpl;

    move-result-object v2

    .line 288
    const/16 v6, 0x9

    invoke-virtual {v3, v6, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    invoke-virtual {v2, v6}, Lcom/android/internal/pm/pkg/component/ParsedPermissionGroupImpl;->setBackgroundRequestRes(I)Lcom/android/internal/pm/pkg/component/ParsedPermissionGroupImpl;

    move-result-object v2

    .line 289
    const/16 v6, 0xa

    invoke-virtual {v3, v6, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    invoke-virtual {v2, v6}, Lcom/android/internal/pm/pkg/component/ParsedPermissionGroupImpl;->setBackgroundRequestDetailRes(I)Lcom/android/internal/pm/pkg/component/ParsedPermissionGroupImpl;

    move-result-object v2

    .line 290
    const/16 v6, 0xb

    invoke-virtual {v3, v6, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    invoke-virtual {v2, v6}, Lcom/android/internal/pm/pkg/component/ParsedPermissionGroupImpl;->setRequestRes(I)Lcom/android/internal/pm/pkg/component/ParsedPermissionGroupImpl;

    move-result-object v2

    .line 291
    const/4 v6, 0x3

    invoke-virtual {v3, v6, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    invoke-virtual {v2, v6}, Lcom/android/internal/pm/pkg/component/ParsedPermissionGroupImpl;->setPriority(I)Lcom/android/internal/pm/pkg/component/ParsedPermissionGroupImpl;

    move-result-object v2

    .line 292
    const/4 v6, 0x6

    invoke-virtual {v3, v6, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/internal/pm/pkg/component/ParsedPermissionGroupImpl;->setFlags(I)Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;

    move-result-object v2

    .line 293
    invoke-virtual {v0}, Lcom/android/internal/pm/pkg/component/ParsedPermissionGroupImpl;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;->setName(Ljava/lang/String;)Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;
    :try_end_91
    .catchall {:try_start_4e .. :try_end_91} :catchall_b4

    .line 296
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 297
    nop

    .line 299
    move-object v4, v0

    move-object v3, v1

    move-object v1, v13

    move-object v2, v14

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/android/internal/pm/pkg/component/ComponentParseUtils;->parseAllMetaData(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Ljava/lang/String;Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    .line 301
    invoke-interface {p0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v0

    if-eqz v0, :cond_a9

    .line 302
    invoke-interface {v5, p0}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    .line 305
    :cond_a9
    invoke-interface {p0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;

    invoke-interface {v5, p0}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    .line 296
    :catchall_b4
    move-exception v0

    move-object p0, v0

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 297
    throw p0
.end method

.method public static blacklist parsePermissionTree(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZLandroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            "Z",
            "Landroid/content/pm/parsing/result/ParseInput;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/internal/pm/pkg/component/ParsedPermission;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 219
    new-instance v0, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;

    invoke-direct {v0}, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;-><init>()V

    .line 220
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 223
    sget-object v2, Lcom/android/internal/R$styleable;->AndroidManifestPermissionTree:[I

    move-object/from16 v13, p1

    move-object/from16 v14, p2

    invoke-virtual {v13, v14, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 225
    const/4 v11, 0x2

    const/4 v12, 0x5

    const/4 v6, 0x4

    const/4 v7, -0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x3

    move-object v2, p0

    move/from16 v4, p3

    move-object/from16 v5, p4

    :try_start_38
    invoke-static/range {v0 .. v12}, Lcom/android/internal/pm/pkg/component/ParsedComponentUtils;->parseComponent(Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;Ljava/lang/String;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/TypedArray;ZLandroid/content/pm/parsing/result/ParseInput;IIIIIII)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v4

    .line 234
    invoke-interface {v4}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v2

    if-eqz v2, :cond_4a

    .line 235
    invoke-interface {v5, v4}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0
    :try_end_46
    .catchall {:try_start_38 .. :try_end_46} :catchall_b5

    .line 238
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 235
    return-object p0

    .line 238
    :cond_4a
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 239
    nop

    .line 241
    invoke-virtual {v0}, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;->setName(Ljava/lang/String;)Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;

    .line 243
    invoke-virtual {v0}, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;->getName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x2e

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 244
    if-lez v2, :cond_6f

    .line 245
    invoke-virtual {v0}, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;->getName()Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v4, v3, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 247
    :cond_6f
    if-gez v2, :cond_8d

    .line 248
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<permission-tree> name has less than three segments: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 249
    invoke-virtual {v0}, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 248
    invoke-interface {v5, p0}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    .line 252
    :cond_8d
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;->setProtectionLevel(I)Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;

    move-result-object v2

    .line 253
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;->setTree(Z)Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;

    .line 255
    move-object v4, v0

    move-object v3, v1

    move-object v1, v13

    move-object v2, v14

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/android/internal/pm/pkg/component/ComponentParseUtils;->parseAllMetaData(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Ljava/lang/String;Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    .line 256
    invoke-interface {p0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v0

    if-eqz v0, :cond_aa

    .line 257
    invoke-interface {v5, p0}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    .line 260
    :cond_aa
    invoke-interface {p0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/pm/pkg/component/ParsedPermission;

    invoke-interface {v5, p0}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    .line 238
    :catchall_b5
    move-exception v0

    move-object p0, v0

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 239
    throw p0
.end method

.method private static blacklist parseRequiresPurposeTargetSdkVersion(Landroid/content/res/TypedArray;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/TypedArray;",
            "Landroid/content/pm/parsing/result/ParseInput;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 202
    nop

    .line 203
    const/16 v0, 0xf

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p0

    .line 207
    const/16 v0, 0x24

    if-gt p0, v0, :cond_13

    .line 208
    const-string p0, "android:requiresPurposeTargetSdkVersion for <permission> must be defined with value being at least 37!"

    invoke-interface {p1, p0}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    .line 212
    :cond_13
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, p0}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0
.end method
