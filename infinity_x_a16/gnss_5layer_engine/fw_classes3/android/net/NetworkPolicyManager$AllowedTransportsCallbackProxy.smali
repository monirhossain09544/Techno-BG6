.class public Landroid/net/NetworkPolicyManager$AllowedTransportsCallbackProxy;
.super Landroid/net/NetworkPolicyManager$Listener;
.source "NetworkPolicyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/NetworkPolicyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AllowedTransportsCallbackProxy"
.end annotation


# instance fields
.field private final blacklist mCallback:Landroid/net/NetworkPolicyManager$AllowedTransportsCallback;

.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method constructor blacklist <init>(Ljava/util/concurrent/Executor;Landroid/net/NetworkPolicyManager$AllowedTransportsCallback;)V
    .registers 3

    .line 1202
    invoke-direct {p0}, Landroid/net/NetworkPolicyManager$Listener;-><init>()V

    .line 1203
    iput-object p1, p0, Landroid/net/NetworkPolicyManager$AllowedTransportsCallbackProxy;->mExecutor:Ljava/util/concurrent/Executor;

    .line 1204
    iput-object p2, p0, Landroid/net/NetworkPolicyManager$AllowedTransportsCallbackProxy;->mCallback:Landroid/net/NetworkPolicyManager$AllowedTransportsCallback;

    .line 1205
    return-void
.end method


# virtual methods
.method public blacklist onAllowedTransportsChanged([I[J)V
    .registers 5

    .line 1209
    iget-object v0, p0, Landroid/net/NetworkPolicyManager$AllowedTransportsCallbackProxy;->mExecutor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/net/NetworkPolicyManager$AllowedTransportsCallbackProxy;->mCallback:Landroid/net/NetworkPolicyManager$AllowedTransportsCallback;

    invoke-static {v0, v1, p1, p2}, Landroid/net/NetworkPolicyManager;->-$$Nest$smdispatchOnUidsAllowedTransportsChanged(Ljava/util/concurrent/Executor;Landroid/net/NetworkPolicyManager$AllowedTransportsCallback;[I[J)V

    .line 1210
    return-void
.end method
