.class public final synthetic Landroid/net/NetworkPolicyManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/function/TriConsumer;


# direct methods
.method public synthetic constructor blacklist <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final blacklist accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    .line 0
    check-cast p1, Landroid/net/NetworkPolicyManager$AllowedTransportsCallback;

    check-cast p2, [I

    check-cast p3, [J

    invoke-interface {p1, p2, p3}, Landroid/net/NetworkPolicyManager$AllowedTransportsCallback;->onUidsAllowedTransportsChanged([I[J)V

    return-void
.end method
