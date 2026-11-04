.class public final Landroid/os/instrumentation/MethodDescriptorParser;
.super Ljava/lang/Object;
.source "MethodDescriptorParser.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist parseMethodDescriptor(Ljava/lang/ClassLoader;Landroid/os/instrumentation/MethodDescriptor;)Ljava/lang/reflect/Executable;
    .registers 10

    .line 36
    :try_start_0
    iget-object v0, p1, Landroid/os/instrumentation/MethodDescriptor;->fullyQualifiedClassName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 37
    iget-object v1, p1, Landroid/os/instrumentation/MethodDescriptor;->fullyQualifiedParameters:[Ljava/lang/String;

    array-length v1, v1

    new-array v1, v1, [Ljava/lang/Class;

    .line 38
    const/4 v2, 0x0

    move v3, v2

    :goto_d
    iget-object v4, p1, Landroid/os/instrumentation/MethodDescriptor;->fullyQualifiedParameters:[Ljava/lang/String;

    array-length v4, v4

    if-ge v3, v4, :cond_10d

    .line 39
    iget-object v4, p1, Landroid/os/instrumentation/MethodDescriptor;->fullyQualifiedParameters:[Ljava/lang/String;

    aget-object v4, v4, v3

    .line 40
    const-string v5, "[]"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    .line 41
    const/4 v6, 0x2

    if-eqz v5, :cond_28

    .line 42
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v7, v6

    invoke-virtual {v4, v2, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 44
    :cond_28
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_144

    :cond_2f
    goto :goto_80

    :sswitch_30
    const-string/jumbo v6, "short"

    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2f

    const/4 v6, 0x3

    goto :goto_81

    :sswitch_3b
    const-string v6, "float"

    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2f

    const/4 v6, 0x6

    goto :goto_81

    :sswitch_45
    const-string v6, "boolean"

    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2f

    move v6, v2

    goto :goto_81

    :sswitch_4f
    const-string v6, "long"

    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2f

    const/4 v6, 0x5

    goto :goto_81

    :sswitch_59
    const-string v7, "char"

    invoke-virtual {v4, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2f

    goto :goto_81

    :sswitch_62
    const-string v6, "byte"

    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2f

    const/4 v6, 0x1

    goto :goto_81

    :sswitch_6c
    const-string v6, "int"

    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2f

    const/4 v6, 0x4

    goto :goto_81

    :sswitch_76
    const-string v6, "double"

    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2f

    const/4 v6, 0x7

    goto :goto_81

    :goto_80
    const/4 v6, -0x1

    :goto_81
    packed-switch v6, :pswitch_data_166

    .line 70
    if-eqz v5, :cond_103

    invoke-virtual {p0, v4}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    goto/16 :goto_fe

    .line 67
    :pswitch_8c
    if-eqz v5, :cond_95

    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Class;->arrayType()Ljava/lang/Class;

    move-result-object v4

    goto :goto_97

    :cond_95
    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    :goto_97
    aput-object v4, v1, v3

    .line 68
    goto/16 :goto_109

    .line 64
    :pswitch_9b
    if-eqz v5, :cond_a4

    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Class;->arrayType()Ljava/lang/Class;

    move-result-object v4

    goto :goto_a6

    :cond_a4
    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    :goto_a6
    aput-object v4, v1, v3

    .line 65
    goto/16 :goto_109

    .line 61
    :pswitch_aa
    if-eqz v5, :cond_b3

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Class;->arrayType()Ljava/lang/Class;

    move-result-object v4

    goto :goto_b5

    :cond_b3
    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    :goto_b5
    aput-object v4, v1, v3

    .line 62
    goto :goto_109

    .line 58
    :pswitch_b8
    if-eqz v5, :cond_c1

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Class;->arrayType()Ljava/lang/Class;

    move-result-object v4

    goto :goto_c3

    :cond_c1
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    :goto_c3
    aput-object v4, v1, v3

    .line 59
    goto :goto_109

    .line 55
    :pswitch_c6
    if-eqz v5, :cond_cf

    sget-object v4, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Class;->arrayType()Ljava/lang/Class;

    move-result-object v4

    goto :goto_d1

    :cond_cf
    sget-object v4, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    :goto_d1
    aput-object v4, v1, v3

    .line 56
    goto :goto_109

    .line 52
    :pswitch_d4
    if-eqz v5, :cond_dd

    sget-object v4, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Class;->arrayType()Ljava/lang/Class;

    move-result-object v4

    goto :goto_df

    :cond_dd
    sget-object v4, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    :goto_df
    aput-object v4, v1, v3

    .line 53
    goto :goto_109

    .line 49
    :pswitch_e2
    if-eqz v5, :cond_eb

    sget-object v4, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Class;->arrayType()Ljava/lang/Class;

    move-result-object v4

    goto :goto_ed

    :cond_eb
    sget-object v4, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    :goto_ed
    aput-object v4, v1, v3

    .line 50
    goto :goto_109

    .line 46
    :pswitch_f0
    if-eqz v5, :cond_f9

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Class;->arrayType()Ljava/lang/Class;

    move-result-object v4

    goto :goto_fb

    :cond_f9
    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    :goto_fb
    aput-object v4, v1, v3

    .line 47
    goto :goto_109

    .line 70
    :goto_fe
    invoke-virtual {v4}, Ljava/lang/Class;->arrayType()Ljava/lang/Class;

    move-result-object v4

    goto :goto_107

    .line 71
    :cond_103
    invoke-virtual {p0, v4}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    :goto_107
    aput-object v4, v1, v3

    .line 38
    :goto_109
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_d

    .line 75
    :cond_10d
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/art/flags/Flags;->executableMethodFileOffsetsV2()Z

    move-result p0

    if-eqz p0, :cond_122

    iget-object p0, p1, Landroid/os/instrumentation/MethodDescriptor;->methodName:Ljava/lang/String;

    const-string v2, "<init>"

    .line 76
    invoke-virtual {p0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_122

    .line 77
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    return-object p0

    .line 79
    :cond_122
    iget-object p0, p1, Landroid/os/instrumentation/MethodDescriptor;->methodName:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0
    :try_end_128
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_128} :catch_129
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_128} :catch_129

    return-object p0

    .line 80
    :catch_129
    move-exception p0

    .line 81
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The specified method cannot be found. Is this descriptor valid? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    nop

    :sswitch_data_144
    .sparse-switch
        -0x4f08842f -> :sswitch_76
        0x197ef -> :sswitch_6c
        0x2e6108 -> :sswitch_62
        0x2e9356 -> :sswitch_59
        0x32c67c -> :sswitch_4f
        0x3db6c28 -> :sswitch_45
        0x5d0225c -> :sswitch_3b
        0x685847c -> :sswitch_30
    .end sparse-switch

    :pswitch_data_166
    .packed-switch 0x0
        :pswitch_f0
        :pswitch_e2
        :pswitch_d4
        :pswitch_c6
        :pswitch_b8
        :pswitch_aa
        :pswitch_9b
        :pswitch_8c
    .end packed-switch
.end method
