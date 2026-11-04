.class final Landroid/service/selectiontoolbar/RemoteSelectionToolbar$OverflowPanel;
.super Landroid/widget/ListView;
.source "RemoteSelectionToolbar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/selectiontoolbar/RemoteSelectionToolbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "OverflowPanel"
.end annotation


# instance fields
.field private final blacklist mPopup:Landroid/service/selectiontoolbar/RemoteSelectionToolbar;


# direct methods
.method constructor blacklist <init>(Landroid/service/selectiontoolbar/RemoteSelectionToolbar;)V
    .registers 3

    .line 1191
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;

    invoke-static {v0}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->-$$Nest$fgetmContext(Landroid/service/selectiontoolbar/RemoteSelectionToolbar;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 1192
    iput-object p1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$OverflowPanel;->mPopup:Landroid/service/selectiontoolbar/RemoteSelectionToolbar;

    .line 1193
    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollDefaultDelay()I

    move-result p1

    const/4 v0, 0x3

    mul-int/2addr p1, v0

    invoke-virtual {p0, p1}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$OverflowPanel;->setScrollBarDefaultDelayBeforeFade(I)V

    .line 1194
    invoke-virtual {p0, v0}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$OverflowPanel;->setScrollIndicators(I)V

    .line 1195
    return-void
.end method


# virtual methods
.method protected whitelist awakenScrollBars()Z
    .registers 2

    .line 1218
    invoke-super {p0}, Landroid/widget/ListView;->awakenScrollBars()Z

    move-result v0

    return v0
.end method

.method public whitelist dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    .line 1209
    iget-object v0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$OverflowPanel;->mPopup:Landroid/service/selectiontoolbar/RemoteSelectionToolbar;

    invoke-static {v0}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->-$$Nest$misOverflowAnimating(Landroid/service/selectiontoolbar/RemoteSelectionToolbar;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1211
    const/4 p1, 0x1

    return p1

    .line 1213
    :cond_a
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected whitelist onMeasure(II)V
    .registers 4

    .line 1201
    iget-object p2, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$OverflowPanel;->mPopup:Landroid/service/selectiontoolbar/RemoteSelectionToolbar;

    invoke-static {p2}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->-$$Nest$fgetmOverflowPanelSize(Landroid/service/selectiontoolbar/RemoteSelectionToolbar;)Landroid/util/Size;

    move-result-object p2

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result p2

    iget-object v0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$OverflowPanel;->mPopup:Landroid/service/selectiontoolbar/RemoteSelectionToolbar;

    invoke-static {v0}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->-$$Nest$fgetmOverflowButtonSize(Landroid/service/selectiontoolbar/RemoteSelectionToolbar;)Landroid/util/Size;

    move-result-object v0

    .line 1202
    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    sub-int/2addr p2, v0

    .line 1203
    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 1204
    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->onMeasure(II)V

    .line 1205
    return-void
.end method
