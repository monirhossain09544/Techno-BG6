.class public abstract Lcom/android/internal/view/menu/BaseMenuPresenter;
.super Ljava/lang/Object;
.source "BaseMenuPresenter.java"

# interfaces
.implements Lcom/android/internal/view/menu/MenuPresenter;


# instance fields
.field private greylist-max-o mCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

.field protected greylist-max-o mContext:Landroid/content/Context;

.field private greylist-max-o mId:I

.field protected greylist-max-o mInflater:Landroid/view/LayoutInflater;

.field private greylist-max-o mItemLayoutRes:I

.field protected greylist-max-o mMenu:Lcom/android/internal/view/menu/MenuBuilder;

.field private greylist-max-o mMenuLayoutRes:I

.field protected greylist-max-o mMenuView:Lcom/android/internal/view/menu/MenuView;

.field protected greylist-max-o mSystemContext:Landroid/content/Context;

.field protected greylist-max-o mSystemInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor greylist-max-o <init>(Landroid/content/Context;II)V
    .registers 4

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/android/internal/view/menu/BaseMenuPresenter;->mSystemContext:Landroid/content/Context;

    .line 57
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/view/menu/BaseMenuPresenter;->mSystemInflater:Landroid/view/LayoutInflater;

    .line 58
    iput p2, p0, Lcom/android/internal/view/menu/BaseMenuPresenter;->mMenuLayoutRes:I

    .line 59
    iput p3, p0, Lcom/android/internal/view/menu/BaseMenuPresenter;->mItemLayoutRes:I

    .line 60
    return-void
.end method


# virtual methods
.method protected greylist-max-o addItemView(Landroid/view/View;I)V
    .registers 4

    .line 127
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 128
    if-eqz v0, :cond_b

    .line 129
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 131
    :cond_b
    iget-object v0, p0, Lcom/android/internal/view/menu/BaseMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 132
    return-void
.end method

.method public abstract greylist-max-o bindItemView(Lcom/android/internal/view/menu/MenuItemImpl;Lcom/android/internal/view/menu/MenuView$ItemView;)V
.end method

.method public greylist-max-o collapseItemActionView(Lcom/android/internal/view/menu/MenuBuilder;Lcom/android/internal/view/menu/MenuItemImpl;)Z
    .registers 3

    .line 225
    const/4 p1, 0x0

    return p1
.end method

.method public greylist-max-o createItemView(Landroid/view/ViewGroup;)Lcom/android/internal/view/menu/MenuView$ItemView;
    .registers 5

    .line 159
    iget-object v0, p0, Lcom/android/internal/view/menu/BaseMenuPresenter;->mSystemInflater:Landroid/view/LayoutInflater;

    iget v1, p0, Lcom/android/internal/view/menu/BaseMenuPresenter;->mItemLayoutRes:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/internal/view/menu/MenuView$ItemView;

    return-object p1
.end method

.method public greylist-max-o expandItemActionView(Lcom/android/internal/view/menu/MenuBuilder;Lcom/android/internal/view/menu/MenuItemImpl;)Z
    .registers 3

    .line 221
    const/4 p1, 0x0

    return p1
.end method

.method protected greylist-max-o filterLeftoverView(Landroid/view/ViewGroup;I)Z
    .registers 3

    .line 141
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 142
    const/4 p1, 0x1

    return p1
.end method

.method public greylist-max-o flagActionItems()Z
    .registers 2

    .line 217
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o getCallback()Lcom/android/internal/view/menu/MenuPresenter$Callback;
    .registers 2

    .line 150
    iget-object v0, p0, Lcom/android/internal/view/menu/BaseMenuPresenter;->mCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    return-object v0
.end method

.method public greylist-max-o getId()I
    .registers 2

    .line 229
    iget v0, p0, Lcom/android/internal/view/menu/BaseMenuPresenter;->mId:I

    return v0
.end method

