.class public Lcom/android/internal/util/UserIcons;
.super Ljava/lang/Object;
.source "UserIcons.java"


# static fields
.field private static final blacklist USER_ICON_COLORS:[I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 36
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lcom/android/internal/util/UserIcons;->USER_ICON_COLORS:[I

    return-void

    :array_a
    .array-data 4
        0x1060473
        0x1060474
        0x1060475
        0x1060476
        0x1060477
        0x1060478
        0x1060479
        0x106047a
    .end array-data
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist convertToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .registers 3

    .line 51
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-static {p0, v0, v1}, Lcom/android/internal/util/UserIcons;->convertToBitmapAtSize(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist convertToBitmapAtSize(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;
    .registers 6

    .line 63
    if-nez p0, :cond_4

    .line 64
    const/4 p0, 0x0

    return-object p0

    .line 66
    :cond_4
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 67
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 68
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v2, p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 69
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 70
    return-object v0
.end method

.method public static blacklist convertToBitmapAtUserIconSize(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .registers 3

    .line 58
    const v0, 0x10503e0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    .line 59
    invoke-static {p1, p0, p0}, Lcom/android/internal/util/UserIcons;->convertToBitmapAtSize(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist getBaseDefaultUserIcon(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .registers 3

    .line 118
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/os/Flags;->materialDefaultUserIcon()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_13

    .line 119
    const v0, 0x10806ee

    invoke-virtual {p0, v0, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    .line 121
    :cond_13
    const v0, 0x10803b4

    invoke-virtual {p0, v0, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist getDefaultUserIcon(Landroid/content/res/Resources;IZ)Landroid/graphics/drawable/Drawable;
    .registers 4

    .line 83
    if-eqz p2, :cond_6

    const p2, 0x106047c

    goto :goto_9

    :cond_6
    const p2, 0x106047b

    .line 84
    :goto_9
    const/16 v0, -0x2710

    if-eq p1, v0, :cond_15

    .line 86
    sget-object p2, Lcom/android/internal/util/UserIcons;->USER_ICON_COLORS:[I

    sget-object v0, Lcom/android/internal/util/UserIcons;->USER_ICON_COLORS:[I

    array-length v0, v0

    rem-int/2addr p1, v0

    aget p2, p2, p1

    .line 88
    :cond_15
    const/4 p1, 0x0

    invoke-virtual {p0, p2, p1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/internal/util/UserIcons;->getDefaultUserIconInColor(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist getDefaultUserIconInColor(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;
    .registers 4

    .line 98
    invoke-static {p0}, Lcom/android/internal/util/UserIcons;->getBaseDefaultUserIcon(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 99
    instance-of v0, p0, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v0, :cond_9

    .line 101
    return-object p0

    .line 103
    :cond_9
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, p1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 104
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v1, p1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 105
    return-object p0
.end method

.method public static blacklist getUserIconColors(Landroid/content/res/Resources;)[I
    .registers 6

    .line 128
    sget-object v0, Lcom/android/internal/util/UserIcons;->USER_ICON_COLORS:[I

    array-length v0, v0

    new-array v1, v0, [I

    .line 129
    const/4 v2, 0x0

    :goto_6
    if-ge v2, v0, :cond_16

    .line 130
    sget-object v3, Lcom/android/internal/util/UserIcons;->USER_ICON_COLORS:[I

    aget v3, v3, v2

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v3

    aput v3, v1, v2

    .line 129
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 132
    :cond_16
    return-object v1
.end method
