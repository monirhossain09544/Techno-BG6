.class public Lcom/android/internal/view/ListViewCaptureHelper;
.super Ljava/lang/Object;
.source "ListViewCaptureHelper.java"

# interfaces
.implements Lcom/android/internal/view/ScrollCaptureViewHelper;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/internal/view/ScrollCaptureViewHelper<",
        "Landroid/widget/ListView;",
        ">;"
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "LVCaptureHelper"


# instance fields
.field private blacklist mOverScrollMode:I

.field private blacklist mScrollBarWasEnabled:Z

.field private blacklist mScrollDelta:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic blacklist onAcceptSession(Landroid/view/View;)Z
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 38
    check-cast p1, Landroid/widget/ListView;

    invoke-virtual {p0, p1}, Lcom/android/internal/view/ListViewCaptureHelper;->onAcceptSession(Landroid/widget/ListView;)Z

    move-result p1

    return p1
.end method

.method public blacklist onAcceptSession(Landroid/widget/ListView;)Z
    .registers 4

    .line 46
    invoke-virtual {p1}, Landroid/widget/ListView;->isVisibleToUser()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 47
    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->canScrollVertically(I)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_16

    invoke-virtual {p1, v1}, Landroid/widget/ListView;->canScrollVertically(I)Z

    move-result p1

    if-eqz p1, :cond_15

    goto :goto_16

    :cond_15
    const/4 v1, 0x0

    .line 46
    :cond_16
    :goto_16
    return v1
.end method

