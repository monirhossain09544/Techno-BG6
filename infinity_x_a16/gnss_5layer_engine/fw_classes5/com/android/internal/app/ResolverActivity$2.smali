.class Lcom/android/internal/app/ResolverActivity$2;
.super Ljava/lang/Object;
.source "ResolverActivity.java"

# interfaces
.implements Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$QuietModeManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/ResolverActivity;->createQuietModeManager()Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$QuietModeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private blacklist mIsWaitingToEnableWorkProfile:Z

.field final synthetic blacklist val$userManager:Landroid/os/UserManager;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/app/ResolverActivity;Landroid/os/UserManager;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 572
    iput-object p2, p0, Lcom/android/internal/app/ResolverActivity$2;->val$userManager:Landroid/os/UserManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 574
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/internal/app/ResolverActivity$2;->mIsWaitingToEnableWorkProfile:Z

    return-void
.end method

.method static synthetic blacklist lambda$requestQuietModeEnabled$0(Landroid/os/UserManager;ZLandroid/os/UserHandle;)V
    .registers 3

    .line 584
    invoke-virtual {p0, p1, p2}, Landroid/os/UserManager;->requestQuietModeEnabled(ZLandroid/os/UserHandle;)Z

    .line 585
    return-void
.end method


# virtual methods
.method public blacklist isQuietModeEnabled(Landroid/os/UserHandle;)Z
    .registers 3

    .line 578
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$2;->val$userManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->isQuietModeEnabled(Landroid/os/UserHandle;)Z

    move-result p1

    return p1
.end method

.method public blacklist isWaitingToEnableWorkProfile()Z
    .registers 2

    .line 596
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity$2;->mIsWaitingToEnableWorkProfile:Z

    return v0
.end method

.method public blacklist markWorkProfileEnabledBroadcastReceived()V
    .registers 2

    .line 591
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/app/ResolverActivity$2;->mIsWaitingToEnableWorkProfile:Z

    .line 592
    return-void
.end method

.method public blacklist requestQuietModeEnabled(ZLandroid/os/UserHandle;)V
    .registers 6

    .line 583
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$2;->val$userManager:Landroid/os/UserManager;

    new-instance v2, Lcom/android/internal/app/ResolverActivity$2$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1, p1, p2}, Lcom/android/internal/app/ResolverActivity$2$$ExternalSyntheticLambda0;-><init>(Landroid/os/UserManager;ZLandroid/os/UserHandle;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 586
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/internal/app/ResolverActivity$2;->mIsWaitingToEnableWorkProfile:Z

    .line 587
    return-void
.end method
