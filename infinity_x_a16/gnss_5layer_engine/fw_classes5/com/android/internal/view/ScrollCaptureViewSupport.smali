.class public Lcom/android/internal/view/ScrollCaptureViewSupport;
.super Ljava/lang/Object;
.source "ScrollCaptureViewSupport.java"

# interfaces
.implements Landroid/view/ScrollCaptureCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/view/ScrollCaptureViewSupport$ViewRenderer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroid/view/View;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/view/ScrollCaptureCallback;"
    }
.end annotation


# static fields
.field private static final blacklist SETTING_CAPTURE_DELAY:Ljava/lang/String; = "screenshot.scroll_capture_delay"

.field private static final blacklist SETTING_CAPTURE_DELAY_DEFAULT:J = 0x3cL

.field private static final blacklist TAG:Ljava/lang/String; = "SCViewSupport"


# instance fields
.field private blacklist mEnded:Z

.field private final blacklist mPostScrollDelayMillis:J

.field private final blacklist mRenderer:Lcom/android/internal/view/ScrollCaptureViewSupport$ViewRenderer;

.field private blacklist mStarted:Z

.field private final blacklist mViewHelper:Lcom/android/internal/view/ScrollCaptureViewHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/view/ScrollCaptureViewHelper<",
            "TV;>;"
        }
    .end annotation
.end field

