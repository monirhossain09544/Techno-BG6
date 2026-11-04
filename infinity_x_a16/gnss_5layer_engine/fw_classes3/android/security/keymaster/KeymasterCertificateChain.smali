.class public Landroid/security/keymaster/KeymasterCertificateChain;
.super Ljava/lang/Object;
.source "KeymasterCertificateChain.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/security/keymaster/KeymasterCertificateChain;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private greylist-max-o mCertificates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 35
    new-instance v0, Landroid/security/keymaster/KeymasterCertificateChain$1;

    invoke-direct {v0}, Landroid/security/keymaster/KeymasterCertificateChain$1;-><init>()V

    sput-object v0, Landroid/security/keymaster/KeymasterCertificateChain;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/security/keymaster/KeymasterCertificateChain;->mCertificates:Ljava/util/List;

    .line 47
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 2

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    invoke-virtual {p0, p1}, Landroid/security/keymaster/KeymasterCertificateChain;->readFromParcel(Landroid/os/Parcel;)V

    .line 55
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/security/keymaster/KeymasterCertificateChain-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/security/keymaster/KeymasterCertificateChain;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor greylist-max-o <init>(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;)V"
        }
    .end annotation

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Landroid/security/keymaster/KeymasterCertificateChain;->mCertificates:Ljava/util/List;

    .line 51
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 91
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o getCertificates()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    .line 66
    iget-object v0, p0, Landroid/security/keymaster/KeymasterCertificateChain;->mCertificates:Ljava/util/List;

    return-object v0
.end method

.method public greylist-max-o readFromParcel(Landroid/os/Parcel;)V
    .registers 6

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 83
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Landroid/security/keymaster/KeymasterCertificateChain;->mCertificates:Ljava/util/List;

    .line 84
    const/4 v1, 0x0

    :goto_c
    if-ge v1, v0, :cond_1a

    .line 85
    iget-object v2, p0, Landroid/security/keymaster/KeymasterCertificateChain;->mCertificates:Ljava/util/List;

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 87
    :cond_1a
    return-void
.end method

.method public blacklist shallowCopyFrom(Landroid/security/keymaster/KeymasterCertificateChain;)V
    .registers 2

    .line 62
    iget-object p1, p1, Landroid/security/keymaster/KeymasterCertificateChain;->mCertificates:Ljava/util/List;

    iput-object p1, p0, Landroid/security/keymaster/KeymasterCertificateChain;->mCertificates:Ljava/util/List;

    .line 63
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 71
    iget-object p2, p0, Landroid/security/keymaster/KeymasterCertificateChain;->mCertificates:Ljava/util/List;

    if-nez p2, :cond_9

    .line 72
    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_28

    .line 74
    :cond_9
    iget-object p2, p0, Landroid/security/keymaster/KeymasterCertificateChain;->mCertificates:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 75
    iget-object p2, p0, Landroid/security/keymaster/KeymasterCertificateChain;->mCertificates:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_18
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 76
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 77
    goto :goto_18

    .line 79
    :cond_28
    :goto_28
    return-void
.end method
