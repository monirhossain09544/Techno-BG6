.class public Landroid/security/identity/ResultNamespaceParcel;
.super Ljava/lang/Object;
.source "ResultNamespaceParcel.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/security/identity/ResultNamespaceParcel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist entries:[Landroid/security/identity/ResultEntryParcel;

.field public blacklist namespaceName:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 15
    new-instance v0, Landroid/security/identity/ResultNamespaceParcel$1;

    invoke-direct {v0}, Landroid/security/identity/ResultNamespaceParcel$1;-><init>()V

    sput-object v0, Landroid/security/identity/ResultNamespaceParcel;->CREATOR:Landroid/os/Parcelable$Creator;

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

    .line 62
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 63
    :cond_4
    instance-of v1, p1, [Ljava/lang/Object;

    if-eqz v1, :cond_1a

    .line 64
    nop

    .line 65
    check-cast p1, [Ljava/lang/Object;

    array-length v1, p1

    move v2, v0

    :goto_d
    if-ge v0, v1, :cond_19

    aget-object v3, p1, v0

    .line 66
    invoke-direct {p0, v3}, Landroid/security/identity/ResultNamespaceParcel;->describeContents(Ljava/lang/Object;)I

    move-result v3

    or-int/2addr v2, v3

    .line 65
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 68
    :cond_19
    return v2

    .line 70
    :cond_1a
    instance-of v1, p1, Landroid/os/Parcelable;

    if-eqz v1, :cond_25

    .line 71
    check-cast p1, Landroid/os/Parcelable;

    invoke-interface {p1}, Landroid/os/Parcelable;->describeContents()I

    move-result p1

    return p1

    .line 73
    :cond_25
    return v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 57
    nop

    .line 58
    iget-object v0, p0, Landroid/security/identity/ResultNamespaceParcel;->entries:[Landroid/security/identity/ResultEntryParcel;

    invoke-direct {p0, v0}, Landroid/security/identity/ResultNamespaceParcel;->describeContents(Ljava/lang/Object;)I

    move-result v0

    or-int/lit8 v0, v0, 0x0

    .line 59
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

    if-lt v1, v2, :cond_5b

    .line 44
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_59

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_25

    .line 49
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_1f

    .line 52
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 44
    return-void

    .line 50
    :cond_1f
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 45
    :cond_25
    :try_start_25
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/security/identity/ResultNamespaceParcel;->namespaceName:Ljava/lang/String;

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_2f
    .catchall {:try_start_25 .. :try_end_2f} :catchall_59

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_40

    .line 49
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_3a

    .line 52
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 46
    return-void

    .line 50
    :cond_3a
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 47
    :cond_40
    :try_start_40
    sget-object v2, Landroid/security/identity/ResultEntryParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/security/identity/ResultEntryParcel;

    iput-object v2, p0, Landroid/security/identity/ResultNamespaceParcel;->entries:[Landroid/security/identity/ResultEntryParcel;
    :try_end_4a
    .catchall {:try_start_40 .. :try_end_4a} :catchall_59

    .line 49
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_53

    .line 52
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 53
    nop

    .line 54
    return-void

    .line 50
    :cond_53
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 49
    :catchall_59
    move-exception v2

    goto :goto_63

    .line 43
    :cond_5b
    :try_start_5b
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_63
    .catchall {:try_start_5b .. :try_end_63} :catchall_59

    .line 49
    :goto_63
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_6c

    .line 50
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 52
    :cond_6c
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 53
    throw v2
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 30
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 31
    iget-object v1, p0, Landroid/security/identity/ResultNamespaceParcel;->namespaceName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 32
    iget-object v1, p0, Landroid/security/identity/ResultNamespaceParcel;->entries:[Landroid/security/identity/ResultEntryParcel;

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
