.class final Lcom/android/internal/app/ChooserActivity$ItemViewHolder;
.super Lcom/android/internal/app/ChooserActivity$ViewHolderBase;
.source "ChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ChooserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ItemViewHolder"
.end annotation


# instance fields
.field blacklist mListPosition:I

.field blacklist mWrappedViewHolder:Lcom/android/internal/app/ResolverListAdapter$ViewHolder;

.field final synthetic blacklist this$0:Lcom/android/internal/app/ChooserActivity;


# direct methods
.method public static synthetic blacklist $r8$lambda$Dh3KPvT_wSxON8G0Mrklxoi939c(Lcom/android/internal/app/ChooserActivity$ItemViewHolder;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/app/ChooserActivity$ItemViewHolder;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method constructor blacklist <init>(Lcom/android/internal/app/ChooserActivity;Landroid/view/View;ZI)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 3082
    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$ItemViewHolder;->this$0:Lcom/android/internal/app/ChooserActivity;

    .line 3083
    invoke-direct {p0, p2, p4}, Lcom/android/internal/app/ChooserActivity$ViewHolderBase;-><init>(Landroid/view/View;I)V

    .line 3080
    const/4 p1, -0x1

    iput p1, p0, Lcom/android/internal/app/ChooserActivity$ItemViewHolder;->mListPosition:I

    .line 3084
    new-instance p1, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;

    invoke-direct {p1, p2}, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$ItemViewHolder;->mWrappedViewHolder:Lcom/android/internal/app/ResolverListAdapter$ViewHolder;

    .line 3085
    if-eqz p3, :cond_19

    .line 3086
    new-instance p1, Lcom/android/internal/app/ChooserActivity$ItemViewHolder$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/internal/app/ChooserActivity$ItemViewHolder$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/app/ChooserActivity$ItemViewHolder;)V

    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3089
    :cond_19
    return-void
.end method

.method private synthetic blacklist lambda$new$0(Landroid/view/View;)V
    .registers 5

    .line 3086
    iget-object p1, p0, Lcom/android/internal/app/ChooserActivity$ItemViewHolder;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget v0, p0, Lcom/android/internal/app/ChooserActivity$ItemViewHolder;->mListPosition:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/internal/app/ChooserActivity;->startSelected(IZZ)V

    return-void
.end method
