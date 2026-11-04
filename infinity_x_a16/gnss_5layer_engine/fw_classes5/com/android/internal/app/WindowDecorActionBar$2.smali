.class Lcom/android/internal/app/WindowDecorActionBar$2;
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

    .line 151
    iput-object p1, p0, Lcom/android/internal/app/WindowDecorActionBar$2;->this$0:Lcom/android/internal/app/WindowDecorActionBar;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    .line 154
    iget-object p1, p0, Lcom/android/internal/app/WindowDecorActionBar$2;->this$0:Lcom/android/internal/app/WindowDecorActionBar;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/internal/app/WindowDecorActionBar;->-$$Nest$fputmCurrentShowAnim(Lcom/android/internal/app/WindowDecorActionBar;Landroid/animation/Animator;)V

    .line 155
    iget-object p1, p0, Lcom/android/internal/app/WindowDecorActionBar$2;->this$0:Lcom/android/internal/app/WindowDecorActionBar;

    invoke-static {p1}, Lcom/android/internal/app/WindowDecorActionBar;->-$$Nest$fgetmContainerView(Lcom/android/internal/app/WindowDecorActionBar;)Lcom/android/internal/widget/ActionBarContainer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/widget/ActionBarContainer;->requestLayout()V

    .line 156
    return-void
.end method
