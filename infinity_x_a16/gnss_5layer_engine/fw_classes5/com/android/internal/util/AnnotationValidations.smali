.class public Lcom/android/internal/util/AnnotationValidations;
.super Ljava/lang/Object;
.source "AnnotationValidations.java"


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist invalid(Ljava/lang/Class;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 222
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/android/internal/util/AnnotationValidations;->invalid(Ljava/lang/String;Ljava/lang/Object;)V

    .line 223
    return-void
.end method

.method private static blacklist invalid(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 227
    const-string v0, "value"

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string p2, ""

    goto :goto_1e

    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 228
    :goto_1e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "("

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p2, ")"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/android/internal/util/AnnotationValidations;->invalid(Ljava/lang/String;Ljava/lang/Object;)V

    .line 229
    return-void
.end method

.method private static blacklist invalid(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5

    .line 232
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, ": "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist validate(Ljava/lang/Class;Landroid/annotation/AppIdInt;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "Landroid/annotation/AppIdInt;",
            ">;",
            "Landroid/annotation/AppIdInt;",
            "I)V"
        }
    .end annotation

    .line 58
    const p1, 0x186a0

    div-int p1, p2, p1

    if-nez p1, :cond_9

    if-gez p2, :cond_10

    .line 59
    :cond_9
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/internal/util/AnnotationValidations;->invalid(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 61
    :cond_10
    return-void
.end method

.method public static blacklist validate(Ljava/lang/Class;Landroid/annotation/FloatRange;FLjava/lang/String;F)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "Landroid/annotation/FloatRange;",
            ">;",
            "Landroid/annotation/FloatRange;",
            "F",
            "Ljava/lang/String;",
            "F)V"
        }
    .end annotation

    .line 121
    invoke-virtual {p3}, Ljava/lang/Object;->hashCode()I

    move-result p1

    sparse-switch p1, :sswitch_data_42

    :cond_7
    goto :goto_1c

    :sswitch_8
    const-string p1, "from"

    invoke-virtual {p3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    const/4 p1, 0x0

    goto :goto_1d

    :sswitch_12
    const-string p1, "to"

    invoke-virtual {p3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    const/4 p1, 0x1

    goto :goto_1d

    :goto_1c
    const/4 p1, -0x1

    :goto_1d
    packed-switch p1, :pswitch_data_4c

    goto :goto_40

    .line 123
    :pswitch_21
    cmpl-float p1, p2, p4

    if-lez p1, :cond_40

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-static {p0, p1, p3, p2}, Lcom/android/internal/util/AnnotationValidations;->invalid(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_40

    .line 122
    :pswitch_31
    cmpg-float p1, p2, p4

    if-gez p1, :cond_40

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-static {p0, p1, p3, p2}, Lcom/android/internal/util/AnnotationValidations;->invalid(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 125
    :cond_40
    :goto_40
    return-void

    nop

    :sswitch_data_42
    .sparse-switch
        0xe7b -> :sswitch_12
        0x3017aa -> :sswitch_8
    .end sparse-switch

    :pswitch_data_4c
    .packed-switch 0x0
        :pswitch_31
        :pswitch_21
    .end packed-switch
.end method

.method public static blacklist validate(Ljava/lang/Class;Landroid/annotation/FloatRange;FLjava/lang/String;FLjava/lang/String;F)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "Landroid/annotation/FloatRange;",
            ">;",
            "Landroid/annotation/FloatRange;",
            "F",
            "Ljava/lang/String;",
            "F",
            "Ljava/lang/String;",
            "F)V"
        }
    .end annotation

    .line 115
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/FloatRange;FLjava/lang/String;F)V

    .line 116
    invoke-static {p0, p1, p2, p5, p6}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/FloatRange;FLjava/lang/String;F)V

    .line 117
    return-void
.end method

.method public static blacklist validate(Ljava/lang/Class;Landroid/annotation/IntRange;ILjava/lang/String;J)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "Landroid/annotation/IntRange;",
            ">;",
            "Landroid/annotation/IntRange;",
            "I",
            "Ljava/lang/String;",
            "J)V"
        }
    .end annotation

    .line 71
    invoke-virtual {p3}, Ljava/lang/Object;->hashCode()I

    move-result p1

    sparse-switch p1, :sswitch_data_44

    :cond_7
    goto :goto_1c

    :sswitch_8
    const-string p1, "from"

    invoke-virtual {p3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    const/4 p1, 0x0

    goto :goto_1d

    :sswitch_12
    const-string p1, "to"

    invoke-virtual {p3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    const/4 p1, 0x1

    goto :goto_1d

    :goto_1c
    const/4 p1, -0x1

    :goto_1d
    packed-switch p1, :pswitch_data_4e

    goto :goto_42

    .line 78
    :pswitch_21
    int-to-long v0, p2

    cmp-long p1, v0, p4

    if-lez p1, :cond_42

    .line 79
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-static {p0, p1, p3, p2}, Lcom/android/internal/util/AnnotationValidations;->invalid(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_42

    .line 73
    :pswitch_32
    int-to-long v0, p2

    cmp-long p1, v0, p4

    if-gez p1, :cond_42

    .line 74
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-static {p0, p1, p3, p2}, Lcom/android/internal/util/AnnotationValidations;->invalid(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 83
    :cond_42
    :goto_42
    return-void

    nop

    :sswitch_data_44
    .sparse-switch
        0xe7b -> :sswitch_12
        0x3017aa -> :sswitch_8
    .end sparse-switch

    :pswitch_data_4e
    .packed-switch 0x0
        :pswitch_32
        :pswitch_21
    .end packed-switch
.end method

.method public static blacklist validate(Ljava/lang/Class;Landroid/annotation/IntRange;ILjava/lang/String;JLjava/lang/String;J)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "Landroid/annotation/IntRange;",
            ">;",
            "Landroid/annotation/IntRange;",
            "I",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "J)V"
        }
    .end annotation

    .line 65
    invoke-static/range {p0 .. p5}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/IntRange;ILjava/lang/String;J)V

    .line 66
    move-object p3, p6

    move-wide p4, p7

    invoke-static/range {p0 .. p5}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/IntRange;ILjava/lang/String;J)V

    .line 67
    return-void
.end method

.method public static blacklist validate(Ljava/lang/Class;Landroid/annotation/IntRange;JLjava/lang/String;J)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "Landroid/annotation/IntRange;",
            ">;",
            "Landroid/annotation/IntRange;",
            "J",
            "Ljava/lang/String;",
            "J)V"
        }
    .end annotation

    .line 99
    invoke-virtual {p4}, Ljava/lang/Object;->hashCode()I

    move-result p1

    sparse-switch p1, :sswitch_data_42

    :cond_7
    goto :goto_1c

    :sswitch_8
    const-string p1, "from"

    invoke-virtual {p4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    const/4 p1, 0x0

    goto :goto_1d

    :sswitch_12
    const-string p1, "to"

    invoke-virtual {p4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    const/4 p1, 0x1

    goto :goto_1d

    :goto_1c
    const/4 p1, -0x1

    :goto_1d
    packed-switch p1, :pswitch_data_4c

    goto :goto_40

    .line 106
    :pswitch_21
    cmp-long p1, p2, p5

    if-lez p1, :cond_40

    .line 107
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-static {p0, p1, p4, p2}, Lcom/android/internal/util/AnnotationValidations;->invalid(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_40

    .line 101
    :pswitch_31
    cmp-long p1, p2, p5

    if-gez p1, :cond_40

    .line 102
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-static {p0, p1, p4, p2}, Lcom/android/internal/util/AnnotationValidations;->invalid(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 111
    :cond_40
    :goto_40
    return-void

    nop

    :sswitch_data_42
    .sparse-switch
        0xe7b -> :sswitch_12
        0x3017aa -> :sswitch_8
    .end sparse-switch

    :pswitch_data_4c
    .packed-switch 0x0
        :pswitch_31
        :pswitch_21
    .end packed-switch
.end method

.method public static blacklist validate(Ljava/lang/Class;Landroid/annotation/IntRange;JLjava/lang/String;JLjava/lang/String;J)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "Landroid/annotation/IntRange;",
            ">;",
            "Landroid/annotation/IntRange;",
            "J",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "J)V"
        }
    .end annotation

    .line 90
    invoke-static/range {p0 .. p6}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/IntRange;JLjava/lang/String;J)V

    .line 91
    move-object p4, p7

    move-wide p5, p8

    invoke-static/range {p0 .. p6}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/IntRange;JLjava/lang/String;J)V

    .line 92
    return-void
.end method

.method public static blacklist validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "Landroid/annotation/NonNull;",
            ">;",
            "Landroid/annotation/NonNull;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 128
    if-eqz p2, :cond_3

    .line 131
    return-void

    .line 129
    :cond_3
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    throw p0
.end method

.method public static blacklist validate(Ljava/lang/Class;Landroid/annotation/Size;ILjava/lang/String;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "Landroid/annotation/Size;",
            ">;",
            "Landroid/annotation/Size;",
            "I",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 141
    invoke-virtual {p3}, Ljava/lang/Object;->hashCode()I

    move-result p1

    const/4 v0, -0x1

    sparse-switch p1, :sswitch_data_72

    :cond_8
    goto :goto_31

    :sswitch_9
    const-string p1, "multiple"

    invoke-virtual {p3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    const/4 p1, 0x3

    goto :goto_32

    :sswitch_13
    const-string p1, "value"

    invoke-virtual {p3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    const/4 p1, 0x0

    goto :goto_32

    :sswitch_1d
    const-string p1, "min"

    invoke-virtual {p3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    const/4 p1, 0x1

    goto :goto_32

    :sswitch_27
    const-string p1, "max"

    invoke-virtual {p3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    const/4 p1, 0x2

    goto :goto_32

    :goto_31
    move p1, v0

    :goto_32
    packed-switch p1, :pswitch_data_84

    goto :goto_71

    .line 152
    :pswitch_36
    rem-int p1, p2, p4

    if-eqz p1, :cond_71

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p0, p1, p3, p2}, Lcom/android/internal/util/AnnotationValidations;->invalid(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_71

    .line 149
    :pswitch_46
    if-le p2, p4, :cond_71

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p0, p1, p3, p2}, Lcom/android/internal/util/AnnotationValidations;->invalid(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_71

    .line 146
    :pswitch_54
    if-ge p2, p4, :cond_71

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p0, p1, p3, p2}, Lcom/android/internal/util/AnnotationValidations;->invalid(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_71

    .line 143
    :pswitch_62
    if-eq p4, v0, :cond_71

    if-eq p2, p4, :cond_71

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p0, p1, p3, p2}, Lcom/android/internal/util/AnnotationValidations;->invalid(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 155
    :cond_71
    :goto_71
    return-void

    :sswitch_data_72
    .sparse-switch
        0x1a564 -> :sswitch_27
        0x1a652 -> :sswitch_1d
        0x6ac9171 -> :sswitch_13
        0x26f8a610 -> :sswitch_9
    .end sparse-switch

    :pswitch_data_84
    .packed-switch 0x0
        :pswitch_62
        :pswitch_54
        :pswitch_46
        :pswitch_36
    .end packed-switch
.end method

.method public static blacklist validate(Ljava/lang/Class;Landroid/annotation/Size;ILjava/lang/String;ILjava/lang/String;I)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "Landroid/annotation/Size;",
            ">;",
            "Landroid/annotation/Size;",
            "I",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 135
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/Size;ILjava/lang/String;I)V

    .line 136
    invoke-static {p0, p1, p2, p5, p6}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/Size;ILjava/lang/String;I)V

    .line 137
    return-void
.end method

.method public static blacklist validate(Ljava/lang/Class;Landroid/annotation/UserIdInt;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "Landroid/annotation/UserIdInt;",
            ">;",
            "Landroid/annotation/UserIdInt;",
            "I)V"
        }
    .end annotation

    .line 51
    const/16 p1, -0x2710

    if-eq p2, p1, :cond_7

    const/4 p1, -0x3

    if-lt p2, p1, :cond_b

    :cond_7
    const/16 p1, 0x53e2

    if-le p2, p1, :cond_12

    .line 53
    :cond_b
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/internal/util/AnnotationValidations;->invalid(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 55
    :cond_12
    return-void
.end method

.method public static blacklist validate(Ljava/lang/Class;Landroid/content/Intent$Flags;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "Landroid/content/Intent$Flags;",
            ">;",
            "Landroid/content/Intent$Flags;",
            "I)V"
        }
    .end annotation

    .line 170
    const/high16 p1, -0x80000000

    invoke-static {p1}, Lcom/android/internal/util/BitUtils;->flagsUpTo(I)I

    move-result p1

    invoke-static {p0, p2, p1}, Lcom/android/internal/util/AnnotationValidations;->validateIntFlags(Ljava/lang/Class;II)V

    .line 171
    return-void
.end method

.method public static blacklist validate(Ljava/lang/Class;Landroid/content/pm/PackageManager$PackageInfoFlagsBits;J)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "Landroid/content/pm/PackageManager$PackageInfoFlagsBits;",
            ">;",
            "Landroid/content/pm/PackageManager$PackageInfoFlagsBits;",
            "J)V"
        }
    .end annotation

    .line 164
    nop

    .line 165
    const/high16 p1, 0x20000000

    invoke-static {p1}, Lcom/android/internal/util/BitUtils;->flagsUpTo(I)I

    move-result p1

    .line 164
    invoke-static {p0, p2, p3, p1}, Lcom/android/internal/util/AnnotationValidations;->validateLongFlags(Ljava/lang/Class;JI)V

    .line 166
    return-void
.end method

.method public static blacklist validate(Ljava/lang/Class;Landroid/content/pm/PackageManager$PermissionResult;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "Landroid/content/pm/PackageManager$PermissionResult;",
            ">;",
            "Landroid/content/pm/PackageManager$PermissionResult;",
            "I)V"
        }
    .end annotation

    .line 159
    const/4 p1, 0x0

    invoke-static {p0, p2, p1}, Lcom/android/internal/util/AnnotationValidations;->validateIntEnum(Ljava/lang/Class;II)V

    .line 160
    return-void
.end method

.method public static blacklist validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Ljava/lang/annotation/Annotation;",
            "I)V"
        }
    .end annotation

    .line 185
    const-string p1, "android.annotation"

    invoke-virtual {p0}, Ljava/lang/Class;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_18

    .line 186
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Res"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_20

    :cond_18
    const-class p1, Landroid/annotation/ColorInt;

    .line 187
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_29

    .line 188
    :cond_20
    if-gez p2, :cond_29

    .line 189
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/internal/util/AnnotationValidations;->invalid(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 192
    :cond_29
    return-void
.end method

.method public static varargs blacklist validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I[Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Ljava/lang/annotation/Annotation;",
            "I[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 182
    return-void
.end method

.method public static blacklist validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;J)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Ljava/lang/annotation/Annotation;",
            "J)V"
        }
    .end annotation

    .line 195
    const-string p1, "android.annotation"

    invoke-virtual {p0}, Ljava/lang/Class;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_25

    .line 196
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Long"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_25

    .line 197
    const-wide/16 v0, 0x0

    cmp-long p1, p2, v0

    if-gez p1, :cond_25

    .line 198
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/internal/util/AnnotationValidations;->invalid(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 201
    :cond_25
    return-void
.end method

.method public static blacklist validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Ljava/lang/annotation/Annotation;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 179
    return-void
.end method

.method public static varargs blacklist validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;Ljava/lang/Object;[Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Ljava/lang/annotation/Annotation;",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 176
    return-void
.end method

.method private static blacklist validateIntEnum(Ljava/lang/Class;II)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;II)V"
        }
    .end annotation

    .line 205
    if-le p1, p2, :cond_9

    .line 206
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/internal/util/AnnotationValidations;->invalid(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 208
    :cond_9
    return-void
.end method

.method private static blacklist validateIntFlags(Ljava/lang/Class;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;II)V"
        }
    .end annotation

    .line 211
    and-int v0, p2, p1

    if-eq v0, p2, :cond_1e

    .line 212
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "0x"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/internal/util/AnnotationValidations;->invalid(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 214
    :cond_1e
    return-void
.end method

.method private static blacklist validateLongFlags(Ljava/lang/Class;JI)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;JI)V"
        }
    .end annotation

    .line 217
    int-to-long v0, p3

    and-long v2, v0, p1

    cmp-long p3, v2, v0

    if-eqz p3, :cond_21

    .line 218
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "0x"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-static {p1, p2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/internal/util/AnnotationValidations;->invalid(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 220
    :cond_21
    return-void
.end method
