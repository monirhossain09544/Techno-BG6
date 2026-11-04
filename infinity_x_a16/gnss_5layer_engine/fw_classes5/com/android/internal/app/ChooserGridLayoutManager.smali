.class public Lcom/android/internal/app/ChooserGridLayoutManager;
.super Lcom/android/internal/widget/GridLayoutManager;
.source "ChooserGridLayoutManager.java"


# instance fields
.field private blacklist mAllAppListGroupTitle:Ljava/lang/CharSequence;

.field private blacklist mRecyclerView:Lcom/android/internal/widget/RecyclerView;

.field private blacklist mShortcutGroupTitle:Ljava/lang/CharSequence;

.field private blacklist mSuggestedAppsGroupTitle:Ljava/lang/CharSequence;

.field private blacklist mVerticalScrollEnabled:Z


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;I)V
    .registers 3

    .line 66
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 40
    const-string p2, ""

    iput-object p2, p0, Lcom/android/internal/app/ChooserGridLayoutManager;->mShortcutGroupTitle:Ljava/lang/CharSequence;

    .line 41
    iput-object p2, p0, Lcom/android/internal/app/ChooserGridLayoutManager;->mSuggestedAppsGroupTitle:Ljava/lang/CharSequence;

    .line 42
    iput-object p2, p0, Lcom/android/internal/app/ChooserGridLayoutManager;->mAllAppListGroupTitle:Ljava/lang/CharSequence;

    .line 45
    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/android/internal/app/ChooserGridLayoutManager;->mVerticalScrollEnabled:Z

    .line 67
    invoke-direct {p0, p1}, Lcom/android/internal/app/ChooserGridLayoutManager;->readGroupTitles(Landroid/content/Context;)V

    .line 68
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;IIZ)V
    .registers 5

    .line 79
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/widget/GridLayoutManager;-><init>(Landroid/content/Context;IIZ)V

    .line 40
    const-string p2, ""

    iput-object p2, p0, Lcom/android/internal/app/ChooserGridLayoutManager;->mShortcutGroupTitle:Ljava/lang/CharSequence;

    .line 41
    iput-object p2, p0, Lcom/android/internal/app/ChooserGridLayoutManager;->mSuggestedAppsGroupTitle:Ljava/lang/CharSequence;

    .line 42
    iput-object p2, p0, Lcom/android/internal/app/ChooserGridLayoutManager;->mAllAppListGroupTitle:Ljava/lang/CharSequence;

    .line 45
    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/android/internal/app/ChooserGridLayoutManager;->mVerticalScrollEnabled:Z

    .line 80
    invoke-direct {p0, p1}, Lcom/android/internal/app/ChooserGridLayoutManager;->readGroupTitles(Landroid/content/Context;)V

    .line 81
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5

    .line 55
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/widget/GridLayoutManager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 40
    const-string p2, ""

    iput-object p2, p0, Lcom/android/internal/app/ChooserGridLayoutManager;->mShortcutGroupTitle:Ljava/lang/CharSequence;

    .line 41
    iput-object p2, p0, Lcom/android/internal/app/ChooserGridLayoutManager;->mSuggestedAppsGroupTitle:Ljava/lang/CharSequence;

    .line 42
    iput-object p2, p0, Lcom/android/internal/app/ChooserGridLayoutManager;->mAllAppListGroupTitle:Ljava/lang/CharSequence;

    .line 45
    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/android/internal/app/ChooserGridLayoutManager;->mVerticalScrollEnabled:Z

    .line 56
    invoke-direct {p0, p1}, Lcom/android/internal/app/ChooserGridLayoutManager;->readGroupTitles(Landroid/content/Context;)V

    .line 57
    return-void
.end method

