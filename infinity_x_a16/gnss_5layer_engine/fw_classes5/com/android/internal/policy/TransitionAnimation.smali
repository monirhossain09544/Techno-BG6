.class public Lcom/android/internal/policy/TransitionAnimation;
.super Ljava/lang/Object;
.source "TransitionAnimation.java"


# static fields
.field private static final blacklist CLIP_REVEAL_TRANSLATION_Y_DP:I = 0x8

.field public static final blacklist DEFAULT_APP_TRANSITION_DURATION:I = 0x150

.field private static final blacklist DEFAULT_PACKAGE:Ljava/lang/String; = "android"

.field private static final blacklist MAX_CLIP_REVEAL_TRANSITION_DURATION:I = 0x1a4

.field private static final blacklist RECENTS_THUMBNAIL_FADEIN_FRACTION:F = 0.5f

.field private static final blacklist RECENTS_THUMBNAIL_FADEOUT_FRACTION:F = 0.5f

.field private static final blacklist THUMBNAIL_APP_TRANSITION_DURATION:I = 0x150

.field private static final blacklist THUMBNAIL_TRANSITION_ENTER_SCALE_DOWN:I = 0x2

.field private static final blacklist THUMBNAIL_TRANSITION_ENTER_SCALE_UP:I = 0x0

.field private static final blacklist THUMBNAIL_TRANSITION_EXIT_SCALE_DOWN:I = 0x3

.field private static final blacklist THUMBNAIL_TRANSITION_EXIT_SCALE_UP:I = 0x1

.field static final blacklist TOUCH_RESPONSE_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field public static final blacklist WALLPAPER_TRANSITION_CHANGE:I = 0x1

.field public static final blacklist WALLPAPER_TRANSITION_CLOSE:I = 0x3

.field public static final blacklist WALLPAPER_TRANSITION_INTRA_CLOSE:I = 0x5

.field public static final blacklist WALLPAPER_TRANSITION_INTRA_OPEN:I = 0x4

.field public static final blacklist WALLPAPER_TRANSITION_NONE:I = 0x0

.field public static final blacklist WALLPAPER_TRANSITION_OPEN:I = 0x2


# instance fields
.field private final blacklist mClipHorizontalInterpolator:Landroid/view/animation/Interpolator;

.field private final blacklist mClipRevealTranslationY:I

.field private final blacklist mConfigShortAnimTime:I

.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mDebug:Z

.field private final blacklist mDecelerateInterpolator:Landroid/view/animation/Interpolator;

.field private final blacklist mDefaultWindowAnimationStyleResId:I

.field private final blacklist mFastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

.field private final blacklist mInterpolator:Lcom/android/internal/policy/LogDecelerateInterpolator;

.field private final blacklist mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field private final blacklist mTag:Ljava/lang/String;

.field private final blacklist mThumbnailFadeInInterpolator:Landroid/view/animation/Interpolator;

.field private final blacklist mThumbnailFadeOutInterpolator:Landroid/view/animation/Interpolator;

.field private final blacklist mTmpFromClipRect:Landroid/graphics/Rect;

.field private final blacklist mTmpRect:Landroid/graphics/Rect;

.field private final blacklist mTmpToClipRect:Landroid/graphics/Rect;

.field private final blacklist mTouchResponseInterpolator:Landroid/view/animation/Interpolator;


