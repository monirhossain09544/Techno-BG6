.class public Landroid/net/NetworkPolicyManager$NetworkPolicyCallbackProxy;
.super Landroid/net/NetworkPolicyManager$Listener;
.source "NetworkPolicyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/NetworkPolicyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NetworkPolicyCallbackProxy"
.end annotation


# instance fields
.field private final blacklist mCallback:Landroid/net/NetworkPolicyManager$NetworkPolicyCallback;

.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method constructor blacklist <init>(Ljava/util/concurrent/Executor;Landroid/net/NetworkPolicyManager$NetworkPolicyCallback;)V
    .registers 3

    .line 1089
    invoke-direct {p0}, Landroid/net/NetworkPolicyManager$Listener;-><init>()V

    .line 1090
    iput-object p1, p0, Landroid/net/NetworkPolicyManager$NetworkPolicyCallbackProxy;->mExecutor:Ljava/util/concurrent/Executor;

    .line 1091
    iput-object p2, p0, Landroid/net/NetworkPolicyManager$NetworkPolicyCallbackProxy;->mCallback:Landroid/net/NetworkPolicyManager$NetworkPolicyCallback;

    .line 1092
    return-void
.end method


# virtual methods
.method public blacklist onBlockedReasonChanged(III)V
    .registers 5

    .line 1096
    if-eq p2, p3, :cond_9

    .line 1097
    iget-object p2, p0, Landroid/net/NetworkPolicyManager$NetworkPolicyCallbackProxy;->mExecutor:Ljava/util/concurrent/Executor;

    iget-object v0, p0, Landroid/net/NetworkPolicyManager$NetworkPolicyCallbackProxy;->mCallback:Landroid/net/NetworkPolicyManager$NetworkPolicyCallback;

    invoke-static {p2, v0, p1, p3}, Landroid/net/NetworkPolicyManager;->-$$Nest$smdispatchOnUidBlockedReasonChanged(Ljava/util/concurrent/Executor;Landroid/net/NetworkPolicyManager$NetworkPolicyCallback;II)V

    .line 1099
    :cond_9
    return-void
.end method
