.class public Lcom/android/internal/pm/pkg/component/ParsedMainComponentUtils;
.super Ljava/lang/Object;
.source "ParsedMainComponentUtils.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "PackageParsing"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist parseIntentFilter(Lcom/android/internal/pm/pkg/component/ParsedMainComponent;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZZZZZLandroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/pm/pkg/component/ParsedMainComponent;",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            "ZZZZZ",
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

    .line 128
    nop

    .line 129
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedMainComponent;->getName()Ljava/lang/String;

    move-result-object v0

    .line 128
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p5

    move v5, p6

    move-object/from16 v6, p9

    invoke-static/range {v0 .. v6}, Lcom/android/internal/pm/pkg/component/ParsedIntentInfoUtils;->parseIntentInfo(Ljava/lang/String;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZZLandroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    .line 131
    invoke-interface {p0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result p2

    if-eqz p2, :cond_1b

    .line 132
    invoke-interface {v6, p0}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    .line 135
    :cond_1b
    invoke-interface {p0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;

    .line 136
    invoke-interface {p2}, Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object p5

    .line 137
    invoke-virtual {p5}, Landroid/content/IntentFilter;->countActions()I

    move-result p6

    .line 138
    if-nez p6, :cond_6b

    if-eqz p8, :cond_6b

    .line 139
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "No actions in "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p2, " at "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-interface {p1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getBaseApkPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 140
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 139
    const-string p1, "PackageParsing"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    const/4 p0, 0x0

    invoke-interface {v6, p0}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    .line 146
    :cond_6b
    if-eqz p4, :cond_6f

    .line 147
    const/4 p1, 0x1

    goto :goto_7a

    .line 148
    :cond_6f
    if-eqz p7, :cond_79

    .line 149
    invoke-static {p2}, Lcom/android/internal/pm/pkg/component/ComponentParseUtils;->isImplicitlyExposedIntent(Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;)Z

    move-result p1

    if-eqz p1, :cond_79

    .line 150
    const/4 p1, 0x2

    goto :goto_7a

    .line 152
    :cond_79
    const/4 p1, 0x0

    .line 154
    :goto_7a
    invoke-virtual {p5, p1}, Landroid/content/IntentFilter;->setVisibilityToInstantApp(I)V

    .line 156
    invoke-interface {p0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;

    invoke-interface {v6, p0}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0
.end method

.method static blacklist parseMainComponent(Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;Ljava/lang/String;[Ljava/lang/String;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/TypedArray;IZLjava/lang/String;Landroid/content/pm/parsing/result/ParseInput;IIIIIIIIIIIII)Landroid/content/pm/parsing/result/ParseResult;
    .registers 38
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Component:",
            "Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;",
            ">(TComponent;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/TypedArray;",
            "IZ",
            "Ljava/lang/String;",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "IIIIIIIIIIIII)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "TComponent;>;"
        }
    .end annotation

    .line 57
    move/from16 v14, p11

    move/from16 v15, p12

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move/from16 v4, p6

    move-object/from16 v5, p8

    move/from16 v6, p9

    move/from16 v7, p10

    move/from16 v8, p13

    move/from16 v9, p14

    move/from16 v10, p15

    move/from16 v11, p16

    move/from16 v13, p17

    move/from16 v12, p18

    invoke-static/range {v0 .. v12}, Lcom/android/internal/pm/pkg/component/ParsedComponentUtils;->parseComponent(Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;Ljava/lang/String;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/TypedArray;ZLandroid/content/pm/parsing/result/ParseInput;IIIIIII)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    .line 60
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 61
    return-object v1

    .line 64
    :cond_2b
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v4, -0x1

    if-eq v14, v4, :cond_46

    .line 65
    invoke-virtual {v3, v14, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    invoke-virtual {v0, v5}, Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;->setDirectBootAware(Z)Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;

    .line 66
    invoke-virtual {v0}, Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;->isDirectBootAware()Z

    move-result v5

    if-eqz v5, :cond_43

    .line 67
    move-object/from16 v5, p3

    invoke-interface {v5, v1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setPartiallyDirectBootAware(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    goto :goto_48

    .line 66
    :cond_43
    move-object/from16 v5, p3

    goto :goto_48

    .line 64
    :cond_46
    move-object/from16 v5, p3

    .line 71
    :goto_48
    if-eq v15, v4, :cond_51

    .line 72
    invoke-virtual {v3, v15, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;->setEnabled(Z)Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;

    .line 75
    :cond_51
    if-eq v13, v4, :cond_96

    .line 77
    invoke-interface {v5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getTargetSdkVersion()I

    move-result v1

    const/16 v6, 0x8

    if-lt v1, v6, :cond_62

    .line 78
    const/16 v1, 0x400

    invoke-virtual {v3, v13, v1}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_66

    .line 84
    :cond_62
    invoke-virtual {v3, v13}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v1

    .line 88
    :goto_66
    nop

    .line 89
    invoke-interface {v5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getProcessName()Ljava/lang/String;

    move-result-object v7

    .line 88
    move-object/from16 p13, p2

    move/from16 p12, p5

    move-object/from16 p14, p8

    move-object/from16 p11, v1

    move-object/from16 p9, v6

    move-object/from16 p10, v7

    invoke-static/range {p9 .. p14}, Lcom/android/internal/pm/pkg/component/ComponentParseUtils;->buildProcessName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;I[Ljava/lang/String;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    .line 91
    move-object/from16 v6, p14

    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v7

    if-eqz v7, :cond_8c

    .line 92
    invoke-interface {v6, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 95
    :cond_8c
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;->setProcessName(Ljava/lang/String;)Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;

    goto :goto_98

    .line 75
    :cond_96
    move-object/from16 v6, p8

    .line 98
    :goto_98
    move/from16 v1, p19

    if-eq v1, v4, :cond_a3

    .line 99
    invoke-virtual {v3, v1, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;->setSplitName(Ljava/lang/String;)Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;

    .line 102
    :cond_a3
    if-eqz p7, :cond_b0

    invoke-virtual {v0}, Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;->getSplitName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_b0

    .line 103
    move-object/from16 v13, p7

    invoke-virtual {v0, v13}, Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;->setSplitName(Ljava/lang/String;)Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;

    .line 106
    :cond_b0
    move/from16 v1, p20

    if-eq v1, v4, :cond_c3

    .line 107
    invoke-virtual {v3, v1, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v1

    .line 108
    if-eqz v1, :cond_c3

    .line 109
    const-string v4, "\\|"

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;->setAttributionTags([Ljava/lang/String;)Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;

    .line 113
    :cond_c3
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/security/Flags;->enableIntentMatchingFlags()Z

    move-result v1

    if-eqz v1, :cond_db

    .line 114
    nop

    .line 115
    invoke-interface {v5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getIntentMatchingFlags()I

    move-result v1

    move/from16 v4, p21

    invoke-virtual {v3, v4, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 114
    invoke-static {v1, v2}, Lcom/android/internal/pm/pkg/component/ParsedMainComponentUtils;->resolveIntentMatchingFlags(II)I

    move-result v1

    .line 116
    invoke-virtual {v0, v1}, Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;->setIntentMatchingFlags(I)Lcom/android/internal/pm/pkg/component/ParsedMainComponent;

    .line 119
    :cond_db
    invoke-interface {v6, v0}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist resolveIntentMatchingFlags(II)I
    .registers 2

    .line 170
    if-nez p1, :cond_3

    .line 171
    return p0

    .line 173
    :cond_3
    return p1
.end method
