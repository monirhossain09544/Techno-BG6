.class public final Landroid/service/security/talisman/TalismanNeeds$Builder;
.super Ljava/lang/Object;
.source "TalismanNeeds.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/security/talisman/TalismanNeeds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final blacklist mIdentitySetNeeds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/service/security/talisman/TalismanIdentitySetNeed;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mLastTrustConfigTime:Ljava/time/Instant;

.field private blacklist mVerifiedDeviceTalismanCount:I

.field private blacklist mVerifiedDeviceTalismanUrgentCount:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/service/security/talisman/TalismanNeeds$Builder;->mLastTrustConfigTime:Ljava/time/Instant;

    .line 172
    const/4 v0, 0x0

    iput v0, p0, Landroid/service/security/talisman/TalismanNeeds$Builder;->mVerifiedDeviceTalismanCount:I

    .line 173
    iput v0, p0, Landroid/service/security/talisman/TalismanNeeds$Builder;->mVerifiedDeviceTalismanUrgentCount:I

    .line 174
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/service/security/talisman/TalismanNeeds$Builder;->mIdentitySetNeeds:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public varargs blacklist addIdentitySetNeed([Landroid/service/security/talisman/TalismanIdentitySetNeed;)Landroid/service/security/talisman/TalismanNeeds$Builder;
    .registers 3

    .line 218
    iget-object v0, p0, Landroid/service/security/talisman/TalismanNeeds$Builder;->mIdentitySetNeeds:Ljava/util/List;

    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 219
    return-object p0
.end method

.method public blacklist build()Landroid/service/security/talisman/TalismanNeeds;
    .registers 9

    .line 225
    iget v0, p0, Landroid/service/security/talisman/TalismanNeeds$Builder;->mVerifiedDeviceTalismanUrgentCount:I

    iget v1, p0, Landroid/service/security/talisman/TalismanNeeds$Builder;->mVerifiedDeviceTalismanCount:I

    if-gt v0, v1, :cond_15

    .line 233
    new-instance v2, Landroid/service/security/talisman/TalismanNeeds;

    iget-object v3, p0, Landroid/service/security/talisman/TalismanNeeds$Builder;->mLastTrustConfigTime:Ljava/time/Instant;

    iget v4, p0, Landroid/service/security/talisman/TalismanNeeds$Builder;->mVerifiedDeviceTalismanCount:I

    iget v5, p0, Landroid/service/security/talisman/TalismanNeeds$Builder;->mVerifiedDeviceTalismanUrgentCount:I

    iget-object v6, p0, Landroid/service/security/talisman/TalismanNeeds$Builder;->mIdentitySetNeeds:Ljava/util/List;

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Landroid/service/security/talisman/TalismanNeeds;-><init>(Ljava/time/Instant;IILjava/util/List;Landroid/service/security/talisman/TalismanNeeds-IA;)V

    return-object v2

    .line 226
    :cond_15
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Urgent count for verified device talismans ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/service/security/talisman/TalismanNeeds$Builder;->mVerifiedDeviceTalismanUrgentCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") cannot be greater than the total count ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/service/security/talisman/TalismanNeeds$Builder;->mVerifiedDeviceTalismanCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setLastTrustConfigTime(Ljava/time/Instant;)Landroid/service/security/talisman/TalismanNeeds$Builder;
    .registers 2

    .line 185
    iput-object p1, p0, Landroid/service/security/talisman/TalismanNeeds$Builder;->mLastTrustConfigTime:Ljava/time/Instant;

    .line 186
    return-object p0
.end method

.method public blacklist setVerifiedDeviceTalismanCount(I)Landroid/service/security/talisman/TalismanNeeds$Builder;
    .registers 2

    .line 193
    iput p1, p0, Landroid/service/security/talisman/TalismanNeeds$Builder;->mVerifiedDeviceTalismanCount:I

    .line 194
    return-object p0
.end method

.method public blacklist setVerifiedDeviceTalismanUrgentCount(I)Landroid/service/security/talisman/TalismanNeeds$Builder;
    .registers 2

    .line 207
    iput p1, p0, Landroid/service/security/talisman/TalismanNeeds$Builder;->mVerifiedDeviceTalismanUrgentCount:I

    .line 208
    return-object p0
.end method
