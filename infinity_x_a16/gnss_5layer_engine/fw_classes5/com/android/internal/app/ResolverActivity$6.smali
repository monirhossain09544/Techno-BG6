.class Lcom/android/internal/app/ResolverActivity$6;
.super Landroid/content/BroadcastReceiver;
.source "ResolverActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/ResolverActivity;->createWorkProfileStateReceiver()Landroid/content/BroadcastReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
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

    .line 2462
    iput-object p1, p0, Lcom/android/internal/app/ResolverActivity$6;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .line 2465
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 2466
    const-string v0, "android.intent.action.USER_UNLOCKED"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 2467
    const-string v0, "android.intent.action.MANAGED_PROFILE_UNAVAILABLE"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 2468
    const-string v0, "android.intent.action.MANAGED_PROFILE_AVAILABLE"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1d

    .line 2469
    return-void

    .line 2472
    :cond_1d
    const-string p1, "android.intent.extra.user_handle"

    const/4 v0, -0x1

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 2474
    iget-object p2, p0, Lcom/android/internal/app/ResolverActivity$6;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {p2}, Lcom/android/internal/app/ResolverActivity;->getWorkProfileUserHandle()Landroid/os/UserHandle;

    move-result-object p2

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p2

    if-eq p1, p2, :cond_31

    .line 2475
    return-void

    .line 2478
    :cond_31
    iget-object p1, p0, Lcom/android/internal/app/ResolverActivity$6;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-static {p1}, Lcom/android/internal/app/ResolverActivity;->-$$Nest$misWorkProfileEnabled(Lcom/android/internal/app/ResolverActivity;)Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_50

    .line 2479
    iget-object p1, p0, Lcom/android/internal/app/ResolverActivity$6;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-static {p1}, Lcom/android/internal/app/ResolverActivity;->-$$Nest$fgetmWorkProfileHasBeenEnabled(Lcom/android/internal/app/ResolverActivity;)Z

    move-result p1

    if-eqz p1, :cond_43

    .line 2480
    return-void

    .line 2483
    :cond_43
    iget-object p1, p0, Lcom/android/internal/app/ResolverActivity$6;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-static {p1, p2}, Lcom/android/internal/app/ResolverActivity;->-$$Nest$fputmWorkProfileHasBeenEnabled(Lcom/android/internal/app/ResolverActivity;Z)V

    .line 2484
    iget-object p1, p0, Lcom/android/internal/app/ResolverActivity$6;->this$0:Lcom/android/internal/app/ResolverActivity;

    iget-object p1, p1, Lcom/android/internal/app/ResolverActivity;->mQuietModeManager:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$QuietModeManager;

    invoke-interface {p1}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$QuietModeManager;->markWorkProfileEnabledBroadcastReceived()V

    goto :goto_56

    .line 2487
    :cond_50
    iget-object p1, p0, Lcom/android/internal/app/ResolverActivity$6;->this$0:Lcom/android/internal/app/ResolverActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/internal/app/ResolverActivity;->-$$Nest$fputmWorkProfileHasBeenEnabled(Lcom/android/internal/app/ResolverActivity;Z)V

    .line 2490
    :goto_56
    iget-object p1, p0, Lcom/android/internal/app/ResolverActivity$6;->this$0:Lcom/android/internal/app/ResolverActivity;

    iget-object p1, p1, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {p1}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getCurrentUserHandle()Landroid/os/UserHandle;

    move-result-object p1

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$6;->this$0:Lcom/android/internal/app/ResolverActivity;

    .line 2491
    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity;->getWorkProfileUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_72

    .line 2492
    iget-object p1, p0, Lcom/android/internal/app/ResolverActivity$6;->this$0:Lcom/android/internal/app/ResolverActivity;

    iget-object p1, p1, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {p1, p2}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->rebuildActiveTab(Z)Z

    goto :goto_79

    .line 2494
    :cond_72
    iget-object p1, p0, Lcom/android/internal/app/ResolverActivity$6;->this$0:Lcom/android/internal/app/ResolverActivity;

    iget-object p1, p1, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {p1}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->clearInactiveProfileCache()V

    .line 2496
    :goto_79
    return-void
.end method
