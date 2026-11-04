.class abstract Lcom/android/internal/app/ChooserActivity$ViewHolderBase;
.super Lcom/android/internal/widget/RecyclerView$ViewHolder;
.source "ChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ChooserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "ViewHolderBase"
.end annotation


# instance fields
.field private blacklist mViewType:I


# direct methods
.method constructor blacklist <init>(Landroid/view/View;I)V
    .registers 3

    .line 3062
    invoke-direct {p0, p1}, Lcom/android/internal/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 3063
    iput p2, p0, Lcom/android/internal/app/ChooserActivity$ViewHolderBase;->mViewType:I

    .line 3064
    return-void
.end method


# virtual methods
.method blacklist getViewType()I
    .registers 2

    .line 3067
    iget v0, p0, Lcom/android/internal/app/ChooserActivity$ViewHolderBase;->mViewType:I

    return v0
.end method
