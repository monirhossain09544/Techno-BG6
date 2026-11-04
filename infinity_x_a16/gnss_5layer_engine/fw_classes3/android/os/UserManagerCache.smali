.class public Landroid/os/UserManagerCache;
.super Ljava/lang/Object;
.source "UserManagerCache.java"


# static fields
.field private static blacklist sEnabledProfileIds:Landroid/os/IpcDataCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/IpcDataCache<",
            "Ljava/lang/Integer;",
            "[I>;"
        }
    .end annotation
.end field

.field private static final blacklist sEnabledProfileIdsLock:Ljava/lang/Object;

.field private static blacklist sProfileIdsWithDisabled:Landroid/os/IpcDataCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/IpcDataCache<",
            "Ljava/lang/Integer;",
            "[I>;"
        }
    .end annotation
.end field

.field private static final blacklist sProfileIdsWithDisabledLock:Ljava/lang/Object;

.field private static blacklist sProfileParent:Landroid/os/IpcDataCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/IpcDataCache<",
            "Landroid/os/UserHandle;",
            "Landroid/os/UserHandle;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist sProfileParentLock:Ljava/lang/Object;

.field private static blacklist sProfiles:Landroid/os/IpcDataCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/IpcDataCache<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final blacklist sProfilesLock:Ljava/lang/Object;

.field private static blacklist sUserInfo:Landroid/os/IpcDataCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/IpcDataCache<",
            "Ljava/lang/Integer;",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist sUserInfoLock:Ljava/lang/Object;

.field private static blacklist sUserPropertiesFromQuery:Landroid/os/IpcDataCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/IpcDataCache<",
            "Landroid/os/UserManager$QueryUserId;",
            "Landroid/content/pm/UserProperties;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist sUserPropertiesFromQueryLock:Ljava/lang/Object;

.field private static blacklist sUserRestrictionFromQuery:Landroid/os/IpcDataCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/IpcDataCache<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist sUserRestrictionFromQueryLock:Ljava/lang/Object;

.field private static blacklist sUserUnlocked:Landroid/os/IpcDataCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/IpcDataCache<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist sUserUnlockedLock:Ljava/lang/Object;

.field private static blacklist sUserUnlockingOrUnlocked:Landroid/os/IpcDataCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/IpcDataCache<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist sUserUnlockingOrUnlockedLock:Ljava/lang/Object;


# instance fields
.field private blacklist mQuietModeEnabled:Landroid/os/IpcDataCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/IpcDataCache<",
            "Landroid/os/UserHandle;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mQuietModeEnabledLock:Ljava/lang/Object;

.field private blacklist mUserSerialNumber:Landroid/os/IpcDataCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/IpcDataCache<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mUserSerialNumberLock:Ljava/lang/Object;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 10
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/os/UserManagerCache;->sUserUnlockedLock:Ljava/lang/Object;

    .line 71
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/os/UserManagerCache;->sUserUnlockingOrUnlockedLock:Ljava/lang/Object;

    .line 132
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/os/UserManagerCache;->sUserInfoLock:Ljava/lang/Object;

    .line 193
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/os/UserManagerCache;->sUserPropertiesFromQueryLock:Ljava/lang/Object;

    .line 254
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/os/UserManagerCache;->sUserRestrictionFromQueryLock:Ljava/lang/Object;

    .line 315
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/os/UserManagerCache;->sProfilesLock:Ljava/lang/Object;

    .line 376
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/os/UserManagerCache;->sProfileIdsWithDisabledLock:Ljava/lang/Object;

    .line 437
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/os/UserManagerCache;->sEnabledProfileIdsLock:Ljava/lang/Object;

    .line 498
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/os/UserManagerCache;->sProfileParentLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 559
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/os/UserManagerCache;->mQuietModeEnabledLock:Ljava/lang/Object;

    .line 620
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/os/UserManagerCache;->mUserSerialNumberLock:Ljava/lang/Object;

    return-void
.end method

.method public static blacklist getEnabledProfileIds(Landroid/os/IpcDataCache$RemoteCall;Landroid/os/IpcDataCache$BypassCall;Ljava/lang/Integer;)[I
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IpcDataCache$RemoteCall<",
            "Ljava/lang/Integer;",
            "[I>;",
            "Landroid/os/IpcDataCache$BypassCall<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/Integer;",
            ")[I"
        }
    .end annotation

    .line 451
    sget-object v0, Landroid/os/UserManagerCache;->sEnabledProfileIds:Landroid/os/IpcDataCache;

    if-eqz v0, :cond_d

    .line 452
    sget-object p0, Landroid/os/UserManagerCache;->sEnabledProfileIds:Landroid/os/IpcDataCache;

    invoke-virtual {p0, p2}, Landroid/os/IpcDataCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    return-object p0

    .line 454
    :cond_d
    sget-object v0, Landroid/os/UserManagerCache;->sEnabledProfileIdsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 455
    :try_start_10
    sget-object v1, Landroid/os/UserManagerCache;->sEnabledProfileIds:Landroid/os/IpcDataCache;

    if-nez v1, :cond_2f

    .line 456
    new-instance v1, Landroid/os/IpcDataCache$Config;

    const-string/jumbo v2, "system_server"

    const-string/jumbo v3, "user_manager_users_enabled"

    const-string v4, "EnabledProfileIds"

    const/16 v5, 0x20

    invoke-direct {v1, v5, v2, v3, v4}, Landroid/os/IpcDataCache$Config;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/IpcDataCache$Config;->cacheNulls(Z)Landroid/os/IpcDataCache$Config;

    move-result-object v1

    .line 458
    new-instance v2, Landroid/os/IpcDataCache;

    invoke-direct {v2, v1, p0, p1}, Landroid/os/IpcDataCache;-><init>(Landroid/os/IpcDataCache$Config;Landroid/os/IpcDataCache$RemoteCall;Landroid/os/IpcDataCache$BypassCall;)V

    sput-object v2, Landroid/os/UserManagerCache;->sEnabledProfileIds:Landroid/os/IpcDataCache;

    .line 461
    :cond_2f
    monitor-exit v0
    :try_end_30
    .catchall {:try_start_10 .. :try_end_30} :catchall_39

    .line 462
    sget-object p0, Landroid/os/UserManagerCache;->sEnabledProfileIds:Landroid/os/IpcDataCache;

    invoke-virtual {p0, p2}, Landroid/os/IpcDataCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    return-object p0

    .line 461
    :catchall_39
    move-exception p0

    :try_start_3a
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_39

    throw p0
.end method

.method public static blacklist getEnabledProfileIds(Landroid/os/IpcDataCache$RemoteCall;Ljava/lang/Integer;)[I
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IpcDataCache$RemoteCall<",
            "Ljava/lang/Integer;",
            "[I>;",
            "Ljava/lang/Integer;",
            ")[I"
        }
    .end annotation

    .line 475
    sget-object v0, Landroid/os/UserManagerCache;->sEnabledProfileIds:Landroid/os/IpcDataCache;

    if-eqz v0, :cond_d

    .line 476
    sget-object p0, Landroid/os/UserManagerCache;->sEnabledProfileIds:Landroid/os/IpcDataCache;

    invoke-virtual {p0, p1}, Landroid/os/IpcDataCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    return-object p0

    .line 478
    :cond_d
    sget-object v0, Landroid/os/UserManagerCache;->sEnabledProfileIdsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 479
    :try_start_10
    sget-object v1, Landroid/os/UserManagerCache;->sEnabledProfileIds:Landroid/os/IpcDataCache;

    if-nez v1, :cond_2f

    .line 480
    new-instance v1, Landroid/os/IpcDataCache$Config;

    const-string/jumbo v2, "system_server"

    const-string/jumbo v3, "user_manager_users_enabled"

    const-string v4, "EnabledProfileIds"

    const/16 v5, 0x20

    invoke-direct {v1, v5, v2, v3, v4}, Landroid/os/IpcDataCache$Config;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/IpcDataCache$Config;->cacheNulls(Z)Landroid/os/IpcDataCache$Config;

    move-result-object v1

    .line 482
    new-instance v2, Landroid/os/IpcDataCache;

    invoke-direct {v2, v1, p0}, Landroid/os/IpcDataCache;-><init>(Landroid/os/IpcDataCache$Config;Landroid/os/IpcDataCache$RemoteCall;)V

    sput-object v2, Landroid/os/UserManagerCache;->sEnabledProfileIds:Landroid/os/IpcDataCache;

    .line 485
    :cond_2f
    monitor-exit v0
    :try_end_30
    .catchall {:try_start_10 .. :try_end_30} :catchall_39

    .line 486
    sget-object p0, Landroid/os/UserManagerCache;->sEnabledProfileIds:Landroid/os/IpcDataCache;

    invoke-virtual {p0, p1}, Landroid/os/IpcDataCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    return-object p0

    .line 485
    :catchall_39
    move-exception p0

    :try_start_3a
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_39

    throw p0
