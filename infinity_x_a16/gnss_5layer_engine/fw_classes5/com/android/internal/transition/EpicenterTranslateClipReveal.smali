.class public Lcom/android/internal/transition/EpicenterTranslateClipReveal;
.super Landroid/transition/Visibility;
.source "EpicenterTranslateClipReveal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;,
        Lcom/android/internal/transition/EpicenterTranslateClipReveal$StateEvaluator;,
        Lcom/android/internal/transition/EpicenterTranslateClipReveal$StateProperty;
    }
.end annotation


# static fields
.field private static final blacklist PROPNAME_BOUNDS:Ljava/lang/String; = "android:epicenterReveal:bounds"

.field private static final blacklist PROPNAME_CLIP:Ljava/lang/String; = "android:epicenterReveal:clip"

.field private static final blacklist PROPNAME_TRANSLATE_X:Ljava/lang/String; = "android:epicenterReveal:translateX"

.field private static final blacklist PROPNAME_TRANSLATE_Y:Ljava/lang/String; = "android:epicenterReveal:translateY"

.field private static final blacklist PROPNAME_TRANSLATE_Z:Ljava/lang/String; = "android:epicenterReveal:translateZ"

.field private static final blacklist PROPNAME_Z:Ljava/lang/String; = "android:epicenterReveal:z"


# instance fields
.field private final blacklist mInterpolatorX:Landroid/animation/TimeInterpolator;

.field private final blacklist mInterpolatorY:Landroid/animation/TimeInterpolator;

