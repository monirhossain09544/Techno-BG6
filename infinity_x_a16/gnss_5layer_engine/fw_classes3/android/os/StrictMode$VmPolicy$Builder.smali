.class public final Landroid/os/StrictMode$VmPolicy$Builder;
.super Ljava/lang/Object;
.source "StrictMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/StrictMode$VmPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private greylist-max-o mClassInstanceLimit:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Class;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mClassInstanceLimitNeedCow:Z

.field private greylist-max-o mExecutor:Ljava/util/concurrent/Executor;

.field private greylist-max-o mListener:Landroid/os/StrictMode$OnVmViolationListener;

.field private greylist mMask:I


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 806
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 804
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/os/StrictMode$VmPolicy$Builder;->mClassInstanceLimitNeedCow:Z

    .line 807
    iput v0, p0, Landroid/os/StrictMode$VmPolicy$Builder;->mMask:I

    .line 808
    return-void
.end method

.method public constructor whitelist <init>(Landroid/os/StrictMode$VmPolicy;)V
    .registers 3

    .line 811
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 804
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/os/StrictMode$VmPolicy$Builder;->mClassInstanceLimitNeedCow:Z

    .line 812
    iget v0, p1, Landroid/os/StrictMode$VmPolicy;->mask:I

    iput v0, p0, Landroid/os/StrictMode$VmPolicy$Builder;->mMask:I

    .line 813
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/os/StrictMode$VmPolicy$Builder;->mClassInstanceLimitNeedCow:Z

    .line 814
    iget-object v0, p1, Landroid/os/StrictMode$VmPolicy;->classInstanceLimit:Ljava/util/HashMap;

    iput-object v0, p0, Landroid/os/StrictMode$VmPolicy$Builder;->mClassInstanceLimit:Ljava/util/HashMap;

    .line 815
    iget-object v0, p1, Landroid/os/StrictMode$VmPolicy;->mListener:Landroid/os/StrictMode$OnVmViolationListener;

    iput-object v0, p0, Landroid/os/StrictMode$VmPolicy$Builder;->mListener:Landroid/os/StrictMode$OnVmViolationListener;

    .line 816
    iget-object p1, p1, Landroid/os/StrictMode$VmPolicy;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    iput-object p1, p0, Landroid/os/StrictMode$VmPolicy$Builder;->mExecutor:Ljava/util/concurrent/Executor;

    .line 817
    return-void
.end method

.method private greylist-max-o enable(I)Landroid/os/StrictMode$VmPolicy$Builder;
    .registers 3

    .line 1253
    iget v0, p0, Landroid/os/StrictMode$VmPolicy$Builder;->mMask:I

    or-int/2addr p1, v0

    iput p1, p0, Landroid/os/StrictMode$VmPolicy$Builder;->mMask:I

    .line 1254
    return-object p0
.end method


# virtual methods
.method public whitelist build()Landroid/os/StrictMode$VmPolicy;
    .registers 8

    .line 1271
    iget-object v0, p0, Landroid/os/StrictMode$VmPolicy$Builder;->mListener:Landroid/os/StrictMode$OnVmViolationListener;

    if-nez v0, :cond_12

    iget v0, p0, Landroid/os/StrictMode$VmPolicy$Builder;->mMask:I

    if-eqz v0, :cond_12

    iget v0, p0, Landroid/os/StrictMode$VmPolicy$Builder;->mMask:I

    const/high16 v1, 0x74000000

    and-int/2addr v0, v1

    if-nez v0, :cond_12

    .line 1279
    invoke-virtual {p0}, Landroid/os/StrictMode$VmPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$VmPolicy$Builder;

    .line 1281
    :cond_12
    new-instance v1, Landroid/os/StrictMode$VmPolicy;

    iget v2, p0, Landroid/os/StrictMode$VmPolicy$Builder;->mMask:I

    .line 1283
    iget-object v0, p0, Landroid/os/StrictMode$VmPolicy$Builder;->mClassInstanceLimit:Ljava/util/HashMap;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Landroid/os/StrictMode$VmPolicy$Builder;->mClassInstanceLimit:Ljava/util/HashMap;

    goto :goto_21

    :cond_1d
    invoke-static {}, Landroid/os/StrictMode;->-$$Nest$sfgetEMPTY_CLASS_LIMIT_MAP()Ljava/util/HashMap;

    move-result-object v0

    :goto_21
    move-object v3, v0

    iget-object v4, p0, Landroid/os/StrictMode$VmPolicy$Builder;->mListener:Landroid/os/StrictMode$OnVmViolationListener;

    iget-object v5, p0, Landroid/os/StrictMode$VmPolicy$Builder;->mExecutor:Ljava/util/concurrent/Executor;

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Landroid/os/StrictMode$VmPolicy;-><init>(ILjava/util/HashMap;Landroid/os/StrictMode$OnVmViolationListener;Ljava/util/concurrent/Executor;Landroid/os/StrictMode-IA;)V

    .line 1281
    return-object v1
