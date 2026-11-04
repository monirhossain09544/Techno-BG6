.class public Lcom/android/internal/view/TooltipPopup;
.super Ljava/lang/Object;
.source "TooltipPopup.java"


# static fields
.field private static final greylist-max-o TAG:Ljava/lang/String; = "TooltipPopup"


# instance fields
.field private final greylist-max-o mContentView:Landroid/view/View;

.field private final greylist-max-o mContext:Landroid/content/Context;

.field private final greylist-max-o mLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private final greylist-max-o mMessageView:Landroid/widget/TextView;

.field private final greylist-max-o mTmpAnchorPos:[I

.field private final greylist-max-o mTmpAppPos:[I

.field private final greylist-max-o mTmpDisplayFrame:Landroid/graphics/Rect;


# direct methods
.method public constructor greylist-max-o <init>(Landroid/content/Context;)V
    .registers 4

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/android/internal/view/TooltipPopup;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 39
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/view/TooltipPopup;->mTmpDisplayFrame:Landroid/graphics/Rect;

    .line 40
    const/4 v0, 0x2

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/android/internal/view/TooltipPopup;->mTmpAnchorPos:[I

    .line 41
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/internal/view/TooltipPopup;->mTmpAppPos:[I

    .line 44
    iput-object p1, p0, Lcom/android/internal/view/TooltipPopup;->mContext:Landroid/content/Context;

    .line 46
    iget-object p1, p0, Lcom/android/internal/view/TooltipPopup;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x1090175

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/view/TooltipPopup;->mContentView:Landroid/view/View;

    .line 48
    iget-object p1, p0, Lcom/android/internal/view/TooltipPopup;->mContentView:Landroid/view/View;

    const v0, 0x102000b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/internal/view/TooltipPopup;->mMessageView:Landroid/widget/TextView;

    .line 51
    iget-object p1, p0, Lcom/android/internal/view/TooltipPopup;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, p0, Lcom/android/internal/view/TooltipPopup;->mContext:Landroid/content/Context;

    .line 52
    const v1, 0x1040a97

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 51
    invoke-virtual {p1, v0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 53
    iget-object p1, p0, Lcom/android/internal/view/TooltipPopup;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, p0, Lcom/android/internal/view/TooltipPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 54
    iget-object p1, p0, Lcom/android/internal/view/TooltipPopup;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v0, 0x3ed

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 55
    iget-object p1, p0, Lcom/android/internal/view/TooltipPopup;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v0, -0x2

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 56
    iget-object p1, p0, Lcom/android/internal/view/TooltipPopup;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 57
    iget-object p1, p0, Lcom/android/internal/view/TooltipPopup;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v0, -0x3

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 58
    iget-object p1, p0, Lcom/android/internal/view/TooltipPopup;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const v0, 0x1030317

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 59
    iget-object p1, p0, Lcom/android/internal/view/TooltipPopup;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v0, 0x18

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 61
    return-void
.end method

.method private greylist-max-o computePosition(Landroid/view/View;IIZLandroid/view/WindowManager$LayoutParams;)V
    .registers 13

    .line 96
    invoke-virtual {p1}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p5, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 98
    iget-object v0, p0, Lcom/android/internal/view/TooltipPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10503db

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 102
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    if-lt v1, v0, :cond_1a

    .line 104
    goto :goto_20

    .line 107
    :cond_1a
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    .line 112
    :goto_20
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    const/4 v2, 0x0

    if-lt v1, v0, :cond_38

    .line 114
    iget-object v0, p0, Lcom/android/internal/view/TooltipPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10503da

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 116
    add-int v1, p3, v0

    .line 117
    sub-int/2addr p3, v0

    .line 118
    goto :goto_3d

    .line 120
    :cond_38
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 121
    move p3, v2

    .line 124
    :goto_3d
    const/16 v0, 0x31

    iput v0, p5, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 126
    iget-object v0, p0, Lcom/android/internal/view/TooltipPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 127
    if-eqz p4, :cond_4d

    const v3, 0x10503df

    goto :goto_50

    .line 128
    :cond_4d
    const v3, 0x10503de

    .line 126
    :goto_50
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 131
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v3

    .line 132
    invoke-virtual {p1}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v4

    .line 131
    invoke-virtual {v3, v4}, Landroid/view/WindowManagerGlobal;->getWindowView(Landroid/os/IBinder;)Landroid/view/View;

    move-result-object v3

    .line 133
    if-nez v3, :cond_6a

    .line 134
    const-string p1, "TooltipPopup"

    const-string p2, "Cannot find app view"

    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    return-void

    .line 137
    :cond_6a
    iget-object v4, p0, Lcom/android/internal/view/TooltipPopup;->mTmpDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 138
    iget-object v4, p0, Lcom/android/internal/view/TooltipPopup;->mTmpAppPos:[I

    invoke-virtual {v3, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 140
    iget-object v4, p0, Lcom/android/internal/view/TooltipPopup;->mTmpAnchorPos:[I

    invoke-virtual {p1, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 141
    iget-object p1, p0, Lcom/android/internal/view/TooltipPopup;->mTmpAnchorPos:[I

    aget v4, p1, v2

    iget-object v5, p0, Lcom/android/internal/view/TooltipPopup;->mTmpAppPos:[I

    aget v5, v5, v2

    sub-int/2addr v4, v5

    aput v4, p1, v2

    .line 142
    iget-object p1, p0, Lcom/android/internal/view/TooltipPopup;->mTmpAnchorPos:[I

    const/4 v4, 0x1

    aget v5, p1, v4

    iget-object v6, p0, Lcom/android/internal/view/TooltipPopup;->mTmpAppPos:[I

    aget v6, v6, v4

    sub-int/2addr v5, v6

    aput v5, p1, v4

    .line 145
    iget-object p1, p0, Lcom/android/internal/view/TooltipPopup;->mTmpAnchorPos:[I

    aget p1, p1, v2

    add-int/2addr p1, p2

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    sub-int/2addr p1, p2

    iput p1, p5, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 147
    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 148
    iget-object p2, p0, Lcom/android/internal/view/TooltipPopup;->mContentView:Landroid/view/View;

    invoke-virtual {p2, p1, p1}, Landroid/view/View;->measure(II)V

    .line 149
    iget-object p1, p0, Lcom/android/internal/view/TooltipPopup;->mContentView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    .line 151
    iget-object p2, p0, Lcom/android/internal/view/TooltipPopup;->mTmpAnchorPos:[I

    aget p2, p2, v4

    add-int/2addr p2, p3

    sub-int/2addr p2, v0

    sub-int/2addr p2, p1

    .line 152
    iget-object p3, p0, Lcom/android/internal/view/TooltipPopup;->mTmpAnchorPos:[I

    aget p3, p3, v4

    add-int/2addr p3, v1

    add-int/2addr p3, v0

    .line 153
    if-eqz p4, :cond_c4

    .line 154
    if-ltz p2, :cond_c1

    .line 155
    iput p2, p5, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_d2

    .line 157
    :cond_c1
    iput p3, p5, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_d2

    .line 163
    :cond_c4
    add-int/2addr p1, p3

    iget-object p4, p0, Lcom/android/internal/view/TooltipPopup;->mTmpDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result p4

    if-gt p1, p4, :cond_d0

    .line 164
    iput p3, p5, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_d2

    .line 166
    :cond_d0
    iput p2, p5, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 169
    :goto_d2
    return-void
.end method


# virtual methods
.method public greylist-max-o getContentView()Landroid/view/View;
    .registers 2

    .line 87
    iget-object v0, p0, Lcom/android/internal/view/TooltipPopup;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method public greylist-max-o hide()V
    .registers 3

    .line 78
    invoke-virtual {p0}, Lcom/android/internal/view/TooltipPopup;->isShowing()Z

    move-result v0

    if-nez v0, :cond_7

    .line 79
    return-void

    .line 82
    :cond_7
    iget-object v0, p0, Lcom/android/internal/view/TooltipPopup;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 83
    iget-object v1, p0, Lcom/android/internal/view/TooltipPopup;->mContentView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 84
    return-void
.end method

.method public greylist-max-o isShowing()Z
    .registers 2

    .line 91
    iget-object v0, p0, Lcom/android/internal/view/TooltipPopup;->mContentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public greylist-max-o show(Landroid/view/View;IIZLjava/lang/CharSequence;)V
    .registers 13

    .line 65
    invoke-virtual {p0}, Lcom/android/internal/view/TooltipPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 66
    invoke-virtual {p0}, Lcom/android/internal/view/TooltipPopup;->hide()V

    .line 69
    :cond_9
    iget-object v0, p0, Lcom/android/internal/view/TooltipPopup;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, p5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    iget-object v6, p0, Lcom/android/internal/view/TooltipPopup;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/view/TooltipPopup;->computePosition(Landroid/view/View;IIZLandroid/view/WindowManager$LayoutParams;)V

    .line 73
    iget-object p1, v1, Lcom/android/internal/view/TooltipPopup;->mContext:Landroid/content/Context;

    const-string p2, "window"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    .line 74
    iget-object p2, v1, Lcom/android/internal/view/TooltipPopup;->mContentView:Landroid/view/View;

    iget-object p3, v1, Lcom/android/internal/view/TooltipPopup;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, p2, p3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 75
    return-void
.end method
