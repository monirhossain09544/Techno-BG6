.class public Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;
.super Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;
.source "ResolverMultiProfilePagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/ResolverMultiProfilePagerAdapter$ResolverProfileDescriptor;
    }
.end annotation


# instance fields
.field private final blacklist mItems:[Lcom/android/internal/app/ResolverMultiProfilePagerAdapter$ResolverProfileDescriptor;

.field private blacklist mUseLayoutWithDefault:Z


# direct methods
.method constructor blacklist <init>(Landroid/content/Context;Lcom/android/internal/app/ResolverListAdapter;Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$EmptyStateProvider;Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$QuietModeManager;Landroid/os/UserHandle;Landroid/os/UserHandle;)V
    .registers 14

    .line 46
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;-><init>(Landroid/content/Context;ILcom/android/internal/app/AbstractMultiProfilePagerAdapter$EmptyStateProvider;Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$QuietModeManager;Landroid/os/UserHandle;Landroid/os/UserHandle;)V

    .line 48
    const/4 p1, 0x1

    new-array p1, p1, [Lcom/android/internal/app/ResolverMultiProfilePagerAdapter$ResolverProfileDescriptor;

    .line 49
    invoke-direct {p0, p2}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->createProfileDescriptor(Lcom/android/internal/app/ResolverListAdapter;)Lcom/android/internal/app/ResolverMultiProfilePagerAdapter$ResolverProfileDescriptor;

    move-result-object p2

    const/4 p3, 0x0

    aput-object p2, p1, p3

    iput-object p1, v0, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->mItems:[Lcom/android/internal/app/ResolverMultiProfilePagerAdapter$ResolverProfileDescriptor;

    .line 51
    return-void
.end method

.method constructor blacklist <init>(Landroid/content/Context;Lcom/android/internal/app/ResolverListAdapter;Lcom/android/internal/app/ResolverListAdapter;Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$EmptyStateProvider;Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$QuietModeManager;ILandroid/os/UserHandle;Landroid/os/UserHandle;)V
    .registers 16

    .line 61
    move-object v0, p0

    move-object v1, p1

    move-object v3, p4

    move-object v4, p5

    move v2, p6

    move-object v5, p7

    move-object v6, p8

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;-><init>(Landroid/content/Context;ILcom/android/internal/app/AbstractMultiProfilePagerAdapter$EmptyStateProvider;Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$QuietModeManager;Landroid/os/UserHandle;Landroid/os/UserHandle;)V

    .line 63
    const/4 p1, 0x2

    new-array p1, p1, [Lcom/android/internal/app/ResolverMultiProfilePagerAdapter$ResolverProfileDescriptor;

    .line 64
    invoke-direct {p0, p2}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->createProfileDescriptor(Lcom/android/internal/app/ResolverListAdapter;)Lcom/android/internal/app/ResolverMultiProfilePagerAdapter$ResolverProfileDescriptor;

    move-result-object p2

    const/4 p4, 0x0

    aput-object p2, p1, p4

    .line 65
    invoke-direct {p0, p3}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->createProfileDescriptor(Lcom/android/internal/app/ResolverListAdapter;)Lcom/android/internal/app/ResolverMultiProfilePagerAdapter$ResolverProfileDescriptor;

    move-result-object p2

    const/4 p3, 0x1

    aput-object p2, p1, p3

    iput-object p1, v0, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->mItems:[Lcom/android/internal/app/ResolverMultiProfilePagerAdapter$ResolverProfileDescriptor;

    .line 67
    return-void
.end method

.method private blacklist createProfileDescriptor(Lcom/android/internal/app/ResolverListAdapter;)Lcom/android/internal/app/ResolverMultiProfilePagerAdapter$ResolverProfileDescriptor;
    .registers 6

    .line 71
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 72
    nop

    .line 73
    const v1, 0x109012f

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 74
    new-instance v1, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter$ResolverProfileDescriptor;

    invoke-direct {v1, p0, v0, p1}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter$ResolverProfileDescriptor;-><init>(Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;Landroid/view/ViewGroup;Lcom/android/internal/app/ResolverListAdapter;)V

    return-object v1
.end method


# virtual methods
.method bridge synthetic blacklist getActiveAdapterView()Landroid/view/ViewGroup;
    .registers 2

    .line 34
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->getActiveAdapterView()Landroid/widget/ListView;

    move-result-object v0

    return-object v0
.end method

.method blacklist getActiveAdapterView()Landroid/widget/ListView;
    .registers 2

    .line 158
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->getCurrentPage()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->getListViewForIndex(I)Landroid/widget/ListView;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;
    .registers 2

    .line 125
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->getCurrentPage()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->getAdapterForIndex(I)Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getAdapterForIndex(I)Lcom/android/internal/app/ResolverListAdapter;
    .registers 3

    .line 100
    iget-object v0, p0, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->mItems:[Lcom/android/internal/app/ResolverMultiProfilePagerAdapter$ResolverProfileDescriptor;

    aget-object p1, v0, p1

    invoke-static {p1}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter$ResolverProfileDescriptor;->-$$Nest$fgetresolverListAdapter(Lcom/android/internal/app/ResolverMultiProfilePagerAdapter$ResolverProfileDescriptor;)Lcom/android/internal/app/ResolverListAdapter;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist getAdapterForIndex(I)Ljava/lang/Object;
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
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->getAdapterForIndex(I)Lcom/android/internal/app/ResolverListAdapter;

    move-result-object p1

    return-object p1
.end method

.method blacklist getCurrentRootAdapter()Lcom/android/internal/app/ResolverListAdapter;
    .registers 2

    .line 153
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic blacklist getCurrentRootAdapter()Ljava/lang/Object;
    .registers 2

    .line 34
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->getCurrentRootAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v0

    return-object v0
.end method

.method blacklist getInactiveAdapterView()Landroid/view/ViewGroup;
    .registers 3

    .line 164
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_9

    .line 165
    const/4 v0, 0x0

    return-object v0

    .line 167
    :cond_9
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->getCurrentPage()I

    move-result v0

    sub-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->getListViewForIndex(I)Landroid/widget/ListView;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getInactiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;
    .registers 3

    .line 131
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_9

    .line 132
    const/4 v0, 0x0

    return-object v0

    .line 134
    :cond_9
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->getCurrentPage()I

    move-result v0

    sub-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->getAdapterForIndex(I)Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist getItem(I)Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$ProfileDescriptor;
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
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->getItem(I)Lcom/android/internal/app/ResolverMultiProfilePagerAdapter$ResolverProfileDescriptor;

    move-result-object p1

    return-object p1
.end method

.method public blacklist getItem(I)Lcom/android/internal/app/ResolverMultiProfilePagerAdapter$ResolverProfileDescriptor;
    .registers 3

    .line 83
    iget-object v0, p0, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->mItems:[Lcom/android/internal/app/ResolverMultiProfilePagerAdapter$ResolverProfileDescriptor;

    aget-object p1, v0, p1

    return-object p1
.end method

.method blacklist getItemCount()I
    .registers 2

    .line 88
    iget-object v0, p0, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->mItems:[Lcom/android/internal/app/ResolverMultiProfilePagerAdapter$ResolverProfileDescriptor;

    array-length v0, v0

    return v0
.end method

.method blacklist getListAdapterForUserHandle(Landroid/os/UserHandle;)Lcom/android/internal/app/ResolverListAdapter;
    .registers 3

    .line 112
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->getPersonalListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverListAdapter;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_34

    .line 113
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->getCloneUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    goto :goto_34

    .line 115
    :cond_19
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->getWorkListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v0

    if-eqz v0, :cond_32

    .line 116
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->getWorkListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverListAdapter;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_32

    .line 117
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->getWorkListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object p1

    return-object p1

    .line 119
    :cond_32
    const/4 p1, 0x0

    return-object p1

    .line 114
    :cond_34
    :goto_34
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->getPersonalListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object p1

    return-object p1
.end method

.method blacklist getListViewForIndex(I)Landroid/widget/ListView;
    .registers 2

    .line 78
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->getItem(I)Lcom/android/internal/app/ResolverMultiProfilePagerAdapter$ResolverProfileDescriptor;

    move-result-object p1

    iget-object p1, p1, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter$ResolverProfileDescriptor;->listView:Landroid/widget/ListView;

    return-object p1
.end method

.method public blacklist getPersonalListAdapter()Lcom/android/internal/app/ResolverListAdapter;
    .registers 2

    .line 139
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->getAdapterForIndex(I)Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getWorkListAdapter()Lcom/android/internal/app/ResolverListAdapter;
    .registers 3

    .line 145
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_9

    .line 146
    const/4 v0, 0x0

    return-object v0

    .line 148
    :cond_9
    invoke-virtual {p0, v1}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->getAdapterForIndex(I)Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public blacklist instantiateItem(Landroid/view/ViewGroup;I)Landroid/view/ViewGroup;
    .registers 3

    .line 105
    invoke-virtual {p0, p2}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->setupListAdapter(I)V

    .line 106
    invoke-super {p0, p1, p2}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Landroid/view/ViewGroup;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
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
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Landroid/view/ViewGroup;

    move-result-object p1

    return-object p1
.end method

.method blacklist setUseLayoutWithDefault(Z)V
    .registers 2

    .line 171
    iput-boolean p1, p0, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->mUseLayoutWithDefault:Z

    .line 172
    return-void
.end method

.method protected blacklist setupContainerPadding(Landroid/view/View;)V
    .registers 6

    .line 176
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->mUseLayoutWithDefault:Z

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    .line 177
    :goto_a
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    .line 178
    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    .line 177
    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 179
    return-void
.end method

.method blacklist setupListAdapter(I)V
    .registers 3

    .line 93
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->getItem(I)Lcom/android/internal/app/ResolverMultiProfilePagerAdapter$ResolverProfileDescriptor;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter$ResolverProfileDescriptor;->listView:Landroid/widget/ListView;

    .line 94
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter;->getItem(I)Lcom/android/internal/app/ResolverMultiProfilePagerAdapter$ResolverProfileDescriptor;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/app/ResolverMultiProfilePagerAdapter$ResolverProfileDescriptor;->-$$Nest$fgetresolverListAdapter(Lcom/android/internal/app/ResolverMultiProfilePagerAdapter$ResolverProfileDescriptor;)Lcom/android/internal/app/ResolverListAdapter;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 95
    return-void
.end method
