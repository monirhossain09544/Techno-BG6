.class Landroid/service/selectiontoolbar/RemoteSelectionToolbar$6;
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

.field final synthetic blacklist val$overflowButtonStartX:F

.field final synthetic blacklist val$overflowButtonTargetX:F

.field final synthetic blacklist val$startWidth:I


# direct methods
.method constructor blacklist <init>(Landroid/service/selectiontoolbar/RemoteSelectionToolbar;FFI)V
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

    .line 552
    iput-object p1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$6;->this$0:Landroid/service/selectiontoolbar/RemoteSelectionToolbar;

    iput p2, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$6;->val$overflowButtonStartX:F

    iput p3, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$6;->val$overflowButtonTargetX:F

    iput p4, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$6;->val$startWidth:I

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method protected whitelist applyTransformation(FLandroid/view/animation/Transformation;)V
    .registers 5

    .line 555
    iget p2, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$6;->val$overflowButtonStartX:F

    iget v0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$6;->val$overflowButtonTargetX:F

    iget v1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$6;->val$overflowButtonStartX:F

    sub-float/2addr v0, v1

    mul-float/2addr p1, v0

    add-float/2addr p2, p1

    .line 558
    iget-object p1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$6;->this$0:Landroid/service/selectiontoolbar/RemoteSelectionToolbar;

    invoke-static {p1}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->-$$Nest$misInRtlMode(Landroid/service/selectiontoolbar/RemoteSelectionToolbar;)Z

    move-result p1

    if-eqz p1, :cond_13

    const/4 p1, 0x0

    goto :goto_21

    :cond_13
    iget-object p1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$6;->this$0:Landroid/service/selectiontoolbar/RemoteSelectionToolbar;

    invoke-static {p1}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->-$$Nest$fgetmContentContainer(Landroid/service/selectiontoolbar/RemoteSelectionToolbar;)Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result p1

    iget v0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$6;->val$startWidth:I

    sub-int/2addr p1, v0

    int-to-float p1, p1

    .line 559
    :goto_21
    add-float/2addr p2, p1

    .line 560
    iget-object p1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$6;->this$0:Landroid/service/selectiontoolbar/RemoteSelectionToolbar;

    invoke-static {p1}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->-$$Nest$fgetmOverflowButton(Landroid/service/selectiontoolbar/RemoteSelectionToolbar;)Landroid/widget/ImageButton;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setX(F)V

    .line 561
    iget-object p1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$6;->this$0:Landroid/service/selectiontoolbar/RemoteSelectionToolbar;

    invoke-static {p1}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->-$$Nest$mupdateFloatingToolbarRootContentRect(Landroid/service/selectiontoolbar/RemoteSelectionToolbar;)V

    .line 562
    return-void
.end method
