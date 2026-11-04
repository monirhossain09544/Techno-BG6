.class public final synthetic Landroid/security/authenticationpolicy/AuthenticationPolicyManager$ProximityResultCallbackWrapper$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/security/authenticationpolicy/AuthenticationPolicyManager$ProximityResultCallbackWrapper;

.field public final synthetic blacklist f$1:I


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/security/authenticationpolicy/AuthenticationPolicyManager$ProximityResultCallbackWrapper;I)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/security/authenticationpolicy/AuthenticationPolicyManager$ProximityResultCallbackWrapper$$ExternalSyntheticLambda1;->f$0:Landroid/security/authenticationpolicy/AuthenticationPolicyManager$ProximityResultCallbackWrapper;

    iput p2, p0, Landroid/security/authenticationpolicy/AuthenticationPolicyManager$ProximityResultCallbackWrapper$$ExternalSyntheticLambda1;->f$1:I

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/security/authenticationpolicy/AuthenticationPolicyManager$ProximityResultCallbackWrapper$$ExternalSyntheticLambda1;->f$0:Landroid/security/authenticationpolicy/AuthenticationPolicyManager$ProximityResultCallbackWrapper;

    iget v1, p0, Landroid/security/authenticationpolicy/AuthenticationPolicyManager$ProximityResultCallbackWrapper$$ExternalSyntheticLambda1;->f$1:I

    invoke-static {v0, v1}, Landroid/security/authenticationpolicy/AuthenticationPolicyManager$ProximityResultCallbackWrapper;->$r8$lambda$eP6ICt-bePtAdbccC29sP3b6PMQ(Landroid/security/authenticationpolicy/AuthenticationPolicyManager$ProximityResultCallbackWrapper;I)V

    return-void
.end method
