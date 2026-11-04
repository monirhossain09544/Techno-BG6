.class abstract Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;
.super Lcom/android/internal/app/ChooserActivity$ViewHolderBase;
.source "ChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ChooserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "ItemGroupViewHolder"
.end annotation


# instance fields
.field protected final blacklist mCells:[Landroid/view/View;

.field private final blacklist mColumnCount:I

.field private blacklist mItemIndices:[I

.field protected blacklist mMeasuredRowHeight:I


# direct methods
.method constructor blacklist <init>(ILandroid/view/View;I)V
    .registers 4

    .line 3737
    invoke-direct {p0, p2, p3}, Lcom/android/internal/app/ChooserActivity$ViewHolderBase;-><init>(Landroid/view/View;I)V

    .line 3738
    new-array p2, p1, [Landroid/view/View;

    iput-object p2, p0, Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;->mCells:[Landroid/view/View;

    .line 3739
    new-array p2, p1, [I

    iput-object p2, p0, Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;->mItemIndices:[I

    .line 3740
    iput p1, p0, Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;->mColumnCount:I

    .line 3741
    return-void
.end method


# virtual methods
.method abstract blacklist addView(ILandroid/view/View;)Landroid/view/ViewGroup;
.end method

.method public blacklist getColumnCount()I
    .registers 2

    .line 3754
    iget v0, p0, Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;->mColumnCount:I

    return v0
.end method

.method public blacklist getItemIndex(I)I
    .registers 3

    .line 3772
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;->mItemIndices:[I

    aget p1, v0, p1

    return p1
.end method

.method public blacklist getMeasuredRowHeight()I
    .registers 2

    .line 3764
    iget v0, p0, Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;->mMeasuredRowHeight:I

    return v0
.end method

.method abstract blacklist getRow(I)Landroid/view/ViewGroup;
.end method

.method abstract blacklist getRowByIndex(I)Landroid/view/ViewGroup;
.end method

.method public blacklist getView(I)Landroid/view/View;
    .registers 3

    .line 3776
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;->mCells:[Landroid/view/View;

    aget-object p1, v0, p1

    return-object p1
.end method

.method abstract blacklist getViewGroup()Landroid/view/ViewGroup;
.end method

.method public blacklist measure()V
    .registers 3

    .line 3758
    const/4 v0, 0x0

    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 3759
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;->getViewGroup()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1, v0, v0}, Landroid/view/ViewGroup;->measure(II)V

    .line 3760
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;->getViewGroup()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;->mMeasuredRowHeight:I

    .line 3761
    return-void
.end method

.method public blacklist setItemIndex(II)V
    .registers 4

    .line 3768
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;->mItemIndices:[I

    aput p2, v0, p1

    .line 3769
    return-void
.end method

.method abstract blacklist setViewVisibility(II)V
.end method
