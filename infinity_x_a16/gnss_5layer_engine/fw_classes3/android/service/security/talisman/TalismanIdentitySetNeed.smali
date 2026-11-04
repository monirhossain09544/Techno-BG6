.class public final Landroid/service/security/talisman/TalismanIdentitySetNeed;
.super Ljava/lang/Object;
.source "TalismanIdentitySetNeed.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/security/talisman/TalismanIdentitySetNeed$Builder;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/service/security/talisman/TalismanIdentitySetNeed;",
            ">;"
        }
    .end annotation
.end field


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

.field private final blacklist mUrgentCount:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 138
    new-instance v0, Landroid/service/security/talisman/TalismanIdentitySetNeed$1;

    invoke-direct {v0}, Landroid/service/security/talisman/TalismanIdentitySetNeed$1;-><init>()V

    sput-object v0, Landroid/service/security/talisman/TalismanIdentitySetNeed;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 7

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/service/security/talisman/TalismanIdentitySetNeed;->mUrgentCount:I

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 75
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p0, Landroid/service/security/talisman/TalismanIdentitySetNeed;->mIdentityNeeds:Ljava/util/Map;

    .line 76
    const/4 v1, 0x0

    :goto_15
    if-ge v1, v0, :cond_29

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v2

    .line 78
    sget-object v3, Landroid/service/security/talisman/EncryptedIdentityHashParameters;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 79
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3

    .line 80
    iget-object v4, p0, Landroid/service/security/talisman/TalismanIdentitySetNeed;->mIdentityNeeds:Ljava/util/Map;

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    .line 82
    :cond_29
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/service/security/talisman/TalismanIdentitySetNeed-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/service/security/talisman/TalismanIdentitySetNeed;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor blacklist <init>(Ljava/util/Map;I)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/service/security/talisman/EncryptedIdentityHashParameters;",
            ">;>;I)V"
        }
    .end annotation

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Landroid/service/security/talisman/TalismanIdentitySetNeed;->mIdentityNeeds:Ljava/util/Map;

    .line 66
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_16
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_39

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 67
    iget-object v1, p0, Landroid/service/security/talisman/TalismanIdentitySetNeed;->mIdentityNeeds:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    goto :goto_16

    .line 69
    :cond_39
    iput p2, p0, Landroid/service/security/talisman/TalismanIdentitySetNeed;->mUrgentCount:I

    .line 70
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/util/Map;ILandroid/service/security/talisman/TalismanIdentitySetNeed-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/service/security/talisman/TalismanIdentitySetNeed;-><init>(Ljava/util/Map;I)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 123
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getCount()I
    .registers 2

    .line 93
    iget-object v0, p0, Landroid/service/security/talisman/TalismanIdentitySetNeed;->mIdentityNeeds:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 94
    const/4 v0, 0x0

    return v0

    .line 96
    :cond_a
    iget-object v0, p0, Landroid/service/security/talisman/TalismanIdentitySetNeed;->mIdentityNeeds:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public blacklist getIdentities()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/service/security/talisman/TalismanIdentitySetNeed;->mIdentityNeeds:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public blacklist getParameters(Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/service/security/talisman/EncryptedIdentityHashParameters;",
            ">;"
        }
    .end annotation

    .line 114
    iget-object v0, p0, Landroid/service/security/talisman/TalismanIdentitySetNeed;->mIdentityNeeds:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 115
    if-nez p1, :cond_10

    .line 116
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1

    .line 118
    :cond_10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public blacklist getUrgentCount()I
    .registers 2

    .line 108
    iget v0, p0, Landroid/service/security/talisman/TalismanIdentitySetNeed;->mUrgentCount:I

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 128
    iget p2, p0, Landroid/service/security/talisman/TalismanIdentitySetNeed;->mUrgentCount:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 129
    iget-object p2, p0, Landroid/service/security/talisman/TalismanIdentitySetNeed;->mIdentityNeeds:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 131
    iget-object p2, p0, Landroid/service/security/talisman/TalismanIdentitySetNeed;->mIdentityNeeds:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_18
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_37

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 132
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 133
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 134
    goto :goto_18

    .line 135
    :cond_37
    return-void
.end method
