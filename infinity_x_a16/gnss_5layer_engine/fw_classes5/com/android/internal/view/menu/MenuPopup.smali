.class public abstract Lcom/android/internal/view/menu/MenuPopup;
.super Ljava/lang/Object;
.source "MenuPopup.java"

# interfaces
.implements Lcom/android/internal/view/menu/ShowableListMenu;
.implements Lcom/android/internal/view/menu/MenuPresenter;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private greylist-max-o mEpicenterBounds:Landroid/graphics/Rect;


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static greylist-max-o measureIndividualMenuWidth(Landroid/widget/ListAdapter;Landroid/view/ViewGroup;Landroid/content/Context;I)I
    .registers 13

    .line 140
    nop

    .line 141
    nop

    .line 142
    nop

    .line 144
    const/4 v0, 0x0

    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 145
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 146
    invoke-interface {p0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v3

    .line 147
    const/4 v4, 0x0

    move v5, v0

    move v6, v5

    move-object v7, v4

    :goto_14
    if-ge v0, v3, :cond_3a

    .line 148
    invoke-interface {p0, v0}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v8

    .line 149
    if-eq v8, v6, :cond_1f

    .line 150
    nop

    .line 151
    move-object v7, v4

    move v6, v8

    .line 154
    :cond_1f
    if-nez p1, :cond_26

    .line 155
    new-instance p1, Landroid/widget/FrameLayout;

    invoke-direct {p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 158
    :cond_26
    invoke-interface {p0, v0, v7, p1}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 159
    invoke-virtual {v7, v1, v2}, Landroid/view/View;->measure(II)V

    .line 161
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    .line 162
    if-lt v8, p3, :cond_34

    .line 163
    return p3

    .line 164
    :cond_34
    if-le v8, v5, :cond_37

    .line 165
    move v5, v8

    .line 147
    :cond_37
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 169
    :cond_3a
    return v5
.end method

.method protected static greylist-max-o shouldPreserveIconSpacing(Lcom/android/internal/view/menu/MenuBuilder;)Z
    .registers 6

    .line 199
    nop

    .line 200
    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuBuilder;->size()I

    move-result v0

    .line 202
    const/4 v1, 0x0

    move v2, v1

    :goto_7
    if-ge v2, v0, :cond_1f

    .line 203
    invoke-virtual {p0, v2}, Lcom/android/internal/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 204
    invoke-interface {v3}, Landroid/view/MenuItem;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_1c

    invoke-interface {v3}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_1c

    .line 205
    nop

    .line 206
    const/4 v1, 0x1

    goto :goto_1f

    .line 202
    :cond_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 210
    :cond_1f
    :goto_1f
    return v1
.end method

.method protected static greylist-max-o toMenuAdapter(Landroid/widget/ListAdapter;)Lcom/android/internal/view/menu/MenuAdapter;
    .registers 2

    .line 181
    instance-of v0, p0, Landroid/widget/HeaderViewListAdapter;

    if-eqz v0, :cond_d

    .line 182
    check-cast p0, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual {p0}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object p0

    check-cast p0, Lcom/android/internal/view/menu/MenuAdapter;

    return-object p0

    .line 184
    :cond_d
    check-cast p0, Lcom/android/internal/view/menu/MenuAdapter;

    return-object p0
.end method


# virtual methods
.method public abstract greylist-max-o addMenu(Lcom/android/internal/view/menu/MenuBuilder;)V
.end method

.method public greylist-max-o collapseItemActionView(Lcom/android/internal/view/menu/MenuBuilder;Lcom/android/internal/view/menu/MenuItemImpl;)Z
    .registers 3

    .line 113
    const/4 p1, 0x0

    return p1
.end method

.method public greylist-max-o expandItemActionView(Lcom/android/internal/view/menu/MenuBuilder;Lcom/android/internal/view/menu/MenuItemImpl;)Z
    .registers 3

    .line 108
    const/4 p1, 0x0

    return p1
.end method

.method public greylist-max-o getEpicenterBounds()Landroid/graphics/Rect;
    .registers 2

    .line 78
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopup;->mEpicenterBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public greylist-max-o getId()I
    .registers 2

    .line 118
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o getMenuView(Landroid/view/ViewGroup;)Lcom/android/internal/view/menu/MenuView;
    .registers 3

    .line 103
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "MenuPopups manage their own views"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public greylist-max-o initForMenu(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;)V
    .registers 3

    .line 99
    return-void
.end method

.method public whitelist onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 123
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object p1

    check-cast p1, Landroid/widget/ListAdapter;

    .line 124
    invoke-static {p1}, Lcom/android/internal/view/menu/MenuPopup;->toMenuAdapter(Landroid/widget/ListAdapter;)Lcom/android/internal/view/menu/MenuAdapter;

    move-result-object p2

    .line 128
    iget-object p2, p2, Lcom/android/internal/view/menu/MenuAdapter;->mAdapterMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-interface {p1, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/MenuItem;

    const/4 p3, 0x0

    invoke-virtual {p2, p1, p3}, Lcom/android/internal/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    .line 129
    return-void
.end method

.method public abstract greylist-max-o setAnchorView(Landroid/view/View;)V
.end method

.method public greylist-max-o setEpicenterBounds(Landroid/graphics/Rect;)V
    .registers 2

    .line 71
    iput-object p1, p0, Lcom/android/internal/view/menu/MenuPopup;->mEpicenterBounds:Landroid/graphics/Rect;

    .line 72
    return-void
.end method

.method public abstract greylist-max-o setForceShowIcon(Z)V
.end method

.method public abstract greylist-max-o setGravity(I)V
.end method

.method public abstract greylist-max-o setHorizontalOffset(I)V
.end method

.method public abstract greylist-max-o setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
.end method

.method public abstract greylist-max-o setShowTitle(Z)V
.end method

.method public abstract greylist-max-o setVerticalOffset(I)V
.end method
