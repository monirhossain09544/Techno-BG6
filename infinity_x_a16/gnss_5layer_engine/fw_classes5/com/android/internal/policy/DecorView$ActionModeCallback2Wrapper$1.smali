.class Lcom/android/internal/policy/DecorView$ActionModeCallback2Wrapper$1;
.super Ljava/lang/Object;
.source "DecorView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/DecorView$ActionModeCallback2Wrapper;->onDestroyActionMode(Landroid/view/ActionMode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Lcom/android/internal/policy/DecorView$ActionModeCallback2Wrapper;

.field final synthetic blacklist val$lastActionModeView:Lcom/android/internal/widget/ActionBarContextView;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/policy/DecorView$ActionModeCallback2Wrapper;Lcom/android/internal/widget/ActionBarContextView;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2482
    iput-object p1, p0, Lcom/android/internal/policy/DecorView$ActionModeCallback2Wrapper$1;->this$1:Lcom/android/internal/policy/DecorView$ActionModeCallback2Wrapper;

    iput-object p2, p0, Lcom/android/internal/policy/DecorView$ActionModeCallback2Wrapper$1;->val$lastActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    .line 2508
    return-void
.end method

.method public whitelist onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    .line 2494
    iget-object p1, p0, Lcom/android/internal/policy/DecorView$ActionModeCallback2Wrapper$1;->val$lastActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    iget-object v0, p0, Lcom/android/internal/policy/DecorView$ActionModeCallback2Wrapper$1;->this$1:Lcom/android/internal/policy/DecorView$ActionModeCallback2Wrapper;

    iget-object v0, v0, Lcom/android/internal/policy/DecorView$ActionModeCallback2Wrapper;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {v0}, Lcom/android/internal/policy/DecorView;->-$$Nest$fgetmPrimaryActionModeView(Lcom/android/internal/policy/DecorView;)Lcom/android/internal/widget/ActionBarContextView;

    move-result-object v0

    if-ne p1, v0, :cond_3c

    .line 2495
    iget-object p1, p0, Lcom/android/internal/policy/DecorView$ActionModeCallback2Wrapper$1;->val$lastActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/ActionBarContextView;->setVisibility(I)V

    .line 2496
    iget-object p1, p0, Lcom/android/internal/policy/DecorView$ActionModeCallback2Wrapper$1;->this$1:Lcom/android/internal/policy/DecorView$ActionModeCallback2Wrapper;

    iget-object p1, p1, Lcom/android/internal/policy/DecorView$ActionModeCallback2Wrapper;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {p1}, Lcom/android/internal/policy/DecorView;->-$$Nest$fgetmPrimaryActionModePopup(Lcom/android/internal/policy/DecorView;)Landroid/widget/PopupWindow;

    move-result-object p1

    if-eqz p1, :cond_28

    .line 2497
    iget-object p1, p0, Lcom/android/internal/policy/DecorView$ActionModeCallback2Wrapper$1;->this$1:Lcom/android/internal/policy/DecorView$ActionModeCallback2Wrapper;

    iget-object p1, p1, Lcom/android/internal/policy/DecorView$ActionModeCallback2Wrapper;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {p1}, Lcom/android/internal/policy/DecorView;->-$$Nest$fgetmPrimaryActionModePopup(Lcom/android/internal/policy/DecorView;)Landroid/widget/PopupWindow;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 2499
    :cond_28
    iget-object p1, p0, Lcom/android/internal/policy/DecorView$ActionModeCallback2Wrapper$1;->val$lastActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {p1}, Lcom/android/internal/widget/ActionBarContextView;->killMode()V

    .line 2500
    iget-object p1, p0, Lcom/android/internal/policy/DecorView$ActionModeCallback2Wrapper$1;->this$1:Lcom/android/internal/policy/DecorView$ActionModeCallback2Wrapper;

    iget-object p1, p1, Lcom/android/internal/policy/DecorView$ActionModeCallback2Wrapper;->this$0:Lcom/android/internal/policy/DecorView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/internal/policy/DecorView;->-$$Nest$fputmFadeAnim(Lcom/android/internal/policy/DecorView;Landroid/animation/ObjectAnimator;)V

    .line 2501
    iget-object p1, p0, Lcom/android/internal/policy/DecorView$ActionModeCallback2Wrapper$1;->this$1:Lcom/android/internal/policy/DecorView$ActionModeCallback2Wrapper;

    iget-object p1, p1, Lcom/android/internal/policy/DecorView$ActionModeCallback2Wrapper;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-virtual {p1}, Lcom/android/internal/policy/DecorView;->requestApplyInsets()V

    .line 2503
    :cond_3c
    return-void
.end method

.method public whitelist onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2

    .line 2513
    return-void
.end method

.method public whitelist onAnimationStart(Landroid/animation/Animator;)V
    .registers 2

    .line 2487
    return-void
.end method
