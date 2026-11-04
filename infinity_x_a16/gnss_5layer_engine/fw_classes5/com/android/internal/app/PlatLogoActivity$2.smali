.class Lcom/android/internal/app/PlatLogoActivity$2;
.super Ljava/lang/Object;
.source "PlatLogoActivity.java"

# interfaces
.implements Landroid/animation/TimeAnimator$TimeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/PlatLogoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/app/PlatLogoActivity;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/app/PlatLogoActivity;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 120
    iput-object p1, p0, Lcom/android/internal/app/PlatLogoActivity$2;->this$0:Lcom/android/internal/app/PlatLogoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onTimeUpdate(Landroid/animation/TimeAnimator;JJ)V
    .registers 6

    .line 123
    iget-object p1, p0, Lcom/android/internal/app/PlatLogoActivity$2;->this$0:Lcom/android/internal/app/PlatLogoActivity;

    invoke-static {p1}, Lcom/android/internal/app/PlatLogoActivity;->-$$Nest$fgetmStarfield(Lcom/android/internal/app/PlatLogoActivity;)Lcom/android/internal/app/PlatLogoActivity$Starfield;

    move-result-object p1

    invoke-virtual {p1, p4, p5}, Lcom/android/internal/app/PlatLogoActivity$Starfield;->update(J)V

    .line 124
    iget-object p1, p0, Lcom/android/internal/app/PlatLogoActivity$2;->this$0:Lcom/android/internal/app/PlatLogoActivity;

    invoke-static {p1}, Lcom/android/internal/app/PlatLogoActivity;->-$$Nest$fgetmStarfield(Lcom/android/internal/app/PlatLogoActivity;)Lcom/android/internal/app/PlatLogoActivity$Starfield;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/app/PlatLogoActivity$Starfield;->getWarp()F

    move-result p1

    const/high16 p2, 0x3f800000    # 1.0f

    sub-float/2addr p1, p2

    const/high16 p2, 0x41700000    # 15.0f

    div-float/2addr p1, p2

    .line 125
    iget-object p2, p0, Lcom/android/internal/app/PlatLogoActivity$2;->this$0:Lcom/android/internal/app/PlatLogoActivity;

    invoke-static {p2}, Lcom/android/internal/app/PlatLogoActivity;->-$$Nest$fgetmAnimationsEnabled(Lcom/android/internal/app/PlatLogoActivity;)Z

    move-result p2

    if-eqz p2, :cond_5b

    .line 126
    iget-object p2, p0, Lcom/android/internal/app/PlatLogoActivity$2;->this$0:Lcom/android/internal/app/PlatLogoActivity;

    invoke-static {p2}, Lcom/android/internal/app/PlatLogoActivity;->-$$Nest$fgetmLogo(Lcom/android/internal/app/PlatLogoActivity;)Landroid/widget/ImageView;

    move-result-object p2

    iget-object p3, p0, Lcom/android/internal/app/PlatLogoActivity$2;->this$0:Lcom/android/internal/app/PlatLogoActivity;

    invoke-static {p3}, Lcom/android/internal/app/PlatLogoActivity;->-$$Nest$fgetmRandom(Lcom/android/internal/app/PlatLogoActivity;)Ljava/util/Random;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/Random;->nextFloat()F

    move-result p3

    mul-float/2addr p3, p1

    const/high16 p4, 0x40a00000    # 5.0f

    mul-float/2addr p3, p4

    iget-object p5, p0, Lcom/android/internal/app/PlatLogoActivity$2;->this$0:Lcom/android/internal/app/PlatLogoActivity;

    invoke-static {p5}, Lcom/android/internal/app/PlatLogoActivity;->-$$Nest$fgetmDp(Lcom/android/internal/app/PlatLogoActivity;)F

    move-result p5

    mul-float/2addr p3, p5

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 127
    iget-object p2, p0, Lcom/android/internal/app/PlatLogoActivity$2;->this$0:Lcom/android/internal/app/PlatLogoActivity;

    invoke-static {p2}, Lcom/android/internal/app/PlatLogoActivity;->-$$Nest$fgetmLogo(Lcom/android/internal/app/PlatLogoActivity;)Landroid/widget/ImageView;

    move-result-object p2

    iget-object p3, p0, Lcom/android/internal/app/PlatLogoActivity$2;->this$0:Lcom/android/internal/app/PlatLogoActivity;

    invoke-static {p3}, Lcom/android/internal/app/PlatLogoActivity;->-$$Nest$fgetmRandom(Lcom/android/internal/app/PlatLogoActivity;)Ljava/util/Random;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/Random;->nextFloat()F

    move-result p3

    mul-float/2addr p3, p1

    mul-float/2addr p3, p4

    iget-object p4, p0, Lcom/android/internal/app/PlatLogoActivity$2;->this$0:Lcom/android/internal/app/PlatLogoActivity;

    invoke-static {p4}, Lcom/android/internal/app/PlatLogoActivity;->-$$Nest$fgetmDp(Lcom/android/internal/app/PlatLogoActivity;)F

    move-result p4

    mul-float/2addr p3, p4

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 129
    :cond_5b
    const/4 p2, 0x0

    cmpl-float p2, p1, p2

    if-lez p2, :cond_69

    .line 130
    iget-object p2, p0, Lcom/android/internal/app/PlatLogoActivity$2;->this$0:Lcom/android/internal/app/PlatLogoActivity;

    invoke-static {p2}, Lcom/android/internal/app/PlatLogoActivity;->-$$Nest$fgetmRumble(Lcom/android/internal/app/PlatLogoActivity;)Lcom/android/internal/app/PlatLogoActivity$RumblePack;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/android/internal/app/PlatLogoActivity$RumblePack;->-$$Nest$mrumble(Lcom/android/internal/app/PlatLogoActivity$RumblePack;F)V

    .line 132
    :cond_69
    iget-object p1, p0, Lcom/android/internal/app/PlatLogoActivity$2;->this$0:Lcom/android/internal/app/PlatLogoActivity;

    invoke-static {p1}, Lcom/android/internal/app/PlatLogoActivity;->-$$Nest$fgetmLayout(Lcom/android/internal/app/PlatLogoActivity;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->postInvalidate()V

    .line 133
    return-void
.end method
