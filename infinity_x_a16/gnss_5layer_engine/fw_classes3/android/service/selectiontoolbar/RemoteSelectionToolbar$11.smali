.class Landroid/service/selectiontoolbar/RemoteSelectionToolbar$11;
.super Landroid/widget/ArrayAdapter;
.source "RemoteSelectionToolbar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->createOverflowPanel()Landroid/service/selectiontoolbar/RemoteSelectionToolbar$OverflowPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Landroid/view/selectiontoolbar/ToolbarMenuItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/service/selectiontoolbar/RemoteSelectionToolbar;


# direct methods
.method constructor blacklist <init>(Landroid/service/selectiontoolbar/RemoteSelectionToolbar;Landroid/content/Context;I)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 1101
    iput-object p1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$11;->this$0:Landroid/service/selectiontoolbar/RemoteSelectionToolbar;

    invoke-direct {p0, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public whitelist getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5

    .line 1104
    iget-object p3, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$11;->this$0:Landroid/service/selectiontoolbar/RemoteSelectionToolbar;

    invoke-static {p3}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->-$$Nest$fgetmOverflowPanelViewHelper(Landroid/service/selectiontoolbar/RemoteSelectionToolbar;)Landroid/service/selectiontoolbar/RemoteSelectionToolbar$OverflowPanelViewHelper;

    move-result-object p3

    .line 1105
    invoke-virtual {p0, p1}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$11;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/selectiontoolbar/ToolbarMenuItem;

    iget-object v0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$11;->this$0:Landroid/service/selectiontoolbar/RemoteSelectionToolbar;

    invoke-static {v0}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->-$$Nest$fgetmOverflowPanelSize(Landroid/service/selectiontoolbar/RemoteSelectionToolbar;)Landroid/util/Size;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    .line 1104
    invoke-virtual {p3, p1, v0, p2}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$OverflowPanelViewHelper;->getView(Landroid/view/selectiontoolbar/ToolbarMenuItem;ILandroid/view/View;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method
