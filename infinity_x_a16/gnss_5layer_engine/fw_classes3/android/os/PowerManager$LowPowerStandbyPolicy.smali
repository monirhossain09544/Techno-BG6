.class public final Landroid/os/PowerManager$LowPowerStandbyPolicy;
.super Ljava/lang/Object;
.source "PowerManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/PowerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LowPowerStandbyPolicy"
.end annotation


# instance fields
.field private final blacklist mAllowedFeatures:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mAllowedReasons:I

.field private final blacklist mExemptPackages:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mIdentifier:Ljava/lang/String;


# direct methods
.method public constructor whitelist <init>(Ljava/lang/String;Ljava/util/Set;ILjava/util/Set;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 3852
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3853
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3854
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3855
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3857
    iput-object p1, p0, Landroid/os/PowerManager$LowPowerStandbyPolicy;->mIdentifier:Ljava/lang/String;

    .line 3858
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Landroid/os/PowerManager$LowPowerStandbyPolicy;->mExemptPackages:Ljava/util/Set;

    .line 3859
    iput p3, p0, Landroid/os/PowerManager$LowPowerStandbyPolicy;->mAllowedReasons:I

    .line 3860
    invoke-static {p4}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Landroid/os/PowerManager$LowPowerStandbyPolicy;->mAllowedFeatures:Ljava/util/Set;

    .line 3861
    return-void
.end method

.method public static blacklist fromParcelable(Landroid/os/IPowerManager$LowPowerStandbyPolicy;)Landroid/os/PowerManager$LowPowerStandbyPolicy;
    .registers 6

    .line 3928
    if-nez p0, :cond_4

    .line 3929
    const/4 p0, 0x0

    return-object p0

    .line 3932
    :cond_4
    new-instance v0, Landroid/os/PowerManager$LowPowerStandbyPolicy;

    iget-object v1, p0, Landroid/os/IPowerManager$LowPowerStandbyPolicy;->identifier:Ljava/lang/String;

    new-instance v2, Landroid/util/ArraySet;

    iget-object v3, p0, Landroid/os/IPowerManager$LowPowerStandbyPolicy;->exemptPackages:Ljava/util/List;

    invoke-direct {v2, v3}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    iget v3, p0, Landroid/os/IPowerManager$LowPowerStandbyPolicy;->allowedReasons:I

    new-instance v4, Landroid/util/ArraySet;

    iget-object p0, p0, Landroid/os/IPowerManager$LowPowerStandbyPolicy;->allowedFeatures:Ljava/util/List;

    invoke-direct {v4, p0}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/os/PowerManager$LowPowerStandbyPolicy;-><init>(Ljava/lang/String;Ljava/util/Set;ILjava/util/Set;)V

    return-object v0
.end method

.method public static blacklist toParcelable(Landroid/os/PowerManager$LowPowerStandbyPolicy;)Landroid/os/IPowerManager$LowPowerStandbyPolicy;
    .registers 4

    .line 3912
    if-nez p0, :cond_4

    .line 3913
    const/4 p0, 0x0

    return-object p0

    .line 3916
    :cond_4
    new-instance v0, Landroid/os/IPowerManager$LowPowerStandbyPolicy;

    invoke-direct {v0}, Landroid/os/IPowerManager$LowPowerStandbyPolicy;-><init>()V

    .line 3918
    iget-object v1, p0, Landroid/os/PowerManager$LowPowerStandbyPolicy;->mIdentifier:Ljava/lang/String;

    iput-object v1, v0, Landroid/os/IPowerManager$LowPowerStandbyPolicy;->identifier:Ljava/lang/String;

    .line 3919
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/os/PowerManager$LowPowerStandbyPolicy;->mExemptPackages:Ljava/util/Set;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Landroid/os/IPowerManager$LowPowerStandbyPolicy;->exemptPackages:Ljava/util/List;

    .line 3920
    iget v1, p0, Landroid/os/PowerManager$LowPowerStandbyPolicy;->mAllowedReasons:I

    iput v1, v0, Landroid/os/IPowerManager$LowPowerStandbyPolicy;->allowedReasons:I

    .line 3921
    new-instance v1, Ljava/util/ArrayList;

    iget-object p0, p0, Landroid/os/PowerManager$LowPowerStandbyPolicy;->mAllowedFeatures:Ljava/util/Set;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Landroid/os/IPowerManager$LowPowerStandbyPolicy;->allowedFeatures:Ljava/util/List;

    .line 3922
    return-object v0
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 3895
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 3896
    :cond_4
    instance-of v1, p1, Landroid/os/PowerManager$LowPowerStandbyPolicy;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 3897
    :cond_a
    check-cast p1, Landroid/os/PowerManager$LowPowerStandbyPolicy;

    .line 3898
    iget v1, p0, Landroid/os/PowerManager$LowPowerStandbyPolicy;->mAllowedReasons:I

    iget v3, p1, Landroid/os/PowerManager$LowPowerStandbyPolicy;->mAllowedReasons:I

    if-ne v1, v3, :cond_31

    iget-object v1, p0, Landroid/os/PowerManager$LowPowerStandbyPolicy;->mIdentifier:Ljava/lang/String;

    iget-object v3, p1, Landroid/os/PowerManager$LowPowerStandbyPolicy;->mIdentifier:Ljava/lang/String;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31

    iget-object v1, p0, Landroid/os/PowerManager$LowPowerStandbyPolicy;->mExemptPackages:Ljava/util/Set;

    iget-object v3, p1, Landroid/os/PowerManager$LowPowerStandbyPolicy;->mExemptPackages:Ljava/util/Set;

    .line 3899
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31

    iget-object v1, p0, Landroid/os/PowerManager$LowPowerStandbyPolicy;->mAllowedFeatures:Ljava/util/Set;

    iget-object p1, p1, Landroid/os/PowerManager$LowPowerStandbyPolicy;->mAllowedFeatures:Ljava/util/Set;

    .line 3900
    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_31

    goto :goto_32

    :cond_31
    move v0, v2

    .line 3898
    :goto_32
    return v0
.end method

.method public whitelist getAllowedFeatures()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 3880
    iget-object v0, p0, Landroid/os/PowerManager$LowPowerStandbyPolicy;->mAllowedFeatures:Ljava/util/Set;

    return-object v0
.end method

.method public whitelist getAllowedReasons()I
    .registers 2

    .line 3875
    iget v0, p0, Landroid/os/PowerManager$LowPowerStandbyPolicy;->mAllowedReasons:I

    return v0
.end method

.method public whitelist getExemptPackages()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 3870
    iget-object v0, p0, Landroid/os/PowerManager$LowPowerStandbyPolicy;->mExemptPackages:Ljava/util/Set;

    return-object v0
.end method

.method public whitelist getIdentifier()Ljava/lang/String;
    .registers 2

    .line 3865
    iget-object v0, p0, Landroid/os/PowerManager$LowPowerStandbyPolicy;->mIdentifier:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 3905
    iget-object v0, p0, Landroid/os/PowerManager$LowPowerStandbyPolicy;->mIdentifier:Ljava/lang/String;

    iget-object v1, p0, Landroid/os/PowerManager$LowPowerStandbyPolicy;->mExemptPackages:Ljava/util/Set;

    iget v2, p0, Landroid/os/PowerManager$LowPowerStandbyPolicy;->mAllowedReasons:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Landroid/os/PowerManager$LowPowerStandbyPolicy;->mAllowedFeatures:Ljava/util/Set;

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 3885
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Policy{mIdentifier=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/PowerManager$LowPowerStandbyPolicy;->mIdentifier:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mExemptPackages="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/PowerManager$LowPowerStandbyPolicy;->mExemptPackages:Ljava/util/Set;

    .line 3887
    const-string v2, ","

    invoke-static {v2, v1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAllowedReasons="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/PowerManager$LowPowerStandbyPolicy;->mAllowedReasons:I

    .line 3888
    invoke-static {v1}, Landroid/os/PowerManager;->lowPowerStandbyAllowedReasonsToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAllowedFeatures="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/PowerManager$LowPowerStandbyPolicy;->mAllowedFeatures:Ljava/util/Set;

    .line 3889
    invoke-static {v2, v1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3885
    return-object v0
.end method
