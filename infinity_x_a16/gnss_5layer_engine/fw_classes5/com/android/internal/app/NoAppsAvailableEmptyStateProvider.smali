.class public Lcom/android/internal/app/NoAppsAvailableEmptyStateProvider;
.super Ljava/lang/Object;
.source "NoAppsAvailableEmptyStateProvider.java"

# interfaces
.implements Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$EmptyStateProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/NoAppsAvailableEmptyStateProvider$NoAppsAvailableEmptyState;,
        Lcom/android/internal/app/NoAppsAvailableEmptyStateProvider$DefaultEmptyState;
    }
.end annotation


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mMetricsCategory:Ljava/lang/String;

.field private final blacklist mPersonalProfileUserHandle:Landroid/os/UserHandle;

.field private final blacklist mTabOwnerUserHandleForLaunch:Landroid/os/UserHandle;

.field private final blacklist mWorkProfileUserHandle:Landroid/os/UserHandle;


# direct methods
.method public static synthetic blacklist $r8$lambda$T6xx3rPeSItWKrbCP1ylq6pzagU(Lcom/android/internal/app/NoAppsAvailableEmptyStateProvider;)Ljava/lang/String;
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/app/NoAppsAvailableEmptyStateProvider;->lambda$getEmptyState$0()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$fkIRe7UixWD5oJT6J6Hp2Je-gII(Lcom/android/internal/app/NoAppsAvailableEmptyStateProvider;)Ljava/lang/String;
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/app/NoAppsAvailableEmptyStateProvider;->lambda$getEmptyState$1()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/os/UserHandle;Landroid/os/UserHandle;Ljava/lang/String;Landroid/os/UserHandle;)V
    .registers 6

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/android/internal/app/NoAppsAvailableEmptyStateProvider;->mContext:Landroid/content/Context;

    .line 58
    iput-object p2, p0, Lcom/android/internal/app/NoAppsAvailableEmptyStateProvider;->mWorkProfileUserHandle:Landroid/os/UserHandle;

    .line 59
    iput-object p3, p0, Lcom/android/internal/app/NoAppsAvailableEmptyStateProvider;->mPersonalProfileUserHandle:Landroid/os/UserHandle;

    .line 60
    iput-object p4, p0, Lcom/android/internal/app/NoAppsAvailableEmptyStateProvider;->mMetricsCategory:Ljava/lang/String;

    .line 61
    iput-object p5, p0, Lcom/android/internal/app/NoAppsAvailableEmptyStateProvider;->mTabOwnerUserHandleForLaunch:Landroid/os/UserHandle;

    .line 62
    return-void
.end method

