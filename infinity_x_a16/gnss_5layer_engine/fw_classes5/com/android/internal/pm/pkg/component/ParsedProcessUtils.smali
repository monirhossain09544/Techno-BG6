.class public Lcom/android/internal/pm/pkg/component/ParsedProcessUtils;
.super Ljava/lang/Object;
.source "ParsedProcessUtils.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist parseAllowPermission(Ljava/util/Set;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            "Landroid/content/pm/parsing/result/ParseInput;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 67
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestAllowPermission:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 69
    const/4 v0, 0x0

    :try_start_7
    invoke-virtual {p1, v0, v0}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v0

    .line 71
    if-eqz v0, :cond_19

    const-string v1, "android.permission.INTERNET"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 72
    invoke-static {p0, v0}, Lcom/android/internal/util/CollectionUtils;->remove(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0
    :try_end_19
    .catchall {:try_start_7 .. :try_end_19} :catchall_25

    .line 75
    :cond_19
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 76
    nop

    .line 77
    invoke-static {p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 78
    invoke-interface {p3, p0}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    .line 75
    :catchall_25
    move-exception p0

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 76
    throw p0
.end method

.method private static blacklist parseDenyPermission(Ljava/util/Set;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            "Landroid/content/pm/parsing/result/ParseInput;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 49
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestDenyPermission:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 51
    const/4 v0, 0x0

    :try_start_7
    invoke-virtual {p1, v0, v0}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v0

    .line 53
    if-eqz v0, :cond_19

    const-string v1, "android.permission.INTERNET"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 54
    invoke-static {p0, v0}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0
    :try_end_19
    .catchall {:try_start_7 .. :try_end_19} :catchall_25

    .line 57
    :cond_19
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 58
    nop

    .line 59
    invoke-static {p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 60
    invoke-interface {p3, p0}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    .line 57
    :catchall_25
    move-exception p0

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 58
    throw p0
.end method

.method private static blacklist parseProcess(Ljava/util/Set;[Ljava/lang/String;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ILandroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            "I",
            "Landroid/content/pm/parsing/result/ParseInput;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/internal/pm/pkg/component/ParsedProcess;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 85
    new-instance v0, Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;

    invoke-direct {v0}, Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;-><init>()V

    .line 86
    sget-object v1, Lcom/android/internal/R$styleable;->AndroidManifestProcess:[I

    invoke-virtual {p3, p4, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 88
    if-eqz p0, :cond_15

    .line 89
    :try_start_d
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2, p0}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v2}, Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;->setDeniedPermissions(Ljava/util/Set;)Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;

    .line 92
    :cond_15
    const/4 p0, 0x1

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v5

    .line 94
    nop

    .line 95
    invoke-interface {p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 94
    move-object v7, p1

    move v6, p5

    move-object v8, p6

    invoke-static/range {v3 .. v8}, Lcom/android/internal/pm/pkg/component/ComponentParseUtils;->buildProcessName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;I[Ljava/lang/String;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p1

    .line 97
    invoke-interface {p1}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result p5

    if-eqz p5, :cond_39

    .line 98
    invoke-interface {v8, p1}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0
    :try_end_35
    .catchall {:try_start_d .. :try_end_35} :catchall_114

    .line 122
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 98
    return-object p0

    .line 101
    :cond_39
    :try_start_39
    invoke-interface {p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getPackageName()Ljava/lang/String;

    move-result-object p5

    .line 102
    nop

    .line 103
    invoke-virtual {v1, v2, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object p6

    .line 102
    invoke-static {p5, p6}, Lcom/android/internal/pm/pkg/parsing/ParsingUtils;->buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p6

    .line 105
    invoke-interface {p1}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;->setName(Ljava/lang/String;)Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;

    .line 106
    invoke-virtual {v0, p5, p6}, Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;->putAppClassNameForPackage(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    const/4 p1, -0x1

    const/4 p5, 0x3

    invoke-virtual {v1, p5, p1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p6

    invoke-virtual {v0, p6}, Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;->setGwpAsanMode(I)Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;

    .line 108
    const/4 p6, 0x4

    invoke-virtual {v1, p6, p1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;->setMemtagMode(I)Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;

    .line 109
    const/4 v3, 0x5

    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_77

    .line 110
    invoke-virtual {v1, v3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    .line 112
    nop

    .line 113
    if-eqz v3, :cond_73

    move v3, p0

    goto :goto_74

    :cond_73
    move v3, v2

    .line 112
    :goto_74
    invoke-virtual {v0, v3}, Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;->setNativeHeapZeroInitialized(I)Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;

    .line 115
    :cond_77
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/pm/pkg/component/flags/Flags;->enablePerProcessUseEmbeddedDexAttr()Z

    move-result v3

    if-eqz v3, :cond_87

    .line 116
    nop

    .line 117
    const/4 v3, 0x2

    invoke-virtual {v1, v3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    .line 116
    invoke-virtual {v0, v3}, Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;->setUseEmbeddedDex(Z)Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;

    goto :goto_8a

    .line 119
    :cond_87
    invoke-virtual {v0, v2}, Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;->setUseEmbeddedDex(Z)Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;
    :try_end_8a
    .catchall {:try_start_39 .. :try_end_8a} :catchall_114

    .line 122
    :goto_8a
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 123
    nop

    .line 126
    invoke-interface {p4}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v1

    .line 127
    :cond_92
    :goto_92
    invoke-interface {p4}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v3

    if-eq v3, p0, :cond_10f

    if-ne v3, p5, :cond_a0

    .line 128
    invoke-interface {p4}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v4

    if-le v4, v1, :cond_10f

    .line 129
    :cond_a0
    if-eq v3, p5, :cond_92

    if-ne v3, p6, :cond_a5

    .line 130
    goto :goto_92

    .line 135
    :cond_a5
    invoke-interface {p4}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 136
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_11a

    :cond_b0
    goto :goto_c5

    :sswitch_b1
    const-string v4, "deny-permission"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b0

    move v3, v2

    goto :goto_c6

    :sswitch_bb
    const-string v4, "allow-permission"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b0

    move v3, p0

    goto :goto_c6

    :goto_c5
    move v3, p1

    :goto_c6
    packed-switch v3, :pswitch_data_124

    .line 154
    const-string v3, "<process>"

    invoke-static {v3, p2, p4, v8}, Lcom/android/internal/pm/pkg/parsing/ParsingUtils;->unknownTag(Ljava/lang/String;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3

    goto :goto_103

    .line 146
    :pswitch_d0
    nop

    .line 147
    invoke-virtual {v0}, Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;->getDeniedPermissions()Ljava/util/Set;

    move-result-object v3

    .line 146
    invoke-static {v3, p3, p4, v8}, Lcom/android/internal/pm/pkg/component/ParsedProcessUtils;->parseAllowPermission(Ljava/util/Set;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3

    .line 148
    nop

    .line 149
    invoke-interface {v3}, Landroid/content/pm/parsing/result/ParseResult;->isSuccess()Z

    move-result v4

    if-eqz v4, :cond_103

    .line 150
    invoke-interface {v3}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    invoke-virtual {v0, v4}, Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;->setDeniedPermissions(Ljava/util/Set;)Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;

    goto :goto_103

    .line 138
    :pswitch_ea
    nop

    .line 139
    invoke-virtual {v0}, Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;->getDeniedPermissions()Ljava/util/Set;

    move-result-object v3

    .line 138
    invoke-static {v3, p3, p4, v8}, Lcom/android/internal/pm/pkg/component/ParsedProcessUtils;->parseDenyPermission(Ljava/util/Set;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3

    .line 140
    nop

    .line 141
    invoke-interface {v3}, Landroid/content/pm/parsing/result/ParseResult;->isSuccess()Z

    move-result v4

    if-eqz v4, :cond_103

    .line 142
    invoke-interface {v3}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    invoke-virtual {v0, v4}, Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;->setDeniedPermissions(Ljava/util/Set;)Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;

    .line 158
    :cond_103
    :goto_103
    invoke-interface {v3}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v4

    if-eqz v4, :cond_10e

    .line 159
    invoke-interface {v8, v3}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    .line 161
    :cond_10e
    goto :goto_92

    .line 163
    :cond_10f
    invoke-interface {v8, v0}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    .line 122
    :catchall_114
    move-exception v0

    move-object p0, v0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 123
    throw p0

    :sswitch_data_11a
    .sparse-switch
        -0x49dc292d -> :sswitch_bb
        0x62d33430 -> :sswitch_b1
    .end sparse-switch

    :pswitch_data_124
    .packed-switch 0x0
        :pswitch_ea
        :pswitch_d0
    .end packed-switch
.end method

.method public static blacklist parseProcesses([Ljava/lang/String;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ILandroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            "I",
            "Landroid/content/pm/parsing/result/ParseInput;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/internal/pm/pkg/component/ParsedProcess;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 171
    nop

    .line 172
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 175
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v1

    const/4 v2, 0x0

    move-object v3, v2

    .line 176
    :goto_c
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v2

    const/4 v4, 0x1

    if-eq v2, v4, :cond_fd

    const/4 v5, 0x3

    if-ne v2, v5, :cond_20

    .line 177
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v6

    if-le v6, v1, :cond_1d

    goto :goto_20

    :cond_1d
    move-object v9, p5

    goto/16 :goto_fe

    .line 178
    :cond_20
    :goto_20
    if-eq v2, v5, :cond_ef

    const/4 v5, 0x4

    if-ne v2, v5, :cond_2d

    .line 179
    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move v8, p4

    move-object v9, p5

    goto/16 :goto_f5

    .line 184
    :cond_2d
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 185
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_104

    :cond_38
    goto :goto_56

    :sswitch_39
    const-string v4, "deny-permission"

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_38

    const/4 v4, 0x0

    goto :goto_57

    :sswitch_43
    const-string v4, "process"

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_38

    const/4 v4, 0x2

    goto :goto_57

    :sswitch_4d
    const-string v5, "allow-permission"

    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_38

    goto :goto_57

    :goto_56
    const/4 v4, -0x1

    :goto_57
    packed-switch v4, :pswitch_data_112

    .line 215
    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move v8, p4

    move-object v9, p5

    const-string p0, "<processes>"

    invoke-static {p0, v5, v7, v9}, Lcom/android/internal/pm/pkg/parsing/ParsingUtils;->unknownTag(Ljava/lang/String;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    goto/16 :goto_dc

    .line 203
    :pswitch_68
    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move v8, p4

    move-object v9, p5

    invoke-static/range {v3 .. v9}, Lcom/android/internal/pm/pkg/component/ParsedProcessUtils;->parseProcess(Ljava/util/Set;[Ljava/lang/String;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ILandroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    .line 205
    nop

    .line 206
    invoke-interface {p0}, Landroid/content/pm/parsing/result/ParseResult;->isSuccess()Z

    move-result p1

    if-eqz p1, :cond_dc

    .line 207
    invoke-interface {p0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/pm/pkg/component/ParsedProcess;

    .line 208
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedProcess;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_aa

    .line 209
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "<process> specified existing name \'"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 210
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedProcess;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "\'"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 209
    invoke-interface {v9, p0}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    .line 212
    :cond_aa
    goto :goto_dc

    .line 195
    :pswitch_ab
    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move v8, p4

    move-object v9, p5

    invoke-static {v3, v6, v7, v9}, Lcom/android/internal/pm/pkg/component/ParsedProcessUtils;->parseAllowPermission(Ljava/util/Set;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    .line 197
    nop

    .line 198
    invoke-interface {p0}, Landroid/content/pm/parsing/result/ParseResult;->isSuccess()Z

    move-result p1

    if-eqz p1, :cond_dc

    .line 199
    invoke-interface {p0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    move-object v3, p1

    goto :goto_dc

    .line 187
    :pswitch_c4
    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move v8, p4

    move-object v9, p5

    invoke-static {v3, v6, v7, v9}, Lcom/android/internal/pm/pkg/component/ParsedProcessUtils;->parseDenyPermission(Ljava/util/Set;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    .line 189
    nop

    .line 190
    invoke-interface {p0}, Landroid/content/pm/parsing/result/ParseResult;->isSuccess()Z

    move-result p1

    if-eqz p1, :cond_dc

    .line 191
    invoke-interface {p0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    move-object v3, p1

    .line 219
    :cond_dc
    :goto_dc
    invoke-interface {p0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result p1

    if-eqz p1, :cond_e7

    .line 220
    invoke-interface {v9, p0}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    .line 223
    :cond_e7
    move-object p0, v4

    move-object p1, v5

    move-object p2, v6

    move-object p3, v7

    move p4, v8

    move-object p5, v9

    goto/16 :goto_c

    .line 178
    :cond_ef
    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move v8, p4

    move-object v9, p5

    .line 176
    :goto_f5
    move-object p0, v4

    move-object p1, v5

    move-object p2, v6

    move-object p3, v7

    move p4, v8

    move-object p5, v9

    goto/16 :goto_c

    :cond_fd
    move-object v9, p5

    .line 225
    :goto_fe
    invoke-interface {v9, v0}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    nop

    :sswitch_data_104
    .sparse-switch
        -0x49dc292d -> :sswitch_4d
        -0x1272e191 -> :sswitch_43
        0x62d33430 -> :sswitch_39
    .end sparse-switch

    :pswitch_data_112
    .packed-switch 0x0
        :pswitch_c4
        :pswitch_ab
        :pswitch_68
    .end packed-switch
.end method
