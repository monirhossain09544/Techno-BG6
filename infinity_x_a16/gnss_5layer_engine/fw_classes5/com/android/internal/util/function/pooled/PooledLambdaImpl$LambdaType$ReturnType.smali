.class Lcom/android/internal/util/function/pooled/PooledLambdaImpl$LambdaType$ReturnType;
.super Ljava/lang/Object;
.source "PooledLambdaImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/util/function/pooled/PooledLambdaImpl$LambdaType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ReturnType"
.end annotation


# static fields
.field public static final blacklist BOOLEAN:I = 0x2

.field public static final blacklist DOUBLE:I = 0x6

.field public static final blacklist INT:I = 0x4

.field public static final blacklist LONG:I = 0x5

.field public static final blacklist OBJECT:I = 0x3

.field public static final blacklist VOID:I = 0x1


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 742
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist lambdaSuffix(I)Ljava/lang/String;
    .registers 3

    .line 763
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl$LambdaType$ReturnType;->prefix(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl$LambdaType$ReturnType;->suffix(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist prefix(I)Ljava/lang/String;
    .registers 1

    .line 767
    packed-switch p0, :pswitch_data_10

    .line 771
    const-string p0, ""

    return-object p0

    .line 770
    :pswitch_6
    const-string p0, "Double"

    return-object p0

    .line 769
    :pswitch_9
    const-string p0, "Long"

    return-object p0

    .line 768
    :pswitch_c
    const-string p0, "Int"

    return-object p0

    nop

    :pswitch_data_10
    .packed-switch 0x4
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method

.method private static blacklist suffix(I)Ljava/lang/String;
    .registers 1

    .line 776
    packed-switch p0, :pswitch_data_10

    .line 780
    const-string p0, "Supplier"

    return-object p0

    .line 779
    :pswitch_6
    const-string p0, "Function"

    return-object p0

    .line 778
    :pswitch_9
    const-string p0, "Predicate"

    return-object p0

    .line 777
    :pswitch_c
    const-string p0, "Consumer"

    return-object p0

    nop

    :pswitch_data_10
    .packed-switch 0x1
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method

.method static blacklist toString(I)Ljava/lang/String;
    .registers 3

    .line 751
    packed-switch p0, :pswitch_data_2a

    .line 758
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 757
    :pswitch_17
    const-string p0, "DOUBLE"

    return-object p0

    .line 756
    :pswitch_1a
    const-string p0, "LONG"

    return-object p0

    .line 755
    :pswitch_1d
    const-string p0, "INT"

    return-object p0

    .line 754
    :pswitch_20
    const-string p0, "OBJECT"

    return-object p0

    .line 753
    :pswitch_23
    const-string p0, "BOOLEAN"

    return-object p0

    .line 752
    :pswitch_26
    const-string p0, "VOID"

    return-object p0

    nop

    :pswitch_data_2a
    .packed-switch 0x1
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
    .end packed-switch
.end method
