.class public final Landroid/net/vcn/persistablebundleutils/IkeSaProposalUtils;
.super Landroid/net/vcn/persistablebundleutils/SaProposalUtilsBase;
.source "IkeSaProposalUtils.java"


# static fields
.field private static final blacklist PRF_KEY:Ljava/lang/String; = "PRF_KEY"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 37
    invoke-direct {p0}, Landroid/net/vcn/persistablebundleutils/SaProposalUtilsBase;-><init>()V

    return-void
.end method

.method public static blacklist fromPersistableBundle(Landroid/os/PersistableBundle;)Landroid/net/ipsec/ike/IkeSaProposal;
    .registers 7

    .line 55
    const-string v0, "PersistableBundle was null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 57
    new-instance v0, Landroid/net/ipsec/ike/IkeSaProposal$Builder;

    invoke-direct {v0}, Landroid/net/ipsec/ike/IkeSaProposal$Builder;-><init>()V

    .line 59
    const-string v1, "ENCRYPT_ALGO_KEY"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getPersistableBundle(Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v1

    .line 60
    const-string v2, "Encryption algo bundle was null"

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 61
    new-instance v2, Landroid/net/vcn/persistablebundleutils/ChildSaProposalUtils$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Landroid/net/vcn/persistablebundleutils/ChildSaProposalUtils$$ExternalSyntheticLambda0;-><init>()V

    .line 62
    invoke-static {v1, v2}, Landroid/net/vcn/util/PersistableBundleUtils;->toList(Landroid/os/PersistableBundle;Landroid/net/vcn/util/PersistableBundleUtils$Deserializer;)Ljava/util/List;

    move-result-object v1

    .line 63
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_22
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_36

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/vcn/persistablebundleutils/SaProposalUtilsBase$EncryptionAlgoKeyLenPair;

    .line 64
    iget v3, v2, Landroid/net/vcn/persistablebundleutils/SaProposalUtilsBase$EncryptionAlgoKeyLenPair;->encryptionAlgo:I

    iget v2, v2, Landroid/net/vcn/persistablebundleutils/SaProposalUtilsBase$EncryptionAlgoKeyLenPair;->keyLen:I

    invoke-virtual {v0, v3, v2}, Landroid/net/ipsec/ike/IkeSaProposal$Builder;->addEncryptionAlgorithm(II)Landroid/net/ipsec/ike/IkeSaProposal$Builder;

    .line 65
    goto :goto_22

    .line 67
    :cond_36
    const-string v1, "INTEGRITY_ALGO_KEY"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v1

    .line 68
    const-string v2, "Integrity algo array was null"

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 69
    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_44
    if-ge v4, v2, :cond_4e

    aget v5, v1, v4

    .line 70
    invoke-virtual {v0, v5}, Landroid/net/ipsec/ike/IkeSaProposal$Builder;->addIntegrityAlgorithm(I)Landroid/net/ipsec/ike/IkeSaProposal$Builder;

    .line 69
    add-int/lit8 v4, v4, 0x1

    goto :goto_44

    .line 73
    :cond_4e
    const-string v1, "DH_GROUP_KEY"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v1

    .line 74
    const-string v2, "DH Group array was null"

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 75
    array-length v2, v1

    move v4, v3

    :goto_5b
    if-ge v4, v2, :cond_65

    aget v5, v1, v4

    .line 76
    invoke-virtual {v0, v5}, Landroid/net/ipsec/ike/IkeSaProposal$Builder;->addDhGroup(I)Landroid/net/ipsec/ike/IkeSaProposal$Builder;

    .line 75
    add-int/lit8 v4, v4, 0x1

    goto :goto_5b

    .line 79
    :cond_65
    const-string v1, "PRF_KEY"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object p0

    .line 80
    const-string v1, "PRF array was null"

    invoke-static {p0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 81
    array-length v1, p0

    :goto_71
    if-ge v3, v1, :cond_7b

    aget v2, p0, v3

    .line 82
    invoke-virtual {v0, v2}, Landroid/net/ipsec/ike/IkeSaProposal$Builder;->addPseudorandomFunction(I)Landroid/net/ipsec/ike/IkeSaProposal$Builder;

    .line 81
    add-int/lit8 v3, v3, 0x1

    goto :goto_71

    .line 85
    :cond_7b
    invoke-virtual {v0}, Landroid/net/ipsec/ike/IkeSaProposal$Builder;->build()Landroid/net/ipsec/ike/IkeSaProposal;

    move-result-object p0

    return-object p0
.end method

.method static synthetic blacklist lambda$toPersistableBundle$0(Ljava/lang/Integer;)I
    .registers 1

    .line 46
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static blacklist toPersistableBundle(Landroid/net/ipsec/ike/IkeSaProposal;)Landroid/os/PersistableBundle;
    .registers 3

    .line 43
    invoke-static {p0}, Landroid/net/vcn/persistablebundleutils/SaProposalUtilsBase;->toPersistableBundle(Landroid/net/ipsec/ike/SaProposal;)Landroid/os/PersistableBundle;

    move-result-object v0

    .line 45
    nop

    .line 46
    invoke-virtual {p0}, Landroid/net/ipsec/ike/IkeSaProposal;->getPseudorandomFunctions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v1, Landroid/net/vcn/persistablebundleutils/IkeSaProposalUtils$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/net/vcn/persistablebundleutils/IkeSaProposalUtils$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object p0

    .line 47
    const-string v1, "PRF_KEY"

    invoke-virtual {v0, v1, p0}, Landroid/os/PersistableBundle;->putIntArray(Ljava/lang/String;[I)V

    .line 49
    return-object v0
.end method
