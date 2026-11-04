.class Landroid/media/tv/interactive/TvInteractiveAppView$3;
.super Ljava/lang/Object;
.source "TvInteractiveAppView.java"

# interfaces
.implements Landroid/media/tv/interactive/TvInteractiveAppManager$Session$FinishedInputEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/interactive/TvInteractiveAppView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/tv/interactive/TvInteractiveAppView;


# direct methods
.method constructor blacklist <init>(Landroid/media/tv/interactive/TvInteractiveAppView;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 394
    iput-object p1, p0, Landroid/media/tv/interactive/TvInteractiveAppView$3;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onFinishedInputEvent(Ljava/lang/Object;Z)V
    .registers 3

    .line 401
    if-eqz p2, :cond_3

    .line 402
    return-void

    .line 405
    :cond_3
    check-cast p1, Landroid/view/InputEvent;

    .line 406
    iget-object p2, p0, Landroid/media/tv/interactive/TvInteractiveAppView$3;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-virtual {p2, p1}, Landroid/media/tv/interactive/TvInteractiveAppView;->dispatchUnhandledInputEvent(Landroid/view/InputEvent;)Z

    move-result p2

    if-eqz p2, :cond_e

    .line 407
    return-void

    .line 409
    :cond_e
    iget-object p2, p0, Landroid/media/tv/interactive/TvInteractiveAppView$3;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-virtual {p2}, Landroid/media/tv/interactive/TvInteractiveAppView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object p2

    .line 410
    if-eqz p2, :cond_19

    .line 411
    invoke-virtual {p2, p1}, Landroid/view/ViewRootImpl;->dispatchUnhandledInputEvent(Landroid/view/InputEvent;)V

    .line 413
    :cond_19
    return-void
.end method
