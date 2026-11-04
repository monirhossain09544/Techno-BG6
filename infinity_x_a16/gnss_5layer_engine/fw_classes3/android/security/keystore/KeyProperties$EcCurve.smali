.class public abstract Landroid/security/keystore/KeyProperties$EcCurve;
.super Ljava/lang/Object;
.source "KeyProperties.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/keystore/KeyProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "EcCurve"
.end annotation


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 925
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist fromKeymasterCurve(I)I
    .registers 1

    .line 950
    packed-switch p0, :pswitch_data_12

    .line 961
    const/4 p0, -0x1

    return p0

    .line 959
    :pswitch_5
    const/16 p0, 0x209

    return p0

    .line 957
    :pswitch_8
    const/16 p0, 0x180

    return p0

    .line 955
    :pswitch_b
    const/16 p0, 0x100

    return p0

    .line 952
    :pswitch_e
    const/16 p0, 0xe0

    return p0

    nop

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
        :pswitch_b
    .end packed-switch
.end method

.method public static blacklist toKeymasterCurve(Ljava/security/spec/ECParameterSpec;)I
    .registers 1

    .line 931
    invoke-virtual {p0}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object p0

    invoke-virtual {p0}, Ljava/security/spec/EllipticCurve;->getField()Ljava/security/spec/ECField;

    move-result-object p0

    invoke-interface {p0}, Ljava/security/spec/ECField;->getFieldSize()I

    move-result p0

    .line 932
    sparse-switch p0, :sswitch_data_1a

    .line 942
    const/4 p0, -0x1

    return p0

    .line 940
    :sswitch_11
    const/4 p0, 0x3

    return p0

    .line 938
    :sswitch_13
    const/4 p0, 0x2

    return p0

    .line 936
    :sswitch_15
    const/4 p0, 0x1

    return p0

    .line 934
    :sswitch_17
    const/4 p0, 0x0

    return p0

    nop

    :sswitch_data_1a
    .sparse-switch
        0xe0 -> :sswitch_17
        0x100 -> :sswitch_15
        0x180 -> :sswitch_13
        0x209 -> :sswitch_11
    .end sparse-switch
.end method
