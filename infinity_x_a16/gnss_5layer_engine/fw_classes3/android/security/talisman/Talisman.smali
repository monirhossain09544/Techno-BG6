.class public final Landroid/security/talisman/Talisman;
.super Ljava/lang/Object;
.source "Talisman.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/security/talisman/Talisman;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mEncodedTalisman:[B


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 69
    new-instance v0, Landroid/security/talisman/Talisman$1;

    invoke-direct {v0}, Landroid/security/talisman/Talisman$1;-><init>()V

    sput-object v0, Landroid/security/talisman/Talisman;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 2

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    iput-object p1, p0, Landroid/security/talisman/Talisman;->mEncodedTalisman:[B

    .line 50
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/security/talisman/Talisman-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/security/talisman/Talisman;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>([B)V
    .registers 2

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Landroid/security/talisman/Talisman;->mEncodedTalisman:[B

    .line 46
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 60
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist encoded()[B
    .registers 2

    .line 55
    iget-object v0, p0, Landroid/security/talisman/Talisman;->mEncodedTalisman:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 3

    .line 84
    if-ne p0, p1, :cond_4

    const/4 p1, 0x1

    return p1

    .line 85
    :cond_4
    instance-of v0, p1, Landroid/security/talisman/Talisman;

    if-nez v0, :cond_a

    const/4 p1, 0x0

    return p1

    .line 86
    :cond_a
    check-cast p1, Landroid/security/talisman/Talisman;

    .line 87
    iget-object v0, p0, Landroid/security/talisman/Talisman;->mEncodedTalisman:[B

    iget-object p1, p1, Landroid/security/talisman/Talisman;->mEncodedTalisman:[B

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    return p1
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 92
    iget-object v0, p0, Landroid/security/talisman/Talisman;->mEncodedTalisman:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 65
    iget-object p2, p0, Landroid/security/talisman/Talisman;->mEncodedTalisman:[B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 66
    return-void
.end method
