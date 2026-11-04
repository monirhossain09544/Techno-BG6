.class public Landroid/os/StatsBootstrapAtomValue;
.super Ljava/lang/Object;
.source "StatsBootstrapAtomValue.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/StatsBootstrapAtomValue$Primitive;,
        Landroid/os/StatsBootstrapAtomValue$Annotation;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/StatsBootstrapAtomValue;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist annotations:[Landroid/os/StatsBootstrapAtomValue$Annotation;

.field public blacklist value:Landroid/os/StatsBootstrapAtomValue$Primitive;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 19
    new-instance v0, Landroid/os/StatsBootstrapAtomValue$1;

    invoke-direct {v0}, Landroid/os/StatsBootstrapAtomValue$1;-><init>()V

    sput-object v0, Landroid/os/StatsBootstrapAtomValue;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private blacklist describeContents(Ljava/lang/Object;)I
    .registers 6

    .line 67
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 68
    :cond_4
    instance-of v1, p1, [Ljava/lang/Object;

    if-eqz v1, :cond_1a

    .line 69
    nop

    .line 70
    check-cast p1, [Ljava/lang/Object;

    array-length v1, p1

    move v2, v0

    :goto_d
    if-ge v0, v1, :cond_19

    aget-object v3, p1, v0

    .line 71
    invoke-direct {p0, v3}, Landroid/os/StatsBootstrapAtomValue;->describeContents(Ljava/lang/Object;)I

    move-result v3

    or-int/2addr v2, v3

    .line 70
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 73
    :cond_19
    return v2

    .line 75
    :cond_1a
    instance-of v1, p1, Landroid/os/Parcelable;

    if-eqz v1, :cond_25

    .line 76
    check-cast p1, Landroid/os/Parcelable;

    invoke-interface {p1}, Landroid/os/Parcelable;->describeContents()I

    move-result p1

    return p1

    .line 78
    :cond_25
    return v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 3

    .line 61
    nop

    .line 62
    iget-object v0, p0, Landroid/os/StatsBootstrapAtomValue;->value:Landroid/os/StatsBootstrapAtomValue$Primitive;

    invoke-direct {p0, v0}, Landroid/os/StatsBootstrapAtomValue;->describeContents(Ljava/lang/Object;)I

    move-result v0

    or-int/lit8 v0, v0, 0x0

    .line 63
    iget-object v1, p0, Landroid/os/StatsBootstrapAtomValue;->annotations:[Landroid/os/StatsBootstrapAtomValue$Annotation;

    invoke-direct {p0, v1}, Landroid/os/StatsBootstrapAtomValue;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 64
    return v0
.end method

.method public final blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 8

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 47
    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_5f

    .line 48
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_5d

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_25

    .line 53
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_1f

    .line 56
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 48
    return-void

    .line 54
    :cond_1f
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 49
    :cond_25
    :try_start_25
    sget-object v2, Landroid/os/StatsBootstrapAtomValue$Primitive;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/StatsBootstrapAtomValue$Primitive;

    iput-object v2, p0, Landroid/os/StatsBootstrapAtomValue;->value:Landroid/os/StatsBootstrapAtomValue$Primitive;

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_33
    .catchall {:try_start_25 .. :try_end_33} :catchall_5d

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_44

    .line 53
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_3e

    .line 56
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 50
    return-void

    .line 54
    :cond_3e
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 51
    :cond_44
    :try_start_44
    sget-object v2, Landroid/os/StatsBootstrapAtomValue$Annotation;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/os/StatsBootstrapAtomValue$Annotation;

    iput-object v2, p0, Landroid/os/StatsBootstrapAtomValue;->annotations:[Landroid/os/StatsBootstrapAtomValue$Annotation;
    :try_end_4e
    .catchall {:try_start_44 .. :try_end_4e} :catchall_5d

    .line 53
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_57

    .line 56
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 57
    nop

    .line 58
    return-void

    .line 54
    :cond_57
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 53
    :catchall_5d
    move-exception v2

    goto :goto_67

    .line 47
    :cond_5f
    :try_start_5f
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_67
    .catchall {:try_start_5f .. :try_end_67} :catchall_5d

    .line 53
    :goto_67
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_70

    .line 54
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 56
    :cond_70
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 57
    throw v2
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 34
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 35
    iget-object v1, p0, Landroid/os/StatsBootstrapAtomValue;->value:Landroid/os/StatsBootstrapAtomValue$Primitive;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 36
    iget-object v1, p0, Landroid/os/StatsBootstrapAtomValue;->annotations:[Landroid/os/StatsBootstrapAtomValue$Annotation;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p2

    .line 38
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 39
    sub-int v0, p2, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 40
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 41
    return-void
.end method