.method private blacklist createShortcutsA11yCollectionInfo(Landroid/view/ViewGroup;)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;
    .registers 11

    .line 161
    nop

    .line 162
    nop

    .line 163
    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    move v3, v2

    :goto_6
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v1, v4, :cond_4a

    .line 164
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 165
    nop

    .line 166
    instance-of v5, v4, Landroid/view/ViewGroup;

    if-eqz v5, :cond_3e

    move-object v5, v4

    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_3e

    .line 167
    move v4, v0

    move v6, v4

    :goto_20
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    if-ge v4, v7, :cond_3f

    .line 168
    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 169
    if-eqz v7, :cond_3b

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-nez v8, :cond_3b

    .line 170
    add-int/lit8 v6, v6, 0x1

    .line 171
    instance-of v7, v7, Landroid/widget/TextView;

    if-eqz v7, :cond_3b

    .line 174
    nop

    .line 175
    const/4 v6, 0x1

    goto :goto_3f

    .line 167
    :cond_3b
    add-int/lit8 v4, v4, 0x1

    goto :goto_20

    .line 180
    :cond_3e
    move v6, v0

    :cond_3f
    :goto_3f
    if-lez v6, :cond_47

    .line 181
    add-int/lit8 v2, v2, 0x1

    .line 182
    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 163
    :cond_47
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 185
    :cond_4a
    invoke-static {v2, v3, v0}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->obtain(IIZ)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    move-result-object p1

    return-object p1
.end method

