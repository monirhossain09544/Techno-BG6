.class public Landroid/net/NetworkPolicyManager$Listener;
.super Landroid/net/INetworkPolicyListener$Stub;
.source "NetworkPolicyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/NetworkPolicyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Listener"
.end annotation


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 1

    .line 1225
    invoke-direct {p0}, Landroid/net/INetworkPolicyListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onAllowedTransportsChanged([I[J)V
    .registers 3

    .line 1235
    return-void
.end method

.method public blacklist onBlockedReasonChanged(III)V
    .registers 4

    .line 1234
    return-void
.end method

.method public greylist-max-o onMeteredIfacesChanged([Ljava/lang/String;)V
    .registers 2

    .line 1227
    return-void
.end method

.method public greylist-max-o onRestrictBackgroundChanged(Z)V
    .registers 2

    .line 1228
    return-void
.end method

.method public blacklist onSubscriptionOverride(III[I)V
    .registers 5

    .line 1231
    return-void
.end method

.method public blacklist onSubscriptionPlansChanged(I[Landroid/telephony/SubscriptionPlan;)V
    .registers 3

    .line 1232
    return-void
.end method

.method public greylist-max-o onUidPoliciesChanged(II)V
    .registers 3

    .line 1229
    return-void
.end method

.method public greylist-max-o onUidRulesChanged(II)V
    .registers 3

    .line 1226
    return-void
.end method