.field private final blacklist mInterpolatorZ:Landroid/animation/TimeInterpolator;


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 54
    invoke-direct {p0}, Landroid/transition/Visibility;-><init>()V

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/transition/EpicenterTranslateClipReveal;->mInterpolatorX:Landroid/animation/TimeInterpolator;

    .line 56
    iput-object v0, p0, Lcom/android/internal/transition/EpicenterTranslateClipReveal;->mInterpolatorY:Landroid/animation/TimeInterpolator;

    .line 57
    iput-object v0, p0, Lcom/android/internal/transition/EpicenterTranslateClipReveal;->mInterpolatorZ:Landroid/animation/TimeInterpolator;

    .line 58
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    .line 61
    invoke-direct {p0, p1, p2}, Landroid/transition/Visibility;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 63
    sget-object v0, Lcom/android/internal/R$styleable;->EpicenterTranslateClipReveal:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 66
    invoke-virtual {p2, v1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 68
    if-eqz v0, :cond_17

    .line 69
    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/transition/EpicenterTranslateClipReveal;->mInterpolatorX:Landroid/animation/TimeInterpolator;

    goto :goto_1b

    .line 71
    :cond_17
    sget-object v0, Lcom/android/internal/transition/TransitionConstants;->LINEAR_OUT_SLOW_IN:Landroid/animation/TimeInterpolator;

    iput-object v0, p0, Lcom/android/internal/transition/EpicenterTranslateClipReveal;->mInterpolatorX:Landroid/animation/TimeInterpolator;

    .line 74
    :goto_1b
    const/4 v0, 0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 76
    if-eqz v0, :cond_29

    .line 77
    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/transition/EpicenterTranslateClipReveal;->mInterpolatorY:Landroid/animation/TimeInterpolator;

    goto :goto_2d

    .line 79
    :cond_29
    sget-object v0, Lcom/android/internal/transition/TransitionConstants;->FAST_OUT_SLOW_IN:Landroid/animation/TimeInterpolator;

    iput-object v0, p0, Lcom/android/internal/transition/EpicenterTranslateClipReveal;->mInterpolatorY:Landroid/animation/TimeInterpolator;

    .line 82
    :goto_2d
    const/4 v0, 0x2

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 84
    if-eqz v0, :cond_3b

    .line 85
    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/transition/EpicenterTranslateClipReveal;->mInterpolatorZ:Landroid/animation/TimeInterpolator;

    goto :goto_3f

    .line 87
    :cond_3b
    sget-object p1, Lcom/android/internal/transition/TransitionConstants;->FAST_OUT_SLOW_IN:Landroid/animation/TimeInterpolator;

    iput-object p1, p0, Lcom/android/internal/transition/EpicenterTranslateClipReveal;->mInterpolatorZ:Landroid/animation/TimeInterpolator;

    .line 90
    :goto_3f
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 91
    return-void
.end method

.method private blacklist captureValues(Landroid/transition/TransitionValues;)V
    .registers 7

    .line 106
    iget-object v0, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    .line 107
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_b

    .line 108
    return-void

    .line 111
    :cond_b
    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 112
    iget-object v2, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v3, "android:epicenterReveal:bounds"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    iget-object v1, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const-string v3, "android:epicenterReveal:translateX"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    iget-object v1, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const-string v3, "android:epicenterReveal:translateY"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    iget-object v1, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationZ()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const-string v3, "android:epicenterReveal:translateZ"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    iget-object v1, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-virtual {v0}, Landroid/view/View;->getZ()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const-string v3, "android:epicenterReveal:z"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    invoke-virtual {v0}, Landroid/view/View;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 119
    iget-object p1, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v1, "android:epicenterReveal:clip"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    return-void
.end method

.method private static blacklist createRectAnimator(Landroid/view/View;Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;FLcom/android/internal/transition/EpicenterTranslateClipReveal$State;Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;FLandroid/transition/TransitionValues;Landroid/animation/TimeInterpolator;Landroid/animation/TimeInterpolator;Landroid/animation/TimeInterpolator;)Landroid/animation/Animator;
    .registers 16

    .line 214
    new-instance v0, Lcom/android/internal/transition/EpicenterTranslateClipReveal$StateEvaluator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/internal/transition/EpicenterTranslateClipReveal$StateEvaluator;-><init>(Lcom/android/internal/transition/EpicenterTranslateClipReveal-IA;)V

    .line 216
    sget-object v1, Landroid/view/View;->TRANSLATION_Z:Landroid/util/Property;

    const/4 v2, 0x2

    new-array v3, v2, [F

    const/4 v4, 0x0

    aput p3, v3, v4

    const/4 p3, 0x1

    aput p6, v3, p3

    invoke-static {p0, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p6

    .line 217
    if-eqz p10, :cond_1a

    .line 218
    invoke-virtual {p6, p10}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 221
    :cond_1a
    new-instance p10, Lcom/android/internal/transition/EpicenterTranslateClipReveal$StateProperty;

    const/16 v1, 0x78

    invoke-direct {p10, v1}, Lcom/android/internal/transition/EpicenterTranslateClipReveal$StateProperty;-><init>(C)V

    .line 222
    new-array v1, v2, [Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;

    aput-object p1, v1, v4

    aput-object p4, v1, p3

    invoke-static {p0, p10, v0, v1}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 223
    if-eqz p8, :cond_30

    .line 224
    invoke-virtual {p1, p8}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 227
    :cond_30
    new-instance p4, Lcom/android/internal/transition/EpicenterTranslateClipReveal$StateProperty;

    const/16 p8, 0x79

    invoke-direct {p4, p8}, Lcom/android/internal/transition/EpicenterTranslateClipReveal$StateProperty;-><init>(C)V

    .line 228
    new-array p8, v2, [Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;

    aput-object p2, p8, v4

    aput-object p5, p8, p3

    invoke-static {p0, p4, v0, p8}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object p2

    .line 229
    if-eqz p9, :cond_46

    .line 230
    invoke-virtual {p2, p9}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 233
    :cond_46
    iget-object p4, p7, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string p5, "android:epicenterReveal:clip"

    invoke-interface {p4, p5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/graphics/Rect;

    .line 234
    new-instance p5, Lcom/android/internal/transition/EpicenterTranslateClipReveal$1;

    invoke-direct {p5, p0, p4}, Lcom/android/internal/transition/EpicenterTranslateClipReveal$1;-><init>(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 241
    new-instance p0, Landroid/animation/AnimatorSet;

    invoke-direct {p0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 242
    const/4 p4, 0x3

    new-array p4, p4, [Landroid/animation/Animator;

    aput-object p1, p4, v4

    aput-object p2, p4, p3

    aput-object p6, p4, v2

    invoke-virtual {p0, p4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 243
    invoke-virtual {p0, p5}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 244
    return-object p0
.end method

.method private blacklist getBestRect(Landroid/transition/TransitionValues;)Landroid/graphics/Rect;
    .registers 4

    .line 203
    iget-object v0, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v1, "android:epicenterReveal:clip"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 204
    if-nez v0, :cond_17

    .line 205
    iget-object p1, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v0, "android:epicenterReveal:bounds"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Rect;

    return-object p1

    .line 207
    :cond_17
    return-object v0
.end method

.method private blacklist getEpicenterOrCenter(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .registers 4

    .line 192
    invoke-virtual {p0}, Lcom/android/internal/transition/EpicenterTranslateClipReveal;->getEpicenter()Landroid/graphics/Rect;

    move-result-object v0

    .line 193
    if-eqz v0, :cond_7

    .line 194
    return-object v0

    .line 197
    :cond_7
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    .line 198
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result p1

    .line 199
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v0, p1, v0, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v1
.end method


# virtual methods
.method public whitelist captureEndValues(Landroid/transition/TransitionValues;)V
    .registers 2

    .line 101
    invoke-super {p0, p1}, Landroid/transition/Visibility;->captureEndValues(Landroid/transition/TransitionValues;)V

    .line 102
    invoke-direct {p0, p1}, Lcom/android/internal/transition/EpicenterTranslateClipReveal;->captureValues(Landroid/transition/TransitionValues;)V

    .line 103
    return-void
.end method

.method public whitelist captureStartValues(Landroid/transition/TransitionValues;)V
    .registers 2

    .line 95
    invoke-super {p0, p1}, Landroid/transition/Visibility;->captureStartValues(Landroid/transition/TransitionValues;)V

    .line 96
    invoke-direct {p0, p1}, Lcom/android/internal/transition/EpicenterTranslateClipReveal;->captureValues(Landroid/transition/TransitionValues;)V

    .line 97
    return-void
.end method

.method public whitelist onAppear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .registers 16

    .line 125
    if-nez p4, :cond_4

    .line 126
    const/4 p1, 0x0

    return-object p1

    .line 129
    :cond_4
    iget-object p1, p4, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v0, "android:epicenterReveal:bounds"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Rect;

    .line 130
    invoke-direct {p0, p1}, Lcom/android/internal/transition/EpicenterTranslateClipReveal;->getEpicenterOrCenter(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    .line 131
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    .line 132
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result p1

    sub-int/2addr v0, p1

    int-to-float p1, v0

    .line 133
    iget-object v0, p4, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:epicenterReveal:z"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/4 v2, 0x0

    sub-float v3, v2, v0

    .line 136
    invoke-virtual {p2, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 137
    invoke-virtual {p2, p1}, Landroid/view/View;->setTranslationY(F)V

    .line 138
    invoke-virtual {p2, v3}, Landroid/view/View;->setTranslationZ(F)V

    .line 140
    iget-object v0, p4, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:epicenterReveal:translateX"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 141
    iget-object v2, p4, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v4, "android:epicenterReveal:translateY"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 142
    iget-object v4, p4, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v5, "android:epicenterReveal:translateZ"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v6

    .line 144
    invoke-direct {p0, p4}, Lcom/android/internal/transition/EpicenterTranslateClipReveal;->getBestRect(Landroid/transition/TransitionValues;)Landroid/graphics/Rect;

    move-result-object v4

    .line 145
    invoke-direct {p0, v4}, Lcom/android/internal/transition/EpicenterTranslateClipReveal;->getEpicenterOrCenter(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v5

    .line 148
    invoke-virtual {p2, v5}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    .line 150
    new-instance v8, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;

    iget v9, v5, Landroid/graphics/Rect;->left:I

    iget v10, v5, Landroid/graphics/Rect;->right:I

    invoke-direct {v8, v9, v10, v1}, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;-><init>(IIF)V

    .line 151
    new-instance v1, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;

    iget v9, v4, Landroid/graphics/Rect;->left:I

    iget v10, v4, Landroid/graphics/Rect;->right:I

    invoke-direct {v1, v9, v10, v0}, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;-><init>(IIF)V

    .line 152
    new-instance v0, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;

    iget v9, v5, Landroid/graphics/Rect;->top:I

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v0, v9, v5, p1}, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;-><init>(IIF)V

    .line 153
    new-instance v5, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;

    iget p1, v4, Landroid/graphics/Rect;->top:I

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v5, p1, v4, v2}, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;-><init>(IIF)V

    .line 155
    move-object v4, v1

    move-object v1, v8

    iget-object v8, p0, Lcom/android/internal/transition/EpicenterTranslateClipReveal;->mInterpolatorX:Landroid/animation/TimeInterpolator;

    iget-object v9, p0, Lcom/android/internal/transition/EpicenterTranslateClipReveal;->mInterpolatorY:Landroid/animation/TimeInterpolator;

    iget-object v10, p0, Lcom/android/internal/transition/EpicenterTranslateClipReveal;->mInterpolatorZ:Landroid/animation/TimeInterpolator;

    move-object v7, p4

    move-object v2, v0

    move-object v0, p2

    invoke-static/range {v0 .. v10}, Lcom/android/internal/transition/EpicenterTranslateClipReveal;->createRectAnimator(Landroid/view/View;Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;FLcom/android/internal/transition/EpicenterTranslateClipReveal$State;Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;FLandroid/transition/TransitionValues;Landroid/animation/TimeInterpolator;Landroid/animation/TimeInterpolator;Landroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    move-result-object p1

    return-object p1
.end method

.method public whitelist onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .registers 17

    .line 162
    move-object/from16 v7, p4

    if-nez p3, :cond_6

    .line 163
    const/4 p1, 0x0

    return-object p1

    .line 166
    :cond_6
    iget-object v0, v7, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v1, "android:epicenterReveal:bounds"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 167
    invoke-direct {p0, v0}, Lcom/android/internal/transition/EpicenterTranslateClipReveal;->getEpicenterOrCenter(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v1

    .line 168
    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    .line 169
    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    sub-int/2addr v1, v0

    int-to-float v0, v1

    .line 170
    iget-object v1, p3, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v3, "android:epicenterReveal:z"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/4 v3, 0x0

    sub-float v6, v3, v1

    .line 172
    iget-object v1, v7, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v3, "android:epicenterReveal:translateX"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 173
    iget-object v3, v7, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v4, "android:epicenterReveal:translateY"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 174
    iget-object v4, v7, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v5, "android:epicenterReveal:translateZ"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    .line 176
    invoke-direct {p0, p3}, Lcom/android/internal/transition/EpicenterTranslateClipReveal;->getBestRect(Landroid/transition/TransitionValues;)Landroid/graphics/Rect;

    move-result-object p1

    .line 177
    invoke-direct {p0, p1}, Lcom/android/internal/transition/EpicenterTranslateClipReveal;->getEpicenterOrCenter(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v5

    .line 180
    invoke-virtual {p2, p1}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    .line 182
    new-instance v9, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;

    iget v10, p1, Landroid/graphics/Rect;->left:I

    iget v11, p1, Landroid/graphics/Rect;->right:I

    invoke-direct {v9, v10, v11, v1}, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;-><init>(IIF)V

    .line 183
    move v1, v4

    new-instance v4, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;

    iget v10, v5, Landroid/graphics/Rect;->left:I

    iget v11, v5, Landroid/graphics/Rect;->right:I

    invoke-direct {v4, v10, v11, v2}, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;-><init>(IIF)V

    .line 184
    new-instance v2, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;

    iget v10, p1, Landroid/graphics/Rect;->top:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v2, v10, p1, v3}, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;-><init>(IIF)V

    .line 185
    new-instance p1, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;

    iget v3, v5, Landroid/graphics/Rect;->top:I

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p1, v3, v5, v0}, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;-><init>(IIF)V

    .line 187
    iget-object v8, p0, Lcom/android/internal/transition/EpicenterTranslateClipReveal;->mInterpolatorX:Landroid/animation/TimeInterpolator;

    move v3, v1

    move-object v1, v9

    iget-object v9, p0, Lcom/android/internal/transition/EpicenterTranslateClipReveal;->mInterpolatorY:Landroid/animation/TimeInterpolator;

    iget-object v10, p0, Lcom/android/internal/transition/EpicenterTranslateClipReveal;->mInterpolatorZ:Landroid/animation/TimeInterpolator;

    move-object v5, p1

    move-object v0, p2

    invoke-static/range {v0 .. v10}, Lcom/android/internal/transition/EpicenterTranslateClipReveal;->createRectAnimator(Landroid/view/View;Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;FLcom/android/internal/transition/EpicenterTranslateClipReveal$State;Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;FLandroid/transition/TransitionValues;Landroid/animation/TimeInterpolator;Landroid/animation/TimeInterpolator;Landroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    move-result-object p1

    return-object p1
.end method
