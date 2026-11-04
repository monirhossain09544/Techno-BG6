.class Landroid/service/selectiontoolbar/RemoteSelectionToolbar$5;
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

.field final synthetic blacklist val$startHeight:I

.field final synthetic blacklist val$startY:F

.field final synthetic blacklist val$targetHeight:I


# direct methods
.method constructor blacklist <init>(Landroid/service/selectiontoolbar/RemoteSelectionToolbar;IIF)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 536
    iput-object p1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$5;->this$0:Landroid/service/selectiontoolbar/RemoteSelectionToolbar;

    iput p2, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$5;->val$targetHeight:I

    iput p3, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$5;->val$startHeight:I

    iput p4, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$5;->val$startY:F

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method protected whitelist applyTransformation(FLandroid/view/animation/Transformation;)V
    .registers 5

    .line 539
    iget p2, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$5;->val$targetHeight:I

    iget v0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$5;->val$startHeight:I

    sub-int/2addr p2, v0

    int-to-float p2, p2

    mul-float/2addr p1, p2

    float-to-int p1, p1

    .line 540
    iget-object p2, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$5;->this$0:Landroid/service/selectiontoolbar/RemoteSelectionToolbar;

    invoke-static {p2}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->-$$Nest$fgetmContentContainer(Landroid/service/selectiontoolbar/RemoteSelectionToolbar;)Landroid/view/ViewGroup;

    move-result-object p2

    iget v0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$5;->val$startHeight:I

    add-int/2addr v0, p1

    invoke-static {p2, v0}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->-$$Nest$smsetHeight(Landroid/view/View;I)V

    .line 541
    iget-object p1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$5;->this$0:Landroid/service/selectiontoolbar/RemoteSelectionToolbar;

    invoke-static {p1}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->-$$Nest$fgetmOpenOverflowUpwards(Landroid/service/selectiontoolbar/RemoteSelectionToolbar;)Z

    move-result p1

    if-eqz p1, :cond_3b

    .line 542
    iget-object p1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$5;->this$0:Landroid/service/selectiontoolbar/RemoteSelectionToolbar;

    invoke-static {p1}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->-$$Nest$fgetmContentContainer(Landroid/service/selectiontoolbar/RemoteSelectionToolbar;)Landroid/view/ViewGroup;

    move-result-object p1

    iget p2, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$5;->val$startY:F

    iget-object v0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$5;->this$0:Landroid/service/selectiontoolbar/RemoteSelectionToolbar;

    invoke-static {v0}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->-$$Nest$fgetmContentContainer(Landroid/service/selectiontoolbar/RemoteSelectionToolbar;)Landroid/view/ViewGroup;

    move-result-object v0

    .line 543
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    iget v1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$5;->val$startHeight:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    sub-float/2addr p2, v0

    .line 542
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setY(F)V

    .line 544
    iget-object p1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$5;->this$0:Landroid/service/selectiontoolbar/RemoteSelectionToolbar;

    invoke-static {p1}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->-$$Nest$mpositionContentYCoordinatesIfOpeningOverflowUpwards(Landroid/service/selectiontoolbar/RemoteSelectionToolbar;)V

    .line 546
    :cond_3b
    return-void
.end method