.end method

.method public static blacklist getProfileIdsWithDisabled(Landroid/os/IpcDataCache$RemoteCall;Landroid/os/IpcDataCache$BypassCall;Ljava/lang/Integer;)[I
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IpcDataCache$RemoteCall<",
            "Ljava/lang/Integer;",
            "[I>;",
            "Landroid/os/IpcDataCache$BypassCall<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/Integer;",
            ")[I"
        }
    .end annotation

    .line 390
    sget-object v0, Landroid/os/UserManagerCache;->sProfileIdsWithDisabled:Landroid/os/IpcDataCache;

    if-eqz v0, :cond_d

    .line 391
    sget-object p0, Landroid/os/UserManagerCache;->sProfileIdsWithDisabled:Landroid/os/IpcDataCache;

    invoke-virtual {p0, p2}, Landroid/os/IpcDataCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    return-object p0

    .line 393
    :cond_d
    sget-object v0, Landroid/os/UserManagerCache;->sProfileIdsWithDisabledLock:Ljava/lang/Object;

    monitor-enter v0

    .line 394
    :try_start_10
    sget-object v1, Landroid/os/UserManagerCache;->sProfileIdsWithDisabled:Landroid/os/IpcDataCache;

    if-nez v1, :cond_2f

    .line 395
    new-instance v1, Landroid/os/IpcDataCache$Config;

    const-string/jumbo v2, "system_server"

    const-string/jumbo v3, "user_manager_users"

    const-string v4, "ProfileIdsWithDisabled"

    const/16 v5, 0x20

    invoke-direct {v1, v5, v2, v3, v4}, Landroid/os/IpcDataCache$Config;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/IpcDataCache$Config;->cacheNulls(Z)Landroid/os/IpcDataCache$Config;

    move-result-object v1

    .line 397
    new-instance v2, Landroid/os/IpcDataCache;

    invoke-direct {v2, v1, p0, p1}, Landroid/os/IpcDataCache;-><init>(Landroid/os/IpcDataCache$Config;Landroid/os/IpcDataCache$RemoteCall;Landroid/os/IpcDataCache$BypassCall;)V

    sput-object v2, Landroid/os/UserManagerCache;->sProfileIdsWithDisabled:Landroid/os/IpcDataCache;

    .line 400
    :cond_2f
    monitor-exit v0
    :try_end_30
    .catchall {:try_start_10 .. :try_end_30} :catchall_39

    .line 401
    sget-object p0, Landroid/os/UserManagerCache;->sProfileIdsWithDisabled:Landroid/os/IpcDataCache;

    invoke-virtual {p0, p2}, Landroid/os/IpcDataCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    return-object p0

    .line 400
    :catchall_39
    move-exception p0

    :try_start_3a
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_39

    throw p0
.end method

.method public static blacklist getProfileIdsWithDisabled(Landroid/os/IpcDataCache$RemoteCall;Ljava/lang/Integer;)[I
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IpcDataCache$RemoteCall<",
            "Ljava/lang/Integer;",
            "[I>;",
            "Ljava/lang/Integer;",
            ")[I"
        }
    .end annotation

    .line 414
    sget-object v0, Landroid/os/UserManagerCache;->sProfileIdsWithDisabled:Landroid/os/IpcDataCache;

    if-eqz v0, :cond_d

    .line 415
    sget-object p0, Landroid/os/UserManagerCache;->sProfileIdsWithDisabled:Landroid/os/IpcDataCache;

    invoke-virtual {p0, p1}, Landroid/os/IpcDataCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    return-object p0

    .line 417
    :cond_d
    sget-object v0, Landroid/os/UserManagerCache;->sProfileIdsWithDisabledLock:Ljava/lang/Object;

    monitor-enter v0

    .line 418
    :try_start_10
    sget-object v1, Landroid/os/UserManagerCache;->sProfileIdsWithDisabled:Landroid/os/IpcDataCache;

    if-nez v1, :cond_2f

    .line 419
    new-instance v1, Landroid/os/IpcDataCache$Config;

    const-string/jumbo v2, "system_server"

    const-string/jumbo v3, "user_manager_users"

    const-string v4, "ProfileIdsWithDisabled"

    const/16 v5, 0x20

    invoke-direct {v1, v5, v2, v3, v4}, Landroid/os/IpcDataCache$Config;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/IpcDataCache$Config;->cacheNulls(Z)Landroid/os/IpcDataCache$Config;

    move-result-object v1

    .line 421
    new-instance v2, Landroid/os/IpcDataCache;

    invoke-direct {v2, v1, p0}, Landroid/os/IpcDataCache;-><init>(Landroid/os/IpcDataCache$Config;Landroid/os/IpcDataCache$RemoteCall;)V

    sput-object v2, Landroid/os/UserManagerCache;->sProfileIdsWithDisabled:Landroid/os/IpcDataCache;

    .line 424
    :cond_2f
    monitor-exit v0
    :try_end_30
    .catchall {:try_start_10 .. :try_end_30} :catchall_39

    .line 425
    sget-object p0, Landroid/os/UserManagerCache;->sProfileIdsWithDisabled:Landroid/os/IpcDataCache;

    invoke-virtual {p0, p1}, Landroid/os/IpcDataCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    return-object p0

    .line 424
    :catchall_39
    move-exception p0

    :try_start_3a
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_39

    throw p0
.end method

.method public static blacklist getProfileParent(Landroid/os/IpcDataCache$RemoteCall;Landroid/os/IpcDataCache$BypassCall;Landroid/os/UserHandle;)Landroid/os/UserHandle;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IpcDataCache$RemoteCall<",
            "Landroid/os/UserHandle;",
            "Landroid/os/UserHandle;",
            ">;",
            "Landroid/os/IpcDataCache$BypassCall<",
            "Landroid/os/UserHandle;",
            ">;",
            "Landroid/os/UserHandle;",
            ")",
            "Landroid/os/UserHandle;"
        }
    .end annotation

    .line 512
    sget-object v0, Landroid/os/UserManagerCache;->sProfileParent:Landroid/os/IpcDataCache;

    if-eqz v0, :cond_d

    .line 513
    sget-object p0, Landroid/os/UserManagerCache;->sProfileParent:Landroid/os/IpcDataCache;

    invoke-virtual {p0, p2}, Landroid/os/IpcDataCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserHandle;

    return-object p0

    .line 515
    :cond_d
    sget-object v0, Landroid/os/UserManagerCache;->sProfileParentLock:Ljava/lang/Object;

    monitor-enter v0

    .line 516
    :try_start_10
    sget-object v1, Landroid/os/UserManagerCache;->sProfileParent:Landroid/os/IpcDataCache;

    if-nez v1, :cond_2f

    .line 517
    new-instance v1, Landroid/os/IpcDataCache$Config;

    const-string/jumbo v2, "system_server"

    const-string/jumbo v3, "user_manager_users"

    const-string v4, "ProfileParent"

    const/16 v5, 0x20

    invoke-direct {v1, v5, v2, v3, v4}, Landroid/os/IpcDataCache$Config;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/IpcDataCache$Config;->cacheNulls(Z)Landroid/os/IpcDataCache$Config;

    move-result-object v1

    .line 519
    new-instance v2, Landroid/os/IpcDataCache;

    invoke-direct {v2, v1, p0, p1}, Landroid/os/IpcDataCache;-><init>(Landroid/os/IpcDataCache$Config;Landroid/os/IpcDataCache$RemoteCall;Landroid/os/IpcDataCache$BypassCall;)V

    sput-object v2, Landroid/os/UserManagerCache;->sProfileParent:Landroid/os/IpcDataCache;

    .line 522
    :cond_2f
    monitor-exit v0
    :try_end_30
    .catchall {:try_start_10 .. :try_end_30} :catchall_39

    .line 523
    sget-object p0, Landroid/os/UserManagerCache;->sProfileParent:Landroid/os/IpcDataCache;

    invoke-virtual {p0, p2}, Landroid/os/IpcDataCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserHandle;

    return-object p0

    .line 522
    :catchall_39
    move-exception p0

    :try_start_3a
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_39

    throw p0
