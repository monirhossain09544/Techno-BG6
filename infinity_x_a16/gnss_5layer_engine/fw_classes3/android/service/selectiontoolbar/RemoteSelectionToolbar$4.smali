.class Landroid/service/selectiontoolbar/RemoteSelectionToolbar$4;
.super Landroid/view/animation/Animation;
.source "RemoteSelectionToolbar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->openOverflow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/service/selectiontoolbar/RemoteSelectionToolbar;

.field final synthetic blacklist val$left:F

.field final synthetic blacklist val$right:F

.field final synthetic blacklist val$startWidth:I

.field final synthetic blacklist val$targetWidth:I


# direct methods
.method constructor blacklist <init>(Landroid/service/selectiontoolbar/RemoteSelectionToolbar;IIFF)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 515
    iput-object p1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$4;->this$0:Landroid/service/selectiontoolbar/RemoteSelectionToolbar;

    iput p2, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$4;->val$targetWidth:I

    iput p3, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$4;->val$startWidth:I

    iput p4, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$4;->val$left:F

    iput p5, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$4;->val$right:F

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method protected whitelist applyTransformation(FLandroid/view/animation/Transformation;)V
    .registers 4

    .line 518
    iget p2, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$4;->val$targetWidth:I

    iget v0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$4;->val$startWidth:I

    sub-int/2addr p2, v0

    int-to-float p2, p2

    mul-float/2addr p1, p2

    float-to-int p1, p1

    .line 519
    iget-object p2, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$4;->this$0:Landroid/service/selectiontoolbar/RemoteSelectionToolbar;

    invoke-static {p2}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->-$$Nest$fgetmContentContainer(Landroid/service/selectiontoolbar/RemoteSelectionToolbar;)Landroid/view/ViewGroup;

    move-result-object p2

    iget v0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$4;->val$startWidth:I

    add-int/2addr v0, p1

    invoke-static {p2, v0}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->-$$Nest$smsetWidth(Landroid/view/View;I)V

    .line 520
    iget-object p1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$4;->this$0:Landroid/service/selectiontoolbar/RemoteSelectionToolbar;

    invoke-static {p1}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->-$$Nest$misInRtlMode(Landroid/service/selectiontoolbar/RemoteSelectionToolbar;)Z

    move-result p1

    if-eqz p1, :cond_3b

    .line 521
    iget-object p1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$4;->this$0:Landroid/service/selectiontoolbar/RemoteSelectionToolbar;

    invoke-static {p1}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->-$$Nest$fgetmContentContainer(Landroid/service/selectiontoolbar/RemoteSelectionToolbar;)Landroid/view/ViewGroup;

    move-result-object p1

    iget p2, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$4;->val$left:F

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setX(F)V

    .line 524
    iget-object p1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$4;->this$0:Landroid/service/selectiontoolbar/RemoteSelectionToolbar;

    invoke-static {p1}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->-$$Nest$fgetmMainPanel(Landroid/service/selectiontoolbar/RemoteSelectionToolbar;)Landroid/view/ViewGroup;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setX(F)V

    .line 525
    iget-object p1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$4;->this$0:Landroid/service/selectiontoolbar/RemoteSelectionToolbar;

    invoke-static {p1}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->-$$Nest$fgetmOverflowPanel(Landroid/service/selectiontoolbar/RemoteSelectionToolbar;)Landroid/service/selectiontoolbar/RemoteSelectionToolbar$OverflowPanel;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$OverflowPanel;->setX(F)V

    goto :goto_80

    .line 527
    :cond_3b
    iget-object p1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$4;->this$0:Landroid/service/selectiontoolbar/RemoteSelectionToolbar;

    invoke-static {p1}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->-$$Nest$fgetmContentContainer(Landroid/service/selectiontoolbar/RemoteSelectionToolbar;)Landroid/view/ViewGroup;

    move-result-object p1

    iget p2, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$4;->val$right:F

    iget-object v0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$4;->this$0:Landroid/service/selectiontoolbar/RemoteSelectionToolbar;

    invoke-static {v0}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->-$$Nest$fgetmContentContainer(Landroid/service/selectiontoolbar/RemoteSelectionToolbar;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p2, v0

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setX(F)V

    .line 531
    iget-object p1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$4;->this$0:Landroid/service/selectiontoolbar/RemoteSelectionToolbar;

    invoke-static {p1}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->-$$Nest$fgetmMainPanel(Landroid/service/selectiontoolbar/RemoteSelectionToolbar;)Landroid/view/ViewGroup;

    move-result-object p1

    iget-object p2, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$4;->this$0:Landroid/service/selectiontoolbar/RemoteSelectionToolbar;

    invoke-static {p2}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->-$$Nest$fgetmContentContainer(Landroid/service/selectiontoolbar/RemoteSelectionToolbar;)Landroid/view/ViewGroup;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getWidth()I

    move-result p2

    iget v0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$4;->val$startWidth:I

    sub-int/2addr p2, v0

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setX(F)V

    .line 532
    iget-object p1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$4;->this$0:Landroid/service/selectiontoolbar/RemoteSelectionToolbar;

    invoke-static {p1}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->-$$Nest$fgetmOverflowPanel(Landroid/service/selectiontoolbar/RemoteSelectionToolbar;)Landroid/service/selectiontoolbar/RemoteSelectionToolbar$OverflowPanel;

    move-result-object p1

    iget-object p2, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$4;->this$0:Landroid/service/selectiontoolbar/RemoteSelectionToolbar;

    invoke-static {p2}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->-$$Nest$fgetmContentContainer(Landroid/service/selectiontoolbar/RemoteSelectionToolbar;)Landroid/view/ViewGroup;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getWidth()I

    move-result p2

    iget v0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$4;->val$targetWidth:I

    sub-int/2addr p2, v0

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$OverflowPanel;->setX(F)V

    .line 534
    :goto_80
    return-void
.end method
