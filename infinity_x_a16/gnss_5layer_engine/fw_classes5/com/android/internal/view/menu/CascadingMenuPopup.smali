.class final Lcom/android/internal/view/menu/CascadingMenuPopup;
.super Lcom/android/internal/view/menu/MenuPopup;
.source "CascadingMenuPopup.java"

# interfaces
.implements Lcom/android/internal/view/menu/MenuPresenter;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;,
        Lcom/android/internal/view/menu/CascadingMenuPopup$HorizPosition;
    }
.end annotation


# static fields
.field private static final blacklist HORIZ_POSITION_LEFT:I = 0x0

.field private static final blacklist HORIZ_POSITION_RIGHT:I = 0x1

.field private static final blacklist SUBMENU_TIMEOUT_MS:I = 0xc8


# instance fields
.field private blacklist mAnchorView:Landroid/view/View;

.field private final blacklist mAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

.field private final blacklist mContext:Landroid/content/Context;

.field private blacklist mDropDownGravity:I

.field private blacklist mForceShowIcon:Z

.field private final blacklist mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private blacklist mHasXOffset:Z

.field private blacklist mHasYOffset:Z

.field private final blacklist mItemLayout:I

.field private blacklist mLastPosition:I

.field private final blacklist mMenuItemHoverListener:Landroid/widget/MenuItemHoverListener;

.field private final blacklist mMenuMaxWidth:I

.field private blacklist mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

.field private final blacklist mOverflowOnly:Z

.field private final blacklist mPendingMenus:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/view/menu/MenuBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mPopupStyleAttr:I

.field private final blacklist mPopupStyleRes:I

.field private blacklist mPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

.field private blacklist mRawDropDownGravity:I

.field private blacklist mShouldCloseImmediately:Z

.field private blacklist mShowTitle:Z

.field private final blacklist mShowingMenus:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mShownAnchorView:Landroid/view/View;

.field private final blacklist mSubMenuHoverHandler:Landroid/os/Handler;

.field private blacklist mTreeObserver:Landroid/view/ViewTreeObserver;

.field private blacklist mXOffset:I