.method public greylist-max-o getItemView(Lcom/android/internal/view/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5

    .line 175
    instance-of v0, p2, Lcom/android/internal/view/menu/MenuView$ItemView;

    if-eqz v0, :cond_7

    .line 176
    check-cast p2, Lcom/android/internal/view/menu/MenuView$ItemView;

    goto :goto_b

    .line 178
    :cond_7
    invoke-virtual {p0, p3}, Lcom/android/internal/view/menu/BaseMenuPresenter;->createItemView(Landroid/view/ViewGroup;)Lcom/android/internal/view/menu/MenuView$ItemView;

    move-result-object p2

    .line 180
    :goto_b
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/view/menu/BaseMenuPresenter;->bindItemView(Lcom/android/internal/view/menu/MenuItemImpl;Lcom/android/internal/view/menu/MenuView$ItemView;)V

    .line 181
    check-cast p2, Landroid/view/View;

    return-object p2
.end method

.method public greylist-max-o getMenuView(Landroid/view/ViewGroup;)Lcom/android/internal/view/menu/MenuView;
    .registers 5

    .line 71
    iget-object v0, p0, Lcom/android/internal/view/menu/BaseMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    if-nez v0, :cond_1c

    .line 72
    iget-object v0, p0, Lcom/android/internal/view/menu/BaseMenuPresenter;->mSystemInflater:Landroid/view/LayoutInflater;

    iget v1, p0, Lcom/android/internal/view/menu/BaseMenuPresenter;->mMenuLayoutRes:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/internal/view/menu/MenuView;

    iput-object p1, p0, Lcom/android/internal/view/menu/BaseMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    .line 73
    iget-object p1, p0, Lcom/android/internal/view/menu/BaseMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    iget-object v0, p0, Lcom/android/internal/view/menu/BaseMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-interface {p1, v0}, Lcom/android/internal/view/menu/MenuView;->initialize(Lcom/android/internal/view/menu/MenuBuilder;)V

    .line 74
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/BaseMenuPresenter;->updateMenuView(Z)V

    .line 77
    :cond_1c
    iget-object p1, p0, Lcom/android/internal/view/menu/BaseMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    return-object p1
.end method

.method public greylist-max-o initForMenu(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;)V
    .registers 3

    .line 64
    iput-object p1, p0, Lcom/android/internal/view/menu/BaseMenuPresenter;->mContext:Landroid/content/Context;

    .line 65
    iget-object p1, p0, Lcom/android/internal/view/menu/BaseMenuPresenter;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/view/menu/BaseMenuPresenter;->mInflater:Landroid/view/LayoutInflater;

    .line 66
    iput-object p2, p0, Lcom/android/internal/view/menu/BaseMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    .line 67
    return-void
.end method

.method public greylist-max-o onCloseMenu(Lcom/android/internal/view/menu/MenuBuilder;Z)V
    .registers 4

    .line 204
    iget-object v0, p0, Lcom/android/internal/view/menu/BaseMenuPresenter;->mCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    if-eqz v0, :cond_9

    .line 205
    iget-object v0, p0, Lcom/android/internal/view/menu/BaseMenuPresenter;->mCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/view/menu/MenuPresenter$Callback;->onCloseMenu(Lcom/android/internal/view/menu/MenuBuilder;Z)V

    .line 207
    :cond_9
    return-void
.end method

.method public greylist-max-o onSubMenuSelected(Lcom/android/internal/view/menu/SubMenuBuilder;)Z
    .registers 3

    .line 210
    iget-object v0, p0, Lcom/android/internal/view/menu/BaseMenuPresenter;->mCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    if-eqz v0, :cond_b

    .line 211
    iget-object v0, p0, Lcom/android/internal/view/menu/BaseMenuPresenter;->mCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    invoke-interface {v0, p1}, Lcom/android/internal/view/menu/MenuPresenter$Callback;->onOpenSubMenu(Lcom/android/internal/view/menu/MenuBuilder;)Z

    move-result p1

    return p1

    .line 213
    :cond_b
    const/4 p1, 0x0

    return p1
.end method

.method public greylist-max-o setCallback(Lcom/android/internal/view/menu/MenuPresenter$Callback;)V
    .registers 2

    .line 146
    iput-object p1, p0, Lcom/android/internal/view/menu/BaseMenuPresenter;->mCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    .line 147
    return-void
.end method

.method public greylist-max-o setId(I)V
    .registers 2

    .line 233
    iput p1, p0, Lcom/android/internal/view/menu/BaseMenuPresenter;->mId:I

    .line 234
    return-void
.end method

.method public greylist-max-o shouldIncludeItem(ILcom/android/internal/view/menu/MenuItemImpl;)Z
    .registers 3

    .line 200
    const/4 p1, 0x1

    return p1
.end method

.method public greylist-max-o updateMenuView(Z)V
    .registers 11

    .line 84
    iget-object p1, p0, Lcom/android/internal/view/menu/BaseMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    check-cast p1, Landroid/view/ViewGroup;

    .line 85
    if-nez p1, :cond_7

    return-void

    .line 87
    :cond_7
    nop

    .line 88
    iget-object v0, p0, Lcom/android/internal/view/menu/BaseMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    const/4 v1, 0x0

    if-eqz v0, :cond_54

    .line 89
    iget-object v0, p0, Lcom/android/internal/view/menu/BaseMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuBuilder;->flagActionItems()V

    .line 90
    iget-object v0, p0, Lcom/android/internal/view/menu/BaseMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v0

    .line 91
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 92
    move v3, v1

    move v4, v3

    :goto_1e
    if-ge v3, v2, :cond_53

    .line 93
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/view/menu/MenuItemImpl;

    .line 94
    invoke-virtual {p0, v4, v5}, Lcom/android/internal/view/menu/BaseMenuPresenter;->shouldIncludeItem(ILcom/android/internal/view/menu/MenuItemImpl;)Z

    move-result v6

    if-eqz v6, :cond_50

    .line 95
    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 96
    instance-of v7, v6, Lcom/android/internal/view/menu/MenuView$ItemView;

    if-eqz v7, :cond_3c

    .line 97
    move-object v7, v6

    check-cast v7, Lcom/android/internal/view/menu/MenuView$ItemView;

    invoke-interface {v7}, Lcom/android/internal/view/menu/MenuView$ItemView;->getItemData()Lcom/android/internal/view/menu/MenuItemImpl;

    move-result-object v7

    goto :goto_3d

    :cond_3c
    const/4 v7, 0x0

    .line 98
    :goto_3d
    invoke-virtual {p0, v5, v6, p1}, Lcom/android/internal/view/menu/BaseMenuPresenter;->getItemView(Lcom/android/internal/view/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 99
    if-eq v5, v7, :cond_49

    .line 101
    invoke-virtual {v8, v1}, Landroid/view/View;->setPressed(Z)V

    .line 102
    invoke-virtual {v8}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 104
    :cond_49
    if-eq v8, v6, :cond_4e

    .line 105
    invoke-virtual {p0, v8, v4}, Lcom/android/internal/view/menu/BaseMenuPresenter;->addItemView(Landroid/view/View;I)V

    .line 107
    :cond_4e
    add-int/lit8 v4, v4, 0x1

    .line 92
    :cond_50
    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    :cond_53
    move v1, v4

    .line 113
    :cond_54
    :goto_54
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_63

    .line 114
    invoke-virtual {p0, p1, v1}, Lcom/android/internal/view/menu/BaseMenuPresenter;->filterLeftoverView(Landroid/view/ViewGroup;I)Z

    move-result v0

    if-nez v0, :cond_54

    .line 115
    add-int/lit8 v1, v1, 0x1

    goto :goto_54

    .line 118
    :cond_63
    return-void
.end method