.end method

.method public static blacklist getProfileParent(Landroid/os/IpcDataCache$RemoteCall;Landroid/os/UserHandle;)Landroid/os/UserHandle;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IpcDataCache$RemoteCall<",
            "Landroid/os/UserHandle;",
            "Landroid/os/UserHandle;",
            ">;",
            "Landroid/os/UserHandle;",
            ")",
            "Landroid/os/UserHandle;"
        }
    .end annotation

    .line 536
    sget-object v0, Landroid/os/UserManagerCache;->sProfileParent:Landroid/os/IpcDataCache;

    if-eqz v0, :cond_d

    .line 537
    sget-object p0, Landroid/os/UserManagerCache;->sProfileParent:Landroid/os/IpcDataCache;

    invoke-virtual {p0, p1}, Landroid/os/IpcDataCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserHandle;

    return-object p0

    .line 539
    :cond_d
    sget-object v0, Landroid/os/UserManagerCache;->sProfileParentLock:Ljava/lang/Object;

    monitor-enter v0

    .line 540
    :try_start_10
    sget-object v1, Landroid/os/UserManagerCache;->sProfileParent:Landroid/os/IpcDataCache;

    if-nez v1, :cond_2f

    .line 541
    new-instance v1, Landroid/os/IpcDataCache$Config;

    const-string/jumbo v2, "system_server"

    const-string/jumbo v3, "user_manager_users"

    const-string v4, "ProfileParent"

    const/16 v5, 0x20

    invoke-direct {v1, v5, v2, v3, v4}, Landroid/os/IpcDataCache$Config;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/IpcDataCache$Config;->cacheNulls(Z)Landroid/os/IpcDataCache$Config;

    move-result-object v1

    .line 543
    new-instance v2, Landroid/os/IpcDataCache;

    invoke-direct {v2, v1, p0}, Landroid/os/IpcDataCache;-><init>(Landroid/os/IpcDataCache$Config;Landroid/os/IpcDataCache$RemoteCall;)V

    sput-object v2, Landroid/os/UserManagerCache;->sProfileParent:Landroid/os/IpcDataCache;

    .line 546
    :cond_2f
    monitor-exit v0
    :try_end_30
    .catchall {:try_start_10 .. :try_end_30} :catchall_39

    .line 547
    sget-object p0, Landroid/os/UserManagerCache;->sProfileParent:Landroid/os/IpcDataCache;

    invoke-virtual {p0, p1}, Landroid/os/IpcDataCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserHandle;

    return-object p0

    .line 546
    :catchall_39
    move-exception p0

    :try_start_3a
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_39

    throw p0
.end method

.method public static blacklist getProfiles(Landroid/os/IpcDataCache$RemoteCall;Landroid/os/IpcDataCache$BypassCall;Ljava/lang/Integer;)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IpcDataCache$RemoteCall<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;>;",
            "Landroid/os/IpcDataCache$BypassCall<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    .line 329
    sget-object v0, Landroid/os/UserManagerCache;->sProfiles:Landroid/os/IpcDataCache;

    if-eqz v0, :cond_d

    .line 330
    sget-object p0, Landroid/os/UserManagerCache;->sProfiles:Landroid/os/IpcDataCache;

    invoke-virtual {p0, p2}, Landroid/os/IpcDataCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0

    .line 332
    :cond_d
    sget-object v0, Landroid/os/UserManagerCache;->sProfilesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 333
    :try_start_10
    sget-object v1, Landroid/os/UserManagerCache;->sProfiles:Landroid/os/IpcDataCache;

    if-nez v1, :cond_2f

    .line 334
    new-instance v1, Landroid/os/IpcDataCache$Config;

    const-string/jumbo v2, "system_server"

    const-string/jumbo v3, "user_manager_user_data"

    const-string v4, "Profiles"

    const/16 v5, 0x20

    invoke-direct {v1, v5, v2, v3, v4}, Landroid/os/IpcDataCache$Config;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/IpcDataCache$Config;->cacheNulls(Z)Landroid/os/IpcDataCache$Config;

    move-result-object v1

    .line 336
    new-instance v2, Landroid/os/IpcDataCache;

    invoke-direct {v2, v1, p0, p1}, Landroid/os/IpcDataCache;-><init>(Landroid/os/IpcDataCache$Config;Landroid/os/IpcDataCache$RemoteCall;Landroid/os/IpcDataCache$BypassCall;)V

    sput-object v2, Landroid/os/UserManagerCache;->sProfiles:Landroid/os/IpcDataCache;

    .line 339
    :cond_2f
    monitor-exit v0
    :try_end_30
    .catchall {:try_start_10 .. :try_end_30} :catchall_39

    .line 340
    sget-object p0, Landroid/os/UserManagerCache;->sProfiles:Landroid/os/IpcDataCache;

    invoke-virtual {p0, p2}, Landroid/os/IpcDataCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0

    .line 339
    :catchall_39
    move-exception p0

    :try_start_3a
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_39

    throw p0
.end method

.method public static blacklist getProfiles(Landroid/os/IpcDataCache$RemoteCall;Ljava/lang/Integer;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IpcDataCache$RemoteCall<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;>;",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    .line 353
    sget-object v0, Landroid/os/UserManagerCache;->sProfiles:Landroid/os/IpcDataCache;

    if-eqz v0, :cond_d

    .line 354
    sget-object p0, Landroid/os/UserManagerCache;->sProfiles:Landroid/os/IpcDataCache;

    invoke-virtual {p0, p1}, Landroid/os/IpcDataCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0

    .line 356
    :cond_d
    sget-object v0, Landroid/os/UserManagerCache;->sProfilesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 357
    :try_start_10
    sget-object v1, Landroid/os/UserManagerCache;->sProfiles:Landroid/os/IpcDataCache;

    if-nez v1, :cond_2f

    .line 358
    new-instance v1, Landroid/os/IpcDataCache$Config;

    const-string/jumbo v2, "system_server"

    const-string/jumbo v3, "user_manager_user_data"

    const-string v4, "Profiles"

    const/16 v5, 0x20

    invoke-direct {v1, v5, v2, v3, v4}, Landroid/os/IpcDataCache$Config;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/IpcDataCache$Config;->cacheNulls(Z)Landroid/os/IpcDataCache$Config;

    move-result-object v1

    .line 360
    new-instance v2, Landroid/os/IpcDataCache;

    invoke-direct {v2, v1, p0}, Landroid/os/IpcDataCache;-><init>(Landroid/os/IpcDataCache$Config;Landroid/os/IpcDataCache$RemoteCall;)V

    sput-object v2, Landroid/os/UserManagerCache;->sProfiles:Landroid/os/IpcDataCache;

    .line 363
    :cond_2f
    monitor-exit v0
    :try_end_30
    .catchall {:try_start_10 .. :try_end_30} :catchall_39

    .line 364
    sget-object p0, Landroid/os/UserManagerCache;->sProfiles:Landroid/os/IpcDataCache;

    invoke-virtual {p0, p1}, Landroid/os/IpcDataCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0

    .line 363
    :catchall_39
    move-exception p0

    :try_start_3a
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_39

    throw p0
.end method

.method public static blacklist getUserInfo(Landroid/os/IpcDataCache$RemoteCall;Landroid/os/IpcDataCache$BypassCall;Ljava/lang/Integer;)Landroid/content/pm/UserInfo;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IpcDataCache$RemoteCall<",
            "Ljava/lang/Integer;",
            "Landroid/content/pm/UserInfo;",
            ">;",
            "Landroid/os/IpcDataCache$BypassCall<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/Integer;",
            ")",
            "Landroid/content/pm/UserInfo;"
        }
    .end annotation

    .line 146
    sget-object v0, Landroid/os/UserManagerCache;->sUserInfo:Landroid/os/IpcDataCache;

    if-eqz v0, :cond_d

    .line 147
    sget-object p0, Landroid/os/UserManagerCache;->sUserInfo:Landroid/os/IpcDataCache;

    invoke-virtual {p0, p2}, Landroid/os/IpcDataCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/UserInfo;

    return-object p0

    .line 149
    :cond_d
    sget-object v0, Landroid/os/UserManagerCache;->sUserInfoLock:Ljava/lang/Object;

    monitor-enter v0

    .line 150
    :try_start_10
    sget-object v1, Landroid/os/UserManagerCache;->sUserInfo:Landroid/os/IpcDataCache;

    if-nez v1, :cond_2f

    .line 151
    new-instance v1, Landroid/os/IpcDataCache$Config;

    const-string/jumbo v2, "system_server"

    const-string/jumbo v3, "user_manager_user_data"

    const-string v4, "UserInfo"

    const/16 v5, 0x20

    invoke-direct {v1, v5, v2, v3, v4}, Landroid/os/IpcDataCache$Config;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/IpcDataCache$Config;->cacheNulls(Z)Landroid/os/IpcDataCache$Config;

    move-result-object v1

    .line 153
    new-instance v2, Landroid/os/IpcDataCache;

    invoke-direct {v2, v1, p0, p1}, Landroid/os/IpcDataCache;-><init>(Landroid/os/IpcDataCache$Config;Landroid/os/IpcDataCache$RemoteCall;Landroid/os/IpcDataCache$BypassCall;)V

    sput-object v2, Landroid/os/UserManagerCache;->sUserInfo:Landroid/os/IpcDataCache;

    .line 156
    :cond_2f
    monitor-exit v0
    :try_end_30
    .catchall {:try_start_10 .. :try_end_30} :catchall_39

    .line 157
    sget-object p0, Landroid/os/UserManagerCache;->sUserInfo:Landroid/os/IpcDataCache;

    invoke-virtual {p0, p2}, Landroid/os/IpcDataCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/UserInfo;

    return-object p0

    .line 156
    :catchall_39
    move-exception p0

    :try_start_3a
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_39

    throw p0
