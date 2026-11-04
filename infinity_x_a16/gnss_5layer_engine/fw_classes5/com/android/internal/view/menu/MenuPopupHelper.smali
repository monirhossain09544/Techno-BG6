.class public Lcom/android/internal/view/menu/MenuPopupHelper;
.super Ljava/lang/Object;
.source "MenuPopupHelper.java"

# interfaces
.implements Lcom/android/internal/view/menu/MenuHelper;


# static fields
.field private static final greylist-max-o TOUCH_EPICENTER_SIZE_DP:I = 0x30


# instance fields
.field private greylist-max-o mAnchorView:Landroid/view/View;

.field private final greylist-max-o mContext:Landroid/content/Context;

.field private greylist-max-o mDropDownGravity:I

.field private greylist-max-r mForceShowIcon:Z

.field private final greylist-max-o mInternalOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

.field private final greylist-max-o mMenu:Lcom/android/internal/view/menu/MenuBuilder;

.field private greylist-max-o mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

.field private final greylist-max-o mOverflowOnly:Z

.field private greylist-max-o mPopup:Lcom/android/internal/view/menu/MenuPopup;

.field private final greylist-max-o mPopupStyleAttr:I

.field private final greylist-max-o mPopupStyleRes:I

.field private greylist-max-o mPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;


# direct methods
.method public constructor greylist-max-r <init>(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;)V
    .registers 10

    .line 60
    const v5, 0x1010300

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/view/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/View;ZII)V

    .line 61
    return-void
.end method

.method public constructor greylist <init>(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/View;)V
    .registers 11

    .line 66
    const v5, 0x1010300

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/view/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/View;ZII)V

    .line 67
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/View;ZI)V
    .registers 13

    .line 72
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/view/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/View;ZII)V

    .line 73
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/View;ZII)V
    .registers 8

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const v0, 0x800003

    iput v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mDropDownGravity:I

    .line 329
    new-instance v0, Lcom/android/internal/view/menu/MenuPopupHelper$1;

    invoke-direct {v0, p0}, Lcom/android/internal/view/menu/MenuPopupHelper$1;-><init>(Lcom/android/internal/view/menu/MenuPopupHelper;)V

    iput-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mInternalOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    .line 78
    iput-object p1, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mContext:Landroid/content/Context;

    .line 79
    iput-object p2, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    .line 80
    iput-object p3, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    .line 81
    iput-boolean p4, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mOverflowOnly:Z

    .line 82
    iput p5, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopupStyleAttr:I

    .line 83
    iput p6, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopupStyleRes:I

    .line 84
    return-void
.end method

.method private greylist-max-o createPopup()Lcom/android/internal/view/menu/MenuPopup;
    .registers 10

    .line 226
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mContext:Landroid/content/Context;

    const-class v1, Landroid/view/WindowManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 227
    invoke-interface {v0}, Landroid/view/WindowManager;->getMaximumWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 229
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 230
    iget-object v1, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10500d6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 232
    if-lt v0, v1, :cond_2f

    const/4 v0, 0x1

    goto :goto_30

    :cond_2f
    const/4 v0, 0x0

    .line 235
    :goto_30
    if-eqz v0, :cond_42

    .line 236
    new-instance v1, Lcom/android/internal/view/menu/CascadingMenuPopup;

    iget-object v2, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    iget v4, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopupStyleAttr:I

    iget v5, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopupStyleRes:I

    iget-boolean v6, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mOverflowOnly:Z

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/view/menu/CascadingMenuPopup;-><init>(Landroid/content/Context;Landroid/view/View;IIZ)V

    goto :goto_54

    .line 239
    :cond_42
    new-instance v2, Lcom/android/internal/view/menu/StandardMenuPopup;

    iget-object v3, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    iget-object v5, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    iget v6, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopupStyleAttr:I

    iget v7, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopupStyleRes:I

    iget-boolean v8, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mOverflowOnly:Z

    invoke-direct/range {v2 .. v8}, Lcom/android/internal/view/menu/StandardMenuPopup;-><init>(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/View;IIZ)V

    move-object v1, v2

    .line 244
    :goto_54
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v1, v0}, Lcom/android/internal/view/menu/MenuPopup;->addMenu(Lcom/android/internal/view/menu/MenuBuilder;)V

    .line 245
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mInternalOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    invoke-virtual {v1, v0}, Lcom/android/internal/view/menu/MenuPopup;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 248
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    invoke-virtual {v1, v0}, Lcom/android/internal/view/menu/MenuPopup;->setAnchorView(Landroid/view/View;)V

    .line 249
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    invoke-virtual {v1, v0}, Lcom/android/internal/view/menu/MenuPopup;->setCallback(Lcom/android/internal/view/menu/MenuPresenter$Callback;)V

    .line 250
    iget-boolean v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mForceShowIcon:Z

    invoke-virtual {v1, v0}, Lcom/android/internal/view/menu/MenuPopup;->setForceShowIcon(Z)V

    .line 251
    iget v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mDropDownGravity:I

    invoke-virtual {v1, v0}, Lcom/android/internal/view/menu/MenuPopup;->setGravity(I)V

    .line 253
    return-object v1
