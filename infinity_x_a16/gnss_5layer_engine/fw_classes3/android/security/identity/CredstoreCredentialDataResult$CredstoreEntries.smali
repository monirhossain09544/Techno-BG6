.class Landroid/security/identity/CredstoreCredentialDataResult$CredstoreEntries;
.super Ljava/lang/Object;
.source "CredstoreCredentialDataResult.java"

# interfaces
.implements Landroid/security/identity/CredentialDataResult$Entries;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/identity/CredstoreCredentialDataResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CredstoreEntries"
.end annotation


# instance fields
.field blacklist mResultData:Landroid/security/identity/ResultData;


# direct methods
.method constructor blacklist <init>(Landroid/security/identity/ResultData;)V
    .registers 2

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Landroid/security/identity/CredstoreCredentialDataResult$CredstoreEntries;->mResultData:Landroid/security/identity/ResultData;

    .line 74
    return-void
.end method


# virtual methods
.method public whitelist getEntry(Ljava/lang/String;Ljava/lang/String;)[B
    .registers 4

    .line 107
    iget-object v0, p0, Landroid/security/identity/CredstoreCredentialDataResult$CredstoreEntries;->mResultData:Landroid/security/identity/ResultData;

    invoke-virtual {v0, p1, p2}, Landroid/security/identity/ResultData;->getEntry(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method

.method public whitelist getEntryNames(Ljava/lang/String;)Ljava/util/Collection;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 83
    iget-object v0, p0, Landroid/security/identity/CredstoreCredentialDataResult$CredstoreEntries;->mResultData:Landroid/security/identity/ResultData;

    invoke-virtual {v0, p1}, Landroid/security/identity/ResultData;->getEntryNames(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object p1

    .line 84
    if-nez p1, :cond_d

    .line 85
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    .line 87
    :cond_d
    return-object p1
.end method

.method public whitelist getNamespaces()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 78
    iget-object v0, p0, Landroid/security/identity/CredstoreCredentialDataResult$CredstoreEntries;->mResultData:Landroid/security/identity/ResultData;

    invoke-virtual {v0}, Landroid/security/identity/ResultData;->getNamespaces()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getRetrievedEntryNames(Ljava/lang/String;)Ljava/util/Collection;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 92
    iget-object v0, p0, Landroid/security/identity/CredstoreCredentialDataResult$CredstoreEntries;->mResultData:Landroid/security/identity/ResultData;

    invoke-virtual {v0, p1}, Landroid/security/identity/ResultData;->getRetrievedEntryNames(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object p1

    .line 93
    if-nez p1, :cond_d

    .line 94
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    .line 96
    :cond_d
    return-object p1
.end method

.method public whitelist getStatus(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4

    .line 102
    iget-object v0, p0, Landroid/security/identity/CredstoreCredentialDataResult$CredstoreEntries;->mResultData:Landroid/security/identity/ResultData;

    invoke-virtual {v0, p1, p2}, Landroid/security/identity/ResultData;->getStatus(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method
