.class Lcom/android/internal/app/ChooserRecyclerViewAccessibilityDelegate;
.super Lcom/android/internal/widget/RecyclerViewAccessibilityDelegate;
.source "ChooserRecyclerViewAccessibilityDelegate.java"


# instance fields
.field private final blacklist mConsumed:[I

.field private final blacklist mTempRect:Landroid/graphics/Rect;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/widget/RecyclerView;)V
    .registers 2

    .line 33
    invoke-direct {p0, p1}, Lcom/android/internal/widget/RecyclerViewAccessibilityDelegate;-><init>(Lcom/android/internal/widget/RecyclerView;)V

    .line 29
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/internal/app/ChooserRecyclerViewAccessibilityDelegate;->mTempRect:Landroid/graphics/Rect;

    .line 30
    const/4 p1, 0x2

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/android/internal/app/ChooserRecyclerViewAccessibilityDelegate;->mConsumed:[I

    .line 34
    return-void
.end method

.method private blacklist ensureViewOnScreenVisibility(Lcom/android/internal/widget/RecyclerView;Landroid/view/View;)V
    .registers 6

    .line 59
    invoke-virtual {p1, p2}, Lcom/android/internal/widget/RecyclerView;->findContainingItemView(Landroid/view/View;)Landroid/view/View;

    move-result-object p2

    .line 60
    if-nez p2, :cond_7

    .line 61
    return-void

    .line 63
    :cond_7
    iget-object v0, p0, Lcom/android/internal/app/ChooserRecyclerViewAccessibilityDelegate;->mTempRect:Landroid/graphics/Rect;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/widget/RecyclerView;->getBoundsOnScreen(Landroid/graphics/Rect;Z)V

    .line 64
    iget-object v0, p0, Lcom/android/internal/app/ChooserRecyclerViewAccessibilityDelegate;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    .line 65
    iget-object v1, p0, Lcom/android/internal/app/ChooserRecyclerViewAccessibilityDelegate;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    .line 66
    iget-object v2, p0, Lcom/android/internal/app/ChooserRecyclerViewAccessibilityDelegate;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v2}, Landroid/view/View;->getBoundsOnScreen(Landroid/graphics/Rect;)V

    .line 67
    nop

    .line 71
    iget-object p2, p0, Lcom/android/internal/app/ChooserRecyclerViewAccessibilityDelegate;->mTempRect:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->top:I

    if-ge p2, v0, :cond_27

    .line 73
    iget-object p2, p0, Lcom/android/internal/app/ChooserRecyclerViewAccessibilityDelegate;->mTempRect:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p2, v1

    goto :goto_34

    .line 74
    :cond_27
    iget-object p2, p0, Lcom/android/internal/app/ChooserRecyclerViewAccessibilityDelegate;->mTempRect:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    if-le p2, v1, :cond_33

    .line 76
    iget-object p2, p0, Lcom/android/internal/app/ChooserRecyclerViewAccessibilityDelegate;->mTempRect:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr p2, v0

    goto :goto_34

    .line 74
    :cond_33
    const/4 p2, 0x0

    .line 78
    :goto_34
    invoke-direct {p0, p1, p2}, Lcom/android/internal/app/ChooserRecyclerViewAccessibilityDelegate;->nestedVerticalScrollBy(Lcom/android/internal/widget/RecyclerView;I)V

    .line 79
    return-void
.end method

.method private blacklist nestedVerticalScrollBy(Lcom/android/internal/widget/RecyclerView;I)V
    .registers 6

    .line 82
    if-nez p2, :cond_3

    .line 83
    return-void

    .line 85
    :cond_3
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/RecyclerView;->startNestedScroll(I)Z

    .line 86
    iget-object v0, p0, Lcom/android/internal/app/ChooserRecyclerViewAccessibilityDelegate;->mConsumed:[I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v2, p2, v0, v1}, Lcom/android/internal/widget/RecyclerView;->dispatchNestedPreScroll(II[I[I)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 87
    iget-object v0, p0, Lcom/android/internal/app/ChooserRecyclerViewAccessibilityDelegate;->mConsumed:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    sub-int/2addr p2, v0

    .line 89
    :cond_17
    invoke-virtual {p1, v2, p2}, Lcom/android/internal/widget/RecyclerView;->scrollBy(II)V

    .line 90
    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView;->stopNestedScroll()V

    .line 91
    return-void
.end method


# virtual methods
.method public whitelist onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 6

    .line 41
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/widget/RecyclerViewAccessibilityDelegate;->onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    .line 42
    if-eqz v0, :cond_14

    invoke-virtual {p3}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result p3

    const v1, 0x8000

    if-ne p3, v1, :cond_14

    .line 43
    check-cast p1, Lcom/android/internal/widget/RecyclerView;

    invoke-direct {p0, p1, p2}, Lcom/android/internal/app/ChooserRecyclerViewAccessibilityDelegate;->ensureViewOnScreenVisibility(Lcom/android/internal/widget/RecyclerView;Landroid/view/View;)V

    .line 45
    :cond_14
    return v0
.end method
