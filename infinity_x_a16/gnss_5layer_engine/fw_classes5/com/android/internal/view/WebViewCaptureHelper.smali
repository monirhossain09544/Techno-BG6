.class public Lcom/android/internal/view/WebViewCaptureHelper;
.super Ljava/lang/Object;
.source "WebViewCaptureHelper.java"

# interfaces
.implements Lcom/android/internal/view/ScrollCaptureViewHelper;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/internal/view/ScrollCaptureViewHelper<",
        "Landroid/webkit/WebView;",
        ">;"
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "WebViewScrollCapture"


# instance fields
.field private blacklist mOriginScrollX:I

.field private blacklist mOriginScrollY:I

.field private final blacklist mRequestWebViewLocal:Landroid/graphics/Rect;

.field private final blacklist mWebViewBounds:Landroid/graphics/Rect;


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/view/WebViewCaptureHelper;->mRequestWebViewLocal:Landroid/graphics/Rect;

    .line 38
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/view/WebViewCaptureHelper;->mWebViewBounds:Landroid/graphics/Rect;

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

    .line 34
    check-cast p1, Landroid/webkit/WebView;

    invoke-virtual {p0, p1}, Lcom/android/internal/view/WebViewCaptureHelper;->onAcceptSession(Landroid/webkit/WebView;)Z

    move-result p1

    return p1
.end method

.method public blacklist onAcceptSession(Landroid/webkit/WebView;)Z
    .registers 4

    .line 45
    invoke-virtual {p1}, Landroid/webkit/WebView;->isVisibleToUser()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 46
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContentHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/webkit/WebView;->getScale()F

    move-result v1

    mul-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/webkit/WebView;->getHeight()I

    move-result p1

    int-to-float p1, p1

    cmpl-float p1, v0, p1

    if-lez p1, :cond_1b

    const/4 p1, 0x1

    goto :goto_1c

    :cond_1b
    const/4 p1, 0x0

    .line 45
    :goto_1c
    return p1
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

    .line 34
    check-cast p1, Landroid/webkit/WebView;

    invoke-virtual {p0, p1}, Lcom/android/internal/view/WebViewCaptureHelper;->onPrepareForEnd(Landroid/webkit/WebView;)V

    return-void
.end method

.method public blacklist onPrepareForEnd(Landroid/webkit/WebView;)V
    .registers 4

    .line 100
    iget v0, p0, Lcom/android/internal/view/WebViewCaptureHelper;->mOriginScrollX:I

    iget v1, p0, Lcom/android/internal/view/WebViewCaptureHelper;->mOriginScrollY:I

    invoke-virtual {p1, v0, v1}, Landroid/webkit/WebView;->scrollTo(II)V

    .line 101
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

    .line 34
    check-cast p1, Landroid/webkit/WebView;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/view/WebViewCaptureHelper;->onPrepareForStart(Landroid/webkit/WebView;Landroid/graphics/Rect;)V

    return-void
.end method