.end method

.method public static blacklist getUserInfo(Landroid/os/IpcDataCache$RemoteCall;Ljava/lang/Integer;)Landroid/content/pm/UserInfo;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IpcDataCache$RemoteCall<",
            "Ljava/lang/Integer;",
            "Landroid/content/pm/UserInfo;",
            ">;",
            "Ljava/lang/Integer;",
            ")",
            "Landroid/content/pm/UserInfo;"
        }
    .end annotation

    .line 170
    sget-object v0, Landroid/os/UserManagerCache;->sUserInfo:Landroid/os/IpcDataCache;

    if-eqz v0, :cond_d

    .line 171
    sget-object p0, Landroid/os/UserManagerCache;->sUserInfo:Landroid/os/IpcDataCache;

    invoke-virtual {p0, p1}, Landroid/os/IpcDataCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/UserInfo;

    return-object p0

    .line 173
    :cond_d
    sget-object v0, Landroid/os/UserManagerCache;->sUserInfoLock:Ljava/lang/Object;

    monitor-enter v0

    .line 174
    :try_start_10
    sget-object v1, Landroid/os/UserManagerCache;->sUserInfo:Landroid/os/IpcDataCache;

    if-nez v1, :cond_2f

    .line 175
    new-instance v1, Landroid/os/IpcDataCache$Config;

    const-string/jumbo v2, "system_server"

    const-string/jumbo v3, "user_manager_user_data"

    const-string v4, "UserInfo"

    const/16 v5, 0x20

    invoke-direct {v1, v5, v2, v3, v4}, Landroid/os/IpcDataCache$Config;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/IpcDataCache$Config;->cacheNulls(Z)Landroid/os/IpcDataCache$Config;

    move-result-object v1

    .line 177
    new-instance v2, Landroid/os/IpcDataCache;

    invoke-direct {v2, v1, p0}, Landroid/os/IpcDataCache;-><init>(Landroid/os/IpcDataCache$Config;Landroid/os/IpcDataCache$RemoteCall;)V

    sput-object v2, Landroid/os/UserManagerCache;->sUserInfo:Landroid/os/IpcDataCache;

    .line 180
    :cond_2f
    monitor-exit v0
    :try_end_30
    .catchall {:try_start_10 .. :try_end_30} :catchall_39

    .line 181
    sget-object p0, Landroid/os/UserManagerCache;->sUserInfo:Landroid/os/IpcDataCache;

    invoke-virtual {p0, p1}, Landroid/os/IpcDataCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/UserInfo;

    return-object p0

    .line 180
    :catchall_39
    move-exception p0

    :try_start_3a
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_39

    throw p0
.end method

.method public static blacklist getUserPropertiesFromQuery(Landroid/os/IpcDataCache$RemoteCall;Landroid/os/IpcDataCache$BypassCall;Landroid/os/UserManager$QueryUserId;)Landroid/content/pm/UserProperties;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IpcDataCache$RemoteCall<",
            "Landroid/os/UserManager$QueryUserId;",
            "Landroid/content/pm/UserProperties;",
            ">;",
            "Landroid/os/IpcDataCache$BypassCall<",
            "Landroid/os/UserManager$QueryUserId;",
            ">;",
            "Landroid/os/UserManager$QueryUserId;",
            ")",
            "Landroid/content/pm/UserProperties;"
        }
    .end annotation

    .line 207
    sget-object v0, Landroid/os/UserManagerCache;->sUserPropertiesFromQuery:Landroid/os/IpcDataCache;

    if-eqz v0, :cond_d

    .line 208
    sget-object p0, Landroid/os/UserManagerCache;->sUserPropertiesFromQuery:Landroid/os/IpcDataCache;

    invoke-virtual {p0, p2}, Landroid/os/IpcDataCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/UserProperties;

    return-object p0

    .line 210
    :cond_d
    sget-object v0, Landroid/os/UserManagerCache;->sUserPropertiesFromQueryLock:Ljava/lang/Object;

    monitor-enter v0

    .line 211
    :try_start_10
    sget-object v1, Landroid/os/UserManagerCache;->sUserPropertiesFromQuery:Landroid/os/IpcDataCache;

    if-nez v1, :cond_2f

    .line 212
    new-instance v1, Landroid/os/IpcDataCache$Config;

    const-string/jumbo v2, "system_server"

    const-string/jumbo v3, "user_manager_user_properties_from_query"

    const-string v4, "UserPropertiesFromQuery"

    const/16 v5, 0x20

    invoke-direct {v1, v5, v2, v3, v4}, Landroid/os/IpcDataCache$Config;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/IpcDataCache$Config;->cacheNulls(Z)Landroid/os/IpcDataCache$Config;

    move-result-object v1

    .line 214
    new-instance v2, Landroid/os/IpcDataCache;

    invoke-direct {v2, v1, p0, p1}, Landroid/os/IpcDataCache;-><init>(Landroid/os/IpcDataCache$Config;Landroid/os/IpcDataCache$RemoteCall;Landroid/os/IpcDataCache$BypassCall;)V

    sput-object v2, Landroid/os/UserManagerCache;->sUserPropertiesFromQuery:Landroid/os/IpcDataCache;

    .line 217
    :cond_2f
    monitor-exit v0
    :try_end_30
    .catchall {:try_start_10 .. :try_end_30} :catchall_39

    .line 218
    sget-object p0, Landroid/os/UserManagerCache;->sUserPropertiesFromQuery:Landroid/os/IpcDataCache;

    invoke-virtual {p0, p2}, Landroid/os/IpcDataCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/UserProperties;

    return-object p0

    .line 217
    :catchall_39
    move-exception p0

    :try_start_3a
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_39

    throw p0
.end method

