.class public Landroid/net/NetworkPolicyManager;
.super Ljava/lang/Object;
.source "NetworkPolicyManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
    client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/NetworkPolicyManager$SubscriptionCallbackProxy;,
        Landroid/net/NetworkPolicyManager$SubscriptionCallback;,
        Landroid/net/NetworkPolicyManager$UidState;,
        Landroid/net/NetworkPolicyManager$NetworkPolicyCallbackProxy;,
        Landroid/net/NetworkPolicyManager$NetworkPolicyCallback;,
        Landroid/net/NetworkPolicyManager$AllowedTransportsCallbackProxy;,
        Landroid/net/NetworkPolicyManager$AllowedTransportsCallback;,
        Landroid/net/NetworkPolicyManager$Listener;,
        Landroid/net/NetworkPolicyManager$SubscriptionOverrideMask;
    }
.end annotation


# static fields
.field public static final blacklist ALLOWED_METERED_REASON_FOREGROUND:I = 0x40000

.field public static final blacklist ALLOWED_METERED_REASON_MASK:I = -0x10000

.field public static final blacklist ALLOWED_METERED_REASON_SYSTEM:I = 0x20000

.field public static final blacklist ALLOWED_METERED_REASON_USER_EXEMPTED:I = 0x10000

.field public static final blacklist ALLOWED_REASON_FOREGROUND:I = 0x2

.field public static final blacklist ALLOWED_REASON_LOW_POWER_STANDBY_ALLOWLIST:I = 0x40

.field public static final blacklist ALLOWED_REASON_NONE:I = 0x0

.field public static final blacklist ALLOWED_REASON_NOT_IN_BACKGROUND:I = 0x80

.field public static final blacklist ALLOWED_REASON_POWER_SAVE_ALLOWLIST:I = 0x4

.field public static final blacklist ALLOWED_REASON_POWER_SAVE_EXCEPT_IDLE_ALLOWLIST:I = 0x8

.field public static final blacklist ALLOWED_REASON_RESTRICTED_MODE_PERMISSIONS:I = 0x10

.field public static final blacklist ALLOWED_REASON_SYSTEM:I = 0x1

.field public static final blacklist ALLOWED_REASON_TOP:I = 0x20

.field private static final greylist-max-o ALLOW_PLATFORM_APP_POLICY:Z = true

.field public static final blacklist BACKGROUND_THRESHOLD_STATE:I = 0xc

.field public static final greylist-max-o EXTRA_NETWORK_TEMPLATE:Ljava/lang/String; = "android.net.NETWORK_TEMPLATE"

.field public static final blacklist FIREWALL_CHAIN_NAME_BACKGROUND:Ljava/lang/String; = "background"

.field public static final greylist-max-o FIREWALL_CHAIN_NAME_DOZABLE:Ljava/lang/String; = "dozable"

.field public static final blacklist FIREWALL_CHAIN_NAME_LOW_POWER_STANDBY:Ljava/lang/String; = "low_power_standby"

.field public static final blacklist FIREWALL_CHAIN_NAME_METERED_ALLOW:Ljava/lang/String; = "metered_allow"

.field public static final blacklist FIREWALL_CHAIN_NAME_METERED_DENY_ADMIN:Ljava/lang/String; = "metered_deny_admin"

.field public static final blacklist FIREWALL_CHAIN_NAME_METERED_DENY_USER:Ljava/lang/String; = "metered_deny_user"

.field public static final greylist-max-o FIREWALL_CHAIN_NAME_NONE:Ljava/lang/String; = "none"

.field public static final greylist-max-o FIREWALL_CHAIN_NAME_POWERSAVE:Ljava/lang/String; = "powersave"

.field public static final blacklist FIREWALL_CHAIN_NAME_RESTRICTED:Ljava/lang/String; = "restricted"

.field public static final greylist-max-o FIREWALL_CHAIN_NAME_STANDBY:Ljava/lang/String; = "standby"

.field public static final greylist-max-o FIREWALL_RULE_DEFAULT:I = 0x0

.field public static final greylist-max-o FOREGROUND_THRESHOLD_STATE:I = 0x5

.field public static final greylist-max-o MASK_ALL_NETWORKS:I = 0xf0

.field public static final greylist-max-o MASK_METERED_NETWORKS:I = 0xf

.field public static final blacklist MASK_RESTRICTED_MODE_NETWORKS:I = 0xf00

.field public static final greylist-max-o POLICY_ALLOW_METERED_BACKGROUND:I = 0x4

