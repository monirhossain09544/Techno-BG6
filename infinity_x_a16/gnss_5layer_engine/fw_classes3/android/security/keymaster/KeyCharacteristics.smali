.class public Landroid/security/keymaster/KeyCharacteristics;
.super Ljava/lang/Object;
.source "KeyCharacteristics.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/security/keymaster/KeyCharacteristics;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public greylist-max-o hwEnforced:Landroid/security/keymaster/KeymasterArguments;

.field public greylist-max-o swEnforced:Landroid/security/keymaster/KeymasterArguments;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 36
    new-instance v0, Landroid/security/keymaster/KeyCharacteristics$1;

    invoke-direct {v0}, Landroid/security/keymaster/KeyCharacteristics$1;-><init>()V

    sput-object v0, Landroid/security/keymaster/KeyCharacteristics;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-r <init>()V
    .registers 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 2

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-virtual {p0, p1}, Landroid/security/keymaster/KeyCharacteristics;->readFromParcel(Landroid/os/Parcel;)V

    .line 54
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 66
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o getBoolean(I)Z
    .registers 3

    .line 156
    iget-object v0, p0, Landroid/security/keymaster/KeyCharacteristics;->hwEnforced:Landroid/security/keymaster/KeymasterArguments;

    invoke-virtual {v0, p1}, Landroid/security/keymaster/KeymasterArguments;->containsTag(I)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 157
    iget-object v0, p0, Landroid/security/keymaster/KeyCharacteristics;->hwEnforced:Landroid/security/keymaster/KeymasterArguments;

    invoke-virtual {v0, p1}, Landroid/security/keymaster/KeymasterArguments;->getBoolean(I)Z

    move-result p1

    return p1

    .line 159
    :cond_f
    iget-object v0, p0, Landroid/security/keymaster/KeyCharacteristics;->swEnforced:Landroid/security/keymaster/KeymasterArguments;

    invoke-virtual {v0, p1}, Landroid/security/keymaster/KeymasterArguments;->getBoolean(I)Z

    move-result p1

    return p1
.end method

.method public greylist-max-o getDate(I)Ljava/util/Date;
    .registers 4

    .line 143
    iget-object v0, p0, Landroid/security/keymaster/KeyCharacteristics;->swEnforced:Landroid/security/keymaster/KeymasterArguments;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/security/keymaster/KeymasterArguments;->getDate(ILjava/util/Date;)Ljava/util/Date;

    move-result-object v0

    .line 144
    if-eqz v0, :cond_a

    .line 145
    return-object v0

    .line 147
    :cond_a
    iget-object v0, p0, Landroid/security/keymaster/KeyCharacteristics;->hwEnforced:Landroid/security/keymaster/KeymasterArguments;

    invoke-virtual {v0, p1, v1}, Landroid/security/keymaster/KeymasterArguments;->getDate(ILjava/util/Date;)Ljava/util/Date;

    move-result-object p1

    return-object p1
.end method

.method public greylist-max-o getEnum(I)Ljava/lang/Integer;
    .registers 4

    .line 88
    iget-object v0, p0, Landroid/security/keymaster/KeyCharacteristics;->hwEnforced:Landroid/security/keymaster/KeymasterArguments;

    invoke-virtual {v0, p1}, Landroid/security/keymaster/KeymasterArguments;->containsTag(I)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_14

    .line 89
    iget-object v0, p0, Landroid/security/keymaster/KeyCharacteristics;->hwEnforced:Landroid/security/keymaster/KeymasterArguments;

    invoke-virtual {v0, p1, v1}, Landroid/security/keymaster/KeymasterArguments;->getEnum(II)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 90
    :cond_14
    iget-object v0, p0, Landroid/security/keymaster/KeyCharacteristics;->swEnforced:Landroid/security/keymaster/KeymasterArguments;

    invoke-virtual {v0, p1}, Landroid/security/keymaster/KeymasterArguments;->containsTag(I)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 91
    iget-object v0, p0, Landroid/security/keymaster/KeyCharacteristics;->swEnforced:Landroid/security/keymaster/KeymasterArguments;

    invoke-virtual {v0, p1, v1}, Landroid/security/keymaster/KeymasterArguments;->getEnum(II)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 93
    :cond_27
    const/4 p1, 0x0

    return-object p1
.end method

