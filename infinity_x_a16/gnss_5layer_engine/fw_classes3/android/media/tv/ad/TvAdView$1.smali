.class Landroid/media/tv/ad/TvAdView$1;
.super Ljava/lang/Object;
.source "TvAdView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


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

    .line 110
    iput-object p1, p0, Landroid/media/tv/ad/TvAdView$1;->this$0:Landroid/media/tv/ad/TvAdView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .registers 5

    .line 117
    iget-object p1, p0, Landroid/media/tv/ad/TvAdView$1;->this$0:Landroid/media/tv/ad/TvAdView;

    invoke-static {p1, p2}, Landroid/media/tv/ad/TvAdView;->-$$Nest$fputmSurfaceFormat(Landroid/media/tv/ad/TvAdView;I)V

    .line 118
    iget-object p1, p0, Landroid/media/tv/ad/TvAdView$1;->this$0:Landroid/media/tv/ad/TvAdView;

    invoke-static {p1, p3}, Landroid/media/tv/ad/TvAdView;->-$$Nest$fputmSurfaceWidth(Landroid/media/tv/ad/TvAdView;I)V

    .line 119
    iget-object p1, p0, Landroid/media/tv/ad/TvAdView$1;->this$0:Landroid/media/tv/ad/TvAdView;

    invoke-static {p1, p4}, Landroid/media/tv/ad/TvAdView;->-$$Nest$fputmSurfaceHeight(Landroid/media/tv/ad/TvAdView;I)V

    .line 120
    iget-object p1, p0, Landroid/media/tv/ad/TvAdView$1;->this$0:Landroid/media/tv/ad/TvAdView;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Landroid/media/tv/ad/TvAdView;->-$$Nest$fputmSurfaceChanged(Landroid/media/tv/ad/TvAdView;Z)V

    .line 121
    iget-object p1, p0, Landroid/media/tv/ad/TvAdView$1;->this$0:Landroid/media/tv/ad/TvAdView;

    iget-object p2, p0, Landroid/media/tv/ad/TvAdView$1;->this$0:Landroid/media/tv/ad/TvAdView;

    invoke-static {p2}, Landroid/media/tv/ad/TvAdView;->-$$Nest$fgetmSurfaceFormat(Landroid/media/tv/ad/TvAdView;)I

    move-result p2

    iget-object p3, p0, Landroid/media/tv/ad/TvAdView$1;->this$0:Landroid/media/tv/ad/TvAdView;

    invoke-static {p3}, Landroid/media/tv/ad/TvAdView;->-$$Nest$fgetmSurfaceWidth(Landroid/media/tv/ad/TvAdView;)I

    move-result p3

    iget-object p4, p0, Landroid/media/tv/ad/TvAdView$1;->this$0:Landroid/media/tv/ad/TvAdView;

    invoke-static {p4}, Landroid/media/tv/ad/TvAdView;->-$$Nest$fgetmSurfaceHeight(Landroid/media/tv/ad/TvAdView;)I

    move-result p4

    invoke-static {p1, p2, p3, p4}, Landroid/media/tv/ad/TvAdView;->-$$Nest$mdispatchSurfaceChanged(Landroid/media/tv/ad/TvAdView;III)V

    .line 122
    return-void
.end method

.method public whitelist surfaceCreated(Landroid/view/SurfaceHolder;)V
    .registers 3

    .line 126
    iget-object v0, p0, Landroid/media/tv/ad/TvAdView$1;->this$0:Landroid/media/tv/ad/TvAdView;

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/media/tv/ad/TvAdView;->-$$Nest$fputmSurface(Landroid/media/tv/ad/TvAdView;Landroid/view/Surface;)V

    .line 127
    iget-object p1, p0, Landroid/media/tv/ad/TvAdView$1;->this$0:Landroid/media/tv/ad/TvAdView;

    iget-object v0, p0, Landroid/media/tv/ad/TvAdView$1;->this$0:Landroid/media/tv/ad/TvAdView;

    invoke-static {v0}, Landroid/media/tv/ad/TvAdView;->-$$Nest$fgetmSurface(Landroid/media/tv/ad/TvAdView;)Landroid/view/Surface;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/media/tv/ad/TvAdView;->-$$Nest$msetSessionSurface(Landroid/media/tv/ad/TvAdView;Landroid/view/Surface;)V

    .line 128
    return-void
.end method

.method public whitelist surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .registers 4

    .line 132
    iget-object p1, p0, Landroid/media/tv/ad/TvAdView$1;->this$0:Landroid/media/tv/ad/TvAdView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/media/tv/ad/TvAdView;->-$$Nest$fputmSurface(Landroid/media/tv/ad/TvAdView;Landroid/view/Surface;)V

    .line 133
    iget-object p1, p0, Landroid/media/tv/ad/TvAdView$1;->this$0:Landroid/media/tv/ad/TvAdView;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Landroid/media/tv/ad/TvAdView;->-$$Nest$fputmSurfaceChanged(Landroid/media/tv/ad/TvAdView;Z)V

    .line 134
    iget-object p1, p0, Landroid/media/tv/ad/TvAdView$1;->this$0:Landroid/media/tv/ad/TvAdView;

    invoke-static {p1, v0}, Landroid/media/tv/ad/TvAdView;->-$$Nest$msetSessionSurface(Landroid/media/tv/ad/TvAdView;Landroid/view/Surface;)V

    .line 135
    return-void
.end method