.method public static blacklist getUserPropertiesFromQuery(Landroid/os/IpcDataCache$RemoteCall;Landroid/os/UserManager$QueryUserId;)Landroid/content/pm/UserProperties;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IpcDataCache$RemoteCall<",
            "Landroid/os/UserManager$QueryUserId;",
            "Landroid/content/pm/UserProperties;",
            ">;",
            "Landroid/os/UserManager$QueryUserId;",
            ")",
            "Landroid/content/pm/UserProperties;"
        }
    .end annotation

    .line 231
    sget-object v0, Landroid/os/UserManagerCache;->sUserPropertiesFromQuery:Landroid/os/IpcDataCache;

    if-eqz v0, :cond_d

    .line 232
    sget-object p0, Landroid/os/UserManagerCache;->sUserPropertiesFromQuery:Landroid/os/IpcDataCache;

    invoke-virtual {p0, p1}, Landroid/os/IpcDataCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/UserProperties;

    return-object p0

    .line 234
    :cond_d
    sget-object v0, Landroid/os/UserManagerCache;->sUserPropertiesFromQueryLock:Ljava/lang/Object;

    monitor-enter v0

    .line 235
    :try_start_10
    sget-object v1, Landroid/os/UserManagerCache;->sUserPropertiesFromQuery:Landroid/os/IpcDataCache;

    if-nez v1, :cond_2f

    .line 236
    new-instance v1, Landroid/os/IpcDataCache$Config;

    const-string/jumbo v2, "system_server"

    const-string/jumbo v3, "user_manager_user_properties_from_query"

    const-string v4, "UserPropertiesFromQuery"

    const/16 v5, 0x20

    invoke-direct {v1, v5, v2, v3, v4}, Landroid/os/IpcDataCache$Config;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/IpcDataCache$Config;->cacheNulls(Z)Landroid/os/IpcDataCache$Config;

    move-result-object v1

    .line 238
    new-instance v2, Landroid/os/IpcDataCache;

    invoke-direct {v2, v1, p0}, Landroid/os/IpcDataCache;-><init>(Landroid/os/IpcDataCache$Config;Landroid/os/IpcDataCache$RemoteCall;)V

    sput-object v2, Landroid/os/UserManagerCache;->sUserPropertiesFromQuery:Landroid/os/IpcDataCache;

    .line 241
    :cond_2f
    monitor-exit v0
    :try_end_30
    .catchall {:try_start_10 .. :try_end_30} :catchall_39

    .line 242
    sget-object p0, Landroid/os/UserManagerCache;->sUserPropertiesFromQuery:Landroid/os/IpcDataCache;

    invoke-virtual {p0, p1}, Landroid/os/IpcDataCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/UserProperties;

    return-object p0

    .line 241
    :catchall_39
    move-exception p0

    :try_start_3a
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_39

    throw p0
.end method

.method public static blacklist getUserRestrictionFromQuery(Landroid/os/IpcDataCache$RemoteCall;Landroid/os/IpcDataCache$BypassCall;Landroid/util/Pair;)Ljava/lang/Boolean;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IpcDataCache$RemoteCall<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroid/os/IpcDataCache$BypassCall<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .line 268
    sget-object v0, Landroid/os/UserManagerCache;->sUserRestrictionFromQuery:Landroid/os/IpcDataCache;

    if-eqz v0, :cond_d

    .line 269
    sget-object p0, Landroid/os/UserManagerCache;->sUserRestrictionFromQuery:Landroid/os/IpcDataCache;

    invoke-virtual {p0, p2}, Landroid/os/IpcDataCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    return-object p0

    .line 271
    :cond_d
    sget-object v0, Landroid/os/UserManagerCache;->sUserRestrictionFromQueryLock:Ljava/lang/Object;

    monitor-enter v0

    .line 272
    :try_start_10
    sget-object v1, Landroid/os/UserManagerCache;->sUserRestrictionFromQuery:Landroid/os/IpcDataCache;

    if-nez v1, :cond_2f

    .line 273
    new-instance v1, Landroid/os/IpcDataCache$Config;

    const-string/jumbo v2, "system_server"

    const-string/jumbo v3, "user_manager_user_restriction_from_query"

    const-string v4, "UserRestrictionFromQuery"

    const/16 v5, 0x20

    invoke-direct {v1, v5, v2, v3, v4}, Landroid/os/IpcDataCache$Config;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/IpcDataCache$Config;->cacheNulls(Z)Landroid/os/IpcDataCache$Config;

    move-result-object v1

    .line 275
    new-instance v2, Landroid/os/IpcDataCache;

    invoke-direct {v2, v1, p0, p1}, Landroid/os/IpcDataCache;-><init>(Landroid/os/IpcDataCache$Config;Landroid/os/IpcDataCache$RemoteCall;Landroid/os/IpcDataCache$BypassCall;)V

    sput-object v2, Landroid/os/UserManagerCache;->sUserRestrictionFromQuery:Landroid/os/IpcDataCache;

    .line 278
    :cond_2f
    monitor-exit v0
    :try_end_30
    .catchall {:try_start_10 .. :try_end_30} :catchall_39

    .line 279
    sget-object p0, Landroid/os/UserManagerCache;->sUserRestrictionFromQuery:Landroid/os/IpcDataCache;

    invoke-virtual {p0, p2}, Landroid/os/IpcDataCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    return-object p0

    .line 278
    :catchall_39
    move-exception p0

    :try_start_3a
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_39

    throw p0
.end method

.method public static blacklist getUserRestrictionFromQuery(Landroid/os/IpcDataCache$RemoteCall;Landroid/util/Pair;)Ljava/lang/Boolean;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IpcDataCache$RemoteCall<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .line 292
    sget-object v0, Landroid/os/UserManagerCache;->sUserRestrictionFromQuery:Landroid/os/IpcDataCache;

    if-eqz v0, :cond_d

    .line 293
    sget-object p0, Landroid/os/UserManagerCache;->sUserRestrictionFromQuery:Landroid/os/IpcDataCache;

    invoke-virtual {p0, p1}, Landroid/os/IpcDataCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    return-object p0

    .line 295
    :cond_d
    sget-object v0, Landroid/os/UserManagerCache;->sUserRestrictionFromQueryLock:Ljava/lang/Object;

    monitor-enter v0

    .line 296
    :try_start_10
    sget-object v1, Landroid/os/UserManagerCache;->sUserRestrictionFromQuery:Landroid/os/IpcDataCache;

    if-nez v1, :cond_2f

    .line 297
    new-instance v1, Landroid/os/IpcDataCache$Config;

    const-string/jumbo v2, "system_server"

    const-string/jumbo v3, "user_manager_user_restriction_from_query"

    const-string v4, "UserRestrictionFromQuery"

    const/16 v5, 0x20

    invoke-direct {v1, v5, v2, v3, v4}, Landroid/os/IpcDataCache$Config;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/IpcDataCache$Config;->cacheNulls(Z)Landroid/os/IpcDataCache$Config;

    move-result-object v1

    .line 299
    new-instance v2, Landroid/os/IpcDataCache;

    invoke-direct {v2, v1, p0}, Landroid/os/IpcDataCache;-><init>(Landroid/os/IpcDataCache$Config;Landroid/os/IpcDataCache$RemoteCall;)V

    sput-object v2, Landroid/os/UserManagerCache;->sUserRestrictionFromQuery:Landroid/os/IpcDataCache;

    .line 302
    :cond_2f
    monitor-exit v0
    :try_end_30
    .catchall {:try_start_10 .. :try_end_30} :catchall_39

    .line 303
    sget-object p0, Landroid/os/UserManagerCache;->sUserRestrictionFromQuery:Landroid/os/IpcDataCache;

    invoke-virtual {p0, p1}, Landroid/os/IpcDataCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    return-object p0

    .line 302
    :catchall_39
    move-exception p0

    :try_start_3a
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_39

    throw p0
.end method

