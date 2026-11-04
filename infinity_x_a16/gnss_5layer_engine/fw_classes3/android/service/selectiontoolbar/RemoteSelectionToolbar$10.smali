.class Landroid/service/selectiontoolbar/RemoteSelectionToolbar$10;
.super Landroid/widget/LinearLayout;
.source "RemoteSelectionToolbar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->createMainPanel()Landroid/view/ViewGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/service/selectiontoolbar/RemoteSelectionToolbar;


# direct methods
.method constructor blacklist <init>(Landroid/service/selectiontoolbar/RemoteSelectionToolbar;Landroid/content/Context;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 1048
    iput-object p1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$10;->this$0:Landroid/service/selectiontoolbar/RemoteSelectionToolbar;

    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public whitelist onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 2

    .line 1064
    iget-object p1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$10;->this$0:Landroid/service/selectiontoolbar/RemoteSelectionToolbar;

    invoke-static {p1}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->-$$Nest$misOverflowAnimating(Landroid/service/selectiontoolbar/RemoteSelectionToolbar;)Z

    move-result p1

    return p1
.end method

.method protected whitelist onMeasure(II)V
    .registers 4

    .line 1051
    iget-object v0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$10;->this$0:Landroid/service/selectiontoolbar/RemoteSelectionToolbar;

    invoke-static {v0}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->-$$Nest$misOverflowAnimating(Landroid/service/selectiontoolbar/RemoteSelectionToolbar;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1054
    iget-object p1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$10;->this$0:Landroid/service/selectiontoolbar/RemoteSelectionToolbar;

    invoke-static {p1}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->-$$Nest$fgetmMainPanelSize(Landroid/service/selectiontoolbar/RemoteSelectionToolbar;)Landroid/util/Size;

    move-result-object p1

    .line 1055
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result p1

    .line 1054
    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 1058
    :cond_18
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 1059
    return-void
.end method
