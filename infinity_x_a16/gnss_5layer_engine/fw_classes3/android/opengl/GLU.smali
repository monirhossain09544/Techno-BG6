.class public Landroid/opengl/GLU;
.super Ljava/lang/Object;
.source "GLU.java"


# static fields
.field private static final greylist-max-o sScratch:[F


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 244
    const/16 v0, 0x20

    new-array v0, v0, [F

    sput-object v0, Landroid/opengl/GLU;->sScratch:[F

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist gluErrorString(I)Ljava/lang/String;
    .registers 1

    .line 36
    sparse-switch p0, :sswitch_data_1e

    .line 52
    const/4 p0, 0x0

    return-object p0

    .line 50
    :sswitch_5
    const-string/jumbo p0, "out of memory"

    return-object p0

    .line 48
    :sswitch_9
    const-string/jumbo p0, "stack underflow"

    return-object p0

    .line 46
    :sswitch_d
    const-string/jumbo p0, "stack overflow"

    return-object p0

    .line 44
    :sswitch_11
    const-string p0, "invalid operation"

    return-object p0

    .line 42
    :sswitch_14
    const-string p0, "invalid value"

    return-object p0

    .line 40
    :sswitch_17
    const-string p0, "invalid enum"

    return-object p0

    .line 38
    :sswitch_1a
    const-string/jumbo p0, "no error"

    return-object p0

    :sswitch_data_1e
    .sparse-switch
        0x0 -> :sswitch_1a
        0x500 -> :sswitch_17
        0x501 -> :sswitch_14
        0x502 -> :sswitch_11
        0x503 -> :sswitch_d
        0x504 -> :sswitch_9
        0x505 -> :sswitch_5
    .end sparse-switch
.end method

.method public static whitelist gluLookAt(Ljavax/microedition/khronos/opengles/GL10;FFFFFFFFF)V
    .registers 22

    .line 75
    sget-object v1, Landroid/opengl/GLU;->sScratch:[F

    .line 76
    monitor-enter v1

    .line 77
    const/4 v2, 0x0

    move v3, p1

    move v4, p2

    move v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    :try_start_13
    invoke-static/range {v1 .. v11}, Landroid/opengl/Matrix;->setLookAtM([FIFFFFFFFFF)V

    .line 79
    const/4 p1, 0x0

    invoke-interface {p0, v1, p1}, Ljavax/microedition/khronos/opengles/GL10;->glMultMatrixf([FI)V

    .line 80
    monitor-exit v1

    .line 81
    return-void

    .line 80
    :catchall_1c
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_13 .. :try_end_1f} :catchall_1c

    throw p0
.end method

.method public static whitelist gluOrtho2D(Ljavax/microedition/khronos/opengles/GL10;FFFF)V
    .registers 12

    .line 94
    const/high16 v5, -0x40800000    # -1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-interface/range {v0 .. v6}, Ljavax/microedition/khronos/opengles/GL10;->glOrthof(FFFFFF)V

    .line 95
    return-void
.end method

.method public static whitelist gluPerspective(Ljavax/microedition/khronos/opengles/GL10;FFFF)V
    .registers 12

    .line 113
    float-to-double v0, p1

    const-wide v2, 0x3f81df46a2529d39L    # 0.008726646259971648

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    double-to-float p1, v0

    mul-float v4, p3, p1

    .line 114
    neg-float v3, v4

    .line 115
    mul-float v1, v3, p2

    .line 116
    mul-float v2, v4, p2

    .line 117
    move-object v0, p0

    move v5, p3

    move v6, p4

    invoke-interface/range {v0 .. v6}, Ljavax/microedition/khronos/opengles/GL10;->glFrustumf(FFFFFF)V

    .line 118
    return-void
.end method

.method public static whitelist gluProject(FFF[FI[FI[II[FI)I
    .registers 18

    .line 150
    sget-object v1, Landroid/opengl/GLU;->sScratch:[F

    .line 151
    monitor-enter v1

    .line 155
    const/4 v2, 0x0

    move-object v5, p3

    move v6, p4

    move-object v3, p5

    move v4, p6

    :try_start_8
    invoke-static/range {v1 .. v6}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 158
    const/16 p3, 0x10

    aput p0, v1, p3

    .line 159
    const/16 p0, 0x11

    aput p1, v1, p0

    .line 160
    const/16 p0, 0x12

    aput p2, v1, p0

    .line 161
    const/16 p0, 0x13

    const/high16 p6, 0x3f800000    # 1.0f

    aput p6, v1, p0
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_73

    .line 163
    const/4 p3, 0x0

    const/16 p5, 0x10

    const/16 p1, 0x14

    move-object p2, v1

    move-object p4, v1

    move-object p0, v1

    :try_start_25
    invoke-static/range {p0 .. p5}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_70

    .line 166
    const/16 p0, 0x17

    :try_start_2a
    aget p0, v1, p0

    .line 167
    const/4 p1, 0x0

    cmpl-float p1, p0, p1

    if-nez p1, :cond_34

    .line 168
    monitor-exit v1

    const/4 p0, 0x0

    return p0

    .line 171
    :cond_34
    div-float p0, p6, p0

    .line 173
    aget p1, p7, p8

    int-to-float p1, p1

    add-int/lit8 p2, p8, 0x2

    aget p2, p7, p2

    int-to-float p2, p2

    const/16 p3, 0x14

    aget p3, v1, p3

    mul-float/2addr p3, p0

    add-float/2addr p3, p6

    mul-float/2addr p2, p3

    const/high16 p3, 0x3f000000    # 0.5f

    mul-float/2addr p2, p3

    add-float/2addr p1, p2

    aput p1, p9, p10

    .line 177
    add-int/lit8 p1, p10, 0x1

    add-int/lit8 p2, p8, 0x1

    aget p2, p7, p2

    int-to-float p2, p2

    add-int/lit8 p4, p8, 0x3

    aget p4, p7, p4

    int-to-float p4, p4

    const/16 p5, 0x15

    aget p5, v1, p5

    mul-float/2addr p5, p0

    add-float/2addr p5, p6

    mul-float/2addr p4, p5

    mul-float/2addr p4, p3

    add-float/2addr p2, p4

    aput p2, p9, p1

    .line 180
    add-int/lit8 p1, p10, 0x2

    const/16 p2, 0x16

    aget p2, v1, p2

    mul-float/2addr p2, p0

    add-float/2addr p2, p6

    mul-float/2addr p2, p3

    aput p2, p9, p1

    .line 181
    monitor-exit v1

    .line 183
    const/4 p0, 0x1

    return p0

    .line 181
    :catchall_70
    move-exception v0

    move-object v1, p0

    goto :goto_74

    :catchall_73
    move-exception v0

    :goto_74
    move-object p0, v0

    monitor-exit v1
    :try_end_76
    .catchall {:try_start_2a .. :try_end_76} :catchall_73

    throw p0
.end method

.method public static whitelist gluUnProject(FFF[FI[FI[II[FI)I
    .registers 18

    .line 216
    sget-object v1, Landroid/opengl/GLU;->sScratch:[F

    .line 217
    monitor-enter v1

    .line 221
    const/4 v2, 0x0

    move-object v5, p3

    move v6, p4

    move-object v3, p5

    move v4, p6

    :try_start_8
    invoke-static/range {v1 .. v6}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 224
    const/16 p3, 0x10

    const/4 p4, 0x0

    invoke-static {v1, p3, v1, p4}, Landroid/opengl/Matrix;->invertM([FI[FI)Z

    move-result p3

    if-nez p3, :cond_16

    .line 225
    monitor-exit v1

    return p4

    .line 228
    :cond_16
    add-int/lit8 p3, p8, 0x0

    aget p3, p7, p3

    int-to-float p3, p3

    sub-float/2addr p0, p3

    const/high16 p3, 0x40000000    # 2.0f

    mul-float/2addr p0, p3

    add-int/lit8 p5, p8, 0x2

    aget p5, p7, p5

    int-to-float p5, p5

    div-float/2addr p0, p5

    const/high16 p5, 0x3f800000    # 1.0f

    sub-float/2addr p0, p5

    aput p0, v1, p4

    .line 231
    add-int/lit8 p0, p8, 0x1

    aget p0, p7, p0

    int-to-float p0, p0

    sub-float/2addr p1, p0

    mul-float/2addr p1, p3

    const/4 p0, 0x3

    add-int/2addr p8, p0

    aget p4, p7, p8

    int-to-float p4, p4

    div-float/2addr p1, p4

    sub-float/2addr p1, p5

    const/4 p6, 0x1

    aput p1, v1, p6

    .line 234
    mul-float/2addr p2, p3

    sub-float/2addr p2, p5

    const/4 p1, 0x2

    aput p2, v1, p1

    .line 235
    aput p5, v1, p0
    :try_end_42
    .catchall {:try_start_8 .. :try_end_42} :catchall_53

    .line 237
    const/16 p3, 0x10

    const/4 p5, 0x0

    move-object p4, v1

    move-object/from16 p0, p9

    move/from16 p1, p10

    move-object p2, v1

    :try_start_4b
    invoke-static/range {p0 .. p5}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V
    :try_end_4e
    .catchall {:try_start_4b .. :try_end_4e} :catchall_50

    .line 239
    :try_start_4e
    monitor-exit v1

    .line 241
    return p6

    .line 239
    :catchall_50
    move-exception v0

    move-object v1, p2

    goto :goto_54

    :catchall_53
    move-exception v0

    :goto_54
    move-object p0, v0

    monitor-exit v1
    :try_end_56
    .catchall {:try_start_4e .. :try_end_56} :catchall_53

    throw p0
.end method