# direct methods
.method public static synthetic blacklist $r8$lambda$nV5dl0nO-bayQzttfmqKVLs_2gE(Lcom/android/internal/policy/TransitionAnimation;F)F
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/policy/TransitionAnimation;->lambda$new$0(F)F

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$zYxFxJxkv5EOujazB0_cD5CJZ3Q(Lcom/android/internal/policy/TransitionAnimation;F)F
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/policy/TransitionAnimation;->lambda$new$1(F)F

    move-result p0

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 5

    .line 101
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3dcccccd    # 0.1f

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3e99999a    # 0.3f

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/internal/policy/TransitionAnimation;->TOUCH_RESPONSE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;ZLjava/lang/String;)V
    .registers 10

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    new-instance v0, Lcom/android/internal/policy/LogDecelerateInterpolator;

    const/16 v1, 0x64

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/LogDecelerateInterpolator;-><init>(II)V

    iput-object v0, p0, Lcom/android/internal/policy/TransitionAnimation;->mInterpolator:Lcom/android/internal/policy/LogDecelerateInterpolator;

    .line 111
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e99999a    # 0.3f

    const/4 v3, 0x0

    const v4, 0x3dcccccd    # 0.1f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v3, v4, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/internal/policy/TransitionAnimation;->mTouchResponseInterpolator:Landroid/view/animation/Interpolator;

    .line 113
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ecccccd    # 0.4f

    invoke-direct {v0, v3, v3, v1, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/internal/policy/TransitionAnimation;->mClipHorizontalInterpolator:Landroid/view/animation/Interpolator;

    .line 119
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/TransitionAnimation;->mTmpFromClipRect:Landroid/graphics/Rect;

    .line 120
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/TransitionAnimation;->mTmpToClipRect:Landroid/graphics/Rect;

    .line 121
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/TransitionAnimation;->mTmpRect:Landroid/graphics/Rect;

    .line 130
    iput-object p1, p0, Lcom/android/internal/policy/TransitionAnimation;->mContext:Landroid/content/Context;

    .line 131
    iput-boolean p2, p0, Lcom/android/internal/policy/TransitionAnimation;->mDebug:Z

    .line 132
    iput-object p3, p0, Lcom/android/internal/policy/TransitionAnimation;->mTag:Ljava/lang/String;

    .line 134
    const p2, 0x10c0003

    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object p2

    iput-object p2, p0, Lcom/android/internal/policy/TransitionAnimation;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    .line 136
    const p2, 0x10c000f

    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object p2

    iput-object p2, p0, Lcom/android/internal/policy/TransitionAnimation;->mFastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

    .line 138
    const p2, 0x10c000e

    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object p2

    iput-object p2, p0, Lcom/android/internal/policy/TransitionAnimation;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 140
    new-instance p2, Lcom/android/internal/policy/TransitionAnimation$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/android/internal/policy/TransitionAnimation$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/policy/TransitionAnimation;)V

    iput-object p2, p0, Lcom/android/internal/policy/TransitionAnimation;->mThumbnailFadeInInterpolator:Landroid/view/animation/Interpolator;

    .line 149
    new-instance p2, Lcom/android/internal/policy/TransitionAnimation$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lcom/android/internal/policy/TransitionAnimation$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/policy/TransitionAnimation;)V

    iput-object p2, p0, Lcom/android/internal/policy/TransitionAnimation;->mThumbnailFadeOutInterpolator:Landroid/view/animation/Interpolator;

    .line 158
    iget-object p2, p0, Lcom/android/internal/policy/TransitionAnimation;->mContext:Landroid/content/Context;

    .line 159
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    const/high16 p3, 0x41000000    # 8.0f

    mul-float/2addr p2, p3

    float-to-int p2, p2

    iput p2, p0, Lcom/android/internal/policy/TransitionAnimation;->mClipRevealTranslationY:I

    .line 160
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const/high16 p2, 0x10e0000

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/android/internal/policy/TransitionAnimation;->mConfigShortAnimTime:I

    .line 163
    iget-object p1, p0, Lcom/android/internal/policy/TransitionAnimation;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object p2, Lcom/android/internal/R$styleable;->Window:[I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 165
    const/16 p2, 0x8

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/android/internal/policy/TransitionAnimation;->mDefaultWindowAnimationStyleResId:I

    .line 167
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 168
    return-void
.end method

.method private static blacklist calculateClipRevealTransitionDuration(ZFFLandroid/graphics/Rect;)J
    .registers 4

    .line 857
    if-nez p0, :cond_5

    .line 858
    const-wide/16 p0, 0x150

    return-wide p0

    .line 860
    :cond_5
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p0

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p0, p1

    .line 861
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p1, p2

    .line 860
    invoke-static {p0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p0

    .line 862
    const/high16 p1, 0x42a80000    # 84.0f

    mul-float/2addr p0, p1

    const/high16 p1, 0x43a80000    # 336.0f

    add-float/2addr p0, p1

    float-to-long p0, p0

    return-wide p0
.end method

.method public static blacklist computePivot(IF)F
    .registers 4

    .line 976
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr p1, v0

    .line 977
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x38d1b717    # 1.0E-4f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_10

    .line 978
    int-to-float p0, p0

    return p0

    .line 980
    :cond_10
    neg-int p0, p0

    int-to-float p0, p0

    div-float/2addr p0, p1

    return p0
.end method

.method public static blacklist configureScreenshotLayer(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/window/ScreenCaptureInternal$ScreenshotHardwareBuffer;)V
    .registers 4

    .line 1025
    invoke-virtual {p2}, Landroid/window/ScreenCaptureInternal$ScreenshotHardwareBuffer;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/view/SurfaceControl$Transaction;->setBuffer(Landroid/view/SurfaceControl;Landroid/hardware/HardwareBuffer;)Landroid/view/SurfaceControl$Transaction;

    .line 1026
    invoke-virtual {p2}, Landroid/window/ScreenCaptureInternal$ScreenshotHardwareBuffer;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/ColorSpace;->getDataSpace()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/view/SurfaceControl$Transaction;->setDataSpace(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 1028
    invoke-virtual {p2}, Landroid/window/ScreenCaptureInternal$ScreenshotHardwareBuffer;->containsHdrLayers()Z

    move-result p2

    if-eqz p2, :cond_1c

    .line 1029
    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Landroid/view/SurfaceControl$Transaction;->setDimmingEnabled(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    .line 1031
    :cond_1c
    return-void
.end method

.method private static blacklist createCurvedMotion(FFFF)Landroid/view/animation/Animation;
    .registers 5

    .line 906
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    return-object v0
.end method

.method public static blacklist createHiddenByKeyguardExit(Landroid/content/Context;Lcom/android/internal/policy/LogDecelerateInterpolator;ZZZ)Landroid/view/animation/Animation;
    .registers 5

    .line 996
    if-eqz p3, :cond_a

    .line 997
    const p1, 0x10a0063

    invoke-static {p0, p1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p0

    return-object p0

    .line 1001
    :cond_a
    if-eqz p4, :cond_10

    .line 1002
    const p2, 0x10a0064

    goto :goto_19

    .line 1003
    :cond_10
    if-eqz p2, :cond_16

    .line 1004
    const p2, 0x10a0065

    goto :goto_19

    .line 1006
    :cond_16
    const p2, 0x10a0062

    .line 1009
    :goto_19
    invoke-static {p0, p2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p0

    check-cast p0, Landroid/view/animation/AnimationSet;

    .line 1012
    invoke-virtual {p0}, Landroid/view/animation/AnimationSet;->getAnimations()Ljava/util/List;

    move-result-object p2

    .line 1013
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    :goto_29
    if-ltz p3, :cond_37

    .line 1014
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/view/animation/Animation;

    invoke-virtual {p4, p1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1013
    add-int/lit8 p3, p3, -0x1

    goto :goto_29

    .line 1017
    :cond_37
    return-object p0
.end method

.method public static blacklist getBorderLuma(Landroid/hardware/HardwareBuffer;Landroid/graphics/ColorSpace;)F
    .registers 15

    .line 1071
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 1072
    return v0

    .line 1074
    :cond_4
    invoke-virtual {p0}, Landroid/hardware/HardwareBuffer;->getFormat()I

    move-result v1

    .line 1076
    const/4 v2, 0x1

    if-ne v1, v2, :cond_a9

    invoke-static {p0}, Lcom/android/internal/policy/TransitionAnimation;->hasProtectedContent(Landroid/hardware/HardwareBuffer;)Z

    move-result v3

    if-eqz v3, :cond_13

    goto/16 :goto_a9

    .line 1080
    :cond_13
    invoke-virtual {p0}, Landroid/hardware/HardwareBuffer;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/hardware/HardwareBuffer;->getHeight()I

    move-result v4

    invoke-static {v3, v4, v1, v2}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v1

    .line 1082
    invoke-virtual {v1}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v3

    invoke-virtual {v3, p0, p1}, Landroid/view/Surface;->attachAndQueueBufferWithColorSpace(Landroid/hardware/HardwareBuffer;Landroid/graphics/ColorSpace;)V

    .line 1083
    invoke-virtual {v1}, Landroid/media/ImageReader;->acquireLatestImage()Landroid/media/Image;

    move-result-object p0

    .line 1084
    if-eqz p0, :cond_a8

    invoke-virtual {p0}, Landroid/media/Image;->getPlaneCount()I

    move-result p1

    if-ge p1, v2, :cond_34

    goto/16 :goto_a8

    .line 1088
    :cond_34
    invoke-virtual {p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object p1

    const/4 v0, 0x0

    aget-object p1, p1, v0

    .line 1089
    invoke-virtual {p1}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 1090
    invoke-virtual {p0}, Landroid/media/Image;->getWidth()I

    move-result v4

    .line 1091
    invoke-virtual {p0}, Landroid/media/Image;->getHeight()I

    move-result p0

    .line 1092
    invoke-virtual {p1}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v5

    .line 1093
    invoke-virtual {p1}, Landroid/media/Image$Plane;->getRowStride()I

    move-result p1

    .line 1095
    const/16 v6, 0x100

    new-array v7, v6, [I

    .line 1098
    nop

    .line 1099
    add-int/lit8 v8, v4, -0xa

    move v9, v0

    :goto_57
    if-ge v9, v8, :cond_70

    .line 1100
    invoke-static {v3, v9, v0, v5, p1}, Lcom/android/internal/policy/TransitionAnimation;->getPixelLuminance(Ljava/nio/ByteBuffer;IIII)I

    move-result v10

    .line 1101
    add-int/lit8 v11, p0, -0x1

    invoke-static {v3, v9, v11, v5, p1}, Lcom/android/internal/policy/TransitionAnimation;->getPixelLuminance(Ljava/nio/ByteBuffer;IIII)I

    move-result v11

    .line 1102
    aget v12, v7, v10

    add-int/2addr v12, v2

    aput v12, v7, v10

    .line 1103
    aget v10, v7, v11

    add-int/2addr v10, v2

    aput v10, v7, v11

    .line 1099
    add-int/lit8 v9, v9, 0xa

    goto :goto_57

    .line 1107
    :cond_70
    add-int/lit8 v8, p0, -0xa

    move v9, v0

    :goto_73
    if-ge v9, v8, :cond_8c

    .line 1108
    invoke-static {v3, v0, v9, v5, p1}, Lcom/android/internal/policy/TransitionAnimation;->getPixelLuminance(Ljava/nio/ByteBuffer;IIII)I

    move-result v10

    .line 1109
    add-int/lit8 v11, v4, -0x1

    invoke-static {v3, v11, v9, v5, p1}, Lcom/android/internal/policy/TransitionAnimation;->getPixelLuminance(Ljava/nio/ByteBuffer;IIII)I

    move-result v11

    .line 1110
    aget v12, v7, v10

    add-int/2addr v12, v2

    aput v12, v7, v10

    .line 1111
    aget v10, v7, v11

    add-int/2addr v10, v2

    aput v10, v7, v11

    .line 1107
    add-int/lit8 v9, v9, 0xa

    goto :goto_73

    .line 1114
    :cond_8c
    invoke-virtual {v1}, Landroid/media/ImageReader;->close()V

    .line 1117
    add-int/2addr v4, p0

    div-int/lit8 v4, v4, 0xa

    .line 1118
    nop

    .line 1119
    nop

    .line 1120
    move p0, v0

    move p1, p0

    :goto_96
    if-ge p0, v6, :cond_a3

    .line 1121
    aget v1, v7, p0

    add-int/2addr p1, v1

    .line 1122
    if-lt p1, v4, :cond_a0

    .line 1123
    nop

    .line 1124
    move v0, p0

    goto :goto_a3

    .line 1120
    :cond_a0
    add-int/lit8 p0, p0, 0x1

    goto :goto_96

    .line 1127
    :cond_a3
    :goto_a3
    int-to-float p0, v0

    const/high16 p1, 0x437f0000    # 255.0f

    div-float/2addr p0, p1

    return p0

    .line 1085
    :cond_a8
    :goto_a8
    return v0

    .line 1077
    :cond_a9
    :goto_a9
    return v0
.end method

.method public static blacklist getBorderLuma(Landroid/hardware/HardwareBuffer;Landroid/graphics/ColorSpace;Landroid/view/SurfaceControl;)F
    .registers 4

    .line 1045
    invoke-static {p0}, Lcom/android/internal/policy/TransitionAnimation;->hasProtectedContent(Landroid/hardware/HardwareBuffer;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1048
    invoke-virtual {p0}, Landroid/hardware/HardwareBuffer;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/hardware/HardwareBuffer;->getHeight()I

    move-result p0

    invoke-static {p2, p1, p0}, Lcom/android/internal/policy/TransitionAnimation;->getBorderLuma(Landroid/view/SurfaceControl;II)F

    move-result p0

    return p0

    .line 1051
    :cond_13
    invoke-static {p0, p1}, Lcom/android/internal/policy/TransitionAnimation;->getBorderLuma(Landroid/hardware/HardwareBuffer;Landroid/graphics/ColorSpace;)F

    move-result p0

    return p0
.end method

.method public static blacklist getBorderLuma(Landroid/view/SurfaceControl;II)F
    .registers 5

    .line 1056
    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1057
    const/high16 p1, 0x3f800000    # 1.0f

    invoke-static {p0, v0, p1}, Landroid/window/ScreenCaptureInternal;->captureLayers(Landroid/view/SurfaceControl;Landroid/graphics/Rect;F)Landroid/window/ScreenCaptureInternal$ScreenshotHardwareBuffer;

    move-result-object p0

    .line 1058
    if-nez p0, :cond_10

    .line 1059
    const/4 p0, 0x0

    return p0

    .line 1061
    :cond_10
    invoke-virtual {p0}, Landroid/window/ScreenCaptureInternal$ScreenshotHardwareBuffer;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object p1

    .line 1062
    invoke-virtual {p0}, Landroid/window/ScreenCaptureInternal$ScreenshotHardwareBuffer;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/internal/policy/TransitionAnimation;->getBorderLuma(Landroid/hardware/HardwareBuffer;Landroid/graphics/ColorSpace;)F

    move-result p0

    .line 1063
    if-eqz p1, :cond_21

    .line 1064
    invoke-virtual {p1}, Landroid/hardware/HardwareBuffer;->close()V

    .line 1066
    :cond_21
    return p0
.end method

.method private blacklist getCachedAnimations(Landroid/view/WindowManager$LayoutParams;)Lcom/android/internal/policy/AttributeCache$Entry;
    .registers 6

    .line 342
    iget-boolean v0, p0, Lcom/android/internal/policy/TransitionAnimation;->mDebug:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_37

    .line 343
    iget-object v0, p0, Lcom/android/internal/policy/TransitionAnimation;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Loading animations: layout params pkg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 344
    if-eqz p1, :cond_17

    iget-object v3, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    goto :goto_18

    :cond_17
    move-object v3, v1

    :goto_18
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " resId=0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 345
    if-eqz p1, :cond_2b

    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_2c

    :cond_2b
    move-object v3, v1

    :goto_2c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 343
    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    :cond_37
    if-eqz p1, :cond_7b

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    if-eqz v0, :cond_7b

    .line 351
    iget-object v0, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    const-string v1, "android"

    if-eqz v0, :cond_46

    iget-object v0, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    goto :goto_47

    :cond_46
    move-object v0, v1

    .line 352
    :goto_47
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/TransitionAnimation;->getAnimationStyleResId(Landroid/view/WindowManager$LayoutParams;)I

    move-result p1

    .line 353
    const/high16 v2, -0x1000000

    and-int/2addr v2, p1

    const/high16 v3, 0x1000000

    if-ne v2, v3, :cond_53

    .line 354
    goto :goto_54

    .line 353
    :cond_53
    move-object v1, v0

    .line 356
    :goto_54
    iget-boolean v0, p0, Lcom/android/internal/policy/TransitionAnimation;->mDebug:Z

    if-eqz v0, :cond_70

    .line 357
    iget-object v0, p0, Lcom/android/internal/policy/TransitionAnimation;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Loading animations: picked package="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    :cond_70
    invoke-static {}, Lcom/android/internal/policy/AttributeCache;->instance()Lcom/android/internal/policy/AttributeCache;

    move-result-object v0

    sget-object v2, Lcom/android/internal/R$styleable;->WindowAnimation:[I

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/internal/policy/AttributeCache;->get(Ljava/lang/String;I[I)Lcom/android/internal/policy/AttributeCache$Entry;

    move-result-object p1

    return-object p1

    .line 362
    :cond_7b
    return-object v1
.end method

.method private blacklist getCachedAnimations(Ljava/lang/String;I)Lcom/android/internal/policy/AttributeCache$Entry;
    .registers 4

    .line 387
    const/4 v0, -0x2

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/policy/TransitionAnimation;->getCachedAnimations(Ljava/lang/String;II)Lcom/android/internal/policy/AttributeCache$Entry;

    move-result-object p1

    return-object p1
.end method

.method private blacklist getCachedAnimations(Ljava/lang/String;II)Lcom/android/internal/policy/AttributeCache$Entry;
    .registers 7

    .line 367
    iget-boolean v0, p0, Lcom/android/internal/policy/TransitionAnimation;->mDebug:Z

    if-eqz v0, :cond_34

    .line 368
    iget-object v0, p0, Lcom/android/internal/policy/TransitionAnimation;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Loading animations: package="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " resId=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 369
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for user="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 368
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    :cond_34
    if-eqz p1, :cond_66

    .line 372
    const/high16 v0, -0x1000000

    and-int/2addr v0, p2

    const/high16 v1, 0x1000000

    if-ne v0, v1, :cond_3f

    .line 373
    const-string p1, "android"

    .line 375
    :cond_3f
    iget-boolean v0, p0, Lcom/android/internal/policy/TransitionAnimation;->mDebug:Z

    if-eqz v0, :cond_5b

    .line 376
    iget-object v0, p0, Lcom/android/internal/policy/TransitionAnimation;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Loading animations: picked package="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    :cond_5b
    invoke-static {}, Lcom/android/internal/policy/AttributeCache;->instance()Lcom/android/internal/policy/AttributeCache;

    move-result-object v0

    sget-object v1, Lcom/android/internal/R$styleable;->WindowAnimation:[I

    invoke-virtual {v0, p1, p2, v1, p3}, Lcom/android/internal/policy/AttributeCache;->get(Ljava/lang/String;I[II)Lcom/android/internal/policy/AttributeCache$Entry;

    move-result-object p1

    return-object p1

    .line 382
    :cond_66
    const/4 p1, 0x0

    return-object p1
.end method

.method private blacklist getNextAppTransitionStartRect(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 5

    .line 819
    if-nez p1, :cond_14

    if-nez p2, :cond_14

    .line 820
    iget-object p1, p0, Lcom/android/internal/policy/TransitionAnimation;->mTag:Ljava/lang/String;

    new-instance p2, Ljava/lang/Throwable;

    invoke-direct {p2}, Ljava/lang/Throwable;-><init>()V

    const-string v0, "Starting rect for container not available"

    invoke-static {p1, v0, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 821
    invoke-virtual {p3}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_1b

    .line 823
    :cond_14
    if-eqz p1, :cond_17

    goto :goto_18

    :cond_17
    move-object p1, p2

    :goto_18
    invoke-virtual {p3, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 825
    :goto_1b
    return-void
.end method

.method private static blacklist getPixelLuminance(Ljava/nio/ByteBuffer;IIII)I
    .registers 5

    .line 1133
    mul-int/2addr p2, p4

    mul-int/2addr p1, p3

    add-int/2addr p2, p1

    invoke-virtual {p0, p2}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result p0

    .line 1136
    and-int/lit16 p1, p0, 0xff

    .line 1137
    shr-int/lit8 p2, p0, 0x8

    and-int/lit16 p2, p2, 0xff

    .line 1138
    shr-int/lit8 p0, p0, 0x10

    and-int/lit16 p0, p0, 0xff

    .line 1140
    mul-int/lit8 p1, p1, 0x8

    mul-int/lit8 p2, p2, 0x16

    add-int/2addr p1, p2

    mul-int/lit8 p0, p0, 0x2

    add-int/2addr p1, p0

    shr-int/lit8 p0, p1, 0x5

    return p0
.end method

.method private blacklist getThumbnailTransitionState(ZZ)I
    .registers 3

    .line 870
    if-eqz p1, :cond_8

    .line 871
    if-eqz p2, :cond_6

    .line 872
    const/4 p1, 0x0

    return p1

    .line 874
    :cond_6
    const/4 p1, 0x2

    return p1

    .line 877
    :cond_8
    if-eqz p2, :cond_c

    .line 878
    const/4 p1, 0x1

    return p1

    .line 880
    :cond_c
    const/4 p1, 0x3

    return p1
.end method

.method public static blacklist hasProtectedContent(Landroid/hardware/HardwareBuffer;)Z
    .registers 5

    .line 1035
    invoke-virtual {p0}, Landroid/hardware/HardwareBuffer;->getUsage()J

    move-result-wide v0

    const-wide/16 v2, 0x4000

    and-long/2addr v0, v2

    cmp-long p0, v0, v2

    if-nez p0, :cond_d

    const/4 p0, 0x1

    goto :goto_e

    :cond_d
    const/4 p0, 0x0

    :goto_e
    return p0
.end method

.method public static blacklist initAttributeCache(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 2

    .line 1148
    invoke-static {p0}, Lcom/android/internal/policy/AttributeCache;->init(Landroid/content/Context;)V

    .line 1149
    invoke-static {}, Lcom/android/internal/policy/AttributeCache;->instance()Lcom/android/internal/policy/AttributeCache;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/internal/policy/AttributeCache;->monitorPackageRemove(Landroid/os/Handler;)V

    .line 1150
    return-void
.end method

.method private synthetic blacklist lambda$new$0(F)F
    .registers 4

    .line 142
    const/high16 v0, 0x3f000000    # 0.5f

    cmpg-float v1, p1, v0

    if-gez v1, :cond_8

    .line 143
    const/4 p1, 0x0

    return p1

    .line 145
    :cond_8
    sub-float/2addr p1, v0

    div-float/2addr p1, v0

    .line 147
    iget-object v0, p0, Lcom/android/internal/policy/TransitionAnimation;->mFastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v0, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p1

    return p1
.end method

.method private synthetic blacklist lambda$new$1(F)F
    .registers 4

    .line 151
    const/high16 v0, 0x3f000000    # 0.5f

    cmpg-float v1, p1, v0

    if-gez v1, :cond_e

    .line 152
    div-float/2addr p1, v0

    .line 153
    iget-object v0, p0, Lcom/android/internal/policy/TransitionAnimation;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v0, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p1

    return p1

    .line 155
    :cond_e
    const/high16 p1, 0x3f800000    # 1.0f

    return p1
.end method

.method public static blacklist loadAnimationSafely(Landroid/content/Context;ILjava/lang/String;)Landroid/view/animation/Animation;
    .registers 3

    .line 986
    :try_start_0
    invoke-static {p0, p1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p0
    :try_end_4
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_4} :catch_5
    .catch Landroid/view/InflateException; {:try_start_0 .. :try_end_4} :catch_5

    return-object p0

    .line 987
    :catch_5
    move-exception p0

    .line 988
    const-string p1, "Unable to load animation resource"

    invoke-static {p2, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 989
    const/4 p0, 0x0

    return-object p0
.end method

.method public static blacklist prepareThumbnailAnimationWithDuration(Landroid/view/animation/Animation;IIJLandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;
    .registers 8

    .line 890
    if-nez p0, :cond_4

    .line 891
    const/4 p0, 0x0

    return-object p0

    .line 894
    :cond_4
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-lez v0, :cond_d

    .line 895
    invoke-virtual {p0, p3, p4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 897
    :cond_d
    const/4 p3, 0x1

    invoke-virtual {p0, p3}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 898
    if-eqz p5, :cond_16

    .line 899
    invoke-virtual {p0, p5}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 901
    :cond_16
    invoke-virtual {p0, p1, p2, p1, p2}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 902
    return-object p0
.end method

.method private blacklist setupDefaultNextAppTransitionStartRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 5

    .line 447
    if-nez p1, :cond_12

    .line 448
    iget-object p1, p0, Lcom/android/internal/policy/TransitionAnimation;->mTag:Ljava/lang/String;

    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    const-string v1, "Starting rect for app requested, but none available"

    invoke-static {p1, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 449
    invoke-virtual {p2}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_15

    .line 451
    :cond_12
    invoke-virtual {p2, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 453
    :goto_15
    return-void
.end method

.method private blacklist shouldScaleDownThumbnailTransition(I)Z
    .registers 3

    .line 831
    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    return v0
.end method

.method private static blacklist updateToTranslucentAnimIfNeeded(I)I
    .registers 2

    .line 835
    const v0, 0x10a000f

    if-ne p0, v0, :cond_9

    .line 836
    const p0, 0x10a0012

    return p0

    .line 838
    :cond_9
    const v0, 0x10a000e

    if-ne p0, v0, :cond_12

    .line 839
    const p0, 0x10a0011

    return p0

    .line 841
    :cond_12
    return p0
.end method


# virtual methods
.method public blacklist createClipRevealAnimationLocked(IIZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/view/animation/Animation;
    .registers 24

    .line 458
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p4

    const/4 v4, 0x2

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    if-eqz p3, :cond_112

    .line 459
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 460
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v12

    .line 464
    iget-object v2, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpRect:Landroid/graphics/Rect;

    move-object/from16 v8, p6

    invoke-direct {v0, v8, v2}, Lcom/android/internal/policy/TransitionAnimation;->setupDefaultNextAppTransitionStartRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 466
    nop

    .line 467
    if-lez v12, :cond_2c

    .line 468
    iget-object v2, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v2, v8

    goto :goto_2d

    .line 467
    :cond_2c
    move v2, v6

    .line 470
    :goto_2d
    iget v8, v0, Lcom/android/internal/policy/TransitionAnimation;->mClipRevealTranslationY:I

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->height()I

    move-result v9

    int-to-float v9, v9

    const/high16 v10, 0x40e00000    # 7.0f

    div-float/2addr v9, v10

    mul-float/2addr v9, v2

    float-to-int v2, v9

    add-int/2addr v8, v2

    .line 471
    nop

    .line 472
    nop

    .line 473
    iget-object v2, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    .line 474
    iget-object v9, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->centerY()I

    move-result v9

    .line 475
    iget-object v10, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v10

    div-int/2addr v10, v4

    .line 476
    iget-object v11, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v11

    div-int/2addr v11, v4

    .line 477
    sub-int v4, v2, v10

    iget v13, v3, Landroid/graphics/Rect;->left:I

    sub-int v13, v4, v13

    .line 478
    sub-int/2addr v9, v11

    iget v11, v3, Landroid/graphics/Rect;->top:I

    sub-int v11, v9, v11

    .line 479
    nop

    .line 484
    iget v14, v3, Landroid/graphics/Rect;->top:I

    const/4 v15, 0x0

    if-le v14, v9, :cond_72

    .line 485
    iget v8, v3, Landroid/graphics/Rect;->top:I

    sub-int v8, v9, v8

    .line 486
    nop

    .line 487
    nop

    .line 488
    move v11, v13

    move v9, v15

    move v13, v9

    const/4 v14, 0x1

    goto :goto_76

    .line 484
    :cond_72
    move v9, v11

    move v11, v13

    move v14, v15

    move v13, v8

    .line 490
    :goto_76
    iget v7, v3, Landroid/graphics/Rect;->left:I

    if-le v7, v4, :cond_81

    .line 491
    iget v7, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v7

    .line 492
    nop

    .line 493
    move v11, v15

    const/4 v14, 0x1

    goto :goto_82

    .line 490
    :cond_81
    move v4, v15

    .line 495
    :goto_82
    iget v7, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v10

    if-ge v7, v2, :cond_94

    .line 496
    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int v4, v2, v3

    .line 497
    iget-object v2, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    sub-int v11, v1, v2

    .line 498
    const/4 v14, 0x1

    .line 500
    :cond_94
    int-to-float v2, v4

    int-to-float v3, v8

    move-object/from16 v4, p5

    invoke-static {v14, v2, v3, v4}, Lcom/android/internal/policy/TransitionAnimation;->calculateClipRevealTransitionDuration(ZFFLandroid/graphics/Rect;)J

    move-result-wide v7

    .line 504
    new-instance v4, Lcom/android/internal/policy/ClipRectLRAnimation;

    iget-object v10, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpRect:Landroid/graphics/Rect;

    .line 505
    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v10

    add-int/2addr v10, v11

    invoke-direct {v4, v11, v10, v15, v1}, Lcom/android/internal/policy/ClipRectLRAnimation;-><init>(IIII)V

    .line 506
    iget-object v10, v0, Lcom/android/internal/policy/TransitionAnimation;->mClipHorizontalInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v10}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 507
    long-to-float v10, v7

    const/high16 v11, 0x40200000    # 2.5f

    div-float/2addr v10, v11

    float-to-long v10, v10

    invoke-virtual {v4, v10, v11}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 509
    new-instance v10, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v10, v2, v6, v3, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 510
    if-eqz v14, :cond_bf

    iget-object v2, v0, Lcom/android/internal/policy/TransitionAnimation;->mTouchResponseInterpolator:Landroid/view/animation/Interpolator;

    goto :goto_c1

    .line 511
    :cond_bf
    iget-object v2, v0, Lcom/android/internal/policy/TransitionAnimation;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 510
    :goto_c1
    invoke-virtual {v10, v2}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 512
    invoke-virtual {v10, v7, v8}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 514
    move-wide v2, v7

    new-instance v8, Lcom/android/internal/policy/ClipRectTBAnimation;

    iget-object v6, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpRect:Landroid/graphics/Rect;

    .line 515
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    add-int/2addr v6, v9

    const/4 v14, 0x0

    move v7, v15

    iget-object v15, v0, Lcom/android/internal/policy/TransitionAnimation;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    const/4 v11, 0x0

    move-object/from16 v16, v10

    move v10, v6

    move-object/from16 v6, v16

    invoke-direct/range {v8 .. v15}, Lcom/android/internal/policy/ClipRectTBAnimation;-><init>(IIIIIILandroid/view/animation/Interpolator;)V

    .line 519
    iget-object v9, v0, Lcom/android/internal/policy/TransitionAnimation;->mTouchResponseInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v8, v9}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 520
    invoke-virtual {v8, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 523
    const-wide/16 v9, 0x4

    div-long/2addr v2, v9

    .line 524
    new-instance v9, Landroid/view/animation/AlphaAnimation;

    const/high16 v10, 0x3f000000    # 0.5f

    invoke-direct {v9, v10, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 525
    invoke-virtual {v9, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 526
    iget-object v0, v0, Lcom/android/internal/policy/TransitionAnimation;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v9, v0}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 528
    new-instance v0, Landroid/view/animation/AnimationSet;

    invoke-direct {v0, v7}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 529
    invoke-virtual {v0, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 530
    invoke-virtual {v0, v8}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 531
    invoke-virtual {v0, v6}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 532
    invoke-virtual {v0, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 533
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/view/animation/AnimationSet;->setZAdjustment(I)V

    .line 534
    invoke-virtual {v0, v1, v12, v1, v12}, Landroid/view/animation/AnimationSet;->initialize(IIII)V

    .line 535
    nop

    .line 536
    goto :goto_13d

    .line 538
    :cond_112
    const/4 v3, 0x1

    if-eq v1, v3, :cond_11b

    if-ne v1, v4, :cond_118

    goto :goto_11b

    .line 541
    :cond_118
    const-wide/16 v3, 0x150

    goto :goto_11e

    .line 539
    :cond_11b
    :goto_11b
    iget v1, v0, Lcom/android/internal/policy/TransitionAnimation;->mConfigShortAnimTime:I

    int-to-long v3, v1

    .line 543
    :goto_11e
    const/4 v1, 0x4

    if-eq v2, v1, :cond_12b

    const/4 v1, 0x5

    if-ne v2, v1, :cond_125

    goto :goto_12b

    .line 552
    :cond_125
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v1, v5, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    goto :goto_130

    .line 549
    :cond_12b
    :goto_12b
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v1, v5, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 554
    :goto_130
    iget-object v0, v0, Lcom/android/internal/policy/TransitionAnimation;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 555
    invoke-virtual {v1, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 556
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    move-object v0, v1

    .line 558
    :goto_13d
    return-object v0
.end method

.method public blacklist createCrossProfileAppsThumbnail(Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)Landroid/hardware/HardwareBuffer;
    .registers 9

    .line 798
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 799
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    .line 801
    new-instance v1, Landroid/graphics/Picture;

    invoke-direct {v1}, Landroid/graphics/Picture;-><init>()V

    .line 802
    invoke-virtual {v1, v0, p2}, Landroid/graphics/Picture;->beginRecording(II)Landroid/graphics/Canvas;

    move-result-object v2

    .line 803
    const v3, 0x3f19999a    # 0.6f

    const/4 v4, 0x0

    invoke-static {v3, v4, v4, v4}, Landroid/graphics/Color;->argb(FFFF)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 804
    iget-object v3, p0, Lcom/android/internal/policy/TransitionAnimation;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1050152

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 806
    sub-int v4, v0, v3

    div-int/lit8 v4, v4, 0x2

    sub-int v5, p2, v3

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v0, v3

    div-int/lit8 v0, v0, 0x2

    add-int/2addr p2, v3

    div-int/lit8 p2, p2, 0x2

    invoke-virtual {p1, v4, v5, v0, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 811
    iget-object p2, p0, Lcom/android/internal/policy/TransitionAnimation;->mContext:Landroid/content/Context;

    const v0, 0x106000b

    invoke-virtual {p2, v0}, Landroid/content/Context;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 812
    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 813
    invoke-virtual {v1}, Landroid/graphics/Picture;->endRecording()V

    .line 815
    invoke-static {v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Picture;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object p1

    return-object p1
.end method

.method public blacklist createCrossProfileAppsThumbnailAnimationLocked(Landroid/graphics/Rect;)Landroid/view/animation/Animation;
    .registers 8

    .line 224
    invoke-virtual {p0}, Lcom/android/internal/policy/TransitionAnimation;->loadCrossProfileAppThumbnailEnterAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    .line 225
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 226
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    .line 225
    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/android/internal/policy/TransitionAnimation;->prepareThumbnailAnimationWithDuration(Landroid/view/animation/Animation;IIJLandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object p1

    return-object p1
.end method

.method public blacklist createRelaunchAnimation(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/view/animation/Animation;
    .registers 13

    .line 405
    iget-object v0, p0, Lcom/android/internal/policy/TransitionAnimation;->mTmpFromClipRect:Landroid/graphics/Rect;

    invoke-direct {p0, p3, v0}, Lcom/android/internal/policy/TransitionAnimation;->setupDefaultNextAppTransitionStartRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 406
    iget-object p3, p0, Lcom/android/internal/policy/TransitionAnimation;->mTmpFromClipRect:Landroid/graphics/Rect;

    iget p3, p3, Landroid/graphics/Rect;->left:I

    .line 407
    iget-object v0, p0, Lcom/android/internal/policy/TransitionAnimation;->mTmpFromClipRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    .line 408
    iget-object v1, p0, Lcom/android/internal/policy/TransitionAnimation;->mTmpFromClipRect:Landroid/graphics/Rect;

    neg-int v2, p3

    neg-int v3, v0

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 410
    iget-object v1, p0, Lcom/android/internal/policy/TransitionAnimation;->mTmpToClipRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 411
    new-instance v1, Landroid/view/animation/AnimationSet;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 412
    iget-object v3, p0, Lcom/android/internal/policy/TransitionAnimation;->mTmpFromClipRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    .line 413
    iget-object v5, p0, Lcom/android/internal/policy/TransitionAnimation;->mTmpToClipRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    .line 414
    iget-object v6, p0, Lcom/android/internal/policy/TransitionAnimation;->mTmpFromClipRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    .line 418
    iget-object v7, p0, Lcom/android/internal/policy/TransitionAnimation;->mTmpToClipRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    iget v8, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v8

    iget v8, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v8

    int-to-float v7, v7

    .line 419
    nop

    .line 420
    cmpg-float v8, v3, v5

    if-gtz v8, :cond_60

    cmpg-float v8, v6, v7

    if-gtz v8, :cond_60

    .line 424
    new-instance p2, Landroid/view/animation/ClipRectAnimation;

    iget-object v3, p0, Lcom/android/internal/policy/TransitionAnimation;->mTmpFromClipRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/android/internal/policy/TransitionAnimation;->mTmpToClipRect:Landroid/graphics/Rect;

    invoke-direct {p2, v3, v5}, Landroid/view/animation/ClipRectAnimation;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    invoke-virtual {v1, p2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto :goto_73

    .line 428
    :cond_60
    new-instance v4, Landroid/view/animation/ScaleAnimation;

    div-float/2addr v3, v5

    div-float v5, v6, v7

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v4, v3, v8, v5, v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFF)V

    invoke-virtual {v1, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 432
    iget p2, p2, Landroid/graphics/Rect;->top:I

    int-to-float p2, p2

    mul-float/2addr p2, v6

    div-float/2addr p2, v7

    float-to-int v4, p2

    .line 438
    :goto_73
    new-instance p2, Landroid/view/animation/TranslateAnimation;

    iget v3, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr p3, v3

    int-to-float p3, p3

    iget p1, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, p1

    sub-int/2addr v0, v4

    int-to-float p1, v0

    const/4 v0, 0x0

    invoke-direct {p2, p3, v0, p1, v0}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 440
    invoke-virtual {v1, p2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 441
    const-wide/16 p1, 0x150

    invoke-virtual {v1, p1, p2}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 442
    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->setZAdjustment(I)V

    .line 443
    return-object v1
.end method

.method public blacklist createScaleUpAnimationLocked(IIZLandroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/view/animation/Animation;
    .registers 15

    .line 564
    iget-object v0, p0, Lcom/android/internal/policy/TransitionAnimation;->mTmpRect:Landroid/graphics/Rect;

    invoke-direct {p0, p5, v0}, Lcom/android/internal/policy/TransitionAnimation;->setupDefaultNextAppTransitionStartRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 565
    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result p5

    .line 566
    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result p4

    .line 567
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz p3, :cond_5c

    .line 569
    iget-object p2, p0, Lcom/android/internal/policy/TransitionAnimation;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    int-to-float p2, p2

    int-to-float p3, p5

    div-float v3, p2, p3

    .line 570
    iget-object p2, p0, Lcom/android/internal/policy/TransitionAnimation;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    int-to-float p2, p2

    int-to-float p3, p4

    div-float v5, p2, p3

    .line 571
    new-instance v2, Landroid/view/animation/ScaleAnimation;

    iget-object p2, p0, Lcom/android/internal/policy/TransitionAnimation;->mTmpRect:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->left:I

    .line 572
    invoke-static {p2, v3}, Lcom/android/internal/policy/TransitionAnimation;->computePivot(IF)F

    move-result v7

    iget-object p2, p0, Lcom/android/internal/policy/TransitionAnimation;->mTmpRect:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->top:I

    .line 573
    invoke-static {p2, v5}, Lcom/android/internal/policy/TransitionAnimation;->computePivot(IF)F

    move-result v8

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct/range {v2 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 574
    iget-object p2, p0, Lcom/android/internal/policy/TransitionAnimation;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, p2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 576
    new-instance p2, Landroid/view/animation/AlphaAnimation;

    invoke-direct {p2, v0, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 577
    iget-object p3, p0, Lcom/android/internal/policy/TransitionAnimation;->mThumbnailFadeOutInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p2, p3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 579
    new-instance p3, Landroid/view/animation/AnimationSet;

    const/4 v0, 0x0

    invoke-direct {p3, v0}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 580
    invoke-virtual {p3, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 581
    invoke-virtual {p3, p2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 582
    nop

    .line 583
    goto :goto_6e

    :cond_5c
    const/4 p3, 0x4

    if-eq p2, p3, :cond_69

    const/4 p3, 0x5

    if-ne p2, p3, :cond_63

    goto :goto_69

    .line 592
    :cond_63
    new-instance p3, Landroid/view/animation/AlphaAnimation;

    invoke-direct {p3, v1, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    goto :goto_6e

    .line 589
    :cond_69
    :goto_69
    new-instance p3, Landroid/view/animation/AlphaAnimation;

    invoke-direct {p3, v1, v0}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 599
    :goto_6e
    const/4 p2, 0x1

    if-eq p1, p2, :cond_78

    const/4 v0, 0x2

    if-ne p1, v0, :cond_75

    goto :goto_78

    .line 602
    :cond_75
    const-wide/16 v0, 0x150

    goto :goto_7b

    .line 600
    :cond_78
    :goto_78
    iget p1, p0, Lcom/android/internal/policy/TransitionAnimation;->mConfigShortAnimTime:I

    int-to-long v0, p1

    .line 604
    :goto_7b
    invoke-virtual {p3, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 605
    invoke-virtual {p3, p2}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 606
    iget-object p1, p0, Lcom/android/internal/policy/TransitionAnimation;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p3, p1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 607
    invoke-virtual {p3, p5, p4, p5, p4}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 608
    return-object p3
.end method

.method public blacklist createThumbnailAspectScaleAnimationLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/hardware/HardwareBuffer;ILandroid/graphics/Rect;Landroid/graphics/Rect;Z)Landroid/view/animation/Animation;
    .registers 32

    .line 698
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual/range {p3 .. p3}, Landroid/hardware/HardwareBuffer;->getWidth()I

    move-result v3

    .line 699
    const/high16 v4, 0x3f800000    # 1.0f

    if-lez v3, :cond_10

    int-to-float v5, v3

    goto :goto_11

    :cond_10
    move v5, v4

    .line 700
    :goto_11
    invoke-virtual/range {p3 .. p3}, Landroid/hardware/HardwareBuffer;->getHeight()I

    move-result v6

    .line 701
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v7

    .line 703
    int-to-float v8, v7

    div-float v10, v8, v5

    .line 704
    iget-object v5, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpRect:Landroid/graphics/Rect;

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    invoke-direct {v0, v8, v9, v5}, Lcom/android/internal/policy/TransitionAnimation;->getNextAppTransitionStartRect(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 711
    move/from16 v5, p4

    invoke-direct {v0, v5}, Lcom/android/internal/policy/TransitionAnimation;->shouldScaleDownThumbnailTransition(I)Z

    move-result v5

    const/4 v8, 0x0

    if-eqz v5, :cond_6c

    .line 712
    iget-object v5, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    .line 713
    iget-object v9, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    int-to-float v9, v9

    .line 717
    iget-object v11, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v11

    div-int/lit8 v11, v11, 0x2

    int-to-float v11, v11

    sub-float v12, v10, v4

    mul-float/2addr v11, v12

    iget v12, v1, Landroid/graphics/Rect;->left:I

    int-to-float v12, v12

    add-float/2addr v11, v12

    .line 718
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v12

    div-int/lit8 v12, v12, 0x2

    int-to-float v12, v12

    div-float v13, v4, v10

    sub-float v13, v4, v13

    mul-float/2addr v12, v13

    iget v13, v1, Landroid/graphics/Rect;->top:I

    int-to-float v13, v13

    add-float/2addr v12, v13

    .line 719
    iget-object v13, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v13}, Landroid/graphics/Rect;->width()I

    move-result v13

    div-int/lit8 v13, v13, 0x2

    int-to-float v13, v13

    .line 720
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v14

    div-int/lit8 v14, v14, 0x2

    int-to-float v14, v14

    div-float/2addr v14, v10

    move v15, v14

    move v14, v13

    goto :goto_80

    .line 722
    :cond_6c
    nop

    .line 723
    nop

    .line 724
    iget-object v5, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    .line 725
    iget-object v9, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    int-to-float v9, v9

    .line 726
    iget v11, v1, Landroid/graphics/Rect;->left:I

    int-to-float v11, v11

    .line 727
    iget v12, v1, Landroid/graphics/Rect;->top:I

    int-to-float v12, v12

    move v14, v8

    move v15, v14

    .line 729
    :goto_80
    const/4 v13, 0x0

    move/from16 p3, v5

    const-wide/16 v4, 0x150

    if-eqz p7, :cond_134

    .line 731
    move/from16 v16, v9

    new-instance v9, Landroid/view/animation/ScaleAnimation;

    move/from16 v17, v11

    move v11, v10

    const/high16 v10, 0x3f800000    # 1.0f

    move/from16 v18, v12

    const/high16 v12, 0x3f800000    # 1.0f

    move/from16 v19, v13

    move v13, v11

    move/from16 v22, v16

    move/from16 v20, v17

    move/from16 v21, v18

    invoke-direct/range {v9 .. v15}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 732
    sget-object v10, Lcom/android/internal/policy/TransitionAnimation;->TOUCH_RESPONSE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v9, v10}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 733
    invoke-virtual {v9, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 734
    new-instance v10, Landroid/view/animation/AlphaAnimation;

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-direct {v10, v12, v8}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 735
    iget-object v8, v0, Lcom/android/internal/policy/TransitionAnimation;->mThumbnailFadeOutInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v10, v8}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 736
    invoke-virtual {v10, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 737
    move/from16 v13, p3

    move/from16 v12, v20

    move/from16 v14, v21

    move/from16 v15, v22

    invoke-static {v13, v12, v15, v14}, Lcom/android/internal/policy/TransitionAnimation;->createCurvedMotion(FFFF)Landroid/view/animation/Animation;

    move-result-object v8

    .line 738
    sget-object v12, Lcom/android/internal/policy/TransitionAnimation;->TOUCH_RESPONSE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v8, v12}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 739
    invoke-virtual {v8, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 741
    iget-object v12, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpFromClipRect:Landroid/graphics/Rect;

    const/4 v13, 0x0

    invoke-virtual {v12, v13, v13, v3, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 742
    iget-object v3, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpToClipRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 746
    iget-object v3, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpToClipRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v13, v13}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 747
    iget-object v3, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpToClipRect:Landroid/graphics/Rect;

    iget-object v6, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpToClipRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    int-to-float v6, v6

    div-float/2addr v6, v11

    float-to-int v6, v6

    iput v6, v3, Landroid/graphics/Rect;->right:I

    .line 748
    iget-object v3, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpToClipRect:Landroid/graphics/Rect;

    iget-object v6, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpToClipRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v6

    div-float/2addr v6, v11

    float-to-int v6, v6

    iput v6, v3, Landroid/graphics/Rect;->bottom:I

    .line 750
    if-eqz v2, :cond_110

    .line 751
    iget-object v3, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpToClipRect:Landroid/graphics/Rect;

    iget v6, v2, Landroid/graphics/Rect;->left:I

    neg-int v6, v6

    int-to-float v6, v6

    mul-float/2addr v6, v11

    float-to-int v6, v6

    iget v12, v2, Landroid/graphics/Rect;->top:I

    neg-int v12, v12

    int-to-float v12, v12

    mul-float/2addr v12, v11

    float-to-int v12, v12

    iget v14, v2, Landroid/graphics/Rect;->right:I

    neg-int v14, v14

    int-to-float v14, v14

    mul-float/2addr v14, v11

    float-to-int v14, v14

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    neg-int v2, v2

    int-to-float v2, v2

    mul-float/2addr v2, v11

    float-to-int v2, v2

    invoke-virtual {v3, v6, v12, v14, v2}, Landroid/graphics/Rect;->inset(IIII)V

    .line 757
    :cond_110
    new-instance v2, Landroid/view/animation/ClipRectAnimation;

    iget-object v3, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpFromClipRect:Landroid/graphics/Rect;

    iget-object v0, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpToClipRect:Landroid/graphics/Rect;

    invoke-direct {v2, v3, v0}, Landroid/view/animation/ClipRectAnimation;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 758
    sget-object v0, Lcom/android/internal/policy/TransitionAnimation;->TOUCH_RESPONSE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 759
    invoke-virtual {v2, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 762
    new-instance v0, Landroid/view/animation/AnimationSet;

    invoke-direct {v0, v13}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 763
    invoke-virtual {v0, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 764
    invoke-virtual {v0, v10}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 765
    invoke-virtual {v0, v8}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 766
    invoke-virtual {v0, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 767
    nop

    .line 768
    goto :goto_185

    .line 770
    :cond_134
    move/from16 v16, v9

    move v3, v13

    move v2, v14

    move/from16 v13, p3

    move v14, v12

    move v12, v11

    move v11, v10

    new-instance v9, Landroid/view/animation/ScaleAnimation;

    const/high16 v11, 0x3f800000    # 1.0f

    move v6, v13

    const/high16 v13, 0x3f800000    # 1.0f

    move/from16 v17, v12

    move v12, v10

    move v3, v14

    move/from16 v23, v16

    move v14, v2

    move/from16 v2, v17

    invoke-direct/range {v9 .. v15}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 771
    sget-object v10, Lcom/android/internal/policy/TransitionAnimation;->TOUCH_RESPONSE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v9, v10}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 772
    invoke-virtual {v9, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 773
    new-instance v10, Landroid/view/animation/AlphaAnimation;

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-direct {v10, v8, v12}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 774
    iget-object v0, v0, Lcom/android/internal/policy/TransitionAnimation;->mThumbnailFadeInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v10, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 775
    invoke-virtual {v10, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 776
    move/from16 v15, v23

    invoke-static {v2, v6, v3, v15}, Lcom/android/internal/policy/TransitionAnimation;->createCurvedMotion(FFFF)Landroid/view/animation/Animation;

    move-result-object v0

    .line 777
    sget-object v2, Lcom/android/internal/policy/TransitionAnimation;->TOUCH_RESPONSE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 778
    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 781
    new-instance v2, Landroid/view/animation/AnimationSet;

    const/4 v13, 0x0

    invoke-direct {v2, v13}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 782
    invoke-virtual {v2, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 783
    invoke-virtual {v2, v10}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 784
    invoke-virtual {v2, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 785
    move-object v0, v2

    .line 788
    :goto_185
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    move-object/from16 p0, v0

    move/from16 p2, v1

    move-wide/from16 p3, v2

    move-object/from16 p5, v4

    move/from16 p1, v7

    invoke-static/range {p0 .. p5}, Lcom/android/internal/policy/TransitionAnimation;->prepareThumbnailAnimationWithDuration(Landroid/view/animation/Animation;IIJLandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method public blacklist createThumbnailEnterExitAnimationLocked(ZZLandroid/graphics/Rect;IILandroid/hardware/HardwareBuffer;Landroid/graphics/Rect;)Landroid/view/animation/Animation;
    .registers 25

    .line 618
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 619
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->height()I

    move-result v3

    .line 621
    iget-object v4, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpRect:Landroid/graphics/Rect;

    move-object/from16 v5, p7

    invoke-direct {v0, v5, v4}, Lcom/android/internal/policy/TransitionAnimation;->setupDefaultNextAppTransitionStartRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 622
    if-eqz p6, :cond_1a

    invoke-virtual/range {p6 .. p6}, Landroid/hardware/HardwareBuffer;->getWidth()I

    move-result v4

    goto :goto_1b

    :cond_1a
    move v4, v2

    .line 623
    :goto_1b
    const/high16 v5, 0x3f800000    # 1.0f

    if-lez v4, :cond_21

    int-to-float v4, v4

    goto :goto_22

    :cond_21
    move v4, v5

    .line 624
    :goto_22
    if-eqz p6, :cond_29

    invoke-virtual/range {p6 .. p6}, Landroid/hardware/HardwareBuffer;->getHeight()I

    move-result v6

    goto :goto_2a

    :cond_29
    move v6, v3

    .line 625
    :goto_2a
    if-lez v6, :cond_2e

    int-to-float v6, v6

    goto :goto_2f

    :cond_2e
    move v6, v5

    .line 626
    :goto_2f
    invoke-direct/range {p0 .. p2}, Lcom/android/internal/policy/TransitionAnimation;->getThumbnailTransitionState(ZZ)I

    move-result v7

    .line 628
    const/4 v8, 0x0

    const/4 v9, 0x1

    packed-switch v7, :pswitch_data_cc

    .line 675
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Invalid thumbnail transition state"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 659
    :pswitch_40
    int-to-float v7, v2

    div-float v12, v4, v7

    .line 660
    int-to-float v4, v3

    div-float v14, v6, v4

    .line 661
    new-instance v10, Landroid/view/animation/ScaleAnimation;

    iget-object v4, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    .line 662
    invoke-static {v4, v12}, Lcom/android/internal/policy/TransitionAnimation;->computePivot(IF)F

    move-result v15

    iget-object v4, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    .line 663
    invoke-static {v4, v14}, Lcom/android/internal/policy/TransitionAnimation;->computePivot(IF)F

    move-result v16

    const/high16 v11, 0x3f800000    # 1.0f

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-direct/range {v10 .. v16}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 665
    new-instance v4, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v4, v5, v8}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 667
    new-instance v5, Landroid/view/animation/AnimationSet;

    invoke-direct {v5, v9}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 668
    invoke-virtual {v5, v10}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 669
    invoke-virtual {v5, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 670
    invoke-virtual {v5, v9}, Landroid/view/animation/AnimationSet;->setZAdjustment(I)V

    .line 671
    nop

    .line 672
    goto :goto_ae

    .line 654
    :pswitch_74
    new-instance v4, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v4, v5, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 655
    move-object v5, v4

    goto :goto_ae

    .line 640
    :pswitch_7b
    const/4 v4, 0x4

    move/from16 v6, p5

    if-ne v6, v4, :cond_87

    .line 644
    new-instance v4, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v4, v5, v8}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    move-object v5, v4

    goto :goto_ae

    .line 647
    :cond_87
    new-instance v4, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v4, v5, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 649
    move-object v5, v4

    goto :goto_ae

    .line 631
    :pswitch_8e
    int-to-float v5, v2

    div-float v11, v4, v5

    .line 632
    int-to-float v4, v3

    div-float v13, v6, v4

    .line 633
    new-instance v10, Landroid/view/animation/ScaleAnimation;

    iget-object v4, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    .line 634
    invoke-static {v4, v11}, Lcom/android/internal/policy/TransitionAnimation;->computePivot(IF)F

    move-result v15

    iget-object v4, v0, Lcom/android/internal/policy/TransitionAnimation;->mTmpRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    .line 635
    invoke-static {v4, v13}, Lcom/android/internal/policy/TransitionAnimation;->computePivot(IF)F

    move-result v16

    const/high16 v12, 0x3f800000    # 1.0f

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-direct/range {v10 .. v16}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 636
    move-object v5, v10

    .line 681
    :goto_ae
    if-eq v1, v9, :cond_b7

    const/4 v4, 0x2

    if-ne v1, v4, :cond_b4

    goto :goto_b7

    .line 684
    :cond_b4
    const/16 v1, 0x150

    goto :goto_b9

    .line 682
    :cond_b7
    :goto_b7
    iget v1, v0, Lcom/android/internal/policy/TransitionAnimation;->mConfigShortAnimTime:I

    .line 686
    :goto_b9
    int-to-long v6, v1

    iget-object v0, v0, Lcom/android/internal/policy/TransitionAnimation;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    move-object/from16 p5, v0

    move/from16 p1, v2

    move/from16 p2, v3

    move-object/from16 p0, v5

    move-wide/from16 p3, v6

    invoke-static/range {p0 .. p5}, Lcom/android/internal/policy/TransitionAnimation;->prepareThumbnailAnimationWithDuration(Landroid/view/animation/Animation;IIJLandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_cc
    .packed-switch 0x0
        :pswitch_8e
        :pswitch_7b
        :pswitch_74
        :pswitch_40
    .end packed-switch
.end method

.method public blacklist getAnimationResId(Landroid/view/WindowManager$LayoutParams;I)I
    .registers 4

    .line 279
    nop

    .line 280
    const/4 v0, 0x0

    if-ltz p2, :cond_10

    .line 281
    invoke-direct {p0, p1}, Lcom/android/internal/policy/TransitionAnimation;->getCachedAnimations(Landroid/view/WindowManager$LayoutParams;)Lcom/android/internal/policy/AttributeCache$Entry;

    move-result-object p1

    .line 282
    if-eqz p1, :cond_10

    .line 283
    iget-object p1, p1, Lcom/android/internal/policy/AttributeCache$Entry;->array:Landroid/content/res/TypedArray;

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 286
    :cond_10
    return v0
.end method

.method public blacklist getAnimationStyleResId(Landroid/view/WindowManager$LayoutParams;)I
    .registers 4

    .line 392
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 393
    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v1, 0x3

    if-ne p1, v1, :cond_9

    .line 398
    iget v0, p0, Lcom/android/internal/policy/TransitionAnimation;->mDefaultWindowAnimationStyleResId:I

    .line 400
    :cond_9
    return v0
.end method

.method public blacklist getDefaultAnimationResId(I)I
    .registers 5

    .line 291
    nop

    .line 292
    const/4 v0, 0x0

    if-ltz p1, :cond_14

    .line 293
    const-string v1, "android"

    iget v2, p0, Lcom/android/internal/policy/TransitionAnimation;->mDefaultWindowAnimationStyleResId:I

    invoke-direct {p0, v1, v2}, Lcom/android/internal/policy/TransitionAnimation;->getCachedAnimations(Ljava/lang/String;I)Lcom/android/internal/policy/AttributeCache$Entry;

    move-result-object v1

    .line 295
    if-eqz v1, :cond_14

    .line 296
    iget-object v1, v1, Lcom/android/internal/policy/AttributeCache$Entry;->array:Landroid/content/res/TypedArray;

    invoke-virtual {v1, p1, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 299
    :cond_14
    return v0
.end method

.method public blacklist loadAnimationAttr(Landroid/view/WindowManager$LayoutParams;I)Landroid/view/animation/Animation;
    .registers 5

    .line 262
    nop

    .line 263
    iget-object v0, p0, Lcom/android/internal/policy/TransitionAnimation;->mContext:Landroid/content/Context;

    .line 264
    const/4 v1, 0x0

    if-ltz p2, :cond_14

    .line 265
    invoke-direct {p0, p1}, Lcom/android/internal/policy/TransitionAnimation;->getCachedAnimations(Landroid/view/WindowManager$LayoutParams;)Lcom/android/internal/policy/AttributeCache$Entry;

    move-result-object p1

    .line 266
    if-eqz p1, :cond_14

    .line 267
    iget-object v0, p1, Lcom/android/internal/policy/AttributeCache$Entry;->context:Landroid/content/Context;

    .line 268
    iget-object p1, p1, Lcom/android/internal/policy/AttributeCache$Entry;->array:Landroid/content/res/TypedArray;

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 271
    :cond_14
    invoke-static {v1}, Landroid/content/res/ResourceId;->isValid(I)Z

    move-result p1

    if-eqz p1, :cond_21

    .line 272
    iget-object p1, p0, Lcom/android/internal/policy/TransitionAnimation;->mTag:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/android/internal/policy/TransitionAnimation;->loadAnimationSafely(Landroid/content/Context;ILjava/lang/String;)Landroid/view/animation/Animation;

    move-result-object p1

    return-object p1

    .line 274
    :cond_21
    const/4 p1, 0x0

    return-object p1
.end method

.method public blacklist loadAnimationAttr(Ljava/lang/String;IIZ)Landroid/view/animation/Animation;
    .registers 8

    .line 311
    const/4 v0, 0x0

    if-nez p2, :cond_4

    .line 312
    return-object v0

    .line 314
    :cond_4
    nop

    .line 315
    iget-object v1, p0, Lcom/android/internal/policy/TransitionAnimation;->mContext:Landroid/content/Context;

    .line 316
    const/4 v2, 0x0

    if-ltz p3, :cond_1d

    .line 317
    if-eqz p1, :cond_d

    goto :goto_f

    :cond_d
    const-string p1, "android"

    .line 318
    :goto_f
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/TransitionAnimation;->getCachedAnimations(Ljava/lang/String;I)Lcom/android/internal/policy/AttributeCache$Entry;

    move-result-object p1

    .line 319
    if-eqz p1, :cond_1d

    .line 320
    iget-object v1, p1, Lcom/android/internal/policy/AttributeCache$Entry;->context:Landroid/content/Context;

    .line 321
    iget-object p1, p1, Lcom/android/internal/policy/AttributeCache$Entry;->array:Landroid/content/res/TypedArray;

    invoke-virtual {p1, p3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 324
    :cond_1d
    if-eqz p4, :cond_23

    .line 325
    invoke-static {v2}, Lcom/android/internal/policy/TransitionAnimation;->updateToTranslucentAnimIfNeeded(I)I

    move-result v2

    .line 327
    :cond_23
    invoke-static {v2}, Landroid/content/res/ResourceId;->isValid(I)Z

    move-result p1

    if-eqz p1, :cond_30

    .line 328
    iget-object p1, p0, Lcom/android/internal/policy/TransitionAnimation;->mTag:Ljava/lang/String;

    invoke-static {v1, v2, p1}, Lcom/android/internal/policy/TransitionAnimation;->loadAnimationSafely(Landroid/content/Context;ILjava/lang/String;)Landroid/view/animation/Animation;

    move-result-object p1

    return-object p1

    .line 330
    :cond_30
    return-object v0
.end method

.method public blacklist loadAnimationRes(Ljava/lang/String;I)Landroid/view/animation/Animation;
    .registers 4

    .line 244
    const/4 v0, -0x2

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/policy/TransitionAnimation;->loadAnimationRes(Ljava/lang/String;II)Landroid/view/animation/Animation;

    move-result-object p1

    return-object p1
.end method

.method public blacklist loadAnimationRes(Ljava/lang/String;II)Landroid/view/animation/Animation;
    .registers 5

    .line 232
    invoke-static {p2}, Landroid/content/res/ResourceId;->isValid(I)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 233
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/policy/TransitionAnimation;->getCachedAnimations(Ljava/lang/String;II)Lcom/android/internal/policy/AttributeCache$Entry;

    move-result-object p1

    .line 234
    if-eqz p1, :cond_15

    .line 235
    iget-object p1, p1, Lcom/android/internal/policy/AttributeCache$Entry;->context:Landroid/content/Context;

    iget-object p3, p0, Lcom/android/internal/policy/TransitionAnimation;->mTag:Ljava/lang/String;

    invoke-static {p1, p2, p3}, Lcom/android/internal/policy/TransitionAnimation;->loadAnimationSafely(Landroid/content/Context;ILjava/lang/String;)Landroid/view/animation/Animation;

    move-result-object p1

    return-object p1

    .line 238
    :cond_15
    const/4 p1, 0x0

    return-object p1
.end method

.method public blacklist loadAppTransitionAnimation(Ljava/lang/String;I)Landroid/view/animation/Animation;
    .registers 3

    .line 206
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/policy/TransitionAnimation;->loadAnimationRes(Ljava/lang/String;I)Landroid/view/animation/Animation;

    move-result-object p1

    return-object p1
.end method

.method public blacklist loadCrossProfileAppEnterAnimation(I)Landroid/view/animation/Animation;
    .registers 4

    .line 212
    const-string v0, "android"

    const v1, 0x10a00bc

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/internal/policy/TransitionAnimation;->loadAnimationRes(Ljava/lang/String;II)Landroid/view/animation/Animation;

    move-result-object p1

    return-object p1
.end method

.method public blacklist loadCrossProfileAppThumbnailEnterAnimation()Landroid/view/animation/Animation;
    .registers 3

    .line 218
    const-string v0, "android"

    const v1, 0x10a0021

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/policy/TransitionAnimation;->loadAnimationRes(Ljava/lang/String;I)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method public blacklist loadDefaultAnimationAttr(IZ)Landroid/view/animation/Animation;
    .registers 5

    .line 336
    const-string v0, "android"

    iget v1, p0, Lcom/android/internal/policy/TransitionAnimation;->mDefaultWindowAnimationStyleResId:I

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/android/internal/policy/TransitionAnimation;->loadAnimationAttr(Ljava/lang/String;IIZ)Landroid/view/animation/Animation;

    move-result-object p1

    return-object p1
.end method

.method public blacklist loadDefaultAnimationRes(I)Landroid/view/animation/Animation;
    .registers 4

    .line 256
    const-string v0, "android"

    const/4 v1, -0x2

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/policy/TransitionAnimation;->loadAnimationRes(Ljava/lang/String;II)Landroid/view/animation/Animation;

    move-result-object p1

    return-object p1
.end method

.method public blacklist loadDefaultAnimationRes(II)Landroid/view/animation/Animation;
    .registers 4

    .line 250
    const-string v0, "android"

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/policy/TransitionAnimation;->loadAnimationRes(Ljava/lang/String;II)Landroid/view/animation/Animation;

    move-result-object p1

    return-object p1
.end method

.method public blacklist loadKeyguardExitAnimation(IZ)Landroid/view/animation/Animation;
    .registers 6

    .line 172
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_6

    .line 173
    const/4 p1, 0x0

    return-object p1

    .line 175
    :cond_6
    and-int/lit8 v0, p1, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_e

    move v0, v2

    goto :goto_f

    :cond_e
    move v0, v1

    .line 177
    :goto_f
    and-int/lit8 p1, p1, 0x8

    if-eqz p1, :cond_14

    move v1, v2

    .line 179
    :cond_14
    iget-object p1, p0, Lcom/android/internal/policy/TransitionAnimation;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/TransitionAnimation;->mInterpolator:Lcom/android/internal/policy/LogDecelerateInterpolator;

    invoke-static {p1, v2, p2, v0, v1}, Lcom/android/internal/policy/TransitionAnimation;->createHiddenByKeyguardExit(Landroid/content/Context;Lcom/android/internal/policy/LogDecelerateInterpolator;ZZZ)Landroid/view/animation/Animation;

    move-result-object p1

    return-object p1
.end method

.method public blacklist loadKeyguardUnoccludeAnimation(I)Landroid/view/animation/Animation;
    .registers 3

    .line 185
    const v0, 0x10a00d3

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/policy/TransitionAnimation;->loadDefaultAnimationRes(II)Landroid/view/animation/Animation;

    move-result-object p1

    return-object p1
.end method

.method public blacklist loadVoiceActivityExitAnimation(ZI)Landroid/view/animation/Animation;
    .registers 3

    .line 199
    if-eqz p1, :cond_6

    .line 200
    const p1, 0x10a00c4

    goto :goto_9

    .line 201
    :cond_6
    const p1, 0x10a00c5

    .line 199
    :goto_9
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/policy/TransitionAnimation;->loadDefaultAnimationRes(II)Landroid/view/animation/Animation;

    move-result-object p1

    return-object p1
.end method

.method public blacklist loadVoiceActivityOpenAnimation(ZI)Landroid/view/animation/Animation;
    .registers 3

    .line 191
    if-eqz p1, :cond_6

    .line 192
    const p1, 0x10a00c6

    goto :goto_9

    .line 193
    :cond_6
    const p1, 0x10a00c7

    .line 191
    :goto_9
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/policy/TransitionAnimation;->loadDefaultAnimationRes(II)Landroid/view/animation/Animation;

    move-result-object p1

    return-object p1
.end method
