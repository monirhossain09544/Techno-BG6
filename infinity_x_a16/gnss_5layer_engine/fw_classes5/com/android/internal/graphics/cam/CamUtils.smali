.class public final Lcom/android/internal/graphics/cam/CamUtils;
.super Ljava/lang/Object;
.source "CamUtils.java"


# static fields
.field static final blacklist CAM16RGB_TO_XYZ:[[F

.field static final blacklist SRGB_TO_XYZ:[[D

.field static final blacklist WHITE_POINT_D65:[F

.field static final blacklist XYZ_TO_CAM16RGB:[[F

.field static final blacklist XYZ_TO_SRGB:[[D


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 4

    .line 55
    const/4 v0, 0x3

    new-array v1, v0, [F

    fill-array-data v1, :array_5e

    new-array v2, v0, [F

    fill-array-data v2, :array_68

    new-array v3, v0, [F

    fill-array-data v3, :array_72

    filled-new-array {v1, v2, v3}, [[F

    move-result-object v1

    sput-object v1, Lcom/android/internal/graphics/cam/CamUtils;->XYZ_TO_CAM16RGB:[[F

    .line 62
    new-array v1, v0, [F

    fill-array-data v1, :array_7c

    new-array v2, v0, [F

    fill-array-data v2, :array_86

    new-array v3, v0, [F

    fill-array-data v3, :array_90

    filled-new-array {v1, v2, v3}, [[F

    move-result-object v1

    sput-object v1, Lcom/android/internal/graphics/cam/CamUtils;->CAM16RGB_TO_XYZ:[[F

    .line 72
    new-array v1, v0, [F

    fill-array-data v1, :array_9a

    sput-object v1, Lcom/android/internal/graphics/cam/CamUtils;->WHITE_POINT_D65:[F

    .line 78
    new-array v1, v0, [D

    fill-array-data v1, :array_a4

    new-array v2, v0, [D

    fill-array-data v2, :array_b4

    new-array v3, v0, [D

    fill-array-data v3, :array_c4

    filled-new-array {v1, v2, v3}, [[D

    move-result-object v1

    sput-object v1, Lcom/android/internal/graphics/cam/CamUtils;->SRGB_TO_XYZ:[[D

    .line 85
    new-array v1, v0, [D

    fill-array-data v1, :array_d4

    new-array v2, v0, [D

    fill-array-data v2, :array_e4

    new-array v0, v0, [D

    fill-array-data v0, :array_f4

    filled-new-array {v1, v2, v0}, [[D

    move-result-object v0

    sput-object v0, Lcom/android/internal/graphics/cam/CamUtils;->XYZ_TO_SRGB:[[D

    return-void

    nop

    :array_5e
    .array-data 4
        0x3ecd759f
        0x3f2671bd
        -0x42ad373b    # -0.051461f
    .end array-data

    :array_68
    .array-data 4
        -0x417fdcdf
        0x3f9a2a3d
        0x3d3bd167
    .end array-data

    :array_72
    .array-data 4
        -0x44f7c02b    # -0.002079f
        0x3d4881e4
        0x3f740022
    .end array-data

    :array_7c
    .array-data 4
        0x3fee583d
        -0x407e8f35
        0x3e18c46b
    .end array-data

    :array_86
    .array-data 4
        0x3ec669e1
        0x3f1f172e
        -0x43ecf866
    .end array-data

    :array_90
    .array-data 4
        -0x437e39f7
        -0x42f43b81
        0x3f86653c
    .end array-data

    :array_9a
    .array-data 4
        0x42be1810
        0x42c80000    # 100.0f
        0x42d9c419
    .end array-data

    :array_a4
    .array-data 8
        0x3fda63c2e8477c96L    # 0.41233895
        0x3fd6e341ae4b2c79L    # 0.35762064
        0x3fc71af7273e5d5eL    # 0.18051042
    .end array-data

    :array_b4
    .array-data 8
        0x3fcb367a0f9096bcL    # 0.2126
        0x3fe6e2eb1c432ca5L    # 0.7152
        0x3fb27bb2fec56d5dL    # 0.0722
    .end array-data

    :array_c4
    .array-data 8
        0x3f93c8fde0401c25L    # 0.01932141
        0x3fbe818525c434ceL    # 0.11916382
        0x3fee693974c0c730L    # 0.95034478
    .end array-data

    :array_d4
    .array-data 8
        0x4009ee5750da932bL    # 3.2413774792388685
        -0x400765b9220c7764L    # -1.5376652402851851
        -0x402012c8101da46cL    # -0.49885366846268053
    .end array-data

    :array_e4
    .array-data 8
        -0x4010fcc31912e57cL    # -0.9691452513005321
        0x3ffe03a05a04781dL    # 1.8758853451067872
        0x3fa5481eb1c0d367L    # 0.04156585616912061
    .end array-data

    :array_f4
    .array-data 8
        0x3fac7a58f1e3e6efL    # 0.05562093689691305
        -0x4035e4cb650c5ffeL    # -0.20395524564742123
        0x3ff0ea357b841dfcL    # 1.0571799111220335
    .end array-data
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    return-void
.end method

.method public static blacklist argbFromLinrgb([D)I
    .registers 5

    .line 148
    const/4 v0, 0x0

    aget-wide v0, p0, v0

    invoke-static {v0, v1}, Lcom/android/internal/graphics/cam/CamUtils;->delinearized(D)I

    move-result v0

    .line 149
    const/4 v1, 0x1

    aget-wide v1, p0, v1

    invoke-static {v1, v2}, Lcom/android/internal/graphics/cam/CamUtils;->delinearized(D)I

    move-result v1

    .line 150
    const/4 v2, 0x2

    aget-wide v2, p0, v2

    invoke-static {v2, v3}, Lcom/android/internal/graphics/cam/CamUtils;->delinearized(D)I

    move-result p0

    .line 151
    invoke-static {v0, v1, p0}, Lcom/android/internal/graphics/cam/CamUtils;->argbFromRgb(III)I

    move-result p0

    return p0
.end method

.method public static blacklist argbFromLinrgbComponents(DDD)I
    .registers 6

    .line 156
    invoke-static {p0, p1}, Lcom/android/internal/graphics/cam/CamUtils;->delinearized(D)I

    move-result p0

    invoke-static {p2, p3}, Lcom/android/internal/graphics/cam/CamUtils;->delinearized(D)I

    move-result p1

    invoke-static {p4, p5}, Lcom/android/internal/graphics/cam/CamUtils;->delinearized(D)I

    move-result p2

    invoke-static {p0, p1, p2}, Lcom/android/internal/graphics/cam/CamUtils;->argbFromRgb(III)I

    move-result p0

    return p0
.end method

.method public static blacklist argbFromLstar(D)I
    .registers 19

    .line 120
    const-wide/high16 v0, 0x4030000000000000L    # 16.0

    add-double v0, p0, v0

    const-wide/high16 v2, 0x405d000000000000L    # 116.0

    div-double/2addr v0, v2

    .line 121
    nop

    .line 122
    nop

    .line 123
    nop

    .line 124
    nop

    .line 125
    const-wide/high16 v2, 0x4020000000000000L    # 8.0

    cmpl-double v2, p0, v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-lez v2, :cond_15

    move v2, v3

    goto :goto_16

    :cond_15
    move v2, v4

    .line 126
    :goto_16
    const-wide v5, 0x408c3a5ed097b426L    # 903.2962962962963

    if-eqz v2, :cond_21

    mul-double v7, v0, v0

    mul-double/2addr v7, v0

    goto :goto_23

    :cond_21
    div-double v7, p0, v5

    .line 127
    :goto_23
    mul-double v9, v0, v0

    mul-double/2addr v9, v0

    const-wide v0, 0x3f822354d28f7cd6L    # 0.008856451679035631

    cmpl-double v0, v9, v0

    if-lez v0, :cond_31

    move v0, v3

    goto :goto_32

    :cond_31
    move v0, v4

    .line 128
    :goto_32
    if-eqz v0, :cond_36

    move-wide v1, v9

    goto :goto_38

    :cond_36
    div-double v1, p0, v5

    .line 129
    :goto_38
    if-eqz v0, :cond_3b

    goto :goto_3d

    :cond_3b
    div-double v9, p0, v5

    .line 130
    :goto_3d
    sget-object v0, Lcom/android/internal/graphics/cam/CamUtils;->WHITE_POINT_D65:[F

    .line 131
    aget v4, v0, v4

    float-to-double v4, v4

    mul-double v11, v1, v4

    aget v1, v0, v3

    float-to-double v1, v1

    mul-double v13, v7, v1

    const/4 v1, 0x2

    aget v0, v0, v1

    float-to-double v0, v0

    mul-double v15, v9, v0

    invoke-static/range {v11 .. v16}, Lcom/android/internal/graphics/cam/CamUtils;->argbFromXyz(DDD)I

    move-result v0

    return v0
.end method

.method public static blacklist argbFromRgb(III)I
    .registers 4

    .line 193
    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x10

    const/high16 v0, -0x1000000

    or-int/2addr p0, v0

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x8

    or-int/2addr p0, p1

    and-int/lit16 p1, p2, 0xff

    or-int/2addr p0, p1

    return p0
.end method

.method public static blacklist argbFromXyz(DDD)I
    .registers 17

    .line 136
    sget-object v0, Lcom/android/internal/graphics/cam/CamUtils;->XYZ_TO_SRGB:[[D

    .line 137
    const/4 v1, 0x0

    aget-object v2, v0, v1

    aget-wide v2, v2, v1

    mul-double/2addr v2, p0

    aget-object v4, v0, v1

    const/4 v5, 0x1

    aget-wide v6, v4, v5

    mul-double/2addr v6, p2

    add-double/2addr v2, v6

    aget-object v4, v0, v1

    const/4 v6, 0x2

    aget-wide v7, v4, v6

    mul-double/2addr v7, p4

    add-double/2addr v2, v7

    .line 138
    aget-object v4, v0, v5

    aget-wide v7, v4, v1

    mul-double/2addr v7, p0

    aget-object v4, v0, v5

    aget-wide v9, v4, v5

    mul-double/2addr v9, p2

    add-double/2addr v7, v9

    aget-object v4, v0, v5

    aget-wide v9, v4, v6

    mul-double/2addr v9, p4

    add-double/2addr v7, v9

    .line 139
    aget-object v4, v0, v6

    aget-wide v9, v4, v1

    mul-double/2addr v9, p0

    aget-object p0, v0, v6

    aget-wide p0, p0, v5

    mul-double/2addr p0, p2

    add-double/2addr v9, p0

    aget-object p0, v0, v6

    aget-wide p0, p0, v6

    mul-double/2addr p0, p4

    add-double/2addr v9, p0

    .line 140
    invoke-static {v2, v3}, Lcom/android/internal/graphics/cam/CamUtils;->delinearized(D)I

    move-result p0

    .line 141
    invoke-static {v7, v8}, Lcom/android/internal/graphics/cam/CamUtils;->delinearized(D)I

    move-result p1

    .line 142
    invoke-static {v9, v10}, Lcom/android/internal/graphics/cam/CamUtils;->delinearized(D)I

    move-result p2

    .line 143
    invoke-static {p0, p1, p2}, Lcom/android/internal/graphics/cam/CamUtils;->argbFromRgb(III)I

    move-result p0

    return p0
.end method

.method public static blacklist clampInt(III)I
    .registers 3

    .line 182
    if-ge p2, p0, :cond_3

    .line 183
    return p0

    .line 184
    :cond_3
    if-le p2, p1, :cond_6

    .line 185
    return p1

    .line 188
    :cond_6
    return p2
.end method

.method public static blacklist delinearized(D)I
    .registers 4

    .line 166
    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    div-double/2addr p0, v0

    .line 167
    nop

    .line 168
    const-wide v0, 0x3f69a5c37387b719L    # 0.0031308

    cmpg-double v0, p0, v0

    if-gtz v0, :cond_14

    .line 169
    const-wide v0, 0x4029d70a3d70a3d7L    # 12.92

    mul-double/2addr p0, v0

    goto :goto_29

    .line 171
    :cond_14
    const-wide v0, 0x3fdaaaaaaaaaaaabL    # 0.4166666666666667

    invoke-static {p0, p1, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    const-wide v0, 0x3ff0e147ae147ae1L    # 1.055

    mul-double/2addr p0, v0

    const-wide v0, 0x3fac28f5c28f5c29L    # 0.055

    sub-double/2addr p0, v0

    .line 173
    :goto_29
    const-wide v0, 0x406fe00000000000L    # 255.0

    mul-double/2addr p0, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    move-result-wide p0

    long-to-int p0, p0

    const/4 p1, 0x0

    const/16 v0, 0xff

    invoke-static {p1, v0, p0}, Lcom/android/internal/graphics/cam/CamUtils;->clampInt(III)I

    move-result p0

    return p0
.end method

.method static blacklist intFromLstar(F)I
    .registers 16

    .line 197
    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p0, v0

    if-gez v0, :cond_9

    .line 198
    const/high16 p0, -0x1000000

    return p0

    .line 199
    :cond_9
    const/high16 v0, 0x42c60000    # 99.0f

    cmpl-float v0, p0, v0

    if-lez v0, :cond_11

    .line 200
    const/4 p0, -0x1

    return p0

    .line 204
    :cond_11
    const/high16 v0, 0x41800000    # 16.0f

    add-float v1, p0, v0

    const/high16 v2, 0x42e80000    # 116.0f

    div-float/2addr v1, v2

    .line 207
    nop

    .line 208
    nop

    .line 210
    nop

    .line 211
    nop

    .line 212
    const/high16 v3, 0x41000000    # 8.0f

    cmpl-float v3, p0, v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-lez v3, :cond_26

    move v3, v4

    goto :goto_27

    :cond_26
    move v3, v5

    .line 213
    :goto_27
    const v6, 0x4461d2f7

    if-eqz v3, :cond_30

    mul-float p0, v1, v1

    mul-float/2addr p0, v1

    goto :goto_31

    :cond_30
    div-float/2addr p0, v6

    .line 214
    :goto_31
    mul-float v3, v1, v1

    mul-float/2addr v3, v1

    const v7, 0x3c111aa7

    cmpl-float v7, v3, v7

    if-lez v7, :cond_3d

    move v7, v4

    goto :goto_3e

    :cond_3d
    move v7, v5

    .line 215
    :goto_3e
    if-eqz v7, :cond_42

    move v8, v3

    goto :goto_46

    :cond_42
    mul-float v8, v1, v2

    sub-float/2addr v8, v0

    div-float/2addr v8, v6

    .line 216
    :goto_46
    if-eqz v7, :cond_49

    goto :goto_4d

    :cond_49
    mul-float/2addr v1, v2

    sub-float/2addr v1, v0

    div-float v3, v1, v6

    .line 218
    :goto_4d
    sget-object v0, Lcom/android/internal/graphics/cam/CamUtils;->WHITE_POINT_D65:[F

    aget v0, v0, v5

    mul-float/2addr v8, v0

    float-to-double v9, v8

    sget-object v0, Lcom/android/internal/graphics/cam/CamUtils;->WHITE_POINT_D65:[F

    aget v0, v0, v4

    mul-float/2addr p0, v0

    float-to-double v11, p0

    sget-object p0, Lcom/android/internal/graphics/cam/CamUtils;->WHITE_POINT_D65:[F

    const/4 v0, 0x2

    aget p0, p0, v0

    mul-float/2addr v3, p0

    float-to-double v13, v3

    invoke-static/range {v9 .. v14}, Lcom/android/internal/graphics/ColorUtils;->XYZToColor(DDD)I

    move-result p0

    return p0
.end method

.method static blacklist linearized(I)F
    .registers 7

    .line 282
    int-to-float p0, p0

    const/high16 v0, 0x437f0000    # 255.0f

    div-float/2addr p0, v0

    .line 284
    const v0, 0x3d25aee6    # 0.04045f

    cmpg-float v0, p0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    if-gtz v0, :cond_13

    .line 285
    const v0, 0x414eb852    # 12.92f

    div-float/2addr p0, v0

    mul-float/2addr p0, v1

    return p0

    .line 287
    :cond_13
    const v0, 0x3d6147ae    # 0.055f

    add-float/2addr p0, v0

    const v0, 0x3f870a3d    # 1.055f

    div-float/2addr p0, v0

    float-to-double v2, p0

    const-wide v4, 0x4003333340000000L    # 2.4000000953674316

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float p0, v2

    mul-float/2addr p0, v1

    return p0
.end method

.method public static blacklist lstarFromInt(I)F
    .registers 1

    .line 224
    invoke-static {p0}, Lcom/android/internal/graphics/cam/CamUtils;->yFromInt(I)F

    move-result p0

    invoke-static {p0}, Lcom/android/internal/graphics/cam/CamUtils;->lstarFromY(F)F

    move-result p0

    return p0
.end method

.method static blacklist lstarFromY(F)F
    .registers 3

    .line 228
    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p0, v0

    .line 231
    const v0, 0x3c111aa7

    cmpg-float v0, p0, v0

    if-gtz v0, :cond_f

    .line 232
    const v0, 0x4461d2f7

    mul-float/2addr p0, v0

    return p0

    .line 234
    :cond_f
    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->cbrt(D)D

    move-result-wide v0

    double-to-float p0, v0

    .line 236
    const/high16 v0, 0x42e80000    # 116.0f

    mul-float/2addr p0, v0

    const/high16 v0, 0x41800000    # 16.0f

    sub-float/2addr p0, v0

    return p0
.end method

.method public static blacklist signum(D)I
    .registers 5

    .line 104
    const-wide/16 v0, 0x0

    cmpg-double v2, p0, v0

    if-gez v2, :cond_8

    .line 105
    const/4 p0, -0x1

    return p0

    .line 106
    :cond_8
    cmpl-double p0, p0, v0

    if-nez p0, :cond_e

    .line 107
    const/4 p0, 0x0

    return p0

    .line 109
    :cond_e
    const/4 p0, 0x1

    return p0
.end method

.method static blacklist xyzFromInt(I)[F
    .registers 18

    .line 250
    invoke-static/range {p0 .. p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/graphics/cam/CamUtils;->linearized(I)F

    move-result v0

    .line 251
    invoke-static/range {p0 .. p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {v1}, Lcom/android/internal/graphics/cam/CamUtils;->linearized(I)F

    move-result v1

    .line 252
    invoke-static/range {p0 .. p0}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    invoke-static {v2}, Lcom/android/internal/graphics/cam/CamUtils;->linearized(I)F

    move-result v2

    .line 254
    sget-object v3, Lcom/android/internal/graphics/cam/CamUtils;->SRGB_TO_XYZ:[[D

    .line 255
    float-to-double v4, v0

    const/4 v0, 0x0

    aget-object v6, v3, v0

    aget-wide v6, v6, v0

    mul-double/2addr v6, v4

    float-to-double v8, v1

    aget-object v1, v3, v0

    const/4 v10, 0x1

    aget-wide v11, v1, v10

    mul-double/2addr v11, v8

    add-double/2addr v6, v11

    float-to-double v1, v2

    aget-object v11, v3, v0

    const/4 v12, 0x2

    aget-wide v13, v11, v12

    mul-double/2addr v13, v1

    add-double/2addr v6, v13

    .line 256
    aget-object v11, v3, v10

    aget-wide v13, v11, v0

    mul-double/2addr v13, v4

    aget-object v11, v3, v10

    aget-wide v15, v11, v10

    mul-double/2addr v15, v8

    add-double/2addr v13, v15

    aget-object v11, v3, v10

    aget-wide v15, v11, v12

    mul-double/2addr v15, v1

    add-double/2addr v13, v15

    .line 257
    aget-object v11, v3, v12

    aget-wide v15, v11, v0

    mul-double/2addr v4, v15

    aget-object v11, v3, v12

    aget-wide v15, v11, v10

    mul-double/2addr v8, v15

    add-double/2addr v4, v8

    aget-object v3, v3, v12

    aget-wide v8, v3, v12

    mul-double/2addr v1, v8

    add-double/2addr v4, v1

    .line 258
    double-to-float v1, v6

    double-to-float v2, v13

    double-to-float v3, v4

    const/4 v4, 0x3

    new-array v4, v4, [F

    aput v1, v4, v0

    aput v2, v4, v10

    aput v3, v4, v12

    return-object v4
.end method

.method static blacklist yFromInt(I)F
    .registers 10

    .line 240
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/graphics/cam/CamUtils;->linearized(I)F

    move-result v0

    .line 241
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {v1}, Lcom/android/internal/graphics/cam/CamUtils;->linearized(I)F

    move-result v1

    .line 242
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    invoke-static {p0}, Lcom/android/internal/graphics/cam/CamUtils;->linearized(I)F

    move-result p0

    .line 243
    sget-object v2, Lcom/android/internal/graphics/cam/CamUtils;->SRGB_TO_XYZ:[[D

    .line 244
    float-to-double v3, v0

    const/4 v0, 0x1

    aget-object v5, v2, v0

    const/4 v6, 0x0

    aget-wide v5, v5, v6

    mul-double/2addr v3, v5

    float-to-double v5, v1

    aget-object v1, v2, v0

    aget-wide v7, v1, v0

    mul-double/2addr v5, v7

    add-double/2addr v3, v5

    float-to-double v5, p0

    aget-object p0, v2, v0

    const/4 v0, 0x2

    aget-wide v0, p0, v0

    mul-double/2addr v5, v0

    add-double/2addr v3, v5

    .line 245
    double-to-float p0, v3

    return p0
.end method

.method public static blacklist yFromLstar(D)D
    .registers 7

    .line 273
    nop

    .line 274
    const-wide/high16 v0, 0x4020000000000000L    # 8.0

    cmpl-double v0, p0, v0

    const-wide/high16 v1, 0x4059000000000000L    # 100.0

    if-lez v0, :cond_17

    .line 275
    const-wide/high16 v3, 0x4030000000000000L    # 16.0

    add-double/2addr p0, v3

    const-wide/high16 v3, 0x405d000000000000L    # 116.0

    div-double/2addr p0, v3

    const-wide/high16 v3, 0x4008000000000000L    # 3.0

    invoke-static {p0, p1, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    mul-double/2addr p0, v1

    return-wide p0

    .line 277
    :cond_17
    const-wide v3, 0x408c3a5ed097b426L    # 903.2962962962963

    div-double/2addr p0, v3

    mul-double/2addr p0, v1

    return-wide p0
.end method