.field private blacklist mYOffset:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmGlobalLayoutListener(Lcom/android/internal/view/menu/CascadingMenuPopup;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmShowingMenus(Lcom/android/internal/view/menu/CascadingMenuPopup;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmShownAnchorView(Lcom/android/internal/view/menu/CascadingMenuPopup;)Landroid/view/View;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mShownAnchorView:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSubMenuHoverHandler(Lcom/android/internal/view/menu/CascadingMenuPopup;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mSubMenuHoverHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTreeObserver(Lcom/android/internal/view/menu/CascadingMenuPopup;)Landroid/view/ViewTreeObserver;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmShouldCloseImmediately(Lcom/android/internal/view/menu/CascadingMenuPopup;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mShouldCloseImmediately:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmTreeObserver(Lcom/android/internal/view/menu/CascadingMenuPopup;Landroid/view/ViewTreeObserver;)V
    .registers 2

    iput-object p1, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/view/View;IIZ)V
    .registers 8

    .line 202
    invoke-direct {p0}, Lcom/android/internal/view/menu/MenuPopup;-><init>()V

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mPendingMenus:Ljava/util/List;

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    .line 78
    new-instance v0, Lcom/android/internal/view/menu/CascadingMenuPopup$1;

    invoke-direct {v0, p0}, Lcom/android/internal/view/menu/CascadingMenuPopup$1;-><init>(Lcom/android/internal/view/menu/CascadingMenuPopup;)V

    iput-object v0, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 99
    new-instance v0, Lcom/android/internal/view/menu/CascadingMenuPopup$2;

    invoke-direct {v0, p0}, Lcom/android/internal/view/menu/CascadingMenuPopup$2;-><init>(Lcom/android/internal/view/menu/CascadingMenuPopup;)V

    iput-object v0, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    .line 117
    new-instance v0, Lcom/android/internal/view/menu/CascadingMenuPopup$3;

    invoke-direct {v0, p0}, Lcom/android/internal/view/menu/CascadingMenuPopup$3;-><init>(Lcom/android/internal/view/menu/CascadingMenuPopup;)V

    iput-object v0, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mMenuItemHoverListener:Landroid/widget/MenuItemHoverListener;

    .line 177
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mRawDropDownGravity:I

    .line 178
    iput v0, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mDropDownGravity:I

    .line 203
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    iput-object v1, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mContext:Landroid/content/Context;

    .line 204
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    iput-object p2, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mAnchorView:Landroid/view/View;

    .line 205
    iput p3, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mPopupStyleAttr:I

    .line 206
    iput p4, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mPopupStyleRes:I

    .line 207
    iput-boolean p5, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mOverflowOnly:Z

    .line 209
    iput-boolean v0, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mForceShowIcon:Z

    .line 210
    invoke-direct {p0}, Lcom/android/internal/view/menu/CascadingMenuPopup;->getInitialMenuPosition()I

    move-result p2

    iput p2, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mLastPosition:I

    .line 212
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 213
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 p2, p2, 0x2

    .line 214
    const p3, 0x1050118

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 213
    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mMenuMaxWidth:I

    .line 216
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mSubMenuHoverHandler:Landroid/os/Handler;

    .line 218
    const p1, 0x1090056

    iput p1, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mItemLayout:I

    .line 219
    return-void
.end method

.method private blacklist createPopupWindow()Landroid/widget/MenuPopupWindow;
    .registers 6

    .line 227
    new-instance v0, Landroid/widget/MenuPopupWindow;

    iget-object v1, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mPopupStyleAttr:I

    iget v3, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mPopupStyleRes:I

    const/4 v4, 0x0

    invoke-direct {v0, v1, v4, v2, v3}, Landroid/widget/MenuPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 229
    iget-object v1, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mMenuItemHoverListener:Landroid/widget/MenuItemHoverListener;

    invoke-virtual {v0, v1}, Landroid/widget/MenuPopupWindow;->setHoverListener(Landroid/widget/MenuItemHoverListener;)V

    .line 230
    invoke-virtual {v0, p0}, Landroid/widget/MenuPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 231
    invoke-virtual {v0, p0}, Landroid/widget/MenuPopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 232
    iget-object v1, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mAnchorView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/MenuPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 233
    iget v1, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mDropDownGravity:I

    invoke-virtual {v0, v1}, Landroid/widget/MenuPopupWindow;->setDropDownGravity(I)V

    .line 234
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/MenuPopupWindow;->setModal(Z)V

    .line 235
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/MenuPopupWindow;->setInputMethodMode(I)V

    .line 236
    return-object v0
.end method

.method private blacklist findIndexOfAddedMenu(Lcom/android/internal/view/menu/MenuBuilder;)I
    .registers 5

    .line 601
    iget-object v0, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_19

    .line 602
    iget-object v2, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    .line 603
    iget-object v2, v2, Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    if-ne p1, v2, :cond_16

    .line 604
    return v1

    .line 601
    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 608
    :cond_19
    const/4 p1, -0x1

    return p1
.end method

.method private blacklist findMenuItemForSubmenu(Lcom/android/internal/view/menu/MenuBuilder;Lcom/android/internal/view/menu/MenuBuilder;)Landroid/view/MenuItem;
    .registers 7

    .line 462
    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuBuilder;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_1b

    .line 463
    invoke-virtual {p1, v1}, Lcom/android/internal/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 464
    invoke-interface {v2}, Landroid/view/MenuItem;->hasSubMenu()Z

    move-result v3

    if-eqz v3, :cond_18

    invoke-interface {v2}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v3

    if-ne p2, v3, :cond_18

    .line 465
    return-object v2

    .line 462
    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 469
    :cond_1b
    const/4 p1, 0x0

    return-object p1
.end method

.method private blacklist findParentViewForSubmenu(Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;Lcom/android/internal/view/menu/MenuBuilder;)Landroid/view/View;
    .registers 10

    .line 483
    iget-object v0, p1, Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-direct {p0, v0, p2}, Lcom/android/internal/view/menu/CascadingMenuPopup;->findMenuItemForSubmenu(Lcom/android/internal/view/menu/MenuBuilder;Lcom/android/internal/view/menu/MenuBuilder;)Landroid/view/MenuItem;

    move-result-object p2

    .line 484
    const/4 v0, 0x0

    if-nez p2, :cond_a

    .line 486
    return-object v0

    .line 492
    :cond_a
    invoke-virtual {p1}, Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;->getListView()Landroid/widget/ListView;

    move-result-object p1

    .line 493
    invoke-virtual {p1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    .line 494
    instance-of v2, v1, Landroid/widget/HeaderViewListAdapter;

    const/4 v3, 0x0

    if-eqz v2, :cond_24

    .line 495
    check-cast v1, Landroid/widget/HeaderViewListAdapter;

    .line 496
    invoke-virtual {v1}, Landroid/widget/HeaderViewListAdapter;->getHeadersCount()I

    move-result v2

    .line 497
    invoke-virtual {v1}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    check-cast v1, Lcom/android/internal/view/menu/MenuAdapter;

    .line 498
    goto :goto_28

    .line 499
    :cond_24
    nop

    .line 500
    check-cast v1, Lcom/android/internal/view/menu/MenuAdapter;

    move v2, v3

    .line 504
    :goto_28
    nop

    .line 505
    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuAdapter;->getCount()I

    move-result v4

    :goto_2d
    const/4 v5, -0x1

    if-ge v3, v4, :cond_3b

    .line 506
    invoke-virtual {v1, v3}, Lcom/android/internal/view/menu/MenuAdapter;->getItem(I)Lcom/android/internal/view/menu/MenuItemImpl;

    move-result-object v6

    if-ne p2, v6, :cond_38

    .line 507
    nop

    .line 508
    goto :goto_3c

    .line 505
    :cond_38
    add-int/lit8 v3, v3, 0x1

    goto :goto_2d

    :cond_3b
    move v3, v5

    .line 511
    :goto_3c
    if-ne v3, v5, :cond_3f

    .line 513
    return-object v0

    .line 517
    :cond_3f
    add-int/2addr v3, v2

    .line 520
    invoke-virtual {p1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result p2

    sub-int/2addr v3, p2

    .line 521
    if-ltz v3, :cond_53

    invoke-virtual {p1}, Landroid/widget/ListView;->getChildCount()I

    move-result p2

    if-lt v3, p2, :cond_4e

    goto :goto_53

    .line 526
    :cond_4e
    invoke-virtual {p1, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 523
    :cond_53
    :goto_53
    return-object v0
.end method

.method private blacklist getInitialMenuPosition()I
    .registers 3

    .line 297
    iget-object v0, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mAnchorView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    .line 298
    const/4 v1, 0x1

    if-ne v0, v1, :cond_b

    const/4 v1, 0x0

    goto :goto_c

    .line 299
    :cond_b
    nop

    .line 298
    :goto_c
    return v1
.end method

.method private blacklist getNextMenuPosition(I)I
    .registers 8

    .line 311
    iget-object v0, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    iget-object v1, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 313
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 314
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getLocationOnScreen([I)V

    .line 316
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 317
    iget-object v4, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mShownAnchorView:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 319
    iget v4, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mLastPosition:I

    const/4 v5, 0x0

    if-ne v4, v2, :cond_37

    .line 320
    aget v1, v1, v5

    invoke-virtual {v0}, Landroid/widget/ListView;->getWidth()I

    move-result v0

    add-int/2addr v1, v0

    add-int/2addr v1, p1

    .line 321
    iget p1, v3, Landroid/graphics/Rect;->right:I

    if-le v1, p1, :cond_36

    .line 322
    return v5

    .line 324
    :cond_36
    return v2

    .line 326
    :cond_37
    aget v0, v1, v5

    sub-int/2addr v0, p1

    .line 327
    if-gez v0, :cond_3d

    .line 328
    return v2

    .line 330
    :cond_3d
    return v5
.end method

.method private blacklist showMenu(Lcom/android/internal/view/menu/MenuBuilder;)V
    .registers 13

    .line 351
    iget-object v0, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 352
    new-instance v1, Lcom/android/internal/view/menu/MenuAdapter;

    iget-boolean v2, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mOverflowOnly:Z

    iget v3, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mItemLayout:I

    invoke-direct {v1, p1, v0, v2, v3}, Lcom/android/internal/view/menu/MenuAdapter;-><init>(Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/LayoutInflater;ZI)V

    .line 358
    invoke-virtual {p0}, Lcom/android/internal/view/menu/CascadingMenuPopup;->isShowing()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_1e

    iget-boolean v2, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mForceShowIcon:Z

    if-eqz v2, :cond_1e

    .line 360
    invoke-virtual {v1, v3}, Lcom/android/internal/view/menu/MenuAdapter;->setForceShowIcon(Z)V

    goto :goto_2b

    .line 361
    :cond_1e
    invoke-virtual {p0}, Lcom/android/internal/view/menu/CascadingMenuPopup;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 363
    invoke-static {p1}, Lcom/android/internal/view/menu/MenuPopup;->shouldPreserveIconSpacing(Lcom/android/internal/view/menu/MenuBuilder;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/view/menu/MenuAdapter;->setForceShowIcon(Z)V

    .line 367
    :cond_2b
    :goto_2b
    iget-object v2, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mMenuMaxWidth:I

    const/4 v5, 0x0

    invoke-static {v1, v5, v2, v4}, Lcom/android/internal/view/menu/CascadingMenuPopup;->measureIndividualMenuWidth(Landroid/widget/ListAdapter;Landroid/view/ViewGroup;Landroid/content/Context;I)I

    move-result v2

    .line 368
    invoke-direct {p0}, Lcom/android/internal/view/menu/CascadingMenuPopup;->createPopupWindow()Landroid/widget/MenuPopupWindow;

    move-result-object v4

    .line 369
    invoke-virtual {v4, v1}, Landroid/widget/MenuPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 370
    invoke-virtual {v4, v2}, Landroid/widget/MenuPopupWindow;->setContentWidth(I)V

    .line 371
    iget v1, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mDropDownGravity:I

    invoke-virtual {v4, v1}, Landroid/widget/MenuPopupWindow;->setDropDownGravity(I)V

    .line 375
    iget-object v1, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_5f

    .line 376
    iget-object v1, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    iget-object v6, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v3

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    .line 377
    invoke-direct {p0, v1, p1}, Lcom/android/internal/view/menu/CascadingMenuPopup;->findParentViewForSubmenu(Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;Lcom/android/internal/view/menu/MenuBuilder;)Landroid/view/View;

    move-result-object v6

    goto :goto_62

    .line 379
    :cond_5f
    nop

    .line 380
    move-object v1, v5

    move-object v6, v1

    .line 383
    :goto_62
    const/4 v7, 0x0

    if-eqz v6, :cond_9a

    .line 385
    invoke-virtual {v4, v6}, Landroid/widget/MenuPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 386
    invoke-virtual {v4, v7}, Landroid/widget/MenuPopupWindow;->setTouchModal(Z)V

    .line 387
    invoke-virtual {v4, v5}, Landroid/widget/MenuPopupWindow;->setEnterTransition(Landroid/transition/Transition;)V

    .line 389
    invoke-direct {p0, v2}, Lcom/android/internal/view/menu/CascadingMenuPopup;->getNextMenuPosition(I)I

    move-result v8

    .line 390
    if-ne v8, v3, :cond_76

    move v9, v3

    goto :goto_77

    :cond_76
    move v9, v7

    .line 391
    :goto_77
    iput v8, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mLastPosition:I

    .line 398
    iget v8, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mDropDownGravity:I

    const/4 v10, 0x5

    and-int/2addr v8, v10

    if-ne v8, v10, :cond_88

    .line 399
    if-eqz v9, :cond_82

    .line 400
    goto :goto_90

    .line 402
    :cond_82
    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v2

    neg-int v2, v2

    goto :goto_90

    .line 405
    :cond_88
    if-eqz v9, :cond_8f

    .line 406
    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v2

    goto :goto_90

    .line 408
    :cond_8f
    neg-int v2, v2

    .line 411
    :goto_90
    invoke-virtual {v4, v2}, Landroid/widget/MenuPopupWindow;->setHorizontalOffset(I)V

    .line 415
    invoke-virtual {v4, v3}, Landroid/widget/MenuPopupWindow;->setOverlapAnchor(Z)V

    .line 416
    invoke-virtual {v4, v7}, Landroid/widget/MenuPopupWindow;->setVerticalOffset(I)V

    .line 417
    goto :goto_b3

    .line 418
    :cond_9a
    iget-boolean v2, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mHasXOffset:Z

    if-eqz v2, :cond_a3

    .line 419
    iget v2, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mXOffset:I

    invoke-virtual {v4, v2}, Landroid/widget/MenuPopupWindow;->setHorizontalOffset(I)V

    .line 421
    :cond_a3
    iget-boolean v2, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mHasYOffset:Z

    if-eqz v2, :cond_ac

    .line 422
    iget v2, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mYOffset:I

    invoke-virtual {v4, v2}, Landroid/widget/MenuPopupWindow;->setVerticalOffset(I)V

    .line 424
    :cond_ac
    invoke-virtual {p0}, Lcom/android/internal/view/menu/CascadingMenuPopup;->getEpicenterBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 425
    invoke-virtual {v4, v2}, Landroid/widget/MenuPopupWindow;->setEpicenterBounds(Landroid/graphics/Rect;)V

    .line 429
    :goto_b3
    new-instance v2, Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    iget v3, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mLastPosition:I

    invoke-direct {v2, v4, p1, v3}, Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;-><init>(Landroid/widget/MenuPopupWindow;Lcom/android/internal/view/menu/MenuBuilder;I)V

    .line 430
    iget-object v3, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 432
    invoke-virtual {v4}, Landroid/widget/MenuPopupWindow;->show()V

    .line 434
    invoke-virtual {v4}, Landroid/widget/MenuPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v2

    .line 435
    invoke-virtual {v2, p0}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 438
    if-nez v1, :cond_f7

    iget-boolean v1, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mShowTitle:Z

    if-eqz v1, :cond_f7

    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuBuilder;->getHeaderTitle()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_f7

    .line 439
    const v1, 0x1090105

    invoke-virtual {v0, v1, v2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 441
    const v1, 0x1020016

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 442
    invoke-virtual {v0, v7}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 443
    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuBuilder;->getHeaderTitle()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 444
    invoke-virtual {v2, v0, v5, v7}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 447
    invoke-virtual {v4}, Landroid/widget/MenuPopupWindow;->show()V

    .line 449
    :cond_f7
    return-void
.end method


# virtual methods
.method public blacklist addMenu(Lcom/android/internal/view/menu/MenuBuilder;)V
    .registers 3

    .line 336
    iget-object v0, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0, v0}, Lcom/android/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;Landroid/content/Context;)V

    .line 338
    invoke-virtual {p0}, Lcom/android/internal/view/menu/CascadingMenuPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 339
    invoke-direct {p0, p1}, Lcom/android/internal/view/menu/CascadingMenuPopup;->showMenu(Lcom/android/internal/view/menu/MenuBuilder;)V

    goto :goto_14

    .line 341
    :cond_f
    iget-object v0, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mPendingMenus:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 343
    :goto_14
    return-void
.end method

.method public blacklist dismiss()V
    .registers 5

    .line 269
    iget-object v0, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 270
    if-lez v0, :cond_28

    .line 271
    iget-object v1, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    new-array v2, v0, [Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    .line 272
    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    .line 273
    add-int/lit8 v0, v0, -0x1

    :goto_14
    if-ltz v0, :cond_28

    .line 274
    aget-object v2, v1, v0

    .line 275
    iget-object v3, v2, Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;->window:Landroid/widget/MenuPopupWindow;

    invoke-virtual {v3}, Landroid/widget/MenuPopupWindow;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_25

    .line 276
    iget-object v2, v2, Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;->window:Landroid/widget/MenuPopupWindow;

    invoke-virtual {v2}, Landroid/widget/MenuPopupWindow;->dismiss()V

    .line 273
    :cond_25
    add-int/lit8 v0, v0, -0x1

    goto :goto_14

    .line 280
    :cond_28
    return-void
.end method

.method public blacklist flagActionItems()Z
    .registers 2

    .line 672
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getListView()Landroid/widget/ListView;
    .registers 3

    .line 711
    iget-object v0, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    goto :goto_1e

    :cond_a
    iget-object v0, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    iget-object v1, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;->getListView()Landroid/widget/ListView;

    move-result-object v0

    :goto_1e
    return-object v0
.end method

.method public blacklist isShowing()Z
    .registers 3

    .line 534
    iget-object v0, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_1a

    iget-object v0, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    iget-object v0, v0, Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;->window:Landroid/widget/MenuPopupWindow;

    invoke-virtual {v0}, Landroid/widget/MenuPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v1, 0x1

    :cond_1a
    return v1
.end method

.method public blacklist onCloseMenu(Lcom/android/internal/view/menu/MenuBuilder;Z)V
    .registers 8

    .line 613
    invoke-direct {p0, p1}, Lcom/android/internal/view/menu/CascadingMenuPopup;->findIndexOfAddedMenu(Lcom/android/internal/view/menu/MenuBuilder;)I

    move-result v0

    .line 614
    if-gez v0, :cond_7

    .line 615
    return-void

    .line 619
    :cond_7
    add-int/lit8 v1, v0, 0x1

    .line 620
    iget-object v2, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    if-ge v1, v2, :cond_1f

    .line 621
    iget-object v2, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    .line 622
    iget-object v1, v1, Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v1, v3}, Lcom/android/internal/view/menu/MenuBuilder;->close(Z)V

    .line 626
    :cond_1f
    iget-object v1, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    .line 627
    iget-object v1, v0, Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v1, p0}, Lcom/android/internal/view/menu/MenuBuilder;->removeMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;)V

    .line 628
    iget-boolean v1, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mShouldCloseImmediately:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_3b

    .line 630
    iget-object v1, v0, Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;->window:Landroid/widget/MenuPopupWindow;

    invoke-virtual {v1, v2}, Landroid/widget/MenuPopupWindow;->setExitTransition(Landroid/transition/Transition;)V

    .line 631
    iget-object v1, v0, Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;->window:Landroid/widget/MenuPopupWindow;

    invoke-virtual {v1, v3}, Landroid/widget/MenuPopupWindow;->setAnimationStyle(I)V

    .line 633
    :cond_3b
    iget-object v0, v0, Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;->window:Landroid/widget/MenuPopupWindow;

    invoke-virtual {v0}, Landroid/widget/MenuPopupWindow;->dismiss()V

    .line 635
    iget-object v0, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 636
    if-lez v0, :cond_57

    .line 637
    iget-object v1, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    add-int/lit8 v4, v0, -0x1

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    iget v1, v1, Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;->position:I

    iput v1, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mLastPosition:I

    goto :goto_5d

    .line 639
    :cond_57
    invoke-direct {p0}, Lcom/android/internal/view/menu/CascadingMenuPopup;->getInitialMenuPosition()I

    move-result v1

    iput v1, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mLastPosition:I

    .line 642
    :goto_5d
    if-nez v0, :cond_8e

    .line 644
    invoke-virtual {p0}, Lcom/android/internal/view/menu/CascadingMenuPopup;->dismiss()V

    .line 646
    iget-object p2, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    if-eqz p2, :cond_6c

    .line 647
    iget-object p2, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    const/4 v0, 0x1

    invoke-interface {p2, p1, v0}, Lcom/android/internal/view/menu/MenuPresenter$Callback;->onCloseMenu(Lcom/android/internal/view/menu/MenuBuilder;Z)V

    .line 650
    :cond_6c
    iget-object p1, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    if-eqz p1, :cond_81

    .line 651
    iget-object p1, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {p1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result p1

    if-eqz p1, :cond_7f

    .line 652
    iget-object p1, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    iget-object p2, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 654
    :cond_7f
    iput-object v2, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    .line 656
    :cond_81
    iget-object p1, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mShownAnchorView:Landroid/view/View;

    iget-object p2, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {p1, p2}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 660
    iget-object p1, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    invoke-interface {p1}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    goto :goto_9d

    .line 661
    :cond_8e
    if-eqz p2, :cond_9d

    .line 665
    iget-object p1, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    .line 666
    iget-object p1, p1, Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {p1, v3}, Lcom/android/internal/view/menu/MenuBuilder;->close(Z)V

    .line 668
    :cond_9d
    :goto_9d
    return-void
.end method

.method public whitelist onDismiss()V
    .registers 6

    .line 544
    nop

    .line 545
    iget-object v0, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_9
    if-ge v2, v0, :cond_20

    .line 546
    iget-object v3, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    .line 547
    iget-object v4, v3, Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;->window:Landroid/widget/MenuPopupWindow;

    invoke-virtual {v4}, Landroid/widget/MenuPopupWindow;->isShowing()Z

    move-result v4

    if-nez v4, :cond_1d

    .line 548
    nop

    .line 549
    goto :goto_21

    .line 545
    :cond_1d
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_20
    const/4 v3, 0x0

    .line 555
    :goto_21
    if-eqz v3, :cond_28

    .line 556
    iget-object v0, v3, Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/MenuBuilder;->close(Z)V

    .line 558
    :cond_28
    return-void
.end method

.method public whitelist onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 4

    .line 284
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 p3, 0x1

    if-ne p1, p3, :cond_f

    const/16 p1, 0x52

    if-ne p2, p1, :cond_f

    .line 285
    invoke-virtual {p0}, Lcom/android/internal/view/menu/CascadingMenuPopup;->dismiss()V

    .line 286
    return p3

    .line 288
    :cond_f
    const/4 p1, 0x0

    return p1
.end method

.method public blacklist onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 2

    .line 682
    return-void
.end method

.method public blacklist onSaveInstanceState()Landroid/os/Parcelable;
    .registers 2

    .line 677
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist onSubMenuSelected(Lcom/android/internal/view/menu/SubMenuBuilder;)Z
    .registers 6

    .line 575
    iget-object v0, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    .line 576
    iget-object v3, v1, Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    if-ne p1, v3, :cond_1f

    .line 578
    invoke-virtual {v1}, Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;->getListView()Landroid/widget/ListView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ListView;->requestFocus()Z

    .line 579
    return v2

    .line 581
    :cond_1f
    goto :goto_6

    .line 583
    :cond_20
    invoke-virtual {p1}, Lcom/android/internal/view/menu/SubMenuBuilder;->hasVisibleItems()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 584
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/CascadingMenuPopup;->addMenu(Lcom/android/internal/view/menu/MenuBuilder;)V

    .line 586
    iget-object v0, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    if-eqz v0, :cond_32

    .line 587
    iget-object v0, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    invoke-interface {v0, p1}, Lcom/android/internal/view/menu/MenuPresenter$Callback;->onOpenSubMenu(Lcom/android/internal/view/menu/MenuBuilder;)Z

    .line 589
    :cond_32
    return v2

    .line 591
    :cond_33
    const/4 p1, 0x0

    return p1
.end method

.method public blacklist setAnchorView(Landroid/view/View;)V
    .registers 3

    .line 695
    iget-object v0, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mAnchorView:Landroid/view/View;

    if-eq v0, p1, :cond_14

    .line 696
    iput-object p1, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mAnchorView:Landroid/view/View;

    .line 699
    iget p1, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mRawDropDownGravity:I

    iget-object v0, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mAnchorView:Landroid/view/View;

    .line 700
    invoke-virtual {v0}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    .line 699
    invoke-static {p1, v0}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result p1

    iput p1, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mDropDownGravity:I

    .line 702
    :cond_14
    return-void
.end method

.method public blacklist setCallback(Lcom/android/internal/view/menu/MenuPresenter$Callback;)V
    .registers 2

    .line 569
    iput-object p1, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    .line 570
    return-void
.end method

.method public blacklist setForceShowIcon(Z)V
    .registers 2

    .line 223
    iput-boolean p1, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mForceShowIcon:Z

    .line 224
    return-void
.end method

.method public blacklist setGravity(I)V
    .registers 3

    .line 686
    iget v0, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mRawDropDownGravity:I

    if-eq v0, p1, :cond_12

    .line 687
    iput p1, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mRawDropDownGravity:I

    .line 688
    iget-object v0, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mAnchorView:Landroid/view/View;

    .line 689
    invoke-virtual {v0}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    .line 688
    invoke-static {p1, v0}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result p1

    iput p1, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mDropDownGravity:I

    .line 691
    :cond_12
    return-void
.end method

.method public blacklist setHorizontalOffset(I)V
    .registers 3

    .line 716
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mHasXOffset:Z

    .line 717
    iput p1, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mXOffset:I

    .line 718
    return-void
.end method

.method public blacklist setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
    .registers 2

    .line 706
    iput-object p1, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    .line 707
    return-void
.end method

.method public blacklist setShowTitle(Z)V
    .registers 2

    .line 728
    iput-boolean p1, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mShowTitle:Z

    .line 729
    return-void
.end method

.method public blacklist setVerticalOffset(I)V
    .registers 3

    .line 722
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mHasYOffset:Z

    .line 723
    iput p1, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mYOffset:I

    .line 724
    return-void
.end method

.method public blacklist show()V
    .registers 3

    .line 241
    invoke-virtual {p0}, Lcom/android/internal/view/menu/CascadingMenuPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 242
    return-void

    .line 246
    :cond_7
    iget-object v0, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mPendingMenus:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/view/menu/MenuBuilder;

    .line 247
    invoke-direct {p0, v1}, Lcom/android/internal/view/menu/CascadingMenuPopup;->showMenu(Lcom/android/internal/view/menu/MenuBuilder;)V

    .line 248
    goto :goto_d

    .line 249
    :cond_1d
    iget-object v0, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mPendingMenus:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 251
    iget-object v0, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mAnchorView:Landroid/view/View;

    iput-object v0, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mShownAnchorView:Landroid/view/View;

    .line 253
    iget-object v0, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mShownAnchorView:Landroid/view/View;

    if-eqz v0, :cond_49

    .line 254
    iget-object v0, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    if-nez v0, :cond_30

    const/4 v0, 0x1

    goto :goto_31

    :cond_30
    const/4 v0, 0x0

    .line 255
    :goto_31
    iget-object v1, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mShownAnchorView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    .line 256
    if-eqz v0, :cond_42

    .line 257
    iget-object v0, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    iget-object v1, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 259
    :cond_42
    iget-object v0, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mShownAnchorView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 261
    :cond_49
    return-void
.end method

.method public blacklist updateMenuView(Z)V
    .registers 3

    .line 562
    iget-object p1, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    .line 563
    invoke-virtual {v0}, Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/view/menu/CascadingMenuPopup;->toMenuAdapter(Landroid/widget/ListAdapter;)Lcom/android/internal/view/menu/MenuAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuAdapter;->notifyDataSetChanged()V

    .line 564
    goto :goto_6

    .line 565
    :cond_22
    return-void
.end method
