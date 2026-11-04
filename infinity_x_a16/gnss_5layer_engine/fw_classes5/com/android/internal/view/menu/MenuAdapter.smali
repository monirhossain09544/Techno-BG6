.class public Lcom/android/internal/view/menu/MenuAdapter;
.super Landroid/widget/BaseAdapter;
.source "MenuAdapter.java"


# instance fields
.field greylist-max-o mAdapterMenu:Lcom/android/internal/view/menu/MenuBuilder;

.field private greylist-max-o mExpandedIndex:I

.field private greylist-max-o mForceShowIcon:Z

.field private final greylist-max-o mInflater:Landroid/view/LayoutInflater;

.field private final greylist-max-o mItemLayoutRes:I

.field private final greylist-max-o mOverflowOnly:Z


# direct methods
.method public constructor greylist-max-o <init>(Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/LayoutInflater;ZI)V
    .registers 6

    .line 36
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 28
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/view/menu/MenuAdapter;->mExpandedIndex:I

    .line 37
    iput-boolean p3, p0, Lcom/android/internal/view/menu/MenuAdapter;->mOverflowOnly:Z

    .line 38
    iput-object p2, p0, Lcom/android/internal/view/menu/MenuAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 39
    iput-object p1, p0, Lcom/android/internal/view/menu/MenuAdapter;->mAdapterMenu:Lcom/android/internal/view/menu/MenuBuilder;

    .line 40
    iput p4, p0, Lcom/android/internal/view/menu/MenuAdapter;->mItemLayoutRes:I

    .line 41
    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuAdapter;->findExpandedIndex()V

    .line 42
    return-void
.end method


# virtual methods
.method greylist-max-o findExpandedIndex()V
    .registers 6

    .line 102
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuAdapter;->mAdapterMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuBuilder;->getExpandedItem()Lcom/android/internal/view/menu/MenuItemImpl;

    move-result-object v0

    .line 103
    if-eqz v0, :cond_23

    .line 104
    iget-object v1, p0, Lcom/android/internal/view/menu/MenuAdapter;->mAdapterMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v1

    .line 105
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 106
    const/4 v3, 0x0

    :goto_13
    if-ge v3, v2, :cond_23

    .line 107
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/view/menu/MenuItemImpl;

    .line 108
    if-ne v4, v0, :cond_20

    .line 109
    iput v3, p0, Lcom/android/internal/view/menu/MenuAdapter;->mExpandedIndex:I

    .line 110
    return-void

    .line 106
    :cond_20
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 114
    :cond_23
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/view/menu/MenuAdapter;->mExpandedIndex:I

    .line 115
    return-void
.end method

.method public greylist-max-o getAdapterMenu()Lcom/android/internal/view/menu/MenuBuilder;
    .registers 2

    .line 62
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuAdapter;->mAdapterMenu:Lcom/android/internal/view/menu/MenuBuilder;

    return-object v0
.end method

.method public whitelist getCount()I
    .registers 3

    .line 53
    iget-boolean v0, p0, Lcom/android/internal/view/menu/MenuAdapter;->mOverflowOnly:Z

    if-eqz v0, :cond_b

    .line 54
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuAdapter;->mAdapterMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_11

    :cond_b
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuAdapter;->mAdapterMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v0

    .line 55
    :goto_11
    iget v1, p0, Lcom/android/internal/view/menu/MenuAdapter;->mExpandedIndex:I

    if-gez v1, :cond_1a

    .line 56
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0

    .line 58
    :cond_1a
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public greylist-max-o getForceShowIcon()Z
    .registers 2

    .line 45
    iget-boolean v0, p0, Lcom/android/internal/view/menu/MenuAdapter;->mForceShowIcon:Z

    return v0
.end method