.field public static final blacklist POLICY_LOCKDOWN_VPN:I = 0x18000

.field public static final blacklist POLICY_LOCKDOWN_VPN_MASK:I = 0x38000

.field public static final greylist-max-o POLICY_NONE:I = 0x0

.field public static final blacklist POLICY_REJECT_ALL:I = 0x40000

.field public static final blacklist POLICY_REJECT_CELLULAR:I = 0x10000

.field public static final greylist-max-o POLICY_REJECT_METERED_BACKGROUND:I = 0x1

.field public static final blacklist POLICY_REJECT_VPN:I = 0x20000

.field public static final blacklist POLICY_REJECT_WIFI:I = 0x8000

.field public static final greylist-max-o RULE_ALLOW_ALL:I = 0x20

.field public static final greylist-max-o RULE_ALLOW_METERED:I = 0x1

.field public static final greylist-max-o RULE_NONE:I = 0x0

.field public static final greylist-max-o RULE_REJECT_ALL:I = 0x40

.field public static final greylist-max-o RULE_REJECT_METERED:I = 0x4

.field public static final blacklist RULE_REJECT_RESTRICTED_MODE:I = 0x400

.field public static final greylist-max-o RULE_TEMPORARY_ALLOW_METERED:I = 0x2

.field public static final blacklist SUBSCRIPTION_OVERRIDE_CONGESTED:I = 0x2

.field public static final blacklist SUBSCRIPTION_OVERRIDE_UNMETERED:I = 0x1

.field public static final blacklist TOP_THRESHOLD_STATE:I = 0x3


# instance fields
.field private final blacklist mAllowedTransportsCallbackMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/net/NetworkPolicyManager$AllowedTransportsCallback;",
            "Landroid/net/NetworkPolicyManager$AllowedTransportsCallbackProxy;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mContext:Landroid/content/Context;

.field private final blacklist mNetworkPolicyCallbackMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/net/NetworkPolicyManager$NetworkPolicyCallback;",
            "Landroid/net/NetworkPolicyManager$NetworkPolicyCallbackProxy;",
            ">;"
        }
    .end annotation
.end field

.field private greylist mService:Landroid/net/INetworkPolicyManager;