.method private blacklist createSuggestedAppsA11yCollectionInfo(Landroid/view/ViewGroup;)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;
    .registers 6

    .line 189
    nop

    .line 190
    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_4
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_19

    .line 191
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 192
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_16

    .line 193
    add-int/lit8 v2, v2, 0x1

    .line 190
    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 196
    :cond_19
    const/4 p1, 0x1

    invoke-static {p1, v2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->obtain(IIZ)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    move-result-object p1

    return-object p1
.end method

.method private blacklist readGroupTitles(Landroid/content/Context;)V
    .registers 3

    .line 84
    const v0, 0x10409ff

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/ChooserGridLayoutManager;->mShortcutGroupTitle:Ljava/lang/CharSequence;

    .line 85
    const v0, 0x1040a6e

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/ChooserGridLayoutManager;->mSuggestedAppsGroupTitle:Ljava/lang/CharSequence;

    .line 86
    const v0, 0x104014c

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/app/ChooserGridLayoutManager;->mAllAppListGroupTitle:Ljava/lang/CharSequence;

    .line 87
    return-void
.end method


# virtual methods
.method public blacklist canScrollVertically()Z
    .registers 2

    .line 114
    iget-boolean v0, p0, Lcom/android/internal/app/ChooserGridLayoutManager;->mVerticalScrollEnabled:Z

    if-eqz v0, :cond_c

    invoke-super {p0}, Lcom/android/internal/widget/GridLayoutManager;->canScrollVertically()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public blacklist getRowCountForAccessibility(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;)I
    .registers 3

    .line 105
    invoke-super {p0, p1, p2}, Lcom/android/internal/widget/GridLayoutManager;->getRowCountForAccessibility(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;)I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    return p1
.end method

.method public blacklist isLayoutHierarchical(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;)Z
    .registers 3

    .line 157
    const/4 p1, 0x1

    return p1
.end method

.method public blacklist onAttachedToWindow(Lcom/android/internal/widget/RecyclerView;)V
    .registers 2

    .line 91
    invoke-super {p0, p1}, Lcom/android/internal/widget/GridLayoutManager;->onAttachedToWindow(Lcom/android/internal/widget/RecyclerView;)V

    .line 92
    iput-object p1, p0, Lcom/android/internal/app/ChooserGridLayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    .line 93
    return-void
.end method

.method public blacklist onDetachedFromWindow(Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$Recycler;)V
    .registers 3

    .line 97
    invoke-super {p0, p1, p2}, Lcom/android/internal/widget/GridLayoutManager;->onDetachedFromWindow(Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$Recycler;)V

    .line 98
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/internal/app/ChooserGridLayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    .line 99
    return-void
.end method

.method public blacklist onInitializeAccessibilityNodeInfo(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 4

    .line 151
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/widget/GridLayoutManager;->onInitializeAccessibilityNodeInfo(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 152
    iget-object p1, p0, Lcom/android/internal/app/ChooserGridLayoutManager;->mAllAppListGroupTitle:Ljava/lang/CharSequence;

    invoke-virtual {p3, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContainerTitle(Ljava/lang/CharSequence;)V

    .line 153
    return-void
.end method

.method public blacklist onInitializeAccessibilityNodeInfoForItem(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 6

    .line 123
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/internal/widget/GridLayoutManager;->onInitializeAccessibilityNodeInfoForItem(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 124
    instance-of p1, p3, Landroid/view/ViewGroup;

    if-eqz p1, :cond_70

    .line 125
    invoke-virtual {p3}, Landroid/view/View;->getId()I

    move-result p1

    const p2, 0x1020525

    if-ne p1, p2, :cond_28

    .line 126
    const-class p1, Landroid/widget/ListView;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 127
    iget-object p1, p0, Lcom/android/internal/app/ChooserGridLayoutManager;->mShortcutGroupTitle:Ljava/lang/CharSequence;

    invoke-virtual {p4, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContainerTitle(Ljava/lang/CharSequence;)V

    .line 128
    check-cast p3, Landroid/view/ViewGroup;

    invoke-direct {p0, p3}, Lcom/android/internal/app/ChooserGridLayoutManager;->createShortcutsA11yCollectionInfo(Landroid/view/ViewGroup;)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    move-result-object p1

    invoke-virtual {p4, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;)V

    goto :goto_70

    .line 129
    :cond_28
    invoke-virtual {p3}, Landroid/view/View;->getId()I

    move-result p1

    const p2, 0x102027a

    if-ne p1, p2, :cond_70

    .line 131
    iget-object p1, p0, Lcom/android/internal/app/ChooserGridLayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    const/4 p2, 0x0

    if-nez p1, :cond_38

    move-object p1, p2

    goto :goto_3e

    :cond_38
    iget-object p1, p0, Lcom/android/internal/app/ChooserGridLayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView;->getAdapter()Lcom/android/internal/widget/RecyclerView$Adapter;

    move-result-object p1

    .line 132
    :goto_3e
    instance-of v0, p1, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;

    if-eqz v0, :cond_49

    .line 133
    check-cast p1, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;

    invoke-virtual {p1}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->getListAdapter()Lcom/android/internal/app/ChooserListAdapter;

    move-result-object p2

    goto :goto_4a

    .line 134
    :cond_49
    nop

    .line 135
    :goto_4a
    const-class p1, Landroid/widget/ListView;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 136
    check-cast p3, Landroid/view/ViewGroup;

    invoke-direct {p0, p3}, Lcom/android/internal/app/ChooserGridLayoutManager;->createSuggestedAppsA11yCollectionInfo(Landroid/view/ViewGroup;)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    move-result-object p1

    invoke-virtual {p4, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;)V

    .line 137
    if-eqz p2, :cond_6b

    invoke-virtual {p2}, Lcom/android/internal/app/ChooserListAdapter;->getAlphaTargetCount()I

    move-result p1

    if-lez p1, :cond_65

    goto :goto_6b

    .line 142
    :cond_65
    iget-object p1, p0, Lcom/android/internal/app/ChooserGridLayoutManager;->mAllAppListGroupTitle:Ljava/lang/CharSequence;

    invoke-virtual {p4, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContainerTitle(Ljava/lang/CharSequence;)V

    goto :goto_70

    .line 138
    :cond_6b
    :goto_6b
    iget-object p1, p0, Lcom/android/internal/app/ChooserGridLayoutManager;->mSuggestedAppsGroupTitle:Ljava/lang/CharSequence;

    invoke-virtual {p4, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContainerTitle(Ljava/lang/CharSequence;)V

    .line 146
    :cond_70
    :goto_70
    return-void
.end method

.method blacklist setVerticalScrollEnabled(Z)V
    .registers 2

    .line 109
    iput-boolean p1, p0, Lcom/android/internal/app/ChooserGridLayoutManager;->mVerticalScrollEnabled:Z

    .line 110
    return-void
.end method
