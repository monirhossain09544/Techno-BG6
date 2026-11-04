.class public Landroid/media/tv/tunerresourcemanager/TunerFrontendInfo;
.super Ljava/lang/Object;
.source "TunerFrontendInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/tv/tunerresourcemanager/TunerFrontendInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist exclusiveGroupId:I

.field public blacklist handle:J

.field public blacklist type:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 27
    new-instance v0, Landroid/media/tv/tunerresourcemanager/TunerFrontendInfo$1;

    invoke-direct {v0}, Landroid/media/tv/tunerresourcemanager/TunerFrontendInfo$1;-><init>()V

    sput-object v0, Landroid/media/tv/tunerresourcemanager/TunerFrontendInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 3

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/media/tv/tunerresourcemanager/TunerFrontendInfo;->handle:J

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/tv/tunerresourcemanager/TunerFrontendInfo;->type:I

    .line 26
    iput v0, p0, Landroid/media/tv/tunerresourcemanager/TunerFrontendInfo;->exclusiveGroupId:I

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 72
    nop

    .line 73
    const/4 v0, 0x0

    return v0
.end method

.method public final blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 9

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 56
    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_72

    .line 57
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_70

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_25

    .line 64
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_1f

    .line 67
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 57
    return-void

    .line 65
    :cond_1f
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 58
    :cond_25
    :try_start_25
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/media/tv/tunerresourcemanager/TunerFrontendInfo;->handle:J

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_2f
    .catchall {:try_start_25 .. :try_end_2f} :catchall_70

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_40

    .line 64
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_3a

    .line 67
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 59
    return-void

    .line 65
    :cond_3a
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 60
    :cond_40
    :try_start_40
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/media/tv/tunerresourcemanager/TunerFrontendInfo;->type:I

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_4a
    .catchall {:try_start_40 .. :try_end_4a} :catchall_70

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_5b

    .line 64
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_55

    .line 67
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 61
    return-void

    .line 65
    :cond_55
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 62
    :cond_5b
    :try_start_5b
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/media/tv/tunerresourcemanager/TunerFrontendInfo;->exclusiveGroupId:I
    :try_end_61
    .catchall {:try_start_5b .. :try_end_61} :catchall_70

    .line 64
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_6a

    .line 67
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 68
    nop

    .line 69
    return-void

    .line 65
    :cond_6a
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 64
    :catchall_70
    move-exception v2

    goto :goto_7a

    .line 56
    :cond_72
    :try_start_72
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_7a
    .catchall {:try_start_72 .. :try_end_7a} :catchall_70

    .line 64
    :goto_7a
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_83

    .line 65
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 67
    :cond_83
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 68
    throw v2
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p2

    .line 42
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 43
    iget-wide v0, p0, Landroid/media/tv/tunerresourcemanager/TunerFrontendInfo;->handle:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 44
    iget v0, p0, Landroid/media/tv/tunerresourcemanager/TunerFrontendInfo;->type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 45
    iget v0, p0, Landroid/media/tv/tunerresourcemanager/TunerFrontendInfo;->exclusiveGroupId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 47
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 48
    sub-int p2, v0, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 49
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 50
    return-void
.end method
