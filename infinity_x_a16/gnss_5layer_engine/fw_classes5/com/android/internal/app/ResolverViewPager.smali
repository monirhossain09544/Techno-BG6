.class public Lcom/android/internal/app/ResolverViewPager;
.super Lcom/android/internal/widget/ViewPager;
.source "ResolverViewPager.java"


# instance fields
.field private blacklist mSwipingEnabled:Z


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 2

    .line 37
    invoke-direct {p0, p1}, Lcom/android/internal/widget/ViewPager;-><init>(Landroid/content/Context;)V

    .line 34
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/internal/app/ResolverViewPager;->mSwipingEnabled:Z

    .line 38
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/internal/app/ResolverViewPager;->mSwipingEnabled:Z

    .line 42
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 45
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/widget/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/internal/app/ResolverViewPager;->mSwipingEnabled:Z

    .line 46
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5

    .line 50
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/widget/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 34
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/internal/app/ResolverViewPager;->mSwipingEnabled:Z

    .line 51
    return-void
.end method


# virtual methods
.method public whitelist onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    .line 87
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverViewPager;->isLayoutRtl()Z

    move-result v0

    if-nez v0, :cond_12

    iget-boolean v0, p0, Lcom/android/internal/app/ResolverViewPager;->mSwipingEnabled:Z

    if-eqz v0, :cond_12

    invoke-super {p0, p1}, Lcom/android/internal/widget/ViewPager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_12

    const/4 p1, 0x1

    goto :goto_13

    :cond_12
    const/4 p1, 0x0

    :goto_13
    return p1
.end method

.method protected whitelist onMeasure(II)V
    .registers 9

    .line 55
    invoke-super {p0, p1, p2}, Lcom/android/internal/widget/ViewPager;->onMeasure(II)V

    .line 56
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    const/high16 p2, -0x80000000

    if-eq p1, p2, :cond_c

    .line 57
    return-void

    .line 59
    :cond_c
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverViewPager;->getMeasuredWidth()I

    move-result p1

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 60
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverViewPager;->getMeasuredHeight()I

    move-result v1

    .line 61
    nop

    .line 62
    const/4 v2, 0x0

    move v3, v2

    :goto_1d
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverViewPager;->getChildCount()I

    move-result v4

    if-ge v2, v4, :cond_3c

    .line 63
    invoke-virtual {p0, v2}, Lcom/android/internal/app/ResolverViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 64
    nop

    .line 65
    invoke-static {v1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 64
    invoke-virtual {v4, p1, v5}, Landroid/view/View;->measure(II)V

    .line 66
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    if-ge v3, v5, :cond_39

    .line 67
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    .line 62
    :cond_39
    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    .line 70
    :cond_3c
    if-lez v3, :cond_3f

    .line 71
    move v1, v3

    .line 73
    :cond_3f
    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 74
    invoke-super {p0, p1, p2}, Lcom/android/internal/widget/ViewPager;->onMeasure(II)V

    .line 75
    return-void
.end method

.method blacklist setSwipingEnabled(Z)V
    .registers 2

    .line 82
    iput-boolean p1, p0, Lcom/android/internal/app/ResolverViewPager;->mSwipingEnabled:Z

    .line 83
    return-void
.end method