.method public blacklist getItem(I)Lcom/android/internal/view/menu/MenuItemImpl;
    .registers 4

    .line 66
    iget-boolean v0, p0, Lcom/android/internal/view/menu/MenuAdapter;->mOverflowOnly:Z

    if-eqz v0, :cond_b

    .line 67
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuAdapter;->mAdapterMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_11

    :cond_b
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuAdapter;->mAdapterMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v0

    .line 68
    :goto_11
    iget v1, p0, Lcom/android/internal/view/menu/MenuAdapter;->mExpandedIndex:I

    if-ltz v1, :cond_1b

    iget v1, p0, Lcom/android/internal/view/menu/MenuAdapter;->mExpandedIndex:I

    if-lt p1, v1, :cond_1b

    .line 69
    add-int/lit8 p1, p1, 0x1

    .line 71
    :cond_1b
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/view/menu/MenuItemImpl;

    return-object p1
.end method

.method public bridge synthetic whitelist getItem(I)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 25
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/MenuAdapter;->getItem(I)Lcom/android/internal/view/menu/MenuItemImpl;

    move-result-object p1

    return-object p1
.end method

.method public whitelist getItemId(I)J
    .registers 4

    .line 77
    int-to-long v0, p1

    return-wide v0
.end method

.method public whitelist getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 9

    .line 81
    const/4 v0, 0x0

    if-nez p2, :cond_b

    .line 82
    iget-object p2, p0, Lcom/android/internal/view/menu/MenuAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget v1, p0, Lcom/android/internal/view/menu/MenuAdapter;->mItemLayoutRes:I

    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 85
    :cond_b
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/MenuAdapter;->getItem(I)Lcom/android/internal/view/menu/MenuItemImpl;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/internal/view/menu/MenuItemImpl;->getGroupId()I

    move-result p3

    .line 87
    add-int/lit8 v1, p1, -0x1

    if-ltz v1, :cond_20

    invoke-virtual {p0, v1}, Lcom/android/internal/view/menu/MenuAdapter;->getItem(I)Lcom/android/internal/view/menu/MenuItemImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuItemImpl;->getGroupId()I

    move-result v1

    goto :goto_21

    :cond_20
    move v1, p3

    .line 89
    :goto_21
    move-object v2, p2

    check-cast v2, Lcom/android/internal/view/menu/ListMenuItemView;

    iget-object v3, p0, Lcom/android/internal/view/menu/MenuAdapter;->mAdapterMenu:Lcom/android/internal/view/menu/MenuBuilder;

    .line 90
    invoke-virtual {v3}, Lcom/android/internal/view/menu/MenuBuilder;->isGroupDividerEnabled()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_31

    if-eq p3, v1, :cond_31

    move p3, v4

    goto :goto_32

    :cond_31
    move p3, v0

    :goto_32
    invoke-virtual {v2, p3}, Lcom/android/internal/view/menu/ListMenuItemView;->setGroupDividerEnabled(Z)V

    .line 93
    move-object p3, p2

    check-cast p3, Lcom/android/internal/view/menu/MenuView$ItemView;

    .line 94
    iget-boolean v1, p0, Lcom/android/internal/view/menu/MenuAdapter;->mForceShowIcon:Z

    if-eqz v1, :cond_3f

    .line 95
    invoke-virtual {v2, v4}, Lcom/android/internal/view/menu/ListMenuItemView;->setForceShowIcon(Z)V

    .line 97
    :cond_3f
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/MenuAdapter;->getItem(I)Lcom/android/internal/view/menu/MenuItemImpl;

    move-result-object p1

    invoke-interface {p3, p1, v0}, Lcom/android/internal/view/menu/MenuView$ItemView;->initialize(Lcom/android/internal/view/menu/MenuItemImpl;I)V

    .line 98
    return-object p2
.end method

.method public whitelist notifyDataSetChanged()V
    .registers 1

    .line 119
    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuAdapter;->findExpandedIndex()V

    .line 120
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 121
    return-void
.end method

.method public greylist-max-o setForceShowIcon(Z)V
    .registers 2

    .line 49
    iput-boolean p1, p0, Lcom/android/internal/view/menu/MenuAdapter;->mForceShowIcon:Z

    .line 50
    return-void
.end method
