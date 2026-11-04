.class Lcom/android/internal/graphics/drawable/AnimationScaleListDrawable$AnimationScaleListState;
.super Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;
.source "AnimationScaleListDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/graphics/drawable/AnimationScaleListDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AnimationScaleListState"
.end annotation


# instance fields
.field blacklist mAnimatableDrawableIndex:I

.field blacklist mStaticDrawableIndex:I

.field blacklist mThemeAttrs:[I


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/graphics/drawable/AnimationScaleListDrawable$AnimationScaleListState;Lcom/android/internal/graphics/drawable/AnimationScaleListDrawable;Landroid/content/res/Resources;)V
    .registers 4

    .line 184
    invoke-direct {p0, p1, p2, p3}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;-><init>(Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;Landroid/graphics/drawable/DrawableContainer;Landroid/content/res/Resources;)V

    .line 176
    const/4 p2, 0x0

    iput-object p2, p0, Lcom/android/internal/graphics/drawable/AnimationScaleListDrawable$AnimationScaleListState;->mThemeAttrs:[I

    .line 178
    const/4 p2, -0x1

    iput p2, p0, Lcom/android/internal/graphics/drawable/AnimationScaleListDrawable$AnimationScaleListState;->mStaticDrawableIndex:I

    .line 180
    iput p2, p0, Lcom/android/internal/graphics/drawable/AnimationScaleListDrawable$AnimationScaleListState;->mAnimatableDrawableIndex:I

    .line 186
    if-eqz p1, :cond_19

    .line 188
    iget-object p2, p1, Lcom/android/internal/graphics/drawable/AnimationScaleListDrawable$AnimationScaleListState;->mThemeAttrs:[I

    iput-object p2, p0, Lcom/android/internal/graphics/drawable/AnimationScaleListDrawable$AnimationScaleListState;->mThemeAttrs:[I

    .line 190
    iget p2, p1, Lcom/android/internal/graphics/drawable/AnimationScaleListDrawable$AnimationScaleListState;->mStaticDrawableIndex:I

    iput p2, p0, Lcom/android/internal/graphics/drawable/AnimationScaleListDrawable$AnimationScaleListState;->mStaticDrawableIndex:I

    .line 191
    iget p1, p1, Lcom/android/internal/graphics/drawable/AnimationScaleListDrawable$AnimationScaleListState;->mAnimatableDrawableIndex:I

    iput p1, p0, Lcom/android/internal/graphics/drawable/AnimationScaleListDrawable$AnimationScaleListState;->mAnimatableDrawableIndex:I

    .line 194
    :cond_19
    return-void
.end method


# virtual methods
.method blacklist addDrawable(Landroid/graphics/drawable/Drawable;)I
    .registers 3

    .line 206
    invoke-virtual {p0, p1}, Lcom/android/internal/graphics/drawable/AnimationScaleListDrawable$AnimationScaleListState;->addChild(Landroid/graphics/drawable/Drawable;)I

    move-result v0

    .line 207
    instance-of p1, p1, Landroid/graphics/drawable/Animatable;

    if-eqz p1, :cond_b

    .line 208
    iput v0, p0, Lcom/android/internal/graphics/drawable/AnimationScaleListDrawable$AnimationScaleListState;->mAnimatableDrawableIndex:I

    goto :goto_d

    .line 210
    :cond_b
    iput v0, p0, Lcom/android/internal/graphics/drawable/AnimationScaleListDrawable$AnimationScaleListState;->mStaticDrawableIndex:I

    .line 212
    :goto_d
    return v0
.end method

.method public whitelist canApplyTheme()Z
    .registers 2

    .line 227
    iget-object v0, p0, Lcom/android/internal/graphics/drawable/AnimationScaleListDrawable$AnimationScaleListState;->mThemeAttrs:[I

    if-nez v0, :cond_d

    invoke-super {p0}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->canApplyTheme()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    return v0
.end method

.method public blacklist getCurrentDrawableIndexBasedOnScale()I
    .registers 3

    .line 231
    invoke-static {}, Landroid/animation/ValueAnimator;->getDurationScale()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_c

    .line 232
    iget v0, p0, Lcom/android/internal/graphics/drawable/AnimationScaleListDrawable$AnimationScaleListState;->mStaticDrawableIndex:I

    return v0

    .line 234
    :cond_c
    iget v0, p0, Lcom/android/internal/graphics/drawable/AnimationScaleListDrawable$AnimationScaleListState;->mAnimatableDrawableIndex:I

    return v0
.end method

.method blacklist mutate()V
    .registers 2

    .line 197
    iget-object v0, p0, Lcom/android/internal/graphics/drawable/AnimationScaleListDrawable$AnimationScaleListState;->mThemeAttrs:[I

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/internal/graphics/drawable/AnimationScaleListDrawable$AnimationScaleListState;->mThemeAttrs:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    iput-object v0, p0, Lcom/android/internal/graphics/drawable/AnimationScaleListDrawable$AnimationScaleListState;->mThemeAttrs:[I

    .line 198
    return-void
.end method

.method public whitelist newDrawable()Landroid/graphics/drawable/Drawable;
    .registers 3

    .line 217
    new-instance v0, Lcom/android/internal/graphics/drawable/AnimationScaleListDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, v1}, Lcom/android/internal/graphics/drawable/AnimationScaleListDrawable;-><init>(Lcom/android/internal/graphics/drawable/AnimationScaleListDrawable$AnimationScaleListState;Landroid/content/res/Resources;Lcom/android/internal/graphics/drawable/AnimationScaleListDrawable-IA;)V

    return-object v0
.end method

.method public whitelist newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .registers 4

    .line 222
    new-instance v0, Lcom/android/internal/graphics/drawable/AnimationScaleListDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/android/internal/graphics/drawable/AnimationScaleListDrawable;-><init>(Lcom/android/internal/graphics/drawable/AnimationScaleListDrawable$AnimationScaleListState;Landroid/content/res/Resources;Lcom/android/internal/graphics/drawable/AnimationScaleListDrawable-IA;)V

    return-object v0
.end method
