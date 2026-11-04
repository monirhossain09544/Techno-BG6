.class public Lcom/android/internal/pm/pkg/component/ParsedInstrumentationUtils;
.super Ljava/lang/Object;
.source "ParsedInstrumentationUtils.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist parseInstrumentation(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZLandroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;
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
            "Lcom/android/internal/pm/pkg/component/ParsedInstrumentation;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 45
    new-instance v0, Lcom/android/internal/pm/pkg/component/ParsedInstrumentationImpl;

    invoke-direct {v0}, Lcom/android/internal/pm/pkg/component/ParsedInstrumentationImpl;-><init>()V

    .line 46
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

    .line 48
    sget-object v2, Lcom/android/internal/R$styleable;->AndroidManifestInstrumentation:[I

    move-object/from16 v13, p1

    move-object/from16 v14, p2

    invoke-virtual {v13, v14, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 50
    const/4 v11, 0x2

    const/16 v12, 0x8

    const/4 v6, 0x7

    const/4 v7, -0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x6

    move-object v2, p0

    move/from16 v4, p3

    move-object/from16 v5, p4

    :try_start_39
    invoke-static/range {v0 .. v12}, Lcom/android/internal/pm/pkg/component/ParsedComponentUtils;->parseComponent(Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;Ljava/lang/String;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/TypedArray;ZLandroid/content/pm/parsing/result/ParseInput;IIIIIII)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v4

    .line 59
    invoke-interface {v4}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v2

    if-eqz v2, :cond_4b

    .line 60
    invoke-interface {v5, v4}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0
    :try_end_47
    .catchall {:try_start_39 .. :try_end_47} :catchall_94

    .line 72
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 60
    return-object p0

    .line 66
    :cond_4b
    const/4 v2, 0x3

    :try_start_4c
    invoke-virtual {v3, v2}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/internal/pm/pkg/component/ParsedInstrumentationImpl;->setTargetPackage(Ljava/lang/String;)Lcom/android/internal/pm/pkg/component/ParsedInstrumentationImpl;

    move-result-object v2

    .line 67
    const/16 v4, 0x9

    invoke-virtual {v3, v4}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/internal/pm/pkg/component/ParsedInstrumentationImpl;->setTargetProcesses(Ljava/lang/String;)Lcom/android/internal/pm/pkg/component/ParsedInstrumentationImpl;

    move-result-object v2

    .line 68
    const/4 v4, 0x0

    const/4 v6, 0x4

    invoke-virtual {v3, v6, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    invoke-virtual {v2, v6}, Lcom/android/internal/pm/pkg/component/ParsedInstrumentationImpl;->setHandleProfiling(Z)Lcom/android/internal/pm/pkg/component/ParsedInstrumentationImpl;

    move-result-object v2

    .line 69
    const/4 v6, 0x5

    invoke-virtual {v3, v6, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/internal/pm/pkg/component/ParsedInstrumentationImpl;->setFunctionalTest(Z)Lcom/android/internal/pm/pkg/component/ParsedInstrumentationImpl;
    :try_end_70
    .catchall {:try_start_4c .. :try_end_70} :catchall_94

    .line 72
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 73
    nop

    .line 75
    nop

    .line 76
    move-object v4, v0

    move-object v3, v1

    move-object v1, v13

    move-object v2, v14

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/android/internal/pm/pkg/component/ComponentParseUtils;->parseAllMetaData(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Ljava/lang/String;Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    .line 78
    invoke-interface {p0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v0

    if-eqz v0, :cond_89

    .line 79
    invoke-interface {v5, p0}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    .line 82
    :cond_89
    invoke-interface {p0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/pm/pkg/component/ParsedInstrumentation;

    invoke-interface {v5, p0}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    .line 72
    :catchall_94
    move-exception v0

    move-object p0, v0

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 73
    throw p0
.end method
