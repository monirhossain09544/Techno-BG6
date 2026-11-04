.class public Lcom/android/internal/view/RecyclerViewCaptureHelper;
.super Ljava/lang/Object;
.source "RecyclerViewCaptureHelper.java"

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


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "RVCaptureHelper"


# instance fields
.field private blacklist mOverScrollMode:I

.field private blacklist mScrollBarWasEnabled:Z

.field private blacklist mScrollDelta:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist findChildNearestTarget(Landroid/view/ViewGroup;Landroid/graphics/Rect;)Landroid/view/View;
    .registers 10

    .line 148
    nop

    .line 149
    nop

    .line 150
    nop

    .line 155
    nop

    .line 156
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3e800000    # 0.25f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 158
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 159
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    .line 161
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 162
    const/4 v2, 0x0

    const v3, 0x7fffffff

    const/4 v4, 0x0

    :goto_1f
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-ge v4, v5, :cond_56

    .line 163
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 164
    invoke-virtual {v5, v1}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 166
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-eqz v6, :cond_33

    .line 167
    goto :goto_53

    .line 170
    :cond_33
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result v6

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    .line 172
    if-ge v6, v3, :cond_46

    .line 174
    nop

    .line 175
    move-object v2, v5

    move v3, v6

    goto :goto_53

    .line 176
    :cond_46
    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v6

    if-eqz v6, :cond_53

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v6

    if-le v6, v0, :cond_53

    .line 178
    move-object v2, v5

    .line 162
    :cond_53
    :goto_53
    add-int/lit8 v4, v4, 0x1

    goto :goto_1f

    .line 181
    :cond_56
    return-object v2
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

    .line 42
    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Lcom/android/internal/view/RecyclerViewCaptureHelper;->onAcceptSession(Landroid/view/ViewGroup;)Z

    move-result p1

    return p1
.end method

.method public blacklist onAcceptSession(Landroid/view/ViewGroup;)Z
    .registers 4

    .line 51
    invoke-virtual {p1}, Landroid/view/ViewGroup;->isVisibleToUser()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 52
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

    .line 51
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

    .line 42
    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Lcom/android/internal/view/RecyclerViewCaptureHelper;->onPrepareForEnd(Landroid/view/ViewGroup;)V

    return-void
.end method

.method public blacklist onPrepareForEnd(Landroid/view/ViewGroup;)V
    .registers 4

    .line 187
    iget v0, p0, Lcom/android/internal/view/RecyclerViewCaptureHelper;->mScrollDelta:I

    neg-int v0, v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/view/ViewGroup;->scrollBy(II)V

    .line 188
    iget v0, p0, Lcom/android/internal/view/RecyclerViewCaptureHelper;->mOverScrollMode:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setOverScrollMode(I)V

    .line 189
    iget-boolean v0, p0, Lcom/android/internal/view/RecyclerViewCaptureHelper;->mScrollBarWasEnabled:Z

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVerticalScrollBarEnabled(Z)V

    .line 190
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

    .line 42
    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/view/RecyclerViewCaptureHelper;->onPrepareForStart(Landroid/view/ViewGroup;Landroid/graphics/Rect;)V

    return-void
.end method

