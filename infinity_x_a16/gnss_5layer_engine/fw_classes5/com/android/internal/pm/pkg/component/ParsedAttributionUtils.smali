.class public Lcom/android/internal/pm/pkg/component/ParsedAttributionUtils;
.super Ljava/lang/Object;
.source "ParsedAttributionUtils.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist isCombinationValid(Ljava/util/List;)Z
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/pm/pkg/component/ParsedAttribution;",
            ">;)Z"
        }
    .end annotation

    .line 118
    const/4 v0, 0x1

    if-nez p0, :cond_4

    .line 119
    return v0

    .line 122
    :cond_4
    new-instance v1, Landroid/util/ArraySet;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>(I)V

    .line 123
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 125
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    .line 126
    const/16 v4, 0x190

    const/4 v5, 0x0

    if-le v3, v4, :cond_1c

    .line 127
    return v5

    .line 130
    :cond_1c
    move v4, v5

    :goto_1d
    if-ge v4, v3, :cond_33

    .line 131
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/pm/pkg/component/ParsedAttribution;

    invoke-interface {v6}, Lcom/android/internal/pm/pkg/component/ParsedAttribution;->getTag()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v6

    .line 132
    if-nez v6, :cond_30

    .line 134
    return v5

    .line 130
    :cond_30
    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    .line 138
    :cond_33
    move v4, v5

    :goto_34
    if-ge v4, v3, :cond_61

    .line 139
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/pm/pkg/component/ParsedAttribution;

    .line 141
    invoke-interface {v6}, Lcom/android/internal/pm/pkg/component/ParsedAttribution;->getInheritFrom()Ljava/util/List;

    move-result-object v6

    .line 142
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    .line 143
    move v8, v5

    :goto_45
    if-ge v8, v7, :cond_5e

    .line 144
    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 146
    invoke-virtual {v1, v9}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_54

    .line 148
    return v5

    .line 151
    :cond_54
    invoke-virtual {v2, v9}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v9

    .line 152
    if-nez v9, :cond_5b

    .line 154
    return v5

    .line 143
    :cond_5b
    add-int/lit8 v8, v8, 0x1

    goto :goto_45

    .line 138
    :cond_5e
    add-int/lit8 v4, v4, 0x1

    goto :goto_34

    .line 159
    :cond_61
    return v0
.end method

.method public static blacklist parseAttribution(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            "Landroid/content/pm/parsing/result/ParseInput;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/internal/pm/pkg/component/ParsedAttribution;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 47
    nop

    .line 49
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestAttribution:[I

    invoke-virtual {p0, p1, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 50
    if-nez v0, :cond_10

    .line 51
    const-string p0, "<attribution> could not be parsed"

    invoke-interface {p2, p0}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    .line 55
    :cond_10
    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_12
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v3

    .line 57
    if-nez v3, :cond_22

    .line 58
    const-string p0, "<attribution> does not specify android:tag"

    invoke-interface {p2, p0}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0
    :try_end_1e
    .catchall {:try_start_12 .. :try_end_1e} :catchall_c4

    .line 70
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 58
    return-object p0

    .line 60
    :cond_22
    :try_start_22
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x32

    if-le v4, v5, :cond_34

    .line 61
    const-string p0, "android:tag is too long. Max length is 50"

    invoke-interface {p2, p0}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0
    :try_end_30
    .catchall {:try_start_22 .. :try_end_30} :catchall_c4

    .line 70
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 61
    return-object p0

    .line 65
    :cond_34
    :try_start_34
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 66
    if-nez v4, :cond_44

    .line 67
    const-string p0, "<attribution> does not specify android:label"

    invoke-interface {p2, p0}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0
    :try_end_40
    .catchall {:try_start_34 .. :try_end_40} :catchall_c4

    .line 70
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 67
    return-object p0

    .line 70
    :cond_44
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 71
    nop

    .line 74
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v0

    const/4 v5, 0x0

    .line 75
    :cond_4d
    :goto_4d
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v6

    if-eq v6, v1, :cond_ad

    const/4 v7, 0x3

    if-ne v6, v7, :cond_5c

    .line 76
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v8

    if-le v8, v0, :cond_ad

    .line 77
    :cond_5c
    if-eq v6, v7, :cond_4d

    const/4 v7, 0x4

    if-ne v6, v7, :cond_62

    .line 78
    goto :goto_4d

    .line 81
    :cond_62
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 82
    const-string v7, "inherit-from"

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_95

    .line 83
    sget-object v6, Lcom/android/internal/R$styleable;->AndroidManifestAttributionInheritFrom:[I

    invoke-virtual {p0, p1, v6}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 85
    if-nez v6, :cond_7d

    .line 86
    const-string p0, "<inherit-from> could not be parsed"

    invoke-interface {p2, p0}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    .line 90
    :cond_7d
    :try_start_7d
    invoke-virtual {v6, v2, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v7

    .line 93
    if-nez v5, :cond_88

    .line 94
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 96
    :cond_88
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_8b
    .catchall {:try_start_7d .. :try_end_8b} :catchall_90

    .line 98
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 99
    nop

    .line 103
    goto :goto_4d

    .line 98
    :catchall_90
    move-exception p0

    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 99
    throw p0

    .line 101
    :cond_95
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Bad element under <attribution>: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    .line 105
    :cond_ad
    if-nez v5, :cond_b4

    .line 106
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    goto :goto_ba

    .line 108
    :cond_b4
    move-object p0, v5

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->trimToSize()V

    .line 111
    :goto_ba
    new-instance p0, Lcom/android/internal/pm/pkg/component/ParsedAttributionImpl;

    invoke-direct {p0, v3, v4, v5}, Lcom/android/internal/pm/pkg/component/ParsedAttributionImpl;-><init>(Ljava/lang/String;ILjava/util/List;)V

    invoke-interface {p2, p0}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    .line 70
    :catchall_c4
    move-exception p0

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 71
    throw p0
.end method