.end method

.method public whitelist detectActivityLeaks()Landroid/os/StrictMode$VmPolicy$Builder;
    .registers 2

    .line 845
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/os/StrictMode$VmPolicy$Builder;->enable(I)Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public whitelist detectAll()Landroid/os/StrictMode$VmPolicy$Builder;
    .registers 4

    .line 885
    invoke-virtual {p0}, Landroid/os/StrictMode$VmPolicy$Builder;->detectLeakedSqlLiteObjects()Landroid/os/StrictMode$VmPolicy$Builder;

    .line 887
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->getTargetSdkVersion()I

    move-result v0

    .line 888
    const/16 v1, 0xb

    if-lt v0, v1, :cond_15

    .line 889
    invoke-virtual {p0}, Landroid/os/StrictMode$VmPolicy$Builder;->detectActivityLeaks()Landroid/os/StrictMode$VmPolicy$Builder;

    .line 890
    invoke-virtual {p0}, Landroid/os/StrictMode$VmPolicy$Builder;->detectLeakedClosableObjects()Landroid/os/StrictMode$VmPolicy$Builder;

    .line 892
    :cond_15
    const/16 v1, 0x10

    if-lt v0, v1, :cond_1c

    .line 893
    invoke-virtual {p0}, Landroid/os/StrictMode$VmPolicy$Builder;->detectLeakedRegistrationObjects()Landroid/os/StrictMode$VmPolicy$Builder;

    .line 895
    :cond_1c
    const/16 v1, 0x12

    if-lt v0, v1, :cond_23

    .line 896
    invoke-virtual {p0}, Landroid/os/StrictMode$VmPolicy$Builder;->detectFileUriExposure()Landroid/os/StrictMode$VmPolicy$Builder;

    .line 898
    :cond_23
    const/16 v1, 0x17

    if-lt v0, v1, :cond_34

    .line 901
    const-string/jumbo v1, "persist.sys.strictmode.clear"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 902
    invoke-virtual {p0}, Landroid/os/StrictMode$VmPolicy$Builder;->detectCleartextNetwork()Landroid/os/StrictMode$VmPolicy$Builder;

    .line 905
    :cond_34
    const/16 v1, 0x1a

    if-lt v0, v1, :cond_3e

    .line 906
    invoke-virtual {p0}, Landroid/os/StrictMode$VmPolicy$Builder;->detectContentUriWithoutPermission()Landroid/os/StrictMode$VmPolicy$Builder;

    .line 907
    invoke-virtual {p0}, Landroid/os/StrictMode$VmPolicy$Builder;->detectUntaggedSockets()Landroid/os/StrictMode$VmPolicy$Builder;

    .line 909
    :cond_3e
    const/16 v1, 0x1d

    if-lt v0, v1, :cond_45

    .line 910
    invoke-virtual {p0}, Landroid/os/StrictMode$VmPolicy$Builder;->detectCredentialProtectedWhileLocked()Landroid/os/StrictMode$VmPolicy$Builder;

    .line 912
    :cond_45
    const/16 v1, 0x1e

    if-lt v0, v1, :cond_4c

    .line 913
    invoke-virtual {p0}, Landroid/os/StrictMode$VmPolicy$Builder;->detectIncorrectContextUse()Landroid/os/StrictMode$VmPolicy$Builder;

    .line 915
    :cond_4c
    const/16 v1, 0x1f

    if-lt v0, v1, :cond_53

    .line 916
    invoke-virtual {p0}, Landroid/os/StrictMode$VmPolicy$Builder;->detectUnsafeIntentLaunch()Landroid/os/StrictMode$VmPolicy$Builder;

    .line 918
    :cond_53
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/Flags;->balStrictModeRo()Z

    move-result v1

    if-eqz v1, :cond_60

    const/16 v1, 0x23

    if-le v0, v1, :cond_60

    .line 919
    invoke-virtual {p0}, Landroid/os/StrictMode$VmPolicy$Builder;->detectBlockedBackgroundActivityLaunch()Landroid/os/StrictMode$VmPolicy$Builder;

    .line 925
    :cond_60
    return-object p0