.end method

.method private greylist-max-o showPopup(IIZZ)V
    .registers 8

    .line 257
    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuPopupHelper;->getPopup()Lcom/android/internal/view/menu/MenuPopup;

    move-result-object v0

    .line 258
    invoke-virtual {v0, p4}, Lcom/android/internal/view/menu/MenuPopup;->setShowTitle(Z)V

    .line 260
    if-eqz p3, :cond_48

    .line 264
    iget p3, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mDropDownGravity:I

    iget-object p4, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    .line 265
    invoke-virtual {p4}, Landroid/view/View;->getLayoutDirection()I

    move-result p4

    .line 264
    invoke-static {p3, p4}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result p3

    and-int/lit8 p3, p3, 0x7

    .line 266
    const/4 p4, 0x5

    if-ne p3, p4, :cond_21

    .line 267
    iget-object p3, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result p3

    sub-int/2addr p1, p3

    .line 270
    :cond_21
    invoke-virtual {v0, p1}, Lcom/android/internal/view/menu/MenuPopup;->setHorizontalOffset(I)V

    .line 271
    invoke-virtual {v0, p2}, Lcom/android/internal/view/menu/MenuPopup;->setVerticalOffset(I)V

    .line 277
    iget-object p3, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p3

    iget p3, p3, Landroid/util/DisplayMetrics;->density:F

    .line 278
    const/high16 p4, 0x42400000    # 48.0f

    mul-float/2addr p3, p4

    const/high16 p4, 0x40000000    # 2.0f

    div-float/2addr p3, p4

    float-to-int p3, p3

    .line 279
    new-instance p4, Landroid/graphics/Rect;

    sub-int v1, p1, p3

    sub-int v2, p2, p3

    add-int/2addr p1, p3

    add-int/2addr p2, p3

    invoke-direct {p4, v1, v2, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 281
    invoke-virtual {v0, p4}, Lcom/android/internal/view/menu/MenuPopup;->setEpicenterBounds(Landroid/graphics/Rect;)V

    .line 284
    :cond_48
    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuPopup;->show()V

    .line 285
    return-void
.end method


# virtual methods
.method public greylist dismiss()V
    .registers 2

    .line 293
    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuPopupHelper;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 294
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopup:Lcom/android/internal/view/menu/MenuPopup;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuPopup;->dismiss()V

    .line 296
    :cond_b
    return-void
.end method

.method public greylist-max-o getGravity()I
    .registers 2

    .line 138
    iget v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mDropDownGravity:I

    return v0
.end method

.method public greylist-max-r getPopup()Lcom/android/internal/view/menu/MenuPopup;
    .registers 2

    .line 157
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopup:Lcom/android/internal/view/menu/MenuPopup;

    if-nez v0, :cond_a

    .line 158
    invoke-direct {p0}, Lcom/android/internal/view/menu/MenuPopupHelper;->createPopup()Lcom/android/internal/view/menu/MenuPopup;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopup:Lcom/android/internal/view/menu/MenuPopup;

    .line 160
    :cond_a
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopup:Lcom/android/internal/view/menu/MenuPopup;

    return-object v0
.end method

.method public greylist-max-o isShowing()Z
    .registers 2

    .line 315
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopup:Lcom/android/internal/view/menu/MenuPopup;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopup:Lcom/android/internal/view/menu/MenuPopup;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method protected greylist-max-o onDismiss()V
    .registers 2

    .line 307
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopup:Lcom/android/internal/view/menu/MenuPopup;

    .line 309
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    if-eqz v0, :cond_c

    .line 310
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    invoke-interface {v0}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    .line 312
    :cond_c
    return-void
.end method

.method public greylist-max-r setAnchorView(Landroid/view/View;)V
    .registers 2

    .line 99
    iput-object p1, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    .line 100
    return-void
.end method

.method public greylist setForceShowIcon(Z)V
    .registers 3

    .line 116
    iput-boolean p1, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mForceShowIcon:Z

    .line 117
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopup:Lcom/android/internal/view/menu/MenuPopup;

    if-eqz v0, :cond_b

    .line 118
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopup:Lcom/android/internal/view/menu/MenuPopup;

    invoke-virtual {v0, p1}, Lcom/android/internal/view/menu/MenuPopup;->setForceShowIcon(Z)V

    .line 120
    :cond_b
    return-void
.end method

.method public greylist-max-r setGravity(I)V
    .registers 2

    .line 131
    iput p1, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mDropDownGravity:I

    .line 132
    return-void
.end method

.method public greylist-max-o setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
    .registers 2

    .line 87
    iput-object p1, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    .line 88
    return-void
.end method

.method public greylist-max-o setPresenterCallback(Lcom/android/internal/view/menu/MenuPresenter$Callback;)V
    .registers 3

    .line 320
    iput-object p1, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    .line 321
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopup:Lcom/android/internal/view/menu/MenuPopup;

    if-eqz v0, :cond_b

    .line 322
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopup:Lcom/android/internal/view/menu/MenuPopup;

    invoke-virtual {v0, p1}, Lcom/android/internal/view/menu/MenuPopup;->setCallback(Lcom/android/internal/view/menu/MenuPresenter$Callback;)V

    .line 324
    :cond_b
    return-void
.end method

.method public greylist show()V
    .registers 3

    .line 143
    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuPopupHelper;->tryShow()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 146
    return-void

    .line 144
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "MenuPopupHelper cannot be used without an anchor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o show(II)V
    .registers 3

    .line 149
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/view/menu/MenuPopupHelper;->tryShow(II)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 152
    return-void

    .line 150
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "MenuPopupHelper cannot be used without an anchor"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public greylist-max-r tryShow()Z
    .registers 4

    .line 171
    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuPopupHelper;->isShowing()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 172
    return v1

    .line 175
    :cond_8
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    const/4 v2, 0x0

    if-nez v0, :cond_e

    .line 176
    return v2

    .line 179
    :cond_e
    invoke-direct {p0, v2, v2, v2, v2}, Lcom/android/internal/view/menu/MenuPopupHelper;->showPopup(IIZZ)V

    .line 180
    return v1
.end method

.method public greylist-max-o tryShow(II)Z
    .registers 5

    .line 207
    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuPopupHelper;->isShowing()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 208
    return v1

    .line 211
    :cond_8
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    if-nez v0, :cond_e

    .line 212
    const/4 p1, 0x0

    return p1

    .line 215
    :cond_e
    invoke-direct {p0, p1, p2, v1, v1}, Lcom/android/internal/view/menu/MenuPopupHelper;->showPopup(IIZZ)V

    .line 216
    return v1
.end method
