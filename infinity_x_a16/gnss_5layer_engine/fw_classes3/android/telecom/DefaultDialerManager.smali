.class public Landroid/telecom/DefaultDialerManager;
.super Ljava/lang/Object;
.source "DefaultDialerManager.java"


# static fields
.field private static final greylist-max-o TAG:Ljava/lang/String; = "DefaultDialerManager"


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static greylist-max-o filterByIntent(Landroid/content/Context;Ljava/util/List;Landroid/content/Intent;I)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/Intent;",
            "I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 280
    if-eqz p1, :cond_41

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_41

    .line 284
    :cond_9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 285
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 286
    const/4 v1, 0x0

    invoke-virtual {p0, p2, v1, p3}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object p0

    .line 287
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p2

    .line 288
    nop

    :goto_1c
    if-ge v1, p2, :cond_40

    .line 289
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/content/pm/ResolveInfo;

    iget-object p3, p3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 290
    if-eqz p3, :cond_3d

    iget-object v2, p3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {p1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3d

    iget-object v2, p3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 291
    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3d

    .line 292
    iget-object p3, p3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 288
    :cond_3d
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    .line 296
    :cond_40
    return-object v0

    .line 281
    :cond_41
    :goto_41
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public static greylist-max-o getDefaultDialerApplication(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .line 155
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/Flags;->resolveHiddenDependenciesTwo()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 156
    invoke-virtual {p0}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/telecom/DefaultDialerManager;->getDefaultDialerApplication(Landroid/content/Context;Landroid/os/UserHandle;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 158
    :cond_f
    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-static {p0, v0}, Landroid/telecom/DefaultDialerManager;->getDefaultDialerApplicationLegacy(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist getDefaultDialerApplication(Landroid/content/Context;Landroid/os/UserHandle;)Ljava/lang/String;
    .registers 5

    .line 176
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 178
    :try_start_4
    const-class v2, Landroid/app/role/RoleManager;

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/role/RoleManager;

    const-string v2, "android.app.role.DIALER"

    .line 179
    invoke-virtual {p0, v2, p1}, Landroid/app/role/RoleManager;->getRoleHoldersAsUser(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object p0

    .line 178
    invoke-static {p0}, Lcom/android/internal/util/CollectionUtils;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_18
    .catchall {:try_start_4 .. :try_end_18} :catchall_1c

    .line 181
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 178
    return-object p0

    .line 181
    :catchall_1c
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 182
    throw p0
.end method

.method public static blacklist getDefaultDialerApplicationLegacy(Landroid/content/Context;I)Ljava/lang/String;
    .registers 5

    .line 199
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 201
    :try_start_4
    const-class v2, Landroid/app/role/RoleManager;

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/role/RoleManager;

    const-string v2, "android.app.role.DIALER"

    .line 202
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p1

    invoke-virtual {p0, v2, p1}, Landroid/app/role/RoleManager;->getRoleHoldersAsUser(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object p0

    .line 201
    invoke-static {p0}, Lcom/android/internal/util/CollectionUtils;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_1c
    .catchall {:try_start_4 .. :try_end_1c} :catchall_20

    .line 204
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 201
    return-object p0

    .line 204
    :catchall_20
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 205
    throw p0
.end method

.method public static greylist-max-o getInstalledDialerApplications(Landroid/content/Context;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 245
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-static {p0, v0}, Landroid/telecom/DefaultDialerManager;->getInstalledDialerApplications(Landroid/content/Context;I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static greylist-max-o getInstalledDialerApplications(Landroid/content/Context;I)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 220
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 223
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.DIAL"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 224
    nop

    .line 225
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, p1}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v0

    .line 227
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 229
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 230
    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 231
    if-eqz v4, :cond_3c

    iget-object v5, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 232
    invoke-interface {v1, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3c

    iget v3, v3, Landroid/content/pm/ResolveInfo;->targetUserId:I

    const/4 v5, -0x2

    if-ne v3, v5, :cond_3c

    .line 235
    iget-object v3, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 237
    :cond_3c
    goto :goto_1a

    .line 239
    :cond_3d
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 240
    const-string v2, ""

    const/4 v3, 0x0

    const-string/jumbo v4, "tel"

    invoke-static {v4, v2, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 241
    invoke-static {p0, v1, v0, p1}, Landroid/telecom/DefaultDialerManager;->filterByIntent(Landroid/content/Context;Ljava/util/List;Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static greylist-max-o getTelecomManager(Landroid/content/Context;)Landroid/telecom/TelecomManager;
    .registers 2

    .line 301
    const-string/jumbo v0, "telecom"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telecom/TelecomManager;

    return-object p0
.end method

.method public static greylist-max-o isDefaultOrSystemDialer(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 4

    .line 261
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 262
    return v1

    .line 264
    :cond_8
    invoke-static {p0}, Landroid/telecom/DefaultDialerManager;->getTelecomManager(Landroid/content/Context;)Landroid/telecom/TelecomManager;

    move-result-object p0

    .line 265
    invoke-virtual {p0}, Landroid/telecom/TelecomManager;->getDefaultDialerPackage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    .line 266
    invoke-virtual {p0}, Landroid/telecom/TelecomManager;->getSystemDialerPackage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_21

    :cond_20
    const/4 v1, 0x1

    .line 265
    :cond_21
    return v1
.end method

.method static synthetic blacklist lambda$setDefaultDialerApplication$0(Ljava/util/concurrent/CompletableFuture;Ljava/lang/Boolean;)V
    .registers 2

    .line 87
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 88
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    goto :goto_13

    .line 90
    :cond_b
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    .line 92
    :goto_13
    return-void
.end method

.method static synthetic blacklist lambda$setDefaultDialerApplicationLegacy$1(Ljava/util/concurrent/CompletableFuture;Ljava/lang/Boolean;)V
    .registers 2

    .line 122
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 123
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    goto :goto_13

    .line 125
    :cond_b
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    .line 127
    :goto_13
    return-void
.end method

.method public static greylist-max-o setDefaultDialerApplication(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 3

    .line 63
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/Flags;->resolveHiddenDependenciesTwo()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 64
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-static {p0, p1, v0}, Landroid/telecom/DefaultDialerManager;->setDefaultDialerApplication(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result p0

    return p0

    .line 66
    :cond_f
    nop

    .line 67
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 66
    invoke-static {p0, p1, v0}, Landroid/telecom/DefaultDialerManager;->setDefaultDialerApplicationLegacy(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public static blacklist setDefaultDialerApplication(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;)Z
    .registers 13

    .line 83
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 85
    :try_start_4
    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 86
    new-instance v9, Landroid/telecom/DefaultDialerManager$$ExternalSyntheticLambda1;

    invoke-direct {v9, v0}, Landroid/telecom/DefaultDialerManager$$ExternalSyntheticLambda1;-><init>(Ljava/util/concurrent/CompletableFuture;)V

    .line 93
    const-class v3, Landroid/app/role/RoleManager;

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    move-object v3, p0

    check-cast v3, Landroid/app/role/RoleManager;

    const-string v4, "android.app.role.DIALER"

    sget-object v8, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;
    :try_end_1b
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_1b} :catch_33
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_4 .. :try_end_1b} :catch_33
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_4 .. :try_end_1b} :catch_33
    .catchall {:try_start_4 .. :try_end_1b} :catchall_30

    const/4 v6, 0x0

    move-object v5, p1

    move-object v7, p2

    :try_start_1e
    invoke-virtual/range {v3 .. v9}, Landroid/app/role/RoleManager;->addRoleHolderAsUser(Ljava/lang/String;Ljava/lang/String;ILandroid/os/UserHandle;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 96
    sget-object p0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 p1, 0x5

    invoke-virtual {v0, p1, p2, p0}, Ljava/util/concurrent/CompletableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_28
    .catch Ljava/lang/InterruptedException; {:try_start_1e .. :try_end_28} :catch_2e
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1e .. :try_end_28} :catch_2e
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1e .. :try_end_28} :catch_2e
    .catchall {:try_start_1e .. :try_end_28} :catchall_30

    .line 97
    nop

    .line 102
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 97
    const/4 p0, 0x1

    return p0

    .line 98
    :catch_2e
    move-exception v0

    goto :goto_36

    .line 102
    :catchall_30
    move-exception v0

    move-object p0, v0

    goto :goto_5f

    .line 98
    :catch_33
    move-exception v0

    move-object v5, p1

    move-object v7, p2

    :goto_36
    move-object p0, v0

    .line 99
    :try_start_37
    const-string p1, "DefaultDialerManager"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to set default dialer to "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " for user "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_59
    .catchall {:try_start_37 .. :try_end_59} :catchall_30

    .line 100
    nop

    .line 102
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 100
    const/4 p0, 0x0

    return p0

    .line 102
    :goto_5f
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 103
    throw p0
.end method

.method public static blacklist setDefaultDialerApplicationLegacy(Landroid/content/Context;Ljava/lang/String;I)Z
    .registers 13

    .line 118
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 120
    :try_start_4
    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 121
    new-instance v9, Landroid/telecom/DefaultDialerManager$$ExternalSyntheticLambda0;

    invoke-direct {v9, v0}, Landroid/telecom/DefaultDialerManager$$ExternalSyntheticLambda0;-><init>(Ljava/util/concurrent/CompletableFuture;)V

    .line 128
    const-class v3, Landroid/app/role/RoleManager;

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    move-object v3, p0

    check-cast v3, Landroid/app/role/RoleManager;

    const-string v4, "android.app.role.DIALER"

    .line 129
    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v7

    sget-object v8, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;
    :try_end_1f
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_1f} :catch_36
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_4 .. :try_end_1f} :catch_36
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_4 .. :try_end_1f} :catch_36
    .catchall {:try_start_4 .. :try_end_1f} :catchall_33

    .line 128
    const/4 v6, 0x0

    move-object v5, p1

    :try_start_21
    invoke-virtual/range {v3 .. v9}, Landroid/app/role/RoleManager;->addRoleHolderAsUser(Ljava/lang/String;Ljava/lang/String;ILandroid/os/UserHandle;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 131
    sget-object p0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x5

    invoke-virtual {v0, v3, v4, p0}, Ljava/util/concurrent/CompletableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_2b
    .catch Ljava/lang/InterruptedException; {:try_start_21 .. :try_end_2b} :catch_31
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_21 .. :try_end_2b} :catch_31
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_21 .. :try_end_2b} :catch_31
    .catchall {:try_start_21 .. :try_end_2b} :catchall_33

    .line 132
    nop

    .line 137
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 132
    const/4 p0, 0x1

    return p0

    .line 133
    :catch_31
    move-exception v0

    goto :goto_38

    .line 137
    :catchall_33
    move-exception v0

    move-object p0, v0

    goto :goto_61

    .line 133
    :catch_36
    move-exception v0

    move-object v5, p1

    :goto_38
    move-object p0, v0

    .line 134
    :try_start_39
    const-string p1, "DefaultDialerManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to set default dialer to "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " for user "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5b
    .catchall {:try_start_39 .. :try_end_5b} :catchall_33

    .line 135
    nop

    .line 137
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 135
    const/4 p0, 0x0

    return p0

    .line 137
    :goto_61
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 138
    throw p0
.end method
