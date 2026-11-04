.class public abstract Lcom/android/internal/content/PackageMonitor;
.super Landroid/content/BroadcastReceiver;
.source "PackageMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/content/PackageMonitor$PackageMonitorCallback;
    }
.end annotation


# static fields
.field public static final greylist-max-o PACKAGE_PERMANENT_CHANGE:I = 0x3

.field public static final greylist-max-o PACKAGE_TEMPORARY_CHANGE:I = 0x2

.field public static final greylist-max-o PACKAGE_UNCHANGED:I = 0x0

.field public static final greylist-max-o PACKAGE_UPDATING:I = 0x1

.field static final blacklist TAG:Ljava/lang/String; = "PackageMonitor"


# instance fields
.field greylist-max-o mAppearingPackages:[Ljava/lang/String;

.field greylist-max-o mChangeType:I

.field greylist-max-o mChangeUserId:I

.field greylist-max-o mDisappearingPackages:[Ljava/lang/String;

.field private blacklist mExecutor:Ljava/util/concurrent/Executor;

.field greylist-max-o mModifiedComponents:[Ljava/lang/String;

.field greylist-max-o mModifiedPackages:[Ljava/lang/String;

.field blacklist mPackageMonitorCallback:Lcom/android/internal/content/PackageMonitor$PackageMonitorCallback;

.field greylist-max-o mRegisteredContext:Landroid/content/Context;

.field greylist-max-o mRegisteredHandler:Landroid/os/Handler;

.field greylist-max-o mSomePackagesChanged:Z

.field final blacklist mSupportsPackageRestartQuery:Z

.field greylist-max-o mTempArray:[Ljava/lang/String;


# direct methods
.method public static synthetic blacklist $r8$lambda$bSKEInwdT6Kd7GAyzMZPsXTTqeQ(Lcom/android/internal/content/PackageMonitor;Landroid/content/Intent;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/content/PackageMonitor;->lambda$postHandlePackageEvent$0(Landroid/content/Intent;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mpostHandlePackageEvent(Lcom/android/internal/content/PackageMonitor;Landroid/content/Intent;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/content/PackageMonitor;->postHandlePackageEvent(Landroid/content/Intent;)V

    return-void
.end method

.method public constructor greylist <init>()V
    .registers 2

    .line 73
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/content/PackageMonitor;-><init>(Z)V

    .line 74
    return-void
.end method

.method public constructor blacklist <init>(Z)V
    .registers 3

    .line 80
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 59
    const/16 v0, -0x2710

    iput v0, p0, Lcom/android/internal/content/PackageMonitor;->mChangeUserId:I

    .line 63
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/content/PackageMonitor;->mTempArray:[Ljava/lang/String;

    .line 81
    iput-boolean p1, p0, Lcom/android/internal/content/PackageMonitor;->mSupportsPackageRestartQuery:Z

    .line 82
    return-void
.end method

.method private blacklist getPackageFilter()Landroid/content/IntentFilter;
    .registers 4

    .line 85
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v0

    .line 87
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 89
    const-string v2, "android.intent.action.QUERY_PACKAGE_RESTART"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 90
    const-string v2, "package"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 91
    if-eqz v0, :cond_1e

    .line 92
    const/16 v0, 0x3e8

    invoke-virtual {v1, v0}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 94
    :cond_1e
    return-object v1
.end method

.method private synthetic blacklist lambda$postHandlePackageEvent$0(Landroid/content/Intent;)V
    .registers 2

    .line 433
    invoke-virtual {p0, p1}, Lcom/android/internal/content/PackageMonitor;->doHandlePackageEvent(Landroid/content/Intent;)V

    return-void
.end method

.method private blacklist postHandlePackageEvent(Landroid/content/Intent;)V
    .registers 4

    .line 432
    iget-object v0, p0, Lcom/android/internal/content/PackageMonitor;->mExecutor:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_e

    .line 433
    iget-object v0, p0, Lcom/android/internal/content/PackageMonitor;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/internal/content/PackageMonitor$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/content/PackageMonitor$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/content/PackageMonitor;Landroid/content/Intent;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 435
    :cond_e
    return-void
.end method


# virtual methods
.method public greylist-max-o anyPackagesAppearing()Z
    .registers 2

    .line 352
    iget-object v0, p0, Lcom/android/internal/content/PackageMonitor;->mAppearingPackages:[Ljava/lang/String;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public greylist-max-o anyPackagesDisappearing()Z
    .registers 2

    .line 368
    iget-object v0, p0, Lcom/android/internal/content/PackageMonitor;->mDisappearingPackages:[Ljava/lang/String;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public greylist-max-o didSomePackagesChange()Z
    .registers 2

    .line 337
    iget-boolean v0, p0, Lcom/android/internal/content/PackageMonitor;->mSomePackagesChanged:Z

    return v0
.end method

.method public final blacklist doHandlePackageEvent(Landroid/content/Intent;)V
    .registers 15

    .line 443
    const-string v0, "android.intent.extra.user_handle"

    const/16 v1, -0x2710

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/content/PackageMonitor;->mChangeUserId:I

    .line 445
    iget v0, p0, Lcom/android/internal/content/PackageMonitor;->mChangeUserId:I

    if-ne v0, v1, :cond_27

    .line 446
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Intent broadcast does not contain user handle: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PackageMonitor"

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    return-void

    .line 449
    :cond_27
    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->onBeginPackageChanges()V

    .line 451
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/content/PackageMonitor;->mAppearingPackages:[Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/content/PackageMonitor;->mDisappearingPackages:[Ljava/lang/String;

    .line 452
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/content/PackageMonitor;->mSomePackagesChanged:Z

    .line 453
    iput-object v0, p0, Lcom/android/internal/content/PackageMonitor;->mModifiedComponents:[Ljava/lang/String;

    .line 455
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 456
    const-string v3, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x3

    const-string v5, "android.intent.extra.REPLACING"

    const-string v6, "android.intent.extra.UID"

    const/4 v7, 0x1

    if-eqz v3, :cond_96

    .line 457
    invoke-virtual {p0, p1}, Lcom/android/internal/content/PackageMonitor;->getPackageName(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 458
    invoke-virtual {p1, v6, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 462
    iput-boolean v7, p0, Lcom/android/internal/content/PackageMonitor;->mSomePackagesChanged:Z

    .line 463
    if-eqz v0, :cond_93

    .line 464
    iget-object v6, p0, Lcom/android/internal/content/PackageMonitor;->mTempArray:[Ljava/lang/String;

    iput-object v6, p0, Lcom/android/internal/content/PackageMonitor;->mAppearingPackages:[Ljava/lang/String;

    .line 465
    iget-object v6, p0, Lcom/android/internal/content/PackageMonitor;->mTempArray:[Ljava/lang/String;

    aput-object v0, v6, v2

    .line 466
    invoke-virtual {p1, v5, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_7b

    .line 467
    iget-object v2, p0, Lcom/android/internal/content/PackageMonitor;->mTempArray:[Ljava/lang/String;

    iput-object v2, p0, Lcom/android/internal/content/PackageMonitor;->mModifiedPackages:[Ljava/lang/String;

    .line 468
    iput v7, p0, Lcom/android/internal/content/PackageMonitor;->mChangeType:I

    .line 469
    invoke-virtual {p0, v0, v3}, Lcom/android/internal/content/PackageMonitor;->onPackageUpdateFinished(Ljava/lang/String;I)V

    .line 470
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {p0, v0, v3, v2}, Lcom/android/internal/content/PackageMonitor;->onPackageUpdateFinishedWithExtras(Ljava/lang/String;ILandroid/os/Bundle;)V

    .line 471
    invoke-virtual {p0, v0}, Lcom/android/internal/content/PackageMonitor;->onPackageModified(Ljava/lang/String;)V

    .line 472
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/android/internal/content/PackageMonitor;->onPackageModifiedWithExtras(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_87

    .line 474
    :cond_7b
    iput v4, p0, Lcom/android/internal/content/PackageMonitor;->mChangeType:I

    .line 475
    invoke-virtual {p0, v0, v3}, Lcom/android/internal/content/PackageMonitor;->onPackageAdded(Ljava/lang/String;I)V

    .line 476
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {p0, v0, v3, v2}, Lcom/android/internal/content/PackageMonitor;->onPackageAddedWithExtras(Ljava/lang/String;ILandroid/os/Bundle;)V

    .line 478
    :goto_87
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/content/PackageMonitor;->onPackageAppearedWithExtras(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 479
    iget p1, p0, Lcom/android/internal/content/PackageMonitor;->mChangeType:I

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/content/PackageMonitor;->onPackageAppeared(Ljava/lang/String;I)V

    .line 481
    :cond_93
    move-object v3, p0

    goto/16 :goto_26b

    :cond_96
    const-string v3, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_104

    .line 482
    invoke-virtual {p0, p1}, Lcom/android/internal/content/PackageMonitor;->getPackageName(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 483
    invoke-virtual {p1, v6, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 484
    if-eqz v0, :cond_101

    .line 485
    iget-object v6, p0, Lcom/android/internal/content/PackageMonitor;->mTempArray:[Ljava/lang/String;

    iput-object v6, p0, Lcom/android/internal/content/PackageMonitor;->mDisappearingPackages:[Ljava/lang/String;

    .line 486
    iget-object v6, p0, Lcom/android/internal/content/PackageMonitor;->mTempArray:[Ljava/lang/String;

    aput-object v0, v6, v2

    .line 487
    invoke-virtual {p1, v5, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_d5

    .line 488
    iput v7, p0, Lcom/android/internal/content/PackageMonitor;->mChangeType:I

    .line 489
    invoke-virtual {p0, v0, v3}, Lcom/android/internal/content/PackageMonitor;->onPackageUpdateStarted(Ljava/lang/String;I)V

    .line 490
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {p0, v0, v3, v4}, Lcom/android/internal/content/PackageMonitor;->onPackageUpdateStartedWithExtras(Ljava/lang/String;ILandroid/os/Bundle;)V

    .line 491
    const-string v3, "android.intent.extra.ARCHIVAL"

    invoke-virtual {p1, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_f5

    .line 495
    invoke-virtual {p0, v0}, Lcom/android/internal/content/PackageMonitor;->onPackageModified(Ljava/lang/String;)V

    .line 496
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/android/internal/content/PackageMonitor;->onPackageModifiedWithExtras(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_f5

    .line 499
    :cond_d5
    iput v4, p0, Lcom/android/internal/content/PackageMonitor;->mChangeType:I

    .line 503
    iput-boolean v7, p0, Lcom/android/internal/content/PackageMonitor;->mSomePackagesChanged:Z

    .line 504
    invoke-virtual {p0, v0, v3}, Lcom/android/internal/content/PackageMonitor;->onPackageRemoved(Ljava/lang/String;I)V

    .line 505
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {p0, v0, v3, v4}, Lcom/android/internal/content/PackageMonitor;->onPackageRemovedWithExtras(Ljava/lang/String;ILandroid/os/Bundle;)V

    .line 506
    const-string v4, "android.intent.extra.REMOVED_FOR_ALL_USERS"

    invoke-virtual {p1, v4, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_f5

    .line 507
    invoke-virtual {p0, v0, v3}, Lcom/android/internal/content/PackageMonitor;->onPackageRemovedAllUsers(Ljava/lang/String;I)V

    .line 508
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {p0, v0, v3, v2}, Lcom/android/internal/content/PackageMonitor;->onPackageRemovedAllUsersWithExtras(Ljava/lang/String;ILandroid/os/Bundle;)V

    .line 511
    :cond_f5
    :goto_f5
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/content/PackageMonitor;->onPackageDisappearedWithExtras(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 512
    iget p1, p0, Lcom/android/internal/content/PackageMonitor;->mChangeType:I

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/content/PackageMonitor;->onPackageDisappeared(Ljava/lang/String;I)V

    .line 514
    :cond_101
    move-object v3, p0

    goto/16 :goto_26b

    :cond_104
    const-string v3, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_146

    .line 515
    invoke-virtual {p0, p1}, Lcom/android/internal/content/PackageMonitor;->getPackageName(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 516
    invoke-virtual {p1, v6, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 517
    const-string v5, "android.intent.extra.changed_component_name_list"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/content/PackageMonitor;->mModifiedComponents:[Ljava/lang/String;

    .line 519
    if-eqz v0, :cond_143

    .line 520
    iget-object v5, p0, Lcom/android/internal/content/PackageMonitor;->mTempArray:[Ljava/lang/String;

    iput-object v5, p0, Lcom/android/internal/content/PackageMonitor;->mModifiedPackages:[Ljava/lang/String;

    .line 521
    iget-object v5, p0, Lcom/android/internal/content/PackageMonitor;->mTempArray:[Ljava/lang/String;

    aput-object v0, v5, v2

    .line 522
    iput v4, p0, Lcom/android/internal/content/PackageMonitor;->mChangeType:I

    .line 523
    iget-object v2, p0, Lcom/android/internal/content/PackageMonitor;->mModifiedComponents:[Ljava/lang/String;

    invoke-virtual {p0, v0, v3, v2}, Lcom/android/internal/content/PackageMonitor;->onPackageChanged(Ljava/lang/String;I[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_132

    .line 524
    iput-boolean v7, p0, Lcom/android/internal/content/PackageMonitor;->mSomePackagesChanged:Z

    .line 526
    :cond_132
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/android/internal/content/PackageMonitor;->onPackageChangedWithExtras(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 527
    invoke-virtual {p0, v0}, Lcom/android/internal/content/PackageMonitor;->onPackageModified(Ljava/lang/String;)V

    .line 528
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/content/PackageMonitor;->onPackageModifiedWithExtras(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 530
    :cond_143
    move-object v3, p0

    goto/16 :goto_26b

    :cond_146
    const-string v3, "android.intent.action.PACKAGE_DATA_CLEARED"

    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15e

    .line 531
    invoke-virtual {p0, p1}, Lcom/android/internal/content/PackageMonitor;->getPackageName(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 532
    invoke-virtual {p1, v6, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 533
    if-eqz v0, :cond_15b

    .line 534
    invoke-virtual {p0, v0, p1}, Lcom/android/internal/content/PackageMonitor;->onPackageDataCleared(Ljava/lang/String;I)V

    .line 536
    :cond_15b
    move-object v3, p0

    goto/16 :goto_26b

    :cond_15e
    const-string v3, "android.intent.action.QUERY_PACKAGE_RESTART"

    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x2

    if-eqz v3, :cond_18b

    .line 537
    const-string v0, "android.intent.extra.PACKAGES"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/content/PackageMonitor;->mDisappearingPackages:[Ljava/lang/String;

    .line 538
    iput v4, p0, Lcom/android/internal/content/PackageMonitor;->mChangeType:I

    .line 539
    iget-object v9, p0, Lcom/android/internal/content/PackageMonitor;->mDisappearingPackages:[Ljava/lang/String;

    .line 541
    invoke-virtual {p1, v6, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v12

    .line 539
    const/4 v11, 0x0

    move-object v7, p0

    move-object v8, p1

    invoke-virtual/range {v7 .. v12}, Lcom/android/internal/content/PackageMonitor;->onHandleForceStop(Landroid/content/Intent;[Ljava/lang/String;IZLandroid/os/Bundle;)Z

    move-result p1

    .line 542
    move-object v3, v7

    if-eqz p1, :cond_189

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Lcom/android/internal/content/PackageMonitor;->setResultCode(I)V

    .line 543
    :cond_189
    goto/16 :goto_26b

    :cond_18b
    move-object v3, p0

    move-object v8, p1

    const-string p1, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1b4

    .line 544
    invoke-virtual {p0, v8}, Lcom/android/internal/content/PackageMonitor;->getPackageName(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    iput-object p1, v3, Lcom/android/internal/content/PackageMonitor;->mDisappearingPackages:[Ljava/lang/String;

    .line 545
    iput v4, v3, Lcom/android/internal/content/PackageMonitor;->mChangeType:I

    .line 546
    iget-object v4, v3, Lcom/android/internal/content/PackageMonitor;->mDisappearingPackages:[Ljava/lang/String;

    .line 547
    invoke-virtual {v8, v6, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v8}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    .line 546
    const/4 v6, 0x1

    move-object v2, v3

    move-object v3, v8

    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/content/PackageMonitor;->onHandleForceStop(Landroid/content/Intent;[Ljava/lang/String;IZLandroid/os/Bundle;)Z

    move-object v3, v2

    goto/16 :goto_26b

    .line 548
    :cond_1b4
    const-string p1, "android.intent.action.UID_REMOVED"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1c5

    .line 549
    invoke-virtual {v8, v6, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/internal/content/PackageMonitor;->onUidRemoved(I)V

    goto/16 :goto_26b

    .line 550
    :cond_1c5
    const-string p1, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string v9, "android.intent.extra.changed_package_list"

    if-eqz p1, :cond_1f7

    .line 551
    invoke-virtual {v8, v9}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 552
    iput-object p1, v3, Lcom/android/internal/content/PackageMonitor;->mAppearingPackages:[Ljava/lang/String;

    .line 553
    invoke-virtual {v8, v5, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1dd

    .line 554
    move v4, v7

    goto :goto_1de

    :cond_1dd
    nop

    :goto_1de
    iput v4, v3, Lcom/android/internal/content/PackageMonitor;->mChangeType:I

    .line 555
    iput-boolean v7, v3, Lcom/android/internal/content/PackageMonitor;->mSomePackagesChanged:Z

    .line 556
    if-eqz p1, :cond_1f5

    .line 557
    invoke-virtual {p0, p1}, Lcom/android/internal/content/PackageMonitor;->onPackagesAvailable([Ljava/lang/String;)V

    .line 558
    nop

    :goto_1e8
    array-length v0, p1

    if-ge v2, v0, :cond_1f5

    .line 559
    aget-object v0, p1, v2

    iget v4, v3, Lcom/android/internal/content/PackageMonitor;->mChangeType:I

    invoke-virtual {p0, v0, v4}, Lcom/android/internal/content/PackageMonitor;->onPackageAppeared(Ljava/lang/String;I)V

    .line 558
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e8

    .line 562
    :cond_1f5
    goto/16 :goto_26b

    :cond_1f7
    const-string p1, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_226

    .line 563
    invoke-virtual {v8, v9}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 564
    iput-object p1, v3, Lcom/android/internal/content/PackageMonitor;->mDisappearingPackages:[Ljava/lang/String;

    .line 565
    invoke-virtual {v8, v5, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_20d

    .line 566
    move v4, v7

    goto :goto_20e

    :cond_20d
    nop

    :goto_20e
    iput v4, v3, Lcom/android/internal/content/PackageMonitor;->mChangeType:I

    .line 567
    iput-boolean v7, v3, Lcom/android/internal/content/PackageMonitor;->mSomePackagesChanged:Z

    .line 568
    if-eqz p1, :cond_225

    .line 569
    invoke-virtual {p0, p1}, Lcom/android/internal/content/PackageMonitor;->onPackagesUnavailable([Ljava/lang/String;)V

    .line 570
    nop

    :goto_218
    array-length v0, p1

    if-ge v2, v0, :cond_225

    .line 571
    aget-object v0, p1, v2

    iget v4, v3, Lcom/android/internal/content/PackageMonitor;->mChangeType:I

    invoke-virtual {p0, v0, v4}, Lcom/android/internal/content/PackageMonitor;->onPackageDisappeared(Ljava/lang/String;I)V

    .line 570
    add-int/lit8 v2, v2, 0x1

    goto :goto_218

    .line 574
    :cond_225
    goto :goto_26b

    :cond_226
    const-string p1, "android.intent.action.PACKAGES_SUSPENDED"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_238

    .line 575
    invoke-virtual {v8, v9}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 576
    iput-boolean v7, v3, Lcom/android/internal/content/PackageMonitor;->mSomePackagesChanged:Z

    .line 577
    invoke-virtual {p0, p1}, Lcom/android/internal/content/PackageMonitor;->onPackagesSuspended([Ljava/lang/String;)V

    .line 578
    goto :goto_26b

    :cond_238
    const-string p1, "android.intent.action.PACKAGES_UNSUSPENDED"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_24a

    .line 579
    invoke-virtual {v8, v9}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 580
    iput-boolean v7, v3, Lcom/android/internal/content/PackageMonitor;->mSomePackagesChanged:Z

    .line 581
    invoke-virtual {p0, p1}, Lcom/android/internal/content/PackageMonitor;->onPackagesUnsuspended([Ljava/lang/String;)V

    goto :goto_26a

    .line 582
    :cond_24a
    const-string p1, "android.intent.action.PACKAGE_UNSTOPPED"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_26a

    .line 583
    invoke-virtual {p0, v8}, Lcom/android/internal/content/PackageMonitor;->getPackageName(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p1

    .line 584
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/android/internal/content/PackageMonitor;->mAppearingPackages:[Ljava/lang/String;

    .line 585
    iput v4, v3, Lcom/android/internal/content/PackageMonitor;->mChangeType:I

    .line 586
    invoke-virtual {v8, v6, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 587
    invoke-virtual {v8}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 586
    invoke-virtual {p0, p1, v0, v2}, Lcom/android/internal/content/PackageMonitor;->onPackageUnstopped(Ljava/lang/String;ILandroid/os/Bundle;)V

    goto :goto_26b

    .line 582
    :cond_26a
    :goto_26a
    nop

    .line 590
    :goto_26b
    iget-boolean p1, v3, Lcom/android/internal/content/PackageMonitor;->mSomePackagesChanged:Z

    if-eqz p1, :cond_272

    .line 591
    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->onSomePackagesChanged()V

    .line 594
    :cond_272
    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->onFinishPackageChanges()V

    .line 595
    iput v1, v3, Lcom/android/internal/content/PackageMonitor;->mChangeUserId:I

    .line 596
    return-void
.end method

.method public greylist-max-o getChangingUserId()I
    .registers 2

    .line 416
    iget v0, p0, Lcom/android/internal/content/PackageMonitor;->mChangeUserId:I

    return v0
.end method

.method greylist-max-o getPackageName(Landroid/content/Intent;)Ljava/lang/String;
    .registers 2

    .line 420
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    .line 421
    if-eqz p1, :cond_b

    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p1

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    .line 422
    :goto_c
    return-object p1
.end method

.method public greylist-max-o getRegisteredHandler()Landroid/os/Handler;
    .registers 2

    .line 138
    iget-object v0, p0, Lcom/android/internal/content/PackageMonitor;->mRegisteredHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public greylist-max-o isComponentModified(Ljava/lang/String;)Z
    .registers 6

    .line 388
    const/4 v0, 0x0

    if-eqz p1, :cond_1e

    iget-object v1, p0, Lcom/android/internal/content/PackageMonitor;->mModifiedComponents:[Ljava/lang/String;

    if-nez v1, :cond_8

    goto :goto_1e

    .line 391
    :cond_8
    iget-object v1, p0, Lcom/android/internal/content/PackageMonitor;->mModifiedComponents:[Ljava/lang/String;

    array-length v1, v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_d
    if-ltz v1, :cond_1d

    .line 392
    iget-object v3, p0, Lcom/android/internal/content/PackageMonitor;->mModifiedComponents:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 393
    return v2

    .line 391
    :cond_1a
    add-int/lit8 v1, v1, -0x1

    goto :goto_d

    .line 396
    :cond_1d
    return v0

    .line 389
    :cond_1e
    :goto_1e
    return v0
.end method

.method public greylist-max-o isPackageAppearing(Ljava/lang/String;)I
    .registers 4

    .line 341
    iget-object v0, p0, Lcom/android/internal/content/PackageMonitor;->mAppearingPackages:[Ljava/lang/String;

    if-eqz v0, :cond_1b

    .line 342
    iget-object v0, p0, Lcom/android/internal/content/PackageMonitor;->mAppearingPackages:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_9
    if-ltz v0, :cond_1b

    .line 343
    iget-object v1, p0, Lcom/android/internal/content/PackageMonitor;->mAppearingPackages:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 344
    iget p1, p0, Lcom/android/internal/content/PackageMonitor;->mChangeType:I

    return p1

    .line 342
    :cond_18
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    .line 348
    :cond_1b
    const/4 p1, 0x0

    return p1
.end method

.method public greylist isPackageDisappearing(Ljava/lang/String;)I
    .registers 4

    .line 357
    iget-object v0, p0, Lcom/android/internal/content/PackageMonitor;->mDisappearingPackages:[Ljava/lang/String;

    if-eqz v0, :cond_1b

    .line 358
    iget-object v0, p0, Lcom/android/internal/content/PackageMonitor;->mDisappearingPackages:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_9
    if-ltz v0, :cond_1b

    .line 359
    iget-object v1, p0, Lcom/android/internal/content/PackageMonitor;->mDisappearingPackages:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 360
    iget p1, p0, Lcom/android/internal/content/PackageMonitor;->mChangeType:I

    return p1

    .line 358
    :cond_18
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    .line 364
    :cond_1b
    const/4 p1, 0x0

    return p1
.end method

.method public greylist isPackageModified(Ljava/lang/String;)Z
    .registers 5

    .line 377
    iget-object v0, p0, Lcom/android/internal/content/PackageMonitor;->mModifiedPackages:[Ljava/lang/String;

    if-eqz v0, :cond_19

    .line 378
    iget-object v0, p0, Lcom/android/internal/content/PackageMonitor;->mModifiedPackages:[Ljava/lang/String;

    array-length v0, v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_9
    if-ltz v0, :cond_19

    .line 379
    iget-object v2, p0, Lcom/android/internal/content/PackageMonitor;->mModifiedPackages:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 380
    return v1

    .line 378
    :cond_16
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    .line 384
    :cond_19
    const/4 p1, 0x0

    return p1
.end method

.method public greylist-max-o isReplacing()Z
    .registers 3

    .line 372
    iget v0, p0, Lcom/android/internal/content/PackageMonitor;->mChangeType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    :goto_7
    return v1
.end method

.method public greylist-max-o onBeginPackageChanges()V
    .registers 1

    .line 160
    return-void
.end method

.method public greylist-max-o onFinishPackageChanges()V
    .registers 1

    .line 403
    return-void
.end method

.method public greylist-max-o onHandleForceStop(Landroid/content/Intent;[Ljava/lang/String;IZ)Z
    .registers 5

    .line 266
    const/4 p1, 0x0

    return p1
.end method

.method public blacklist onHandleForceStop(Landroid/content/Intent;[Ljava/lang/String;IZLandroid/os/Bundle;)Z
    .registers 6

    .line 262
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/content/PackageMonitor;->onHandleForceStop(Landroid/content/Intent;[Ljava/lang/String;IZ)Z

    move-result p1

    return p1
.end method

.method public greylist-max-o onPackageAdded(Ljava/lang/String;I)V
    .registers 3

    .line 166
    return-void
.end method

.method public blacklist onPackageAddedWithExtras(Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 4

    .line 173
    return-void
.end method

.method public greylist-max-o onPackageAppeared(Ljava/lang/String;I)V
    .registers 3

    .line 305
    return-void
.end method

.method public blacklist onPackageAppearedWithExtras(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 3

    .line 312
    return-void
.end method

.method public greylist onPackageChanged(Ljava/lang/String;I[Ljava/lang/String;)Z
    .registers 7

    .line 242
    const/4 p2, 0x0

    if-eqz p3, :cond_14

    .line 243
    array-length v0, p3

    move v1, p2

    :goto_5
    if-ge v1, v0, :cond_14

    aget-object v2, p3, v1

    .line 244
    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 245
    const/4 p1, 0x1

    return p1

    .line 243
    :cond_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 249
    :cond_14
    return p2
.end method

.method public blacklist onPackageChangedWithExtras(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 3

    .line 258
    return-void
.end method

.method public greylist-max-o onPackageDataCleared(Ljava/lang/String;I)V
    .registers 3

    .line 406
    return-void
.end method

.method public greylist-max-o onPackageDisappeared(Ljava/lang/String;I)V
    .registers 3

    .line 293
    return-void
.end method

.method public blacklist onPackageDisappearedWithExtras(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 3

    .line 299
    return-void
.end method

.method public greylist-max-o onPackageModified(Ljava/lang/String;)V
    .registers 2

    .line 318
    return-void
.end method

.method public blacklist onPackageModifiedWithExtras(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 3

    .line 325
    return-void
.end method

.method public greylist onPackageRemoved(Ljava/lang/String;I)V
    .registers 3

    .line 180
    return-void
.end method

.method public greylist-max-o onPackageRemovedAllUsers(Ljava/lang/String;I)V
    .registers 3

    .line 194
    return-void
.end method

.method public blacklist onPackageRemovedAllUsersWithExtras(Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 4

    .line 201
    return-void
.end method

.method public blacklist onPackageRemovedWithExtras(Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 4

    .line 187
    return-void
.end method

.method public blacklist onPackageStateChanged(Ljava/lang/String;I)V
    .registers 3

    .line 413
    return-void
.end method

.method public blacklist onPackageUnstopped(Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 4

    .line 334
    return-void
.end method

.method public greylist-max-o onPackageUpdateFinished(Ljava/lang/String;I)V
    .registers 3

    .line 214
    return-void
.end method

.method public blacklist onPackageUpdateFinishedWithExtras(Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 4

    .line 221
    return-void
.end method

.method public greylist-max-o onPackageUpdateStarted(Ljava/lang/String;I)V
    .registers 3

    .line 204
    return-void
.end method

.method public blacklist onPackageUpdateStartedWithExtras(Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 4

    .line 211
    return-void
.end method

.method public greylist-max-o onPackagesAvailable([Ljava/lang/String;)V
    .registers 2

    .line 273
    return-void
.end method

.method public greylist-max-o onPackagesSuspended([Ljava/lang/String;)V
    .registers 2

    .line 279
    return-void
.end method

.method public greylist-max-o onPackagesUnavailable([Ljava/lang/String;)V
    .registers 2

    .line 276
    return-void
.end method

.method public greylist-max-o onPackagesUnsuspended([Ljava/lang/String;)V
    .registers 2

    .line 282
    return-void
.end method

.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    .line 427
    invoke-virtual {p0, p2}, Lcom/android/internal/content/PackageMonitor;->doHandlePackageEvent(Landroid/content/Intent;)V

    .line 428
    return-void
.end method

.method public greylist-max-o onSomePackagesChanged()V
    .registers 1

    .line 400
    return-void
.end method

.method public greylist-max-o onUidRemoved(I)V
    .registers 2

    .line 270
    return-void
.end method

.method public greylist register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V
    .registers 5

    .line 105
    nop

    .line 106
    if-nez p2, :cond_8

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object p2

    goto :goto_e

    :cond_8
    new-instance p4, Landroid/os/Handler;

    invoke-direct {p4, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    move-object p2, p4

    .line 105
    :goto_e
    invoke-virtual {p0, p1, p3, p2}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/UserHandle;Landroid/os/Handler;)V

    .line 107
    return-void
.end method

.method public greylist register(Landroid/content/Context;Landroid/os/Looper;Z)V
    .registers 5

    .line 99
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    .line 100
    return-void
.end method

.method public blacklist register(Landroid/content/Context;Landroid/os/UserHandle;Landroid/os/Handler;)V
    .registers 10

    .line 113
    iget-object v0, p0, Lcom/android/internal/content/PackageMonitor;->mRegisteredContext:Landroid/content/Context;

    if-nez v0, :cond_5d

    .line 116
    iput-object p1, p0, Lcom/android/internal/content/PackageMonitor;->mRegisteredContext:Landroid/content/Context;

    .line 117
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/os/Handler;

    iput-object p3, p0, Lcom/android/internal/content/PackageMonitor;->mRegisteredHandler:Landroid/os/Handler;

    .line 118
    iget-boolean p3, p0, Lcom/android/internal/content/PackageMonitor;->mSupportsPackageRestartQuery:Z

    if-eqz p3, :cond_2c

    .line 119
    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;->getPackageFilter()Landroid/content/IntentFilter;

    move-result-object v3

    .line 120
    if-eqz p2, :cond_22

    .line 121
    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/internal/content/PackageMonitor;->mRegisteredHandler:Landroid/os/Handler;

    move-object v1, p0

    move-object v0, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    goto :goto_2e

    .line 123
    :cond_22
    move-object v1, p0

    move-object v0, p1

    move-object v2, p2

    const/4 p1, 0x0

    iget-object p2, v1, Lcom/android/internal/content/PackageMonitor;->mRegisteredHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0, v3, p1, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    goto :goto_2e

    .line 118
    :cond_2c
    move-object v1, p0

    move-object v2, p2

    .line 126
    :goto_2e
    iget-object p1, v1, Lcom/android/internal/content/PackageMonitor;->mPackageMonitorCallback:Lcom/android/internal/content/PackageMonitor$PackageMonitorCallback;

    if-nez p1, :cond_5c

    .line 127
    iget-object p1, v1, Lcom/android/internal/content/PackageMonitor;->mRegisteredContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 128
    if-eqz p1, :cond_5c

    .line 129
    new-instance p2, Landroid/os/HandlerExecutor;

    iget-object p3, v1, Lcom/android/internal/content/PackageMonitor;->mRegisteredHandler:Landroid/os/Handler;

    invoke-direct {p2, p3}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    iput-object p2, v1, Lcom/android/internal/content/PackageMonitor;->mExecutor:Ljava/util/concurrent/Executor;

    .line 130
    new-instance p2, Lcom/android/internal/content/PackageMonitor$PackageMonitorCallback;

    invoke-direct {p2, p0}, Lcom/android/internal/content/PackageMonitor$PackageMonitorCallback;-><init>(Lcom/android/internal/content/PackageMonitor;)V

    iput-object p2, v1, Lcom/android/internal/content/PackageMonitor;->mPackageMonitorCallback:Lcom/android/internal/content/PackageMonitor$PackageMonitorCallback;

    .line 131
    if-eqz v2, :cond_51

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p2

    goto :goto_57

    :cond_51
    iget-object p2, v1, Lcom/android/internal/content/PackageMonitor;->mRegisteredContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getUserId()I

    move-result p2

    .line 132
    :goto_57
    iget-object p3, v1, Lcom/android/internal/content/PackageMonitor;->mPackageMonitorCallback:Lcom/android/internal/content/PackageMonitor$PackageMonitorCallback;

    invoke-virtual {p1, p3, p2}, Landroid/content/pm/PackageManager;->registerPackageMonitorCallback(Landroid/os/IRemoteCallback;I)V

    .line 135
    :cond_5c
    return-void

    .line 114
    :cond_5d
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Already registered"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public greylist unregister()V
    .registers 3

    .line 143
    iget-object v0, p0, Lcom/android/internal/content/PackageMonitor;->mRegisteredContext:Landroid/content/Context;

    if-eqz v0, :cond_26

    .line 146
    iget-boolean v0, p0, Lcom/android/internal/content/PackageMonitor;->mSupportsPackageRestartQuery:Z

    if-eqz v0, :cond_d

    .line 147
    iget-object v0, p0, Lcom/android/internal/content/PackageMonitor;->mRegisteredContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 150
    :cond_d
    iget-object v0, p0, Lcom/android/internal/content/PackageMonitor;->mRegisteredContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 151
    if-eqz v0, :cond_1e

    iget-object v1, p0, Lcom/android/internal/content/PackageMonitor;->mPackageMonitorCallback:Lcom/android/internal/content/PackageMonitor$PackageMonitorCallback;

    if-eqz v1, :cond_1e

    .line 152
    iget-object v1, p0, Lcom/android/internal/content/PackageMonitor;->mPackageMonitorCallback:Lcom/android/internal/content/PackageMonitor$PackageMonitorCallback;

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->unregisterPackageMonitorCallback(Landroid/os/IRemoteCallback;)V

    .line 154
    :cond_1e
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/content/PackageMonitor;->mPackageMonitorCallback:Lcom/android/internal/content/PackageMonitor$PackageMonitorCallback;

    .line 155
    iput-object v0, p0, Lcom/android/internal/content/PackageMonitor;->mRegisteredContext:Landroid/content/Context;

    .line 156
    iput-object v0, p0, Lcom/android/internal/content/PackageMonitor;->mExecutor:Ljava/util/concurrent/Executor;

    .line 157
    return-void

    .line 144
    :cond_26
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not registered"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
