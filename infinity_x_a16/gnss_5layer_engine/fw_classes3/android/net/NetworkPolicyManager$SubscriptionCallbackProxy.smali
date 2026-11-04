.class public Landroid/net/NetworkPolicyManager$SubscriptionCallbackProxy;
.super Landroid/net/NetworkPolicyManager$Listener;
.source "NetworkPolicyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/NetworkPolicyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SubscriptionCallbackProxy"
.end annotation


# instance fields
.field private final blacklist mCallback:Landroid/net/NetworkPolicyManager$SubscriptionCallback;


# direct methods
.method constructor blacklist <init>(Landroid/net/NetworkPolicyManager;Landroid/net/NetworkPolicyManager$SubscriptionCallback;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 1142
    invoke-direct {p0}, Landroid/net/NetworkPolicyManager$Listener;-><init>()V

    .line 1143
    iput-object p2, p0, Landroid/net/NetworkPolicyManager$SubscriptionCallbackProxy;->mCallback:Landroid/net/NetworkPolicyManager$SubscriptionCallback;

    .line 1144
    return-void
.end method


# virtual methods
.method public blacklist onSubscriptionOverride(III[I)V
    .registers 6

    .line 1149
    iget-object v0, p0, Landroid/net/NetworkPolicyManager$SubscriptionCallbackProxy;->mCallback:Landroid/net/NetworkPolicyManager$SubscriptionCallback;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/net/NetworkPolicyManager$SubscriptionCallback;->onSubscriptionOverride(III[I)V

    .line 1150
    return-void
.end method

.method public blacklist onSubscriptionPlansChanged(I[Landroid/telephony/SubscriptionPlan;)V
    .registers 4

    .line 1154
    iget-object v0, p0, Landroid/net/NetworkPolicyManager$SubscriptionCallbackProxy;->mCallback:Landroid/net/NetworkPolicyManager$SubscriptionCallback;

    invoke-virtual {v0, p1, p2}, Landroid/net/NetworkPolicyManager$SubscriptionCallback;->onSubscriptionPlansChanged(I[Landroid/telephony/SubscriptionPlan;)V

    .line 1155
    return-void
.end method
