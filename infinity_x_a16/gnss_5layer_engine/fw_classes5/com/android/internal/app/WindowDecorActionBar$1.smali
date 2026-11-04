.class Lcom/android/internal/app/WindowDecorActionBar$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "WindowDecorActionBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/WindowDecorActionBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/app/WindowDecorActionBar;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/app/WindowDecorActionBar;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 131
    iput-object p1, p0, Lcom/android/internal/app/WindowDecorActionBar$1;->this$0:Lcom/android/internal/app/WindowDecorActionBar;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4

    .line 134
    iget-object p1, p0, Lcom/android/internal/app/WindowDecorActionBar$1;->this$0:Lcom/android/internal/app/WindowDecorActionBar;

    invoke-static {p1}, Lcom/android/internal/app/WindowDecorActionBar;->-$$Nest$fgetmContentAnimations(Lcom/android/internal/app/WindowDecorActionBar;)Z

    move-result p1

    if-eqz p1, :cond_23

    iget-object p1, p0, Lcom/android/internal/app/WindowDecorActionBar$1;->this$0:Lcom/android/internal/app/WindowDecorActionBar;

    invoke-static {p1}, Lcom/android/internal/app/WindowDecorActionBar;->-$$Nest$fgetmContentView(Lcom/android/internal/app/WindowDecorActionBar;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_23

    .line 135
    iget-object p1, p0, Lcom/android/internal/app/WindowDecorActionBar$1;->this$0:Lcom/android/internal/app/WindowDecorActionBar;

    invoke-static {p1}, Lcom/android/internal/app/WindowDecorActionBar;->-$$Nest$fgetmContentView(Lcom/android/internal/app/WindowDecorActionBar;)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 136
    iget-object p1, p0, Lcom/android/internal/app/WindowDecorActionBar$1;->this$0:Lcom/android/internal/app/WindowDecorActionBar;

    invoke-static {p1}, Lcom/android/internal/app/WindowDecorActionBar;->-$$Nest$fgetmContainerView(Lcom/android/internal/app/WindowDecorActionBar;)Lcom/android/internal/widget/ActionBarContainer;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/ActionBarContainer;->setTranslationY(F)V

    .line 138
    :cond_23
    iget-object p1, p0, Lcom/android/internal/app/WindowDecorActionBar$1;->this$0:Lcom/android/internal/app/WindowDecorActionBar;

    invoke-static {p1}, Lcom/android/internal/app/WindowDecorActionBar;->-$$Nest$fgetmSplitView(Lcom/android/internal/app/WindowDecorActionBar;)Lcom/android/internal/widget/ActionBarContainer;

    move-result-object p1

    const/16 v0, 0x8

    if-eqz p1, :cond_3f

    iget-object p1, p0, Lcom/android/internal/app/WindowDecorActionBar$1;->this$0:Lcom/android/internal/app/WindowDecorActionBar;

    invoke-static {p1}, Lcom/android/internal/app/WindowDecorActionBar;->-$$Nest$fgetmContextDisplayMode(Lcom/android/internal/app/WindowDecorActionBar;)I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_3f

    .line 139
    iget-object p1, p0, Lcom/android/internal/app/WindowDecorActionBar$1;->this$0:Lcom/android/internal/app/WindowDecorActionBar;

    invoke-static {p1}, Lcom/android/internal/app/WindowDecorActionBar;->-$$Nest$fgetmSplitView(Lcom/android/internal/app/WindowDecorActionBar;)Lcom/android/internal/widget/ActionBarContainer;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/ActionBarContainer;->setVisibility(I)V

    .line 141
    :cond_3f
    iget-object p1, p0, Lcom/android/internal/app/WindowDecorActionBar$1;->this$0:Lcom/android/internal/app/WindowDecorActionBar;

    invoke-static {p1}, Lcom/android/internal/app/WindowDecorActionBar;->-$$Nest$fgetmContainerView(Lcom/android/internal/app/WindowDecorActionBar;)Lcom/android/internal/widget/ActionBarContainer;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/ActionBarContainer;->setVisibility(I)V

    .line 142
    iget-object p1, p0, Lcom/android/internal/app/WindowDecorActionBar$1;->this$0:Lcom/android/internal/app/WindowDecorActionBar;

    invoke-static {p1}, Lcom/android/internal/app/WindowDecorActionBar;->-$$Nest$fgetmContainerView(Lcom/android/internal/app/WindowDecorActionBar;)Lcom/android/internal/widget/ActionBarContainer;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/ActionBarContainer;->setTransitioning(Z)V

    .line 143
    iget-object p1, p0, Lcom/android/internal/app/WindowDecorActionBar$1;->this$0:Lcom/android/internal/app/WindowDecorActionBar;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/internal/app/WindowDecorActionBar;->-$$Nest$fputmCurrentShowAnim(Lcom/android/internal/app/WindowDecorActionBar;Landroid/animation/Animator;)V

    .line 144
    iget-object p1, p0, Lcom/android/internal/app/WindowDecorActionBar$1;->this$0:Lcom/android/internal/app/WindowDecorActionBar;

    invoke-virtual {p1}, Lcom/android/internal/app/WindowDecorActionBar;->completeDeferredDestroyActionMode()V

    .line 145
    iget-object p1, p0, Lcom/android/internal/app/WindowDecorActionBar$1;->this$0:Lcom/android/internal/app/WindowDecorActionBar;

    invoke-static {p1}, Lcom/android/internal/app/WindowDecorActionBar;->-$$Nest$fgetmOverlayLayout(Lcom/android/internal/app/WindowDecorActionBar;)Lcom/android/internal/widget/ActionBarOverlayLayout;

    move-result-object p1

    if-eqz p1, :cond_6e

    .line 146
    iget-object p1, p0, Lcom/android/internal/app/WindowDecorActionBar$1;->this$0:Lcom/android/internal/app/WindowDecorActionBar;

    invoke-static {p1}, Lcom/android/internal/app/WindowDecorActionBar;->-$$Nest$fgetmOverlayLayout(Lcom/android/internal/app/WindowDecorActionBar;)Lcom/android/internal/widget/ActionBarOverlayLayout;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/widget/ActionBarOverlayLayout;->requestApplyInsets()V

    .line 148
    :cond_6e
    return-void
.end method
