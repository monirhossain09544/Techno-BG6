.class Lcom/android/internal/pm/pkg/component/ParsedComponentUtils;
.super Ljava/lang/Object;
.source "ParsedComponentUtils.java"


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist addMetaData(Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            "Landroid/content/pm/parsing/result/ParseInput;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .line 101
    const-string v4, "<meta-data>"

    move-object v1, p0

    move-object v0, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseMetaData(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Lcom/android/internal/pm/pkg/component/ParsedComponent;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Ljava/lang/String;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    .line 103
    invoke-interface {p0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result p1

    if-eqz p1, :cond_16

    .line 104
    invoke-interface {v5, p0}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    .line 106
    :cond_16
    invoke-interface {p0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/PackageManager$Property;

    .line 107
    if-eqz p0, :cond_29

    .line 108
    invoke-virtual {v1}, Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;->getMetaData()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager$Property;->toBundle(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;->setMetaData(Landroid/os/Bundle;)Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;

    .line 110
    :cond_29
    invoke-virtual {v1}, Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;->getMetaData()Landroid/os/Bundle;

    move-result-object p0

    invoke-interface {v5, p0}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0
.end method

.method static blacklist addProperty(Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            "Landroid/content/pm/parsing/result/ParseInput;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Landroid/content/pm/PackageManager$Property;",
            ">;"
        }
    .end annotation

    .line 115
    const-string v4, "<property>"

    move-object v1, p0

    move-object v0, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseMetaData(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Lcom/android/internal/pm/pkg/component/ParsedComponent;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Ljava/lang/String;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    .line 117
    invoke-interface {p0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result p1

    if-eqz p1, :cond_16

    .line 118
    invoke-interface {v5, p0}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    .line 120
    :cond_16
    invoke-interface {p0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/PackageManager$Property;

    .line 121
    if-eqz p0, :cond_21

    .line 122
    invoke-virtual {v1, p0}, Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;->addProperty(Landroid/content/pm/PackageManager$Property;)V

    .line 124
    :cond_21
    invoke-interface {v5, p0}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0
.end method

.method static blacklist parseComponent(Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;Ljava/lang/String;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/TypedArray;ZLandroid/content/pm/parsing/result/ParseInput;IIIIIII)Landroid/content/pm/parsing/result/ParseResult;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Component:",
            "Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;",
            ">(TComponent;",
            "Ljava/lang/String;",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/TypedArray;",
            "Z",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "IIIIIII)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "TComponent;>;"
        }
    .end annotation

    .line 47
    const/4 v0, 0x0

    invoke-virtual {p3, p11, v0}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object p11

    .line 48
    invoke-static {p11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 49
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " does not specify android:name"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p5, p0}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    .line 52
    :cond_23
    invoke-interface {p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getPackageName()Ljava/lang/String;

    move-result-object p2

    .line 53
    invoke-static {p2, p11}, Lcom/android/internal/pm/pkg/parsing/ParsingUtils;->buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p11

    .line 54
    sget-object v1, Landroid/content/pm/PackageManager;->APP_DETAILS_ACTIVITY_CLASS_NAME:Ljava/lang/String;

    invoke-virtual {v1, p11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 55
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " invalid android:name"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p5, p0}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    .line 59
    :cond_4b
    invoke-virtual {p0, p11}, Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;->setName(Ljava/lang/String;)Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;

    move-result-object p1

    .line 60
    invoke-virtual {p1, p2}, Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;->setPackageName(Ljava/lang/String;)V

    .line 62
    if-eqz p4, :cond_59

    invoke-virtual {p3, p12, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    goto :goto_5a

    :cond_59
    move p1, v0

    .line 63
    :goto_5a
    const/4 p2, 0x0

    if-eqz p1, :cond_65

    .line 64
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;->setIcon(I)Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;

    move-result-object p1

    .line 65
    invoke-virtual {p1, p2}, Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;->setNonLocalizedLabel(Ljava/lang/CharSequence;)Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;

    goto :goto_71

    .line 67
    :cond_65
    invoke-virtual {p3, p8, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    .line 68
    if-eqz p1, :cond_71

    .line 69
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;->setIcon(I)Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;

    .line 70
    invoke-virtual {p0, p2}, Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;->setNonLocalizedLabel(Ljava/lang/CharSequence;)Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;

    .line 74
    :cond_71
    :goto_71
    invoke-virtual {p3, p10, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    .line 75
    if-eqz p1, :cond_7a

    .line 76
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;->setLogo(I)Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;

    .line 79
    :cond_7a
    invoke-virtual {p3, p6, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    .line 80
    if-eqz p1, :cond_83

    .line 81
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;->setBanner(I)Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;

    .line 84
    :cond_83
    const/4 p1, -0x1

    if-eq p7, p1, :cond_8d

    .line 85
    invoke-virtual {p3, p7, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;->setDescriptionRes(I)Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;

    .line 88
    :cond_8d
    invoke-virtual {p3, p9}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object p1

    .line 89
    if-eqz p1, :cond_a3

    .line 90
    iget p2, p1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {p0, p2}, Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;->setLabelRes(I)Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;

    .line 91
    iget p2, p1, Landroid/util/TypedValue;->resourceId:I

    if-nez p2, :cond_a3

    .line 92
    invoke-virtual {p1}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;->setNonLocalizedLabel(Ljava/lang/CharSequence;)Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;

    .line 96
    :cond_a3
    invoke-interface {p5, p0}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0
.end method