.method public greylist-max-o getEnums(I)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 104
    iget-object v1, p0, Landroid/security/keymaster/KeyCharacteristics;->hwEnforced:Landroid/security/keymaster/KeymasterArguments;

    invoke-virtual {v1, p1}, Landroid/security/keymaster/KeymasterArguments;->getEnums(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 105
    iget-object v1, p0, Landroid/security/keymaster/KeyCharacteristics;->swEnforced:Landroid/security/keymaster/KeymasterArguments;

    invoke-virtual {v1, p1}, Landroid/security/keymaster/KeymasterArguments;->getEnums(I)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 106
    return-object v0
.end method

.method public greylist-max-o getUnsignedInt(IJ)J
    .registers 5

    .line 116
    iget-object v0, p0, Landroid/security/keymaster/KeyCharacteristics;->hwEnforced:Landroid/security/keymaster/KeymasterArguments;

    invoke-virtual {v0, p1}, Landroid/security/keymaster/KeymasterArguments;->containsTag(I)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 117
    iget-object v0, p0, Landroid/security/keymaster/KeyCharacteristics;->hwEnforced:Landroid/security/keymaster/KeymasterArguments;

    invoke-virtual {v0, p1, p2, p3}, Landroid/security/keymaster/KeymasterArguments;->getUnsignedInt(IJ)J

    move-result-wide p1

    return-wide p1

    .line 119
    :cond_f
    iget-object v0, p0, Landroid/security/keymaster/KeyCharacteristics;->swEnforced:Landroid/security/keymaster/KeymasterArguments;

    invoke-virtual {v0, p1, p2, p3}, Landroid/security/keymaster/KeymasterArguments;->getUnsignedInt(IJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public greylist-max-o getUnsignedLongs(I)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/math/BigInteger;",
            ">;"
        }
    .end annotation

    .line 129
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 130
    iget-object v1, p0, Landroid/security/keymaster/KeyCharacteristics;->hwEnforced:Landroid/security/keymaster/KeymasterArguments;

    invoke-virtual {v1, p1}, Landroid/security/keymaster/KeymasterArguments;->getUnsignedLongs(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 131
    iget-object v1, p0, Landroid/security/keymaster/KeyCharacteristics;->swEnforced:Landroid/security/keymaster/KeymasterArguments;

    invoke-virtual {v1, p1}, Landroid/security/keymaster/KeymasterArguments;->getUnsignedLongs(I)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 132
    return-object v0
.end method

.method public greylist-max-r readFromParcel(Landroid/os/Parcel;)V
    .registers 3

    .line 77
    sget-object v0, Landroid/security/keymaster/KeymasterArguments;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/security/keymaster/KeymasterArguments;

    iput-object v0, p0, Landroid/security/keymaster/KeyCharacteristics;->swEnforced:Landroid/security/keymaster/KeymasterArguments;

    .line 78
    sget-object v0, Landroid/security/keymaster/KeymasterArguments;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/security/keymaster/KeymasterArguments;

    iput-object p1, p0, Landroid/security/keymaster/KeyCharacteristics;->hwEnforced:Landroid/security/keymaster/KeymasterArguments;

    .line 79
    return-void
.end method

.method public blacklist shallowCopyFrom(Landroid/security/keymaster/KeyCharacteristics;)V
    .registers 3

    .line 60
    iget-object v0, p1, Landroid/security/keymaster/KeyCharacteristics;->swEnforced:Landroid/security/keymaster/KeymasterArguments;

    iput-object v0, p0, Landroid/security/keymaster/KeyCharacteristics;->swEnforced:Landroid/security/keymaster/KeymasterArguments;

    .line 61
    iget-object p1, p1, Landroid/security/keymaster/KeyCharacteristics;->hwEnforced:Landroid/security/keymaster/KeymasterArguments;

    iput-object p1, p0, Landroid/security/keymaster/KeyCharacteristics;->hwEnforced:Landroid/security/keymaster/KeymasterArguments;

    .line 62
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 71
    iget-object v0, p0, Landroid/security/keymaster/KeyCharacteristics;->swEnforced:Landroid/security/keymaster/KeymasterArguments;

    invoke-virtual {v0, p1, p2}, Landroid/security/keymaster/KeymasterArguments;->writeToParcel(Landroid/os/Parcel;I)V

    .line 72
    iget-object v0, p0, Landroid/security/keymaster/KeyCharacteristics;->hwEnforced:Landroid/security/keymaster/KeymasterArguments;

    invoke-virtual {v0, p1, p2}, Landroid/security/keymaster/KeymasterArguments;->writeToParcel(Landroid/os/Parcel;I)V

    .line 73
    return-void
.end method