.method public static blacklist initCache()V
    .registers 0

    .line 688
    invoke-static {}, Landroid/os/UserManagerCache;->invalidateUserUnlocked()V

    .line 689
    invoke-static {}, Landroid/os/UserManagerCache;->invalidateUserUnlockingOrUnlocked()V

    .line 690
    invoke-static {}, Landroid/os/UserManagerCache;->invalidateUserInfo()V

    .line 691
    invoke-static {}, Landroid/os/UserManagerCache;->invalidateUserPropertiesFromQuery()V

    .line 692
    invoke-static {}, Landroid/os/UserManagerCache;->invalidateUserRestrictionFromQuery()V

    .line 693
    invoke-static {}, Landroid/os/UserManagerCache;->invalidateProfiles()V

    .line 694
    invoke-static {}, Landroid/os/UserManagerCache;->invalidateProfileIdsWithDisabled()V

    .line 695
    invoke-static {}, Landroid/os/UserManagerCache;->invalidateEnabledProfileIds()V

    .line 696
    invoke-static {}, Landroid/os/UserManagerCache;->invalidateProfileParent()V

    .line 697
    invoke-static {}, Landroid/os/UserManagerCache;->invalidateQuietModeEnabled()V

    .line 698
    invoke-static {}, Landroid/os/UserManagerCache;->invalidateUserSerialNumber()V

    .line 699
    return-void
.end method

