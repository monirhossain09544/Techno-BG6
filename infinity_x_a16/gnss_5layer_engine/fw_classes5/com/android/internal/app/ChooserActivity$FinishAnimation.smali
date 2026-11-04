.class Lcom/android/internal/app/ChooserActivity$FinishAnimation;
.super Landroid/view/animation/AlphaAnimation;
.source "ChooserActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ChooserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FinishAnimation"
.end annotation


# instance fields
.field private blacklist mActivity:Landroid/app/Activity;

.field private final blacklist mFromAlpha:F

.field private blacklist mRootView:Landroid/view/View;


# direct methods
.method constructor blacklist <init>(Landroid/app/Activity;Landroid/view/View;)V
    .registers 5

    .line 4211
    invoke-virtual {p2}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 4212
    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$FinishAnimation;->mActivity:Landroid/app/Activity;

    .line 4213
    iput-object p2, p0, Lcom/android/internal/app/ChooserActivity$FinishAnimation;->mRootView:Landroid/view/View;

    .line 4214
    invoke-virtual {p2}, Landroid/view/View;->getAlpha()F

    move-result p2

    iput p2, p0, Lcom/android/internal/app/ChooserActivity$FinishAnimation;->mFromAlpha:F

    .line 4215
    new-instance p2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p0, p2}, Lcom/android/internal/app/ChooserActivity$FinishAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 4216
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getTransitionBackgroundFadeDuration()J

    move-result-wide p1

    .line 4217
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/app/ChooserActivity$FinishAnimation;->setDuration(J)V

    .line 4223
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/app/ChooserActivity$FinishAnimation;->setStartOffset(J)V

    .line 4224
    invoke-super {p0, p0}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 4225
    return-void
.end method

.method private blacklist cleanup()V
    .registers 2

    .line 4259
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity$FinishAnimation;->mActivity:Landroid/app/Activity;

    .line 4260
    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity$FinishAnimation;->mRootView:Landroid/view/View;

    .line 4261
    return-void
.end method


# virtual methods
.method public whitelist cancel()V
    .registers 3

    .line 4234
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$FinishAnimation;->mRootView:Landroid/view/View;

    if-eqz v0, :cond_b

    .line 4235
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$FinishAnimation;->mRootView:Landroid/view/View;

    iget v1, p0, Lcom/android/internal/app/ChooserActivity$FinishAnimation;->mFromAlpha:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 4237
    :cond_b
    invoke-direct {p0}, Lcom/android/internal/app/ChooserActivity$FinishAnimation;->cleanup()V

    .line 4238
    invoke-super {p0}, Landroid/view/animation/AlphaAnimation;->cancel()V

    .line 4239
    return-void
.end method

.method public whitelist onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 2

    .line 4247
    iget-object p1, p0, Lcom/android/internal/app/ChooserActivity$FinishAnimation;->mActivity:Landroid/app/Activity;

    .line 4248
    invoke-direct {p0}, Lcom/android/internal/app/ChooserActivity$FinishAnimation;->cleanup()V

    .line 4249
    if-eqz p1, :cond_a

    .line 4250
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 4252
    :cond_a
    return-void
.end method

.method public whitelist onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2

    .line 4256
    return-void
.end method

.method public whitelist onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2

    .line 4243
    return-void
.end method

.method public whitelist setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V
    .registers 2

    .line 4229
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
