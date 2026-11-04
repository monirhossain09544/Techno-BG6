.class Landroid/media/tv/TvView$1;
.super Ljava/lang/Object;
.source "TvView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/TvView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/tv/TvView;


# direct methods
.method constructor blacklist <init>(Landroid/media/tv/TvView;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 127
    iput-object p1, p0, Landroid/media/tv/TvView$1;->this$0:Landroid/media/tv/TvView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .registers 5

    .line 134
    iget-object p1, p0, Landroid/media/tv/TvView$1;->this$0:Landroid/media/tv/TvView;

    invoke-static {p1, p2}, Landroid/media/tv/TvView;->-$$Nest$fputmSurfaceFormat(Landroid/media/tv/TvView;I)V

    .line 135
    iget-object p1, p0, Landroid/media/tv/TvView$1;->this$0:Landroid/media/tv/TvView;

    invoke-static {p1, p3}, Landroid/media/tv/TvView;->-$$Nest$fputmSurfaceWidth(Landroid/media/tv/TvView;I)V

    .line 136
    iget-object p1, p0, Landroid/media/tv/TvView$1;->this$0:Landroid/media/tv/TvView;

    invoke-static {p1, p4}, Landroid/media/tv/TvView;->-$$Nest$fputmSurfaceHeight(Landroid/media/tv/TvView;I)V

    .line 137
    iget-object p1, p0, Landroid/media/tv/TvView$1;->this$0:Landroid/media/tv/TvView;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Landroid/media/tv/TvView;->-$$Nest$fputmSurfaceChanged(Landroid/media/tv/TvView;Z)V

    .line 138
    iget-object p1, p0, Landroid/media/tv/TvView$1;->this$0:Landroid/media/tv/TvView;

    iget-object p2, p0, Landroid/media/tv/TvView$1;->this$0:Landroid/media/tv/TvView;

    invoke-static {p2}, Landroid/media/tv/TvView;->-$$Nest$fgetmSurfaceFormat(Landroid/media/tv/TvView;)I

    move-result p2

    iget-object p3, p0, Landroid/media/tv/TvView$1;->this$0:Landroid/media/tv/TvView;

    invoke-static {p3}, Landroid/media/tv/TvView;->-$$Nest$fgetmSurfaceWidth(Landroid/media/tv/TvView;)I

    move-result p3

    iget-object p4, p0, Landroid/media/tv/TvView$1;->this$0:Landroid/media/tv/TvView;

    invoke-static {p4}, Landroid/media/tv/TvView;->-$$Nest$fgetmSurfaceHeight(Landroid/media/tv/TvView;)I

    move-result p4

    invoke-static {p1, p2, p3, p4}, Landroid/media/tv/TvView;->-$$Nest$mdispatchSurfaceChanged(Landroid/media/tv/TvView;III)V

    .line 139
    return-void
.end method

.method public whitelist surfaceCreated(Landroid/view/SurfaceHolder;)V
    .registers 3

    .line 143
    iget-object v0, p0, Landroid/media/tv/TvView$1;->this$0:Landroid/media/tv/TvView;

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/media/tv/TvView;->-$$Nest$fputmSurface(Landroid/media/tv/TvView;Landroid/view/Surface;)V

    .line 144
    iget-object p1, p0, Landroid/media/tv/TvView$1;->this$0:Landroid/media/tv/TvView;

    iget-object v0, p0, Landroid/media/tv/TvView$1;->this$0:Landroid/media/tv/TvView;

    invoke-static {v0}, Landroid/media/tv/TvView;->-$$Nest$fgetmSurface(Landroid/media/tv/TvView;)Landroid/view/Surface;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/media/tv/TvView;->-$$Nest$msetSessionSurface(Landroid/media/tv/TvView;Landroid/view/Surface;)V

    .line 145
    return-void
.end method

.method public whitelist surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .registers 4

    .line 149
    iget-object p1, p0, Landroid/media/tv/TvView$1;->this$0:Landroid/media/tv/TvView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/media/tv/TvView;->-$$Nest$fputmSurface(Landroid/media/tv/TvView;Landroid/view/Surface;)V

    .line 150
    iget-object p1, p0, Landroid/media/tv/TvView$1;->this$0:Landroid/media/tv/TvView;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Landroid/media/tv/TvView;->-$$Nest$fputmSurfaceChanged(Landroid/media/tv/TvView;Z)V

    .line 151
    iget-object p1, p0, Landroid/media/tv/TvView$1;->this$0:Landroid/media/tv/TvView;

    invoke-static {p1, v0}, Landroid/media/tv/TvView;->-$$Nest$msetSessionSurface(Landroid/media/tv/TvView;Landroid/view/Surface;)V

    .line 152
    return-void
.end method