.end method

.method public whitelist detectBlockedBackgroundActivityLaunch()Landroid/os/StrictMode$VmPolicy$Builder;
    .registers 2

    .line 1176
    const/16 v0, 0x4000

    invoke-direct {p0, v0}, Landroid/os/StrictMode$VmPolicy$Builder;->enable(I)Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public whitelist detectCleartextNetwork()Landroid/os/StrictMode$VmPolicy$Builder;
    .registers 2

    .line 993
    const/16 v0, 0x40

    invoke-direct {p0, v0}, Landroid/os/StrictMode$VmPolicy$Builder;->enable(I)Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public whitelist detectContentUriWithoutPermission()Landroid/os/StrictMode$VmPolicy$Builder;
    .registers 2

    .line 1009
    const/16 v0, 0x80

    invoke-direct {p0, v0}, Landroid/os/StrictMode$VmPolicy$Builder;->enable(I)Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public whitelist detectCredentialProtectedWhileLocked()Landroid/os/StrictMode$VmPolicy$Builder;
    .registers 2

    .line 1068
    const/16 v0, 0x800

    invoke-direct {p0, v0}, Landroid/os/StrictMode$VmPolicy$Builder;->enable(I)Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public whitelist detectFileUriExposure()Landroid/os/StrictMode$VmPolicy$Builder;
    .registers 2

    .line 974
    const/16 v0, 0x20

    invoke-direct {p0, v0}, Landroid/os/StrictMode$VmPolicy$Builder;->enable(I)Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public whitelist detectImplicitDirectBoot()Landroid/os/StrictMode$VmPolicy$Builder;
    .registers 2

    .line 1047
    const/16 v0, 0x400

    invoke-direct {p0, v0}, Landroid/os/StrictMode$VmPolicy$Builder;->enable(I)Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public whitelist detectIncorrectContextUse()Landroid/os/StrictMode$VmPolicy$Builder;
    .registers 2

    .line 1087
    const/16 v0, 0x1000

    invoke-direct {p0, v0}, Landroid/os/StrictMode$VmPolicy$Builder;->enable(I)Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public whitelist detectLeakedClosableObjects()Landroid/os/StrictMode$VmPolicy$Builder;
    .registers 2

    .line 947
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/os/StrictMode$VmPolicy$Builder;->enable(I)Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public whitelist detectLeakedRegistrationObjects()Landroid/os/StrictMode$VmPolicy$Builder;
    .registers 2

    .line 955
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Landroid/os/StrictMode$VmPolicy$Builder;->enable(I)Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public whitelist detectLeakedSqlLiteObjects()Landroid/os/StrictMode$VmPolicy$Builder;
    .registers 2

    .line 936
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/os/StrictMode$VmPolicy$Builder;->enable(I)Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public whitelist detectNonSdkApiUsage()Landroid/os/StrictMode$VmPolicy$Builder;
    .registers 2

    .line 864
    const/16 v0, 0x200

    invoke-direct {p0, v0}, Landroid/os/StrictMode$VmPolicy$Builder;->enable(I)Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public whitelist detectUnsafeIntentLaunch()Landroid/os/StrictMode$VmPolicy$Builder;
    .registers 2

    .line 1140
    const/16 v0, 0x2000

    invoke-direct {p0, v0}, Landroid/os/StrictMode$VmPolicy$Builder;->enable(I)Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public whitelist detectUntaggedSockets()Landroid/os/StrictMode$VmPolicy$Builder;
    .registers 2

    .line 1024
    const/16 v0, 0x100

    invoke-direct {p0, v0}, Landroid/os/StrictMode$VmPolicy$Builder;->enable(I)Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method greylist-max-o disable(I)Landroid/os/StrictMode$VmPolicy$Builder;
    .registers 3

    .line 1258
    iget v0, p0, Landroid/os/StrictMode$VmPolicy$Builder;->mMask:I

    not-int p1, p1

    and-int/2addr p1, v0

    iput p1, p0, Landroid/os/StrictMode$VmPolicy$Builder;->mMask:I

    .line 1259
    return-object p0
