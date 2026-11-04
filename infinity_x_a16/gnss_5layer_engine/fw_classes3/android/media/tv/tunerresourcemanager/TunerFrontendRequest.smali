.class public Landroid/media/tv/tunerresourcemanager/TunerFrontendRequest;
.super Ljava/lang/Object;
.source "TunerFrontendRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/tv/tunerresourcemanager/TunerFrontendRequest;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist DEFAULT_DESIRED_ID:I = -0x1


# instance fields
.field public blacklist clientId:I

.field public blacklist desiredId:I

.field public blacklist frontendType:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 20
    new-instance v0, Landroid/media/tv/tunerresourcemanager/TunerFrontendRequest$1;

    invoke-direct {v0}, Landroid/media/tv/tunerresourcemanager/TunerFrontendRequest$1;-><init>()V

    sput-object v0, Landroid/media/tv/tunerresourcemanager/TunerFrontendRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/tv/tunerresourcemanager/TunerFrontendRequest;->clientId:I

    .line 18
    iput v0, p0, Landroid/media/tv/tunerresourcemanager/TunerFrontendRequest;->frontendType:I

    .line 19
    const/4 v0, -0x1

    iput v0, p0, Landroid/media/tv/tunerresourcemanager/TunerFrontendRequest;->desiredId:I

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 66
    nop

    .line 67
    const/4 v0, 0x0

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

    if-lt v1, v2, :cond_72

    .line 50
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_70

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_25

    .line 57
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_1f

    .line 60
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 50
    return-void

    .line 58
    :cond_1f
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 51
    :cond_25
    :try_start_25
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/media/tv/tunerresourcemanager/TunerFrontendRequest;->clientId:I

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_2f
    .catchall {:try_start_25 .. :try_end_2f} :catchall_70

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_40

    .line 57
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_3a

    .line 60
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 52
    return-void

    .line 58
    :cond_3a
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 53
    :cond_40
    :try_start_40
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/media/tv/tunerresourcemanager/TunerFrontendRequest;->frontendType:I

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_4a
    .catchall {:try_start_40 .. :try_end_4a} :catchall_70

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_5b

    .line 57
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_55

    .line 60
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 54
    return-void

    .line 58
    :cond_55
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 55
    :cond_5b
    :try_start_5b
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/media/tv/tunerresourcemanager/TunerFrontendRequest;->desiredId:I
    :try_end_61
    .catchall {:try_start_5b .. :try_end_61} :catchall_70

    .line 57
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_6a

    .line 60
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 61
    nop

    .line 62
    return-void

    .line 58
    :cond_6a
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 57
    :catchall_70
    move-exception v2

    goto :goto_7a

    .line 49
    :cond_72
    :try_start_72
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_7a
    .catchall {:try_start_72 .. :try_end_7a} :catchall_70

    .line 57
    :goto_7a
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_83

    .line 58
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 60
    :cond_83
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 61
    throw v2
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p2

    .line 35
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 36
    iget v0, p0, Landroid/media/tv/tunerresourcemanager/TunerFrontendRequest;->clientId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 37
    iget v0, p0, Landroid/media/tv/tunerresourcemanager/TunerFrontendRequest;->frontendType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 38
    iget v0, p0, Landroid/media/tv/tunerresourcemanager/TunerFrontendRequest;->desiredId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 40
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 41
    sub-int p2, v0, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 42
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 43
    return-void
.end method
