.class public Lcom/android/internal/view/ScrollViewCaptureHelper;
.super Ljava/lang/Object;
.source "ScrollViewCaptureHelper.java"

# interfaces
.implements Lcom/android/internal/view/ScrollCaptureViewHelper;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/internal/view/ScrollCaptureViewHelper<",
        "Landroid/view/ViewGroup;",
        ">;"
    }
.end annotation


# instance fields
.field private blacklist mOverScrollMode:I

.field private blacklist mScrollBarEnabled:Z

.field private blacklist mStartScrollY:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 44
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

    .line 44
    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Lcom/android/internal/view/ScrollViewCaptureHelper;->onAcceptSession(Landroid/view/ViewGroup;)Z

    move-result p1

    return p1
.end method

.method public blacklist onAcceptSession(Landroid/view/ViewGroup;)Z
    .registers 4

    .line 50
    invoke-virtual {p1}, Landroid/view/ViewGroup;->isVisibleToUser()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 51
    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->canScrollVertically(I)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_16

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->canScrollVertically(I)Z

    move-result p1

    if-eqz p1, :cond_15

    goto :goto_16

    :cond_15
    const/4 v1, 0x0

    .line 50
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

    .line 44
    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Lcom/android/internal/view/ScrollViewCaptureHelper;->onPrepareForEnd(Landroid/view/ViewGroup;)V

    return-void
.end method

.method public blacklist onPrepareForEnd(Landroid/view/ViewGroup;)V
    .registers 4

    .line 186
    const/4 v0, 0x0

    iget v1, p0, Lcom/android/internal/view/ScrollViewCaptureHelper;->mStartScrollY:I

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 187
    iget v0, p0, Lcom/android/internal/view/ScrollViewCaptureHelper;->mOverScrollMode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_10

    .line 188
    iget v0, p0, Lcom/android/internal/view/ScrollViewCaptureHelper;->mOverScrollMode:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setOverScrollMode(I)V

    .line 190
    :cond_10
    iget-boolean v0, p0, Lcom/android/internal/view/ScrollViewCaptureHelper;->mScrollBarEnabled:Z

    if-eqz v0, :cond_18

    .line 191
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVerticalScrollBarEnabled(Z)V

    .line 193
    :cond_18
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

    .line 44
    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/view/ScrollViewCaptureHelper;->onPrepareForStart(Landroid/view/ViewGroup;Landroid/graphics/Rect;)V

    return-void
.end method

