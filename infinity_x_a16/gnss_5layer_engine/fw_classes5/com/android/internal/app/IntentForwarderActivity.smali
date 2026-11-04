.class public Lcom/android/internal/app/IntentForwarderActivity;
.super Landroid/app/Activity;
.source "IntentForwarderActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/IntentForwarderActivity$Injector;,
        Lcom/android/internal/app/IntentForwarderActivity$InjectorImpl;
    }
.end annotation


# static fields
.field private static final blacklist ALLOWED_TEXT_MESSAGE_SCHEMES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist EXTRA_SKIP_USER_CONFIRMATION:Ljava/lang/String; = "com.android.internal.app.EXTRA_SKIP_USER_CONFIRMATION"

.field public static blacklist FORWARD_INTENT_TO_MANAGED_PROFILE:Ljava/lang/String; = null

.field public static blacklist FORWARD_INTENT_TO_PARENT:Ljava/lang/String; = null

.field private static final blacklist RESOLVER_COMPONENT_NAME:Landroid/content/ComponentName;

.field public static greylist-max-r TAG:Ljava/lang/String; = null

.field private static final blacklist TEL_SCHEME:Ljava/lang/String; = "tel"


# instance fields
.field protected blacklist mExecutorService:Ljava/util/concurrent/ExecutorService;

.field private blacklist mInjector:Lcom/android/internal/app/IntentForwarderActivity$Injector;

.field private blacklist mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;


