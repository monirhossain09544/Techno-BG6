.class Landroid/media/tv/ad/TvAdView$3;
.super Ljava/lang/Object;
.source "TvAdView.java"

# interfaces
.implements Landroid/media/tv/ad/TvAdManager$Session$FinishedInputEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/ad/TvAdView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/tv/ad/TvAdView;


# direct methods
.method constructor blacklist <init>(Landroid/media/tv/ad/TvAdView;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 375
    iput-object p1, p0, Landroid/media/tv/ad/TvAdView$3;->this$0:Landroid/media/tv/ad/TvAdView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onFinishedInputEvent(Ljava/lang/Object;Z)V
    .registers 3

    .line 382
    if-eqz p2, :cond_3

    .line 383
    return-void

    .line 386
    :cond_3
    check-cast p1, Landroid/view/InputEvent;

    .line 387
    iget-object p2, p0, Landroid/media/tv/ad/TvAdView$3;->this$0:Landroid/media/tv/ad/TvAdView;

    invoke-virtual {p2, p1}, Landroid/media/tv/ad/TvAdView;->dispatchUnhandledInputEvent(Landroid/view/InputEvent;)Z

    move-result p2

    if-eqz p2, :cond_e

    .line 388
    return-void

    .line 390
    :cond_e
    iget-object p2, p0, Landroid/media/tv/ad/TvAdView$3;->this$0:Landroid/media/tv/ad/TvAdView;

    invoke-virtual {p2}, Landroid/media/tv/ad/TvAdView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object p2

    .line 391
    if-eqz p2, :cond_19

    .line 392
    invoke-virtual {p2, p1}, Landroid/view/ViewRootImpl;->dispatchUnhandledInputEvent(Landroid/view/InputEvent;)V

    .line 394
    :cond_19
    return-void
.end method
