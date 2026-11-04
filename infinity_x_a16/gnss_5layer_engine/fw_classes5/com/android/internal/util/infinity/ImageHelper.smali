.class public Lcom/android/internal/util/infinity/ImageHelper;
.super Ljava/lang/Object;
.source "ImageHelper.java"


# static fields
.field private static final blacklist VECTOR_HEIGHT:I = 0x200

.field private static final blacklist VECTOR_WIDTH:I = 0x200


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist RGB565toARGB888(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 358
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    .line 359
    new-array v2, v0, [I

    .line 362
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 365
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p0, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 368
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 369
    return-object v1
.end method

.method public static blacklist addBitmapToStorage(Ljava/io/File;Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/net/Uri;
    .registers 6

    .line 301
    const/4 v0, 0x0

    if-eqz p0, :cond_27

    if-eqz p1, :cond_27

    if-nez p2, :cond_8

    goto :goto_27

    .line 304
    :cond_8
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 306
    :try_start_d
    new-instance p0, Ljava/io/FileOutputStream;

    invoke-direct {p0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 307
    sget-object p1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p2, p1, v2, p0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 308
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->flush()V

    .line 309
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_1f} :catch_25

    .line 312
    nop

    .line 313
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p0

    return-object p0

    .line 310
    :catch_25
    move-exception p0

    .line 311
    return-object v0

    .line 302
    :cond_27
    :goto_27
    return-object v0
.end method

.method private static blacklist calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .registers 7

    .line 470
    iget v0, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 471
    iget p0, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 472
    nop

    .line 474
    if-gt v0, p2, :cond_c

    if-le p0, p1, :cond_a

    goto :goto_c

    :cond_a
    const/4 v1, 0x1

    goto :goto_1e

    .line 475
    :cond_c
    :goto_c
    int-to-float v1, v0

    int-to-float v2, p2

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 476
    int-to-float v2, p0

    int-to-float v3, p1

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 477
    if-ge v1, v2, :cond_1d

    goto :goto_1e

    :cond_1d
    move v1, v2

    .line 479
    :goto_1e
    mul-int/2addr p0, v0

    int-to-float p0, p0

    .line 480
    mul-int/2addr p1, p2

    mul-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    .line 482
    :goto_24
    mul-int p2, v1, v1

    int-to-float p2, p2

    div-float p2, p0, p2

    cmpl-float p2, p2, p1

    if-lez p2, :cond_30

    .line 483
    add-int/lit8 v1, v1, 0x1

    goto :goto_24

    .line 485
    :cond_30
    return v1
.end method

.method public static blacklist dpToPx(Landroid/content/Context;I)I
    .registers 4

    .line 146
    int-to-float p1, p1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, p0

    float-to-double p0, p1

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    add-double/2addr p0, v0

    double-to-int p0, p0

    return p0
.end method

.method public static blacklist drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .registers 6

    .line 91
    if-nez p0, :cond_4

    .line 92
    const/4 p0, 0x0

    return-object p0

    .line 93
    :cond_4
    instance-of v0, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_f

    .line 94
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    .line 96
    :cond_f
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 97
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 96
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 98
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 99
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p0, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 100
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 101
    return-object v0
.end method

.method public static blacklist getBitmapFromUri(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 283
    if-eqz p0, :cond_1c

    if-nez p1, :cond_5

    goto :goto_1c

    .line 286
    :cond_5
    nop

    .line 287
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "r"

    invoke-virtual {p0, p1, v0}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    .line 288
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p1

    .line 289
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 290
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 291
    return-object p1

    .line 284
    :cond_1c
    :goto_1c
    const/4 p0, 0x0

    return-object p0
.end method

.method public static blacklist getBlurredImage(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 3

    .line 317
    const/high16 v0, 0x40600000    # 3.5f

    invoke-static {p0, p1, v0}, Lcom/android/internal/util/infinity/ImageHelper;->getBlurredImage(Landroid/content/Context;Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist getBlurredImage(Landroid/content/Context;Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .registers 6

    .line 322
    :try_start_0
    invoke-static {p1}, Lcom/android/internal/util/infinity/ImageHelper;->RGB565toARGB888(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4} :catch_5

    .line 325
    goto :goto_9

    .line 323
    :catch_5
    move-exception v0

    .line 324
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 327
    :goto_9
    nop

    .line 328
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 327
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 330
    invoke-static {p0}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    move-result-object p0

    .line 331
    invoke-static {p0, p1}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    move-result-object p1

    .line 332
    invoke-static {p0, v0}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    move-result-object v1

    .line 334
    nop

    .line 335
    invoke-static {p0}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    .line 334
    invoke-static {p0, v2}, Landroid/renderscript/ScriptIntrinsicBlur;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicBlur;

    move-result-object v2

    .line 336
    invoke-virtual {v2, p1}, Landroid/renderscript/ScriptIntrinsicBlur;->setInput(Landroid/renderscript/Allocation;)V

    .line 337
    invoke-virtual {v2, p2}, Landroid/renderscript/ScriptIntrinsicBlur;->setRadius(F)V

    .line 338
    invoke-virtual {v2, v1}, Landroid/renderscript/ScriptIntrinsicBlur;->forEach(Landroid/renderscript/Allocation;)V

    .line 339
    invoke-virtual {v1, v0}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    .line 340
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->destroy()V

    .line 342
    return-object v0
.end method

.method public static blacklist getCircleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 8

    .line 202
    if-nez p0, :cond_4

    .line 203
    const/4 p0, 0x0

    return-object p0

    .line 205
    :cond_4
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 206
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 208
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 210
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 212
    new-instance v4, Landroid/graphics/BitmapShader;

    sget-object v5, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v6, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v4, p0, v5, v6}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 213
    new-instance p0, Landroid/graphics/Paint;

    invoke-direct {p0}, Landroid/graphics/Paint;-><init>()V

    .line 214
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 215
    invoke-virtual {p0, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 217
    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v3, v0, v1, v0, p0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 219
    return-object v2
.end method

.method public static blacklist getColoredBitmap(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/Bitmap;
    .registers 7

    .line 105
    if-nez p0, :cond_4

    .line 106
    const/4 p0, 0x0

    return-object p0

    .line 108
    :cond_4
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    .line 109
    invoke-static {p0}, Lcom/android/internal/util/infinity/ImageHelper;->toGrayscale(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 110
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 111
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 112
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, p1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 114
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 115
    new-instance p1, Landroid/graphics/Canvas;

    invoke-direct {p1, p0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 116
    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 117
    invoke-virtual {p1, p0, v1, v1, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 118
    return-object p0
.end method

.method public static blacklist getColoredDrawable(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;
    .registers 7

    .line 70
    if-nez p0, :cond_4

    .line 71
    const/4 p0, 0x0

    return-object p0

    .line 73
    :cond_4
    instance-of v0, p0, Landroid/graphics/drawable/VectorDrawable;

    if-eqz v0, :cond_c

    .line 74
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 75
    return-object p0

    .line 77
    :cond_c
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    .line 78
    invoke-static {p0}, Lcom/android/internal/util/infinity/ImageHelper;->toGrayscale(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 79
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 80
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 81
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, p1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 83
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 84
    new-instance p1, Landroid/graphics/Canvas;

    invoke-direct {p1, p0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 85
    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 86
    invoke-virtual {p1, p0, v1, v1, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 87
    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {p1, p0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    return-object p1
.end method

.method public static blacklist getCompressedBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 16

    .line 373
    nop

    .line 374
    nop

    .line 375
    nop

    .line 376
    nop

    .line 377
    nop

    .line 380
    const/4 v1, 0x0

    :try_start_6
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 381
    const/4 v2, 0x1

    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 382
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 384
    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 385
    iget v4, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 386
    int-to-float v5, v4

    int-to-float v6, v3

    div-float v7, v5, v6

    .line 387
    nop

    .line 389
    const/high16 v8, 0x44f00000    # 1920.0f

    cmpl-float v9, v6, v8

    const/high16 v10, 0x44870000    # 1080.0f

    if-gtz v9, :cond_26

    cmpl-float v9, v5, v10

    if-lez v9, :cond_3e

    .line 390
    :cond_26
    const/high16 v3, 0x3f100000    # 0.5625f

    cmpg-float v4, v7, v3

    if-gez v4, :cond_32

    .line 391
    div-float v3, v8, v6

    .line 392
    mul-float/2addr v3, v5

    float-to-int v4, v3

    .line 393
    float-to-int v3, v8

    goto :goto_3e

    .line 394
    :cond_32
    cmpl-float v3, v7, v3

    if-lez v3, :cond_3c

    .line 395
    div-float v3, v10, v5

    .line 396
    mul-float/2addr v3, v6

    float-to-int v3, v3

    .line 397
    float-to-int v4, v10

    goto :goto_3e

    .line 399
    :cond_3c
    float-to-int v3, v8

    .line 400
    float-to-int v4, v10

    .line 404
    :cond_3e
    :goto_3e
    invoke-static {v0, v4, v3}, Lcom/android/internal/util/infinity/ImageHelper;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v5

    iput v5, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 405
    const/4 v5, 0x0

    iput-boolean v5, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 406
    iput-boolean v5, v0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 407
    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 408
    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    .line 409
    const/16 v2, 0x4000

    new-array v2, v2, [B

    iput-object v2, v0, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    .line 411
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2
    :try_end_57
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_57} :catch_13a
    .catchall {:try_start_6 .. :try_end_57} :catchall_135

    .line 412
    if-nez v2, :cond_61

    .line 456
    if-eqz v2, :cond_5e

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 457
    :cond_5e
    nop

    .line 458
    nop

    .line 412
    return-object v1

    .line 414
    :cond_61
    :try_start_61
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v3, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7
    :try_end_67
    .catch Ljava/io/IOException; {:try_start_61 .. :try_end_67} :catch_12f
    .catchall {:try_start_61 .. :try_end_67} :catchall_129

    .line 416
    int-to-float v4, v4

    :try_start_68
    iget v6, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v6, v6

    div-float v6, v4, v6

    .line 417
    int-to-float v3, v3

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v0, v0

    div-float v0, v3, v0

    .line 418
    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v4, v8

    .line 419
    div-float/2addr v3, v8

    .line 421
    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    .line 422
    invoke-virtual {v8, v6, v0, v4, v3}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 424
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 425
    invoke-virtual {v0, v8}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 426
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    const/4 v8, 0x2

    div-int/2addr v6, v8

    int-to-float v6, v6

    sub-float/2addr v4, v6

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    div-int/2addr v6, v8

    int-to-float v6, v6

    sub-float/2addr v3, v6

    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6, v8}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual {v0, v2, v4, v3, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 428
    new-instance v0, Landroid/media/ExifInterface;

    invoke-direct {v0, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 429
    const-string p0, "Orientation"

    invoke-virtual {v0, p0, v5}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result p0

    .line 430
    new-instance v12, Landroid/graphics/Matrix;

    invoke-direct {v12}, Landroid/graphics/Matrix;-><init>()V

    .line 431
    const/4 v0, 0x6

    if-ne p0, v0, :cond_b7

    .line 432
    const/high16 p0, 0x42b40000    # 90.0f

    invoke-virtual {v12, p0}, Landroid/graphics/Matrix;->postRotate(F)Z

    goto :goto_c9

    .line 433
    :cond_b7
    const/4 v0, 0x3

    if-ne p0, v0, :cond_c0

    .line 434
    const/high16 p0, 0x43340000    # 180.0f

    invoke-virtual {v12, p0}, Landroid/graphics/Matrix;->postRotate(F)Z

    goto :goto_c9

    .line 435
    :cond_c0
    const/16 v0, 0x8

    if-ne p0, v0, :cond_c9

    .line 436
    const/high16 p0, 0x43870000    # 270.0f

    invoke-virtual {v12, p0}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 438
    :cond_c9
    :goto_c9
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    const/4 v13, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v7 .. v13}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 440
    new-instance p0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_dd
    .catch Ljava/io/IOException; {:try_start_68 .. :try_end_dd} :catch_124
    .catchall {:try_start_68 .. :try_end_dd} :catchall_11e

    .line 441
    :try_start_dd
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x5a

    invoke-virtual {v7, v0, v3, p0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 443
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 446
    if-eqz v2, :cond_ed

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 447
    :cond_ed
    if-eqz v7, :cond_f4

    if-eq v7, v2, :cond_f4

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    .line 448
    :cond_f4
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 450
    array-length v3, v0

    invoke-static {v0, v5, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1
    :try_end_fc
    .catch Ljava/io/IOException; {:try_start_dd .. :try_end_fc} :catch_119
    .catchall {:try_start_dd .. :try_end_fc} :catchall_113

    .line 456
    if-eqz v2, :cond_101

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 457
    :cond_101
    if-eqz v7, :cond_108

    if-eq v7, v2, :cond_108

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    .line 458
    :cond_108
    nop

    .line 460
    :try_start_109
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_10c
    .catch Ljava/io/IOException; {:try_start_109 .. :try_end_10c} :catch_10d

    .line 463
    goto :goto_112

    .line 461
    :catch_10d
    move-exception v0

    move-object p0, v0

    .line 462
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 450
    :goto_112
    return-object v1

    .line 456
    :catchall_113
    move-exception v0

    move-object v1, v2

    move-object v2, p0

    move-object p0, v0

    goto/16 :goto_15e

    .line 452
    :catch_119
    move-exception v0

    move-object v3, v2

    move-object v2, p0

    move-object p0, v0

    goto :goto_13f

    .line 456
    :catchall_11e
    move-exception v0

    move-object p0, v0

    move-object v14, v2

    move-object v2, v1

    move-object v1, v14

    goto :goto_15e

    .line 452
    :catch_124
    move-exception v0

    move-object p0, v0

    move-object v3, v2

    move-object v2, v1

    goto :goto_13f

    .line 456
    :catchall_129
    move-exception v0

    move-object p0, v0

    move-object v7, v1

    move-object v1, v2

    move-object v2, v7

    goto :goto_15e

    .line 452
    :catch_12f
    move-exception v0

    move-object p0, v0

    move-object v7, v1

    move-object v3, v2

    move-object v2, v7

    goto :goto_13f

    .line 456
    :catchall_135
    move-exception v0

    move-object p0, v0

    move-object v2, v1

    move-object v7, v2

    goto :goto_15e

    .line 452
    :catch_13a
    move-exception v0

    move-object p0, v0

    move-object v2, v1

    move-object v3, v2

    move-object v7, v3

    .line 453
    :goto_13f
    :try_start_13f
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_142
    .catchall {:try_start_13f .. :try_end_142} :catchall_15b

    .line 456
    if-eqz v3, :cond_147

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 457
    :cond_147
    if-eqz v7, :cond_14e

    if-eq v7, v3, :cond_14e

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    .line 458
    :cond_14e
    if-eqz v2, :cond_15a

    .line 460
    :try_start_150
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_153
    .catch Ljava/io/IOException; {:try_start_150 .. :try_end_153} :catch_154

    .line 463
    :goto_153
    goto :goto_15a

    .line 461
    :catch_154
    move-exception v0

    move-object p0, v0

    .line 462
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_153

    .line 466
    :cond_15a
    :goto_15a
    return-object v1

    .line 456
    :catchall_15b
    move-exception v0

    move-object p0, v0

    move-object v1, v3

    :goto_15e
    if-eqz v1, :cond_163

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 457
    :cond_163
    if-eqz v7, :cond_16a

    if-eq v7, v1, :cond_16a

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    .line 458
    :cond_16a
    if-eqz v2, :cond_174

    .line 460
    :try_start_16c
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_16f
    .catch Ljava/io/IOException; {:try_start_16c .. :try_end_16f} :catch_170

    .line 463
    goto :goto_174

    .line 461
    :catch_170
    move-exception v0

    .line 462
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 465
    :cond_174
    :goto_174
    throw p0
.end method

.method public static blacklist getGrayscaleBlurredImage(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 3

    .line 346
    const/high16 v0, 0x40600000    # 3.5f

    invoke-static {p0, p1, v0}, Lcom/android/internal/util/infinity/ImageHelper;->getGrayscaleBlurredImage(Landroid/content/Context;Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist getGrayscaleBlurredImage(Landroid/content/Context;Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .registers 6

    .line 350
    nop

    .line 351
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 350
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 353
    invoke-static {p0, p1, p2}, Lcom/android/internal/util/infinity/ImageHelper;->getBlurredImage(Landroid/content/Context;Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/util/infinity/ImageHelper;->toGrayscale(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 354
    return-object p0
.end method

.method public static blacklist getRoundedCornerBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 8

    .line 180
    if-nez p0, :cond_4

    .line 181
    const/4 p0, 0x0

    return-object p0

    .line 183
    :cond_4
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 185
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 188
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 189
    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v6, 0x0

    invoke-direct {v3, v6, v6, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 190
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4, v3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 192
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 193
    invoke-virtual {v1, v6, v6, v6, v6}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 194
    const v5, -0xbdbdbe

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 195
    const/high16 v5, 0x41c00000    # 24.0f

    invoke-virtual {v1, v4, v5, v5, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 196
    new-instance v4, Landroid/graphics/PorterDuffXfermode;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v5}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 197
    invoke-virtual {v1, p0, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 198
    return-object v0
.end method

.method public static blacklist getVector(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;
    .registers 3

    .line 223
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, v0, v0}, Lcom/android/internal/util/infinity/ImageHelper;->getVector(Landroid/content/res/Resources;IIIZ)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist getVector(Landroid/content/res/Resources;III)Landroid/graphics/drawable/Drawable;
    .registers 5

    .line 227
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/android/internal/util/infinity/ImageHelper;->getVector(Landroid/content/res/Resources;IIIZ)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist getVector(Landroid/content/res/Resources;IIIZ)Landroid/graphics/drawable/Drawable;
    .registers 7

    .line 236
    const/16 v0, 0x200

    if-gtz p2, :cond_5

    .line 237
    move p2, v0

    .line 239
    :cond_5
    if-gtz p3, :cond_8

    .line 240
    goto :goto_9

    .line 239
    :cond_8
    move v0, p2

    .line 243
    :goto_9
    new-instance p2, Landroid/graphics/drawable/VectorDrawable;

    invoke-direct {p2}, Landroid/graphics/drawable/VectorDrawable;-><init>()V

    .line 244
    const/4 v1, 0x0

    invoke-virtual {p2, v1, v1, v0, p3}, Landroid/graphics/drawable/VectorDrawable;->setBounds(IIII)V

    .line 246
    :try_start_12
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object p1

    .line 247
    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object p3

    .line 250
    :goto_1a
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_25

    const/4 v1, 0x1

    if-eq v0, v1, :cond_25

    goto :goto_1a

    .line 255
    :cond_25
    nop

    .line 259
    invoke-virtual {p2, p0, p1, p3}, Landroid/graphics/drawable/VectorDrawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V

    .line 261
    if-nez p4, :cond_2c

    .line 262
    return-object p2

    .line 265
    :cond_2c
    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-static {p2}, Lcom/android/internal/util/infinity/ImageHelper;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_35} :catch_36

    return-object p1

    .line 266
    :catch_36
    move-exception p0

    .line 268
    const/4 p0, 0x0

    return-object p0
.end method

.method public static blacklist getVector(Landroid/content/res/Resources;IZ)Landroid/graphics/drawable/Drawable;
    .registers 4

    .line 231
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, v0, p2}, Lcom/android/internal/util/infinity/ImageHelper;->getVector(Landroid/content/res/Resources;IIIZ)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist resize(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;
    .registers 9

    .line 150
    if-eqz p1, :cond_63

    if-nez p0, :cond_5

    goto :goto_63

    .line 153
    :cond_5
    instance-of v0, p1, Landroid/graphics/drawable/VectorDrawable;

    if-eqz v0, :cond_a

    .line 154
    return-object p1

    .line 156
    :cond_a
    invoke-static {p0, p2}, Lcom/android/internal/util/infinity/ImageHelper;->dpToPx(Landroid/content/Context;I)I

    move-result p2

    .line 157
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    .line 158
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 160
    int-to-float p2, p2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float v1, p2, v1

    .line 161
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float v2, p2, v2

    .line 162
    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr p2, v3

    .line 163
    nop

    .line 165
    new-instance v3, Landroid/graphics/Paint;

    const/4 v4, 0x2

    invoke-direct {v3, v4}, Landroid/graphics/Paint;-><init>(I)V

    .line 166
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 168
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 169
    invoke-virtual {v5, v1, v2, p2, p2}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 171
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 172
    invoke-virtual {v1, v5}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 173
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/2addr v2, v4

    int-to-float v2, v2

    sub-float v2, p2, v2

    .line 174
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    div-int/2addr v5, v4

    int-to-float v4, v5

    sub-float/2addr p2, v4

    .line 173
    invoke-virtual {v1, p1, v2, p2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 175
    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-direct {p1, p0, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object p1

    .line 151
    :cond_63
    :goto_63
    const/4 p0, 0x0

    return-object p0
.end method

.method public static blacklist toGrayscale(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 9

    .line 123
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 124
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 126
    :try_start_8
    invoke-static {p0}, Lcom/android/internal/util/infinity/ImageHelper;->RGB565toARGB888(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_c} :catch_d

    .line 129
    goto :goto_11

    .line 127
    :catch_d
    move-exception v2

    .line 128
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 131
    :goto_11
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v0, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 132
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 133
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    .line 134
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 135
    new-instance v5, Landroid/graphics/ColorMatrix;

    invoke-direct {v5}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 136
    new-instance v6, Landroid/graphics/Rect;

    const/4 v7, 0x0

    invoke-direct {v6, v7, v7, v1, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 137
    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 139
    new-instance v0, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v0, v5}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    .line 140
    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 141
    invoke-virtual {v3, p0, v6, v6, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 142
    return-object v2
.end method
