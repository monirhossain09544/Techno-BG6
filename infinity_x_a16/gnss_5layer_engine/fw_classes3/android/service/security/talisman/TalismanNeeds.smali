.class public final Landroid/service/security/talisman/TalismanNeeds;
.super Ljava/lang/Object;
.source "TalismanNeeds.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/security/talisman/TalismanNeeds$Builder;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/service/security/talisman/TalismanNeeds;",
            ">;"
        }
    .end annotation
.end field


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

.field private final blacklist mLastTrustConfigTime:Ljava/time/Instant;

.field private final blacklist mVerifiedDeviceTalismanCount:I

.field private final blacklist mVerifiedDeviceTalismanUrgentCount:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 156
    new-instance v0, Landroid/service/security/talisman/TalismanNeeds$1;

    invoke-direct {v0}, Landroid/service/security/talisman/TalismanNeeds$1;-><init>()V

    sput-object v0, Landroid/service/security/talisman/TalismanNeeds;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 6

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 93
    nop

    .line 94
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_10

    .line 95
    const/4 v0, 0x0

    goto :goto_14

    .line 96
    :cond_10
    invoke-static {v0, v1}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v0

    :goto_14
    iput-object v0, p0, Landroid/service/security/talisman/TalismanNeeds;->mLastTrustConfigTime:Ljava/time/Instant;

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/service/security/talisman/TalismanNeeds;->mVerifiedDeviceTalismanCount:I

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/service/security/talisman/TalismanNeeds;->mVerifiedDeviceTalismanUrgentCount:I

    .line 99
    sget-object v0, Landroid/service/security/talisman/TalismanIdentitySetNeed;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Landroid/service/security/talisman/TalismanNeeds;->mIdentitySetNeeds:Ljava/util/List;

    .line 100
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/service/security/talisman/TalismanNeeds-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/service/security/talisman/TalismanNeeds;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor blacklist <init>(Ljava/time/Instant;IILjava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/Instant;",
            "II",
            "Ljava/util/List<",
            "Landroid/service/security/talisman/TalismanIdentitySetNeed;",
            ">;)V"
        }
    .end annotation

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object p1, p0, Landroid/service/security/talisman/TalismanNeeds;->mLastTrustConfigTime:Ljava/time/Instant;

    .line 86
    iput p2, p0, Landroid/service/security/talisman/TalismanNeeds;->mVerifiedDeviceTalismanCount:I

    .line 87
    iput p3, p0, Landroid/service/security/talisman/TalismanNeeds;->mVerifiedDeviceTalismanUrgentCount:I

    .line 88
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Landroid/service/security/talisman/TalismanNeeds;->mIdentitySetNeeds:Ljava/util/List;

    .line 89
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/time/Instant;IILjava/util/List;Landroid/service/security/talisman/TalismanNeeds-IA;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/service/security/talisman/TalismanNeeds;-><init>(Ljava/time/Instant;IILjava/util/List;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 144
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getIdentitySetNeeds()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/service/security/talisman/TalismanIdentitySetNeed;",
            ">;"
        }
    .end annotation

    .line 139
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/service/security/talisman/TalismanNeeds;->mIdentitySetNeeds:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public blacklist getTrustConfigurationLastUpdatedTime()Ljava/time/Instant;
    .registers 2

    .line 112
    iget-object v0, p0, Landroid/service/security/talisman/TalismanNeeds;->mLastTrustConfigTime:Ljava/time/Instant;

    return-object v0
.end method

.method public blacklist getVerifiedDeviceTalismanCount()I
    .registers 2

    .line 118
    iget v0, p0, Landroid/service/security/talisman/TalismanNeeds;->mVerifiedDeviceTalismanCount:I

    return v0
.end method

.method public blacklist getVerifiedDeviceTalismanUrgentCount()I
    .registers 2

    .line 128
    iget v0, p0, Landroid/service/security/talisman/TalismanNeeds;->mVerifiedDeviceTalismanUrgentCount:I

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 149
    iget-object p2, p0, Landroid/service/security/talisman/TalismanNeeds;->mLastTrustConfigTime:Ljava/time/Instant;

    if-eqz p2, :cond_b

    iget-object p2, p0, Landroid/service/security/talisman/TalismanNeeds;->mLastTrustConfigTime:Ljava/time/Instant;

    invoke-virtual {p2}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v0

    goto :goto_d

    :cond_b
    const-wide/16 v0, -0x1

    :goto_d
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 150
    iget p2, p0, Landroid/service/security/talisman/TalismanNeeds;->mVerifiedDeviceTalismanCount:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 151
    iget p2, p0, Landroid/service/security/talisman/TalismanNeeds;->mVerifiedDeviceTalismanUrgentCount:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 152
    iget-object p2, p0, Landroid/service/security/talisman/TalismanNeeds;->mIdentitySetNeeds:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 153
    return-void
.end method
