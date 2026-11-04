.class Lcom/android/internal/app/ChooserActivity$SingleRowViewHolder;
.super Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;
.source "ChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ChooserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SingleRowViewHolder"
.end annotation


# instance fields
.field private final blacklist mRow:Landroid/view/ViewGroup;


# direct methods
.method constructor blacklist <init>(Landroid/view/ViewGroup;II)V
    .registers 4

    .line 3784
    invoke-direct {p0, p2, p1, p3}, Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;-><init>(ILandroid/view/View;I)V

    .line 3786
    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$SingleRowViewHolder;->mRow:Landroid/view/ViewGroup;

    .line 3787
    return-void
.end method


# virtual methods
.method public blacklist addView(ILandroid/view/View;)Landroid/view/ViewGroup;
    .registers 4

    .line 3803
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$SingleRowViewHolder;->mRow:Landroid/view/ViewGroup;

    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 3804
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$SingleRowViewHolder;->mCells:[Landroid/view/View;

    aput-object p2, v0, p1

    .line 3806
    iget-object p1, p0, Lcom/android/internal/app/ChooserActivity$SingleRowViewHolder;->mRow:Landroid/view/ViewGroup;

    return-object p1
.end method

.method public blacklist getRow(I)Landroid/view/ViewGroup;
    .registers 2

    .line 3798
    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/android/internal/app/ChooserActivity$SingleRowViewHolder;->mRow:Landroid/view/ViewGroup;

    return-object p1

    .line 3799
    :cond_5
    const/4 p1, 0x0

    return-object p1
.end method

.method public blacklist getRowByIndex(I)Landroid/view/ViewGroup;
    .registers 2

    .line 3794
    iget-object p1, p0, Lcom/android/internal/app/ChooserActivity$SingleRowViewHolder;->mRow:Landroid/view/ViewGroup;

    return-object p1
.end method

.method public blacklist getViewGroup()Landroid/view/ViewGroup;
    .registers 2

    .line 3790
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$SingleRowViewHolder;->mRow:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public blacklist setViewVisibility(II)V
    .registers 3

    .line 3810
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ChooserActivity$SingleRowViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 3811
    return-void
.end method
