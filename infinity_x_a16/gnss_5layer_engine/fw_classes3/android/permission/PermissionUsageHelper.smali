.class public Landroid/permission/PermissionUsageHelper;
.super Ljava/lang/Object;
.source "PermissionUsageHelper.java"

# interfaces
.implements Landroid/app/AppOpsManager$OnOpActiveChangedListener;
.implements Landroid/app/AppOpsManager$OnOpStartedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/permission/PermissionUsageHelper$AccessChainLink;,
        Landroid/permission/PermissionUsageHelper$OpUsage;
    }
.end annotation


# static fields
.field private static final blacklist ADDITIONAL_RUNNING_TIME_LOCATION_ONLY_MS:J = 0x1388L

.field private static final blacklist CAMERA_OPS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist DEFAULT_RECENT_TIME_MS:J = 0x3a98L

.field private static final blacklist DEFAULT_RUNNING_TIME_MS:J = 0x1388L

.field private static final blacklist LOCATION_OPS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist LOG_TAG:Ljava/lang/String;

.field private static final blacklist MIC_OPS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist RECENT_ACCESS_TIME_MS:Ljava/lang/String; = "recent_access_time_ms"

.field private static final blacklist RUNNING_ACCESS_TIME_MS:Ljava/lang/String; = "running_access_time_ms"

.field private static final blacklist SYSTEM_PKG:Ljava/lang/String; = "android"


# instance fields
.field private blacklist mAppOpsManager:Landroid/app/AppOpsManager;

.field private final blacklist mAttributionChains:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList<",
            "Landroid/permission/PermissionUsageHelper$AccessChainLink;",
            ">;>;"
        }
    .end annotation
.end field

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mPkgManager:Landroid/content/pm/PackageManager;

