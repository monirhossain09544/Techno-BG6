.class public final Landroid/net/vcn/persistablebundleutils/ChildSaProposalUtils;
.super Landroid/net/vcn/persistablebundleutils/SaProposalUtilsBase;
.source "ChildSaProposalUtils.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 37
    invoke-direct {p0}, Landroid/net/vcn/persistablebundleutils/SaProposalUtilsBase;-><init>()V

    return-void
.end method

.method public static blacklist fromPersistableBundle(Landroid/os/PersistableBundle;)Landroid/net/ipsec/ike/ChildSaProposal;
    .registers 7

    .line 47
    const-string v0, "PersistableBundle was null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 49
    new-instance v0, Landroid/net/ipsec/ike/ChildSaProposal$Builder;

    invoke-direct {v0}, Landroid/net/ipsec/ike/ChildSaProposal$Builder;-><init>()V

    .line 51
    const-string v1, "ENCRYPT_ALGO_KEY"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getPersistableBundle(Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v1

    .line 52
    const-string v2, "Encryption algo bundle was null"

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 53
    new-instance v2, Landroid/net/vcn/persistablebundleutils/ChildSaProposalUtils$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Landroid/net/vcn/persistablebundleutils/ChildSaProposalUtils$$ExternalSyntheticLambda0;-><init>()V

    .line 54
    invoke-static {v1, v2}, Landroid/net/vcn/util/PersistableBundleUtils;->toList(Landroid/os/PersistableBundle;Landroid/net/vcn/util/PersistableBundleUtils$Deserializer;)Ljava/util/List;

    move-result-object v1

    .line 55
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_22
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_36

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/vcn/persistablebundleutils/SaProposalUtilsBase$EncryptionAlgoKeyLenPair;

    .line 56
    iget v3, v2, Landroid/net/vcn/persistablebundleutils/SaProposalUtilsBase$EncryptionAlgoKeyLenPair;->encryptionAlgo:I

    iget v2, v2, Landroid/net/vcn/persistablebundleutils/SaProposalUtilsBase$EncryptionAlgoKeyLenPair;->keyLen:I

    invoke-virtual {v0, v3, v2}, Landroid/net/ipsec/ike/ChildSaProposal$Builder;->addEncryptionAlgorithm(II)Landroid/net/ipsec/ike/ChildSaProposal$Builder;

    .line 57
    goto :goto_22

    .line 59
    :cond_36
    const-string v1, "INTEGRITY_ALGO_KEY"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v1

    .line 60
    const-string v2, "Integrity algo array was null"

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 61
    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_44
    if-ge v4, v2, :cond_4e

    aget v5, v1, v4

    .line 62
    invoke-virtual {v0, v5}, Landroid/net/ipsec/ike/ChildSaProposal$Builder;->addIntegrityAlgorithm(I)Landroid/net/ipsec/ike/ChildSaProposal$Builder;

    .line 61
    add-int/lit8 v4, v4, 0x1

    goto :goto_44

    .line 65
    :cond_4e
    const-string v1, "DH_GROUP_KEY"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object p0

    .line 66
    const-string v1, "DH Group array was null"

    invoke-static {p0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 67
    array-length v1, p0

    :goto_5a
    if-ge v3, v1, :cond_64

    aget v2, p0, v3

    .line 68
    invoke-virtual {v0, v2}, Landroid/net/ipsec/ike/ChildSaProposal$Builder;->addDhGroup(I)Landroid/net/ipsec/ike/ChildSaProposal$Builder;

    .line 67
    add-int/lit8 v3, v3, 0x1

    goto :goto_5a

    .line 71
    :cond_64
    invoke-virtual {v0}, Landroid/net/ipsec/ike/ChildSaProposal$Builder;->build()Landroid/net/ipsec/ike/ChildSaProposal;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist toPersistableBundle(Landroid/net/ipsec/ike/ChildSaProposal;)Landroid/os/PersistableBundle;
    .registers 1

    .line 41
    invoke-static {p0}, Landroid/net/vcn/persistablebundleutils/SaProposalUtilsBase;->toPersistableBundle(Landroid/net/ipsec/ike/SaProposal;)Landroid/os/PersistableBundle;

    move-result-object p0

    return-object p0
.end method
