.class public Landroid/os/IdmapParams;
.super Ljava/lang/Object;
.source "IdmapParams.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/IdmapParams;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist constraints:[Landroid/os/OverlayConstraint;

.field public blacklist enforceOverlayable:Z

.field public blacklist fulfilledPolicies:I

.field public blacklist overlayName:Ljava/lang/String;

.field public blacklist overlayPath:Ljava/lang/String;

.field public blacklist targetPath:Ljava/lang/String;

.field public blacklist userId:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 20
    new-instance v0, Landroid/os/IdmapParams$1;

    invoke-direct {v0}, Landroid/os/IdmapParams$1;-><init>()V

    sput-object v0, Landroid/os/IdmapParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput v0, p0, Landroid/os/IdmapParams;->fulfilledPolicies:I

    .line 17
    iput-boolean v0, p0, Landroid/os/IdmapParams;->enforceOverlayable:Z

    .line 18
    iput v0, p0, Landroid/os/IdmapParams;->userId:I

    return-void
.end method

.method private blacklist describeContents(Ljava/lang/Object;)I
    .registers 6

    .line 82
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 83
    :cond_4
    instance-of v1, p1, [Ljava/lang/Object;

    if-eqz v1, :cond_1a

    .line 84
    nop

    .line 85
    check-cast p1, [Ljava/lang/Object;

    array-length v1, p1

    move v2, v0

    :goto_d
    if-ge v0, v1, :cond_19

    aget-object v3, p1, v0

    .line 86
    invoke-direct {p0, v3}, Landroid/os/IdmapParams;->describeContents(Ljava/lang/Object;)I

    move-result v3

    or-int/2addr v2, v3

    .line 85
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 88
    :cond_19
    return v2

    .line 90
    :cond_1a
    instance-of v1, p1, Landroid/os/Parcelable;

    if-eqz v1, :cond_25

    .line 91
    check-cast p1, Landroid/os/Parcelable;

    invoke-interface {p1}, Landroid/os/Parcelable;->describeContents()I

    move-result p1

    return p1

    .line 93
    :cond_25
    return v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 77
    nop

    .line 78
    iget-object v0, p0, Landroid/os/IdmapParams;->constraints:[Landroid/os/OverlayConstraint;

    invoke-direct {p0, v0}, Landroid/os/IdmapParams;->describeContents(Ljava/lang/Object;)I

    move-result v0

    or-int/lit8 v0, v0, 0x0

    .line 79
    return v0
.end method

.method public final blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 8

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 53
    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_e2

    .line 54
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_e0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_25

    .line 69
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_1f

    .line 72
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 54
    return-void

    .line 70
    :cond_1f
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 55
    :cond_25
    :try_start_25
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/os/IdmapParams;->targetPath:Ljava/lang/String;

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_2f
    .catchall {:try_start_25 .. :try_end_2f} :catchall_e0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_40

    .line 69
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_3a

    .line 72
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 56
    return-void

    .line 70
    :cond_3a
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 57
    :cond_40
    :try_start_40
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/os/IdmapParams;->overlayPath:Ljava/lang/String;

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_4a
    .catchall {:try_start_40 .. :try_end_4a} :catchall_e0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_5b

    .line 69
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_55

    .line 72
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 58
    return-void

    .line 70
    :cond_55
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 59
    :cond_5b
    :try_start_5b
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/os/IdmapParams;->overlayName:Ljava/lang/String;

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_65
    .catchall {:try_start_5b .. :try_end_65} :catchall_e0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_76

    .line 69
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_70

    .line 72
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 60
    return-void

    .line 70
    :cond_70
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 61
    :cond_76
    :try_start_76
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/os/IdmapParams;->fulfilledPolicies:I

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_80
    .catchall {:try_start_76 .. :try_end_80} :catchall_e0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_91

    .line 69
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_8b

    .line 72
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 62
    return-void

    .line 70
    :cond_8b
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 63
    :cond_91
    :try_start_91
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/os/IdmapParams;->enforceOverlayable:Z

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_9b
    .catchall {:try_start_91 .. :try_end_9b} :catchall_e0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_ac

    .line 69
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_a6

    .line 72
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 64
    return-void

    .line 70
    :cond_a6
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 65
    :cond_ac
    :try_start_ac
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/os/IdmapParams;->userId:I

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_b6
    .catchall {:try_start_ac .. :try_end_b6} :catchall_e0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_c7

    .line 69
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_c1

    .line 72
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 66
    return-void

    .line 70
    :cond_c1
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 67
    :cond_c7
    :try_start_c7
    sget-object v2, Landroid/os/OverlayConstraint;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/os/OverlayConstraint;

    iput-object v2, p0, Landroid/os/IdmapParams;->constraints:[Landroid/os/OverlayConstraint;
    :try_end_d1
    .catchall {:try_start_c7 .. :try_end_d1} :catchall_e0

    .line 69
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_da

    .line 72
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 73
    nop

    .line 74
    return-void

    .line 70
    :cond_da
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 69
    :catchall_e0
    move-exception v2

    goto :goto_ea

    .line 53
    :cond_e2
    :try_start_e2
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_ea
    .catchall {:try_start_e2 .. :try_end_ea} :catchall_e0

    .line 69
    :goto_ea
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_f3

    .line 70
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 72
    :cond_f3
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 73
    throw v2
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 35
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 36
    iget-object v1, p0, Landroid/os/IdmapParams;->targetPath:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 37
    iget-object v1, p0, Landroid/os/IdmapParams;->overlayPath:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 38
    iget-object v1, p0, Landroid/os/IdmapParams;->overlayName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 39
    iget v1, p0, Landroid/os/IdmapParams;->fulfilledPolicies:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 40
    iget-boolean v1, p0, Landroid/os/IdmapParams;->enforceOverlayable:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 41
    iget v1, p0, Landroid/os/IdmapParams;->userId:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 42
    iget-object v1, p0, Landroid/os/IdmapParams;->constraints:[Landroid/os/OverlayConstraint;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p2

    .line 44
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 45
    sub-int v0, p2, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 46
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 47
    return-void
.end method
