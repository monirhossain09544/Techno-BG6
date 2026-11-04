.class public Landroid/os/FabricatedOverlayInternalEntry;
.super Ljava/lang/Object;
.source "FabricatedOverlayInternalEntry.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/FabricatedOverlayInternalEntry;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist binaryData:Landroid/os/ParcelFileDescriptor;

.field public blacklist binaryDataOffset:J

.field public blacklist binaryDataSize:J

.field public blacklist configuration:Ljava/lang/String;

.field public blacklist data:I

.field public blacklist dataType:I

.field public blacklist isNinePatch:Z

.field public blacklist resourceName:Ljava/lang/String;

.field public blacklist stringData:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 22
    new-instance v0, Landroid/os/FabricatedOverlayInternalEntry$1;

    invoke-direct {v0}, Landroid/os/FabricatedOverlayInternalEntry$1;-><init>()V

    sput-object v0, Landroid/os/FabricatedOverlayInternalEntry;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 4

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput v0, p0, Landroid/os/FabricatedOverlayInternalEntry;->dataType:I

    .line 15
    iput v0, p0, Landroid/os/FabricatedOverlayInternalEntry;->data:I

    .line 19
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/os/FabricatedOverlayInternalEntry;->binaryDataOffset:J

    .line 20
    iput-wide v1, p0, Landroid/os/FabricatedOverlayInternalEntry;->binaryDataSize:J

    .line 21
    iput-boolean v0, p0, Landroid/os/FabricatedOverlayInternalEntry;->isNinePatch:Z

    return-void
.end method

.method private blacklist describeContents(Ljava/lang/Object;)I
    .registers 4

    .line 90
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 91
    :cond_4
    instance-of v1, p1, Landroid/os/Parcelable;

    if-eqz v1, :cond_f

    .line 92
    check-cast p1, Landroid/os/Parcelable;

    invoke-interface {p1}, Landroid/os/Parcelable;->describeContents()I

    move-result p1

    return p1

    .line 94
    :cond_f
    return v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 85
    nop

    .line 86
    iget-object v0, p0, Landroid/os/FabricatedOverlayInternalEntry;->binaryData:Landroid/os/ParcelFileDescriptor;

    invoke-direct {p0, v0}, Landroid/os/FabricatedOverlayInternalEntry;->describeContents(Ljava/lang/Object;)I

    move-result v0

    or-int/lit8 v0, v0, 0x0

    .line 87
    return v0
.end method

.method public final blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 9

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 57
    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_118

    .line 58
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_116

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_25

    .line 77
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_1f

    .line 80
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 58
    return-void

    .line 78
    :cond_1f
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 59
    :cond_25
    :try_start_25
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/os/FabricatedOverlayInternalEntry;->resourceName:Ljava/lang/String;

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_2f
    .catchall {:try_start_25 .. :try_end_2f} :catchall_116

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_40

    .line 77
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_3a

    .line 80
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 60
    return-void

    .line 78
    :cond_3a
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 61
    :cond_40
    :try_start_40
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/os/FabricatedOverlayInternalEntry;->dataType:I

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_4a
    .catchall {:try_start_40 .. :try_end_4a} :catchall_116

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_5b

    .line 77
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_55

    .line 80
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 62
    return-void

    .line 78
    :cond_55
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 63
    :cond_5b
    :try_start_5b
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/os/FabricatedOverlayInternalEntry;->data:I

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_65
    .catchall {:try_start_5b .. :try_end_65} :catchall_116

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_76

    .line 77
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_70

    .line 80
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 64
    return-void

    .line 78
    :cond_70
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 65
    :cond_76
    :try_start_76
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/os/FabricatedOverlayInternalEntry;->stringData:Ljava/lang/String;

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_80
    .catchall {:try_start_76 .. :try_end_80} :catchall_116

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_91

    .line 77
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_8b

    .line 80
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 66
    return-void

    .line 78
    :cond_8b
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 67
    :cond_91
    :try_start_91
    sget-object v2, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelFileDescriptor;

    iput-object v2, p0, Landroid/os/FabricatedOverlayInternalEntry;->binaryData:Landroid/os/ParcelFileDescriptor;

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_9f
    .catchall {:try_start_91 .. :try_end_9f} :catchall_116

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_b0

    .line 77
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_aa

    .line 80
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 68
    return-void

    .line 78
    :cond_aa
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 69
    :cond_b0
    :try_start_b0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/os/FabricatedOverlayInternalEntry;->configuration:Ljava/lang/String;

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_ba
    .catchall {:try_start_b0 .. :try_end_ba} :catchall_116

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_cb

    .line 77
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_c5

    .line 80
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 70
    return-void

    .line 78
    :cond_c5
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 71
    :cond_cb
    :try_start_cb
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/os/FabricatedOverlayInternalEntry;->binaryDataOffset:J

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_d5
    .catchall {:try_start_cb .. :try_end_d5} :catchall_116

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_e6

    .line 77
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_e0

    .line 80
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 72
    return-void

    .line 78
    :cond_e0
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 73
    :cond_e6
    :try_start_e6
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/os/FabricatedOverlayInternalEntry;->binaryDataSize:J

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_f0
    .catchall {:try_start_e6 .. :try_end_f0} :catchall_116

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_101

    .line 77
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_fb

    .line 80
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 74
    return-void

    .line 78
    :cond_fb
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 75
    :cond_101
    :try_start_101
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/os/FabricatedOverlayInternalEntry;->isNinePatch:Z
    :try_end_107
    .catchall {:try_start_101 .. :try_end_107} :catchall_116

    .line 77
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_110

    .line 80
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 81
    nop

    .line 82
    return-void

    .line 78
    :cond_110
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 77
    :catchall_116
    move-exception v2

    goto :goto_120

    .line 57
    :cond_118
    :try_start_118
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_120
    .catchall {:try_start_118 .. :try_end_120} :catchall_116

    .line 77
    :goto_120
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_129

    .line 78
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 80
    :cond_129
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 81
    throw v2
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 6

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 37
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 38
    iget-object v1, p0, Landroid/os/FabricatedOverlayInternalEntry;->resourceName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 39
    iget v1, p0, Landroid/os/FabricatedOverlayInternalEntry;->dataType:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 40
    iget v1, p0, Landroid/os/FabricatedOverlayInternalEntry;->data:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 41
    iget-object v1, p0, Landroid/os/FabricatedOverlayInternalEntry;->stringData:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 42
    iget-object v1, p0, Landroid/os/FabricatedOverlayInternalEntry;->binaryData:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 43
    iget-object p2, p0, Landroid/os/FabricatedOverlayInternalEntry;->configuration:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    iget-wide v1, p0, Landroid/os/FabricatedOverlayInternalEntry;->binaryDataOffset:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 45
    iget-wide v1, p0, Landroid/os/FabricatedOverlayInternalEntry;->binaryDataSize:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 46
    iget-boolean p2, p0, Landroid/os/FabricatedOverlayInternalEntry;->isNinePatch:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p2

    .line 48
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 49
    sub-int v0, p2, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 50
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 51
    return-void
.end method
