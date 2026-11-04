.class Lcom/android/internal/app/ResolverActivity$ItemClickListener;
.super Ljava/lang/Object;
.source "ResolverActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ResolverActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ItemClickListener"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/app/ResolverActivity;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/app/ResolverActivity;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 2564
    iput-object p1, p0, Lcom/android/internal/app/ResolverActivity$ItemClickListener;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 2568
    instance-of p4, p1, Landroid/widget/ListView;

    const/4 p5, 0x0

    if-eqz p4, :cond_8

    check-cast p1, Landroid/widget/ListView;

    goto :goto_9

    :cond_8
    move-object p1, p5

    .line 2569
    :goto_9
    if-eqz p1, :cond_10

    .line 2570
    invoke-virtual {p1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result p1

    sub-int/2addr p3, p1

    .line 2572
    :cond_10
    if-gez p3, :cond_13

    .line 2574
    return-void

    .line 2577
    :cond_13
    iget-object p1, p0, Lcom/android/internal/app/ResolverActivity$ItemClickListener;->this$0:Lcom/android/internal/app/ResolverActivity;

    iget-object p1, p1, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {p1}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object p1

    .line 2578
    const/4 p4, 0x1

    invoke-virtual {p1, p3, p4}, Lcom/android/internal/app/ResolverListAdapter;->resolveInfoForPosition(IZ)Landroid/content/pm/ResolveInfo;

    move-result-object p1

    if-nez p1, :cond_23

    .line 2579
    return-void

    .line 2581
    :cond_23
    iget-object p1, p0, Lcom/android/internal/app/ResolverActivity$ItemClickListener;->this$0:Lcom/android/internal/app/ResolverActivity;

    iget-object p1, p1, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    .line 2582
    invoke-virtual {p1}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveAdapterView()Landroid/view/ViewGroup;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    .line 2583
    invoke-virtual {p1}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v0

    .line 2584
    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_37

    move v1, p4

    goto :goto_38

    :cond_37
    move v1, v2

    .line 2585
    :goto_38
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity$ItemClickListener;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v3}, Lcom/android/internal/app/ResolverActivity;->useLayoutWithDefault()Z

    move-result v3

    if-nez v3, :cond_9c

    if-eqz v1, :cond_4a

    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity$ItemClickListener;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-static {v3}, Lcom/android/internal/app/ResolverActivity;->-$$Nest$fgetmLastSelected(Lcom/android/internal/app/ResolverActivity;)I

    move-result v3

    if-eq v3, v0, :cond_9c

    :cond_4a
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity$ItemClickListener;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-static {v3}, Lcom/android/internal/app/ResolverActivity;->-$$Nest$fgetmAlwaysButton(Lcom/android/internal/app/ResolverActivity;)Landroid/widget/Button;

    move-result-object v3

    if-eqz v3, :cond_9c

    .line 2588
    iget-object p3, p0, Lcom/android/internal/app/ResolverActivity$ItemClickListener;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-static {p3, v1, v0, p4}, Lcom/android/internal/app/ResolverActivity;->-$$Nest$msetAlwaysButtonEnabled(Lcom/android/internal/app/ResolverActivity;ZIZ)V

    .line 2589
    iget-object p3, p0, Lcom/android/internal/app/ResolverActivity$ItemClickListener;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-static {p3}, Lcom/android/internal/app/ResolverActivity;->-$$Nest$fgetmOnceButton(Lcom/android/internal/app/ResolverActivity;)Landroid/widget/Button;

    move-result-object p3

    invoke-virtual {p3, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 2590
    if-eqz v1, :cond_6e

    .line 2591
    invoke-virtual {p1, v0}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    .line 2592
    iget-object p1, p0, Lcom/android/internal/app/ResolverActivity$ItemClickListener;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-static {p1}, Lcom/android/internal/app/ResolverActivity;->-$$Nest$fgetmOnceButton(Lcom/android/internal/app/ResolverActivity;)Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Button;->requestFocus()Z

    .line 2594
    :cond_6e
    iget-object p1, p0, Lcom/android/internal/app/ResolverActivity$ItemClickListener;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-static {p1, v0}, Lcom/android/internal/app/ResolverActivity;->-$$Nest$fputmLastSelected(Lcom/android/internal/app/ResolverActivity;I)V

    .line 2595
    iget-object p1, p0, Lcom/android/internal/app/ResolverActivity$ItemClickListener;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-static {p1}, Lcom/android/internal/app/ResolverActivity;->-$$Nest$fgetmLastSelectedItemView(Lcom/android/internal/app/ResolverActivity;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_84

    .line 2596
    iget-object p1, p0, Lcom/android/internal/app/ResolverActivity$ItemClickListener;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-static {p1}, Lcom/android/internal/app/ResolverActivity;->-$$Nest$fgetmLastSelectedItemView(Lcom/android/internal/app/ResolverActivity;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p5}, Landroid/view/View;->setStateDescription(Ljava/lang/CharSequence;)V

    .line 2598
    :cond_84
    iget-object p1, p0, Lcom/android/internal/app/ResolverActivity$ItemClickListener;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-static {p1, p2}, Lcom/android/internal/app/ResolverActivity;->-$$Nest$fputmLastSelectedItemView(Lcom/android/internal/app/ResolverActivity;Landroid/view/View;)V

    .line 2599
    iget-object p1, p0, Lcom/android/internal/app/ResolverActivity$ItemClickListener;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-static {p1}, Lcom/android/internal/app/ResolverActivity;->-$$Nest$fgetmLastSelectedItemView(Lcom/android/internal/app/ResolverActivity;)Landroid/view/View;

    move-result-object p1

    iget-object p2, p0, Lcom/android/internal/app/ResolverActivity$ItemClickListener;->this$0:Lcom/android/internal/app/ResolverActivity;

    .line 2600
    const p3, 0x10409d8

    invoke-virtual {p2, p3}, Lcom/android/internal/app/ResolverActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 2599
    invoke-virtual {p1, p2}, Landroid/view/View;->setStateDescription(Ljava/lang/CharSequence;)V

    goto :goto_a1

    .line 2602
    :cond_9c
    iget-object p1, p0, Lcom/android/internal/app/ResolverActivity$ItemClickListener;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {p1, p3, v2, p4}, Lcom/android/internal/app/ResolverActivity;->startSelected(IZZ)V

    .line 2604
    :goto_a1
    return-void
.end method

.method public whitelist onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .line 2608
    instance-of p2, p1, Landroid/widget/ListView;

    if-eqz p2, :cond_7

    check-cast p1, Landroid/widget/ListView;

    goto :goto_8

    :cond_7
    const/4 p1, 0x0

    .line 2609
    :goto_8
    if-eqz p1, :cond_f

    .line 2610
    invoke-virtual {p1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result p1

    sub-int/2addr p3, p1

    .line 2612
    :cond_f
    if-gez p3, :cond_13

    .line 2614
    const/4 p1, 0x0

    return p1

    .line 2616
    :cond_13
    iget-object p1, p0, Lcom/android/internal/app/ResolverActivity$ItemClickListener;->this$0:Lcom/android/internal/app/ResolverActivity;

    iget-object p1, p1, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {p1}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object p1

    .line 2617
    const/4 p2, 0x1

    invoke-virtual {p1, p3, p2}, Lcom/android/internal/app/ResolverListAdapter;->resolveInfoForPosition(IZ)Landroid/content/pm/ResolveInfo;

    move-result-object p1

    .line 2618
    iget-object p3, p0, Lcom/android/internal/app/ResolverActivity$ItemClickListener;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {p3, p1}, Lcom/android/internal/app/ResolverActivity;->showTargetDetails(Landroid/content/pm/ResolveInfo;)V

    .line 2619
    return p2
.end method