.end method

.method public whitelist ignoreBlockedBackgroundActivityLaunch()Landroid/os/StrictMode$VmPolicy$Builder;
    .registers 2

    .line 1188
    const/16 v0, 0x4000

    invoke-virtual {p0, v0}, Landroid/os/StrictMode$VmPolicy$Builder;->disable(I)Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public whitelist penaltyDeath()Landroid/os/StrictMode$VmPolicy$Builder;
    .registers 2

    .line 1197
    const/high16 v0, 0x10000000

    invoke-direct {p0, v0}, Landroid/os/StrictMode$VmPolicy$Builder;->enable(I)Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public whitelist penaltyDeathOnCleartextNetwork()Landroid/os/StrictMode$VmPolicy$Builder;
    .registers 2

    .line 1206
    const/high16 v0, 0x1000000

    invoke-direct {p0, v0}, Landroid/os/StrictMode$VmPolicy$Builder;->enable(I)Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public whitelist penaltyDeathOnFileUriExposure()Landroid/os/StrictMode$VmPolicy$Builder;
    .registers 2

    .line 1216
    const/high16 v0, 0x800000

    invoke-direct {p0, v0}, Landroid/os/StrictMode$VmPolicy$Builder;->enable(I)Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public whitelist penaltyDropBox()Landroid/os/StrictMode$VmPolicy$Builder;
    .registers 2

    .line 1230
    const/high16 v0, 0x4000000

    invoke-direct {p0, v0}, Landroid/os/StrictMode$VmPolicy$Builder;->enable(I)Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public greylist penaltyListener(Landroid/os/StrictMode$OnVmViolationListener;Ljava/util/concurrent/Executor;)Landroid/os/StrictMode$VmPolicy$Builder;
    .registers 3

    .line 1249
    invoke-virtual {p0, p2, p1}, Landroid/os/StrictMode$VmPolicy$Builder;->penaltyListener(Ljava/util/concurrent/Executor;Landroid/os/StrictMode$OnVmViolationListener;)Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object p1

    return-object p1
.end method

