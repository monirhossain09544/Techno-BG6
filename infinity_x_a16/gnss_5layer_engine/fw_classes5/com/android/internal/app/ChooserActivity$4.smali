.class Lcom/android/internal/app/ChooserActivity$4;
.super Lcom/android/internal/widget/RecyclerView$OnScrollListener;
.source "ChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/ChooserActivity;->setupScrollListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/app/ChooserActivity;

.field final synthetic blacklist val$chooserHeaderScrollElevation:F

.field final synthetic blacklist val$defaultElevation:F

.field final synthetic blacklist val$elevatedView:Landroid/view/View;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/app/ChooserActivity;Landroid/view/View;FF)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 2899
    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$4;->this$0:Lcom/android/internal/app/ChooserActivity;

    iput-object p2, p0, Lcom/android/internal/app/ChooserActivity$4;->val$elevatedView:Landroid/view/View;

    iput p3, p0, Lcom/android/internal/app/ChooserActivity$4;->val$chooserHeaderScrollElevation:F

    iput p4, p0, Lcom/android/internal/app/ChooserActivity$4;->val$defaultElevation:F

    invoke-direct {p0}, Lcom/android/internal/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onScrollStateChanged(Lcom/android/internal/widget/RecyclerView;I)V
    .registers 4

    .line 2901
    const/4 p1, 0x0

    const/4 v0, 0x1

    if-nez p2, :cond_17

    .line 2902
    iget-object p2, p0, Lcom/android/internal/app/ChooserActivity$4;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {p2}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmScrollStatus(Lcom/android/internal/app/ChooserActivity;)I

    move-result p2

    if-ne p2, v0, :cond_2b

    .line 2903
    iget-object p2, p0, Lcom/android/internal/app/ChooserActivity$4;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {p2, p1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fputmScrollStatus(Lcom/android/internal/app/ChooserActivity;I)V

    .line 2904
    iget-object p1, p0, Lcom/android/internal/app/ChooserActivity$4;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {p1, v0}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$msetHorizontalScrollingEnabled(Lcom/android/internal/app/ChooserActivity;Z)V

    goto :goto_2b

    .line 2906
    :cond_17
    if-ne p2, v0, :cond_2b

    .line 2907
    iget-object p2, p0, Lcom/android/internal/app/ChooserActivity$4;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {p2}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmScrollStatus(Lcom/android/internal/app/ChooserActivity;)I

    move-result p2

    if-nez p2, :cond_2b

    .line 2908
    iget-object p2, p0, Lcom/android/internal/app/ChooserActivity$4;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {p2, v0}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fputmScrollStatus(Lcom/android/internal/app/ChooserActivity;I)V

    .line 2909
    iget-object p2, p0, Lcom/android/internal/app/ChooserActivity$4;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {p2, p1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$msetHorizontalScrollingEnabled(Lcom/android/internal/app/ChooserActivity;Z)V

    .line 2912
    :cond_2b
    :goto_2b
    return-void
.end method

.method public blacklist onScrolled(Lcom/android/internal/widget/RecyclerView;II)V
    .registers 4

    .line 2915
    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView;->getChildCount()I

    move-result p2

    if-lez p2, :cond_1f

    .line 2916
    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView;->getLayoutManager()Lcom/android/internal/widget/RecyclerView$LayoutManager;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object p1

    .line 2917
    if-eqz p1, :cond_17

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    if-gez p1, :cond_1f

    .line 2918
    :cond_17
    iget-object p1, p0, Lcom/android/internal/app/ChooserActivity$4;->val$elevatedView:Landroid/view/View;

    iget p2, p0, Lcom/android/internal/app/ChooserActivity$4;->val$chooserHeaderScrollElevation:F

    invoke-virtual {p1, p2}, Landroid/view/View;->setElevation(F)V

    .line 2919
    return-void

    .line 2923
    :cond_1f
    iget-object p1, p0, Lcom/android/internal/app/ChooserActivity$4;->val$elevatedView:Landroid/view/View;

    iget p2, p0, Lcom/android/internal/app/ChooserActivity$4;->val$defaultElevation:F

    invoke-virtual {p1, p2}, Landroid/view/View;->setElevation(F)V

    .line 2924
    return-void
.end method