.method public blacklist onPrepareForStart(Landroid/view/ViewGroup;Landroid/graphics/Rect;)V
    .registers 4

    .line 57
    const/4 p2, 0x0

    iput p2, p0, Lcom/android/internal/view/RecyclerViewCaptureHelper;->mScrollDelta:I

    .line 59
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getOverScrollMode()I

    move-result v0

    iput v0, p0, Lcom/android/internal/view/RecyclerViewCaptureHelper;->mOverScrollMode:I

    .line 60
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setOverScrollMode(I)V

    .line 62
    invoke-virtual {p1}, Landroid/view/ViewGroup;->isVerticalScrollBarEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/view/RecyclerViewCaptureHelper;->mScrollBarWasEnabled:Z

    .line 63
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setVerticalScrollBarEnabled(Z)V

    .line 64
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

    .line 42
    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup;

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/view/RecyclerViewCaptureHelper;->onScrollRequested(Landroid/view/ViewGroup;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/os/CancellationSignal;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public blacklist onScrollRequested(Landroid/view/ViewGroup;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/os/CancellationSignal;Ljava/util/function/Consumer;)V
    .registers 14
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

    .line 69
    new-instance p4, Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;

    invoke-direct {p4}, Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;-><init>()V

    .line 70
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p4, Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;->requestedArea:Landroid/graphics/Rect;

    .line 71
    iget v0, p0, Lcom/android/internal/view/RecyclerViewCaptureHelper;->mScrollDelta:I

    iput v0, p4, Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;->scrollDelta:I

    .line 72
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p4, Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;->availableArea:Landroid/graphics/Rect;

    .line 74
    invoke-virtual {p1}, Landroid/view/ViewGroup;->isVisibleToUser()Z

    move-result v0

    const-string v1, "RVCaptureHelper"

    if-eqz v0, :cond_e1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-nez v0, :cond_27

    goto/16 :goto_e1

    .line 81
    :cond_27
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 82
    iget p3, p0, Lcom/android/internal/view/RecyclerViewCaptureHelper;->mScrollDelta:I

    neg-int p3, p3

    const/4 v2, 0x0

    invoke-virtual {v0, v2, p3}, Landroid/graphics/Rect;->offset(II)V

    .line 83
    iget p3, p2, Landroid/graphics/Rect;->left:I

    iget v3, p2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, p3, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 87
    invoke-static {p1, v0}, Lcom/android/internal/view/RecyclerViewCaptureHelper;->findChildNearestTarget(Landroid/view/ViewGroup;Landroid/graphics/Rect;)Landroid/view/View;

    move-result-object p3

    .line 88
    if-nez p3, :cond_49

    .line 89
    const-string p1, "Failed to locate anchor view"

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    invoke-interface {p5, p4}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 91
    return-void

    .line 94
    :cond_49
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 95
    invoke-virtual {p1, p3, v3}, Landroid/view/ViewGroup;->offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 97
    invoke-virtual {p3}, Landroid/view/View;->getTop()I

    move-result v4

    .line 99
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 101
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v6

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v7

    sub-int/2addr v6, v7

    .line 102
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v7

    sub-int/2addr v6, v7

    .line 103
    if-lez v6, :cond_75

    .line 104
    neg-int v6, v6

    div-int/lit8 v6, v6, 0x2

    invoke-virtual {v5, v2, v6}, Landroid/graphics/Rect;->inset(II)V

    .line 107
    :cond_75
    const/4 v6, 0x1

    invoke-virtual {p1, p3, v5, v6}, Landroid/view/ViewGroup;->requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z

    move-result v5

    if-eqz v5, :cond_b0

    .line 108
    invoke-virtual {p3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    if-nez v5, :cond_a2

    .line 110
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Bug: anchor view "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " is detached after scrolling"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    invoke-interface {p5, p4}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 112
    return-void

    .line 115
    :cond_a2
    invoke-virtual {p3}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int/2addr v4, v1

    .line 116
    iget v1, p0, Lcom/android/internal/view/RecyclerViewCaptureHelper;->mScrollDelta:I

    add-int/2addr v1, v4

    iput v1, p0, Lcom/android/internal/view/RecyclerViewCaptureHelper;->mScrollDelta:I

    .line 117
    iget v1, p0, Lcom/android/internal/view/RecyclerViewCaptureHelper;->mScrollDelta:I

    iput v1, p4, Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;->scrollDelta:I

    .line 120
    :cond_b0
    invoke-virtual {v0, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 121
    invoke-virtual {p1, p3, v0}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 123
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3, p2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 124
    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    .line 126
    invoke-virtual {v0, p3}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result p1

    if-nez p1, :cond_c8

    .line 128
    invoke-interface {p5, p4}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 129
    return-void

    .line 131
    :cond_c8
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 132
    iget p3, p2, Landroid/graphics/Rect;->left:I

    neg-int p3, p3

    iget p2, p2, Landroid/graphics/Rect;->top:I

    neg-int p2, p2

    invoke-virtual {p1, p3, p2}, Landroid/graphics/Rect;->offset(II)V

    .line 133
    iget p2, p0, Lcom/android/internal/view/RecyclerViewCaptureHelper;->mScrollDelta:I

    invoke-virtual {p1, v2, p2}, Landroid/graphics/Rect;->offset(II)V

    .line 134
    iput-object p1, p4, Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;->availableArea:Landroid/graphics/Rect;

    .line 135
    invoke-interface {p5, p4}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 136
    return-void

    .line 75
    :cond_e1
    :goto_e1
    const-string p1, "recyclerView is empty or not visible, cannot continue"

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    invoke-interface {p5, p4}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 77
    return-void
.end method
