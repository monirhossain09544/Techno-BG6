.class Landroid/media/tv/interactive/TvInteractiveAppView$1;
.super Ljava/lang/Object;
.source "TvInteractiveAppView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


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

    .line 142
    iput-object p1, p0, Landroid/media/tv/interactive/TvInteractiveAppView$1;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .registers 5

    .line 149
    iget-object p1, p0, Landroid/media/tv/interactive/TvInteractiveAppView$1;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {p1, p2}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fputmSurfaceFormat(Landroid/media/tv/interactive/TvInteractiveAppView;I)V

    .line 150
    iget-object p1, p0, Landroid/media/tv/interactive/TvInteractiveAppView$1;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {p1, p3}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fputmSurfaceWidth(Landroid/media/tv/interactive/TvInteractiveAppView;I)V

    .line 151
    iget-object p1, p0, Landroid/media/tv/interactive/TvInteractiveAppView$1;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {p1, p4}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fputmSurfaceHeight(Landroid/media/tv/interactive/TvInteractiveAppView;I)V

    .line 152
    iget-object p1, p0, Landroid/media/tv/interactive/TvInteractiveAppView$1;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fputmSurfaceChanged(Landroid/media/tv/interactive/TvInteractiveAppView;Z)V

    .line 153
    iget-object p1, p0, Landroid/media/tv/interactive/TvInteractiveAppView$1;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    iget-object p2, p0, Landroid/media/tv/interactive/TvInteractiveAppView$1;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {p2}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmSurfaceFormat(Landroid/media/tv/interactive/TvInteractiveAppView;)I

    move-result p2

    iget-object p3, p0, Landroid/media/tv/interactive/TvInteractiveAppView$1;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {p3}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmSurfaceWidth(Landroid/media/tv/interactive/TvInteractiveAppView;)I

    move-result p3

    iget-object p4, p0, Landroid/media/tv/interactive/TvInteractiveAppView$1;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {p4}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmSurfaceHeight(Landroid/media/tv/interactive/TvInteractiveAppView;)I

    move-result p4

    invoke-static {p1, p2, p3, p4}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$mdispatchSurfaceChanged(Landroid/media/tv/interactive/TvInteractiveAppView;III)V

    .line 154
    return-void
.end method

.method public whitelist surfaceCreated(Landroid/view/SurfaceHolder;)V
    .registers 3

    .line 158
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView$1;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fputmSurface(Landroid/media/tv/interactive/TvInteractiveAppView;Landroid/view/Surface;)V

    .line 159
    iget-object p1, p0, Landroid/media/tv/interactive/TvInteractiveAppView$1;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView$1;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmSurface(Landroid/media/tv/interactive/TvInteractiveAppView;)Landroid/view/Surface;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$msetSessionSurface(Landroid/media/tv/interactive/TvInteractiveAppView;Landroid/view/Surface;)V

    .line 160
    return-void
.end method

.method public whitelist surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .registers 4

    .line 164
    iget-object p1, p0, Landroid/media/tv/interactive/TvInteractiveAppView$1;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fputmSurface(Landroid/media/tv/interactive/TvInteractiveAppView;Landroid/view/Surface;)V

    .line 165
    iget-object p1, p0, Landroid/media/tv/interactive/TvInteractiveAppView$1;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fputmSurfaceChanged(Landroid/media/tv/interactive/TvInteractiveAppView;Z)V

    .line 166
    iget-object p1, p0, Landroid/media/tv/interactive/TvInteractiveAppView$1;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {p1, v0}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$msetSessionSurface(Landroid/media/tv/interactive/TvInteractiveAppView;Landroid/view/Surface;)V

    .line 167
    return-void
.end method