.method private blacklist hasAppsInOtherProfile(Lcom/android/internal/app/ResolverListAdapter;)Z
    .registers 5

    .line 100
    iget-object v0, p0, Lcom/android/internal/app/NoAppsAvailableEmptyStateProvider;->mWorkProfileUserHandle:Landroid/os/UserHandle;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 101
    return v1

    .line 103
    :cond_6
    iget-object v0, p0, Lcom/android/internal/app/NoAppsAvailableEmptyStateProvider;->mTabOwnerUserHandleForLaunch:Landroid/os/UserHandle;

    .line 104
    invoke-virtual {p1, v0}, Lcom/android/internal/app/ResolverListAdapter;->getResolversForUser(Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object p1

    .line 105
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_10
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    .line 106
    invoke-virtual {v0, v1}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 107
    iget v0, v0, Landroid/content/pm/ResolveInfo;->targetUserId:I

    const/4 v2, -0x2

    if-eq v0, v2, :cond_27

    .line 108
    const/4 p1, 0x1

    return p1

    .line 110
    :cond_27
    goto :goto_10

    .line 111
    :cond_28
    return v1
.end method

.method private synthetic blacklist lambda$getEmptyState$0()Ljava/lang/String;
    .registers 3

    .line 79
    iget-object v0, p0, Lcom/android/internal/app/NoAppsAvailableEmptyStateProvider;->mContext:Landroid/content/Context;

    const v1, 0x104095b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private synthetic blacklist lambda$getEmptyState$1()Ljava/lang/String;
    .registers 3

    .line 84
    iget-object v0, p0, Lcom/android/internal/app/NoAppsAvailableEmptyStateProvider;->mContext:Landroid/content/Context;

    const v1, 0x104095c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public blacklist getEmptyState(Lcom/android/internal/app/ResolverListAdapter;)Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$EmptyState;
    .registers 6

    .line 68
    invoke-virtual {p1}, Lcom/android/internal/app/ResolverListAdapter;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    .line 70
    iget-object v1, p0, Lcom/android/internal/app/NoAppsAvailableEmptyStateProvider;->mWorkProfileUserHandle:Landroid/os/UserHandle;

    if-eqz v1, :cond_5c

    iget-object v1, p0, Lcom/android/internal/app/NoAppsAvailableEmptyStateProvider;->mTabOwnerUserHandleForLaunch:Landroid/os/UserHandle;

    .line 71
    invoke-virtual {v1, v0}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 72
    invoke-direct {p0, p1}, Lcom/android/internal/app/NoAppsAvailableEmptyStateProvider;->hasAppsInOtherProfile(Lcom/android/internal/app/ResolverListAdapter;)Z

    move-result p1

    if-nez p1, :cond_5c

    .line 75
    :cond_16
    iget-object p1, p0, Lcom/android/internal/app/NoAppsAvailableEmptyStateProvider;->mPersonalProfileUserHandle:Landroid/os/UserHandle;

    if-ne v0, p1, :cond_34

    .line 76
    iget-object p1, p0, Lcom/android/internal/app/NoAppsAvailableEmptyStateProvider;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/admin/DevicePolicyManager;

    .line 77
    invoke-virtual {p1}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object p1

    new-instance v1, Lcom/android/internal/app/NoAppsAvailableEmptyStateProvider$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/internal/app/NoAppsAvailableEmptyStateProvider$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/app/NoAppsAvailableEmptyStateProvider;)V

    const-string v2, "Core.RESOLVER_NO_PERSONAL_APPS"

    invoke-virtual {p1, v2, v1}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object p1

    goto :goto_4d

    .line 81
    :cond_34
    iget-object p1, p0, Lcom/android/internal/app/NoAppsAvailableEmptyStateProvider;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/admin/DevicePolicyManager;

    .line 82
    invoke-virtual {p1}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object p1

    new-instance v1, Lcom/android/internal/app/NoAppsAvailableEmptyStateProvider$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/internal/app/NoAppsAvailableEmptyStateProvider$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/app/NoAppsAvailableEmptyStateProvider;)V

    const-string v2, "Core.RESOLVER_NO_WORK_APPS"

    invoke-virtual {p1, v2, v1}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object p1

    .line 87
    :goto_4d
    new-instance v1, Lcom/android/internal/app/NoAppsAvailableEmptyStateProvider$NoAppsAvailableEmptyState;

    iget-object v2, p0, Lcom/android/internal/app/NoAppsAvailableEmptyStateProvider;->mMetricsCategory:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/internal/app/NoAppsAvailableEmptyStateProvider;->mPersonalProfileUserHandle:Landroid/os/UserHandle;

    if-ne v0, v3, :cond_57

    const/4 v0, 0x1

    goto :goto_58

    :cond_57
    const/4 v0, 0x0

    :goto_58
    invoke-direct {v1, p1, v2, v0}, Lcom/android/internal/app/NoAppsAvailableEmptyStateProvider$NoAppsAvailableEmptyState;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v1

    .line 91
    :cond_5c
    iget-object p1, p0, Lcom/android/internal/app/NoAppsAvailableEmptyStateProvider;->mWorkProfileUserHandle:Landroid/os/UserHandle;

    if-nez p1, :cond_66

    .line 93
    new-instance p1, Lcom/android/internal/app/NoAppsAvailableEmptyStateProvider$DefaultEmptyState;

    invoke-direct {p1}, Lcom/android/internal/app/NoAppsAvailableEmptyStateProvider$DefaultEmptyState;-><init>()V

    return-object p1

    .line 96
    :cond_66
    const/4 p1, 0x0

    return-object p1
.end method
