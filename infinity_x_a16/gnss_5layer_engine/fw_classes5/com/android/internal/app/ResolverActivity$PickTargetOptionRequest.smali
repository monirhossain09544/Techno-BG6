.class Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;
.super Landroid/app/VoiceInteractor$PickOptionRequest;
.source "ResolverActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ResolverActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PickTargetOptionRequest"
.end annotation


# direct methods
.method public constructor blacklist <init>(Landroid/app/VoiceInteractor$Prompt;[Landroid/app/VoiceInteractor$PickOptionRequest$Option;Landroid/os/Bundle;)V
    .registers 4

    .line 2633
    invoke-direct {p0, p1, p2, p3}, Landroid/app/VoiceInteractor$PickOptionRequest;-><init>(Landroid/app/VoiceInteractor$Prompt;[Landroid/app/VoiceInteractor$PickOptionRequest$Option;Landroid/os/Bundle;)V

    .line 2634
    return-void
.end method


# virtual methods
.method public whitelist onCancel()V
    .registers 3

    .line 2638
    invoke-super {p0}, Landroid/app/VoiceInteractor$PickOptionRequest;->onCancel()V

    .line 2639
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ResolverActivity;

    .line 2640
    if-eqz v0, :cond_12

    .line 2641
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/app/ResolverActivity;->-$$Nest$fputmPickOptionRequest(Lcom/android/internal/app/ResolverActivity;Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;)V

    .line 2642
    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity;->finish()V

    .line 2644
    :cond_12
    return-void
.end method

.method public whitelist onPickOptionResult(Z[Landroid/app/VoiceInteractor$PickOptionRequest$Option;Landroid/os/Bundle;)V
    .registers 5

    .line 2648
    invoke-super {p0, p1, p2, p3}, Landroid/app/VoiceInteractor$PickOptionRequest;->onPickOptionResult(Z[Landroid/app/VoiceInteractor$PickOptionRequest$Option;Landroid/os/Bundle;)V

    .line 2649
    array-length p1, p2

    const/4 p3, 0x1

    if-eq p1, p3, :cond_8

    .line 2652
    return-void

    .line 2655
    :cond_8
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;->getActivity()Landroid/app/Activity;

    move-result-object p1

    check-cast p1, Lcom/android/internal/app/ResolverActivity;

    .line 2656
    if-eqz p1, :cond_2e

    .line 2657
    iget-object p3, p1, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {p3}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object p3

    const/4 v0, 0x0

    aget-object p2, p2, v0

    .line 2658
    invoke-virtual {p2}, Landroid/app/VoiceInteractor$PickOptionRequest$Option;->getIndex()I

    move-result p2

    invoke-virtual {p3, p2}, Lcom/android/internal/app/ResolverListAdapter;->getItem(I)Lcom/android/internal/app/chooser/TargetInfo;

    move-result-object p2

    .line 2659
    invoke-virtual {p1, p2, v0}, Lcom/android/internal/app/ResolverActivity;->onTargetSelected(Lcom/android/internal/app/chooser/TargetInfo;Z)Z

    move-result p2

    if-eqz p2, :cond_2e

    .line 2660
    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/android/internal/app/ResolverActivity;->-$$Nest$fputmPickOptionRequest(Lcom/android/internal/app/ResolverActivity;Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;)V

    .line 2661
    invoke-virtual {p1}, Lcom/android/internal/app/ResolverActivity;->finish()V

    .line 2664
    :cond_2e
    return-void
.end method
