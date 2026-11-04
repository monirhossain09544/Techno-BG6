.class public Landroid/system/keystore2/KeyParameters;
.super Ljava/lang/Object;
.source "KeyParameters.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/system/keystore2/KeyParameters;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist keyParameter:[Landroid/hardware/security/keymint/KeyParameter;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 16
    new-instance v0, Landroid/system/keystore2/KeyParameters$1;

    invoke-direct {v0}, Landroid/system/keystore2/KeyParameters$1;-><init>()V

    sput-object v0, Landroid/system/keystore2/KeyParameters;->CREATOR:Landroid/os/Parcelable$Creator;

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

    .line 60
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 61
    :cond_4
    instance-of v1, p1, [Ljava/lang/Object;

    if-eqz v1, :cond_1a

    .line 62
    nop

    .line 63
    check-cast p1, [Ljava/lang/Object;

    array-length v1, p1

    move v2, v0

    :goto_d
    if-ge v0, v1, :cond_19

    aget-object v3, p1, v0

    .line 64
    invoke-direct {p0, v3}, Landroid/system/keystore2/KeyParameters;->describeContents(Ljava/lang/Object;)I

    move-result v3

    or-int/2addr v2, v3

    .line 63
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 66
    :cond_19
    return v2

    .line 68
    :cond_1a
    instance-of v1, p1, Landroid/os/Parcelable;

    if-eqz v1, :cond_25

    .line 69
    check-cast p1, Landroid/os/Parcelable;

    invoke-interface {p1}, Landroid/os/Parcelable;->describeContents()I

    move-result p1

    return p1

    .line 71
    :cond_25
    return v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 55
    nop

    .line 56
    iget-object v0, p0, Landroid/system/keystore2/KeyParameters;->keyParameter:[Landroid/hardware/security/keymint/KeyParameter;

    invoke-direct {p0, v0}, Landroid/system/keystore2/KeyParameters;->describeContents(Ljava/lang/Object;)I

    move-result v0

    or-int/lit8 v0, v0, 0x0

    .line 57
    return v0
.end method

.method public final whitelist getStability()I
    .registers 2

    .line 15
    const/4 v0, 0x1

    return v0
.end method

.method public final blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 8

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 43
    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_40

    .line 44
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_3e

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_25

    .line 47
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_1f

    .line 50
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 44
    return-void

    .line 48
    :cond_1f
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 45
    :cond_25
    :try_start_25
    sget-object v2, Landroid/hardware/security/keymint/KeyParameter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/hardware/security/keymint/KeyParameter;

    iput-object v2, p0, Landroid/system/keystore2/KeyParameters;->keyParameter:[Landroid/hardware/security/keymint/KeyParameter;
    :try_end_2f
    .catchall {:try_start_25 .. :try_end_2f} :catchall_3e

    .line 47
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_38

    .line 50
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 51
    nop

    .line 52
    return-void

    .line 48
    :cond_38
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 47
    :catchall_3e
    move-exception v2

    goto :goto_48

    .line 43
    :cond_40
    :try_start_40
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_48
    .catchall {:try_start_40 .. :try_end_48} :catchall_3e

    .line 47
    :goto_48
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_51

    .line 48
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 50
    :cond_51
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 51
    throw v2
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 31
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 32
    iget-object v1, p0, Landroid/system/keystore2/KeyParameters;->keyParameter:[Landroid/hardware/security/keymint/KeyParameter;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p2

    .line 34
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 35
    sub-int v0, p2, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 36
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 37
    return-void
.end method
