.class abstract Landroid/net/vcn/persistablebundleutils/SaProposalUtilsBase;
.super Ljava/lang/Object;
.source "SaProposalUtilsBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/vcn/persistablebundleutils/SaProposalUtilsBase$EncryptionAlgoKeyLenPair;
    }
.end annotation


# static fields
.field static final blacklist DH_GROUP_KEY:Ljava/lang/String; = "DH_GROUP_KEY"

.field static final blacklist ENCRYPT_ALGO_KEY:Ljava/lang/String; = "ENCRYPT_ALGO_KEY"

.field static final blacklist INTEGRITY_ALGO_KEY:Ljava/lang/String; = "INTEGRITY_ALGO_KEY"


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$toPersistableBundle$0(Ljava/lang/Integer;)I
    .registers 1

    .line 87
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method static synthetic blacklist lambda$toPersistableBundle$1(Ljava/lang/Integer;)I
    .registers 1

    .line 90
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method static blacklist toPersistableBundle(Landroid/net/ipsec/ike/SaProposal;)Landroid/os/PersistableBundle;
    .registers 7

    .line 75
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    .line 77
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 78
    invoke-virtual {p0}, Landroid/net/ipsec/ike/SaProposal;->getEncryptionAlgorithms()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_37

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 79
    new-instance v4, Landroid/net/vcn/persistablebundleutils/SaProposalUtilsBase$EncryptionAlgoKeyLenPair;

    iget-object v5, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {v4, v5, v3}, Landroid/net/vcn/persistablebundleutils/SaProposalUtilsBase$EncryptionAlgoKeyLenPair;-><init>(II)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    goto :goto_12

    .line 81
    :cond_37
    new-instance v2, Landroid/net/vcn/persistablebundleutils/SaProposalUtilsBase$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Landroid/net/vcn/persistablebundleutils/SaProposalUtilsBase$$ExternalSyntheticLambda0;-><init>()V

    .line 82
    invoke-static {v1, v2}, Landroid/net/vcn/util/PersistableBundleUtils;->fromList(Ljava/util/List;Landroid/net/vcn/util/PersistableBundleUtils$Serializer;)Landroid/os/PersistableBundle;

    move-result-object v1

    .line 84
    const-string v2, "ENCRYPT_ALGO_KEY"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V

    .line 86
    nop

    .line 87
    invoke-virtual {p0}, Landroid/net/ipsec/ike/SaProposal;->getIntegrityAlgorithms()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Landroid/net/vcn/persistablebundleutils/SaProposalUtilsBase$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Landroid/net/vcn/persistablebundleutils/SaProposalUtilsBase$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v1

    .line 88
    const-string v2, "INTEGRITY_ALGO_KEY"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putIntArray(Ljava/lang/String;[I)V

    .line 90
    invoke-virtual {p0}, Landroid/net/ipsec/ike/SaProposal;->getDhGroups()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v1, Landroid/net/vcn/persistablebundleutils/SaProposalUtilsBase$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Landroid/net/vcn/persistablebundleutils/SaProposalUtilsBase$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object p0

    .line 91
    const-string v1, "DH_GROUP_KEY"

    invoke-virtual {v0, v1, p0}, Landroid/os/PersistableBundle;->putIntArray(Ljava/lang/String;[I)V

    .line 93
    return-object v0
.end method