.method public bridge synthetic blacklist onPrepareForEnd(Landroid/view/View;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 38
    check-cast p1, Landroid/widget/ListView;

    invoke-virtual {p0, p1}, Lcom/android/internal/view/ListViewCaptureHelper;->onPrepareForEnd(Landroid/widget/ListView;)V

    return-void
.end method

.method public blacklist onPrepareForEnd(Landroid/widget/ListView;)V
    .registers 3

    .line 130
    iget v0, p0, Lcom/android/internal/view/ListViewCaptureHelper;->mScrollDelta:I

    neg-int v0, v0

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->scrollListBy(I)V

    .line 131
    iget v0, p0, Lcom/android/internal/view/ListViewCaptureHelper;->mOverScrollMode:I

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setOverScrollMode(I)V

    .line 132
    iget-boolean v0, p0, Lcom/android/internal/view/ListViewCaptureHelper;->mScrollBarWasEnabled:Z

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setVerticalScrollBarEnabled(Z)V

    .line 133
    return-void
.end method

.method public bridge synthetic blacklist onPrepareForStart(Landroid/view/View;Landroid/graphics/Rect;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 38
    check-cast p1, Landroid/widget/ListView;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/view/ListViewCaptureHelper;->onPrepareForStart(Landroid/widget/ListView;Landroid/graphics/Rect;)V

    return-void
.end method

.method public blacklist onPrepareForStart(Landroid/widget/ListView;Landroid/graphics/Rect;)V
    .registers 4

    .line 52
    const/4 p2, 0x0

    iput p2, p0, Lcom/android/internal/view/ListViewCaptureHelper;->mScrollDelta:I

    .line 54
    invoke-virtual {p1}, Landroid/widget/ListView;->getOverScrollMode()I

    move-result v0

    iput v0, p0, Lcom/android/internal/view/ListViewCaptureHelper;->mOverScrollMode:I

    .line 55
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setOverScrollMode(I)V

    .line 57
    invoke-virtual {p1}, Landroid/widget/ListView;->isVerticalScrollBarEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/view/ListViewCaptureHelper;->mScrollBarWasEnabled:Z

    .line 58
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setVerticalScrollBarEnabled(Z)V

    .line 59
    return-void
.end method

.method public bridge synthetic blacklist onScrollRequested(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/os/CancellationSignal;Ljava/util/function/Consumer;)V
    .registers 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 38
    move-object v1, p1

    check-cast v1, Landroid/widget/ListView;

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/view/ListViewCaptureHelper;->onScrollRequested(Landroid/widget/ListView;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/os/CancellationSignal;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public blacklist onScrollRequested(Landroid/widget/ListView;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/os/CancellationSignal;Ljava/util/function/Consumer;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ListView;",
            "Landroid/graphics/Rect;",
            "Landroid/graphics/Rect;",
            "Landroid/os/CancellationSignal;",
            "Ljava/util/function/Consumer<",
            "Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;",
            ">;)V"
        }
    .end annotation

    .line 64
    const-string p4, "LVCaptureHelper"

    const-string v0, "-----------------------------------------------------------"

    invoke-static {p4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onScrollRequested(scrollBounds="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", requestRect="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    new-instance v1, Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;

    invoke-direct {v1}, Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;-><init>()V

    .line 69
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, p3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v2, v1, Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;->requestedArea:Landroid/graphics/Rect;

    .line 70
    iget v2, p0, Lcom/android/internal/view/ListViewCaptureHelper;->mScrollDelta:I

    iput v2, v1, Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;->scrollDelta:I

    .line 71
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, v1, Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;->availableArea:Landroid/graphics/Rect;

    .line 73
    invoke-virtual {p1}, Landroid/widget/ListView;->isVisibleToUser()Z

    move-result v2

    if-eqz v2, :cond_116

    invoke-virtual {p1}, Landroid/widget/ListView;->getChildCount()I

    move-result v2

    if-nez v2, :cond_52

    goto/16 :goto_116

    .line 80
    :cond_52
    iget v2, p0, Lcom/android/internal/view/ListViewCaptureHelper;->mScrollDelta:I

    .line 81
    invoke-static {v2, p2, p3}, Lcom/android/internal/view/ScrollCaptureViewSupport;->transformFromRequestToContainer(ILandroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v2

    .line 83
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 84
    invoke-virtual {p1, v3}, Landroid/widget/ListView;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    .line 87
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 88
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    sub-int/2addr v5, v2

    .line 89
    if-lez v5, :cond_77

    .line 90
    neg-int v2, v5

    div-int/lit8 v2, v2, 0x2

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v2}, Landroid/graphics/Rect;->inset(II)V

    .line 93
    :cond_77
    invoke-static {v3, v4}, Lcom/android/internal/view/ScrollCaptureViewSupport;->computeScrollAmount(Landroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v2

    .line 94
    if-gez v2, :cond_83

    .line 95
    const-string v4, "About to scroll UP (content moves down within parent)"

    invoke-static {p4, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8a

    .line 96
    :cond_83
    if-lez v2, :cond_8a

    .line 97
    const-string v4, "About to scroll DOWN (content moves up within parent)"

    invoke-static {p4, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    :cond_8a
    :goto_8a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "scrollAmount: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p4, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    invoke-static {p1, v2}, Lcom/android/internal/view/ScrollCaptureViewSupport;->findScrollingReferenceView(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v4

    .line 102
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v5

    .line 104
    invoke-virtual {p1, v2}, Landroid/widget/ListView;->scrollListBy(I)V

    .line 105
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v5, v2

    .line 106
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Parent view has scrolled vertically by "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " px"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iget v2, p0, Lcom/android/internal/view/ListViewCaptureHelper;->mScrollDelta:I

    add-int/2addr v2, v5

    iput v2, p0, Lcom/android/internal/view/ListViewCaptureHelper;->mScrollDelta:I

    .line 109
    iget v2, p0, Lcom/android/internal/view/ListViewCaptureHelper;->mScrollDelta:I

    iput v2, v1, Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;->scrollDelta:I

    .line 110
    if-eqz v5, :cond_f3

    .line 111
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Scroll delta is now "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v5, p0, Lcom/android/internal/view/ListViewCaptureHelper;->mScrollDelta:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :cond_f3
    new-instance v2, Landroid/graphics/Rect;

    iget v4, p0, Lcom/android/internal/view/ListViewCaptureHelper;->mScrollDelta:I

    .line 116
    invoke-static {v4, p2, p3}, Lcom/android/internal/view/ScrollCaptureViewSupport;->transformFromRequestToContainer(ILandroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p3

    invoke-direct {v2, p3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 118
    invoke-virtual {p1, v3}, Landroid/widget/ListView;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    .line 119
    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result p1

    if-eqz p1, :cond_10f

    .line 120
    iget p1, p0, Lcom/android/internal/view/ListViewCaptureHelper;->mScrollDelta:I

    invoke-static {p1, p2, v2}, Lcom/android/internal/view/ScrollCaptureViewSupport;->transformFromContainerToRequest(ILandroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p1

    iput-object p1, v1, Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;->availableArea:Landroid/graphics/Rect;

    .line 123
    :cond_10f
    invoke-static {p4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    invoke-interface {p5, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 125
    return-void

    .line 74
    :cond_116
    :goto_116
    const-string p1, "listView is empty or not visible, cannot continue"

    invoke-static {p4, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    invoke-interface {p5, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 76
    return-void
.end method