.method public static final blacklist invalidateEnabledProfileIds()V
    .registers 2

    .line 495
    const-string/jumbo v0, "system_server"

    const-string/jumbo v1, "user_manager_users_enabled"

    invoke-static {v0, v1}, Landroid/os/IpcDataCache;->invalidateCache(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    return-void
.end method

.method public static final blacklist invalidateProfileIdsWithDisabled()V
    .registers 2

    .line 434
    const-string/jumbo v0, "system_server"

    const-string/jumbo v1, "user_manager_users"

    invoke-static {v0, v1}, Landroid/os/IpcDataCache;->invalidateCache(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    return-void
.end method

.method public static final blacklist invalidateProfileParent()V
    .registers 2

    .line 556
    const-string/jumbo v0, "system_server"

    const-string/jumbo v1, "user_manager_users"

    invoke-static {v0, v1}, Landroid/os/IpcDataCache;->invalidateCache(Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    return-void
.end method

.method public static final blacklist invalidateProfiles()V
    .registers 2

    .line 373
    const-string/jumbo v0, "system_server"

    const-string/jumbo v1, "user_manager_user_data"

    invoke-static {v0, v1}, Landroid/os/IpcDataCache;->invalidateCache(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    return-void
.end method

.method public static final blacklist invalidateQuietModeEnabled()V
    .registers 2

    .line 617
    const-string/jumbo v0, "system_server"

    const-string/jumbo v1, "user_manager_quiet_mode_enabled"

    invoke-static {v0, v1}, Landroid/os/IpcDataCache;->invalidateCache(Ljava/lang/String;Ljava/lang/String;)V

    .line 618
    return-void
.end method

.method public static final blacklist invalidateUserInfo()V
    .registers 2

    .line 190
    const-string/jumbo v0, "system_server"

    const-string/jumbo v1, "user_manager_user_data"

    invoke-static {v0, v1}, Landroid/os/IpcDataCache;->invalidateCache(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    return-void
.end method

.method public static final blacklist invalidateUserPropertiesFromQuery()V
    .registers 2

    .line 251
    const-string/jumbo v0, "system_server"

    const-string/jumbo v1, "user_manager_user_properties_from_query"

    invoke-static {v0, v1}, Landroid/os/IpcDataCache;->invalidateCache(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    return-void
.end method

.method public static final blacklist invalidateUserRestrictionFromQuery()V
    .registers 2

    .line 312
    const-string/jumbo v0, "system_server"

    const-string/jumbo v1, "user_manager_user_restriction_from_query"

    invoke-static {v0, v1}, Landroid/os/IpcDataCache;->invalidateCache(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    return-void
.end method

.method public static final blacklist invalidateUserSerialNumber()V
    .registers 2

    .line 678
    const-string/jumbo v0, "system_server"

    const-string/jumbo v1, "user_manager_users"

    invoke-static {v0, v1}, Landroid/os/IpcDataCache;->invalidateCache(Ljava/lang/String;Ljava/lang/String;)V

    .line 679
    return-void
.end method

.method public static final blacklist invalidateUserUnlocked()V
    .registers 2

    .line 68
    const-string/jumbo v0, "system_server"

    const-string v1, "is_user_unlocked"

    invoke-static {v0, v1}, Landroid/os/IpcDataCache;->invalidateCache(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    return-void
.end method

.method public static final blacklist invalidateUserUnlockingOrUnlocked()V
    .registers 2

    .line 129
    const-string/jumbo v0, "system_server"

    const-string v1, "is_user_unlocked"

    invoke-static {v0, v1}, Landroid/os/IpcDataCache;->invalidateCache(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    return-void
.end method

.method public static blacklist isUserUnlocked(Landroid/os/IpcDataCache$RemoteCall;Landroid/os/IpcDataCache$BypassCall;Ljava/lang/Integer;)Ljava/lang/Boolean;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IpcDataCache$RemoteCall<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroid/os/IpcDataCache$BypassCall<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .line 24
    sget-object v0, Landroid/os/UserManagerCache;->sUserUnlocked:Landroid/os/IpcDataCache;

    if-eqz v0, :cond_d

    .line 25
    sget-object p0, Landroid/os/UserManagerCache;->sUserUnlocked:Landroid/os/IpcDataCache;

    invoke-virtual {p0, p2}, Landroid/os/IpcDataCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    return-object p0

    .line 27
    :cond_d
    sget-object v0, Landroid/os/UserManagerCache;->sUserUnlockedLock:Ljava/lang/Object;

    monitor-enter v0

    .line 28
    :try_start_10
    sget-object v1, Landroid/os/UserManagerCache;->sUserUnlocked:Landroid/os/IpcDataCache;

    if-nez v1, :cond_2e

    .line 29
    new-instance v1, Landroid/os/IpcDataCache$Config;

    const-string/jumbo v2, "system_server"

    const-string v3, "is_user_unlocked"

    const-string v4, "UserUnlocked"

    const/16 v5, 0x20

    invoke-direct {v1, v5, v2, v3, v4}, Landroid/os/IpcDataCache$Config;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/IpcDataCache$Config;->cacheNulls(Z)Landroid/os/IpcDataCache$Config;

    move-result-object v1

    .line 31
    new-instance v2, Landroid/os/IpcDataCache;

    invoke-direct {v2, v1, p0, p1}, Landroid/os/IpcDataCache;-><init>(Landroid/os/IpcDataCache$Config;Landroid/os/IpcDataCache$RemoteCall;Landroid/os/IpcDataCache$BypassCall;)V

    sput-object v2, Landroid/os/UserManagerCache;->sUserUnlocked:Landroid/os/IpcDataCache;

    .line 34
    :cond_2e
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_10 .. :try_end_2f} :catchall_38

    .line 35
    sget-object p0, Landroid/os/UserManagerCache;->sUserUnlocked:Landroid/os/IpcDataCache;

    invoke-virtual {p0, p2}, Landroid/os/IpcDataCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    return-object p0

    .line 34
    :catchall_38
    move-exception p0

    :try_start_39
    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_38

    throw p0
.end method

.method public static blacklist isUserUnlocked(Landroid/os/IpcDataCache$RemoteCall;Ljava/lang/Integer;)Ljava/lang/Boolean;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IpcDataCache$RemoteCall<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .line 48
    sget-object v0, Landroid/os/UserManagerCache;->sUserUnlocked:Landroid/os/IpcDataCache;

    if-eqz v0, :cond_d

    .line 49
    sget-object p0, Landroid/os/UserManagerCache;->sUserUnlocked:Landroid/os/IpcDataCache;

    invoke-virtual {p0, p1}, Landroid/os/IpcDataCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    return-object p0

    .line 51
    :cond_d
    sget-object v0, Landroid/os/UserManagerCache;->sUserUnlockedLock:Ljava/lang/Object;

    monitor-enter v0

    .line 52
    :try_start_10
    sget-object v1, Landroid/os/UserManagerCache;->sUserUnlocked:Landroid/os/IpcDataCache;

    if-nez v1, :cond_2e

    .line 53
    new-instance v1, Landroid/os/IpcDataCache$Config;

    const-string/jumbo v2, "system_server"

    const-string v3, "is_user_unlocked"

    const-string v4, "UserUnlocked"

    const/16 v5, 0x20

    invoke-direct {v1, v5, v2, v3, v4}, Landroid/os/IpcDataCache$Config;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/IpcDataCache$Config;->cacheNulls(Z)Landroid/os/IpcDataCache$Config;

    move-result-object v1

    .line 55
    new-instance v2, Landroid/os/IpcDataCache;

    invoke-direct {v2, v1, p0}, Landroid/os/IpcDataCache;-><init>(Landroid/os/IpcDataCache$Config;Landroid/os/IpcDataCache$RemoteCall;)V

    sput-object v2, Landroid/os/UserManagerCache;->sUserUnlocked:Landroid/os/IpcDataCache;

    .line 58
    :cond_2e
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_10 .. :try_end_2f} :catchall_38

    .line 59
    sget-object p0, Landroid/os/UserManagerCache;->sUserUnlocked:Landroid/os/IpcDataCache;

    invoke-virtual {p0, p1}, Landroid/os/IpcDataCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    return-object p0

    .line 58
    :catchall_38
    move-exception p0

    :try_start_39
    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_38

    throw p0
.end method

.method public static blacklist isUserUnlockingOrUnlocked(Landroid/os/IpcDataCache$RemoteCall;Landroid/os/IpcDataCache$BypassCall;Ljava/lang/Integer;)Ljava/lang/Boolean;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IpcDataCache$RemoteCall<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroid/os/IpcDataCache$BypassCall<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .line 85
    sget-object v0, Landroid/os/UserManagerCache;->sUserUnlockingOrUnlocked:Landroid/os/IpcDataCache;

    if-eqz v0, :cond_d

    .line 86
    sget-object p0, Landroid/os/UserManagerCache;->sUserUnlockingOrUnlocked:Landroid/os/IpcDataCache;

    invoke-virtual {p0, p2}, Landroid/os/IpcDataCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    return-object p0

    .line 88
    :cond_d
    sget-object v0, Landroid/os/UserManagerCache;->sUserUnlockingOrUnlockedLock:Ljava/lang/Object;

    monitor-enter v0

    .line 89
    :try_start_10
    sget-object v1, Landroid/os/UserManagerCache;->sUserUnlockingOrUnlocked:Landroid/os/IpcDataCache;

    if-nez v1, :cond_2e

    .line 90
    new-instance v1, Landroid/os/IpcDataCache$Config;

    const-string/jumbo v2, "system_server"

    const-string v3, "is_user_unlocked"

    const-string v4, "UserUnlockingOrUnlocked"

    const/16 v5, 0x20

    invoke-direct {v1, v5, v2, v3, v4}, Landroid/os/IpcDataCache$Config;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/IpcDataCache$Config;->cacheNulls(Z)Landroid/os/IpcDataCache$Config;

    move-result-object v1

    .line 92
    new-instance v2, Landroid/os/IpcDataCache;

    invoke-direct {v2, v1, p0, p1}, Landroid/os/IpcDataCache;-><init>(Landroid/os/IpcDataCache$Config;Landroid/os/IpcDataCache$RemoteCall;Landroid/os/IpcDataCache$BypassCall;)V

    sput-object v2, Landroid/os/UserManagerCache;->sUserUnlockingOrUnlocked:Landroid/os/IpcDataCache;

    .line 95
    :cond_2e
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_10 .. :try_end_2f} :catchall_38

    .line 96
    sget-object p0, Landroid/os/UserManagerCache;->sUserUnlockingOrUnlocked:Landroid/os/IpcDataCache;

    invoke-virtual {p0, p2}, Landroid/os/IpcDataCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    return-object p0

    .line 95
    :catchall_38
    move-exception p0

    :try_start_39
    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_38

    throw p0
.end method

.method public static blacklist isUserUnlockingOrUnlocked(Landroid/os/IpcDataCache$RemoteCall;Ljava/lang/Integer;)Ljava/lang/Boolean;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IpcDataCache$RemoteCall<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .line 109
    sget-object v0, Landroid/os/UserManagerCache;->sUserUnlockingOrUnlocked:Landroid/os/IpcDataCache;

    if-eqz v0, :cond_d

    .line 110
    sget-object p0, Landroid/os/UserManagerCache;->sUserUnlockingOrUnlocked:Landroid/os/IpcDataCache;

    invoke-virtual {p0, p1}, Landroid/os/IpcDataCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    return-object p0

    .line 112
    :cond_d
    sget-object v0, Landroid/os/UserManagerCache;->sUserUnlockingOrUnlockedLock:Ljava/lang/Object;

    monitor-enter v0

    .line 113
    :try_start_10
    sget-object v1, Landroid/os/UserManagerCache;->sUserUnlockingOrUnlocked:Landroid/os/IpcDataCache;

    if-nez v1, :cond_2e

    .line 114
    new-instance v1, Landroid/os/IpcDataCache$Config;

    const-string/jumbo v2, "system_server"

    const-string v3, "is_user_unlocked"

    const-string v4, "UserUnlockingOrUnlocked"

    const/16 v5, 0x20

    invoke-direct {v1, v5, v2, v3, v4}, Landroid/os/IpcDataCache$Config;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/IpcDataCache$Config;->cacheNulls(Z)Landroid/os/IpcDataCache$Config;

    move-result-object v1

    .line 116
    new-instance v2, Landroid/os/IpcDataCache;

    invoke-direct {v2, v1, p0}, Landroid/os/IpcDataCache;-><init>(Landroid/os/IpcDataCache$Config;Landroid/os/IpcDataCache$RemoteCall;)V

    sput-object v2, Landroid/os/UserManagerCache;->sUserUnlockingOrUnlocked:Landroid/os/IpcDataCache;

    .line 119
    :cond_2e
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_10 .. :try_end_2f} :catchall_38

    .line 120
    sget-object p0, Landroid/os/UserManagerCache;->sUserUnlockingOrUnlocked:Landroid/os/IpcDataCache;

    invoke-virtual {p0, p1}, Landroid/os/IpcDataCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    return-object p0

    .line 119
    :catchall_38
    move-exception p0

    :try_start_39
    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_38

    throw p0
.end method


# virtual methods
.method public blacklist getUserSerialNumber(Landroid/os/IpcDataCache$RemoteCall;Landroid/os/IpcDataCache$BypassCall;Ljava/lang/Integer;)Ljava/lang/Integer;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IpcDataCache$RemoteCall<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/os/IpcDataCache$BypassCall<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/lang/Integer;"
        }
    .end annotation

    .line 634
    iget-object v0, p0, Landroid/os/UserManagerCache;->mUserSerialNumber:Landroid/os/IpcDataCache;

    if-eqz v0, :cond_d

    .line 635
    iget-object p1, p0, Landroid/os/UserManagerCache;->mUserSerialNumber:Landroid/os/IpcDataCache;

    invoke-virtual {p1, p3}, Landroid/os/IpcDataCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    return-object p1

    .line 637
    :cond_d
    iget-object v0, p0, Landroid/os/UserManagerCache;->mUserSerialNumberLock:Ljava/lang/Object;

    monitor-enter v0

    .line 638
    :try_start_10
    iget-object v1, p0, Landroid/os/UserManagerCache;->mUserSerialNumber:Landroid/os/IpcDataCache;

    if-nez v1, :cond_2f

    .line 639
    new-instance v1, Landroid/os/IpcDataCache$Config;

    const-string/jumbo v2, "system_server"

    const-string/jumbo v3, "user_manager_users"

    const-string v4, "UserSerialNumber"

    const/16 v5, 0x20

    invoke-direct {v1, v5, v2, v3, v4}, Landroid/os/IpcDataCache$Config;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 640
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/IpcDataCache$Config;->cacheNulls(Z)Landroid/os/IpcDataCache$Config;

    move-result-object v1

    .line 641
    new-instance v2, Landroid/os/IpcDataCache;

    invoke-direct {v2, v1, p1, p2}, Landroid/os/IpcDataCache;-><init>(Landroid/os/IpcDataCache$Config;Landroid/os/IpcDataCache$RemoteCall;Landroid/os/IpcDataCache$BypassCall;)V

    iput-object v2, p0, Landroid/os/UserManagerCache;->mUserSerialNumber:Landroid/os/IpcDataCache;

    .line 644
    :cond_2f
    monitor-exit v0
    :try_end_30
    .catchall {:try_start_10 .. :try_end_30} :catchall_39

    .line 645
    iget-object p1, p0, Landroid/os/UserManagerCache;->mUserSerialNumber:Landroid/os/IpcDataCache;

    invoke-virtual {p1, p3}, Landroid/os/IpcDataCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    return-object p1

    .line 644
    :catchall_39
    move-exception p1

    :try_start_3a
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_39

    throw p1
.end method

.method public blacklist getUserSerialNumber(Landroid/os/IpcDataCache$RemoteCall;Ljava/lang/Integer;)Ljava/lang/Integer;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IpcDataCache$RemoteCall<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/lang/Integer;"
        }
    .end annotation

    .line 658
    iget-object v0, p0, Landroid/os/UserManagerCache;->mUserSerialNumber:Landroid/os/IpcDataCache;

    if-eqz v0, :cond_d

    .line 659
    iget-object p1, p0, Landroid/os/UserManagerCache;->mUserSerialNumber:Landroid/os/IpcDataCache;

    invoke-virtual {p1, p2}, Landroid/os/IpcDataCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    return-object p1

    .line 661
    :cond_d
    iget-object v0, p0, Landroid/os/UserManagerCache;->mUserSerialNumberLock:Ljava/lang/Object;

    monitor-enter v0

    .line 662
    :try_start_10
    iget-object v1, p0, Landroid/os/UserManagerCache;->mUserSerialNumber:Landroid/os/IpcDataCache;

    if-nez v1, :cond_2f

    .line 663
    new-instance v1, Landroid/os/IpcDataCache$Config;

    const-string/jumbo v2, "system_server"

    const-string/jumbo v3, "user_manager_users"

    const-string v4, "UserSerialNumber"

    const/16 v5, 0x20

    invoke-direct {v1, v5, v2, v3, v4}, Landroid/os/IpcDataCache$Config;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 664
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/IpcDataCache$Config;->cacheNulls(Z)Landroid/os/IpcDataCache$Config;

    move-result-object v1

    .line 665
    new-instance v2, Landroid/os/IpcDataCache;

    invoke-direct {v2, v1, p1}, Landroid/os/IpcDataCache;-><init>(Landroid/os/IpcDataCache$Config;Landroid/os/IpcDataCache$RemoteCall;)V

    iput-object v2, p0, Landroid/os/UserManagerCache;->mUserSerialNumber:Landroid/os/IpcDataCache;

    .line 668
    :cond_2f
    monitor-exit v0
    :try_end_30
    .catchall {:try_start_10 .. :try_end_30} :catchall_39

    .line 669
    iget-object p1, p0, Landroid/os/UserManagerCache;->mUserSerialNumber:Landroid/os/IpcDataCache;

    invoke-virtual {p1, p2}, Landroid/os/IpcDataCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    return-object p1

    .line 668
    :catchall_39
    move-exception p1

    :try_start_3a
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_39

    throw p1
.end method

.method public blacklist isQuietModeEnabled(Landroid/os/IpcDataCache$RemoteCall;Landroid/os/IpcDataCache$BypassCall;Landroid/os/UserHandle;)Ljava/lang/Boolean;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IpcDataCache$RemoteCall<",
            "Landroid/os/UserHandle;",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroid/os/IpcDataCache$BypassCall<",
            "Landroid/os/UserHandle;",
            ">;",
            "Landroid/os/UserHandle;",
            ")",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .line 573
    iget-object v0, p0, Landroid/os/UserManagerCache;->mQuietModeEnabled:Landroid/os/IpcDataCache;

    if-eqz v0, :cond_d

    .line 574
    iget-object p1, p0, Landroid/os/UserManagerCache;->mQuietModeEnabled:Landroid/os/IpcDataCache;

    invoke-virtual {p1, p3}, Landroid/os/IpcDataCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    return-object p1

    .line 576
    :cond_d
    iget-object v0, p0, Landroid/os/UserManagerCache;->mQuietModeEnabledLock:Ljava/lang/Object;

    monitor-enter v0

    .line 577
    :try_start_10
    iget-object v1, p0, Landroid/os/UserManagerCache;->mQuietModeEnabled:Landroid/os/IpcDataCache;

    if-nez v1, :cond_2f

    .line 578
    new-instance v1, Landroid/os/IpcDataCache$Config;

    const-string/jumbo v2, "system_server"

    const-string/jumbo v3, "user_manager_quiet_mode_enabled"

    const-string v4, "QuietModeEnabled"

    const/16 v5, 0x20

    invoke-direct {v1, v5, v2, v3, v4}, Landroid/os/IpcDataCache$Config;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 579
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/IpcDataCache$Config;->cacheNulls(Z)Landroid/os/IpcDataCache$Config;

    move-result-object v1

    .line 580
    new-instance v2, Landroid/os/IpcDataCache;

    invoke-direct {v2, v1, p1, p2}, Landroid/os/IpcDataCache;-><init>(Landroid/os/IpcDataCache$Config;Landroid/os/IpcDataCache$RemoteCall;Landroid/os/IpcDataCache$BypassCall;)V

    iput-object v2, p0, Landroid/os/UserManagerCache;->mQuietModeEnabled:Landroid/os/IpcDataCache;

    .line 583
    :cond_2f
    monitor-exit v0
    :try_end_30
    .catchall {:try_start_10 .. :try_end_30} :catchall_39

    .line 584
    iget-object p1, p0, Landroid/os/UserManagerCache;->mQuietModeEnabled:Landroid/os/IpcDataCache;

    invoke-virtual {p1, p3}, Landroid/os/IpcDataCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    return-object p1

    .line 583
    :catchall_39
    move-exception p1

    :try_start_3a
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_39

    throw p1
.end method

.method public blacklist isQuietModeEnabled(Landroid/os/IpcDataCache$RemoteCall;Landroid/os/UserHandle;)Ljava/lang/Boolean;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IpcDataCache$RemoteCall<",
            "Landroid/os/UserHandle;",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroid/os/UserHandle;",
            ")",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .line 597
    iget-object v0, p0, Landroid/os/UserManagerCache;->mQuietModeEnabled:Landroid/os/IpcDataCache;

    if-eqz v0, :cond_d

    .line 598
    iget-object p1, p0, Landroid/os/UserManagerCache;->mQuietModeEnabled:Landroid/os/IpcDataCache;

    invoke-virtual {p1, p2}, Landroid/os/IpcDataCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    return-object p1

    .line 600
    :cond_d
    iget-object v0, p0, Landroid/os/UserManagerCache;->mQuietModeEnabledLock:Ljava/lang/Object;

    monitor-enter v0

    .line 601
    :try_start_10
    iget-object v1, p0, Landroid/os/UserManagerCache;->mQuietModeEnabled:Landroid/os/IpcDataCache;

    if-nez v1, :cond_2f

    .line 602
    new-instance v1, Landroid/os/IpcDataCache$Config;

    const-string/jumbo v2, "system_server"

    const-string/jumbo v3, "user_manager_quiet_mode_enabled"

    const-string v4, "QuietModeEnabled"

    const/16 v5, 0x20

    invoke-direct {v1, v5, v2, v3, v4}, Landroid/os/IpcDataCache$Config;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/IpcDataCache$Config;->cacheNulls(Z)Landroid/os/IpcDataCache$Config;

    move-result-object v1

    .line 604
    new-instance v2, Landroid/os/IpcDataCache;

    invoke-direct {v2, v1, p1}, Landroid/os/IpcDataCache;-><init>(Landroid/os/IpcDataCache$Config;Landroid/os/IpcDataCache$RemoteCall;)V

    iput-object v2, p0, Landroid/os/UserManagerCache;->mQuietModeEnabled:Landroid/os/IpcDataCache;

    .line 607
    :cond_2f
    monitor-exit v0
    :try_end_30
    .catchall {:try_start_10 .. :try_end_30} :catchall_39

    .line 608
    iget-object p1, p0, Landroid/os/UserManagerCache;->mQuietModeEnabled:Landroid/os/IpcDataCache;

    invoke-virtual {p1, p2}, Landroid/os/IpcDataCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    return-object p1

    .line 607
    :catchall_39
    move-exception p1

    :try_start_3a
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_39

    throw p1
.end method
