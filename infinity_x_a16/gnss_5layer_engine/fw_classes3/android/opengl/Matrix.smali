.class public Landroid/opengl/Matrix;
.super Ljava/lang/Object;
.source "Matrix.java"


# static fields
.field private static final blacklist ThreadTmp:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "[F>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 43
    new-instance v0, Landroid/opengl/Matrix$1;

    invoke-direct {v0}, Landroid/opengl/Matrix$1;-><init>()V

    sput-object v0, Landroid/opengl/Matrix;->ThreadTmp:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist frustumM([FIFFFFFF)V
    .registers 15

    .line 500
    cmpl-float v0, p2, p3

    if-eqz v0, :cond_98

    .line 503
    cmpl-float v0, p5, p4

    if-eqz v0, :cond_8f

    .line 506
    cmpl-float v0, p6, p7

    if-eqz v0, :cond_87

    .line 509
    const/4 v0, 0x0

    cmpg-float v1, p6, v0

    if-lez v1, :cond_7f

    .line 512
    cmpg-float v1, p7, v0

    if-lez v1, :cond_77

    .line 515
    sub-float v1, p3, p2

    const/high16 v2, 0x3f800000    # 1.0f

    div-float v1, v2, v1

    .line 516
    sub-float v3, p5, p4

    div-float v3, v2, v3

    .line 517
    sub-float v4, p6, p7

    div-float/2addr v2, v4

    .line 518
    mul-float v4, p6, v1

    const/high16 v5, 0x40000000    # 2.0f

    mul-float/2addr v4, v5

    .line 519
    mul-float v6, p6, v3

    mul-float/2addr v6, v5

    .line 520
    add-float/2addr p3, p2

    mul-float/2addr p3, v1

    .line 521
    add-float/2addr p5, p4

    mul-float/2addr p5, v3

    .line 522
    add-float p2, p7, p6

    mul-float/2addr p2, v2

    .line 523
    mul-float/2addr p7, p6

    mul-float/2addr p7, v2

    mul-float/2addr p7, v5

    .line 524
    add-int/lit8 p4, p1, 0x0

    aput v4, p0, p4

    .line 525
    add-int/lit8 p4, p1, 0x5

    aput v6, p0, p4

    .line 526
    add-int/lit8 p4, p1, 0x8

    aput p3, p0, p4

    .line 527
    add-int/lit8 p3, p1, 0x9

    aput p5, p0, p3

    .line 528
    add-int/lit8 p3, p1, 0xa

    aput p2, p0, p3

    .line 529
    add-int/lit8 p2, p1, 0xe

    aput p7, p0, p2

    .line 530
    add-int/lit8 p2, p1, 0xb

    const/high16 p3, -0x40800000    # -1.0f

    aput p3, p0, p2

    .line 531
    add-int/lit8 p2, p1, 0x1

    aput v0, p0, p2

    .line 532
    add-int/lit8 p2, p1, 0x2

    aput v0, p0, p2

    .line 533
    add-int/lit8 p2, p1, 0x3

    aput v0, p0, p2

    .line 534
    add-int/lit8 p2, p1, 0x4

    aput v0, p0, p2

    .line 535
    add-int/lit8 p2, p1, 0x6

    aput v0, p0, p2

    .line 536
    add-int/lit8 p2, p1, 0x7

    aput v0, p0, p2

    .line 537
    add-int/lit8 p2, p1, 0xc

    aput v0, p0, p2

    .line 538
    add-int/lit8 p2, p1, 0xd

    aput v0, p0, p2

    .line 539
    add-int/lit8 p1, p1, 0xf

    aput v0, p0, p1

    .line 540
    return-void

    .line 513
    :cond_77
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "far <= 0.0f"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 510
    :cond_7f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "near <= 0.0f"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 507
    :cond_87
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "near == far"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 504
    :cond_8f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "top == bottom"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 501
    :cond_98
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "left == right"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static whitelist invertM([FI[FI)Z
    .registers 41

    .line 314
    add-int/lit8 v0, p3, 0x0

    aget v0, p2, v0

    .line 315
    add-int/lit8 v1, p3, 0x1

    aget v1, p2, v1

    .line 316
    add-int/lit8 v2, p3, 0x2

    aget v2, p2, v2

    .line 317
    add-int/lit8 v3, p3, 0x3

    aget v3, p2, v3

    .line 319
    add-int/lit8 v4, p3, 0x4

    aget v4, p2, v4

    .line 320
    add-int/lit8 v5, p3, 0x5

    aget v5, p2, v5

    .line 321
    add-int/lit8 v6, p3, 0x6

    aget v6, p2, v6

    .line 322
    add-int/lit8 v7, p3, 0x7

    aget v7, p2, v7

    .line 324
    add-int/lit8 v8, p3, 0x8

    aget v8, p2, v8

    .line 325
    add-int/lit8 v9, p3, 0x9

    aget v9, p2, v9

    .line 326
    add-int/lit8 v10, p3, 0xa

    aget v10, p2, v10

    .line 327
    add-int/lit8 v11, p3, 0xb

    aget v11, p2, v11

    .line 329
    add-int/lit8 v12, p3, 0xc

    aget v12, p2, v12

    .line 330
    add-int/lit8 v13, p3, 0xd

    aget v13, p2, v13

    .line 331
    add-int/lit8 v14, p3, 0xe

    aget v14, p2, v14

    .line 332
    add-int/lit8 v15, p3, 0xf

    aget v15, p2, v15

    .line 335
    mul-float v16, v10, v15

    .line 336
    mul-float v17, v14, v11

    .line 337
    mul-float v18, v6, v15

    .line 338
    mul-float v19, v14, v7

    .line 339
    mul-float v20, v6, v11

    .line 340
    mul-float v21, v10, v7

    .line 341
    mul-float v22, v2, v15

    .line 342
    mul-float v23, v14, v3

    .line 343
    mul-float v24, v2, v11

    .line 344
    mul-float v25, v10, v3

    .line 345
    mul-float v26, v2, v7

    .line 346
    mul-float v27, v6, v3

    .line 349
    mul-float v28, v16, v5

    mul-float v29, v19, v9

    add-float v28, v28, v29

    mul-float v29, v20, v13

    add-float v28, v28, v29

    mul-float v29, v17, v5

    mul-float v30, v18, v9

    add-float v29, v29, v30

    mul-float v30, v21, v13

    add-float v29, v29, v30

    sub-float v28, v28, v29

    .line 351
    mul-float v29, v17, v1

    mul-float v30, v22, v9

    add-float v29, v29, v30

    mul-float v30, v25, v13

    add-float v29, v29, v30

    mul-float v30, v16, v1

    mul-float v31, v23, v9

    add-float v30, v30, v31

    mul-float v31, v24, v13

    add-float v30, v30, v31

    sub-float v29, v29, v30

    .line 353
    mul-float v30, v18, v1

    mul-float v31, v23, v5

    add-float v30, v30, v31

    mul-float v31, v26, v13

    add-float v30, v30, v31

    mul-float v31, v19, v1

    mul-float v32, v22, v5

    add-float v31, v31, v32

    mul-float v32, v27, v13

    add-float v31, v31, v32

    sub-float v30, v30, v31

    .line 355
    mul-float v31, v21, v1

    mul-float v32, v24, v5

    add-float v31, v31, v32

    mul-float v32, v27, v9

    add-float v31, v31, v32

    mul-float v32, v20, v1

    mul-float v33, v25, v5

    add-float v32, v32, v33

    mul-float v33, v26, v9

    add-float v32, v32, v33

    sub-float v31, v31, v32

    .line 357
    mul-float v32, v17, v4

    mul-float v33, v18, v8

    add-float v32, v32, v33

    mul-float v33, v21, v12

    add-float v32, v32, v33

    mul-float v33, v16, v4

    mul-float v34, v19, v8

    add-float v33, v33, v34

    mul-float v34, v20, v12

    add-float v33, v33, v34

    sub-float v32, v32, v33

    .line 359
    mul-float v16, v16, v0

    mul-float v33, v23, v8

    add-float v16, v16, v33

    mul-float v33, v24, v12

    add-float v16, v16, v33

    mul-float v17, v17, v0

    mul-float v33, v22, v8

    add-float v17, v17, v33

    mul-float v33, v25, v12

    add-float v17, v17, v33

    sub-float v16, v16, v17

    .line 361
    mul-float v19, v19, v0

    mul-float v22, v22, v4

    add-float v19, v19, v22

    mul-float v17, v27, v12

    add-float v19, v19, v17

    mul-float v18, v18, v0

    mul-float v23, v23, v4

    add-float v18, v18, v23

    mul-float v17, v26, v12

    add-float v18, v18, v17

    sub-float v19, v19, v18

    .line 363
    mul-float v20, v20, v0

    mul-float v25, v25, v4

    add-float v20, v20, v25

    mul-float v26, v26, v8

    add-float v20, v20, v26

    mul-float v21, v21, v0

    mul-float v24, v24, v4

    add-float v21, v21, v24

    mul-float v27, v27, v8

    add-float v21, v21, v27

    sub-float v20, v20, v21

    .line 367
    mul-float v17, v8, v13

    .line 368
    mul-float v18, v12, v9

    .line 369
    mul-float v21, v4, v13

    .line 370
    mul-float v22, v12, v5

    .line 371
    mul-float v23, v4, v9

    .line 372
    mul-float v24, v8, v5

    .line 373
    mul-float/2addr v13, v0

    .line 374
    mul-float v25, v12, v1

    .line 375
    mul-float/2addr v9, v0

    .line 376
    mul-float v26, v8, v1

    .line 377
    mul-float/2addr v5, v0

    .line 378
    mul-float/2addr v1, v4

    .line 381
    mul-float v27, v17, v7

    mul-float v33, v22, v11

    add-float v27, v27, v33

    mul-float v33, v23, v15

    add-float v27, v27, v33

    mul-float v33, v18, v7

    mul-float v34, v21, v11

    add-float v33, v33, v34

    mul-float v34, v24, v15

    add-float v33, v33, v34

    sub-float v27, v27, v33

    .line 383
    mul-float v33, v18, v3

    mul-float v34, v13, v11

    add-float v33, v33, v34

    mul-float v34, v26, v15

    add-float v33, v33, v34

    mul-float v34, v17, v3

    mul-float v35, v25, v11

    add-float v34, v34, v35

    mul-float v35, v9, v15

    add-float v34, v34, v35

    sub-float v33, v33, v34

    .line 385
    mul-float v34, v21, v3

    mul-float v35, v25, v7

    add-float v34, v34, v35

    mul-float v35, v5, v15

    add-float v34, v34, v35

    mul-float v35, v22, v3

    mul-float v36, v13, v7

    add-float v35, v35, v36

    mul-float/2addr v15, v1

    add-float v35, v35, v15

    sub-float v34, v34, v35

    .line 387
    mul-float v15, v24, v3

    mul-float v35, v9, v7

    add-float v15, v15, v35

    mul-float v35, v1, v11

    add-float v15, v15, v35

    mul-float v3, v3, v23

    mul-float v7, v7, v26

    add-float/2addr v3, v7

    mul-float/2addr v11, v5

    add-float/2addr v3, v11

    sub-float/2addr v15, v3

    .line 389
    mul-float v3, v21, v10

    mul-float v7, v24, v14

    add-float/2addr v3, v7

    mul-float v7, v18, v6

    add-float/2addr v3, v7

    mul-float v7, v23, v14

    mul-float v11, v17, v6

    add-float/2addr v7, v11

    mul-float v11, v22, v10

    add-float/2addr v7, v11

    sub-float/2addr v3, v7

    .line 391
    mul-float v7, v9, v14

    mul-float v17, v17, v2

    add-float v7, v7, v17

    mul-float v11, v25, v10

    add-float/2addr v7, v11

    mul-float v11, v13, v10

    mul-float v17, v26, v14

    add-float v11, v11, v17

    mul-float v18, v18, v2

    add-float v11, v11, v18

    sub-float/2addr v7, v11

    .line 393
    mul-float/2addr v13, v6

    mul-float v11, v1, v14

    add-float/2addr v13, v11

    mul-float v22, v22, v2

    add-float v13, v13, v22

    mul-float/2addr v14, v5

    mul-float v21, v21, v2

    add-float v14, v14, v21

    mul-float v25, v25, v6

    add-float v14, v14, v25

    sub-float/2addr v13, v14

    .line 395
    mul-float/2addr v5, v10

    mul-float v23, v23, v2

    add-float v5, v5, v23

    mul-float v26, v26, v6

    add-float v5, v5, v26

    mul-float/2addr v9, v6

    mul-float/2addr v1, v10

    add-float/2addr v9, v1

    mul-float v24, v24, v2

    add-float v9, v9, v24

    sub-float/2addr v5, v9

    .line 399
    mul-float v0, v0, v28

    mul-float v4, v4, v29

    add-float/2addr v0, v4

    mul-float v8, v8, v30

    add-float/2addr v0, v8

    mul-float v12, v12, v31

    add-float/2addr v0, v12

    .line 402
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-nez v1, :cond_1c9

    .line 403
    const/4 v0, 0x0

    return v0

    .line 407
    :cond_1c9
    const/high16 v1, 0x3f800000    # 1.0f

    div-float/2addr v1, v0

    .line 408
    mul-float v28, v28, v1

    aput v28, p0, p1

    .line 409
    add-int/lit8 v0, p1, 0x1

    mul-float v29, v29, v1

    aput v29, p0, v0

    .line 410
    add-int/lit8 v0, p1, 0x2

    mul-float v30, v30, v1

    aput v30, p0, v0

    .line 411
    add-int/lit8 v0, p1, 0x3

    mul-float v31, v31, v1

    aput v31, p0, v0

    .line 413
    add-int/lit8 v0, p1, 0x4

    mul-float v32, v32, v1

    aput v32, p0, v0

    .line 414
    add-int/lit8 v0, p1, 0x5

    mul-float v16, v16, v1

    aput v16, p0, v0

    .line 415
    add-int/lit8 v0, p1, 0x6

    mul-float v19, v19, v1

    aput v19, p0, v0

    .line 416
    add-int/lit8 v0, p1, 0x7

    mul-float v20, v20, v1

    aput v20, p0, v0

    .line 418
    add-int/lit8 v0, p1, 0x8

    mul-float v27, v27, v1

    aput v27, p0, v0

    .line 419
    add-int/lit8 v0, p1, 0x9

    mul-float v33, v33, v1

    aput v33, p0, v0

    .line 420
    add-int/lit8 v0, p1, 0xa

    mul-float v34, v34, v1

    aput v34, p0, v0

    .line 421
    add-int/lit8 v0, p1, 0xb

    mul-float/2addr v15, v1

    aput v15, p0, v0

    .line 423
    add-int/lit8 v0, p1, 0xc

    mul-float/2addr v3, v1

    aput v3, p0, v0

    .line 424
    add-int/lit8 v0, p1, 0xd

    mul-float/2addr v7, v1

    aput v7, p0, v0

    .line 425
    add-int/lit8 v0, p1, 0xe

    mul-float/2addr v13, v1

    aput v13, p0, v0

    .line 426
    add-int/lit8 v0, p1, 0xf

    mul-float/2addr v5, v1

    aput v5, p0, v0

    .line 428
    const/4 v0, 0x1

    return v0
.end method

.method public static whitelist length(FFF)F
    .registers 3

    .line 589
    mul-float/2addr p0, p0

    mul-float/2addr p1, p1

    add-float/2addr p0, p1

    mul-float/2addr p2, p2

    add-float/2addr p0, p2

    float-to-double p0, p0

    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method public static whitelist multiplyMM([FI[FI[FI)V
    .registers 21

    .line 118
    move-object/from16 v3, p2

    move-object/from16 v6, p4

    if-eqz p0, :cond_163

    .line 121
    if-eqz v3, :cond_15b

    .line 124
    if-eqz v6, :cond_152

    .line 127
    if-ltz p1, :cond_149

    .line 130
    if-ltz p3, :cond_141

    .line 133
    if-ltz p5, :cond_138

    .line 136
    array-length v0, p0

    add-int/lit8 v1, p1, 0x10

    if-lt v0, v1, :cond_12f

    .line 139
    array-length v0, v3

    add-int/lit8 v1, p3, 0x10

    if-lt v0, v1, :cond_127

    .line 142
    array-length v0, v6

    add-int/lit8 v1, p5, 0x10

    if-lt v0, v1, :cond_11e

    .line 147
    const/16 v2, 0x10

    const/16 v5, 0x10

    move-object v0, p0

    move/from16 v1, p1

    move/from16 v4, p3

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->overlap([FII[FII)Z

    move-result v2

    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-nez v2, :cond_a8

    .line 148
    const/16 v2, 0x10

    const/16 v5, 0x10

    move-object v0, p0

    move/from16 v1, p1

    move/from16 v4, p5

    move-object v3, v6

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->overlap([FII[FII)Z

    move-result v2

    if-eqz v2, :cond_42

    goto :goto_a8

    .line 175
    :cond_42
    nop

    :goto_43
    if-ge v8, v7, :cond_11d

    .line 176
    mul-int/lit8 v0, v8, 0x4

    add-int/lit8 v1, v0, 0x0

    add-int v2, v1, p5

    aget v2, p4, v2

    .line 177
    add-int/lit8 v3, p3, 0x0

    aget v3, p2, v3

    mul-float/2addr v3, v2

    .line 178
    add-int/lit8 v4, p3, 0x1

    aget v4, p2, v4

    mul-float/2addr v4, v2

    .line 179
    add-int/lit8 v5, p3, 0x2

    aget v5, p2, v5

    mul-float/2addr v5, v2

    .line 180
    add-int/lit8 v6, p3, 0x3

    aget v6, p2, v6

    mul-float/2addr v6, v2

    .line 181
    move v2, v9

    :goto_62
    if-ge v2, v7, :cond_8f

    .line 182
    add-int v10, v0, v2

    add-int v10, v10, p5

    aget v10, p4, v10

    .line 183
    mul-int/lit8 v11, v2, 0x4

    add-int/lit8 v12, v11, 0x0

    add-int v12, v12, p3

    aget v12, p2, v12

    mul-float/2addr v12, v10

    add-float/2addr v3, v12

    .line 184
    add-int/lit8 v12, v11, 0x1

    add-int v12, v12, p3

    aget v12, p2, v12

    mul-float/2addr v12, v10

    add-float/2addr v4, v12

    .line 185
    add-int/lit8 v12, v11, 0x2

    add-int v12, v12, p3

    aget v12, p2, v12

    mul-float/2addr v12, v10

    add-float/2addr v5, v12

    .line 186
    add-int/lit8 v11, v11, 0x3

    add-int v11, v11, p3

    aget v11, p2, v11

    mul-float/2addr v11, v10

    add-float/2addr v6, v11

    .line 181
    add-int/lit8 v2, v2, 0x1

    goto :goto_62

    .line 188
    :cond_8f
    add-int v1, v1, p1

    aput v3, p0, v1

    .line 189
    add-int/lit8 v1, v0, 0x1

    add-int v1, v1, p1

    aput v4, p0, v1

    .line 190
    add-int/lit8 v1, v0, 0x2

    add-int v1, v1, p1

    aput v5, p0, v1

    .line 191
    add-int/lit8 v0, v0, 0x3

    add-int v0, v0, p1

    aput v6, p0, v0

    .line 175
    add-int/lit8 v8, v8, 0x1

    goto :goto_43

    .line 149
    :cond_a8
    :goto_a8
    sget-object v0, Landroid/opengl/Matrix;->ThreadTmp:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    .line 150
    move v1, v8

    :goto_b1
    if-ge v1, v7, :cond_10e

    .line 151
    mul-int/lit8 v2, v1, 0x4

    add-int/lit8 v3, v2, 0x0

    add-int v4, v3, p5

    aget v4, p4, v4

    .line 152
    add-int/lit8 v5, p3, 0x0

    aget v5, p2, v5

    mul-float/2addr v5, v4

    .line 153
    add-int/lit8 v6, p3, 0x1

    aget v6, p2, v6

    mul-float/2addr v6, v4

    .line 154
    add-int/lit8 v10, p3, 0x2

    aget v10, p2, v10

    mul-float/2addr v10, v4

    .line 155
    add-int/lit8 v11, p3, 0x3

    aget v11, p2, v11

    mul-float/2addr v11, v4

    .line 156
    move v4, v9

    :goto_d0
    if-ge v4, v7, :cond_fd

    .line 157
    add-int v12, v2, v4

    add-int v12, v12, p5

    aget v12, p4, v12

    .line 158
    mul-int/lit8 v13, v4, 0x4

    add-int/lit8 v14, v13, 0x0

    add-int v14, v14, p3

    aget v14, p2, v14

    mul-float/2addr v14, v12

    add-float/2addr v5, v14

    .line 159
    add-int/lit8 v14, v13, 0x1

    add-int v14, v14, p3

    aget v14, p2, v14

    mul-float/2addr v14, v12

    add-float/2addr v6, v14

    .line 160
    add-int/lit8 v14, v13, 0x2

    add-int v14, v14, p3

    aget v14, p2, v14

    mul-float/2addr v14, v12

    add-float/2addr v10, v14

    .line 161
    add-int/lit8 v13, v13, 0x3

    add-int v13, v13, p3

    aget v13, p2, v13

    mul-float/2addr v13, v12

    add-float/2addr v11, v13

    .line 156
    add-int/lit8 v4, v4, 0x1

    goto :goto_d0

    .line 163
    :cond_fd
    aput v5, v0, v3

    .line 164
    add-int/lit8 v3, v2, 0x1

    aput v6, v0, v3

    .line 165
    add-int/lit8 v3, v2, 0x2

    aput v10, v0, v3

    .line 166
    add-int/lit8 v2, v2, 0x3

    aput v11, v0, v2

    .line 150
    add-int/lit8 v1, v1, 0x1

    goto :goto_b1

    .line 170
    :cond_10e
    nop

    :goto_10f
    const/16 v1, 0x10

    if-ge v8, v1, :cond_11c

    .line 171
    add-int v1, v8, p1

    aget v2, v0, v8

    aput v2, p0, v1

    .line 170
    add-int/lit8 v8, v8, 0x1

    goto :goto_10f

    .line 174
    :cond_11c
    nop

    .line 194
    :cond_11d
    return-void

    .line 143
    :cond_11e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "rhs.length < rhsOffset + 16"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 140
    :cond_127
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "lhs.length < lhsOffset + 16"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 137
    :cond_12f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "result.length < resultOffset + 16"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 134
    :cond_138
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "rhsOffset < 0"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 131
    :cond_141
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "lhsOffset < 0"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 128
    :cond_149
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "resultOffset < 0"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 125
    :cond_152
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "rhs == null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 122
    :cond_15b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "lhs == null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 119
    :cond_163
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "result == null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static whitelist multiplyMV([FI[FI[FI)V
    .registers 14

    .line 224
    if-eqz p0, :cond_f5

    .line 227
    if-eqz p2, :cond_ed

    .line 230
    if-eqz p4, :cond_e4

    .line 233
    if-ltz p1, :cond_db

    .line 236
    if-ltz p3, :cond_d3

    .line 239
    if-ltz p5, :cond_ca

    .line 242
    array-length v0, p0

    add-int/lit8 v1, p1, 0x4

    if-lt v0, v1, :cond_c1

    .line 245
    array-length v0, p2

    add-int/lit8 v1, p3, 0x10

    if-lt v0, v1, :cond_b9

    .line 248
    array-length v0, p4

    add-int/lit8 v1, p5, 0x4

    if-lt v0, v1, :cond_b0

    .line 252
    add-int/lit8 v0, p3, 0x0

    aget v0, p2, v0

    add-int/lit8 v1, p5, 0x0

    aget v2, p4, v1

    mul-float/2addr v0, v2

    add-int/lit8 v2, p3, 0x4

    aget v2, p2, v2

    add-int/lit8 v3, p5, 0x1

    aget v4, p4, v3

    mul-float/2addr v2, v4

    add-float/2addr v0, v2

    add-int/lit8 v2, p3, 0x8

    aget v2, p2, v2

    add-int/lit8 v4, p5, 0x2

    aget v5, p4, v4

    mul-float/2addr v2, v5

    add-float/2addr v0, v2

    add-int/lit8 v2, p3, 0xc

    aget v2, p2, v2

    add-int/lit8 p5, p5, 0x3

    aget v5, p4, p5

    mul-float/2addr v2, v5

    add-float/2addr v0, v2

    .line 256
    add-int/lit8 v2, p3, 0x1

    aget v2, p2, v2

    aget v5, p4, v1

    mul-float/2addr v2, v5

    add-int/lit8 v5, p3, 0x5

    aget v5, p2, v5

    aget v6, p4, v3

    mul-float/2addr v5, v6

    add-float/2addr v2, v5

    add-int/lit8 v5, p3, 0x9

    aget v5, p2, v5

    aget v6, p4, v4

    mul-float/2addr v5, v6

    add-float/2addr v2, v5

    add-int/lit8 v5, p3, 0xd

    aget v5, p2, v5

    aget v6, p4, p5

    mul-float/2addr v5, v6

    add-float/2addr v2, v5

    .line 260
    add-int/lit8 v5, p3, 0x2

    aget v5, p2, v5

    aget v6, p4, v1

    mul-float/2addr v5, v6

    add-int/lit8 v6, p3, 0x6

    aget v6, p2, v6

    aget v7, p4, v3

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-int/lit8 v6, p3, 0xa

    aget v6, p2, v6

    aget v7, p4, v4

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-int/lit8 v6, p3, 0xe

    aget v6, p2, v6

    aget v7, p4, p5

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    .line 264
    add-int/lit8 v6, p3, 0x3

    aget v6, p2, v6

    aget v1, p4, v1

    mul-float/2addr v6, v1

    add-int/lit8 v1, p3, 0x7

    aget v1, p2, v1

    aget v3, p4, v3

    mul-float/2addr v1, v3

    add-float/2addr v6, v1

    add-int/lit8 v1, p3, 0xb

    aget v1, p2, v1

    aget v3, p4, v4

    mul-float/2addr v1, v3

    add-float/2addr v6, v1

    add-int/lit8 p3, p3, 0xf

    aget p2, p2, p3

    aget p3, p4, p5

    mul-float/2addr p2, p3

    add-float/2addr v6, p2

    .line 269
    add-int/lit8 p2, p1, 0x0

    aput v0, p0, p2

    .line 270
    add-int/lit8 p2, p1, 0x1

    aput v2, p0, p2

    .line 271
    add-int/lit8 p2, p1, 0x2

    aput v5, p0, p2

    .line 272
    add-int/lit8 p1, p1, 0x3

    aput v6, p0, p1

    .line 273
    return-void

    .line 249
    :cond_b0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "rhsVec.length < rhsVecOffset + 4"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 246
    :cond_b9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "lhsMat.length < lhsMatOffset + 16"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 243
    :cond_c1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "resultVec.length < resultVecOffset + 4"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 240
    :cond_ca
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "rhsVecOffset < 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 237
    :cond_d3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "lhsMatOffset < 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 234
    :cond_db
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "resultVecOffset < 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 231
    :cond_e4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "rhsVec == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 228
    :cond_ed
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "lhsMat == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 225
    :cond_f5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "resultVec == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static whitelist orthoM([FIFFFFFF)V
    .registers 15

    .line 446
    cmpl-float v0, p2, p3

    if-eqz v0, :cond_7d

    .line 449
    cmpl-float v0, p4, p5

    if-eqz v0, :cond_75

    .line 452
    cmpl-float v0, p6, p7

    if-eqz v0, :cond_6d

    .line 456
    sub-float v0, p3, p2

    const/high16 v1, 0x3f800000    # 1.0f

    div-float v0, v1, v0

    .line 457
    sub-float v2, p5, p4

    div-float v2, v1, v2

    .line 458
    sub-float v3, p7, p6

    div-float v3, v1, v3

    .line 459
    const/high16 v4, 0x40000000    # 2.0f

    mul-float v5, v0, v4

    .line 460
    mul-float/2addr v4, v2

    .line 461
    const/high16 v6, -0x40000000    # -2.0f

    mul-float/2addr v6, v3

    .line 462
    add-float/2addr p3, p2

    neg-float p2, p3

    mul-float/2addr p2, v0

    .line 463
    add-float/2addr p5, p4

    neg-float p3, p5

    mul-float/2addr p3, v2

    .line 464
    add-float/2addr p7, p6

    neg-float p4, p7

    mul-float/2addr p4, v3

    .line 465
    add-int/lit8 p5, p1, 0x0

    aput v5, p0, p5

    .line 466
    add-int/lit8 p5, p1, 0x5

    aput v4, p0, p5

    .line 467
    add-int/lit8 p5, p1, 0xa

    aput v6, p0, p5

    .line 468
    add-int/lit8 p5, p1, 0xc

    aput p2, p0, p5

    .line 469
    add-int/lit8 p2, p1, 0xd

    aput p3, p0, p2

    .line 470
    add-int/lit8 p2, p1, 0xe

    aput p4, p0, p2

    .line 471
    add-int/lit8 p2, p1, 0xf

    aput v1, p0, p2

    .line 472
    add-int/lit8 p2, p1, 0x1

    const/4 p3, 0x0

    aput p3, p0, p2

    .line 473
    add-int/lit8 p2, p1, 0x2

    aput p3, p0, p2

    .line 474
    add-int/lit8 p2, p1, 0x3

    aput p3, p0, p2

    .line 475
    add-int/lit8 p2, p1, 0x4

    aput p3, p0, p2

    .line 476
    add-int/lit8 p2, p1, 0x6

    aput p3, p0, p2

    .line 477
    add-int/lit8 p2, p1, 0x7

    aput p3, p0, p2

    .line 478
    add-int/lit8 p2, p1, 0x8

    aput p3, p0, p2

    .line 479
    add-int/lit8 p2, p1, 0x9

    aput p3, p0, p2

    .line 480
    add-int/lit8 p1, p1, 0xb

    aput p3, p0, p1

    .line 481
    return-void

    .line 453
    :cond_6d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "near == far"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 450
    :cond_75
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "bottom == top"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 447
    :cond_7d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "left == right"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static blacklist overlap([FII[FII)Z
    .registers 7

    .line 57
    const/4 v0, 0x0

    if-eq p0, p3, :cond_4

    .line 58
    return v0

    .line 61
    :cond_4
    const/4 p0, 0x1

    if-ne p1, p4, :cond_8

    .line 62
    return p0

    .line 65
    :cond_8
    add-int/2addr p2, p1

    .line 66
    add-int/2addr p5, p4

    .line 68
    if-ne p2, p5, :cond_d

    .line 69
    return p0

    .line 72
    :cond_d
    if-ge p1, p4, :cond_12

    if-ge p4, p2, :cond_12

    .line 73
    return p0

    .line 75
    :cond_12
    if-ge p1, p5, :cond_17

    if-ge p5, p2, :cond_17

    .line 76
    return p0

    .line 79
    :cond_17
    if-ge p4, p1, :cond_1c

    if-ge p1, p5, :cond_1c

    .line 80
    return p0

    .line 82
    :cond_1c
    if-ge p4, p2, :cond_21

    if-ge p2, p5, :cond_21

    .line 83
    return p0

    .line 86
    :cond_21
    return v0
.end method

.method public static whitelist perspectiveM([FIFFFF)V
    .registers 10

    .line 556
    float-to-double v0, p2

    const-wide v2, 0x3f81df46a2529d39L    # 0.008726646259971648

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    double-to-float p2, v0

    const/high16 v0, 0x3f800000    # 1.0f

    div-float p2, v0, p2

    .line 557
    sub-float v1, p4, p5

    div-float/2addr v0, v1

    .line 559
    add-int/lit8 v1, p1, 0x0

    div-float p3, p2, p3

    aput p3, p0, v1

    .line 560
    add-int/lit8 p3, p1, 0x1

    const/4 v1, 0x0

    aput v1, p0, p3

    .line 561
    add-int/lit8 p3, p1, 0x2

    aput v1, p0, p3

    .line 562
    add-int/lit8 p3, p1, 0x3

    aput v1, p0, p3

    .line 564
    add-int/lit8 p3, p1, 0x4

    aput v1, p0, p3

    .line 565
    add-int/lit8 p3, p1, 0x5

    aput p2, p0, p3

    .line 566
    add-int/lit8 p2, p1, 0x6

    aput v1, p0, p2

    .line 567
    add-int/lit8 p2, p1, 0x7

    aput v1, p0, p2

    .line 569
    add-int/lit8 p2, p1, 0x8

    aput v1, p0, p2

    .line 570
    add-int/lit8 p2, p1, 0x9

    aput v1, p0, p2

    .line 571
    add-int/lit8 p2, p1, 0xa

    add-float p3, p5, p4

    mul-float/2addr p3, v0

    aput p3, p0, p2

    .line 572
    add-int/lit8 p2, p1, 0xb

    const/high16 p3, -0x40800000    # -1.0f

    aput p3, p0, p2

    .line 574
    add-int/lit8 p2, p1, 0xc

    aput v1, p0, p2

    .line 575
    add-int/lit8 p2, p1, 0xd

    aput v1, p0, p2

    .line 576
    add-int/lit8 p2, p1, 0xe

    const/high16 p3, 0x40000000    # 2.0f

    mul-float/2addr p5, p3

    mul-float/2addr p5, p4

    mul-float/2addr p5, v0

    aput p5, p0, p2

    .line 577
    add-int/lit8 p1, p1, 0xf

    aput v1, p0, p1

    .line 578
    return-void
.end method

.method public static whitelist rotateM([FIFFFF)V
    .registers 14

    .line 732
    move-object v2, p0

    move v3, p1

    move-object v0, p0

    move v1, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-static/range {v0 .. v7}, Landroid/opengl/Matrix;->rotateM([FI[FIFFFF)V

    .line 733
    return-void
.end method

.method public static whitelist rotateM([FI[FIFFFF)V
    .registers 15

    .line 714
    sget-object v0, Landroid/opengl/Matrix;->ThreadTmp:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, [F

    .line 715
    const/16 v2, 0x10

    move v3, p4

    move v4, p5

    move v5, p6

    move v6, p7

    invoke-static/range {v1 .. v6}, Landroid/opengl/Matrix;->setRotateM([FIFFFF)V

    .line 716
    move-object p4, v1

    const/16 p5, 0x10

    invoke-static/range {p0 .. p5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 717
    return-void
.end method

.method public static whitelist scaleM([FIFFF)V
    .registers 9

    .line 644
    const/4 v0, 0x0

    :goto_1
    const/4 v1, 0x4

    if-ge v0, v1, :cond_1c

    .line 645
    add-int v1, p1, v0

    .line 646
    aget v2, p0, v1

    mul-float/2addr v2, p2

    aput v2, p0, v1

    .line 647
    add-int/lit8 v2, v1, 0x4

    aget v3, p0, v2

    mul-float/2addr v3, p3

    aput v3, p0, v2

    .line 648
    add-int/lit8 v1, v1, 0x8

    aget v2, p0, v1

    mul-float/2addr v2, p4

    aput v2, p0, v1

    .line 644
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 650
    :cond_1c
    return-void
.end method

.method public static whitelist scaleM([FI[FIFFF)V
    .registers 12

    .line 623
    const/4 v0, 0x0

    :goto_1
    const/4 v1, 0x4

    if-ge v0, v1, :cond_2a

    .line 624
    add-int v1, p1, v0

    .line 625
    add-int v2, p3, v0

    .line 626
    aget v3, p2, v2

    mul-float/2addr v3, p4

    aput v3, p0, v1

    .line 627
    add-int/lit8 v3, v1, 0x4

    add-int/lit8 v4, v2, 0x4

    aget v4, p2, v4

    mul-float/2addr v4, p5

    aput v4, p0, v3

    .line 628
    add-int/lit8 v3, v1, 0x8

    add-int/lit8 v4, v2, 0x8

    aget v4, p2, v4

    mul-float/2addr v4, p6

    aput v4, p0, v3

    .line 629
    add-int/lit8 v1, v1, 0xc

    add-int/lit8 v2, v2, 0xc

    aget v2, p2, v2

    aput v2, p0, v1

    .line 623
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 631
    :cond_2a
    return-void
.end method

.method public static whitelist setIdentityM([FI)V
    .registers 6

    .line 599
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    const/16 v2, 0x10

    if-ge v1, v2, :cond_e

    .line 600
    add-int v2, p1, v1

    const/4 v3, 0x0

    aput v3, p0, v2

    .line 599
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 602
    :cond_e
    nop

    :goto_f
    if-ge v0, v2, :cond_1a

    .line 603
    add-int v1, p1, v0

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, p0, v1

    .line 602
    add-int/lit8 v0, v0, 0x5

    goto :goto_f

    .line 605
    :cond_1a
    return-void
.end method

.method public static whitelist setLookAtM([FIFFFFFFFFF)V
    .registers 16

    .line 937
    sub-float/2addr p5, p2

    .line 938
    sub-float/2addr p6, p3

    .line 939
    sub-float/2addr p7, p4

    .line 942
    invoke-static {p5, p6, p7}, Landroid/opengl/Matrix;->length(FFF)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    div-float v0, v1, v0

    .line 943
    mul-float/2addr p5, v0

    .line 944
    mul-float/2addr p6, v0

    .line 945
    mul-float/2addr p7, v0

    .line 948
    mul-float v0, p6, p10

    mul-float v2, p7, p9

    sub-float/2addr v0, v2

    .line 949
    mul-float v2, p7, p8

    mul-float/2addr p10, p5

    sub-float/2addr v2, p10

    .line 950
    mul-float/2addr p9, p5

    mul-float/2addr p8, p6

    sub-float/2addr p9, p8

    .line 953
    invoke-static {v0, v2, p9}, Landroid/opengl/Matrix;->length(FFF)F

    move-result p8

    div-float p8, v1, p8

    .line 954
    mul-float/2addr v0, p8

    .line 955
    mul-float/2addr v2, p8

    .line 956
    mul-float/2addr p9, p8

    .line 959
    mul-float p8, v2, p7

    mul-float p10, p9, p6

    sub-float/2addr p8, p10

    .line 960
    mul-float p10, p9, p5

    mul-float v3, v0, p7

    sub-float/2addr p10, v3

    .line 961
    mul-float v3, v0, p6

    mul-float v4, v2, p5

    sub-float/2addr v3, v4

    .line 963
    add-int/lit8 v4, p1, 0x0

    aput v0, p0, v4

    .line 964
    add-int/lit8 v0, p1, 0x1

    aput p8, p0, v0

    .line 965
    add-int/lit8 p8, p1, 0x2

    neg-float p5, p5

    aput p5, p0, p8

    .line 966
    add-int/lit8 p5, p1, 0x3

    const/4 p8, 0x0

    aput p8, p0, p5

    .line 968
    add-int/lit8 p5, p1, 0x4

    aput v2, p0, p5

    .line 969
    add-int/lit8 p5, p1, 0x5

    aput p10, p0, p5

    .line 970
    add-int/lit8 p5, p1, 0x6

    neg-float p6, p6

    aput p6, p0, p5

    .line 971
    add-int/lit8 p5, p1, 0x7

    aput p8, p0, p5

    .line 973
    add-int/lit8 p5, p1, 0x8

    aput p9, p0, p5

    .line 974
    add-int/lit8 p5, p1, 0x9

    aput v3, p0, p5

    .line 975
    add-int/lit8 p5, p1, 0xa

    neg-float p6, p7

    aput p6, p0, p5

    .line 976
    add-int/lit8 p5, p1, 0xb

    aput p8, p0, p5

    .line 978
    add-int/lit8 p5, p1, 0xc

    aput p8, p0, p5

    .line 979
    add-int/lit8 p5, p1, 0xd

    aput p8, p0, p5

    .line 980
    add-int/lit8 p5, p1, 0xe

    aput p8, p0, p5

    .line 981
    add-int/lit8 p5, p1, 0xf

    aput v1, p0, p5

    .line 983
    neg-float p2, p2

    neg-float p3, p3

    neg-float p4, p4

    invoke-static {p0, p1, p2, p3, p4}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 984
    return-void
.end method

.method public static whitelist setRotateEulerM([FIFFF)V
    .registers 13
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 822
    const v0, 0x3c8efa35

    mul-float/2addr p2, v0

    .line 823
    mul-float/2addr p3, v0

    .line 824
    mul-float/2addr p4, v0

    .line 825
    float-to-double v0, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float p2, v2

    .line 826
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 827
    float-to-double v1, p3

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    double-to-float p3, v3

    .line 828
    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    double-to-float v1, v1

    .line 829
    float-to-double v2, p4

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    double-to-float p4, v4

    .line 830
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v2, v2

    .line 831
    mul-float v3, p2, v1

    .line 832
    mul-float v4, v0, v1

    .line 834
    add-int/lit8 v5, p1, 0x0

    mul-float v6, p3, p4

    aput v6, p0, v5

    .line 835
    add-int/lit8 v5, p1, 0x1

    neg-float v6, p3

    mul-float/2addr v6, v2

    aput v6, p0, v5

    .line 836
    add-int/lit8 v5, p1, 0x2

    aput v1, p0, v5

    .line 837
    add-int/lit8 v1, p1, 0x3

    const/4 v5, 0x0

    aput v5, p0, v1

    .line 839
    add-int/lit8 v1, p1, 0x4

    mul-float v6, v3, p4

    mul-float v7, p2, v2

    add-float/2addr v6, v7

    aput v6, p0, v1

    .line 840
    add-int/lit8 v1, p1, 0x5

    neg-float v3, v3

    mul-float/2addr v3, v2

    mul-float v6, p2, p4

    add-float/2addr v3, v6

    aput v3, p0, v1

    .line 841
    add-int/lit8 v1, p1, 0x6

    neg-float v3, v0

    mul-float/2addr v3, p3

    aput v3, p0, v1

    .line 842
    add-int/lit8 v1, p1, 0x7

    aput v5, p0, v1

    .line 844
    add-int/lit8 v1, p1, 0x8

    neg-float v3, v4

    mul-float/2addr v3, p4

    mul-float v6, v0, v2

    add-float/2addr v3, v6

    aput v3, p0, v1

    .line 845
    add-int/lit8 v1, p1, 0x9

    mul-float/2addr v4, v2

    mul-float/2addr v0, p4

    add-float/2addr v4, v0

    aput v4, p0, v1

    .line 846
    add-int/lit8 p4, p1, 0xa

    mul-float/2addr p2, p3

    aput p2, p0, p4

    .line 847
    add-int/lit8 p2, p1, 0xb

    aput v5, p0, p2

    .line 849
    add-int/lit8 p2, p1, 0xc

    aput v5, p0, p2

    .line 850
    add-int/lit8 p2, p1, 0xd

    aput v5, p0, p2

    .line 851
    add-int/lit8 p2, p1, 0xe

    aput v5, p0, p2

    .line 852
    add-int/lit8 p1, p1, 0xf

    const/high16 p2, 0x3f800000    # 1.0f

    aput p2, p0, p1

    .line 853
    return-void
.end method

.method public static whitelist setRotateEulerM2([FIFFF)V
    .registers 13

    .line 870
    if-eqz p0, :cond_a3

    .line 873
    if-ltz p1, :cond_9a

    .line 876
    array-length v0, p0

    add-int/lit8 v1, p1, 0x10

    if-lt v0, v1, :cond_91

    .line 880
    const v0, 0x3c8efa35

    mul-float/2addr p2, v0

    .line 881
    mul-float/2addr p3, v0

    .line 882
    mul-float/2addr p4, v0

    .line 883
    float-to-double v0, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float p2, v2

    .line 884
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 885
    float-to-double v1, p3

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    double-to-float p3, v3

    .line 886
    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    double-to-float v1, v1

    .line 887
    float-to-double v2, p4

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    double-to-float p4, v4

    .line 888
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v2, v2

    .line 889
    mul-float v3, p2, v1

    .line 890
    mul-float v4, v0, v1

    .line 892
    add-int/lit8 v5, p1, 0x0

    mul-float v6, p3, p4

    aput v6, p0, v5

    .line 893
    add-int/lit8 v5, p1, 0x1

    neg-float v6, p3

    mul-float/2addr v6, v2

    aput v6, p0, v5

    .line 894
    add-int/lit8 v5, p1, 0x2

    aput v1, p0, v5

    .line 895
    add-int/lit8 v1, p1, 0x3

    const/4 v5, 0x0

    aput v5, p0, v1

    .line 897
    add-int/lit8 v1, p1, 0x4

    mul-float v6, v4, p4

    mul-float v7, p2, v2

    add-float/2addr v6, v7

    aput v6, p0, v1

    .line 898
    add-int/lit8 v1, p1, 0x5

    neg-float v4, v4

    mul-float/2addr v4, v2

    mul-float v6, p2, p4

    add-float/2addr v4, v6

    aput v4, p0, v1

    .line 899
    add-int/lit8 v1, p1, 0x6

    neg-float v4, v0

    mul-float/2addr v4, p3

    aput v4, p0, v1

    .line 900
    add-int/lit8 v1, p1, 0x7

    aput v5, p0, v1

    .line 902
    add-int/lit8 v1, p1, 0x8

    neg-float v4, v3

    mul-float/2addr v4, p4

    mul-float v6, v0, v2

    add-float/2addr v4, v6

    aput v4, p0, v1

    .line 903
    add-int/lit8 v1, p1, 0x9

    mul-float/2addr v3, v2

    mul-float/2addr v0, p4

    add-float/2addr v3, v0

    aput v3, p0, v1

    .line 904
    add-int/lit8 p4, p1, 0xa

    mul-float/2addr p2, p3

    aput p2, p0, p4

    .line 905
    add-int/lit8 p2, p1, 0xb

    aput v5, p0, p2

    .line 907
    add-int/lit8 p2, p1, 0xc

    aput v5, p0, p2

    .line 908
    add-int/lit8 p2, p1, 0xd

    aput v5, p0, p2

    .line 909
    add-int/lit8 p2, p1, 0xe

    aput v5, p0, p2

    .line 910
    add-int/lit8 p1, p1, 0xf

    const/high16 p2, 0x3f800000    # 1.0f

    aput p2, p0, p1

    .line 911
    return-void

    .line 877
    :cond_91
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "rm.length < rmOffset + 16"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 874
    :cond_9a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "rmOffset < 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 871
    :cond_a3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "rm == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static whitelist setRotateM([FIFFFF)V
    .registers 14

    .line 751
    add-int/lit8 v0, p1, 0x3

    const/4 v1, 0x0

    aput v1, p0, v0

    .line 752
    add-int/lit8 v0, p1, 0x7

    aput v1, p0, v0

    .line 753
    add-int/lit8 v0, p1, 0xb

    aput v1, p0, v0

    .line 754
    add-int/lit8 v0, p1, 0xc

    aput v1, p0, v0

    .line 755
    add-int/lit8 v0, p1, 0xd

    aput v1, p0, v0

    .line 756
    add-int/lit8 v0, p1, 0xe

    aput v1, p0, v0

    .line 757
    add-int/lit8 v0, p1, 0xf

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, p0, v0

    .line 758
    const v0, 0x3c8efa35

    mul-float/2addr p2, v0

    .line 759
    float-to-double v3, p2

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    double-to-float p2, v5

    .line 760
    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    double-to-float v0, v3

    .line 761
    cmpl-float v3, v2, p3

    if-nez v3, :cond_61

    cmpl-float v3, v1, p4

    if-nez v3, :cond_61

    cmpl-float v3, v1, p5

    if-nez v3, :cond_61

    .line 762
    add-int/lit8 p3, p1, 0x5

    aput v0, p0, p3

    add-int/lit8 p3, p1, 0xa

    aput v0, p0, p3

    .line 763
    add-int/lit8 p3, p1, 0x6

    aput p2, p0, p3

    add-int/lit8 p3, p1, 0x9

    neg-float p2, p2

    aput p2, p0, p3

    .line 764
    add-int/lit8 p2, p1, 0x1

    aput v1, p0, p2

    add-int/lit8 p2, p1, 0x2

    aput v1, p0, p2

    .line 765
    add-int/lit8 p2, p1, 0x4

    aput v1, p0, p2

    add-int/lit8 p2, p1, 0x8

    aput v1, p0, p2

    .line 766
    add-int/lit8 p1, p1, 0x0

    aput v2, p0, p1

    goto/16 :goto_116

    .line 767
    :cond_61
    cmpl-float v3, v1, p3

    if-nez v3, :cond_94

    cmpl-float v4, v2, p4

    if-nez v4, :cond_94

    cmpl-float v4, v1, p5

    if-nez v4, :cond_94

    .line 768
    add-int/lit8 p3, p1, 0x0

    aput v0, p0, p3

    add-int/lit8 p3, p1, 0xa

    aput v0, p0, p3

    .line 769
    add-int/lit8 p3, p1, 0x8

    aput p2, p0, p3

    add-int/lit8 p3, p1, 0x2

    neg-float p2, p2

    aput p2, p0, p3

    .line 770
    add-int/lit8 p2, p1, 0x1

    aput v1, p0, p2

    add-int/lit8 p2, p1, 0x4

    aput v1, p0, p2

    .line 771
    add-int/lit8 p2, p1, 0x6

    aput v1, p0, p2

    add-int/lit8 p2, p1, 0x9

    aput v1, p0, p2

    .line 772
    add-int/lit8 p1, p1, 0x5

    aput v2, p0, p1

    goto/16 :goto_116

    .line 773
    :cond_94
    if-nez v3, :cond_c4

    cmpl-float v3, v1, p4

    if-nez v3, :cond_c4

    cmpl-float v3, v2, p5

    if-nez v3, :cond_c4

    .line 774
    add-int/lit8 p3, p1, 0x0

    aput v0, p0, p3

    add-int/lit8 p3, p1, 0x5

    aput v0, p0, p3

    .line 775
    add-int/lit8 p3, p1, 0x1

    aput p2, p0, p3

    add-int/lit8 p3, p1, 0x4

    neg-float p2, p2

    aput p2, p0, p3

    .line 776
    add-int/lit8 p2, p1, 0x2

    aput v1, p0, p2

    add-int/lit8 p2, p1, 0x6

    aput v1, p0, p2

    .line 777
    add-int/lit8 p2, p1, 0x8

    aput v1, p0, p2

    add-int/lit8 p2, p1, 0x9

    aput v1, p0, p2

    .line 778
    add-int/lit8 p1, p1, 0xa

    aput v2, p0, p1

    goto :goto_116

    .line 780
    :cond_c4
    invoke-static {p3, p4, p5}, Landroid/opengl/Matrix;->length(FFF)F

    move-result v1

    .line 781
    cmpl-float v3, v2, v1

    if-eqz v3, :cond_d1

    .line 782
    div-float v1, v2, v1

    .line 783
    mul-float/2addr p3, v1

    .line 784
    mul-float/2addr p4, v1

    .line 785
    mul-float/2addr p5, v1

    .line 787
    :cond_d1
    sub-float/2addr v2, v0

    .line 788
    mul-float v1, p3, p4

    .line 789
    mul-float v3, p4, p5

    .line 790
    mul-float v4, p5, p3

    .line 791
    mul-float v5, p3, p2

    .line 792
    mul-float v6, p4, p2

    .line 793
    mul-float/2addr p2, p5

    .line 794
    add-int/lit8 v7, p1, 0x0

    mul-float/2addr p3, p3

    mul-float/2addr p3, v2

    add-float/2addr p3, v0

    aput p3, p0, v7

    .line 795
    add-int/lit8 p3, p1, 0x4

    mul-float/2addr v1, v2

    sub-float v7, v1, p2

    aput v7, p0, p3

    .line 796
    add-int/lit8 p3, p1, 0x8

    mul-float/2addr v4, v2

    add-float v7, v4, v6

    aput v7, p0, p3

    .line 797
    add-int/lit8 p3, p1, 0x1

    add-float/2addr v1, p2

    aput v1, p0, p3

    .line 798
    add-int/lit8 p2, p1, 0x5

    mul-float/2addr p4, p4

    mul-float/2addr p4, v2

    add-float/2addr p4, v0

    aput p4, p0, p2

    .line 799
    add-int/lit8 p2, p1, 0x9

    mul-float/2addr v3, v2

    sub-float p3, v3, v5

    aput p3, p0, p2

    .line 800
    add-int/lit8 p2, p1, 0x2

    sub-float/2addr v4, v6

    aput v4, p0, p2

    .line 801
    add-int/lit8 p2, p1, 0x6

    add-float/2addr v3, v5

    aput v3, p0, p2

    .line 802
    add-int/lit8 p1, p1, 0xa

    mul-float/2addr p5, p5

    mul-float/2addr p5, v2

    add-float/2addr p5, v0

    aput p5, p0, p1

    .line 804
    :goto_116
    return-void
.end method

.method public static whitelist translateM([FIFFF)V
    .registers 11

    .line 691
    const/4 v0, 0x0

    :goto_1
    const/4 v1, 0x4

    if-ge v0, v1, :cond_1f

    .line 692
    add-int v1, p1, v0

    .line 693
    add-int/lit8 v2, v1, 0xc

    aget v3, p0, v2

    aget v4, p0, v1

    mul-float/2addr v4, p2

    add-int/lit8 v5, v1, 0x4

    aget v5, p0, v5

    mul-float/2addr v5, p3

    add-float/2addr v4, v5

    add-int/lit8 v1, v1, 0x8

    aget v1, p0, v1

    mul-float/2addr v1, p4

    add-float/2addr v4, v1

    add-float/2addr v3, v4

    aput v3, p0, v2

    .line 691
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 695
    :cond_1f
    return-void
.end method

.method public static whitelist translateM([FI[FIFFF)V
    .registers 13

    .line 668
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    const/16 v2, 0xc

    if-ge v1, v2, :cond_11

    .line 669
    add-int v2, p1, v1

    add-int v3, p3, v1

    aget v3, p2, v3

    aput v3, p0, v2

    .line 668
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 671
    :cond_11
    nop

    :goto_12
    const/4 v1, 0x4

    if-ge v0, v1, :cond_32

    .line 672
    add-int v1, p1, v0

    .line 673
    add-int v3, p3, v0

    .line 674
    add-int/2addr v1, v2

    aget v4, p2, v3

    mul-float/2addr v4, p4

    add-int/lit8 v5, v3, 0x4

    aget v5, p2, v5

    mul-float/2addr v5, p5

    add-float/2addr v4, v5

    add-int/lit8 v5, v3, 0x8

    aget v5, p2, v5

    mul-float/2addr v5, p6

    add-float/2addr v4, v5

    add-int/2addr v3, v2

    aget v3, p2, v3

    add-float/2addr v4, v3

    aput v4, p0, v1

    .line 671
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 677
    :cond_32
    return-void
.end method

.method public static whitelist transposeM([FI[FI)V
    .registers 8

    .line 288
    const/4 v0, 0x0

    :goto_1
    const/4 v1, 0x4

    if-ge v0, v1, :cond_2b

    .line 289
    mul-int/lit8 v1, v0, 0x4

    add-int/2addr v1, p3

    .line 290
    add-int v2, v0, p1

    aget v3, p2, v1

    aput v3, p0, v2

    .line 291
    add-int/lit8 v2, v0, 0x4

    add-int/2addr v2, p1

    add-int/lit8 v3, v1, 0x1

    aget v3, p2, v3

    aput v3, p0, v2

    .line 292
    add-int/lit8 v2, v0, 0x8

    add-int/2addr v2, p1

    add-int/lit8 v3, v1, 0x2

    aget v3, p2, v3

    aput v3, p0, v2

    .line 293
    add-int/lit8 v2, v0, 0xc

    add-int/2addr v2, p1

    add-int/lit8 v1, v1, 0x3

    aget v1, p2, v1

    aput v1, p0, v2

    .line 288
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 295
    :cond_2b
    return-void
.end method