.field private final blacklist mSubscriptionCallbackMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/net/NetworkPolicyManager$SubscriptionCallback;",
            "Landroid/net/NetworkPolicyManager$SubscriptionCallbackProxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$smdispatchOnUidBlockedReasonChanged(Ljava/util/concurrent/Executor;Landroid/net/NetworkPolicyManager$NetworkPolicyCallback;II)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Landroid/net/NetworkPolicyManager;->dispatchOnUidBlockedReasonChanged(Ljava/util/concurrent/Executor;Landroid/net/NetworkPolicyManager$NetworkPolicyCallback;II)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smdispatchOnUidsAllowedTransportsChanged(Ljava/util/concurrent/Executor;Landroid/net/NetworkPolicyManager$AllowedTransportsCallback;[I[J)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Landroid/net/NetworkPolicyManager;->dispatchOnUidsAllowedTransportsChanged(Ljava/util/concurrent/Executor;Landroid/net/NetworkPolicyManager$AllowedTransportsCallback;[I[J)V

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;Landroid/net/INetworkPolicyManager;)V
    .registers 4

    .line 351
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 343
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Landroid/net/NetworkPolicyManager;->mSubscriptionCallbackMap:Ljava/util/Map;

    .line 345
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Landroid/net/NetworkPolicyManager;->mNetworkPolicyCallbackMap:Ljava/util/Map;

    .line 347
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Landroid/net/NetworkPolicyManager;->mAllowedTransportsCallbackMap:Ljava/util/Map;

    .line 352
    if-eqz p2, :cond_1f

    .line 355
    iput-object p1, p0, Landroid/net/NetworkPolicyManager;->mContext:Landroid/content/Context;

    .line 356
    iput-object p2, p0, Landroid/net/NetworkPolicyManager;->mService:Landroid/net/INetworkPolicyManager;

    .line 357
    return-void

    .line 353
    :cond_1f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "missing INetworkPolicyManager"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static blacklist allowedReasonsToString(I)Ljava/lang/String;
    .registers 4

    .line 981
    const-string v0, "ALLOWED_"

    int-to-long v1, p0

    const-class p0, Landroid/net/NetworkPolicyManager;

    invoke-static {p0, v0, v1, v2}, Landroid/util/DebugUtils;->flagsToString(Ljava/lang/Class;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist blockedReasonsToString(I)Ljava/lang/String;
    .registers 5

    .line 975
    const-class v0, Landroid/net/ConnectivityManager;

    const-string v1, "BLOCKED_"

    int-to-long v2, p0

    invoke-static {v0, v1, v2, v3}, Landroid/util/DebugUtils;->flagsToString(Ljava/lang/Class;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static greylist-max-o cycleIterator(Landroid/net/NetworkPolicy;)Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/NetworkPolicy;",
            ")",
            "Ljava/util/Iterator<",
            "Landroid/util/Pair<",
            "Ljava/time/ZonedDateTime;",
            "Ljava/time/ZonedDateTime;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 745
    invoke-virtual {p0}, Landroid/net/NetworkPolicy;->cycleIterator()Ljava/util/Iterator;

    move-result-object p0

    .line 746
    new-instance v0, Landroid/net/NetworkPolicyManager$1;

    invoke-direct {v0, p0}, Landroid/net/NetworkPolicyManager$1;-><init>(Ljava/util/Iterator;)V

    return-object v0
.end method

.method private static blacklist dispatchOnUidBlockedReasonChanged(Ljava/util/concurrent/Executor;Landroid/net/NetworkPolicyManager$NetworkPolicyCallback;II)V
    .registers 5

    .line 1104
    if-nez p0, :cond_6

    .line 1105
    invoke-interface {p1, p2, p3}, Landroid/net/NetworkPolicyManager$NetworkPolicyCallback;->onUidBlockedReasonChanged(II)V

    goto :goto_1e

    .line 1107
    :cond_6
    new-instance v0, Landroid/net/NetworkPolicyManager$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Landroid/net/NetworkPolicyManager$$ExternalSyntheticLambda1;-><init>()V

    .line 1109
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    .line 1107
    invoke-static {v0, p1, p2, p3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainRunnable(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object p1

    .line 1109
    invoke-interface {p1}, Lcom/android/internal/util/function/pooled/PooledRunnable;->recycleOnUse()Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object p1

    .line 1107
    invoke-interface {p0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1111
    :goto_1e
    return-void
.end method

.method private static blacklist dispatchOnUidsAllowedTransportsChanged(Ljava/util/concurrent/Executor;Landroid/net/NetworkPolicyManager$AllowedTransportsCallback;[I[J)V
    .registers 5

    .line 1215
    if-nez p0, :cond_6

    .line 1216
    invoke-interface {p1, p2, p3}, Landroid/net/NetworkPolicyManager$AllowedTransportsCallback;->onUidsAllowedTransportsChanged([I[J)V

    goto :goto_16

    .line 1218
    :cond_6
    new-instance v0, Landroid/net/NetworkPolicyManager$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/net/NetworkPolicyManager$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0, p1, p2, p3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainRunnable(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object p1

    .line 1220
    invoke-interface {p1}, Lcom/android/internal/util/function/pooled/PooledRunnable;->recycleOnUse()Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object p1

    .line 1218
    invoke-interface {p0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1222
    :goto_16
    return-void
.end method

.method public static greylist from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;
    .registers 2

    .line 362
    const-string v0, "netpolicy"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/NetworkPolicyManager;

    return-object p0
.end method

.method public static blacklist getDefaultProcessNetworkCapabilities(I)I
    .registers 1

    .line 840
    packed-switch p0, :pswitch_data_8

    .line 850
    const/4 p0, 0x0

    return p0

    .line 847
    :pswitch_5
    const/16 p0, 0x28

    return p0

    :pswitch_data_8
    .packed-switch 0x0
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method public static blacklist isProcStateAllowedNetworkWhileBackground(Landroid/net/NetworkPolicyManager$UidState;)Z
    .registers 4

    .line 892
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 893
    return v0

    .line 895
    :cond_4
    iget v1, p0, Landroid/net/NetworkPolicyManager$UidState;->procState:I

    const/16 v2, 0xc

    if-lt v1, v2, :cond_10

    iget p0, p0, Landroid/net/NetworkPolicyManager$UidState;->capability:I

    and-int/lit8 p0, p0, 0x8

    if-eqz p0, :cond_11

    :cond_10
    const/4 v0, 0x1

    :cond_11
    return v0
.end method

.method public static blacklist isProcStateAllowedWhileIdleOrPowerSaveMode(II)Z
    .registers 4

    .line 869
    const/4 v0, -0x1

    const/4 v1, 0x0

    if-ne p0, v0, :cond_5

    .line 870
    return v1

    .line 872
    :cond_5
    const/4 v0, 0x5

    if-le p0, v0, :cond_c

    and-int/lit8 p0, p1, 0x8

    if-eqz p0, :cond_d

    :cond_c
    const/4 v1, 0x1

    :cond_d
    return v1
.end method

.method public static blacklist isProcStateAllowedWhileIdleOrPowerSaveMode(Landroid/net/NetworkPolicyManager$UidState;)Z
    .registers 2

    .line 860
    if-nez p0, :cond_4

    .line 861
    const/4 p0, 0x0

    return p0

    .line 863
    :cond_4
    iget v0, p0, Landroid/net/NetworkPolicyManager$UidState;->procState:I

    iget p0, p0, Landroid/net/NetworkPolicyManager$UidState;->capability:I

    invoke-static {v0, p0}, Landroid/net/NetworkPolicyManager;->isProcStateAllowedWhileIdleOrPowerSaveMode(II)Z

    move-result p0

    return p0
.end method

.method public static blacklist isProcStateAllowedWhileInLowPowerStandby(Landroid/net/NetworkPolicyManager$UidState;)Z
    .registers 3

    .line 878
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 879
    return v0

    .line 881
    :cond_4
    iget p0, p0, Landroid/net/NetworkPolicyManager$UidState;->procState:I

    const/4 v1, 0x3

    if-gt p0, v1, :cond_a

    const/4 v0, 0x1

    :cond_a
    return v0
.end method

.method public static blacklist isProcStateAllowedWhileOnRestrictBackground(II)Z
    .registers 4

    .line 914
    const/4 v0, -0x1

    const/4 v1, 0x0

    if-ne p0, v0, :cond_5

    .line 915
    return v1

    .line 917
    :cond_5
    const/4 v0, 0x5

    if-le p0, v0, :cond_f

    const/4 v0, 0x6

    if-gt p0, v0, :cond_10

    and-int/lit8 p0, p1, 0x20

    if-eqz p0, :cond_10

    :cond_f
    const/4 v1, 0x1

    :cond_10
    return v1
.end method

.method public static blacklist isProcStateAllowedWhileOnRestrictBackground(Landroid/net/NetworkPolicyManager$UidState;)Z
    .registers 2

    .line 905
    if-nez p0, :cond_4

    .line 906
    const/4 p0, 0x0

    return p0

    .line 908
    :cond_4
    iget v0, p0, Landroid/net/NetworkPolicyManager$UidState;->procState:I

    iget p0, p0, Landroid/net/NetworkPolicyManager$UidState;->capability:I

    invoke-static {v0, p0}, Landroid/net/NetworkPolicyManager;->isProcStateAllowedWhileOnRestrictBackground(II)Z

    move-result p0

    return p0
.end method

.method public static greylist-max-o isUidValidForPolicy(Landroid/content/Context;I)Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 772
    invoke-static {p1}, Landroid/os/Process;->isApplicationUid(I)Z

    move-result p0

    if-nez p0, :cond_8

    .line 773
    const/4 p0, 0x0

    return p0

    .line 800
    :cond_8
    const/4 p0, 0x1

    return p0
.end method

.method public static greylist-max-o resolveNetworkId(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;
    .registers 2

    .line 957
    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 958
    iget-object p0, p0, Landroid/net/wifi/WifiConfiguration;->providerFriendlyName:Ljava/lang/String;

    goto :goto_b

    :cond_9
    iget-object p0, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 957
    :goto_b
    invoke-static {p0}, Landroid/net/wifi/WifiInfo;->sanitizeSsid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static greylist-max-o resolveNetworkId(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .line 963
    invoke-static {p0}, Landroid/net/wifi/WifiInfo;->sanitizeSsid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static greylist-max-o uidPoliciesToString(I)Ljava/lang/String;
    .registers 5

    .line 821
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 822
    if-nez p0, :cond_17

    .line 823
    const-string p0, "NONE"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_23

    .line 825
    :cond_17
    const-string v1, "POLICY_"

    int-to-long v2, p0

    const-class p0, Landroid/net/NetworkPolicyManager;

    invoke-static {p0, v1, v2, v3}, Landroid/util/DebugUtils;->flagsToString(Ljava/lang/Class;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 828
    :goto_23
    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 829
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static greylist-max-o uidRulesToString(I)Ljava/lang/String;
    .registers 5

    .line 807
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 808
    if-nez p0, :cond_17

    .line 809
    const-string p0, "NONE"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_23

    .line 811
    :cond_17
    const-string v1, "RULE_"

    int-to-long v2, p0

    const-class p0, Landroid/net/NetworkPolicyManager;

    invoke-static {p0, v1, v2, v3}, Landroid/util/DebugUtils;->flagsToString(Ljava/lang/Class;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 813
    :goto_23
    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 814
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public greylist-max-o addUidPolicy(II)V
    .registers 4

    .line 392
    :try_start_0
    iget-object v0, p0, Landroid/net/NetworkPolicyManager;->mService:Landroid/net/INetworkPolicyManager;

    invoke-interface {v0, p1, p2}, Landroid/net/INetworkPolicyManager;->addUidPolicy(II)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 395
    nop

    .line 396
    return-void

    .line 393
    :catch_7
    move-exception p1

    .line 394
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public greylist-max-o factoryReset(Ljava/lang/String;)V
    .registers 3

    .line 687
    :try_start_0
    iget-object v0, p0, Landroid/net/NetworkPolicyManager;->mService:Landroid/net/INetworkPolicyManager;

    invoke-interface {v0, p1}, Landroid/net/INetworkPolicyManager;->factoryReset(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 690
    nop

    .line 691
    return-void

    .line 688
    :catch_7
    move-exception p1

    .line 689
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist getMultipathPreference(Landroid/net/Network;)I
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 736
    :try_start_0
    iget-object v0, p0, Landroid/net/NetworkPolicyManager;->mService:Landroid/net/INetworkPolicyManager;

    invoke-interface {v0, p1}, Landroid/net/INetworkPolicyManager;->getMultipathPreference(Landroid/net/Network;)I

    move-result p1
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return p1

    .line 737
    :catch_7
    move-exception p1

    .line 738
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public greylist getNetworkPolicies()[Landroid/net/NetworkPolicy;
    .registers 3

    .line 506
    :try_start_0
    iget-object v0, p0, Landroid/net/NetworkPolicyManager;->mService:Landroid/net/INetworkPolicyManager;

    iget-object v1, p0, Landroid/net/NetworkPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/net/INetworkPolicyManager;->getNetworkPolicies(Ljava/lang/String;)[Landroid/net/NetworkPolicy;

    move-result-object v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object v0

    .line 507
    :catch_d
    move-exception v0

    .line 508
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public greylist-max-r getRestrictBackground()Z
    .registers 2

    .line 528
    :try_start_0
    iget-object v0, p0, Landroid/net/NetworkPolicyManager;->mService:Landroid/net/INetworkPolicyManager;

    invoke-interface {v0}, Landroid/net/INetworkPolicyManager;->getRestrictBackground()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 529
    :catch_7
    move-exception v0

    .line 530
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public blacklist getRestrictBackgroundStatus(I)I
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 548
    :try_start_0
    iget-object v0, p0, Landroid/net/NetworkPolicyManager;->mService:Landroid/net/INetworkPolicyManager;

    invoke-interface {v0, p1}, Landroid/net/INetworkPolicyManager;->getRestrictBackgroundStatus(I)I

    move-result p1
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return p1

    .line 549
    :catch_7
    move-exception p1

    .line 550
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist getSubscriptionPlan(Landroid/net/NetworkTemplate;)Landroid/telephony/SubscriptionPlan;
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 637
    :try_start_0
    iget-object v0, p0, Landroid/net/NetworkPolicyManager;->mService:Landroid/net/INetworkPolicyManager;

    invoke-interface {v0, p1}, Landroid/net/INetworkPolicyManager;->getSubscriptionPlan(Landroid/net/NetworkTemplate;)Landroid/telephony/SubscriptionPlan;

    move-result-object p1
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object p1

    .line 638
    :catch_7
    move-exception p1

    .line 639
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist getSubscriptionPlans(ILjava/lang/String;)[Landroid/telephony/SubscriptionPlan;
    .registers 4

    .line 616
    :try_start_0
    iget-object v0, p0, Landroid/net/NetworkPolicyManager;->mService:Landroid/net/INetworkPolicyManager;

    invoke-interface {v0, p1, p2}, Landroid/net/INetworkPolicyManager;->getSubscriptionPlans(ILjava/lang/String;)[Landroid/telephony/SubscriptionPlan;

    move-result-object p1
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object p1

    .line 617
    :catch_7
    move-exception p1

    .line 618
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public greylist-max-r getUidPolicy(I)I
    .registers 3

    .line 419
    :try_start_0
    iget-object v0, p0, Landroid/net/NetworkPolicyManager;->mService:Landroid/net/INetworkPolicyManager;

    invoke-interface {v0, p1}, Landroid/net/INetworkPolicyManager;->getUidPolicy(I)I

    move-result p1
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return p1

    .line 420
    :catch_7
    move-exception p1

    .line 421
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public greylist getUidsWithPolicy(I)[I
    .registers 3

    .line 429
    :try_start_0
    iget-object v0, p0, Landroid/net/NetworkPolicyManager;->mService:Landroid/net/INetworkPolicyManager;

    invoke-interface {v0, p1}, Landroid/net/INetworkPolicyManager;->getUidsWithPolicy(I)[I

    move-result-object p1
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object p1

    .line 430
    :catch_7
    move-exception p1

    .line 431
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist isUidNetworkingBlocked(IZ)Z
    .registers 4

    .line 704
    :try_start_0
    iget-object v0, p0, Landroid/net/NetworkPolicyManager;->mService:Landroid/net/INetworkPolicyManager;

    invoke-interface {v0, p1, p2}, Landroid/net/INetworkPolicyManager;->isUidNetworkingBlocked(IZ)Z

    move-result p1
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return p1

    .line 705
    :catch_7
    move-exception p1

    .line 706
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist isUidRestrictedOnMeteredNetworks(I)Z
    .registers 3

    .line 719
    :try_start_0
    iget-object v0, p0, Landroid/net/NetworkPolicyManager;->mService:Landroid/net/INetworkPolicyManager;

    invoke-interface {v0, p1}, Landroid/net/INetworkPolicyManager;->isUidRestrictedOnMeteredNetworks(I)Z

    move-result p1
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return p1

    .line 720
    :catch_7
    move-exception p1

    .line 721
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist notifyDenylistChanged([I[I)V
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 440
    :try_start_0
    iget-object v0, p0, Landroid/net/NetworkPolicyManager;->mService:Landroid/net/INetworkPolicyManager;

    invoke-interface {v0, p1, p2}, Landroid/net/INetworkPolicyManager;->notifyDenylistChanged([I[I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 443
    nop

    .line 444
    return-void

    .line 441
    :catch_7
    move-exception p1

    .line 442
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist notifyStatsProviderLimitReached()V
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 674
    :try_start_0
    iget-object v0, p0, Landroid/net/NetworkPolicyManager;->mService:Landroid/net/INetworkPolicyManager;

    invoke-interface {v0}, Landroid/net/INetworkPolicyManager;->notifyStatsProviderWarningOrLimitReached()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 677
    nop

    .line 678
    return-void

    .line 675
    :catch_7
    move-exception v0

    .line 676
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public blacklist notifyStatsProviderWarningReached()V
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 655
    :try_start_0
    iget-object v0, p0, Landroid/net/NetworkPolicyManager;->mService:Landroid/net/INetworkPolicyManager;

    invoke-interface {v0}, Landroid/net/INetworkPolicyManager;->notifyStatsProviderWarningOrLimitReached()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 658
    nop

    .line 659
    return-void

    .line 656
    :catch_7
    move-exception v0

    .line 657
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public blacklist registerAllowedTransportsCallback(Ljava/util/concurrent/Executor;Landroid/net/NetworkPolicyManager$AllowedTransportsCallback;)V
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 1163
    if-eqz p2, :cond_10

    .line 1167
    new-instance v0, Landroid/net/NetworkPolicyManager$AllowedTransportsCallbackProxy;

    invoke-direct {v0, p1, p2}, Landroid/net/NetworkPolicyManager$AllowedTransportsCallbackProxy;-><init>(Ljava/util/concurrent/Executor;Landroid/net/NetworkPolicyManager$AllowedTransportsCallback;)V

    .line 1169
    invoke-virtual {p0, v0}, Landroid/net/NetworkPolicyManager;->registerListener(Landroid/net/INetworkPolicyListener;)V

    .line 1170
    iget-object p1, p0, Landroid/net/NetworkPolicyManager;->mAllowedTransportsCallbackMap:Ljava/util/Map;

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1171
    return-void

    .line 1164
    :cond_10
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Callback cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public greylist-max-p registerListener(Landroid/net/INetworkPolicyListener;)V
    .registers 3

    .line 450
    :try_start_0
    iget-object v0, p0, Landroid/net/NetworkPolicyManager;->mService:Landroid/net/INetworkPolicyManager;

    invoke-interface {v0, p1}, Landroid/net/INetworkPolicyManager;->registerListener(Landroid/net/INetworkPolicyListener;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 453
    nop

    .line 454
    return-void

    .line 451
    :catch_7
    move-exception p1

    .line 452
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist registerNetworkPolicyCallback(Ljava/util/concurrent/Executor;Landroid/net/NetworkPolicyManager$NetworkPolicyCallback;)V
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1009
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/net/platform/flags/Flags;->deprecateNetworkPolicyCallback()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 1013
    if-eqz p2, :cond_16

    .line 1017
    new-instance v0, Landroid/net/NetworkPolicyManager$NetworkPolicyCallbackProxy;

    invoke-direct {v0, p1, p2}, Landroid/net/NetworkPolicyManager$NetworkPolicyCallbackProxy;-><init>(Ljava/util/concurrent/Executor;Landroid/net/NetworkPolicyManager$NetworkPolicyCallback;)V

    .line 1019
    invoke-virtual {p0, v0}, Landroid/net/NetworkPolicyManager;->registerListener(Landroid/net/INetworkPolicyListener;)V

    .line 1020
    iget-object p1, p0, Landroid/net/NetworkPolicyManager;->mNetworkPolicyCallbackMap:Ljava/util/Map;

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1021
    return-void

    .line 1014
    :cond_16
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Callback cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1010
    :cond_1e
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "NetworkPolicyCallback is no longer supported. Please use ConnectivityManager APIs instead"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public blacklist registerSubscriptionCallback(Landroid/net/NetworkPolicyManager$SubscriptionCallback;)V
    .registers 4

    .line 469
    if-eqz p1, :cond_1b

    .line 473
    new-instance v0, Landroid/net/NetworkPolicyManager$SubscriptionCallbackProxy;

    invoke-direct {v0, p0, p1}, Landroid/net/NetworkPolicyManager$SubscriptionCallbackProxy;-><init>(Landroid/net/NetworkPolicyManager;Landroid/net/NetworkPolicyManager$SubscriptionCallback;)V

    .line 474
    iget-object v1, p0, Landroid/net/NetworkPolicyManager;->mSubscriptionCallbackMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_13

    .line 477
    invoke-virtual {p0, v0}, Landroid/net/NetworkPolicyManager;->registerListener(Landroid/net/INetworkPolicyListener;)V

    .line 478
    return-void

    .line 475
    :cond_13
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Callback is already registered."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 470
    :cond_1b
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Callback cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public greylist-max-o removeUidPolicy(II)V
    .registers 4

    .line 409
    :try_start_0
    iget-object v0, p0, Landroid/net/NetworkPolicyManager;->mService:Landroid/net/INetworkPolicyManager;

    invoke-interface {v0, p1, p2}, Landroid/net/INetworkPolicyManager;->removeUidPolicy(II)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 412
    nop

    .line 413
    return-void

    .line 410
    :catch_7
    move-exception p1

    .line 411
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public greylist-max-o setNetworkPolicies([Landroid/net/NetworkPolicy;)V
    .registers 3

    .line 496
    :try_start_0
    iget-object v0, p0, Landroid/net/NetworkPolicyManager;->mService:Landroid/net/INetworkPolicyManager;

    invoke-interface {v0, p1}, Landroid/net/INetworkPolicyManager;->setNetworkPolicies([Landroid/net/NetworkPolicy;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 499
    nop

    .line 500
    return-void

    .line 497
    :catch_7
    move-exception p1

    .line 498
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public greylist-max-r setRestrictBackground(Z)V
    .registers 3

    .line 517
    :try_start_0
    iget-object v0, p0, Landroid/net/NetworkPolicyManager;->mService:Landroid/net/INetworkPolicyManager;

    invoke-interface {v0, p1}, Landroid/net/INetworkPolicyManager;->setRestrictBackground(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 520
    nop

    .line 521
    return-void

    .line 518
    :catch_7
    move-exception p1

    .line 519
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist setSubscriptionOverride(III[IJLjava/lang/String;)V
    .registers 9

    .line 577
    :try_start_0
    iget-object v0, p0, Landroid/net/NetworkPolicyManager;->mService:Landroid/net/INetworkPolicyManager;

    move-object p0, v0

    invoke-interface/range {p0 .. p7}, Landroid/net/INetworkPolicyManager;->setSubscriptionOverride(III[IJLjava/lang/String;)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_8

    .line 581
    nop

    .line 582
    return-void

    .line 579
    :catch_8
    move-exception v0

    move-object p1, v0

    .line 580
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist setSubscriptionPlans(I[Landroid/telephony/SubscriptionPlan;JLjava/lang/String;)V
    .registers 7

    .line 598
    :try_start_0
    iget-object v0, p0, Landroid/net/NetworkPolicyManager;->mService:Landroid/net/INetworkPolicyManager;

    move-object p0, v0

    invoke-interface/range {p0 .. p5}, Landroid/net/INetworkPolicyManager;->setSubscriptionPlans(I[Landroid/telephony/SubscriptionPlan;JLjava/lang/String;)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_8

    .line 601
    nop

    .line 602
    return-void

    .line 599
    :catch_8
    move-exception v0

    move-object p1, v0

    .line 600
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public greylist setUidPolicy(II)V
    .registers 4

    .line 375
    :try_start_0
    iget-object v0, p0, Landroid/net/NetworkPolicyManager;->mService:Landroid/net/INetworkPolicyManager;

    invoke-interface {v0, p1, p2}, Landroid/net/INetworkPolicyManager;->setUidPolicy(II)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 378
    nop

    .line 379
    return-void

    .line 376
    :catch_7
    move-exception p1

    .line 377
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist unregisterAllowedTransportsCallback(Landroid/net/NetworkPolicyManager$AllowedTransportsCallback;)V
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 1177
    if-eqz p1, :cond_11

    .line 1181
    iget-object v0, p0, Landroid/net/NetworkPolicyManager;->mAllowedTransportsCallbackMap:Ljava/util/Map;

    .line 1182
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/NetworkPolicyManager$AllowedTransportsCallbackProxy;

    .line 1183
    if-nez p1, :cond_d

    return-void

    .line 1184
    :cond_d
    invoke-virtual {p0, p1}, Landroid/net/NetworkPolicyManager;->unregisterListener(Landroid/net/INetworkPolicyListener;)V

    .line 1185
    return-void

    .line 1178
    :cond_11
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Callback cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public greylist-max-p unregisterListener(Landroid/net/INetworkPolicyListener;)V
    .registers 3

    .line 460
    :try_start_0
    iget-object v0, p0, Landroid/net/NetworkPolicyManager;->mService:Landroid/net/INetworkPolicyManager;

    invoke-interface {v0, p1}, Landroid/net/INetworkPolicyManager;->unregisterListener(Landroid/net/INetworkPolicyListener;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 463
    nop

    .line 464
    return-void

    .line 461
    :catch_7
    move-exception p1

    .line 462
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist unregisterNetworkPolicyCallback(Landroid/net/NetworkPolicyManager$NetworkPolicyCallback;)V
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1041
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/net/platform/flags/Flags;->deprecateNetworkPolicyCallback()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 1045
    if-eqz p1, :cond_17

    .line 1049
    iget-object v0, p0, Landroid/net/NetworkPolicyManager;->mNetworkPolicyCallbackMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/NetworkPolicyManager$NetworkPolicyCallbackProxy;

    .line 1050
    if-nez p1, :cond_13

    return-void

    .line 1051
    :cond_13
    invoke-virtual {p0, p1}, Landroid/net/NetworkPolicyManager;->unregisterListener(Landroid/net/INetworkPolicyListener;)V

    .line 1052
    return-void

    .line 1046
    :cond_17
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Callback cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1042
    :cond_1f
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "NetworkPolicyCallback is no longer supported. Please use ConnectivityManager APIs instead"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public blacklist unregisterSubscriptionCallback(Landroid/net/NetworkPolicyManager$SubscriptionCallback;)V
    .registers 3

    .line 483
    if-eqz p1, :cond_11

    .line 487
    iget-object v0, p0, Landroid/net/NetworkPolicyManager;->mSubscriptionCallbackMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/NetworkPolicyManager$SubscriptionCallbackProxy;

    .line 488
    if-nez p1, :cond_d

    return-void

    .line 490
    :cond_d
    invoke-virtual {p0, p1}, Landroid/net/NetworkPolicyManager;->unregisterListener(Landroid/net/INetworkPolicyListener;)V

    .line 491
    return-void

    .line 484
    :cond_11
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Callback cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
