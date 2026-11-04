.class public final Landroid/service/security/talisman/TalismanIdentitySetNeed$Builder;
.super Ljava/lang/Object;
.source "TalismanIdentitySetNeed.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/security/talisman/TalismanIdentitySetNeed;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final blacklist mIdentityNeeds:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/service/security/talisman/EncryptedIdentityHashParameters;",
            ">;>;"
        }
    .end annotation
.end field

.field private blacklist mUrgentCount:I


# direct methods
.method public static synthetic blacklist $r8$lambda$dNibJNa8EUE3jGHDmGPNJuU-kVg(Landroid/service/security/talisman/TalismanIdentitySetNeed$Builder;Ljava/lang/String;Ljava/util/List;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/service/security/talisman/TalismanIdentitySetNeed$Builder;->lambda$addIdentities$0(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/service/security/talisman/TalismanIdentitySetNeed$Builder;->mIdentityNeeds:Ljava/util/Map;

    .line 155
    const/4 v0, 0x0

    iput v0, p0, Landroid/service/security/talisman/TalismanIdentitySetNeed$Builder;->mUrgentCount:I

    return-void
.end method

.method private synthetic blacklist lambda$addIdentities$0(Ljava/lang/String;Ljava/util/List;)V
    .registers 5

    .line 188
    iget-object v0, p0, Landroid/service/security/talisman/TalismanIdentitySetNeed$Builder;->mIdentityNeeds:Ljava/util/Map;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic blacklist lambda$build$1(ILjava/util/List;)Z
    .registers 2

    .line 210
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ne p1, p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method


# virtual methods
.method public blacklist addIdentities(Ljava/util/Map;)Landroid/service/security/talisman/TalismanIdentitySetNeed$Builder;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/service/security/talisman/EncryptedIdentityHashParameters;",
            ">;>;)",
            "Landroid/service/security/talisman/TalismanIdentitySetNeed$Builder;"
        }
    .end annotation

    .line 182
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 183
    iget-object v2, p0, Landroid/service/security/talisman/TalismanIdentitySetNeed$Builder;->mIdentityNeeds:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1d

    .line 186
    goto :goto_8

    .line 184
    :cond_1d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Identity "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " already exists"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 187
    :cond_3c
    new-instance v0, Landroid/service/security/talisman/TalismanIdentitySetNeed$Builder$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Landroid/service/security/talisman/TalismanIdentitySetNeed$Builder$$ExternalSyntheticLambda1;-><init>(Landroid/service/security/talisman/TalismanIdentitySetNeed$Builder;)V

    invoke-interface {p1, v0}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 189
    return-object p0
.end method

.method public blacklist addIdentity(Ljava/lang/String;Ljava/util/List;)Landroid/service/security/talisman/TalismanIdentitySetNeed$Builder;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/service/security/talisman/EncryptedIdentityHashParameters;",
            ">;)",
            "Landroid/service/security/talisman/TalismanIdentitySetNeed$Builder;"
        }
    .end annotation

    .line 167
    iget-object v0, p0, Landroid/service/security/talisman/TalismanIdentitySetNeed$Builder;->mIdentityNeeds:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 170
    iget-object v0, p0, Landroid/service/security/talisman/TalismanIdentitySetNeed$Builder;->mIdentityNeeds:Ljava/util/Map;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    return-object p0

    .line 168
    :cond_13
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Identity "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " already exists"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public blacklist build()Landroid/service/security/talisman/TalismanIdentitySetNeed;
    .registers 5

    .line 206
    iget-object v0, p0, Landroid/service/security/talisman/TalismanIdentitySetNeed$Builder;->mIdentityNeeds:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_50

    .line 209
    iget-object v0, p0, Landroid/service/security/talisman/TalismanIdentitySetNeed$Builder;->mIdentityNeeds:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 210
    iget-object v1, p0, Landroid/service/security/talisman/TalismanIdentitySetNeed$Builder;->mIdentityNeeds:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Landroid/service/security/talisman/TalismanIdentitySetNeed$Builder$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Landroid/service/security/talisman/TalismanIdentitySetNeed$Builder$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->allMatch(Ljava/util/function/Predicate;)Z

    move-result v1

    if-eqz v1, :cond_48

    .line 214
    iget v1, p0, Landroid/service/security/talisman/TalismanIdentitySetNeed$Builder;->mUrgentCount:I

    if-gt v1, v0, :cond_40

    .line 218
    new-instance v0, Landroid/service/security/talisman/TalismanIdentitySetNeed;

    iget-object v1, p0, Landroid/service/security/talisman/TalismanIdentitySetNeed$Builder;->mIdentityNeeds:Ljava/util/Map;

    iget v2, p0, Landroid/service/security/talisman/TalismanIdentitySetNeed$Builder;->mUrgentCount:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/service/security/talisman/TalismanIdentitySetNeed;-><init>(Ljava/util/Map;ILandroid/service/security/talisman/TalismanIdentitySetNeed-IA;)V

    return-object v0

    .line 215
    :cond_40
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Urgent count cannot be greater than the total count"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 211
    :cond_48
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "All identities must have the same number of parameters"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 207
    :cond_50
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Identities list must not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setUrgentCount(I)Landroid/service/security/talisman/TalismanIdentitySetNeed$Builder;
    .registers 2

    .line 199
    iput p1, p0, Landroid/service/security/talisman/TalismanIdentitySetNeed$Builder;->mUrgentCount:I

    .line 200
    return-object p0
.end method
