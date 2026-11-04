.class Landroid/service/selectiontoolbar/RemoteSelectionToolbar$2;
.super Ljava/lang/Object;
.source "RemoteSelectionToolbar.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


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

    .line 232
    iput-object p1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$2;->this$0:Landroid/service/selectiontoolbar/RemoteSelectionToolbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onLayoutChange(Landroid/view/View;IIIIIIII)V
    .registers 10

    .line 236
    iget-object p1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$2;->this$0:Landroid/service/selectiontoolbar/RemoteSelectionToolbar;

    invoke-static {p1}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->-$$Nest$mupdateFloatingToolbarRootContentRect(Landroid/service/selectiontoolbar/RemoteSelectionToolbar;)V

    .line 237
    return-void
.end method