.method public blacklist onPrepareForStart(Landroid/view/ViewGroup;Landroid/graphics/Rect;)V
    .registers 4

    .line 55
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getScrollY()I

    move-result p2

    iput p2, p0, Lcom/android/internal/view/ScrollViewCaptureHelper;->mStartScrollY:I

    .line 56
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getOverScrollMode()I

    move-result p2

    iput p2, p0, Lcom/android/internal/view/ScrollViewCaptureHelper;->mOverScrollMode:I

    .line 57
    iget p2, p0, Lcom/android/internal/view/ScrollViewCaptureHelper;->mOverScrollMode:I

    const/4 v0, 0x2

    if-eq p2, v0, :cond_14

    .line 58
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setOverScrollMode(I)V

    .line 60
    :cond_14
    invoke-virtual {p1}, Landroid/view/ViewGroup;->isVerticalScrollBarEnabled()Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/internal/view/ScrollViewCaptureHelper;->mScrollBarEnabled:Z

    .line 61
    iget-boolean p2, p0, Lcom/android/internal/view/ScrollViewCaptureHelper;->mScrollBarEnabled:Z

    if-eqz p2, :cond_22

    .line 62
    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setVerticalScrollBarEnabled(Z)V

    .line 64
    :cond_22
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

    .line 44
    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup;

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/view/ScrollViewCaptureHelper;->onScrollRequested(Landroid/view/ViewGroup;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/os/CancellationSignal;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public blacklist onScrollRequested(Landroid/view/ViewGroup;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/os/CancellationSignal;Ljava/util/function/Consumer;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Landroid/graphics/Rect;",
            "Landroid/graphics/Rect;",
            "Landroid/os/CancellationSignal;",
            "Ljava/util/function/Consumer<",
            "Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;",
            ">;)V"
        }
    .end annotation

    .line 101
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getScrollY()I

    move-result p4

    iget v0, p0, Lcom/android/internal/view/ScrollViewCaptureHelper;->mStartScrollY:I

    sub-int/2addr p4, v0

    .line 103
    new-instance v0, Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;

    invoke-direct {v0}, Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;-><init>()V

    .line 104
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, p3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v1, v0, Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;->requestedArea:Landroid/graphics/Rect;

    .line 105
    iput p4, v0, Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;->scrollDelta:I

    .line 106
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, v0, Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;->availableArea:Landroid/graphics/Rect;

    .line 108
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 109
    if-nez v2, :cond_27

    .line 111
    invoke-interface {p5, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 112
    return-void

    .line 121
    :cond_27
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, p3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 122
    neg-int p3, p4

    invoke-virtual {v3, v1, p3}, Landroid/graphics/Rect;->offset(II)V

    .line 123
    iget p3, p2, Landroid/graphics/Rect;->left:I

    iget p4, p2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v3, p3, p4}, Landroid/graphics/Rect;->offset(II)V

    .line 132
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 133
    nop

    .line 134
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getScrollX()I

    move-result p4

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int/2addr p4, v3

    .line 135
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v3

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v4

    sub-int/2addr v3, v4

    .line 133
    invoke-virtual {p3, p4, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 137
    new-instance p4, Landroid/graphics/Rect;

    invoke-direct {p4, p3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 140
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    .line 141
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result v4

    sub-int/2addr v3, v4

    .line 142
    if-lez v3, :cond_72

    .line 143
    neg-int v3, v3

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {p4, v1, v3}, Landroid/graphics/Rect;->inset(II)V

    .line 149
    :cond_72
    const/4 v3, 0x1

    invoke-virtual {v2, p4, v3}, Landroid/view/View;->requestRectangleOnScreen(Landroid/graphics/Rect;Z)Z

    .line 152
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getScrollY()I

    move-result p4

    iget v3, p0, Lcom/android/internal/view/ScrollViewCaptureHelper;->mStartScrollY:I

    sub-int/2addr p4, v3

    .line 153
    iput p4, v0, Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;->scrollDelta:I

    .line 157
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 158
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, p3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 159
    invoke-virtual {p1, v2, v4, v3}, Landroid/view/ViewGroup;->getChildVisibleRect(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    move-result p3

    if-nez p3, :cond_98

    .line 160
    invoke-virtual {v4}, Landroid/graphics/Rect;->setEmpty()V

    .line 161
    iput-object v4, v0, Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;->availableArea:Landroid/graphics/Rect;

    .line 162
    invoke-interface {p5, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 163
    return-void

    .line 166
    :cond_98
    iget p3, v3, Landroid/graphics/Point;->x:I

    neg-int p3, p3

    iget v3, v3, Landroid/graphics/Point;->y:I

    neg-int v3, v3

    invoke-virtual {v4, p3, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 169
    nop

    .line 170
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result p3

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v3

    sub-int/2addr p3, v3

    .line 171
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getScrollY()I

    move-result p1

    sub-int/2addr v2, p1

    .line 169
    invoke-virtual {v4, p3, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 175
    iget p1, p2, Landroid/graphics/Rect;->left:I

    neg-int p1, p1

    iget p2, p2, Landroid/graphics/Rect;->top:I

    neg-int p2, p2

    invoke-virtual {v4, p1, p2}, Landroid/graphics/Rect;->offset(II)V

    .line 179
    invoke-virtual {v4, v1, p4}, Landroid/graphics/Rect;->offset(II)V

    .line 181
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1, v4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object p1, v0, Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;->availableArea:Landroid/graphics/Rect;

    .line 182
    invoke-interface {p5, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 183
    return-void
.end method
