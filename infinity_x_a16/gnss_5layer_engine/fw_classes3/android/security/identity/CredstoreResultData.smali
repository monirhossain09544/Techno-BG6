.class Landroid/security/identity/CredstoreResultData;
.super Landroid/security/identity/ResultData;
.source "CredstoreResultData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/identity/CredstoreResultData$EntryData;,
        Landroid/security/identity/CredstoreResultData$Builder;
    }
.end annotation


# instance fields
.field blacklist mAuthenticatedData:[B

.field private blacklist mData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/security/identity/CredstoreResultData$EntryData;",
            ">;>;"
        }
    .end annotation
.end field

.field blacklist mFeatureVersion:I

.field blacklist mMessageAuthenticationCode:[B

.field blacklist mSignature:[B

.field blacklist mStaticAuthenticationData:[B


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmData(Landroid/security/identity/CredstoreResultData;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Landroid/security/identity/CredstoreResultData;->mData:Ljava/util/Map;

    return-object p0
.end method

.method constructor blacklist <init>()V
    .registers 2

    .line 52
    invoke-direct {p0}, Landroid/security/identity/ResultData;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Landroid/security/identity/CredstoreResultData;->mFeatureVersion:I

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/security/identity/CredstoreResultData;->mStaticAuthenticationData:[B

    .line 35
    iput-object v0, p0, Landroid/security/identity/CredstoreResultData;->mAuthenticatedData:[B

    .line 36
    iput-object v0, p0, Landroid/security/identity/CredstoreResultData;->mMessageAuthenticationCode:[B

    .line 37
    iput-object v0, p0, Landroid/security/identity/CredstoreResultData;->mSignature:[B

    .line 39
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Landroid/security/identity/CredstoreResultData;->mData:Ljava/util/Map;

    .line 52
    return-void
.end method

.method private blacklist getEntryData(Ljava/lang/String;Ljava/lang/String;)Landroid/security/identity/CredstoreResultData$EntryData;
    .registers 4

    .line 107
    iget-object v0, p0, Landroid/security/identity/CredstoreResultData;->mData:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    .line 108
    if-nez p1, :cond_c

    .line 109
    const/4 p1, 0x0

    return-object p1

    .line 111
    :cond_c
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/security/identity/CredstoreResultData$EntryData;

    return-object p1
.end method


# virtual methods
.method public whitelist getAuthenticatedData()[B
    .registers 2

    .line 56
    iget-object v0, p0, Landroid/security/identity/CredstoreResultData;->mAuthenticatedData:[B

    return-object v0
.end method

.method public whitelist getEntry(Ljava/lang/String;Ljava/lang/String;)[B
    .registers 3

    .line 126
    invoke-direct {p0, p1, p2}, Landroid/security/identity/CredstoreResultData;->getEntryData(Ljava/lang/String;Ljava/lang/String;)Landroid/security/identity/CredstoreResultData$EntryData;

    move-result-object p1

    .line 127
    if-nez p1, :cond_8

    .line 128
    const/4 p1, 0x0

    return-object p1

    .line 130
    :cond_8
    iget-object p1, p1, Landroid/security/identity/CredstoreResultData$EntryData;->mValue:[B

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

    .line 84
    iget-object v0, p0, Landroid/security/identity/CredstoreResultData;->mData:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    .line 85
    if-nez p1, :cond_c

    .line 86
    const/4 p1, 0x0

    return-object p1

    .line 88
    :cond_c
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public whitelist getMessageAuthenticationCode()[B
    .registers 2

    .line 61
    iget-object v0, p0, Landroid/security/identity/CredstoreResultData;->mMessageAuthenticationCode:[B

    return-object v0
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

    .line 79
    iget-object v0, p0, Landroid/security/identity/CredstoreResultData;->mData:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getRetrievedEntryNames(Ljava/lang/String;)Ljava/util/Collection;
    .registers 5
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

    .line 93
    iget-object v0, p0, Landroid/security/identity/CredstoreResultData;->mData:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    .line 94
    if-nez p1, :cond_c

    .line 95
    const/4 p1, 0x0

    return-object p1

    .line 97
    :cond_c
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 98
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_19
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_39

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 99
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/security/identity/CredstoreResultData$EntryData;

    iget v2, v2, Landroid/security/identity/CredstoreResultData$EntryData;->mStatus:I

    if-nez v2, :cond_38

    .line 100
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 102
    :cond_38
    goto :goto_19

    .line 103
    :cond_39
    return-object v0
.end method

.method blacklist getSignature()[B
    .registers 3

    .line 66
    iget v0, p0, Landroid/security/identity/CredstoreResultData;->mFeatureVersion:I

    const v1, 0x3163d

    if-lt v0, v1, :cond_a

    .line 69
    iget-object v0, p0, Landroid/security/identity/CredstoreResultData;->mSignature:[B

    return-object v0

    .line 67
    :cond_a
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist getStaticAuthenticationData()[B
    .registers 2

    .line 74
    iget-object v0, p0, Landroid/security/identity/CredstoreResultData;->mStaticAuthenticationData:[B

    return-object v0
.end method

.method public whitelist getStatus(Ljava/lang/String;Ljava/lang/String;)I
    .registers 3

    .line 117
    invoke-direct {p0, p1, p2}, Landroid/security/identity/CredstoreResultData;->getEntryData(Ljava/lang/String;Ljava/lang/String;)Landroid/security/identity/CredstoreResultData$EntryData;

    move-result-object p1

    .line 118
    if-nez p1, :cond_8

    .line 119
    const/4 p1, 0x2

    return p1

    .line 121
    :cond_8
    iget p1, p1, Landroid/security/identity/CredstoreResultData$EntryData;->mStatus:I

    return p1
.end method