.method public blacklist onPrepareForStart(Landroid/webkit/WebView;Landroid/graphics/Rect;)V
    .registers 3

    .line 51
    invoke-virtual {p1}, Landroid/webkit/WebView;->getScrollX()I

    move-result p2

    iput p2, p0, Lcom/android/internal/view/WebViewCaptureHelper;->mOriginScrollX:I

    .line 52
    invoke-virtual {p1}, Landroid/webkit/WebView;->getScrollY()I

    move-result p1

    iput p1, p0, Lcom/android/internal/view/WebViewCaptureHelper;->mOriginScrollY:I

    .line 53
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

    .line 34
    move-object v1, p1

    check-cast v1, Landroid/webkit/WebView;

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/view/WebViewCaptureHelper;->onScrollRequested(Landroid/webkit/WebView;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/os/CancellationSignal;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public blacklist onScrollRequested(Landroid/webkit/WebView;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/os/CancellationSignal;Ljava/util/function/Consumer;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/WebView;",
            "Landroid/graphics/Rect;",
            "Landroid/graphics/Rect;",
            "Landroid/os/CancellationSignal;",
            "Ljava/util/function/Consumer<",
            "Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;",
            ">;)V"
        }
    .end annotation

    .line 61
    invoke-virtual {p1}, Landroid/webkit/WebView;->getScrollY()I

    move-result p2

    iget p4, p0, Lcom/android/internal/view/WebViewCaptureHelper;->mOriginScrollY:I

    sub-int/2addr p2, p4

    .line 63
    new-instance p4, Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;

    invoke-direct {p4}, Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;-><init>()V

    .line 64
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p4, Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;->requestedArea:Landroid/graphics/Rect;

    .line 65
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p4, Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;->availableArea:Landroid/graphics/Rect;

    .line 66
    iput p2, p4, Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;->scrollDelta:I

    .line 68
    iget-object v0, p0, Lcom/android/internal/view/WebViewCaptureHelper;->mWebViewBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/webkit/WebView;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 70
    invoke-virtual {p1}, Landroid/webkit/WebView;->isVisibleToUser()Z

    move-result v0

    if-nez v0, :cond_33

    .line 71
    invoke-interface {p5, p4}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 75
    :cond_33
    iget-object v0, p0, Lcom/android/internal/view/WebViewCaptureHelper;->mRequestWebViewLocal:Landroid/graphics/Rect;

    invoke-virtual {v0, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 76
    iget-object p3, p0, Lcom/android/internal/view/WebViewCaptureHelper;->mRequestWebViewLocal:Landroid/graphics/Rect;

    neg-int p2, p2

    invoke-virtual {p3, v3, p2}, Landroid/graphics/Rect;->offset(II)V

    .line 79
    invoke-virtual {p1}, Landroid/webkit/WebView;->getScrollY()I

    move-result p2

    neg-int p2, p2

    invoke-static {v3, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 80
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContentHeight()I

    move-result p3

    int-to-float p3, p3

    invoke-virtual {p1}, Landroid/webkit/WebView;->getScale()F

    move-result v0

    mul-float/2addr p3, v0

    float-to-int p3, p3

    .line 81
    invoke-virtual {p1}, Landroid/webkit/WebView;->getHeight()I

    move-result v0

    sub-int/2addr p3, v0

    invoke-virtual {p1}, Landroid/webkit/WebView;->getScrollY()I

    move-result v0

    sub-int/2addr p3, v0

    invoke-static {v3, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    .line 82
    iget-object v0, p0, Lcom/android/internal/view/WebViewCaptureHelper;->mRequestWebViewLocal:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/view/WebViewCaptureHelper;->mWebViewBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    sub-int/2addr v0, v1

    .line 83
    invoke-static {v0, p2, p3}, Landroid/util/MathUtils;->constrain(III)I

    move-result p2

    .line 86
    iget p3, p0, Lcom/android/internal/view/WebViewCaptureHelper;->mOriginScrollX:I

    invoke-virtual {p1, p3, p2}, Landroid/webkit/WebView;->scrollBy(II)V

    .line 87
    invoke-virtual {p1}, Landroid/webkit/WebView;->getScrollY()I

    move-result p1

    iget p3, p0, Lcom/android/internal/view/WebViewCaptureHelper;->mOriginScrollY:I

    sub-int/2addr p1, p3

    .line 88
    iget-object p3, p0, Lcom/android/internal/view/WebViewCaptureHelper;->mRequestWebViewLocal:Landroid/graphics/Rect;

    neg-int p2, p2

    invoke-virtual {p3, v3, p2}, Landroid/graphics/Rect;->offset(II)V

    .line 89
    iput p1, p4, Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;->scrollDelta:I

    .line 91
    iget-object p1, p0, Lcom/android/internal/view/WebViewCaptureHelper;->mRequestWebViewLocal:Landroid/graphics/Rect;

    iget-object p2, p0, Lcom/android/internal/view/WebViewCaptureHelper;->mWebViewBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result p1

    if-eqz p1, :cond_9f

    .line 92
    new-instance p1, Landroid/graphics/Rect;

    iget-object p2, p0, Lcom/android/internal/view/WebViewCaptureHelper;->mRequestWebViewLocal:Landroid/graphics/Rect;

    invoke-direct {p1, p2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object p1, p4, Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;->availableArea:Landroid/graphics/Rect;

    .line 93
    iget-object p1, p4, Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;->availableArea:Landroid/graphics/Rect;

    iget p2, p4, Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;->scrollDelta:I

    invoke-virtual {p1, v3, p2}, Landroid/graphics/Rect;->offset(II)V

    .line 95
    :cond_9f
    invoke-interface {p5, p4}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 96
    return-void
.end method
