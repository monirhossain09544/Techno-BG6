.class public Lcom/android/internal/view/ScrollCaptureInternal;
.super Ljava/lang/Object;
.source "ScrollCaptureInternal.java"


# static fields
.field private static final blacklist DEBUG:Z = false

.field private static final blacklist DEBUG_VERBOSE:Z = false

.field private static final blacklist DOWN:I = 0x1

.field private static final blacklist TAG:Ljava/lang/String; = "ScrollCaptureInternal"

.field public static final blacklist TYPE_FIXED:I = 0x0

.field public static final blacklist TYPE_OPAQUE:I = 0x3

.field public static final blacklist TYPE_RECYCLING:I = 0x2

.field public static final blacklist TYPE_SCROLLING:I = 0x1

.field private static final blacklist UP:I = -0x1


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist detectScrollingType(Landroid/view/View;)I
    .registers 8

    .line 80
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-nez v1, :cond_10

    invoke-virtual {p0, v3}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v1

    if-nez v1, :cond_10

    .line 85
    return v2

    .line 91
    :cond_10
    instance-of v1, p0, Landroid/view/ViewGroup;

    const/4 v4, 0x3

    if-nez v1, :cond_16

    .line 95
    return v4

    .line 101
    :cond_16
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/Flags;->scrollCaptureRelaxScrollViewCriteria()Z

    move-result v1

    const/4 v5, 0x2

    if-nez v1, :cond_27

    .line 103
    move-object v1, p0

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-le v1, v0, :cond_27

    .line 107
    return v5

    .line 111
    :cond_27
    move-object v1, p0

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const-string v6, "ScrollCaptureInternal"

    if-nez v1, :cond_38

    .line 112
    const-string p0, "scrollable but no children!"

    invoke-static {v6, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    return v4

    .line 119
    :cond_38
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v1

    if-eqz v1, :cond_3f

    .line 123
    return v0

    .line 125
    :cond_3f
    const-string v1, "hint: scrollY == 0"

    invoke-static {v6, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    invoke-virtual {p0, v3}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 131
    return v5

    .line 139
    :cond_4b
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v1

    invoke-virtual {p0, v1, v0}, Landroid/view/View;->scrollTo(II)V

    .line 142
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v1

    if-ne v1, v0, :cond_60

    .line 143
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v1

    invoke-virtual {p0, v1, v2}, Landroid/view/View;->scrollTo(II)V

    .line 147
    return v0

    .line 152
    :cond_60
    return v5
.end method

.method private static blacklist formatIntToHexString(I)Ljava/lang/String;
    .registers 3

    .line 218
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static blacklist resolveId(Landroid/content/Context;I)Ljava/lang/String;
    .registers 4

    .line 223
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 224
    if-ltz p1, :cond_3f

    .line 226
    :try_start_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 227
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_25
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_6 .. :try_end_25} :catch_26

    goto :goto_3e

    .line 228
    :catch_26
    move-exception p0

    .line 229
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "id/"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {p1}, Lcom/android/internal/view/ScrollCaptureInternal;->formatIntToHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 230
    :goto_3e
    goto :goto_41

    .line 232
    :cond_3f
    const-string p0, "NO_ID"

    .line 234
    :goto_41
    return-object p0
.end method


# virtual methods
.method public blacklist requestCallback(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Point;)Landroid/view/ScrollCaptureCallback;
    .registers 4

    .line 172
    invoke-static {p1}, Lcom/android/internal/view/ScrollCaptureInternal;->detectScrollingType(Landroid/view/View;)I

    move-result p2

    .line 173
    packed-switch p2, :pswitch_data_4e

    goto :goto_4b

    .line 201
    :pswitch_8
    instance-of p2, p1, Landroid/webkit/WebView;

    if-eqz p2, :cond_4b

    .line 202
    const-string p2, "ScrollCaptureInternal"

    const-string p3, "scroll capture: Using WebView support"

    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    new-instance p2, Lcom/android/internal/view/ScrollCaptureViewSupport;

    check-cast p1, Landroid/webkit/WebView;

    new-instance p3, Lcom/android/internal/view/WebViewCaptureHelper;

    invoke-direct {p3}, Lcom/android/internal/view/WebViewCaptureHelper;-><init>()V

    invoke-direct {p2, p1, p3}, Lcom/android/internal/view/ScrollCaptureViewSupport;-><init>(Landroid/view/View;Lcom/android/internal/view/ScrollCaptureViewHelper;)V

    return-object p2

    .line 188
    :pswitch_20
    instance-of p2, p1, Landroid/widget/ListView;

    if-eqz p2, :cond_31

    .line 190
    new-instance p2, Lcom/android/internal/view/ScrollCaptureViewSupport;

    check-cast p1, Landroid/widget/ListView;

    new-instance p3, Lcom/android/internal/view/ListViewCaptureHelper;

    invoke-direct {p3}, Lcom/android/internal/view/ListViewCaptureHelper;-><init>()V

    invoke-direct {p2, p1, p3}, Lcom/android/internal/view/ScrollCaptureViewSupport;-><init>(Landroid/view/View;Lcom/android/internal/view/ScrollCaptureViewHelper;)V

    return-object p2

    .line 193
    :cond_31
    new-instance p2, Lcom/android/internal/view/ScrollCaptureViewSupport;

    check-cast p1, Landroid/view/ViewGroup;

    new-instance p3, Lcom/android/internal/view/RecyclerViewCaptureHelper;

    invoke-direct {p3}, Lcom/android/internal/view/RecyclerViewCaptureHelper;-><init>()V

    invoke-direct {p2, p1, p3}, Lcom/android/internal/view/ScrollCaptureViewSupport;-><init>(Landroid/view/View;Lcom/android/internal/view/ScrollCaptureViewHelper;)V

    return-object p2

    .line 180
    :pswitch_3e
    new-instance p2, Lcom/android/internal/view/ScrollCaptureViewSupport;

    check-cast p1, Landroid/view/ViewGroup;

    new-instance p3, Lcom/android/internal/view/ScrollViewCaptureHelper;

    invoke-direct {p3}, Lcom/android/internal/view/ScrollViewCaptureHelper;-><init>()V

    invoke-direct {p2, p1, p3}, Lcom/android/internal/view/ScrollCaptureViewSupport;-><init>(Landroid/view/View;Lcom/android/internal/view/ScrollCaptureViewHelper;)V

    return-object p2

    .line 212
    :cond_4b
    :goto_4b
    const/4 p1, 0x0

    return-object p1

    nop

    :pswitch_data_4e
    .packed-switch 0x1
        :pswitch_3e
        :pswitch_20
        :pswitch_8
    .end packed-switch
.end method