.field private final blacklist mWeakView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$bkb7LirsaKlYBq4Lp_Hg-fYii_4(Lcom/android/internal/view/ScrollCaptureViewSupport;Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;Landroid/view/View;Landroid/graphics/Rect;Ljava/util/function/Consumer;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/view/ScrollCaptureViewSupport;->lambda$onScrollResult$1(Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;Landroid/view/View;Landroid/graphics/Rect;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$o74e8lNvTblt_cOdrUr7jfuaPfY(Lcom/android/internal/view/ScrollCaptureViewSupport;Landroid/view/View;Landroid/os/CancellationSignal;Ljava/util/function/Consumer;Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/view/ScrollCaptureViewSupport;->lambda$onScrollCaptureImageRequest$0(Landroid/view/View;Landroid/os/CancellationSignal;Ljava/util/function/Consumer;Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/view/View;Lcom/android/internal/view/ScrollCaptureViewHelper;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;",
            "Lcom/android/internal/view/ScrollCaptureViewHelper<",
            "TV;>;)V"
        }
    .end annotation

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/view/ScrollCaptureViewSupport;->mWeakView:Ljava/lang/ref/WeakReference;

    .line 72
    new-instance v0, Lcom/android/internal/view/ScrollCaptureViewSupport$ViewRenderer;

    invoke-direct {v0}, Lcom/android/internal/view/ScrollCaptureViewSupport$ViewRenderer;-><init>()V

    iput-object v0, p0, Lcom/android/internal/view/ScrollCaptureViewSupport;->mRenderer:Lcom/android/internal/view/ScrollCaptureViewSupport$ViewRenderer;

    .line 74
    iput-object p2, p0, Lcom/android/internal/view/ScrollCaptureViewSupport;->mViewHelper:Lcom/android/internal/view/ScrollCaptureViewHelper;

    .line 75
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 76
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 77
    const-string p2, "screenshot.scroll_capture_delay"

    const-wide/16 v0, 0x3c

    invoke-static {p1, p2, v0, v1}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/internal/view/ScrollCaptureViewSupport;->mPostScrollDelayMillis:J

    .line 79
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "screenshot.scroll_capture_delay = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-wide v0, p0, Lcom/android/internal/view/ScrollCaptureViewSupport;->mPostScrollDelayMillis:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SCViewSupport"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    return-void
.end method

.method public static blacklist computeScrollAmount(Landroid/graphics/Rect;Landroid/graphics/Rect;)I
    .registers 6

    .line 136
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 137
    iget v1, p0, Landroid/graphics/Rect;->top:I

    .line 138
    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    .line 139
    nop

    .line 141
    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    const/4 v3, 0x0

    if-le v2, p0, :cond_22

    iget v2, p1, Landroid/graphics/Rect;->top:I

    if-le v2, v1, :cond_22

    .line 146
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-le v2, v0, :cond_1d

    .line 148
    iget p0, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr p0, v1

    add-int/2addr v3, p0

    goto :goto_39

    .line 151
    :cond_1d
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p1, p0

    add-int/2addr v3, p1

    goto :goto_39

    .line 153
    :cond_22
    iget v2, p1, Landroid/graphics/Rect;->top:I

    if-ge v2, v1, :cond_39

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    if-ge v2, p0, :cond_39

    .line 158
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-le v2, v0, :cond_35

    .line 160
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p0, p1

    sub-int/2addr v3, p0

    goto :goto_39

    .line 163
    :cond_35
    iget p0, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, p0

    sub-int/2addr v3, v1

    .line 166
    :cond_39
    :goto_39
    return v3
.end method

.method private blacklist doCapture(Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;Landroid/view/View;Landroid/graphics/Rect;Ljava/util/function/Consumer;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;",
            "TV;",
            "Landroid/graphics/Rect;",
            "Ljava/util/function/Consumer<",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    .line 282
    iget-object v0, p0, Lcom/android/internal/view/ScrollCaptureViewSupport;->mRenderer:Lcom/android/internal/view/ScrollCaptureViewSupport$ViewRenderer;

    invoke-virtual {v0, p2, p3}, Lcom/android/internal/view/ScrollCaptureViewSupport$ViewRenderer;->renderView(Landroid/view/View;Landroid/graphics/Rect;)I

    move-result p2

    .line 283
    if-eqz p2, :cond_2d

    const/4 p3, 0x1

    if-ne p2, p3, :cond_c

    goto :goto_2d

    .line 289
    :cond_c
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "syncAndDraw(): SyncAndDrawResult = "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SCViewSupport"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    invoke-interface {p4, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_37

    .line 286
    :cond_2d
    :goto_2d
    new-instance p2, Landroid/graphics/Rect;

    iget-object p1, p1, Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;->availableArea:Landroid/graphics/Rect;

    invoke-direct {p2, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-interface {p4, p2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 292
    :goto_37
    return-void
.end method

.method public static blacklist findScrollingReferenceView(Landroid/view/ViewGroup;I)Landroid/view/View;
    .registers 8

    .line 180
    nop

    .line 181
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 182
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    .line 184
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 185
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_f
    if-ge v2, v0, :cond_34

    .line 186
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 187
    if-nez v1, :cond_18

    .line 188
    goto :goto_30

    .line 189
    :cond_18
    if-gez p1, :cond_25

    .line 190
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v5

    if-ge v4, v5, :cond_31

    .line 191
    goto :goto_30

    .line 193
    :cond_25
    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v4

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v5

    if-le v4, v5, :cond_31

    .line 194
    nop

    .line 185
    :goto_30
    move-object v1, v3

    :cond_31
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 197
    :cond_34
    return-object v1
.end method

.method private static blacklist getColorMode(Landroid/view/View;)I
    .registers 2

    .line 85
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 86
    invoke-virtual {p0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object p0

    iget-object p0, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p0}, Landroid/view/WindowManager$LayoutParams;->getColorMode()I

    move-result p0

    .line 87
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->isScreenWideColorGamut()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 88
    const/4 p0, 0x0

    .line 90
    :cond_1d
    return p0
.end method

.method private synthetic blacklist lambda$onScrollCaptureImageRequest$0(Landroid/view/View;Landroid/os/CancellationSignal;Ljava/util/function/Consumer;Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;)V
    .registers 5

    .line 254
    invoke-direct {p0, p4, p1, p2, p3}, Lcom/android/internal/view/ScrollCaptureViewSupport;->onScrollResult(Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;Landroid/view/View;Landroid/os/CancellationSignal;Ljava/util/function/Consumer;)V

    return-void
.end method

.method private synthetic blacklist lambda$onScrollResult$1(Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;Landroid/view/View;Landroid/graphics/Rect;Ljava/util/function/Consumer;)V
    .registers 5

    .line 276
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/view/ScrollCaptureViewSupport;->doCapture(Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;Landroid/view/View;Landroid/graphics/Rect;Ljava/util/function/Consumer;)V

    return-void
.end method

.method private blacklist onScrollResult(Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;Landroid/view/View;Landroid/os/CancellationSignal;Ljava/util/function/Consumer;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;",
            "TV;",
            "Landroid/os/CancellationSignal;",
            "Ljava/util/function/Consumer<",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    .line 260
    invoke-virtual {p3}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result p3

    if-eqz p3, :cond_e

    .line 261
    const-string p1, "SCViewSupport"

    const-string p2, "onScrollCaptureImageRequest: cancelled! skipping render."

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    return-void

    .line 265
    :cond_e
    iget-object p3, p1, Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;->availableArea:Landroid/graphics/Rect;

    invoke-virtual {p3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_1c

    .line 266
    iget-object p1, p1, Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;->availableArea:Landroid/graphics/Rect;

    invoke-interface {p4, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 267
    return-void

    .line 272
    :cond_1c
    new-instance v4, Landroid/graphics/Rect;

    iget-object p3, p1, Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;->availableArea:Landroid/graphics/Rect;

    invoke-direct {v4, p3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 273
    iget p3, p1, Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;->scrollDelta:I

    neg-int p3, p3

    const/4 v0, 0x0

    invoke-virtual {v4, v0, p3}, Landroid/graphics/Rect;->offset(II)V

    .line 275
    new-instance v0, Lcom/android/internal/view/ScrollCaptureViewSupport$$ExternalSyntheticLambda0;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/view/ScrollCaptureViewSupport$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/view/ScrollCaptureViewSupport;Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;Landroid/view/View;Landroid/graphics/Rect;Ljava/util/function/Consumer;)V

    iget-wide p1, v1, Lcom/android/internal/view/ScrollCaptureViewSupport;->mPostScrollDelayMillis:J

    invoke-virtual {v3, v0, p1, p2}, Landroid/view/View;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    .line 278
    return-void
.end method

.method public static blacklist transformFromContainerToRequest(ILandroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .registers 4

    .line 121
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 122
    iget p2, p1, Landroid/graphics/Rect;->left:I

    neg-int p2, p2

    iget p1, p1, Landroid/graphics/Rect;->top:I

    neg-int p1, p1

    invoke-virtual {v0, p2, p1}, Landroid/graphics/Rect;->offset(II)V

    .line 123
    const/4 p1, 0x0

    invoke-virtual {v0, p1, p0}, Landroid/graphics/Rect;->offset(II)V

    .line 124
    return-object v0
.end method

.method public static blacklist transformFromRequestToContainer(ILandroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .registers 4

    .line 104
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 105
    const/4 p2, 0x0

    neg-int p0, p0

    invoke-virtual {v0, p2, p0}, Landroid/graphics/Rect;->offset(II)V

    .line 106
    iget p0, p1, Landroid/graphics/Rect;->left:I

    iget p1, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, p0, p1}, Landroid/graphics/Rect;->offset(II)V

    .line 107
    return-object v0
.end method


# virtual methods
.method public final whitelist onScrollCaptureEnd(Ljava/lang/Runnable;)V
    .registers 4

    .line 296
    iget-object v0, p0, Lcom/android/internal/view/ScrollCaptureViewSupport;->mWeakView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 297
    iget-boolean v1, p0, Lcom/android/internal/view/ScrollCaptureViewSupport;->mStarted:Z

    if-eqz v1, :cond_22

    iget-boolean v1, p0, Lcom/android/internal/view/ScrollCaptureViewSupport;->mEnded:Z

    if-nez v1, :cond_22

    .line 298
    if-eqz v0, :cond_1a

    .line 299
    iget-object v1, p0, Lcom/android/internal/view/ScrollCaptureViewSupport;->mViewHelper:Lcom/android/internal/view/ScrollCaptureViewHelper;

    invoke-interface {v1, v0}, Lcom/android/internal/view/ScrollCaptureViewHelper;->onPrepareForEnd(Landroid/view/View;)V

    .line 300
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 302
    :cond_1a
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/view/ScrollCaptureViewSupport;->mEnded:Z

    .line 303
    iget-object v0, p0, Lcom/android/internal/view/ScrollCaptureViewSupport;->mRenderer:Lcom/android/internal/view/ScrollCaptureViewSupport$ViewRenderer;

    invoke-virtual {v0}, Lcom/android/internal/view/ScrollCaptureViewSupport$ViewRenderer;->destroy()V

    .line 305
    :cond_22
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 306
    return-void
.end method

.method public final whitelist onScrollCaptureImageRequest(Landroid/view/ScrollCaptureSession;Landroid/os/CancellationSignal;Landroid/graphics/Rect;Ljava/util/function/Consumer;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ScrollCaptureSession;",
            "Landroid/os/CancellationSignal;",
            "Landroid/graphics/Rect;",
            "Ljava/util/function/Consumer<",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    .line 240
    invoke-virtual {p2}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 241
    const-string p1, "SCViewSupport"

    const-string p2, "onScrollCaptureImageRequest: cancelled!"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    return-void

    .line 245
    :cond_e
    iget-object v0, p0, Lcom/android/internal/view/ScrollCaptureViewSupport;->mWeakView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/view/View;

    .line 246
    if-eqz v2, :cond_31

    invoke-virtual {v2}, Landroid/view/View;->isVisibleToUser()Z

    move-result v0

    if-nez v0, :cond_20

    goto :goto_31

    .line 253
    :cond_20
    iget-object v1, p0, Lcom/android/internal/view/ScrollCaptureViewSupport;->mViewHelper:Lcom/android/internal/view/ScrollCaptureViewHelper;

    invoke-virtual {p1}, Landroid/view/ScrollCaptureSession;->getScrollBounds()Landroid/graphics/Rect;

    move-result-object v3

    new-instance v6, Lcom/android/internal/view/ScrollCaptureViewSupport$$ExternalSyntheticLambda1;

    invoke-direct {v6, p0, v2, p2, p4}, Lcom/android/internal/view/ScrollCaptureViewSupport$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/view/ScrollCaptureViewSupport;Landroid/view/View;Landroid/os/CancellationSignal;Ljava/util/function/Consumer;)V

    move-object v5, p2

    move-object v4, p3

    invoke-interface/range {v1 .. v6}, Lcom/android/internal/view/ScrollCaptureViewHelper;->onScrollRequested(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/os/CancellationSignal;Ljava/util/function/Consumer;)V

    .line 255
    return-void

    .line 248
    :cond_31
    :goto_31
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    invoke-interface {p4, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 249
    return-void
.end method

.method public final whitelist onScrollCaptureSearch(Landroid/os/CancellationSignal;Ljava/util/function/Consumer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/CancellationSignal;",
            "Ljava/util/function/Consumer<",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    .line 202
    invoke-virtual {p1}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 203
    return-void

    .line 205
    :cond_7
    iget-object p1, p0, Lcom/android/internal/view/ScrollCaptureViewSupport;->mWeakView:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    .line 206
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/view/ScrollCaptureViewSupport;->mStarted:Z

    .line 207
    iput-boolean v0, p0, Lcom/android/internal/view/ScrollCaptureViewSupport;->mEnded:Z

    .line 209
    if-eqz p1, :cond_2e

    invoke-virtual {p1}, Landroid/view/View;->isVisibleToUser()Z

    move-result v0

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/android/internal/view/ScrollCaptureViewSupport;->mViewHelper:Lcom/android/internal/view/ScrollCaptureViewHelper;

    invoke-interface {v0, p1}, Lcom/android/internal/view/ScrollCaptureViewHelper;->onAcceptSession(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 210
    iget-object v0, p0, Lcom/android/internal/view/ScrollCaptureViewSupport;->mViewHelper:Lcom/android/internal/view/ScrollCaptureViewHelper;

    invoke-interface {v0, p1}, Lcom/android/internal/view/ScrollCaptureViewHelper;->onComputeScrollBounds(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 211
    return-void

    .line 213
    :cond_2e
    const/4 p1, 0x0

    invoke-interface {p2, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 214
    return-void
.end method

.method public final whitelist onScrollCaptureStart(Landroid/view/ScrollCaptureSession;Landroid/os/CancellationSignal;Ljava/lang/Runnable;)V
    .registers 6

    .line 219
    invoke-virtual {p2}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result p2

    if-eqz p2, :cond_7

    .line 220
    return-void

    .line 222
    :cond_7
    iget-object p2, p0, Lcom/android/internal/view/ScrollCaptureViewSupport;->mWeakView:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    .line 224
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/view/ScrollCaptureViewSupport;->mEnded:Z

    .line 225
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/view/ScrollCaptureViewSupport;->mStarted:Z

    .line 230
    if-eqz p2, :cond_2f

    invoke-virtual {p2}, Landroid/view/View;->isVisibleToUser()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 231
    iget-object v0, p0, Lcom/android/internal/view/ScrollCaptureViewSupport;->mRenderer:Lcom/android/internal/view/ScrollCaptureViewSupport$ViewRenderer;

    invoke-virtual {p1}, Landroid/view/ScrollCaptureSession;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/view/ScrollCaptureViewSupport$ViewRenderer;->setSurface(Landroid/view/Surface;)V

    .line 232
    iget-object v0, p0, Lcom/android/internal/view/ScrollCaptureViewSupport;->mViewHelper:Lcom/android/internal/view/ScrollCaptureViewHelper;

    invoke-virtual {p1}, Landroid/view/ScrollCaptureSession;->getScrollBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-interface {v0, p2, p1}, Lcom/android/internal/view/ScrollCaptureViewHelper;->onPrepareForStart(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 234
    :cond_2f
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    .line 235
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 429
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ScrollCaptureViewSupport{view="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/view/ScrollCaptureViewSupport;->mWeakView:Ljava/lang/ref/WeakReference;

    .line 430
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", helper="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/view/ScrollCaptureViewSupport;->mViewHelper:Lcom/android/internal/view/ScrollCaptureViewHelper;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 429
    return-object v0
.end method
