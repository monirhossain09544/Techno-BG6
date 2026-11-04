.class public Landroid/security/identity/GetEntriesResultParcel;
.super Ljava/lang/Object;
.source "GetEntriesResultParcel.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/security/identity/GetEntriesResultParcel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist deviceNameSpaces:[B

.field public blacklist mac:[B

.field public blacklist resultNamespaces:[Landroid/security/identity/ResultNamespaceParcel;

.field public blacklist signature:[B

.field public blacklist staticAuthenticationData:[B


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 18
    new-instance v0, Landroid/security/identity/GetEntriesResultParcel$1;

    invoke-direct {v0}, Landroid/security/identity/GetEntriesResultParcel$1;-><init>()V

    sput-object v0, Landroid/security/identity/GetEntriesResultParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private blacklist describeContents(Ljava/lang/Object;)I
    .registers 6

    .line 74
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 75
    :cond_4
    instance-of v1, p1, [Ljava/lang/Object;

    if-eqz v1, :cond_1a

    .line 76
    nop

    .line 77
    check-cast p1, [Ljava/lang/Object;

    array-length v1, p1

    move v2, v0

    :goto_d
    if-ge v0, v1, :cond_19

    aget-object v3, p1, v0

    .line 78
    invoke-direct {p0, v3}, Landroid/security/identity/GetEntriesResultParcel;->describeContents(Ljava/lang/Object;)I

    move-result v3

    or-int/2addr v2, v3

    .line 77
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 80
    :cond_19
    return v2

    .line 82
    :cond_1a
    instance-of v1, p1, Landroid/os/Parcelable;

    if-eqz v1, :cond_25

    .line 83
    check-cast p1, Landroid/os/Parcelable;

    invoke-interface {p1}, Landroid/os/Parcelable;->describeContents()I

    move-result p1

    return p1

    .line 85
    :cond_25
    return v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 69
    nop

    .line 70
    iget-object v0, p0, Landroid/security/identity/GetEntriesResultParcel;->resultNamespaces:[Landroid/security/identity/ResultNamespaceParcel;

    invoke-direct {p0, v0}, Landroid/security/identity/GetEntriesResultParcel;->describeContents(Ljava/lang/Object;)I

    move-result v0

    or-int/lit8 v0, v0, 0x0

    .line 71
    return v0
.end method

.method public final blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 8

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 49
    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_ac

    .line 50
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_aa

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_25

    .line 61
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_1f

    .line 64
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 50
    return-void

    .line 62
    :cond_1f
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 51
    :cond_25
    :try_start_25
    sget-object v2, Landroid/security/identity/ResultNamespaceParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/security/identity/ResultNamespaceParcel;

    iput-object v2, p0, Landroid/security/identity/GetEntriesResultParcel;->resultNamespaces:[Landroid/security/identity/ResultNamespaceParcel;

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_33
    .catchall {:try_start_25 .. :try_end_33} :catchall_aa

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_44

    .line 61
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_3e

    .line 64
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 52
    return-void

    .line 62
    :cond_3e
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 53
    :cond_44
    :try_start_44
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    iput-object v2, p0, Landroid/security/identity/GetEntriesResultParcel;->deviceNameSpaces:[B

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_4e
    .catchall {:try_start_44 .. :try_end_4e} :catchall_aa

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_5f

    .line 61
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_59

    .line 64
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 54
    return-void

    .line 62
    :cond_59
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 55
    :cond_5f
    :try_start_5f
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    iput-object v2, p0, Landroid/security/identity/GetEntriesResultParcel;->mac:[B

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_69
    .catchall {:try_start_5f .. :try_end_69} :catchall_aa

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_7a

    .line 61
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_74

    .line 64
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 56
    return-void

    .line 62
    :cond_74
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 57
    :cond_7a
    :try_start_7a
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    iput-object v2, p0, Landroid/security/identity/GetEntriesResultParcel;->staticAuthenticationData:[B

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_84
    .catchall {:try_start_7a .. :try_end_84} :catchall_aa

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_95

    .line 61
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_8f

    .line 64
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 58
    return-void

    .line 62
    :cond_8f
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 59
    :cond_95
    :try_start_95
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    iput-object v2, p0, Landroid/security/identity/GetEntriesResultParcel;->signature:[B
    :try_end_9b
    .catchall {:try_start_95 .. :try_end_9b} :catchall_aa

    .line 61
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_a4

    .line 64
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 65
    nop

    .line 66
    return-void

    .line 62
    :cond_a4
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 61
    :catchall_aa
    move-exception v2

    goto :goto_b4

    .line 49
    :cond_ac
    :try_start_ac
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_b4
    .catchall {:try_start_ac .. :try_end_b4} :catchall_aa

    .line 61
    :goto_b4
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_bd

    .line 62
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 64
    :cond_bd
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 65
    throw v2
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 33
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 34
    iget-object v1, p0, Landroid/security/identity/GetEntriesResultParcel;->resultNamespaces:[Landroid/security/identity/ResultNamespaceParcel;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 35
    iget-object p2, p0, Landroid/security/identity/GetEntriesResultParcel;->deviceNameSpaces:[B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 36
    iget-object p2, p0, Landroid/security/identity/GetEntriesResultParcel;->mac:[B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 37
    iget-object p2, p0, Landroid/security/identity/GetEntriesResultParcel;->staticAuthenticationData:[B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 38
    iget-object p2, p0, Landroid/security/identity/GetEntriesResultParcel;->signature:[B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p2

    .line 40
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 41
    sub-int v0, p2, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 42
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 43
    return-void
.end method