# direct methods
.method public static synthetic blacklist $r8$lambda$0hcY2bSsvhsO0uSE7N2yNdZqKcA(Lcom/android/internal/app/IntentForwarderActivity;)Ljava/lang/String;
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/app/IntentForwarderActivity;->lambda$getOpenInWorkMessage$6()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$1PQBLc64m4jEkb0W9YLJRuaQ7O4(Lcom/android/internal/app/IntentForwarderActivity;)Ljava/lang/String;
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/app/IntentForwarderActivity;->lambda$getForwardToWorkMessage$11()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$4B4TW-NWfsMvambXu92KuIUtPVI(Lcom/android/internal/app/IntentForwarderActivity;Landroid/content/Intent;ILandroid/view/View;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/app/IntentForwarderActivity;->lambda$buildMiniResolver$4(Landroid/content/Intent;ILandroid/view/View;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$6nbD4uXbFVbAJDvC34Kras_NUHQ(Lcom/android/internal/app/IntentForwarderActivity;Landroid/content/Intent;Ljava/lang/String;Landroid/content/Intent;IILandroid/content/pm/ResolveInfo;)V
    .registers 7

    invoke-direct/range {p0 .. p6}, Lcom/android/internal/app/IntentForwarderActivity;->lambda$buildAndExecuteForPrivateProfile$2(Landroid/content/Intent;Ljava/lang/String;Landroid/content/Intent;IILandroid/content/pm/ResolveInfo;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$AIC0F7pD1w8JZynzPklJpHgJn8E(Lcom/android/internal/app/IntentForwarderActivity;)Ljava/lang/String;
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/app/IntentForwarderActivity;->lambda$getForwardToPersonalMessage$10()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$DteU3l19bC1Rcku1FIRt1HqyuII(Lcom/android/internal/app/IntentForwarderActivity;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/Intent;Landroid/content/pm/UserInfo;Landroid/content/pm/ResolveInfo;)V
    .registers 7

    invoke-direct/range {p0 .. p6}, Lcom/android/internal/app/IntentForwarderActivity;->lambda$buildAndExecute$1(Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/Intent;Landroid/content/pm/UserInfo;Landroid/content/pm/ResolveInfo;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$VZL_aJxYqLtaKA0I_ylNEWkzVDA(Lcom/android/internal/app/IntentForwarderActivity;)Ljava/lang/String;
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/app/IntentForwarderActivity;->lambda$getWorkTelephonyInfoSectionMessage$9()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$Zmp_Ag7wGqdFSDb_KODU_CNc4k4(Lcom/android/internal/app/IntentForwarderActivity;)Ljava/lang/String;
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/app/IntentForwarderActivity;->lambda$getWorkTelephonyInfoSectionMessage$8()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$pFXbvuMUDM3xSLrp4NnmoVgeoUU(Lcom/android/internal/app/IntentForwarderActivity;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/app/IntentForwarderActivity;->lambda$buildMiniResolver$3(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$qKW2xdvY9Vuo4MJ2AwVYUbnOn9o(Lcom/android/internal/app/IntentForwarderActivity;)Ljava/lang/String;
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/app/IntentForwarderActivity;->lambda$getOpenInWorkMessage$5()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$xqInTMdKuDpvQzfA7mP_CUIMXwU(Lcom/android/internal/app/IntentForwarderActivity;Landroid/content/Intent;Ljava/lang/String;Landroid/content/Intent;IILandroid/content/pm/ResolveInfo;)Landroid/content/pm/ResolveInfo;
    .registers 7

    invoke-direct/range {p0 .. p6}, Lcom/android/internal/app/IntentForwarderActivity;->lambda$buildAndExecute$0(Landroid/content/Intent;Ljava/lang/String;Landroid/content/Intent;IILandroid/content/pm/ResolveInfo;)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$zOE_9CeOMzpWiiDA4exCHseBb2E(Lcom/android/internal/app/IntentForwarderActivity;Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/app/IntentForwarderActivity;->lambda$getOpenInWorkMessage$7(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 5

    .line 91
    const-string v0, "IntentForwarderActivity"

    sput-object v0, Lcom/android/internal/app/IntentForwarderActivity;->TAG:Ljava/lang/String;

    .line 93
    const-string v0, "com.android.internal.app.ForwardIntentToParent"

    sput-object v0, Lcom/android/internal/app/IntentForwarderActivity;->FORWARD_INTENT_TO_PARENT:Ljava/lang/String;

    .line 96
    const-string v0, "com.android.internal.app.ForwardIntentToManagedProfile"

    sput-object v0, Lcom/android/internal/app/IntentForwarderActivity;->FORWARD_INTENT_TO_MANAGED_PROFILE:Ljava/lang/String;

    .line 103
    new-instance v0, Ljava/util/HashSet;

    const-string v1, "mms"

    const-string v2, "mmsto"

    const-string v3, "sms"

    const-string v4, "smsto"

    filled-new-array {v3, v4, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    .line 104
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/internal/app/IntentForwarderActivity;->ALLOWED_TEXT_MESSAGE_SCHEMES:Ljava/util/Set;

    .line 108
    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/android/internal/app/ResolverActivity;

    .line 109
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android"

    invoke-direct {v0, v2, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/app/IntentForwarderActivity;->RESOLVER_COMPONENT_NAME:Landroid/content/ComponentName;

    .line 108
    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 89
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private blacklist buildAndExecute(Ljava/util/concurrent/CompletableFuture;Landroid/content/Intent;Ljava/lang/String;Landroid/content/Intent;IILjava/lang/String;Landroid/content/pm/UserInfo;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CompletableFuture<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "Landroid/content/Intent;",
            "II",
            "Ljava/lang/String;",
            "Landroid/content/pm/UserInfo;",
            ")V"
        }
    .end annotation

    .line 204
    new-instance v0, Lcom/android/internal/app/IntentForwarderActivity$$ExternalSyntheticLambda10;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/app/IntentForwarderActivity$$ExternalSyntheticLambda10;-><init>(Lcom/android/internal/app/IntentForwarderActivity;Landroid/content/Intent;Ljava/lang/String;Landroid/content/Intent;II)V

    move-object p2, v1

    move-object p4, v2

    move-object p6, v4

    iget-object p5, p2, Lcom/android/internal/app/IntentForwarderActivity;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 205
    invoke-virtual {p1, v0, p5}, Ljava/util/concurrent/CompletableFuture;->thenApplyAsync(Ljava/util/function/Function;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    new-instance p1, Lcom/android/internal/app/IntentForwarderActivity$$ExternalSyntheticLambda11;

    move-object p5, p7

    move-object p7, p8

    invoke-direct/range {p1 .. p7}, Lcom/android/internal/app/IntentForwarderActivity$$ExternalSyntheticLambda11;-><init>(Lcom/android/internal/app/IntentForwarderActivity;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/Intent;Landroid/content/pm/UserInfo;)V

    .line 224
    invoke-virtual {p0}, Lcom/android/internal/app/IntentForwarderActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object p2

    .line 215
    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/CompletableFuture;->thenAcceptAsync(Ljava/util/function/Consumer;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    .line 225
    return-void
.end method

.method private blacklist buildAndExecuteForPrivateProfile(Landroid/content/Intent;Ljava/lang/String;Landroid/content/Intent;II)V
    .registers 14

    .line 230
    iget-object v0, p0, Lcom/android/internal/app/IntentForwarderActivity;->mInjector:Lcom/android/internal/app/IntentForwarderActivity$Injector;

    .line 231
    const/high16 v1, 0x10000

    invoke-interface {v0, p3, v1, p5}, Lcom/android/internal/app/IntentForwarderActivity$Injector;->resolveActivityAsUser(Landroid/content/Intent;II)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    .line 232
    new-instance v1, Lcom/android/internal/app/IntentForwarderActivity$$ExternalSyntheticLambda2;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/app/IntentForwarderActivity$$ExternalSyntheticLambda2;-><init>(Lcom/android/internal/app/IntentForwarderActivity;Landroid/content/Intent;Ljava/lang/String;Landroid/content/Intent;II)V

    .line 241
    invoke-virtual {p0}, Lcom/android/internal/app/IntentForwarderActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    .line 233
    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/CompletableFuture;->thenAcceptAsync(Ljava/util/function/Consumer;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    .line 242
    return-void
.end method

.method private blacklist buildMiniResolver(Landroid/content/pm/ResolveInfo;Landroid/content/Intent;ILjava/lang/String;Landroid/content/pm/PackageManager;)V
    .registers 8

    .line 341
    nop

    .line 342
    const v0, 0x10900b1

    invoke-virtual {p0, v0}, Lcom/android/internal/app/IntentForwarderActivity;->setContentView(I)V

    .line 343
    invoke-virtual {p0}, Lcom/android/internal/app/IntentForwarderActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setHideOverlayWindows(Z)V

    .line 345
    const v0, 0x10205ab

    invoke-virtual {p0, v0}, Lcom/android/internal/app/IntentForwarderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setElevation(F)V

    .line 347
    const v0, 0x1020006

    invoke-virtual {p0, v0}, Lcom/android/internal/app/IntentForwarderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 348
    nop

    .line 349
    invoke-direct {p0, p1, p2, p3, p5}, Lcom/android/internal/app/IntentForwarderActivity;->getAppIcon(Landroid/content/pm/ResolveInfo;Landroid/content/Intent;ILandroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 348
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 351
    invoke-direct {p0}, Lcom/android/internal/app/IntentForwarderActivity;->setMiniresolverPadding()V

    .line 353
    const p1, 0x1020456

    invoke-virtual {p0, p1}, Lcom/android/internal/app/IntentForwarderActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 357
    const p1, 0x10205eb

    invoke-virtual {p0, p1}, Lcom/android/internal/app/IntentForwarderActivity;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/Button;

    const/high16 p5, 0x1040000

    invoke-virtual {p4, p5}, Landroid/widget/Button;->setText(I)V

    .line 358
    invoke-virtual {p0, p1}, Lcom/android/internal/app/IntentForwarderActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance p4, Lcom/android/internal/app/IntentForwarderActivity$$ExternalSyntheticLambda4;

    invoke-direct {p4, p0}, Lcom/android/internal/app/IntentForwarderActivity$$ExternalSyntheticLambda4;-><init>(Lcom/android/internal/app/IntentForwarderActivity;)V

    invoke-virtual {p1, p4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 360
    const p1, 0x102025d

    invoke-virtual {p0, p1}, Lcom/android/internal/app/IntentForwarderActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance p4, Lcom/android/internal/app/IntentForwarderActivity$$ExternalSyntheticLambda5;

    invoke-direct {p4, p0, p2, p3}, Lcom/android/internal/app/IntentForwarderActivity$$ExternalSyntheticLambda5;-><init>(Lcom/android/internal/app/IntentForwarderActivity;Landroid/content/Intent;I)V

    invoke-virtual {p1, p4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 373
    return-void
.end method

.method static blacklist canForward(Landroid/content/Intent;IILandroid/content/pm/IPackageManager;Ljava/lang/String;)Landroid/content/Intent;
    .registers 7

    .line 601
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 602
    const/high16 p0, 0x3000000

    invoke-virtual {v0, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 604
    invoke-static {v0}, Lcom/android/internal/app/IntentForwarderActivity;->sanitizeIntent(Landroid/content/Intent;)V

    .line 606
    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/internal/app/IntentForwarderActivity;->canForwardInner(Landroid/content/Intent;IILandroid/content/pm/IPackageManager;Ljava/lang/String;)Z

    move-result p0

    const/4 v1, 0x0

    if-nez p0, :cond_15

    .line 608
    return-object v1

    .line 610
    :cond_15
    invoke-virtual {v0}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object p0

    if-eqz p0, :cond_26

    .line 611
    invoke-virtual {v0}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object p0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/internal/app/IntentForwarderActivity;->canForwardInner(Landroid/content/Intent;IILandroid/content/pm/IPackageManager;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_26

    .line 613
    return-object v1

    .line 616
    :cond_26
    return-object v0
.end method

.method private static blacklist canForwardInner(Landroid/content/Intent;IILandroid/content/pm/IPackageManager;Ljava/lang/String;)Z
    .registers 7

    .line 621
    const-string v0, "android.intent.action.CHOOSER"

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    .line 622
    return v1

    .line 625
    :cond_e
    :try_start_e
    invoke-interface {p3, p0, p4, p1, p2}, Landroid/content/pm/IPackageManager;->canForwardTo(Landroid/content/Intent;Ljava/lang/String;II)Z

    move-result p0
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_12} :catch_17

    if-eqz p0, :cond_16

    .line 627
    const/4 p0, 0x1

    return p0

    .line 631
    :cond_16
    goto :goto_1f

    .line 629
    :catch_17
    move-exception p0

    .line 630
    sget-object p0, Lcom/android/internal/app/IntentForwarderActivity;->TAG:Ljava/lang/String;

    const-string p1, "PackageManagerService is dead?"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    :goto_1f
    return v1
.end method

.method private blacklist findSelectedProfile(Ljava/lang/String;)I
    .registers 3

    .line 543
    sget-object v0, Lcom/android/internal/app/IntentForwarderActivity;->FORWARD_INTENT_TO_PARENT:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 544
    const/4 p1, 0x0

    return p1

    .line 545
    :cond_a
    sget-object v0, Lcom/android/internal/app/IntentForwarderActivity;->FORWARD_INTENT_TO_MANAGED_PROFILE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_14

    .line 546
    const/4 p1, 0x1

    return p1

    .line 548
    :cond_14
    const/4 p1, -0x1

    return p1
.end method

.method private blacklist getAppIcon(Landroid/content/pm/ResolveInfo;Landroid/content/Intent;ILandroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    .registers 6

    .line 380
    invoke-direct {p0, p2}, Lcom/android/internal/app/IntentForwarderActivity;->isDialerIntent(Landroid/content/Intent;)Z

    move-result p2

    if-eqz p2, :cond_2f

    .line 384
    nop

    .line 385
    invoke-virtual {p0}, Lcom/android/internal/app/IntentForwarderActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    const-class v0, Landroid/telecom/TelecomManager;

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/telecom/TelecomManager;

    .line 386
    nop

    .line 387
    invoke-static {p3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/telecom/TelecomManager;->getDefaultDialerPackage(Landroid/os/UserHandle;)Ljava/lang/String;

    move-result-object p2

    .line 389
    nop

    .line 390
    const/4 p3, 0x0

    :try_start_1e
    invoke-virtual {p4, p2, p3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p2

    .line 391
    invoke-virtual {p2, p4}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object p1
    :try_end_26
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1e .. :try_end_26} :catch_27

    .line 389
    return-object p1

    .line 392
    :catch_27
    move-exception p2

    .line 395
    sget-object p2, Lcom/android/internal/app/IntentForwarderActivity;->TAG:Ljava/lang/String;

    const-string p3, "Cannot load icon for default dialer package"

    invoke-static {p2, p3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    :cond_2f
    invoke-virtual {p1, p4}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method private blacklist getForwardToPersonalMessage()Ljava/lang/String;
    .registers 4

    .line 445
    const-class v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0, v0}, Lcom/android/internal/app/IntentForwarderActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v0

    new-instance v1, Lcom/android/internal/app/IntentForwarderActivity$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0}, Lcom/android/internal/app/IntentForwarderActivity$$ExternalSyntheticLambda9;-><init>(Lcom/android/internal/app/IntentForwarderActivity;)V

    const-string v2, "Core.FORWARD_INTENT_TO_PERSONAL"

    invoke-virtual {v0, v2, v1}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getForwardToWorkMessage()Ljava/lang/String;
    .registers 4

    .line 451
    const-class v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0, v0}, Lcom/android/internal/app/IntentForwarderActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v0

    new-instance v1, Lcom/android/internal/app/IntentForwarderActivity$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/android/internal/app/IntentForwarderActivity$$ExternalSyntheticLambda3;-><init>(Lcom/android/internal/app/IntentForwarderActivity;)V

    const-string v2, "Core.FORWARD_INTENT_TO_WORK"

    invoke-virtual {v0, v2, v1}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getManagedProfile()Landroid/content/pm/UserInfo;
    .registers 4

    .line 641
    iget-object v0, p0, Lcom/android/internal/app/IntentForwarderActivity;->mInjector:Lcom/android/internal/app/IntentForwarderActivity$Injector;

    invoke-interface {v0}, Lcom/android/internal/app/IntentForwarderActivity$Injector;->getUserManager()Landroid/os/UserManager;

    move-result-object v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v0

    .line 642
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 643
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v2

    if-eqz v2, :cond_25

    return-object v1

    .line 644
    :cond_25
    goto :goto_12

    .line 645
    :cond_26
    sget-object v0, Lcom/android/internal/app/IntentForwarderActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/internal/app/IntentForwarderActivity;->FORWARD_INTENT_TO_MANAGED_PROFILE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has been called, but there is no managed profile"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    const/4 v0, 0x0

    return-object v0
.end method

.method private blacklist getOpenInWorkButtonString(Landroid/content/Intent;)I
    .registers 3

    .line 402
    invoke-direct {p0, p1}, Lcom/android/internal/app/IntentForwarderActivity;->isDialerIntent(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 403
    const p1, 0x1040687

    return p1

    .line 405
    :cond_a
    invoke-direct {p0, p1}, Lcom/android/internal/app/IntentForwarderActivity;->isTextMessageIntent(Landroid/content/Intent;)Z

    move-result p1

    if-eqz p1, :cond_14

    .line 406
    const p1, 0x1040690

    return p1

    .line 408
    :cond_14
    const p1, 0x1040b2d

    return p1
.end method

.method private blacklist getOpenInWorkMessage(Landroid/content/Intent;Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 5

    .line 412
    invoke-direct {p0, p1}, Lcom/android/internal/app/IntentForwarderActivity;->isDialerIntent(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 413
    const-class p1, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0, p1}, Lcom/android/internal/app/IntentForwarderActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p1}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object p1

    new-instance p2, Lcom/android/internal/app/IntentForwarderActivity$$ExternalSyntheticLambda6;

    invoke-direct {p2, p0}, Lcom/android/internal/app/IntentForwarderActivity$$ExternalSyntheticLambda6;-><init>(Lcom/android/internal/app/IntentForwarderActivity;)V

    const-string v0, "Core.MINIRESOLVER_CALL_FROM_WORK"

    invoke-virtual {p1, v0, p2}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 417
    :cond_1e
    invoke-direct {p0, p1}, Lcom/android/internal/app/IntentForwarderActivity;->isTextMessageIntent(Landroid/content/Intent;)Z

    move-result p1

    if-eqz p1, :cond_3c

    .line 418
    const-class p1, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0, p1}, Lcom/android/internal/app/IntentForwarderActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p1}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object p1

    new-instance p2, Lcom/android/internal/app/IntentForwarderActivity$$ExternalSyntheticLambda7;

    invoke-direct {p2, p0}, Lcom/android/internal/app/IntentForwarderActivity$$ExternalSyntheticLambda7;-><init>(Lcom/android/internal/app/IntentForwarderActivity;)V

    const-string v0, "Core.MINIRESOLVER_SWITCH_TO_WORK"

    invoke-virtual {p1, v0, p2}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 422
    :cond_3c
    const-class p1, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0, p1}, Lcom/android/internal/app/IntentForwarderActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p1}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object p1

    new-instance v0, Lcom/android/internal/app/IntentForwarderActivity$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0, p2}, Lcom/android/internal/app/IntentForwarderActivity$$ExternalSyntheticLambda8;-><init>(Lcom/android/internal/app/IntentForwarderActivity;Ljava/lang/CharSequence;)V

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const-string v1, "Core.MINIRESOLVER_OPEN_WORK"

    invoke-virtual {p1, v1, v0, p2}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private blacklist getPrivateProfile()Landroid/content/pm/UserInfo;
    .registers 4

    .line 655
    iget-object v0, p0, Lcom/android/internal/app/IntentForwarderActivity;->mInjector:Lcom/android/internal/app/IntentForwarderActivity$Injector;

    invoke-interface {v0}, Lcom/android/internal/app/IntentForwarderActivity$Injector;->getUserManager()Landroid/os/UserManager;

    move-result-object v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v0

    .line 656
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 657
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isPrivateProfile()Z

    move-result v2

    if-eqz v2, :cond_25

    return-object v1

    .line 658
    :cond_25
    goto :goto_12

    .line 659
    :cond_26
    const/4 v0, 0x0

    return-object v0
.end method

.method private blacklist getProfileParent()I
    .registers 4

    .line 667
    iget-object v0, p0, Lcom/android/internal/app/IntentForwarderActivity;->mInjector:Lcom/android/internal/app/IntentForwarderActivity$Injector;

    invoke-interface {v0}, Lcom/android/internal/app/IntentForwarderActivity$Injector;->getUserManager()Landroid/os/UserManager;

    move-result-object v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 668
    if-nez v0, :cond_2d

    .line 669
    sget-object v0, Lcom/android/internal/app/IntentForwarderActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/internal/app/IntentForwarderActivity;->FORWARD_INTENT_TO_PARENT:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has been called, but there is no parent"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    const/16 v0, -0x2710

    return v0

    .line 673
    :cond_2d
    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    return v0
.end method

.method private blacklist getWorkTelephonyInfoSectionMessage(Landroid/content/Intent;)Ljava/lang/String;
    .registers 4

    .line 429
    invoke-direct {p0, p1}, Lcom/android/internal/app/IntentForwarderActivity;->isDialerIntent(Landroid/content/Intent;)Z

    move-result v0

    const-string v1, "Core.MINIRESOLVER_WORK_TELEPHONY_INFORMATION"

    if-eqz v0, :cond_1e

    .line 430
    const-class p1, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0, p1}, Lcom/android/internal/app/IntentForwarderActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p1}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object p1

    new-instance v0, Lcom/android/internal/app/IntentForwarderActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/internal/app/IntentForwarderActivity$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/app/IntentForwarderActivity;)V

    invoke-virtual {p1, v1, v0}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 434
    :cond_1e
    invoke-direct {p0, p1}, Lcom/android/internal/app/IntentForwarderActivity;->isTextMessageIntent(Landroid/content/Intent;)Z

    move-result p1

    if-eqz p1, :cond_3a

    .line 435
    const-class p1, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0, p1}, Lcom/android/internal/app/IntentForwarderActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p1}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object p1

    new-instance v0, Lcom/android/internal/app/IntentForwarderActivity$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/internal/app/IntentForwarderActivity$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/app/IntentForwarderActivity;)V

    invoke-virtual {p1, v1, v0}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 439
    :cond_3a
    const-string p1, ""

    return-object p1
.end method

.method private blacklist isDeviceProvisioned()Z
    .registers 2

    .line 566
    iget-object v0, p0, Lcom/android/internal/app/IntentForwarderActivity;->mInjector:Lcom/android/internal/app/IntentForwarderActivity$Injector;

    invoke-interface {v0}, Lcom/android/internal/app/IntentForwarderActivity$Injector;->isDeviceProvisioned()Z

    move-result v0

    return v0
.end method

.method private blacklist isDialerIntent(Landroid/content/Intent;)Z
    .registers 4

    .line 575
    const-string v0, "android.intent.action.DIAL"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_45

    .line 576
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.CALL"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_45

    .line 577
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.CALL_PRIVILEGED"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_45

    .line 578
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.CALL_EMERGENCY"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_45

    .line 579
    invoke-direct {p0, p1}, Lcom/android/internal/app/IntentForwarderActivity;->isViewActionIntent(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_43

    const-string v0, "tel"

    invoke-virtual {p1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_43

    goto :goto_45

    :cond_43
    const/4 p1, 0x0

    goto :goto_46

    :cond_45
    :goto_45
    const/4 p1, 0x1

    .line 575
    :goto_46
    return p1
.end method

.method private blacklist isIntentForwarderResolveInfo(Landroid/content/pm/ResolveInfo;)Z
    .registers 5

    .line 457
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 458
    return v0

    .line 460
    :cond_4
    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 461
    if-nez p1, :cond_9

    .line 462
    return v0

    .line 464
    :cond_9
    const-string v1, "android"

    iget-object v2, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    .line 465
    return v0

    .line 467
    :cond_14
    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    sget-object v2, Lcom/android/internal/app/IntentForwarderActivity;->FORWARD_INTENT_TO_PARENT:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_28

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    sget-object v1, Lcom/android/internal/app/IntentForwarderActivity;->FORWARD_INTENT_TO_MANAGED_PROFILE:Ljava/lang/String;

    .line 468
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_29

    :cond_28
    const/4 v0, 0x1

    .line 467
    :cond_29
    return v0
.end method

.method private blacklist isPrivateProfile(I)Z
    .registers 4

    .line 700
    invoke-direct {p0}, Lcom/android/internal/app/IntentForwarderActivity;->getPrivateProfile()Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 701
    invoke-direct {p0}, Lcom/android/internal/app/IntentForwarderActivity;->privateSpaceFlagsEnabled()Z

    move-result v1

    if-eqz v1, :cond_12

    if-eqz v0, :cond_12

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    if-ne v0, p1, :cond_12

    const/4 p1, 0x1

    goto :goto_13

    :cond_12
    const/4 p1, 0x0

    :goto_13
    return p1
.end method

.method private blacklist isResolverActivityResolveInfo(Landroid/content/pm/ResolveInfo;)Z
    .registers 3

    .line 472
    if-eqz p1, :cond_16

    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_16

    sget-object v0, Lcom/android/internal/app/IntentForwarderActivity;->RESOLVER_COMPONENT_NAME:Landroid/content/ComponentName;

    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 474
    invoke-virtual {p1}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_16

    const/4 p1, 0x1

    goto :goto_17

    :cond_16
    const/4 p1, 0x0

    .line 472
    :goto_17
    return p1
.end method

.method private blacklist isTargetResolverOrChooserActivity(Landroid/content/pm/ActivityInfo;)Z
    .registers 5

    .line 588
    const-string v0, "android"

    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_c

    .line 589
    return v1

    .line 591
    :cond_c
    const-class v0, Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    const-class v0, Lcom/android/internal/app/ChooserActivity;

    .line 592
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_29

    :cond_28
    const/4 v1, 0x1

    .line 591
    :cond_29
    return v1
.end method

.method private blacklist isTextMessageIntent(Landroid/content/Intent;)Z
    .registers 4

    .line 570
    const-string v0, "android.intent.action.SENDTO"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    invoke-direct {p0, p1}, Lcom/android/internal/app/IntentForwarderActivity;->isViewActionIntent(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_20

    :cond_12
    sget-object v0, Lcom/android/internal/app/IntentForwarderActivity;->ALLOWED_TEXT_MESSAGE_SCHEMES:Ljava/util/Set;

    .line 571
    invoke-virtual {p1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_20

    const/4 p1, 0x1

    goto :goto_21

    :cond_20
    const/4 p1, 0x0

    .line 570
    :goto_21
    return p1
.end method

.method private blacklist isViewActionIntent(Landroid/content/Intent;)Z
    .registers 4

    .line 583
    const-string v0, "android.intent.action.VIEW"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 584
    const-string v0, "android.intent.category.BROWSABLE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_16

    const/4 p1, 0x1

    goto :goto_17

    :cond_16
    const/4 p1, 0x0

    .line 583
    :goto_17
    return p1
.end method

.method private synthetic blacklist lambda$buildAndExecute$0(Landroid/content/Intent;Ljava/lang/String;Landroid/content/Intent;IILandroid/content/pm/ResolveInfo;)Landroid/content/pm/ResolveInfo;
    .registers 15

    .line 206
    invoke-direct {p0, p6}, Lcom/android/internal/app/IntentForwarderActivity;->isResolverActivityResolveInfo(Landroid/content/pm/ResolveInfo;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 207
    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/app/IntentForwarderActivity;->launchResolverActivityWithCorrectTab(Landroid/content/Intent;Ljava/lang/String;Landroid/content/Intent;IIZ)V

    goto :goto_20

    .line 210
    :cond_11
    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move v6, p5

    sget-object p1, Lcom/android/internal/app/IntentForwarderActivity;->FORWARD_INTENT_TO_PARENT:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_20

    .line 211
    invoke-direct {p0, v4, v6}, Lcom/android/internal/app/IntentForwarderActivity;->startActivityAsCaller(Landroid/content/Intent;I)V

    .line 213
    :cond_20
    :goto_20
    return-object p6
.end method

.method private synthetic blacklist lambda$buildAndExecute$1(Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/Intent;Landroid/content/pm/UserInfo;Landroid/content/pm/ResolveInfo;)V
    .registers 8

    .line 217
    sget-object v0, Lcom/android/internal/app/IntentForwarderActivity;->FORWARD_INTENT_TO_PARENT:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 218
    invoke-direct {p0, p2, p6, p3}, Lcom/android/internal/app/IntentForwarderActivity;->maybeShowDisclosure(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;Ljava/lang/String;)V

    .line 219
    invoke-virtual {p0}, Lcom/android/internal/app/IntentForwarderActivity;->finish()V

    goto :goto_1a

    .line 221
    :cond_f
    sget-object p2, Lcom/android/internal/app/IntentForwarderActivity;->FORWARD_INTENT_TO_MANAGED_PROFILE:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1a

    .line 222
    invoke-direct {p0, p6, p4, p5}, Lcom/android/internal/app/IntentForwarderActivity;->maybeShowUserConsentMiniResolver(Landroid/content/pm/ResolveInfo;Landroid/content/Intent;Landroid/content/pm/UserInfo;)V

    .line 224
    :cond_1a
    :goto_1a
    return-void
.end method

.method private synthetic blacklist lambda$buildAndExecuteForPrivateProfile$2(Landroid/content/Intent;Ljava/lang/String;Landroid/content/Intent;IILandroid/content/pm/ResolveInfo;)V
    .registers 15

    .line 234
    invoke-direct {p0, p6}, Lcom/android/internal/app/IntentForwarderActivity;->isResolverActivityResolveInfo(Landroid/content/pm/ResolveInfo;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 235
    const/4 v7, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/app/IntentForwarderActivity;->launchResolverActivityWithCorrectTab(Landroid/content/Intent;Ljava/lang/String;Landroid/content/Intent;IIZ)V

    goto :goto_17

    .line 238
    :cond_11
    move-object v1, p0

    move-object v4, p3

    move v6, p5

    invoke-direct {p0, p6, v4, v6}, Lcom/android/internal/app/IntentForwarderActivity;->maybeShowUserConsentMiniResolverPrivate(Landroid/content/pm/ResolveInfo;Landroid/content/Intent;I)V

    .line 241
    :goto_17
    return-void
.end method

.method private synthetic blacklist lambda$buildMiniResolver$3(Landroid/view/View;)V
    .registers 2

    .line 358
    invoke-virtual {p0}, Lcom/android/internal/app/IntentForwarderActivity;->finish()V

    return-void
.end method

.method private synthetic blacklist lambda$buildMiniResolver$4(Landroid/content/Intent;ILandroid/view/View;)V
    .registers 6

    .line 361
    invoke-static {p1}, Lcom/android/internal/app/chooser/TargetInfo;->refreshIntentCreatorToken(Landroid/content/Intent;)V

    .line 362
    nop

    .line 365
    invoke-virtual {p0}, Lcom/android/internal/app/IntentForwarderActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    .line 364
    const v0, 0x10a000f

    const v1, 0x10a007c

    invoke-static {p3, v0, v1}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object p3

    .line 368
    invoke-virtual {p3}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p3

    .line 362
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p3, v0, p2}, Lcom/android/internal/app/IntentForwarderActivity;->startActivityAsCaller(Landroid/content/Intent;Landroid/os/Bundle;ZI)V

    .line 371
    invoke-virtual {p0}, Lcom/android/internal/app/IntentForwarderActivity;->finish()V

    .line 372
    return-void
.end method

.method private synthetic blacklist lambda$getForwardToPersonalMessage$10()Ljava/lang/String;
    .registers 2

    .line 447
    const v0, 0x104047a

    invoke-virtual {p0, v0}, Lcom/android/internal/app/IntentForwarderActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private synthetic blacklist lambda$getForwardToWorkMessage$11()Ljava/lang/String;
    .registers 2

    .line 453
    const v0, 0x104047b

    invoke-virtual {p0, v0}, Lcom/android/internal/app/IntentForwarderActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private synthetic blacklist lambda$getOpenInWorkMessage$5()Ljava/lang/String;
    .registers 2

    .line 415
    const v0, 0x1040688

    invoke-virtual {p0, v0}, Lcom/android/internal/app/IntentForwarderActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private synthetic blacklist lambda$getOpenInWorkMessage$6()Ljava/lang/String;
    .registers 2

    .line 420
    const v0, 0x1040691

    invoke-virtual {p0, v0}, Lcom/android/internal/app/IntentForwarderActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private synthetic blacklist lambda$getOpenInWorkMessage$7(Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 3

    .line 424
    const v0, 0x104068c

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/app/IntentForwarderActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private synthetic blacklist lambda$getWorkTelephonyInfoSectionMessage$8()Ljava/lang/String;
    .registers 2

    .line 432
    const v0, 0x1040689

    invoke-virtual {p0, v0}, Lcom/android/internal/app/IntentForwarderActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private synthetic blacklist lambda$getWorkTelephonyInfoSectionMessage$9()Ljava/lang/String;
    .registers 2

    .line 437
    const v0, 0x104068f

    invoke-virtual {p0, v0}, Lcom/android/internal/app/IntentForwarderActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private blacklist launchChooserActivityWithCorrectTab(Landroid/content/Intent;Ljava/lang/String;)V
    .registers 5

    .line 504
    invoke-direct {p0, p2}, Lcom/android/internal/app/IntentForwarderActivity;->findSelectedProfile(Ljava/lang/String;)I

    move-result p2

    .line 505
    invoke-static {p1}, Lcom/android/internal/app/IntentForwarderActivity;->sanitizeIntent(Landroid/content/Intent;)V

    .line 506
    const-string v0, "com.android.internal.app.ResolverActivity.EXTRA_SELECTED_PROFILE"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 507
    const-string p2, "android.intent.extra.INTENT"

    const-class v0, Landroid/content/Intent;

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/Intent;

    .line 508
    if-nez p2, :cond_20

    .line 509
    sget-object p1, Lcom/android/internal/app/IntentForwarderActivity;->TAG:Ljava/lang/String;

    const-string p2, "Cannot start a chooser intent with no extra android.intent.extra.INTENT"

    invoke-static {p1, p2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    return-void

    .line 512
    :cond_20
    invoke-static {p2}, Lcom/android/internal/app/IntentForwarderActivity;->sanitizeIntent(Landroid/content/Intent;)V

    .line 513
    invoke-static {p1}, Lcom/android/internal/app/chooser/TargetInfo;->refreshIntentCreatorToken(Landroid/content/Intent;)V

    .line 514
    const/4 p2, 0x0

    invoke-virtual {p0}, Lcom/android/internal/app/IntentForwarderActivity;->getUserId()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, p2, v0}, Lcom/android/internal/app/IntentForwarderActivity;->startActivityAsCaller(Landroid/content/Intent;Landroid/os/Bundle;ZI)V

    .line 515
    invoke-virtual {p0}, Lcom/android/internal/app/IntentForwarderActivity;->finish()V

    .line 516
    return-void
.end method

.method private blacklist launchResolverActivityWithCorrectTab(Landroid/content/Intent;Ljava/lang/String;Landroid/content/Intent;IIZ)V
    .registers 9

    .line 526
    iget-object v0, p0, Lcom/android/internal/app/IntentForwarderActivity;->mInjector:Lcom/android/internal/app/IntentForwarderActivity$Injector;

    const/high16 v1, 0x10000

    invoke-interface {v0, p3, v1, p4}, Lcom/android/internal/app/IntentForwarderActivity$Injector;->resolveActivityAsUser(Landroid/content/Intent;II)Ljava/util/concurrent/CompletableFuture;

    move-result-object p3

    .line 527
    invoke-virtual {p3}, Ljava/util/concurrent/CompletableFuture;->join()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/content/pm/ResolveInfo;

    .line 528
    invoke-direct {p0, p3}, Lcom/android/internal/app/IntentForwarderActivity;->isIntentForwarderResolveInfo(Landroid/content/pm/ResolveInfo;)Z

    move-result p3

    if-eqz p3, :cond_15

    .line 529
    goto :goto_16

    :cond_15
    move p5, p4

    .line 530
    :goto_16
    invoke-direct {p0, p2}, Lcom/android/internal/app/IntentForwarderActivity;->findSelectedProfile(Ljava/lang/String;)I

    move-result p2

    .line 531
    invoke-static {p1}, Lcom/android/internal/app/IntentForwarderActivity;->sanitizeIntent(Landroid/content/Intent;)V

    .line 532
    const-string p3, "com.android.internal.app.ResolverActivity.EXTRA_SELECTED_PROFILE"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 533
    const-string p2, "com.android.internal.app.ResolverActivity.EXTRA_CALLING_USER"

    invoke-static {p4}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 534
    if-eqz p6, :cond_33

    .line 535
    const-string p2, "com.android.internal.app.ResolverActivity.EXTRA_RESTRICT_TO_SINGLE_USER"

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 537
    :cond_33
    invoke-static {p1}, Lcom/android/internal/app/chooser/TargetInfo;->refreshIntentCreatorToken(Landroid/content/Intent;)V

    .line 538
    const/4 p2, 0x0

    const/4 p3, 0x0

    invoke-virtual {p0, p1, p2, p3, p5}, Lcom/android/internal/app/IntentForwarderActivity;->startActivityAsCaller(Landroid/content/Intent;Landroid/os/Bundle;ZI)V

    .line 539
    invoke-virtual {p0}, Lcom/android/internal/app/IntentForwarderActivity;->finish()V

    .line 540
    return-void
.end method

.method private blacklist maybeShowDisclosure(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;Ljava/lang/String;)V
    .registers 4

    .line 479
    invoke-direct {p0, p2, p1}, Lcom/android/internal/app/IntentForwarderActivity;->shouldShowDisclosure(Landroid/content/pm/ResolveInfo;Landroid/content/Intent;)Z

    move-result p1

    if-eqz p1, :cond_e

    if-eqz p3, :cond_e

    .line 480
    iget-object p1, p0, Lcom/android/internal/app/IntentForwarderActivity;->mInjector:Lcom/android/internal/app/IntentForwarderActivity$Injector;

    const/4 p2, 0x1

    invoke-interface {p1, p3, p2}, Lcom/android/internal/app/IntentForwarderActivity$Injector;->showToast(Ljava/lang/String;I)V

    .line 482
    :cond_e
    return-void
.end method

.method private blacklist maybeShowUserConsentMiniResolver(Landroid/content/pm/ResolveInfo;Landroid/content/Intent;Landroid/content/pm/UserInfo;)V
    .registers 13

    .line 246
    if-eqz p1, :cond_f3

    invoke-direct {p0, p1}, Lcom/android/internal/app/IntentForwarderActivity;->isIntentForwarderResolveInfo(Landroid/content/pm/ResolveInfo;)Z

    move-result v0

    if-nez v0, :cond_f3

    invoke-direct {p0}, Lcom/android/internal/app/IntentForwarderActivity;->isDeviceProvisioned()Z

    move-result v0

    if-nez v0, :cond_11

    move-object p1, p0

    goto/16 :goto_f4

    .line 251
    :cond_11
    if-nez p3, :cond_16

    const/16 p3, -0x2710

    goto :goto_18

    :cond_16
    iget p3, p3, Landroid/content/pm/UserInfo;->id:I

    :goto_18
    move v3, p3

    .line 252
    invoke-virtual {p0}, Lcom/android/internal/app/IntentForwarderActivity;->getLaunchedFromPackage()Ljava/lang/String;

    move-result-object p3

    .line 253
    nop

    .line 254
    const-string v0, "com.android.internal.app.EXTRA_SKIP_USER_CONFIRMATION"

    const/4 v6, 0x0

    invoke-virtual {p2, v0, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v7, 0x1

    if-eqz v0, :cond_38

    if-eqz p3, :cond_38

    .line 257
    invoke-virtual {p0}, Lcom/android/internal/app/IntentForwarderActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {v0, v1, p3}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_38

    move v0, v7

    goto :goto_39

    :cond_38
    move v0, v6

    .line 260
    :goto_39
    const-class v1, Landroid/app/admin/DevicePolicyManager;

    .line 261
    invoke-virtual {p0, v1}, Lcom/android/internal/app/IntentForwarderActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/app/admin/DevicePolicyManager;

    .line 262
    invoke-virtual {v8, v3}, Landroid/app/admin/DevicePolicyManager;->getProfileOwnerAsUser(I)Landroid/content/ComponentName;

    move-result-object v1

    .line 263
    if-eqz v1, :cond_5a

    .line 264
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5a

    move v1, v7

    goto :goto_5b

    :cond_5a
    move v1, v6

    .line 266
    :goto_5b
    const-string v2, "IntentForwarderActivity"

    if-nez v0, :cond_d5

    if-eqz v1, :cond_64

    move-object p1, p0

    goto/16 :goto_d6

    .line 278
    :cond_64
    const-string v0, "Showing user consent for redirection into the managed profile for intent [%s] and  calling package [%s]"

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p3

    invoke-static {v0, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-static {v2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    nop

    .line 283
    invoke-static {v3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p3

    invoke-virtual {p0, p3, v6}, Lcom/android/internal/app/IntentForwarderActivity;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object p3

    .line 284
    invoke-virtual {p3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 285
    nop

    .line 286
    invoke-virtual {p1, v5}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p3

    invoke-direct {p0, p2, p3}, Lcom/android/internal/app/IntentForwarderActivity;->getOpenInWorkMessage(Landroid/content/Intent;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 285
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/app/IntentForwarderActivity;->buildMiniResolver(Landroid/content/pm/ResolveInfo;Landroid/content/Intent;ILjava/lang/String;Landroid/content/pm/PackageManager;)V

    .line 289
    move-object p1, v0

    const p3, 0x102025d

    invoke-virtual {p0, p3}, Lcom/android/internal/app/IntentForwarderActivity;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/Button;

    invoke-direct {p0, p2}, Lcom/android/internal/app/IntentForwarderActivity;->getOpenInWorkButtonString(Landroid/content/Intent;)I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/widget/Button;->setText(I)V

    .line 291
    const p3, 0x1020400

    invoke-virtual {p0, p3}, Lcom/android/internal/app/IntentForwarderActivity;->findViewById(I)Landroid/view/View;

    move-result-object p3

    .line 295
    invoke-direct {p0, p2}, Lcom/android/internal/app/IntentForwarderActivity;->isDialerIntent(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_b1

    invoke-direct {p0, p2}, Lcom/android/internal/app/IntentForwarderActivity;->isTextMessageIntent(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_cf

    .line 296
    :cond_b1
    invoke-virtual {v8}, Landroid/app/admin/DevicePolicyManager;->getManagedSubscriptionsPolicy()Landroid/app/admin/ManagedSubscriptionsPolicy;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/admin/ManagedSubscriptionsPolicy;->getPolicyType()I

    move-result v0

    if-ne v0, v7, :cond_cf

    .line 298
    invoke-virtual {p3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 299
    const p3, 0x1020402

    invoke-virtual {p0, p3}, Lcom/android/internal/app/IntentForwarderActivity;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 300
    invoke-direct {p0, p2}, Lcom/android/internal/app/IntentForwarderActivity;->getWorkTelephonyInfoSectionMessage(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_d4

    .line 302
    :cond_cf
    const/16 p1, 0x8

    invoke-virtual {p3, p1}, Landroid/view/View;->setVisibility(I)V

    .line 304
    :goto_d4
    return-void

    .line 266
    :cond_d5
    move-object p1, p0

    .line 267
    :goto_d6
    nop

    .line 271
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    .line 272
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {p2, p3, v0}, [Ljava/lang/Object;

    move-result-object p3

    .line 267
    const-string v0, "Skipping user consent for redirection into the managed profile for intent [%s], privilegedCallerAskedToSkipUserConsent=[%s], intentToLaunchProfileOwner=[%s]"

    invoke-static {v0, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-static {v2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    invoke-direct {p0, p2, v3}, Lcom/android/internal/app/IntentForwarderActivity;->startActivityAsCaller(Landroid/content/Intent;I)V

    .line 274
    invoke-virtual {p0}, Lcom/android/internal/app/IntentForwarderActivity;->finish()V

    .line 275
    return-void

    .line 246
    :cond_f3
    move-object p1, p0

    .line 247
    :goto_f4
    invoke-virtual {p0}, Lcom/android/internal/app/IntentForwarderActivity;->finish()V

    .line 248
    return-void
.end method

.method private blacklist maybeShowUserConsentMiniResolverPrivate(Landroid/content/pm/ResolveInfo;Landroid/content/Intent;I)V
    .registers 12

    .line 308
    if-eqz p1, :cond_6f

    invoke-direct {p0, p1}, Lcom/android/internal/app/IntentForwarderActivity;->isIntentForwarderResolveInfo(Landroid/content/pm/ResolveInfo;)Z

    move-result v0

    if-eqz v0, :cond_a

    move-object v2, p0

    goto :goto_70

    .line 313
    :cond_a
    invoke-virtual {p0}, Lcom/android/internal/app/IntentForwarderActivity;->getCallingPackage()Ljava/lang/String;

    move-result-object v0

    .line 315
    const-string v1, "Showing user consent for redirection into the main profile for intent [%s] and  calling package [%s]"

    filled-new-array {p2, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "IntentForwarderActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    nop

    .line 320
    invoke-static {p3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/app/IntentForwarderActivity;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v0

    .line 321
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 322
    nop

    .line 324
    invoke-virtual {p1, v7}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    .line 323
    const v2, 0x104068a

    invoke-virtual {p0, v2, v0}, Lcom/android/internal/app/IntentForwarderActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 322
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/app/IntentForwarderActivity;->buildMiniResolver(Landroid/content/pm/ResolveInfo;Landroid/content/Intent;ILjava/lang/String;Landroid/content/pm/PackageManager;)V

    .line 327
    const p1, 0x1020400

    invoke-virtual {p0, p1}, Lcom/android/internal/app/IntentForwarderActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 328
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 330
    invoke-direct {p0, v4}, Lcom/android/internal/app/IntentForwarderActivity;->isTextMessageIntent(Landroid/content/Intent;)Z

    move-result p1

    const p2, 0x1020402

    if-eqz p1, :cond_62

    .line 331
    invoke-virtual {p0, p2}, Lcom/android/internal/app/IntentForwarderActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const p2, 0x104068d

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_6e

    .line 334
    :cond_62
    invoke-virtual {p0, p2}, Lcom/android/internal/app/IntentForwarderActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const p2, 0x104068e

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 337
    :goto_6e
    return-void

    .line 308
    :cond_6f
    move-object v2, p0

    .line 309
    :goto_70
    invoke-virtual {p0}, Lcom/android/internal/app/IntentForwarderActivity;->finish()V

    .line 310
    return-void
.end method

.method private blacklist privateSpaceFlagsEnabled()Z
    .registers 2

    .line 706
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/os/Flags;->allowPrivateProfile()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 707
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/multiuser/Flags;->enablePrivateSpaceFeatures()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 708
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/multiuser/Flags;->enablePrivateSpaceIntentRedirection()Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    .line 706
    :goto_15
    return v0
.end method

.method private static blacklist sanitizeIntent(Landroid/content/Intent;)V
    .registers 2

    .line 681
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 682
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 684
    invoke-virtual {p0}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object p0

    .line 685
    if-eqz p0, :cond_16

    .line 686
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 687
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 688
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setSelector(Landroid/content/Intent;)V

    .line 690
    :cond_16
    return-void
.end method

.method private blacklist setMiniresolverPadding()V
    .registers 5

    .line 712
    const v0, 0x102025b

    invoke-virtual {p0, v0}, Lcom/android/internal/app/IntentForwarderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 713
    if-eqz v0, :cond_30

    .line 714
    nop

    .line 715
    invoke-virtual {p0}, Lcom/android/internal/app/IntentForwarderActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/WindowMetrics;->getWindowInsets()Landroid/view/WindowInsets;

    move-result-object v1

    .line 716
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v2

    .line 715
    invoke-virtual {v1, v2}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object v1

    .line 717
    iget v1, v1, Landroid/graphics/Insets;->bottom:I

    .line 718
    invoke-virtual {p0}, Lcom/android/internal/app/IntentForwarderActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1050351

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    add-int/2addr v1, v2

    .line 717
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v2, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 721
    :cond_30
    return-void
.end method

.method private blacklist shouldShowDisclosure(Landroid/content/pm/ResolveInfo;Landroid/content/Intent;)Z
    .registers 6

    .line 552
    invoke-direct {p0}, Lcom/android/internal/app/IntentForwarderActivity;->isDeviceProvisioned()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 553
    return v1

    .line 555
    :cond_8
    const/4 v0, 0x1

    if-eqz p1, :cond_2f

    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v2, :cond_10

    goto :goto_2f

    .line 558
    :cond_10
    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v2

    if-eqz v2, :cond_27

    .line 559
    invoke-direct {p0, p2}, Lcom/android/internal/app/IntentForwarderActivity;->isDialerIntent(Landroid/content/Intent;)Z

    move-result v2

    if-nez v2, :cond_26

    invoke-direct {p0, p2}, Lcom/android/internal/app/IntentForwarderActivity;->isTextMessageIntent(Landroid/content/Intent;)Z

    move-result p2

    if-eqz p2, :cond_27

    .line 560
    :cond_26
    return v1

    .line 562
    :cond_27
    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-direct {p0, p1}, Lcom/android/internal/app/IntentForwarderActivity;->isTargetResolverOrChooserActivity(Landroid/content/pm/ActivityInfo;)Z

    move-result p1

    xor-int/2addr p1, v0

    return p1

    .line 556
    :cond_2f
    :goto_2f
    return v0
.end method

.method private blacklist startActivityAsCaller(Landroid/content/Intent;I)V
    .registers 5

    .line 486
    :try_start_0
    invoke-static {p1}, Lcom/android/internal/app/chooser/TargetInfo;->refreshIntentCreatorToken(Landroid/content/Intent;)V

    .line 487
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/android/internal/app/IntentForwarderActivity;->startActivityAsCaller(Landroid/content/Intent;Landroid/os/Bundle;ZI)V
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_8} :catch_9

    .line 496
    goto :goto_42

    .line 492
    :catch_9
    move-exception p1

    .line 493
    sget-object p2, Lcom/android/internal/app/IntentForwarderActivity;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to launch as UID "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/app/IntentForwarderActivity;->getLaunchedFromUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " package "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 494
    invoke-virtual {p0}, Lcom/android/internal/app/IntentForwarderActivity;->getLaunchedFromPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", while running in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 495
    invoke-static {}, Landroid/app/ActivityThread;->currentProcessName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 493
    invoke-static {p2, v0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 497
    :goto_42
    return-void
.end method


# virtual methods
.method protected blacklist createInjector()Lcom/android/internal/app/IntentForwarderActivity$Injector;
    .registers 3

    .line 725
    new-instance v0, Lcom/android/internal/app/IntentForwarderActivity$InjectorImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/internal/app/IntentForwarderActivity$InjectorImpl;-><init>(Lcom/android/internal/app/IntentForwarderActivity;Lcom/android/internal/app/IntentForwarderActivity-IA;)V

    return-object v0
.end method

.method protected blacklist getMetricsLogger()Lcom/android/internal/logging/MetricsLogger;
    .registers 2

    .line 693
    iget-object v0, p0, Lcom/android/internal/app/IntentForwarderActivity;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    if-nez v0, :cond_b

    .line 694
    new-instance v0, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {v0}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/IntentForwarderActivity;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 696
    :cond_b
    iget-object v0, p0, Lcom/android/internal/app/IntentForwarderActivity;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    return-object v0
.end method

.method public whitelist onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    .line 124
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 125
    invoke-direct {p0}, Lcom/android/internal/app/IntentForwarderActivity;->setMiniresolverPadding()V

    .line 126
    return-void
.end method

.method protected whitelist onCreate(Landroid/os/Bundle;)V
    .registers 11

    .line 130
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 131
    invoke-virtual {p0}, Lcom/android/internal/app/IntentForwarderActivity;->createInjector()Lcom/android/internal/app/IntentForwarderActivity$Injector;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/app/IntentForwarderActivity;->mInjector:Lcom/android/internal/app/IntentForwarderActivity$Injector;

    .line 132
    iget-object p1, p0, Lcom/android/internal/app/IntentForwarderActivity;->mInjector:Lcom/android/internal/app/IntentForwarderActivity$Injector;

    invoke-interface {p1}, Lcom/android/internal/app/IntentForwarderActivity$Injector;->getExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/app/IntentForwarderActivity;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 134
    invoke-virtual {p0}, Lcom/android/internal/app/IntentForwarderActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 135
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 139
    sget-object p1, Lcom/android/internal/app/IntentForwarderActivity;->FORWARD_INTENT_TO_PARENT:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/16 v0, 0x67d

    const/16 v3, -0x2710

    const/4 v4, 0x0

    if-eqz p1, :cond_47

    .line 140
    invoke-direct {p0}, Lcom/android/internal/app/IntentForwarderActivity;->getForwardToPersonalMessage()Ljava/lang/String;

    move-result-object p1

    .line 141
    invoke-direct {p0}, Lcom/android/internal/app/IntentForwarderActivity;->getProfileParent()I

    move-result v5

    .line 142
    nop

    .line 144
    invoke-virtual {p0}, Lcom/android/internal/app/IntentForwarderActivity;->getMetricsLogger()Lcom/android/internal/logging/MetricsLogger;

    move-result-object v6

    new-instance v7, Landroid/metrics/LogMaker;

    invoke-direct {v7, v0}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 146
    const/4 v0, 0x1

    invoke-virtual {v7, v0}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object v0

    .line 144
    invoke-virtual {v6, v0}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    move-object v7, p1

    move-object v8, v4

    goto :goto_94

    .line 147
    :cond_47
    sget-object p1, Lcom/android/internal/app/IntentForwarderActivity;->FORWARD_INTENT_TO_MANAGED_PROFILE:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_71

    .line 148
    invoke-direct {p0}, Lcom/android/internal/app/IntentForwarderActivity;->getForwardToWorkMessage()Ljava/lang/String;

    move-result-object v4

    .line 149
    invoke-direct {p0}, Lcom/android/internal/app/IntentForwarderActivity;->getManagedProfile()Landroid/content/pm/UserInfo;

    move-result-object p1

    .line 150
    if-nez p1, :cond_5b

    move v5, v3

    goto :goto_5d

    :cond_5b
    iget v5, p1, Landroid/content/pm/UserInfo;->id:I

    .line 152
    :goto_5d
    invoke-virtual {p0}, Lcom/android/internal/app/IntentForwarderActivity;->getMetricsLogger()Lcom/android/internal/logging/MetricsLogger;

    move-result-object v6

    new-instance v7, Landroid/metrics/LogMaker;

    invoke-direct {v7, v0}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 154
    const/4 v0, 0x2

    invoke-virtual {v7, v0}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object v0

    .line 152
    invoke-virtual {v6, v0}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    move-object v8, p1

    move-object v7, v4

    goto :goto_94

    .line 156
    :cond_71
    sget-object p1, Lcom/android/internal/app/IntentForwarderActivity;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v5, Lcom/android/internal/app/IntentForwarderActivity;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " cannot be called directly"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    nop

    .line 158
    nop

    .line 159
    move v5, v3

    move-object v7, v4

    move-object v8, v7

    .line 161
    :goto_94
    if-ne v5, v3, :cond_9a

    .line 163
    invoke-virtual {p0}, Lcom/android/internal/app/IntentForwarderActivity;->finish()V

    .line 164
    return-void

    .line 166
    :cond_9a
    const-string p1, "android.intent.action.CHOOSER"

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_aa

    .line 167
    invoke-direct {p0, v1, v2}, Lcom/android/internal/app/IntentForwarderActivity;->launchChooserActivityWithCorrectTab(Landroid/content/Intent;Ljava/lang/String;)V

    .line 168
    return-void

    .line 171
    :cond_aa
    invoke-virtual {p0}, Lcom/android/internal/app/IntentForwarderActivity;->getUserId()I

    move-result v4

    .line 172
    invoke-virtual {p0}, Lcom/android/internal/app/IntentForwarderActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object p1

    .line 173
    invoke-virtual {p0}, Lcom/android/internal/app/IntentForwarderActivity;->getUserId()I

    move-result v0

    iget-object v3, p0, Lcom/android/internal/app/IntentForwarderActivity;->mInjector:Lcom/android/internal/app/IntentForwarderActivity$Injector;

    .line 174
    invoke-interface {v3}, Lcom/android/internal/app/IntentForwarderActivity$Injector;->getIPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    .line 173
    invoke-static {v1, v0, v5, v3, p1}, Lcom/android/internal/app/IntentForwarderActivity;->canForward(Landroid/content/Intent;IILandroid/content/pm/IPackageManager;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    .line 176
    if-nez v3, :cond_f6

    .line 177
    sget-object p1, Lcom/android/internal/app/IntentForwarderActivity;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "the intent: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " cannot be forwarded from user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    invoke-virtual {p0}, Lcom/android/internal/app/IntentForwarderActivity;->finish()V

    .line 180
    return-void

    .line 183
    :cond_f6
    invoke-virtual {v3, v4}, Landroid/content/Intent;->prepareToLeaveUser(I)V

    .line 184
    iget-object v0, p0, Lcom/android/internal/app/IntentForwarderActivity;->mInjector:Lcom/android/internal/app/IntentForwarderActivity$Injector;

    .line 185
    const/high16 v6, 0x10000

    invoke-interface {v0, v3, p1, v6, v5}, Lcom/android/internal/app/IntentForwarderActivity$Injector;->resolveActivityAsUser(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/concurrent/CompletableFuture;

    move-result-object p1

    .line 191
    invoke-direct {p0, v4}, Lcom/android/internal/app/IntentForwarderActivity;->isPrivateProfile(I)Z

    move-result v0

    if-eqz v0, :cond_10c

    .line 192
    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/app/IntentForwarderActivity;->buildAndExecuteForPrivateProfile(Landroid/content/Intent;Ljava/lang/String;Landroid/content/Intent;II)V

    goto :goto_116

    .line 195
    :cond_10c
    move-object v0, p0

    move v6, v5

    move v5, v4

    move-object v4, v3

    move-object v3, v2

    move-object v2, v1

    move-object v1, p1

    invoke-direct/range {v0 .. v8}, Lcom/android/internal/app/IntentForwarderActivity;->buildAndExecute(Ljava/util/concurrent/CompletableFuture;Landroid/content/Intent;Ljava/lang/String;Landroid/content/Intent;IILjava/lang/String;Landroid/content/pm/UserInfo;)V

    .line 199
    :goto_116
    return-void
.end method

.method protected whitelist onDestroy()V
    .registers 2

    .line 118
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 119
    iget-object v0, p0, Lcom/android/internal/app/IntentForwarderActivity;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 120
    return-void
.end method
