.class Lcom/android/internal/app/ChooserTargetActionsDialogFragment$VH;
.super Lcom/android/internal/widget/RecyclerView$ViewHolder;
.source "ChooserTargetActionsDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ChooserTargetActionsDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VH"
.end annotation


# instance fields
.field blacklist mIcon:Landroid/widget/ImageView;

.field blacklist mLabel:Landroid/widget/TextView;

.field final synthetic blacklist this$0:Lcom/android/internal/app/ChooserTargetActionsDialogFragment;


# direct methods
.method public static synthetic blacklist $r8$lambda$P_0N-sYh3Yp8Vp6pd7ZHI04EHkM(Lcom/android/internal/app/ChooserTargetActionsDialogFragment$VH;ILandroid/view/View;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/internal/app/ChooserTargetActionsDialogFragment$VH;->lambda$bind$0(ILandroid/view/View;)V

    return-void
.end method

.method constructor blacklist <init>(Lcom/android/internal/app/ChooserTargetActionsDialogFragment;Landroid/view/View;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 184
    iput-object p1, p0, Lcom/android/internal/app/ChooserTargetActionsDialogFragment$VH;->this$0:Lcom/android/internal/app/ChooserTargetActionsDialogFragment;

    .line 185
    invoke-direct {p0, p2}, Lcom/android/internal/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 186
    const p1, 0x1020582

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/internal/app/ChooserTargetActionsDialogFragment$VH;->mLabel:Landroid/widget/TextView;

    .line 187
    const p1, 0x1020006

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/internal/app/ChooserTargetActionsDialogFragment$VH;->mIcon:Landroid/widget/ImageView;

    .line 188
    return-void
.end method

.method private synthetic blacklist lambda$bind$0(ILandroid/view/View;)V
    .registers 4

    .line 200
    iget-object p2, p0, Lcom/android/internal/app/ChooserTargetActionsDialogFragment$VH;->this$0:Lcom/android/internal/app/ChooserTargetActionsDialogFragment;

    iget-object v0, p0, Lcom/android/internal/app/ChooserTargetActionsDialogFragment$VH;->this$0:Lcom/android/internal/app/ChooserTargetActionsDialogFragment;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserTargetActionsDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {p2, v0, p1}, Lcom/android/internal/app/ChooserTargetActionsDialogFragment;->onClick(Landroid/content/DialogInterface;I)V

    return-void
.end method


# virtual methods
.method public blacklist bind(Landroid/util/Pair;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Landroid/graphics/drawable/Drawable;",
            "Ljava/lang/CharSequence;",
            ">;I)V"
        }
    .end annotation

    .line 191
    iget-object v0, p0, Lcom/android/internal/app/ChooserTargetActionsDialogFragment$VH;->mLabel:Landroid/widget/TextView;

    iget-object v1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 193
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-nez v0, :cond_15

    .line 194
    iget-object p1, p0, Lcom/android/internal/app/ChooserTargetActionsDialogFragment$VH;->mIcon:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_24

    .line 196
    :cond_15
    iget-object v0, p0, Lcom/android/internal/app/ChooserTargetActionsDialogFragment$VH;->mIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 197
    iget-object v0, p0, Lcom/android/internal/app/ChooserTargetActionsDialogFragment$VH;->mIcon:Landroid/widget/ImageView;

    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 200
    :goto_24
    iget-object p1, p0, Lcom/android/internal/app/ChooserTargetActionsDialogFragment$VH;->itemView:Landroid/view/View;

    new-instance v0, Lcom/android/internal/app/ChooserTargetActionsDialogFragment$VH$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2}, Lcom/android/internal/app/ChooserTargetActionsDialogFragment$VH$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/app/ChooserTargetActionsDialogFragment$VH;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 201
    return-void
.end method
