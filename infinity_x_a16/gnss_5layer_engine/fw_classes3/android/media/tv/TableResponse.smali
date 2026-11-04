.class public final Landroid/media/tv/TableResponse;
.super Landroid/media/tv/BroadcastInfoResponse;
.source "TableResponse.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/TableResponse$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/tv/TableResponse;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist RESPONSE_TYPE:I = 0x2


# instance fields
.field private final blacklist mSize:I

.field private final blacklist mTableByteArray:[B

.field private final blacklist mTableSharedMemory:Landroid/os/SharedMemory;

.field private final blacklist mTableUri:Landroid/net/Uri;

.field private final blacklist mVersion:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 33
    new-instance v0, Landroid/media/tv/TableResponse$1;

    invoke-direct {v0}, Landroid/media/tv/TableResponse$1;-><init>()V

    sput-object v0, Landroid/media/tv/TableResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(IIIIILandroid/net/Uri;[BLandroid/os/SharedMemory;)V
    .registers 10

    .line 107
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1, p2, p3}, Landroid/media/tv/BroadcastInfoResponse;-><init>(IIII)V

    .line 108
    iput p4, p0, Landroid/media/tv/TableResponse;->mVersion:I

    .line 109
    iput p5, p0, Landroid/media/tv/TableResponse;->mSize:I

    .line 110
    iput-object p6, p0, Landroid/media/tv/TableResponse;->mTableUri:Landroid/net/Uri;

    .line 111
    iput-object p7, p0, Landroid/media/tv/TableResponse;->mTableByteArray:[B

    .line 112
    iput-object p8, p0, Landroid/media/tv/TableResponse;->mTableSharedMemory:Landroid/os/SharedMemory;

    .line 113
    return-void
.end method

.method synthetic constructor blacklist <init>(IIIIILandroid/net/Uri;[BLandroid/os/SharedMemory;Landroid/media/tv/TableResponse-IA;)V
    .registers 10

    invoke-direct/range {p0 .. p8}, Landroid/media/tv/TableResponse;-><init>(IIIIILandroid/net/Uri;[BLandroid/os/SharedMemory;)V

    return-void
.end method

.method public constructor whitelist <init>(IIILandroid/net/Uri;II)V
    .registers 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 73
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1, p2, p3}, Landroid/media/tv/BroadcastInfoResponse;-><init>(IIII)V

    .line 74
    iput p5, p0, Landroid/media/tv/TableResponse;->mVersion:I

    .line 75
    iput p6, p0, Landroid/media/tv/TableResponse;->mSize:I

    .line 76
    iput-object p4, p0, Landroid/media/tv/TableResponse;->mTableUri:Landroid/net/Uri;

    .line 77
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/media/tv/TableResponse;->mTableByteArray:[B

    .line 78
    iput-object p1, p0, Landroid/media/tv/TableResponse;->mTableSharedMemory:Landroid/os/SharedMemory;

    .line 79
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4

    .line 218
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Landroid/media/tv/BroadcastInfoResponse;-><init>(ILandroid/os/Parcel;)V

    .line 219
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 220
    const/4 v1, 0x0

    if-nez v0, :cond_d

    move-object v0, v1

    goto :goto_11

    :cond_d
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :goto_11
    iput-object v0, p0, Landroid/media/tv/TableResponse;->mTableUri:Landroid/net/Uri;

    .line 221
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/tv/TableResponse;->mVersion:I

    .line 222
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/tv/TableResponse;->mSize:I

    .line 223
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 224
    if-ltz v0, :cond_2f

    .line 225
    new-array v0, v0, [B

    iput-object v0, p0, Landroid/media/tv/TableResponse;->mTableByteArray:[B

    .line 226
    iget-object v0, p0, Landroid/media/tv/TableResponse;->mTableByteArray:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    goto :goto_31

    .line 228
    :cond_2f
    iput-object v1, p0, Landroid/media/tv/TableResponse;->mTableByteArray:[B

    .line 230
    :goto_31
    sget-object v0, Landroid/os/SharedMemory;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/SharedMemory;

    iput-object p1, p0, Landroid/media/tv/TableResponse;->mTableSharedMemory:Landroid/os/SharedMemory;

    .line 231
    return-void
.end method

.method static blacklist createFromParcelBody(Landroid/os/Parcel;)Landroid/media/tv/TableResponse;
    .registers 2

    .line 54
    new-instance v0, Landroid/media/tv/TableResponse;

    invoke-direct {v0, p0}, Landroid/media/tv/TableResponse;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 290
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getSize()I
    .registers 2

    .line 285
    iget v0, p0, Landroid/media/tv/TableResponse;->mSize:I

    return v0
.end method

.method public whitelist getTableByteArray()[B
    .registers 2

    .line 249
    iget-object v0, p0, Landroid/media/tv/TableResponse;->mTableByteArray:[B

    return-object v0
.end method

.method public whitelist getTableSharedMemory()Landroid/os/SharedMemory;
    .registers 2

    .line 266
    iget-object v0, p0, Landroid/media/tv/TableResponse;->mTableSharedMemory:Landroid/os/SharedMemory;

    return-object v0
.end method

.method public whitelist getTableUri()Landroid/net/Uri;
    .registers 2

    .line 238
    iget-object v0, p0, Landroid/media/tv/TableResponse;->mTableUri:Landroid/net/Uri;

    return-object v0
.end method

.method public whitelist getVersion()I
    .registers 2

    .line 278
    iget v0, p0, Landroid/media/tv/TableResponse;->mVersion:I

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 295
    invoke-super {p0, p1, p2}, Landroid/media/tv/BroadcastInfoResponse;->writeToParcel(Landroid/os/Parcel;I)V

    .line 296
    iget-object v0, p0, Landroid/media/tv/TableResponse;->mTableUri:Landroid/net/Uri;

    if-nez v0, :cond_9

    const/4 v0, 0x0

    goto :goto_f

    :cond_9
    iget-object v0, p0, Landroid/media/tv/TableResponse;->mTableUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 297
    :goto_f
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 298
    iget v0, p0, Landroid/media/tv/TableResponse;->mVersion:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 299
    iget v0, p0, Landroid/media/tv/TableResponse;->mSize:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 300
    iget-object v0, p0, Landroid/media/tv/TableResponse;->mTableByteArray:[B

    if-eqz v0, :cond_2c

    .line 301
    iget-object v0, p0, Landroid/media/tv/TableResponse;->mTableByteArray:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 302
    iget-object v0, p0, Landroid/media/tv/TableResponse;->mTableByteArray:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_30

    .line 304
    :cond_2c
    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 306
    :goto_30
    iget-object v0, p0, Landroid/media/tv/TableResponse;->mTableSharedMemory:Landroid/os/SharedMemory;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 307
    return-void
.end method