.method public whitelist penaltyListener(Ljava/util/concurrent/Executor;Landroid/os/StrictMode$OnVmViolationListener;)Landroid/os/StrictMode$VmPolicy$Builder;
    .registers 3

    .line 1238
    if-eqz p1, :cond_7

    .line 1241
    iput-object p2, p0, Landroid/os/StrictMode$VmPolicy$Builder;->mListener:Landroid/os/StrictMode$OnVmViolationListener;

    .line 1242
    iput-object p1, p0, Landroid/os/StrictMode$VmPolicy$Builder;->mExecutor:Ljava/util/concurrent/Executor;

    .line 1243
    return-object p0

    .line 1239
    :cond_7
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "executor must not be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist penaltyLog()Landroid/os/StrictMode$VmPolicy$Builder;
    .registers 2

    .line 1221
    const/high16 v0, 0x40000000    # 2.0f

    invoke-direct {p0, v0}, Landroid/os/StrictMode$VmPolicy$Builder;->enable(I)Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o permitActivityLeaks()Landroid/os/StrictMode$VmPolicy$Builder;
    .registers 3

    .line 850
    const-class v0, Landroid/os/StrictMode;

    monitor-enter v0

    .line 851
    :try_start_3
    invoke-static {}, Landroid/os/StrictMode;->-$$Nest$sfgetsExpectedActivityInstanceCount()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 852
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_11

    .line 853
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/os/StrictMode$VmPolicy$Builder;->disable(I)Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v0

    return-object v0

    .line 852
    :catchall_11
    move-exception v1

    :try_start_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public blacklist permitCredentialProtectedWhileLocked()Landroid/os/StrictMode$VmPolicy$Builder;
    .registers 2

    .line 1073
    const/16 v0, 0x800

    invoke-virtual {p0, v0}, Landroid/os/StrictMode$VmPolicy$Builder;->disable(I)Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public blacklist permitImplicitDirectBoot()Landroid/os/StrictMode$VmPolicy$Builder;
    .registers 2

    .line 1052
    const/16 v0, 0x400

    invoke-virtual {p0, v0}, Landroid/os/StrictMode$VmPolicy$Builder;->disable(I)Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public blacklist permitIncorrectContextUse()Landroid/os/StrictMode$VmPolicy$Builder;
    .registers 2

    .line 1099
    const/16 v0, 0x1000

    invoke-virtual {p0, v0}, Landroid/os/StrictMode$VmPolicy$Builder;->disable(I)Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public whitelist permitNonSdkApiUsage()Landroid/os/StrictMode$VmPolicy$Builder;
    .registers 2

    .line 874
    const/16 v0, 0x200

    invoke-virtual {p0, v0}, Landroid/os/StrictMode$VmPolicy$Builder;->disable(I)Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public whitelist permitUnsafeIntentLaunch()Landroid/os/StrictMode$VmPolicy$Builder;
    .registers 2

    .line 1155
    const/16 v0, 0x2000

    invoke-virtual {p0, v0}, Landroid/os/StrictMode$VmPolicy$Builder;->disable(I)Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o permitUntaggedSockets()Landroid/os/StrictMode$VmPolicy$Builder;
    .registers 2

    .line 1029
    const/16 v0, 0x100

    invoke-virtual {p0, v0}, Landroid/os/StrictMode$VmPolicy$Builder;->disable(I)Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public whitelist setClassInstanceLimit(Ljava/lang/Class;I)Landroid/os/StrictMode$VmPolicy$Builder;
    .registers 4

    .line 824
    if-eqz p1, :cond_46

    .line 827
    iget-boolean v0, p0, Landroid/os/StrictMode$VmPolicy$Builder;->mClassInstanceLimitNeedCow:Z

    if-eqz v0, :cond_2b

    .line 828
    iget-object v0, p0, Landroid/os/StrictMode$VmPolicy$Builder;->mClassInstanceLimit:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Landroid/os/StrictMode$VmPolicy$Builder;->mClassInstanceLimit:Ljava/util/HashMap;

    .line 829
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, p2, :cond_1d

    .line 831
    return-object p0

    .line 833
    :cond_1d
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/os/StrictMode$VmPolicy$Builder;->mClassInstanceLimitNeedCow:Z

    .line 834
    iget-object v0, p0, Landroid/os/StrictMode$VmPolicy$Builder;->mClassInstanceLimit:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iput-object v0, p0, Landroid/os/StrictMode$VmPolicy$Builder;->mClassInstanceLimit:Ljava/util/HashMap;

    goto :goto_36

    .line 835
    :cond_2b
    iget-object v0, p0, Landroid/os/StrictMode$VmPolicy$Builder;->mClassInstanceLimit:Ljava/util/HashMap;

    if-nez v0, :cond_36

    .line 836
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/os/StrictMode$VmPolicy$Builder;->mClassInstanceLimit:Ljava/util/HashMap;

    .line 838
    :cond_36
    :goto_36
    iget v0, p0, Landroid/os/StrictMode$VmPolicy$Builder;->mMask:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroid/os/StrictMode$VmPolicy$Builder;->mMask:I

    .line 839
    iget-object v0, p0, Landroid/os/StrictMode$VmPolicy$Builder;->mClassInstanceLimit:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 840
    return-object p0

    .line 825
    :cond_46
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "klass == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