.field private blacklist mUserContexts:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/UserHandle;",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mVirtualDeviceManager:Landroid/companion/virtual/VirtualDeviceManager;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 86
    const-class v0, Landroid/permission/PermissionUsageHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/permission/PermissionUsageHelper;->LOG_TAG:Ljava/lang/String;

    .line 133
    const-string v0, "android:fine_location"

    invoke-static {v0}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Landroid/permission/PermissionUsageHelper;->LOCATION_OPS:Ljava/util/List;

    .line 137
    const-string v0, "android:receive_ambient_trigger_audio"

    const-string v1, "android:record_audio"

    const-string v2, "android:phone_call_microphone"

    invoke-static {v2, v0, v1}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Landroid/permission/PermissionUsageHelper;->MIC_OPS:Ljava/util/List;

    .line 143
    const-string v0, "android:phone_call_camera"

    const-string v1, "android:camera"

    invoke-static {v0, v1}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Landroid/permission/PermissionUsageHelper;->CAMERA_OPS:Ljava/util/List;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 5

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/permission/PermissionUsageHelper;->mAttributionChains:Landroid/util/ArrayMap;

    .line 181
    iput-object p1, p0, Landroid/permission/PermissionUsageHelper;->mContext:Landroid/content/Context;

    .line 182
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Landroid/permission/PermissionUsageHelper;->mPkgManager:Landroid/content/pm/PackageManager;

    .line 183
    const-class v0, Landroid/app/AppOpsManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Landroid/permission/PermissionUsageHelper;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 184
    const-class v0, Landroid/companion/virtual/VirtualDeviceManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/companion/virtual/VirtualDeviceManager;

    iput-object v0, p0, Landroid/permission/PermissionUsageHelper;->mVirtualDeviceManager:Landroid/companion/virtual/VirtualDeviceManager;

    .line 185
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/permission/PermissionUsageHelper;->mUserContexts:Landroid/util/ArrayMap;

    .line 186
    iget-object v0, p0, Landroid/permission/PermissionUsageHelper;->mUserContexts:Landroid/util/ArrayMap;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    iget-object v2, p0, Landroid/permission/PermissionUsageHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    const-string v0, "android:camera"

    const-string v1, "android:record_audio"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 189
    iget-object v1, p0, Landroid/permission/PermissionUsageHelper;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-virtual {p1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    invoke-virtual {v1, v0, p1, p0}, Landroid/app/AppOpsManager;->startWatchingActive([Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/app/AppOpsManager$OnOpActiveChangedListener;)V

    .line 190
    const/16 p1, 0x1a

    const/16 v0, 0x1b

    filled-new-array {p1, v0}, [I

    move-result-object p1

    .line 191
    iget-object v0, p0, Landroid/permission/PermissionUsageHelper;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-virtual {v0, p1, p0}, Landroid/app/AppOpsManager;->startWatchingStarted([ILandroid/app/AppOpsManager$OnOpStartedListener;)V

    .line 192
    return-void
.end method

.method private blacklist addLinkToChainIfNotPresentLocked(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;II)V
    .registers 9

    .line 270
    iget-object v0, p0, Landroid/permission/PermissionUsageHelper;->mAttributionChains:Landroid/util/ArrayMap;

    .line 271
    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p6

    new-instance v1, Landroid/permission/PermissionUsageHelper$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/permission/PermissionUsageHelper$$ExternalSyntheticLambda0;-><init>()V

    .line 270
    invoke-virtual {v0, p6, v1}, Landroid/util/ArrayMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Ljava/util/ArrayList;

    .line 272
    new-instance v0, Landroid/permission/PermissionUsageHelper$AccessChainLink;

    move-object p0, p4

    move p4, p3

    move-object p3, p0

    move-object p0, v0

    invoke-direct/range {p0 .. p5}, Landroid/permission/PermissionUsageHelper$AccessChainLink;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 275
    move-object p1, p0

    invoke-virtual {p6, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_22

    .line 276
    return-void

    .line 279
    :cond_22
    invoke-virtual {p6}, Ljava/util/ArrayList;->size()I

    move-result p2

    .line 280
    if-eqz p2, :cond_5e

    invoke-virtual {p1}, Landroid/permission/PermissionUsageHelper$AccessChainLink;->isEnd()Z

    move-result p3

    if-nez p3, :cond_5e

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {p6, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/permission/PermissionUsageHelper$AccessChainLink;

    invoke-virtual {p3}, Landroid/permission/PermissionUsageHelper$AccessChainLink;->isEnd()Z

    move-result p3

    if-nez p3, :cond_3d

    goto :goto_5e

    .line 284
    :cond_3d
    invoke-virtual {p1}, Landroid/permission/PermissionUsageHelper$AccessChainLink;->isStart()Z

    move-result p3

    if-eqz p3, :cond_48

    .line 285
    const/4 p2, 0x0

    invoke-virtual {p6, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_61

    .line 286
    :cond_48
    invoke-virtual {p6}, Ljava/util/ArrayList;->size()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    invoke-virtual {p6, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/permission/PermissionUsageHelper$AccessChainLink;

    invoke-virtual {p3}, Landroid/permission/PermissionUsageHelper$AccessChainLink;->isEnd()Z

    move-result p3

    if-eqz p3, :cond_61

    .line 288
    invoke-virtual {p6, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_61

    .line 283
    :cond_5e
    :goto_5e
    invoke-virtual {p6, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 290
    :cond_61
    :goto_61
    return-void
.end method

.method private blacklist formatLabelList(Ljava/util/List;)Ljava/lang/CharSequence;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;)",
            "Ljava/lang/CharSequence;"
        }
    .end annotation

    .line 674
    invoke-static {}, Landroid/icu/text/ListFormatter;->getInstance()Landroid/icu/text/ListFormatter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/icu/text/ListFormatter;->format(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private static blacklist getGroupForOp(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 149
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_76

    :cond_7
    goto :goto_4e

    :sswitch_8
    const-string v0, "android:camera"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x2

    goto :goto_4f

    :sswitch_12
    const-string v0, "android:phone_call_camera"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x4

    goto :goto_4f

    :sswitch_1c
    const-string v0, "android:record_audio"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_4f

    :sswitch_26
    const-string v0, "android:receive_ambient_trigger_audio"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    goto :goto_4f

    :sswitch_30
    const-string v0, "android:phone_call_microphone"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x3

    goto :goto_4f

    :sswitch_3a
    const-string v0, "android:fine_location"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x6

    goto :goto_4f

    :sswitch_44
    const-string v0, "android:coarse_location"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x5

    goto :goto_4f

    :goto_4e
    const/4 v0, -0x1

    :goto_4f
    packed-switch v0, :pswitch_data_94

    .line 162
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown app op: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 160
    :pswitch_6b
    const-string p0, "android.permission-group.LOCATION"

    return-object p0

    .line 157
    :pswitch_6e
    return-object p0

    .line 154
    :pswitch_6f
    const-string p0, "android.permission-group.CAMERA"

    return-object p0

    .line 152
    :pswitch_72
    const-string p0, "android.permission-group.MICROPHONE"

    return-object p0

    nop

    :sswitch_data_76
    .sparse-switch
        -0x639fe5c6 -> :sswitch_44
        -0xc86dd31 -> :sswitch_3a
        0x8da560f -> :sswitch_30
        0x268c0901 -> :sswitch_26
        0x47019993 -> :sswitch_1c
        0x52e1ba8a -> :sswitch_12
        0x5b14ae90 -> :sswitch_8
    .end sparse-switch

    :pswitch_data_94
    .packed-switch 0x0
        :pswitch_72
        :pswitch_72
        :pswitch_6f
        :pswitch_6e
        :pswitch_6e
        :pswitch_6b
        :pswitch_6b
    .end packed-switch
.end method

.method private blacklist getOpUsagesByDevice(Ljava/util/List;Ljava/lang/String;)Ljava/util/Map;
    .registers 41
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/permission/PermissionUsageHelper$OpUsage;",
            ">;>;"
        }
    .end annotation

    .line 561
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    :try_start_6
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/Flags;->deviceAwarePermissionApisEnabled()Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 562
    iget-object v3, v0, Landroid/permission/PermissionUsageHelper;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-virtual {v3, v1, v2}, Landroid/app/AppOpsManager;->getPackagesForOps([Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    goto :goto_45

    .line 564
    :cond_1f
    const-string v3, "default:0"

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_33

    .line 566
    sget-object v0, Landroid/permission/PermissionUsageHelper;->LOG_TAG:Ljava/lang/String;

    const-string v1, "device_aware_permission_apis_enabled flag not enabled when deviceId is not default"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0

    .line 571
    :cond_33
    iget-object v2, v0, Landroid/permission/PermissionUsageHelper;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/app/AppOpsManager;->getPackagesForOps([Ljava/lang/String;)Ljava/util/List;

    move-result-object v1
    :try_end_45
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_45} :catch_22c

    .line 576
    :goto_45
    nop

    .line 578
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 579
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v4}, Landroid/permission/PermissionUsageHelper;->getRecentThreshold(Ljava/lang/Long;)J

    move-result-wide v4

    .line 580
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v6}, Landroid/permission/PermissionUsageHelper;->getRunningThreshold(Ljava/lang/Long;)J

    move-result-wide v6

    .line 581
    nop

    .line 582
    new-instance v8, Landroid/util/ArrayMap;

    invoke-direct {v8}, Landroid/util/ArrayMap;-><init>()V

    .line 584
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v9

    .line 585
    const/4 v11, 0x0

    :goto_65
    if-ge v11, v9, :cond_1fb

    .line 586
    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/app/AppOpsManager$PackageOps;

    .line 587
    invoke-virtual {v12}, Landroid/app/AppOpsManager$PackageOps;->getUid()I

    move-result v13

    .line 588
    invoke-static {v13}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v14

    .line 589
    invoke-virtual {v12}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v15

    .line 591
    invoke-virtual {v12}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v10

    .line 592
    move-object/from16 p2, v1

    const/4 v1, 0x0

    :goto_84
    if-ge v1, v10, :cond_1f1

    .line 593
    move-wide/from16 v22, v2

    invoke-virtual {v12}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AppOpsManager$OpEntry;

    .line 594
    invoke-virtual {v2}, Landroid/app/AppOpsManager$OpEntry;->getOpStr()Ljava/lang/String;

    move-result-object v16

    .line 595
    new-instance v3, Ljava/util/ArrayList;

    .line 596
    invoke-virtual {v2}, Landroid/app/AppOpsManager$OpEntry;->getAttributedOpEntries()Ljava/util/Map;

    move-result-object v17

    move/from16 v33, v1

    invoke-interface/range {v17 .. v17}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 599
    invoke-virtual {v2}, Landroid/app/AppOpsManager$OpEntry;->getAttributedOpEntries()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    .line 600
    move-object/from16 v34, v2

    const/4 v2, 0x0

    :goto_b0
    if-ge v2, v1, :cond_1e2

    .line 601
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    move/from16 v35, v1

    move-object/from16 v1, v17

    check-cast v1, Ljava/lang/String;

    .line 602
    nop

    .line 603
    move/from16 v36, v2

    invoke-virtual/range {v34 .. v34}, Landroid/app/AppOpsManager$OpEntry;->getAttributedOpEntries()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AppOpsManager$AttributedOpEntry;

    .line 605
    move-object/from16 v17, v1

    const/16 v1, 0xd

    invoke-virtual {v2, v1}, Landroid/app/AppOpsManager$AttributedOpEntry;->getLastAccessTime(I)J

    move-result-wide v18

    .line 606
    invoke-virtual {v2}, Landroid/app/AppOpsManager$AttributedOpEntry;->isRunning()Z

    move-result v20

    if-eqz v20, :cond_da

    .line 607
    move-wide/from16 v29, v22

    goto :goto_dc

    .line 606
    :cond_da
    move-wide/from16 v29, v18

    .line 610
    :goto_dc
    cmp-long v18, v29, v4

    if-gez v18, :cond_f0

    invoke-virtual {v2}, Landroid/app/AppOpsManager$AttributedOpEntry;->isRunning()Z

    move-result v18

    if-nez v18, :cond_f0

    .line 611
    move-object/from16 v37, v3

    move-wide/from16 v18, v4

    move/from16 v17, v13

    move-object v5, v14

    move-object v14, v15

    goto/16 :goto_1d4

    .line 614
    :cond_f0
    invoke-static/range {v16 .. v16}, Landroid/permission/PermissionUsageHelper;->getGroupForOp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 615
    nop

    .line 616
    invoke-direct {v0}, Landroid/permission/PermissionUsageHelper;->shouldShowLocationIndicator()Z

    move-result v19

    const/16 v20, 0x1

    if-eqz v19, :cond_10a

    .line 617
    move-object/from16 v37, v3

    const-string v3, "android.permission-group.LOCATION"

    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10c

    move/from16 v3, v20

    goto :goto_10d

    .line 616
    :cond_10a
    move-object/from16 v37, v3

    .line 617
    :cond_10c
    const/4 v3, 0x0

    .line 618
    :goto_10d
    nop

    .line 620
    if-eqz v3, :cond_113

    const-wide/16 v24, 0x1388

    goto :goto_115

    :cond_113
    const-wide/16 v24, 0x0

    :goto_115
    sub-long v24, v6, v24

    .line 621
    nop

    .line 622
    invoke-virtual {v2}, Landroid/app/AppOpsManager$AttributedOpEntry;->isRunning()Z

    move-result v19

    if-nez v19, :cond_126

    cmp-long v19, v29, v24

    if-ltz v19, :cond_123

    goto :goto_126

    :cond_123
    const/16 v31, 0x0

    goto :goto_128

    :cond_126
    :goto_126
    move/from16 v31, v20

    .line 624
    :goto_128
    nop

    .line 625
    move/from16 v19, v3

    const/16 v3, 0xd

    invoke-virtual {v2, v3}, Landroid/app/AppOpsManager$AttributedOpEntry;->getLastProxyInfo(I)Landroid/app/AppOpsManager$OpEventProxyInfo;

    move-result-object v2

    .line 626
    if-eqz v2, :cond_153

    invoke-virtual {v2}, Landroid/app/AppOpsManager$OpEventProxyInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_153

    .line 627
    new-instance v24, Landroid/permission/PermissionUsageHelper$OpUsage;

    invoke-virtual {v2}, Landroid/app/AppOpsManager$OpEventProxyInfo;->getPackageName()Ljava/lang/String;

    move-result-object v25

    invoke-virtual {v2}, Landroid/app/AppOpsManager$OpEventProxyInfo;->getAttributionTag()Ljava/lang/String;

    move-result-object v26

    .line 628
    invoke-virtual {v2}, Landroid/app/AppOpsManager$OpEventProxyInfo;->getUid()I

    move-result v28

    const/16 v32, 0x0

    move-object/from16 v27, v16

    invoke-direct/range {v24 .. v32}, Landroid/permission/PermissionUsageHelper$OpUsage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJZLandroid/permission/PermissionUsageHelper$OpUsage;)V

    move-object/from16 v2, v27

    move-object/from16 v21, v24

    goto :goto_159

    .line 626
    :cond_153
    move-object/from16 v2, v16

    .line 631
    const/16 v24, 0x0

    move-object/from16 v21, v24

    :goto_159
    if-eqz v19, :cond_17c

    .line 636
    invoke-direct {v0, v2, v15, v14, v13}, Landroid/permission/PermissionUsageHelper;->isSystemApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;I)Z

    move-result v3

    if-nez v3, :cond_173

    .line 637
    invoke-direct {v0, v13}, Landroid/permission/PermissionUsageHelper;->isBackgroundApp(I)Z

    move-result v3

    if-eqz v3, :cond_17c

    if-nez v31, :cond_17c

    .line 639
    move-object/from16 v16, v2

    move-wide/from16 v18, v4

    move/from16 v17, v13

    move-object v5, v14

    move-object v14, v15

    goto/16 :goto_1d4

    .line 636
    :cond_173
    move-object/from16 v16, v2

    move-wide/from16 v18, v4

    move/from16 v17, v13

    move-object v5, v14

    move-object v14, v15

    goto :goto_1d4

    .line 642
    :cond_17c
    move-object v3, v14

    move-object v14, v15

    move-object/from16 v15, v17

    move/from16 v17, v13

    new-instance v13, Landroid/permission/PermissionUsageHelper$OpUsage;

    move-object/from16 v16, v2

    move-wide/from16 v18, v29

    move/from16 v20, v31

    invoke-direct/range {v13 .. v21}, Landroid/permission/PermissionUsageHelper$OpUsage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJZLandroid/permission/PermissionUsageHelper$OpUsage;)V

    .line 645
    invoke-virtual {v13}, Landroid/permission/PermissionUsageHelper$OpUsage;->getPackageIdHash()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 646
    invoke-interface {v8, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_1aa

    .line 647
    new-instance v15, Landroid/util/ArrayMap;

    invoke-direct {v15}, Landroid/util/ArrayMap;-><init>()V

    .line 648
    invoke-virtual {v15, v2, v13}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 649
    invoke-interface {v8, v1, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 650
    move-wide/from16 v18, v4

    move-object v5, v3

    goto :goto_1d4

    .line 651
    :cond_1aa
    nop

    .line 652
    invoke-interface {v8, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 653
    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_1be

    .line 654
    invoke-interface {v1, v2, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-wide/from16 v18, v4

    move-object v5, v3

    goto :goto_1d4

    .line 655
    :cond_1be
    move-wide/from16 v18, v4

    move-object v5, v3

    iget-wide v3, v13, Landroid/permission/PermissionUsageHelper$OpUsage;->lastAccessTime:J

    .line 656
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/permission/PermissionUsageHelper$OpUsage;

    move-wide/from16 v20, v3

    iget-wide v3, v15, Landroid/permission/PermissionUsageHelper$OpUsage;->lastAccessTime:J

    cmp-long v3, v20, v3

    if-lez v3, :cond_1d4

    .line 657
    invoke-interface {v1, v2, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 600
    :cond_1d4
    :goto_1d4
    add-int/lit8 v2, v36, 0x1

    move-object v15, v14

    move/from16 v13, v17

    move/from16 v1, v35

    move-object/from16 v3, v37

    move-object v14, v5

    move-wide/from16 v4, v18

    goto/16 :goto_b0

    .line 592
    :cond_1e2
    move-wide/from16 v18, v4

    move/from16 v17, v13

    move-object v5, v14

    move-object v14, v15

    add-int/lit8 v1, v33, 0x1

    move-wide/from16 v2, v22

    move-object v14, v5

    move-wide/from16 v4, v18

    goto/16 :goto_84

    .line 585
    :cond_1f1
    move-wide/from16 v22, v2

    move-wide/from16 v18, v4

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v1, p2

    goto/16 :goto_65

    .line 664
    :cond_1fb
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 665
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 666
    const/4 v10, 0x0

    :goto_20a
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v10, v2, :cond_22b

    .line 667
    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 668
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v8, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 666
    add-int/lit8 v10, v10, 0x1

    goto :goto_20a

    .line 670
    :cond_22b
    return-object v0

    .line 573
    :catch_22c
    move-exception v0

    .line 575
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist getRecentThreshold(Ljava/lang/Long;)J
    .registers 6

    .line 124
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-string/jumbo p0, "recent_access_time_ms"

    const-wide/16 v2, 0x3a98

    const-string/jumbo v4, "privacy"

    invoke-static {v4, p0, v2, v3}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method private static blacklist getRunningThreshold(Ljava/lang/Long;)J
    .registers 6

    .line 129
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-string/jumbo p0, "running_access_time_ms"

    const-wide/16 v2, 0x1388

    const-string/jumbo v4, "privacy"

    invoke-static {v4, p0, v2, v3}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method private blacklist getSubattributionLabelsForPackage(Ljava/lang/String;I)Landroid/util/ArrayMap;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 428
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 429
    invoke-static {p2}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v1

    .line 431
    :try_start_9
    invoke-direct {p0, p1, p2}, Landroid/permission/PermissionUsageHelper;->isSubattributionSupported(Ljava/lang/String;I)Z

    move-result p2

    if-nez p2, :cond_10

    .line 432
    return-object v0

    .line 434
    :cond_10
    invoke-direct {p0, v1}, Landroid/permission/PermissionUsageHelper;->getUserContext(Landroid/os/UserHandle;)Landroid/content/Context;

    move-result-object p2

    .line 435
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 437
    const-wide v2, 0x80001000L    # 1.060999919E-314

    invoke-static {v2, v3}, Landroid/content/pm/PackageManager$PackageInfoFlags;->of(J)Landroid/content/pm/PackageManager$PackageInfoFlags;

    move-result-object v2

    .line 435
    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;)Landroid/content/pm/PackageInfo;

    move-result-object p1

    .line 439
    iget-object v1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object p2

    .line 440
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->attributions:[Landroid/content/pm/Attribution;

    array-length v1, p1

    :goto_2f
    if-ge v2, v1, :cond_47

    aget-object v3, p1, v2
    :try_end_33
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_9 .. :try_end_33} :catch_48

    .line 442
    :try_start_33
    invoke-virtual {v3}, Landroid/content/pm/Attribution;->getLabel()I

    move-result v4

    invoke-virtual {p2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 443
    invoke-virtual {v3}, Landroid/content/pm/Attribution;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_42
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_33 .. :try_end_42} :catch_43
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_33 .. :try_end_42} :catch_48

    .line 446
    goto :goto_44

    .line 444
    :catch_43
    move-exception v3

    .line 440
    :goto_44
    add-int/lit8 v2, v2, 0x1

    goto :goto_2f

    .line 450
    :cond_47
    goto :goto_49

    .line 448
    :catch_48
    move-exception p1

    .line 451
    :goto_49
    return-object v0
.end method

.method private blacklist getUniqueUsagesWithLabels(Ljava/lang/String;Ljava/util/List;)Landroid/util/ArrayMap;
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/permission/PermissionUsageHelper$OpUsage;",
            ">;)",
            "Landroid/util/ArrayMap<",
            "Landroid/permission/PermissionUsageHelper$OpUsage;",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .line 679
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v0, p2

    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    .line 681
    if-eqz v0, :cond_2b9

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_15

    goto/16 :goto_2b9

    .line 685
    :cond_15
    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    .line 687
    new-instance v5, Landroid/util/ArrayMap;

    invoke-direct {v5}, Landroid/util/ArrayMap;-><init>()V

    .line 689
    new-instance v6, Landroid/util/ArraySet;

    invoke-direct {v6}, Landroid/util/ArraySet;-><init>()V

    .line 691
    new-instance v7, Landroid/util/ArrayMap;

    invoke-direct {v7}, Landroid/util/ArrayMap;-><init>()V

    .line 693
    new-instance v8, Landroid/util/ArrayMap;

    invoke-direct {v8}, Landroid/util/ArrayMap;-><init>()V

    .line 695
    const/4 v10, 0x0

    :goto_2f
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v11

    if-ge v10, v11, :cond_5a

    .line 696
    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/permission/PermissionUsageHelper$OpUsage;

    .line 697
    invoke-virtual {v11}, Landroid/permission/PermissionUsageHelper$OpUsage;->getPackageIdHash()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v4, v12, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 698
    iget-object v12, v11, Landroid/permission/PermissionUsageHelper$OpUsage;->proxy:Landroid/permission/PermissionUsageHelper$OpUsage;

    if-eqz v12, :cond_57

    .line 699
    iget-object v12, v11, Landroid/permission/PermissionUsageHelper$OpUsage;->proxy:Landroid/permission/PermissionUsageHelper$OpUsage;

    invoke-virtual {v12}, Landroid/permission/PermissionUsageHelper$OpUsage;->getPackageIdHash()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v8, v12, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 695
    :cond_57
    add-int/lit8 v10, v10, 0x1

    goto :goto_2f

    .line 704
    :cond_5a
    const/4 v10, 0x0

    :goto_5b
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v11

    if-ge v10, v11, :cond_cb

    .line 705
    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/permission/PermissionUsageHelper$OpUsage;

    .line 706
    if-nez v11, :cond_6c

    .line 707
    move/from16 v16, v10

    goto :goto_c8

    .line 710
    :cond_6c
    invoke-virtual {v11}, Landroid/permission/PermissionUsageHelper$OpUsage;->getPackageIdHash()I

    move-result v12

    .line 713
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v8, v12}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_99

    iget-object v12, v11, Landroid/permission/PermissionUsageHelper$OpUsage;->proxy:Landroid/permission/PermissionUsageHelper$OpUsage;

    if-eqz v12, :cond_99

    const-string v12, "android.permission-group.MICROPHONE"

    .line 714
    invoke-virtual {v12, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_99

    .line 715
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v7, v11, v12}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 716
    invoke-virtual {v11}, Landroid/permission/PermissionUsageHelper$OpUsage;->getPackageIdHash()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v6, v12}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 720
    :cond_99
    invoke-virtual {v11}, Landroid/permission/PermissionUsageHelper$OpUsage;->getPackageIdHash()I

    move-result v12

    .line 721
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v5, v13}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/permission/PermissionUsageHelper$OpUsage;

    .line 722
    iget-object v14, v11, Landroid/permission/PermissionUsageHelper$OpUsage;->packageName:Ljava/lang/String;

    invoke-direct {v1, v14}, Landroid/permission/PermissionUsageHelper;->shouldShowPackage(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_c6

    if-eqz v13, :cond_bc

    iget-wide v14, v11, Landroid/permission/PermissionUsageHelper$OpUsage;->lastAccessTime:J

    move/from16 v16, v10

    iget-wide v9, v13, Landroid/permission/PermissionUsageHelper$OpUsage;->lastAccessTime:J

    cmp-long v9, v14, v9

    if-lez v9, :cond_c8

    goto :goto_be

    :cond_bc
    move/from16 v16, v10

    .line 724
    :goto_be
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v5, v9, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c8

    .line 722
    :cond_c6
    move/from16 v16, v10

    .line 704
    :cond_c8
    :goto_c8
    add-int/lit8 v10, v16, 0x1

    goto :goto_5b

    .line 729
    :cond_cb
    const/4 v8, 0x0

    :goto_cc
    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-ge v8, v0, :cond_1a3

    .line 730
    invoke-virtual {v7, v8}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/permission/PermissionUsageHelper$OpUsage;

    .line 732
    invoke-virtual {v10}, Landroid/permission/PermissionUsageHelper$OpUsage;->getPackageIdHash()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 733
    invoke-virtual {v7, v8}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/permission/PermissionUsageHelper$OpUsage;

    .line 734
    invoke-virtual {v7, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/ArrayList;

    .line 735
    if-eqz v0, :cond_19f

    if-nez v11, :cond_f6

    .line 736
    goto/16 :goto_19f

    .line 738
    :cond_f6
    nop

    .line 739
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v12

    const/4 v13, 0x0

    .line 740
    :goto_fc
    iget-object v14, v0, Landroid/permission/PermissionUsageHelper$OpUsage;->proxy:Landroid/permission/PermissionUsageHelper$OpUsage;

    if-eqz v14, :cond_187

    .line 742
    iget-object v14, v0, Landroid/permission/PermissionUsageHelper$OpUsage;->proxy:Landroid/permission/PermissionUsageHelper$OpUsage;

    invoke-virtual {v14}, Landroid/permission/PermissionUsageHelper$OpUsage;->getPackageIdHash()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v4, v14}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_123

    .line 743
    iget-object v0, v0, Landroid/permission/PermissionUsageHelper$OpUsage;->proxy:Landroid/permission/PermissionUsageHelper$OpUsage;

    invoke-virtual {v0}, Landroid/permission/PermissionUsageHelper$OpUsage;->getPackageIdHash()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/permission/PermissionUsageHelper$OpUsage;

    move v14, v12

    move-object v12, v0

    goto :goto_132

    .line 747
    :cond_123
    iget-object v0, v0, Landroid/permission/PermissionUsageHelper$OpUsage;->proxy:Landroid/permission/PermissionUsageHelper$OpUsage;

    .line 748
    iget-object v14, v0, Landroid/permission/PermissionUsageHelper$OpUsage;->packageName:Ljava/lang/String;

    invoke-direct {v1, v14}, Landroid/permission/PermissionUsageHelper;->shouldShowPackage(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_187

    .line 749
    nop

    .line 751
    add-int/lit8 v12, v12, 0x1

    move v14, v12

    move-object v12, v0

    .line 757
    :goto_132
    if-eqz v12, :cond_187

    if-eq v13, v14, :cond_187

    .line 758
    invoke-virtual {v12}, Landroid/permission/PermissionUsageHelper$OpUsage;->getPackageIdHash()I

    move-result v0

    invoke-virtual {v10}, Landroid/permission/PermissionUsageHelper$OpUsage;->getPackageIdHash()I

    move-result v15

    if-ne v0, v15, :cond_141

    .line 760
    goto :goto_187

    .line 763
    :cond_141
    invoke-virtual {v12}, Landroid/permission/PermissionUsageHelper$OpUsage;->getPackageIdHash()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 765
    iget-object v0, v12, Landroid/permission/PermissionUsageHelper$OpUsage;->packageName:Ljava/lang/String;

    iget-object v15, v10, Landroid/permission/PermissionUsageHelper$OpUsage;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_181

    iget-object v0, v12, Landroid/permission/PermissionUsageHelper$OpUsage;->packageName:Ljava/lang/String;

    .line 766
    invoke-direct {v1, v0}, Landroid/permission/PermissionUsageHelper;->shouldShowPackage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_181

    .line 768
    nop

    .line 769
    :try_start_15f
    invoke-virtual {v12}, Landroid/permission/PermissionUsageHelper$OpUsage;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/permission/PermissionUsageHelper;->getUserContext(Landroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 770
    iget-object v15, v12, Landroid/permission/PermissionUsageHelper$OpUsage;->packageName:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-virtual {v0, v15, v9}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v15

    .line 772
    invoke-virtual {v15, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 774
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_17f

    .line 775
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_17f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_15f .. :try_end_17f} :catch_180

    .line 779
    :cond_17f
    goto :goto_181

    .line 777
    :catch_180
    move-exception v0

    .line 781
    :cond_181
    :goto_181
    add-int/lit8 v13, v13, 0x1

    move-object v0, v12

    move v12, v14

    goto/16 :goto_fc

    .line 786
    :cond_187
    :goto_187
    const-string v0, "android.permission-group.MICROPHONE"

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19f

    .line 787
    nop

    .line 788
    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_198

    const/4 v9, 0x0

    goto :goto_19c

    :cond_198
    invoke-direct {v1, v11}, Landroid/permission/PermissionUsageHelper;->formatLabelList(Ljava/util/List;)Ljava/lang/CharSequence;

    move-result-object v9

    .line 787
    :goto_19c
    invoke-virtual {v3, v10, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 729
    :cond_19f
    :goto_19f
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_cc

    .line 792
    :cond_1a3
    iget-object v4, v1, Landroid/permission/PermissionUsageHelper;->mAttributionChains:Landroid/util/ArrayMap;

    monitor-enter v4

    .line 793
    const/4 v9, 0x0

    :goto_1a7
    :try_start_1a7
    iget-object v0, v1, Landroid/permission/PermissionUsageHelper;->mAttributionChains:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-ge v9, v0, :cond_281

    .line 794
    iget-object v0, v1, Landroid/permission/PermissionUsageHelper;->mAttributionChains:Landroid/util/ArrayMap;

    invoke-virtual {v0, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 795
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    .line 798
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_27c

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/permission/PermissionUsageHelper$AccessChainLink;

    invoke-virtual {v8}, Landroid/permission/PermissionUsageHelper$AccessChainLink;->isEnd()Z

    move-result v8

    if-eqz v8, :cond_27c

    .line 799
    const/4 v8, 0x0

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/permission/PermissionUsageHelper$AccessChainLink;

    invoke-virtual {v10}, Landroid/permission/PermissionUsageHelper$AccessChainLink;->isStart()Z

    move-result v8

    if-eqz v8, :cond_27a

    .line 800
    const/4 v8, 0x0

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/permission/PermissionUsageHelper$AccessChainLink;

    iget-object v8, v10, Landroid/permission/PermissionUsageHelper$AccessChainLink;->usage:Landroid/permission/PermissionUsageHelper$OpUsage;

    iget-object v8, v8, Landroid/permission/PermissionUsageHelper$OpUsage;->op:Ljava/lang/String;

    invoke-static {v8}, Landroid/permission/PermissionUsageHelper;->getGroupForOp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_278

    const-string v8, "android.permission-group.MICROPHONE"

    .line 801
    invoke-virtual {v8, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1fc

    .line 802
    const/4 v8, 0x0

    goto/16 :goto_27d

    .line 806
    :cond_1fc
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_200
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_21a

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/permission/PermissionUsageHelper$AccessChainLink;

    .line 807
    iget-object v10, v10, Landroid/permission/PermissionUsageHelper$AccessChainLink;->usage:Landroid/permission/PermissionUsageHelper$OpUsage;

    invoke-virtual {v10}, Landroid/permission/PermissionUsageHelper$OpUsage;->getPackageIdHash()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v6, v10}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 808
    goto :goto_200

    .line 810
    :cond_21a
    const/4 v8, 0x0

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/permission/PermissionUsageHelper$AccessChainLink;

    .line 811
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/permission/PermissionUsageHelper$AccessChainLink;

    .line 812
    :goto_227
    if-lez v7, :cond_23c

    iget-object v11, v8, Landroid/permission/PermissionUsageHelper$AccessChainLink;->usage:Landroid/permission/PermissionUsageHelper$OpUsage;

    iget-object v11, v11, Landroid/permission/PermissionUsageHelper$OpUsage;->packageName:Ljava/lang/String;

    invoke-direct {v1, v11}, Landroid/permission/PermissionUsageHelper;->shouldShowPackage(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_23c

    .line 813
    add-int/lit8 v7, v7, -0x1

    .line 814
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/permission/PermissionUsageHelper$AccessChainLink;

    goto :goto_227

    .line 816
    :cond_23c
    nop

    .line 817
    iget-object v0, v8, Landroid/permission/PermissionUsageHelper$AccessChainLink;->usage:Landroid/permission/PermissionUsageHelper$OpUsage;

    iget-object v0, v0, Landroid/permission/PermissionUsageHelper$OpUsage;->packageName:Ljava/lang/String;

    iget-object v7, v10, Landroid/permission/PermissionUsageHelper$AccessChainLink;->usage:Landroid/permission/PermissionUsageHelper$OpUsage;

    iget-object v7, v7, Landroid/permission/PermissionUsageHelper$OpUsage;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_249
    .catchall {:try_start_1a7 .. :try_end_249} :catchall_2b6

    if-nez v0, :cond_270

    .line 819
    :try_start_24b
    iget-object v0, v8, Landroid/permission/PermissionUsageHelper$AccessChainLink;->usage:Landroid/permission/PermissionUsageHelper$OpUsage;

    .line 820
    invoke-virtual {v0}, Landroid/permission/PermissionUsageHelper$OpUsage;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/permission/PermissionUsageHelper;->getUserContext(Landroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 821
    iget-object v7, v8, Landroid/permission/PermissionUsageHelper$AccessChainLink;->usage:Landroid/permission/PermissionUsageHelper$OpUsage;

    iget-object v7, v7, Landroid/permission/PermissionUsageHelper$OpUsage;->packageName:Ljava/lang/String;
    :try_end_25d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_24b .. :try_end_25d} :catch_26d
    .catchall {:try_start_24b .. :try_end_25d} :catchall_2b6

    const/4 v8, 0x0

    :try_start_25e
    invoke-virtual {v0, v7, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    .line 823
    invoke-virtual {v7, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_26a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_25e .. :try_end_26a} :catch_26b
    .catchall {:try_start_25e .. :try_end_26a} :catchall_2b6

    .line 826
    goto :goto_272

    .line 824
    :catch_26b
    move-exception v0

    goto :goto_271

    :catch_26d
    move-exception v0

    const/4 v8, 0x0

    goto :goto_271

    .line 817
    :cond_270
    const/4 v8, 0x0

    .line 828
    :goto_271
    const/4 v0, 0x0

    :goto_272
    :try_start_272
    iget-object v7, v10, Landroid/permission/PermissionUsageHelper$AccessChainLink;->usage:Landroid/permission/PermissionUsageHelper$OpUsage;

    invoke-virtual {v3, v7, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_27d

    .line 800
    :cond_278
    const/4 v8, 0x0

    goto :goto_27d

    .line 799
    :cond_27a
    const/4 v8, 0x0

    goto :goto_27d

    .line 798
    :cond_27c
    const/4 v8, 0x0

    .line 793
    :goto_27d
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1a7

    .line 830
    :cond_281
    monitor-exit v4
    :try_end_282
    .catchall {:try_start_272 .. :try_end_282} :catchall_2b6

    .line 832
    invoke-virtual {v5}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_28a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2b5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 833
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2b3

    .line 834
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/permission/PermissionUsageHelper$OpUsage;

    const/4 v2, 0x0

    invoke-virtual {v3, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2b4

    .line 833
    :cond_2b3
    const/4 v2, 0x0

    .line 836
    :goto_2b4
    goto :goto_28a

    .line 838
    :cond_2b5
    return-object v3

    .line 830
    :catchall_2b6
    move-exception v0

    :try_start_2b7
    monitor-exit v4
    :try_end_2b8
    .catchall {:try_start_2b7 .. :try_end_2b8} :catchall_2b6

    throw v0

    .line 682
    :cond_2b9
    :goto_2b9
    return-object v3
.end method

.method private blacklist getUserContext(Landroid/os/UserHandle;)Landroid/content/Context;
    .registers 5

    .line 195
    iget-object v0, p0, Landroid/permission/PermissionUsageHelper;->mUserContexts:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 196
    iget-object v0, p0, Landroid/permission/PermissionUsageHelper;->mUserContexts:Landroid/util/ArrayMap;

    iget-object v1, p0, Landroid/permission/PermissionUsageHelper;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    :cond_14
    iget-object v0, p0, Landroid/permission/PermissionUsageHelper;->mUserContexts:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    return-object p1
.end method

.method private blacklist isBackgroundApp(I)Z
    .registers 6

    .line 531
    iget-object v0, p0, Landroid/permission/PermissionUsageHelper;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/ActivityManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 532
    nop

    .line 533
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    .line 534
    const/4 v1, 0x0

    if-nez v0, :cond_13

    .line 535
    return v1

    .line 537
    :cond_13
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_30

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 538
    iget v3, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    if-ne v3, p1, :cond_2f

    .line 539
    iget p1, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v0, 0x7d

    if-le p1, v0, :cond_2e

    const/4 v1, 0x1

    :cond_2e
    return v1

    .line 542
    :cond_2f
    goto :goto_17

    .line 543
    :cond_30
    return v1
.end method

.method private blacklist isLocationProvider(Ljava/lang/String;)Z
    .registers 4

    .line 481
    iget-object v0, p0, Landroid/permission/PermissionUsageHelper;->mContext:Landroid/content/Context;

    const-class v1, Landroid/location/LocationManager;

    .line 482
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 481
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 482
    invoke-virtual {v0, p1}, Landroid/location/LocationManager;->isProviderPackage(Ljava/lang/String;)Z

    move-result p1

    .line 481
    return p1
.end method

.method private blacklist isSubattributionSupported(Ljava/lang/String;I)Z
    .registers 7

    .line 459
    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0, p1}, Landroid/permission/PermissionUsageHelper;->isLocationProvider(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 460
    return v0

    .line 462
    :cond_8
    nop

    .line 463
    invoke-static {p2}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/permission/PermissionUsageHelper;->getUserContext(Landroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 464
    nop

    .line 465
    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Landroid/content/pm/PackageManager$ApplicationInfoFlags;->of(J)Landroid/content/pm/PackageManager$ApplicationInfoFlags;

    move-result-object v2

    .line 466
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p2

    .line 464
    invoke-virtual {v1, p1, v2, p2}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;Landroid/content/pm/PackageManager$ApplicationInfoFlags;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    .line 467
    if-eqz p1, :cond_2b

    .line 468
    invoke-virtual {p1}, Landroid/content/pm/ApplicationInfo;->areAttributionsUserVisible()Z

    move-result p1
    :try_end_2a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_2a} :catch_2c

    return p1

    .line 470
    :cond_2b
    return v0

    .line 471
    :catch_2c
    move-exception p1

    .line 472
    return v0
.end method

.method private blacklist isSystemApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;I)Z
    .registers 9

    .line 492
    iget-object v0, p0, Landroid/permission/PermissionUsageHelper;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/UserManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 493
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_31

    .line 495
    nop

    .line 496
    invoke-virtual {v0}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v0

    .line 497
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserHandle;

    .line 498
    invoke-virtual {v3, p3}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 499
    nop

    .line 500
    move v0, v2

    goto :goto_2e

    .line 502
    :cond_2c
    goto :goto_17

    .line 497
    :cond_2d
    move v0, v1

    .line 503
    :goto_2e
    if-nez v0, :cond_31

    .line 504
    return v2

    .line 508
    :cond_31
    invoke-static {p1}, Landroid/app/AppOpsManager;->opToPermission(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 509
    iget-object v0, p0, Landroid/permission/PermissionUsageHelper;->mPkgManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/content/pm/PackageManager;->getPermissionFlags(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)I

    move-result p3

    .line 510
    iget-object v0, p0, Landroid/permission/PermissionUsageHelper;->mContext:Landroid/content/Context;

    const/4 v3, -0x1

    invoke-static {v0, p1, v3, p4, p2}, Landroid/content/PermissionChecker;->checkPermissionForPreflight(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;)I

    move-result p1

    if-nez p1, :cond_4a

    .line 516
    and-int/lit16 p1, p3, 0x100

    if-nez p1, :cond_49

    move v1, v2

    :cond_49
    return v1

    .line 519
    :cond_4a
    and-int/lit16 p1, p3, 0x200

    if-nez p1, :cond_4f

    move v1, v2

    :cond_4f
    return v1
.end method

.method static synthetic blacklist lambda$addLinkToChainIfNotPresentLocked$0(Ljava/lang/Integer;)Ljava/util/ArrayList;
    .registers 1

    .line 271
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method private blacklist shouldShowCameraIndicator()Z
    .registers 5

    .line 112
    iget-object v0, p0, Landroid/permission/PermissionUsageHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, -0x2

    const-string v2, "enable_camera_privacy_indicator"

    const/4 v3, 0x1

    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v3, :cond_11

    goto :goto_12

    :cond_11
    const/4 v3, 0x0

    :goto_12
    return v3
.end method

.method private blacklist shouldShowIndicators()Z
    .registers 2

    .line 108
    invoke-direct {p0}, Landroid/permission/PermissionUsageHelper;->shouldShowCameraIndicator()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-direct {p0}, Landroid/permission/PermissionUsageHelper;->shouldShowLocationIndicator()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method private blacklist shouldShowLocationIndicator()Z
    .registers 5

    .line 118
    iget-object v0, p0, Landroid/permission/PermissionUsageHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, -0x2

    const-string v2, "enable_location_privacy_indicator"

    const/4 v3, 0x1

    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v3, :cond_11

    goto :goto_12

    :cond_11
    const/4 v3, 0x0

    :goto_12
    return v3
.end method

.method private blacklist shouldShowPackage(Ljava/lang/String;)Z
    .registers 3

    .line 842
    iget-object v0, p0, Landroid/permission/PermissionUsageHelper;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Landroid/permission/PermissionManager;->shouldShowPackageForIndicatorCached(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method private blacklist updateSubattributionLabelsMap(Ljava/util/List;Landroid/util/ArrayMap;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/permission/PermissionUsageHelper$OpUsage;",
            ">;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 407
    if-eqz p1, :cond_34

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_34

    .line 410
    :cond_9
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/permission/PermissionUsageHelper$OpUsage;

    .line 411
    iget-object v1, v0, Landroid/permission/PermissionUsageHelper$OpUsage;->attributionTag:Ljava/lang/String;

    if-eqz v1, :cond_32

    iget-object v1, v0, Landroid/permission/PermissionUsageHelper$OpUsage;->packageName:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_32

    .line 413
    iget-object v1, v0, Landroid/permission/PermissionUsageHelper$OpUsage;->packageName:Ljava/lang/String;

    iget-object v2, v0, Landroid/permission/PermissionUsageHelper$OpUsage;->packageName:Ljava/lang/String;

    iget v0, v0, Landroid/permission/PermissionUsageHelper$OpUsage;->uid:I

    .line 414
    invoke-direct {p0, v2, v0}, Landroid/permission/PermissionUsageHelper;->getSubattributionLabelsForPackage(Ljava/lang/String;I)Landroid/util/ArrayMap;

    move-result-object v0

    .line 413
    invoke-virtual {p2, v1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 416
    :cond_32
    goto :goto_d

    .line 417
    :cond_33
    return-void

    .line 408
    :cond_34
    :goto_34
    return-void
.end method


# virtual methods
.method public blacklist getOpUsageDataForAllDevices(Z)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Landroid/permission/PermissionGroupUsage;",
            ">;"
        }
    .end annotation

    .line 384
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 386
    iget-object v1, p0, Landroid/permission/PermissionUsageHelper;->mVirtualDeviceManager:Landroid/companion/virtual/VirtualDeviceManager;

    if-eqz v1, :cond_49

    .line 387
    iget-object v1, p0, Landroid/permission/PermissionUsageHelper;->mVirtualDeviceManager:Landroid/companion/virtual/VirtualDeviceManager;

    invoke-virtual {v1}, Landroid/companion/virtual/VirtualDeviceManager;->getVirtualDevices()Ljava/util/List;

    move-result-object v1

    .line 388
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 390
    const/4 v3, 0x0

    move v4, v3

    :goto_16
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_2c

    .line 391
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/companion/virtual/VirtualDevice;

    invoke-virtual {v5}, Landroid/companion/virtual/VirtualDevice;->getPersistentDeviceId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 390
    add-int/lit8 v4, v4, 0x1

    goto :goto_16

    .line 393
    :cond_2c
    const-string v1, "default:0"

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 395
    nop

    :goto_32
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-ge v3, v1, :cond_49

    .line 396
    nop

    .line 398
    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 397
    invoke-virtual {p0, p1, v1}, Landroid/permission/PermissionUsageHelper;->getOpUsageDataForIndicatorsByDevice(ZLjava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 396
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 395
    add-int/lit8 v3, v3, 0x1

    goto :goto_32

    .line 401
    :cond_49
    return-object v0
.end method

.method public blacklist getOpUsageDataForIndicatorsByDevice(ZLjava/lang/String;)Ljava/util/List;
    .registers 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/permission/PermissionGroupUsage;",
            ">;"
        }
    .end annotation

    .line 300
    move-object/from16 v0, p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 302
    invoke-direct {v0}, Landroid/permission/PermissionUsageHelper;->shouldShowIndicators()Z

    move-result v2

    if-nez v2, :cond_e

    .line 303
    return-object v1

    .line 306
    :cond_e
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 307
    invoke-direct {v0}, Landroid/permission/PermissionUsageHelper;->shouldShowCameraIndicator()Z

    move-result v3

    if-eqz v3, :cond_25

    .line 308
    sget-object v3, Landroid/permission/PermissionUsageHelper;->CAMERA_OPS:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 309
    if-eqz p1, :cond_25

    .line 310
    sget-object v3, Landroid/permission/PermissionUsageHelper;->MIC_OPS:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 314
    :cond_25
    invoke-direct {v0}, Landroid/permission/PermissionUsageHelper;->shouldShowLocationIndicator()Z

    move-result v3

    if-eqz v3, :cond_30

    .line 315
    sget-object v3, Landroid/permission/PermissionUsageHelper;->LOCATION_OPS:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 318
    :cond_30
    move-object/from16 v15, p2

    invoke-direct {v0, v2, v15}, Landroid/permission/PermissionUsageHelper;->getOpUsagesByDevice(Ljava/util/List;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    .line 320
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 324
    iget-object v4, v0, Landroid/permission/PermissionUsageHelper;->mContext:Landroid/content/Context;

    const-class v5, Landroid/media/AudioManager;

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/AudioManager;

    .line 325
    const-string v5, "android:phone_call_camera"

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    const-string v7, "android:phone_call_microphone"

    const/16 v16, 0x0

    const/4 v8, 0x1

    if-nez v6, :cond_60

    .line 326
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5d

    goto :goto_60

    :cond_5d
    move/from16 v6, v16

    goto :goto_61

    :cond_60
    :goto_60
    move v6, v8

    .line 327
    :goto_61
    const-string v9, "android.permission-group.MICROPHONE"

    if-eqz v6, :cond_a2

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a2

    invoke-virtual {v4}, Landroid/media/AudioManager;->getMode()I

    move-result v4

    const/4 v6, 0x3

    if-ne v4, v6, :cond_a2

    .line 329
    iget-object v4, v0, Landroid/permission/PermissionUsageHelper;->mContext:Landroid/content/Context;

    const-class v6, Landroid/telephony/TelephonyManager;

    .line 330
    invoke-virtual {v4, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 331
    invoke-interface {v2, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 332
    move/from16 v10, v16

    :goto_84
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v11

    if-ge v10, v11, :cond_a2

    .line 333
    nop

    .line 334
    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/permission/PermissionUsageHelper$OpUsage;

    iget-object v11, v11, Landroid/permission/PermissionUsageHelper$OpUsage;->packageName:Ljava/lang/String;

    .line 333
    invoke-virtual {v4, v11}, Landroid/telephony/TelephonyManager;->checkCarrierPrivilegesForPackage(Ljava/lang/String;)I

    move-result v11

    if-ne v11, v8, :cond_9f

    .line 336
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 337
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 332
    :cond_9f
    add-int/lit8 v10, v10, 0x1

    goto :goto_84

    .line 343
    :cond_a2
    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    .line 345
    move/from16 v6, v16

    :goto_a9
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v6, v10, :cond_168

    .line 346
    nop

    .line 347
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 349
    nop

    .line 350
    invoke-interface {v2, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    invoke-direct {v0, v10, v11}, Landroid/permission/PermissionUsageHelper;->getUniqueUsagesWithLabels(Ljava/lang/String;Ljava/util/List;)Landroid/util/ArrayMap;

    move-result-object v11

    .line 352
    invoke-interface {v2, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/List;

    invoke-direct {v0, v12, v4}, Landroid/permission/PermissionUsageHelper;->updateSubattributionLabelsMap(Ljava/util/List;Landroid/util/ArrayMap;)V

    .line 354
    invoke-virtual {v10, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_d4

    .line 355
    nop

    .line 356
    move v12, v8

    move-object v10, v9

    goto :goto_e1

    .line 357
    :cond_d4
    invoke-virtual {v10, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_df

    .line 358
    nop

    .line 359
    const-string v10, "android.permission-group.CAMERA"

    move v12, v8

    goto :goto_e1

    .line 357
    :cond_df
    move/from16 v12, v16

    .line 362
    :goto_e1
    move/from16 v13, v16

    :goto_e3
    invoke-virtual {v11}, Landroid/util/ArrayMap;->size()I

    move-result v14

    if-ge v13, v14, :cond_151

    .line 363
    invoke-virtual {v11, v13}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/permission/PermissionUsageHelper$OpUsage;

    .line 364
    iget-object v8, v14, Landroid/permission/PermissionUsageHelper$OpUsage;->packageName:Ljava/lang/String;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    invoke-virtual {v4, v8, v0}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iget-object v8, v14, Landroid/permission/PermissionUsageHelper$OpUsage;->attributionTag:Ljava/lang/String;

    .line 365
    move-object/from16 v17, v2

    const/4 v2, 0x0

    invoke-interface {v0, v8, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 366
    move-object v2, v4

    new-instance v4, Landroid/permission/PermissionGroupUsage;

    move-object v8, v5

    iget-object v5, v14, Landroid/permission/PermissionUsageHelper$OpUsage;->packageName:Ljava/lang/String;

    move/from16 v18, v6

    iget v6, v14, Landroid/permission/PermissionUsageHelper$OpUsage;->uid:I

    move-object/from16 v19, v7

    move-object/from16 v20, v8

    iget-wide v7, v14, Landroid/permission/PermissionUsageHelper$OpUsage;->lastAccessTime:J

    move-object/from16 v21, v9

    move-object v9, v10

    iget-boolean v10, v14, Landroid/permission/PermissionUsageHelper$OpUsage;->isRunning:Z

    iget-object v14, v14, Landroid/permission/PermissionUsageHelper$OpUsage;->attributionTag:Ljava/lang/String;

    .line 370
    invoke-virtual {v11, v13}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/CharSequence;

    move/from16 v23, v13

    move-object v13, v0

    move-object v0, v11

    move v11, v12

    move-object v12, v14

    move-object/from16 v14, v22

    move-object/from16 v22, v20

    move-object/from16 v20, v19

    move/from16 v19, v23

    const/16 v23, 0x1

    invoke-direct/range {v4 .. v15}, Landroid/permission/PermissionGroupUsage;-><init>(Ljava/lang/String;IJLjava/lang/String;ZZLjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;)V

    .line 366
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 362
    add-int/lit8 v13, v19, 0x1

    move-object/from16 v15, p2

    move-object v4, v2

    move-object v10, v9

    move v12, v11

    move-object/from16 v2, v17

    move/from16 v6, v18

    move-object/from16 v7, v20

    move-object/from16 v9, v21

    move-object/from16 v5, v22

    move/from16 v8, v23

    move-object v11, v0

    move-object/from16 v0, p0

    goto :goto_e3

    .line 345
    :cond_151
    move-object/from16 v17, v2

    move-object v2, v4

    move-object/from16 v22, v5

    move/from16 v18, v6

    move-object/from16 v20, v7

    move/from16 v23, v8

    move-object/from16 v21, v9

    add-int/lit8 v6, v18, 0x1

    move-object/from16 v0, p0

    move-object/from16 v15, p2

    move-object/from16 v2, v17

    goto/16 :goto_a9

    .line 374
    :cond_168
    return-object v1
.end method

.method public blacklist onOpActiveChanged(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZII)V
    .registers 15

    .line 216
    if-eqz p5, :cond_3

    .line 218
    return-void

    .line 224
    :cond_3
    iget-object p5, p0, Landroid/permission/PermissionUsageHelper;->mAttributionChains:Landroid/util/ArrayMap;

    monitor-enter p5

    .line 225
    :try_start_6
    iget-object p6, p0, Landroid/permission/PermissionUsageHelper;->mAttributionChains:Landroid/util/ArrayMap;

    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p7

    invoke-virtual {p6, p7}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    iget-object p6, p0, Landroid/permission/PermissionUsageHelper;->mAttributionChains:Landroid/util/ArrayMap;

    invoke-virtual {p6}, Landroid/util/ArrayMap;->size()I

    move-result p6

    .line 227
    new-instance p7, Ljava/util/ArrayList;

    invoke-direct {p7}, Ljava/util/ArrayList;-><init>()V

    .line 228
    const/4 v0, 0x0

    move v1, v0

    :goto_1c
    if-ge v1, p6, :cond_53

    .line 229
    iget-object v2, p0, Landroid/permission/PermissionUsageHelper;->mAttributionChains:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 230
    iget-object v3, p0, Landroid/permission/PermissionUsageHelper;->mAttributionChains:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 231
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 232
    move v5, v0

    :goto_37
    if-ge v5, v4, :cond_50

    .line 233
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/permission/PermissionUsageHelper$AccessChainLink;

    .line 234
    invoke-virtual {v6, p1, p3, p4, p2}, Landroid/permission/PermissionUsageHelper$AccessChainLink;->packageAndOpEquals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_4d

    .line 235
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 236
    goto :goto_50

    .line 232
    :cond_4d
    add-int/lit8 v5, v5, 0x1

    goto :goto_37

    .line 228
    :cond_50
    :goto_50
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    .line 240
    :cond_53
    iget-object p1, p0, Landroid/permission/PermissionUsageHelper;->mAttributionChains:Landroid/util/ArrayMap;

    invoke-virtual {p1, p7}, Landroid/util/ArrayMap;->removeAll(Ljava/util/Collection;)Z

    .line 241
    monitor-exit p5

    .line 242
    return-void

    .line 241
    :catchall_5a
    move-exception p1

    monitor-exit p5
    :try_end_5c
    .catchall {:try_start_6 .. :try_end_5c} :catchall_5a

    throw p1
.end method

.method public whitelist onOpActiveChanged(Ljava/lang/String;ILjava/lang/String;Z)V
    .registers 5

    .line 210
    return-void
.end method

.method public blacklist onOpStarted(IILjava/lang/String;Ljava/lang/String;II)V
    .registers 7

    .line 248
    return-void
.end method

.method public blacklist onOpStarted(IILjava/lang/String;Ljava/lang/String;IIIII)V
    .registers 17

    .line 255
    if-eqz p7, :cond_23

    const/4 p5, -0x1

    move/from16 v6, p9

    if-eq v6, p5, :cond_23

    if-eqz p8, :cond_23

    and-int/lit8 p5, p8, 0x8

    if-nez p5, :cond_e

    goto :goto_23

    .line 261
    :cond_e
    iget-object p5, p0, Landroid/permission/PermissionUsageHelper;->mAttributionChains:Landroid/util/ArrayMap;

    monitor-enter p5

    .line 262
    :try_start_11
    invoke-static {p1}, Landroid/app/AppOpsManager;->opToPublicName(I)Ljava/lang/String;

    move-result-object v1

    move-object v0, p0

    move v3, p2

    move-object v2, p3

    move-object v4, p4

    move v5, p8

    invoke-direct/range {v0 .. v6}, Landroid/permission/PermissionUsageHelper;->addLinkToChainIfNotPresentLocked(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;II)V

    .line 264
    monitor-exit p5

    .line 265
    return-void

    .line 264
    :catchall_1f
    move-exception v0

    move-object p1, v0

    monitor-exit p5
    :try_end_22
    .catchall {:try_start_11 .. :try_end_22} :catchall_1f

    throw p1

    .line 259
    :cond_23
    :goto_23
    return-void
.end method

.method public blacklist tearDown()V
    .registers 2

    .line 202
    iget-object v0, p0, Landroid/permission/PermissionUsageHelper;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-virtual {v0, p0}, Landroid/app/AppOpsManager;->stopWatchingActive(Landroid/app/AppOpsManager$OnOpActiveChangedListener;)V

    .line 203
    iget-object v0, p0, Landroid/permission/PermissionUsageHelper;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-virtual {v0, p0}, Landroid/app/AppOpsManager;->stopWatchingStarted(Landroid/app/AppOpsManager$OnOpStartedListener;)V

    .line 204
    return-void
.end method
