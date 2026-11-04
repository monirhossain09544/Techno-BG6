.class public Lcom/android/internal/util/ImageUtils;
.super Ljava/lang/Object;
.source "ImageUtils.java"


# static fields
.field private static final greylist-max-o ALPHA_TOLERANCE:I = 0x32

.field private static final greylist-max-o COMPACT_BITMAP_SIZE:I = 0x40

.field private static final greylist-max-o TOLERANCE:I = 0x14


# instance fields
.field private greylist-max-o mTempBuffer:[I

.field private greylist-max-o mTempCompactBitmap:Landroid/graphics/Bitmap;

.field private greylist-max-o mTempCompactBitmapCanvas:Landroid/graphics/Canvas;

.field private greylist-max-o mTempCompactBitmapPaint:Landroid/graphics/Paint;

.field private final greylist-max-o mTempMatrix:Landroid/graphics/Matrix;


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/internal/util/ImageUtils;->mTempMatrix:Landroid/graphics/Matrix;

    return-void
.end method

.method public static greylist-max-o buildScaledBitmap(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;
    .registers 4

    .line 140
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/android/internal/util/ImageUtils;->buildScaledBitmap(Landroid/graphics/drawable/Drawable;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist buildScaledBitmap(Landroid/graphics/drawable/Drawable;IIZ)Landroid/graphics/Bitmap;
    .registers 8

    .line 152
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 153
    return-object v0

    .line 155
    :cond_4
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 156
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 158
    if-gt v1, p1, :cond_1b

    if-gt v2, p2, :cond_1b

    instance-of v3, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v3, :cond_1b

    .line 160
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    .line 162
    :cond_1b
    if-lez v2, :cond_49

    if-gtz v1, :cond_20

    goto :goto_49

    .line 168
    :cond_20
    int-to-float p1, p1

    int-to-float v0, v1

    div-float/2addr p1, v0

    int-to-float p2, p2

    int-to-float v1, v2

    div-float/2addr p2, v1

    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 170
    if-nez p3, :cond_32

    .line 171
    const/high16 p2, 0x3f800000    # 1.0f

    invoke-static {p2, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 173
    :cond_32
    mul-float/2addr v0, p1

    float-to-int p2, v0

    .line 174
    mul-float/2addr p1, v1

    float-to-int p1, p1

    .line 175
    sget-object p3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p1, p3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p3

    .line 178
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 179
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v1, p2, p1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 180
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 182
    return-object p3

    .line 163
    :cond_49
    :goto_49
    return-object v0
.end method

.method public static blacklist calculateSampleSize(Landroid/util/Size;Landroid/util/Size;)I
    .registers 6

    .line 189
    nop

    .line 191
    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result v0

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v1

    const/4 v2, 0x1

    if-gt v0, v1, :cond_16

    .line 192
    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v1

    if-le v0, v1, :cond_35

    .line 193
    :cond_16
    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 194
    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    .line 198
    :goto_22
    div-int v1, v0, v2

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v3

    if-lt v1, v3, :cond_35

    div-int v1, p0, v2

    .line 199
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v3

    if-lt v1, v3, :cond_35

    .line 200
    mul-int/lit8 v2, v2, 0x2

    goto :goto_22

    .line 204
    :cond_35
    return v2
.end method

.method private greylist-max-o ensureBufferSize(I)V
    .registers 3

    .line 109
    iget-object v0, p0, Lcom/android/internal/util/ImageUtils;->mTempBuffer:[I

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/internal/util/ImageUtils;->mTempBuffer:[I

    array-length v0, v0

    if-ge v0, p1, :cond_d

    .line 110
    :cond_9
    new-array p1, p1, [I

    iput-object p1, p0, Lcom/android/internal/util/ImageUtils;->mTempBuffer:[I

    .line 112
    :cond_d
    return-void
.end method

.method public static greylist-max-o isGrayscale(I)Z
    .registers 6

    .line 121
    shr-int/lit8 v0, p0, 0x18

    and-int/lit16 v0, v0, 0xff

    .line 122
    const/16 v1, 0x32

    const/4 v2, 0x1

    if-ge v0, v1, :cond_a

    .line 123
    return v2

    .line 126
    :cond_a
    shr-int/lit8 v0, p0, 0x10

    and-int/lit16 v0, v0, 0xff

    .line 127
    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    .line 128
    and-int/lit16 p0, p0, 0xff

    .line 130
    sub-int v3, v0, v1

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    const/16 v4, 0x14

    if-ge v3, v4, :cond_2d

    sub-int/2addr v0, p0

    .line 131
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-ge v0, v4, :cond_2d

    sub-int/2addr v1, p0

    .line 132
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result p0

    if-ge p0, v4, :cond_2d

    goto :goto_2e

    :cond_2d
    const/4 v2, 0x0

    .line 130
    :goto_2e
    return v2
.end method

.method static synthetic blacklist lambda$loadThumbnail$0(Landroid/content/ContentProviderClient;Landroid/net/Uri;Landroid/os/Bundle;)Landroid/content/res/AssetFileDescriptor;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 222
    const-string v0, "image/*"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, p2, v1}, Landroid/content/ContentProviderClient;->openTypedAssetFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;

    move-result-object p0

    return-object p0
.end method

.method static synthetic blacklist lambda$loadThumbnail$1(Landroid/util/Size;Landroid/graphics/ImageDecoder;Landroid/graphics/ImageDecoder$ImageInfo;Landroid/graphics/ImageDecoder$Source;)V
    .registers 4

    .line 224
    const/4 p3, 0x1

    invoke-virtual {p1, p3}, Landroid/graphics/ImageDecoder;->setAllocator(I)V

    .line 226
    invoke-virtual {p2}, Landroid/graphics/ImageDecoder$ImageInfo;->getSize()Landroid/util/Size;

    move-result-object p2

    invoke-static {p2, p0}, Lcom/android/internal/util/ImageUtils;->calculateSampleSize(Landroid/util/Size;Landroid/util/Size;)I

    move-result p0

    .line 227
    if-le p0, p3, :cond_11

    .line 228
    invoke-virtual {p1, p0}, Landroid/graphics/ImageDecoder;->setTargetSampleSize(I)V

    .line 230
    :cond_11
    return-void
.end method

.method public static blacklist loadThumbnail(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/util/Size;)Landroid/graphics/Bitmap;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 216
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object p0

    .line 217
    :try_start_4
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 218
    const-string v1, "android.content.extra.SIZE"

    new-instance v2, Landroid/graphics/Point;

    .line 219
    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v3

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    .line 218
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 221
    new-instance v1, Lcom/android/internal/util/ImageUtils$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, v0}, Lcom/android/internal/util/ImageUtils$$ExternalSyntheticLambda0;-><init>(Landroid/content/ContentProviderClient;Landroid/net/Uri;Landroid/os/Bundle;)V

    invoke-static {v1}, Landroid/graphics/ImageDecoder;->createSource(Ljava/util/concurrent/Callable;)Landroid/graphics/ImageDecoder$Source;

    move-result-object p1

    new-instance v0, Lcom/android/internal/util/ImageUtils$$ExternalSyntheticLambda1;

    invoke-direct {v0, p2}, Lcom/android/internal/util/ImageUtils$$ExternalSyntheticLambda1;-><init>(Landroid/util/Size;)V

    invoke-static {p1, v0}, Landroid/graphics/ImageDecoder;->decodeBitmap(Landroid/graphics/ImageDecoder$Source;Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_2d
    .catchall {:try_start_4 .. :try_end_2d} :catchall_33

    .line 231
    if-eqz p0, :cond_32

    invoke-virtual {p0}, Landroid/content/ContentProviderClient;->close()V

    .line 221
    :cond_32
    return-object p1

    .line 216
    :catchall_33
    move-exception p1

    if-eqz p0, :cond_3e

    :try_start_36
    invoke-virtual {p0}, Landroid/content/ContentProviderClient;->close()V
    :try_end_39
    .catchall {:try_start_36 .. :try_end_39} :catchall_3a

    goto :goto_3e

    :catchall_3a
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3e
    :goto_3e
    throw p1
.end method


# virtual methods
.method public greylist-max-o isGrayscale(Landroid/graphics/Bitmap;)Z
    .registers 15

    .line 70
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 71
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 74
    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x40

    if-gt v0, v4, :cond_15

    if-le v1, v4, :cond_11

    goto :goto_15

    :cond_11
    move v12, v0

    move v8, v1

    move-object v5, p1

    goto :goto_5d

    .line 75
    :cond_15
    :goto_15
    iget-object v5, p0, Lcom/android/internal/util/ImageUtils;->mTempCompactBitmap:Landroid/graphics/Bitmap;

    if-nez v5, :cond_36

    .line 76
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/util/ImageUtils;->mTempCompactBitmap:Landroid/graphics/Bitmap;

    .line 79
    new-instance v5, Landroid/graphics/Canvas;

    iget-object v6, p0, Lcom/android/internal/util/ImageUtils;->mTempCompactBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v5, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v5, p0, Lcom/android/internal/util/ImageUtils;->mTempCompactBitmapCanvas:Landroid/graphics/Canvas;

    .line 80
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v5, p0, Lcom/android/internal/util/ImageUtils;->mTempCompactBitmapPaint:Landroid/graphics/Paint;

    .line 81
    iget-object v5, p0, Lcom/android/internal/util/ImageUtils;->mTempCompactBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 83
    :cond_36
    iget-object v5, p0, Lcom/android/internal/util/ImageUtils;->mTempMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v5}, Landroid/graphics/Matrix;->reset()V

    .line 84
    iget-object v5, p0, Lcom/android/internal/util/ImageUtils;->mTempMatrix:Landroid/graphics/Matrix;

    int-to-float v1, v1

    const/high16 v6, 0x42800000    # 64.0f

    div-float v1, v6, v1

    int-to-float v0, v0

    div-float/2addr v6, v0

    const/4 v0, 0x0

    invoke-virtual {v5, v1, v6, v0, v0}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 88
    iget-object v0, p0, Lcom/android/internal/util/ImageUtils;->mTempCompactBitmapCanvas:Landroid/graphics/Canvas;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 89
    iget-object v0, p0, Lcom/android/internal/util/ImageUtils;->mTempCompactBitmapCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/android/internal/util/ImageUtils;->mTempMatrix:Landroid/graphics/Matrix;

    iget-object v5, p0, Lcom/android/internal/util/ImageUtils;->mTempCompactBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, v1, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 90
    iget-object p1, p0, Lcom/android/internal/util/ImageUtils;->mTempCompactBitmap:Landroid/graphics/Bitmap;

    .line 91
    move v8, v4

    move v12, v8

    move-object v5, p1

    .line 94
    :goto_5d
    mul-int p1, v12, v8

    .line 95
    invoke-direct {p0, p1}, Lcom/android/internal/util/ImageUtils;->ensureBufferSize(I)V

    .line 96
    iget-object v6, p0, Lcom/android/internal/util/ImageUtils;->mTempBuffer:[I

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v7, 0x0

    move v11, v8

    invoke-virtual/range {v5 .. v12}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 97
    move v0, v2

    :goto_6c
    if-ge v0, p1, :cond_7c

    .line 98
    iget-object v1, p0, Lcom/android/internal/util/ImageUtils;->mTempBuffer:[I

    aget v1, v1, v0

    invoke-static {v1}, Lcom/android/internal/util/ImageUtils;->isGrayscale(I)Z

    move-result v1

    if-nez v1, :cond_79

    .line 99
    return v2

    .line 97
    :cond_79
    add-int/lit8 v0, v0, 0x1

    goto :goto_6c

    .line 102
    :cond_7c
    return v3
.end method
