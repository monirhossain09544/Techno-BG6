.class public final Landroid/security/talisman/TalismanIdentitySet;
.super Ljava/lang/Object;
.source "TalismanIdentitySet.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/security/talisman/TalismanIdentitySet;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mIdentityTalismans:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/security/talisman/Talisman;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mSecretKey:[B

.field private final blacklist mVerifiedDeviceTalisman:Landroid/security/talisman/Talisman;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 128
    new-instance v0, Landroid/security/talisman/TalismanIdentitySet$1;

    invoke-direct {v0}, Landroid/security/talisman/TalismanIdentitySet$1;-><init>()V

    sput-object v0, Landroid/security/talisman/TalismanIdentitySet;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 7

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    sget-object v0, Landroid/security/talisman/Talisman;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/security/talisman/Talisman;

    iput-object v0, p0, Landroid/security/talisman/TalismanIdentitySet;->mVerifiedDeviceTalisman:Landroid/security/talisman/Talisman;

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 67
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p0, Landroid/security/talisman/TalismanIdentitySet;->mIdentityTalismans:Ljava/util/Map;

    .line 68
    const/4 v1, 0x0

    :goto_19
    if-ge v1, v0, :cond_2f

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 70
    sget-object v3, Landroid/security/talisman/Talisman;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/security/talisman/Talisman;

    .line 71
    iget-object v4, p0, Landroid/security/talisman/TalismanIdentitySet;->mIdentityTalismans:Ljava/util/Map;

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    .line 73
    :cond_2f
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    iput-object p1, p0, Landroid/security/talisman/TalismanIdentitySet;->mSecretKey:[B

    .line 74
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/security/talisman/TalismanIdentitySet-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/security/talisman/TalismanIdentitySet;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/security/talisman/Talisman;Ljava/util/Map;[B)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/security/talisman/Talisman;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/security/talisman/Talisman;",
            ">;[B)V"
        }
    .end annotation

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/security/talisman/Talisman;

    iput-object p1, p0, Landroid/security/talisman/TalismanIdentitySet;->mVerifiedDeviceTalisman:Landroid/security/talisman/Talisman;

    .line 58
    new-instance p1, Ljava/util/HashMap;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map;

    invoke-direct {p1, p2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object p1, p0, Landroid/security/talisman/TalismanIdentitySet;->mIdentityTalismans:Ljava/util/Map;

    .line 59
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Landroid/security/talisman/TalismanIdentitySet;->mSecretKey:[B

    .line 62
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 113
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 143
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 144
    :cond_4
    instance-of v1, p1, Landroid/security/talisman/TalismanIdentitySet;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 145
    :cond_a
    check-cast p1, Landroid/security/talisman/TalismanIdentitySet;

    .line 146
    iget-object v1, p0, Landroid/security/talisman/TalismanIdentitySet;->mVerifiedDeviceTalisman:Landroid/security/talisman/Talisman;

    iget-object v3, p1, Landroid/security/talisman/TalismanIdentitySet;->mVerifiedDeviceTalisman:Landroid/security/talisman/Talisman;

    invoke-virtual {v1, v3}, Landroid/security/talisman/Talisman;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    iget-object v1, p0, Landroid/security/talisman/TalismanIdentitySet;->mIdentityTalismans:Ljava/util/Map;

    iget-object v3, p1, Landroid/security/talisman/TalismanIdentitySet;->mIdentityTalismans:Ljava/util/Map;

    .line 147
    invoke-interface {v1, v3}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    iget-object v1, p0, Landroid/security/talisman/TalismanIdentitySet;->mSecretKey:[B

    iget-object p1, p1, Landroid/security/talisman/TalismanIdentitySet;->mSecretKey:[B

    .line 148
    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_2b

    goto :goto_2c

    :cond_2b
    move v0, v2

    .line 146
    :goto_2c
    return v0
.end method

.method public blacklist getIdentityTalisman(Ljava/lang/String;)Landroid/security/talisman/Talisman;
    .registers 3

    .line 92
    iget-object v0, p0, Landroid/security/talisman/TalismanIdentitySet;->mIdentityTalismans:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/security/talisman/Talisman;

    return-object p1
.end method

.method public blacklist getSecretKey()[B
    .registers 2

    .line 107
    iget-object v0, p0, Landroid/security/talisman/TalismanIdentitySet;->mSecretKey:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public blacklist getVerifiedDeviceTalisman()Landroid/security/talisman/Talisman;
    .registers 2

    .line 81
    iget-object v0, p0, Landroid/security/talisman/TalismanIdentitySet;->mVerifiedDeviceTalisman:Landroid/security/talisman/Talisman;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 153
    iget-object v0, p0, Landroid/security/talisman/TalismanIdentitySet;->mVerifiedDeviceTalisman:Landroid/security/talisman/Talisman;

    iget-object v1, p0, Landroid/security/talisman/TalismanIdentitySet;->mIdentityTalismans:Ljava/util/Map;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    .line 154
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroid/security/talisman/TalismanIdentitySet;->mSecretKey:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 6

    .line 118
    iget-object v0, p0, Landroid/security/talisman/TalismanIdentitySet;->mVerifiedDeviceTalisman:Landroid/security/talisman/Talisman;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 119
    iget-object v0, p0, Landroid/security/talisman/TalismanIdentitySet;->mIdentityTalismans:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 120
    iget-object v0, p0, Landroid/security/talisman/TalismanIdentitySet;->mIdentityTalismans:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_37

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 121
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 122
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/security/talisman/Talisman;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 123
    goto :goto_18

    .line 124
    :cond_37
    iget-object p2, p0, Landroid/security/talisman/TalismanIdentitySet;->mSecretKey:[B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 125
    return-void
.end method
