.class public Lcom/android/internal/pm/pkg/component/ParsedServiceUtils;
.super Ljava/lang/Object;
.source "ParsedServiceUtils.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist parseService([Ljava/lang/String;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;IZLjava/lang/String;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;
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
            "Lcom/android/internal/pm/pkg/component/ParsedService;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 58
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-interface/range {p1 .. p1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 59
    move-object v3, v2

    new-instance v2, Lcom/android/internal/pm/pkg/component/ParsedServiceImpl;

    invoke-direct {v2}, Lcom/android/internal/pm/pkg/component/ParsedServiceImpl;-><init>()V

    .line 60
    move-object v4, v3

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 62
    sget-object v5, Lcom/android/internal/R$styleable;->AndroidManifestService:[I

    invoke-virtual {v0, v1, v5}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 64
    const/16 v22, 0x14

    const/16 v23, 0x17

    const/16 v11, 0xc

    const/4 v12, 0x7

    const/16 v13, 0xd

    const/4 v14, 0x4

    const/4 v15, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x8

    const/16 v18, 0x2

    const/16 v19, 0x6

    const/16 v20, 0xf

    const/16 v21, 0x11

    move-object/from16 v5, p1

    move/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object v0, v4

    move-object/from16 v4, p0

    :try_start_3d
    invoke-static/range {v2 .. v23}, Lcom/android/internal/pm/pkg/component/ParsedMainComponentUtils;->parseMainComponent(Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;Ljava/lang/String;[Ljava/lang/String;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/TypedArray;IZLjava/lang/String;Landroid/content/pm/parsing/result/ParseInput;IIIIIIIIIIIII)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v4

    move-object v9, v10

    move-object v10, v3

    .line 82
    invoke-interface {v4}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v3

    if-eqz v3, :cond_51

    .line 83
    invoke-interface {v9, v4}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_4d
    .catchall {:try_start_3d .. :try_end_4d} :catchall_1f7

    .line 124
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 83
    return-object v0

    .line 86
    :cond_51
    const/4 v3, 0x5

    :try_start_52
    invoke-virtual {v6, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v11

    .line 87
    const/4 v12, 0x0

    if-eqz v11, :cond_60

    .line 88
    invoke-virtual {v6, v3, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/pm/pkg/component/ParsedServiceImpl;->setExported(Z)Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;

    .line 92
    :cond_60
    const/4 v13, 0x3

    invoke-virtual {v6, v13, v12}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v3

    .line 94
    if-eqz v3, :cond_68

    goto :goto_6c

    :cond_68
    invoke-interface {v5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getPermission()Ljava/lang/String;

    move-result-object v3

    :goto_6c
    invoke-virtual {v2, v3}, Lcom/android/internal/pm/pkg/component/ParsedServiceImpl;->setPermission(Ljava/lang/String;)Lcom/android/internal/pm/pkg/component/ParsedMainComponent;

    .line 96
    const/16 v3, 0x13

    invoke-virtual {v6, v3, v12}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/pm/pkg/component/ParsedServiceImpl;->setForegroundServiceType(I)Lcom/android/internal/pm/pkg/component/ParsedServiceImpl;

    move-result-object v3

    .line 99
    invoke-virtual {v2}, Lcom/android/internal/pm/pkg/component/ParsedServiceImpl;->getFlags()I

    move-result v4

    const/16 v7, 0x9

    const/4 v14, 0x1

    invoke-static {v14, v7, v6}, Lcom/android/internal/pm/pkg/component/ComponentParseUtils;->flag(IILandroid/content/res/TypedArray;)I

    move-result v7

    .line 101
    const/4 v15, 0x2

    const/16 v8, 0xa

    invoke-static {v15, v8, v6}, Lcom/android/internal/pm/pkg/component/ComponentParseUtils;->flag(IILandroid/content/res/TypedArray;)I

    move-result v8

    or-int/2addr v7, v8

    .line 103
    const/4 v8, 0x4

    const/16 v15, 0xe

    invoke-static {v8, v15, v6}, Lcom/android/internal/pm/pkg/component/ComponentParseUtils;->flag(IILandroid/content/res/TypedArray;)I

    move-result v8

    or-int/2addr v7, v8

    .line 105
    const/16 v8, 0x8

    const/16 v15, 0x12

    invoke-static {v8, v15, v6}, Lcom/android/internal/pm/pkg/component/ComponentParseUtils;->flag(IILandroid/content/res/TypedArray;)I

    move-result v8

    or-int/2addr v7, v8

    .line 107
    const/16 v8, 0x10

    const/16 v15, 0x15

    invoke-static {v8, v15, v6}, Lcom/android/internal/pm/pkg/component/ComponentParseUtils;->flag(IILandroid/content/res/TypedArray;)I

    move-result v15

    or-int/2addr v7, v15

    .line 109
    const/high16 v15, 0x40000000    # 2.0f

    const/16 v13, 0xb

    invoke-static {v15, v13, v6}, Lcom/android/internal/pm/pkg/component/ComponentParseUtils;->flag(IILandroid/content/res/TypedArray;)I

    move-result v13

    or-int/2addr v7, v13

    or-int/2addr v4, v7

    .line 99
    invoke-virtual {v3, v4}, Lcom/android/internal/pm/pkg/component/ParsedServiceImpl;->setFlags(I)Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;

    .line 112
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/multiuser/Flags;->enableSystemUserOnlyForServicesAndProviders()Z

    move-result v3

    if-eqz v3, :cond_c9

    .line 113
    invoke-virtual {v2}, Lcom/android/internal/pm/pkg/component/ParsedServiceImpl;->getFlags()I

    move-result v3

    const/high16 v4, 0x20000000

    const/16 v7, 0x16

    invoke-static {v4, v7, v6}, Lcom/android/internal/pm/pkg/component/ComponentParseUtils;->flag(IILandroid/content/res/TypedArray;)I

    move-result v4

    or-int/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/android/internal/pm/pkg/component/ParsedServiceImpl;->setFlags(I)Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;

    .line 117
    :cond_c9
    invoke-virtual {v6, v8, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    .line 119
    if-eqz v4, :cond_dc

    .line 120
    invoke-virtual {v2}, Lcom/android/internal/pm/pkg/component/ParsedServiceImpl;->getFlags()I

    move-result v3

    const/high16 v7, 0x100000

    or-int/2addr v3, v7

    invoke-virtual {v2, v3}, Lcom/android/internal/pm/pkg/component/ParsedServiceImpl;->setFlags(I)Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;

    .line 121
    invoke-interface {v5, v14}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setVisibleToInstantApps(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    :try_end_dc
    .catchall {:try_start_52 .. :try_end_dc} :catchall_1f7

    .line 124
    :cond_dc
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 125
    nop

    .line 127
    invoke-interface {v5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->isSaveStateDisallowed()Z

    move-result v3

    if-eqz v3, :cond_f7

    .line 130
    invoke-virtual {v2}, Lcom/android/internal/pm/pkg/component/ParsedServiceImpl;->getProcessName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f7

    .line 131
    const-string v0, "Heavy-weight applications can not have services in main process"

    invoke-interface {v9, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 135
    :cond_f7
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v13

    .line 137
    :goto_fb
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v0

    if-eq v0, v14, :cond_1ab

    const/4 v15, 0x3

    if-ne v0, v15, :cond_10a

    .line 139
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v3

    if-le v3, v13, :cond_1ab

    .line 140
    :cond_10a
    const/4 v3, 0x2

    if-eq v0, v3, :cond_10e

    .line 141
    goto :goto_fb

    .line 143
    :cond_10e
    invoke-static {}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->getAconfigFlags()Lcom/android/internal/pm/pkg/component/AconfigFlags;

    move-result-object v0

    invoke-virtual {v0, v5, v1}, Lcom/android/internal/pm/pkg/component/AconfigFlags;->skipCurrentElement(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v0

    if-eqz v0, :cond_11c

    .line 144
    invoke-static {v1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 145
    goto :goto_fb

    .line 149
    :cond_11c
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_1fc

    :cond_127
    goto :goto_146

    :sswitch_128
    const-string v6, "property"

    invoke-virtual {v0, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_127

    move v0, v3

    goto :goto_147

    :sswitch_132
    const-string v6, "intent-filter"

    invoke-virtual {v0, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_127

    move v0, v12

    goto :goto_147

    :sswitch_13c
    const-string v6, "meta-data"

    invoke-virtual {v0, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_127

    move v0, v14

    goto :goto_147

    :goto_146
    const/4 v0, -0x1

    :goto_147
    packed-switch v0, :pswitch_data_20a

    .line 172
    move/from16 v16, v3

    invoke-static {v10, v5, v1, v9}, Lcom/android/internal/pm/pkg/parsing/ParsingUtils;->unknownTag(Ljava/lang/String;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v6

    goto :goto_19e

    .line 168
    :pswitch_151
    nop

    .line 169
    move-object/from16 v0, p2

    invoke-static {v2, v5, v0, v1, v9}, Lcom/android/internal/pm/pkg/component/ParsedComponentUtils;->addProperty(Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v6

    .line 170
    move/from16 v16, v3

    goto :goto_19e

    .line 165
    :pswitch_15b
    move-object/from16 v0, p2

    invoke-static {v2, v5, v0, v1, v9}, Lcom/android/internal/pm/pkg/component/ParsedComponentUtils;->addMetaData(Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v6

    .line 166
    move/from16 v16, v3

    goto :goto_19e

    .line 151
    :pswitch_164
    move-object/from16 v0, p2

    .line 152
    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v16, v2

    move-object v2, v0

    move-object/from16 v0, v16

    move/from16 v16, v3

    move-object v3, v1

    move-object/from16 v1, p1

    invoke-static/range {v0 .. v9}, Lcom/android/internal/pm/pkg/component/ParsedMainComponentUtils;->parseIntentFilter(Lcom/android/internal/pm/pkg/component/ParsedMainComponent;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZZZZZLandroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v6

    .line 156
    move-object v2, v0

    move-object v5, v1

    move-object v1, v3

    .line 157
    invoke-interface {v6}, Landroid/content/pm/parsing/result/ParseResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_19e

    .line 158
    invoke-interface {v6}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;

    .line 159
    invoke-virtual {v0}, Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v3

    .line 160
    invoke-virtual {v3}, Landroid/content/IntentFilter;->getOrder()I

    move-result v3

    invoke-virtual {v2}, Lcom/android/internal/pm/pkg/component/ParsedServiceImpl;->getOrder()I

    move-result v7

    invoke-static {v3, v7}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/pm/pkg/component/ParsedServiceImpl;->setOrder(I)Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;

    .line 161
    invoke-virtual {v2, v0}, Lcom/android/internal/pm/pkg/component/ParsedServiceImpl;->addIntent(Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;)V

    .line 162
    nop

    .line 176
    :cond_19e
    :goto_19e
    invoke-interface {v6}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v0

    if-eqz v0, :cond_1a9

    .line 177
    invoke-interface {v9, v6}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 179
    :cond_1a9
    goto/16 :goto_fb

    .line 181
    :cond_1ab
    if-nez v11, :cond_1f2

    .line 182
    invoke-virtual {v2}, Lcom/android/internal/pm/pkg/component/ParsedServiceImpl;->getIntents()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1b8

    move v12, v14

    .line 183
    :cond_1b8
    if-eqz v12, :cond_1ef

    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 185
    invoke-virtual {v2}, Lcom/android/internal/pm/pkg/component/ParsedServiceImpl;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": Targeting S+ (version "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x1f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " and above) requires that an explicit value for android:exported be defined when intent filters are present"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 184
    const-wide/32 v3, 0x8f45e27

    invoke-interface {v9, v0, v3, v4}, Landroid/content/pm/parsing/result/ParseInput;->deferError(Ljava/lang/String;J)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    .line 189
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v1

    if-eqz v1, :cond_1ef

    .line 190
    invoke-interface {v9, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 193
    :cond_1ef
    invoke-virtual {v2, v12}, Lcom/android/internal/pm/pkg/component/ParsedServiceImpl;->setExported(Z)Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;

    .line 196
    :cond_1f2
    invoke-interface {v9, v2}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 124
    :catchall_1f7
    move-exception v0

    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 125
    throw v0

    :sswitch_data_1fc
    .sparse-switch
        -0x4284098e -> :sswitch_13c
        -0x3d616837 -> :sswitch_132
        -0x3b32222b -> :sswitch_128
    .end sparse-switch

    :pswitch_data_20a
    .packed-switch 0x0
        :pswitch_164
        :pswitch_15b
        :pswitch_151
    .end packed-switch
.end method
