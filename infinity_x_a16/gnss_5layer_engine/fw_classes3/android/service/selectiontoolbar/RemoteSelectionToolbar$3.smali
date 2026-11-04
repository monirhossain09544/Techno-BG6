.class Landroid/service/selectiontoolbar/RemoteSelectionToolbar$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "RemoteSelectionToolbar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/service/selectiontoolbar/RemoteSelectionToolbar;-><init>(ILandroid/content/Context;Landroid/view/selectiontoolbar/ShowInfo;Landroid/service/selectiontoolbar/SelectionToolbarRenderService$RemoteCallbackWrapper;Landroid/service/selectiontoolbar/SelectionToolbarRenderService$TransferTouchListener;Landroid/service/selectiontoolbar/SelectionToolbarRenderService$OnPasteActionCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/service/selectiontoolbar/RemoteSelectionToolbar;


# direct methods
.method constructor blacklist <init>(Landroid/service/selectiontoolbar/RemoteSelectionToolbar;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 243
    iput-object p1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$3;->this$0:Landroid/service/selectiontoolbar/RemoteSelectionToolbar;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    .line 247
    iget-object p1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$3;->this$0:Landroid/service/selectiontoolbar/RemoteSelectionToolbar;

    invoke-static {p1}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->-$$Nest$fgetmContentContainer(Landroid/service/selectiontoolbar/RemoteSelectionToolbar;)Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 248
    iget-object p1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$3;->this$0:Landroid/service/selectiontoolbar/RemoteSelectionToolbar;

    invoke-static {p1}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->-$$Nest$fgetmSurfaceControlViewHost(Landroid/service/selectiontoolbar/RemoteSelectionToolbar;)Landroid/view/SurfaceControlViewHost;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/SurfaceControlViewHost;->release()V

    .line 249
    iget-object p1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$3;->this$0:Landroid/service/selectiontoolbar/RemoteSelectionToolbar;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->-$$Nest$fputmSurfaceControlViewHost(Landroid/service/selectiontoolbar/RemoteSelectionToolbar;Landroid/view/SurfaceControlViewHost;)V

    .line 250
    iget-object p1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$3;->this$0:Landroid/service/selectiontoolbar/RemoteSelectionToolbar;

    invoke-static {p1, v0}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->-$$Nest$fputmSurfacePackage(Landroid/service/selectiontoolbar/RemoteSelectionToolbar;Landroid/view/SurfaceControlViewHost$SurfacePackage;)V

    .line 251
    return-void
.end method
