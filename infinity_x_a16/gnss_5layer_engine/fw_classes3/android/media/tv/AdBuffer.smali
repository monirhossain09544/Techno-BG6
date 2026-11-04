.class public final Landroid/media/tv/AdBuffer;
.super Ljava/lang/Object;
.source "AdBuffer.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/tv/AdBuffer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mBuffer:Landroid/os/SharedMemory;

.field private final blacklist mFlags:I

.field private final blacklist mId:I

.field private final blacklist mLength:I

.field private final blacklist mMimeType:Ljava/lang/String;

.field private final blacklist mOffset:I

.field private final blacklist mPresentationTimeUs:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 186
    new-instance v0, Landroid/media/tv/AdBuffer$1;

    invoke-direct {v0}, Landroid/media/tv/AdBuffer$1;-><init>()V

    sput-object v0, Landroid/media/tv/AdBuffer;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(ILjava/lang/String;Landroid/os/SharedMemory;IIJI)V
    .registers 10

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput p1, p0, Landroid/media/tv/AdBuffer;->mId:I

    .line 50
    iput-object p2, p0, Landroid/media/tv/AdBuffer;->mMimeType:Ljava/lang/String;

    .line 51
    const-class p1, Landroid/annotation/NonNull;

    const/4 v0, 0x0

    invoke-static {p1, v0, p2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 53
    iput-object p3, p0, Landroid/media/tv/AdBuffer;->mBuffer:Landroid/os/SharedMemory;

    .line 54
    const-class p1, Landroid/annotation/NonNull;

    invoke-static {p1, v0, p3}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 56
    iput p4, p0, Landroid/media/tv/AdBuffer;->mOffset:I

    .line 57
    iput p5, p0, Landroid/media/tv/AdBuffer;->mLength:I

    .line 58
    iput-wide p6, p0, Landroid/media/tv/AdBuffer;->mPresentationTimeUs:J

    .line 59
    iput p8, p0, Landroid/media/tv/AdBuffer;->mFlags:I

    .line 60
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 10

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 166
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 167
    sget-object v2, Landroid/os/SharedMemory;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/SharedMemory;

    .line 168
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 169
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 170
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    .line 171
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 173
    iput v0, p0, Landroid/media/tv/AdBuffer;->mId:I

    .line 174
    iput-object v1, p0, Landroid/media/tv/AdBuffer;->mMimeType:Ljava/lang/String;

    .line 175
    const-class v0, Landroid/annotation/NonNull;

    iget-object v1, p0, Landroid/media/tv/AdBuffer;->mMimeType:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {v0, v7, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 177
    iput-object v2, p0, Landroid/media/tv/AdBuffer;->mBuffer:Landroid/os/SharedMemory;

    .line 178
    const-class v0, Landroid/annotation/NonNull;

    iget-object v1, p0, Landroid/media/tv/AdBuffer;->mBuffer:Landroid/os/SharedMemory;

    invoke-static {v0, v7, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 180
    iput v3, p0, Landroid/media/tv/AdBuffer;->mOffset:I

    .line 181
    iput v4, p0, Landroid/media/tv/AdBuffer;->mLength:I

    .line 182
    iput-wide v5, p0, Landroid/media/tv/AdBuffer;->mPresentationTimeUs:J

    .line 183
    iput p1, p0, Landroid/media/tv/AdBuffer;->mFlags:I

    .line 184
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/media/tv/AdBuffer-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/media/tv/AdBuffer;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static blacklist dupAdBuffer(Landroid/media/tv/AdBuffer;)Landroid/media/tv/AdBuffer;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 64
    if-nez p0, :cond_4

    .line 65
    const/4 p0, 0x0

    return-object p0

    .line 67
    :cond_4
    new-instance v0, Landroid/media/tv/AdBuffer;

    iget v1, p0, Landroid/media/tv/AdBuffer;->mId:I

    iget-object v2, p0, Landroid/media/tv/AdBuffer;->mMimeType:Ljava/lang/String;

    iget-object v3, p0, Landroid/media/tv/AdBuffer;->mBuffer:Landroid/os/SharedMemory;

    .line 68
    invoke-virtual {v3}, Landroid/os/SharedMemory;->getFdDup()Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    invoke-static {v3}, Landroid/os/SharedMemory;->fromFileDescriptor(Landroid/os/ParcelFileDescriptor;)Landroid/os/SharedMemory;

    move-result-object v3

    iget v4, p0, Landroid/media/tv/AdBuffer;->mOffset:I

    iget v5, p0, Landroid/media/tv/AdBuffer;->mLength:I

    iget-wide v6, p0, Landroid/media/tv/AdBuffer;->mPresentationTimeUs:J

    iget v8, p0, Landroid/media/tv/AdBuffer;->mFlags:I

    invoke-direct/range {v0 .. v8}, Landroid/media/tv/AdBuffer;-><init>(ILjava/lang/String;Landroid/os/SharedMemory;IIJI)V

    .line 67
    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 161
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getFlags()I
    .registers 2

    .line 145
    iget v0, p0, Landroid/media/tv/AdBuffer;->mFlags:I

    return v0
.end method

.method public whitelist getId()I
    .registers 2

    .line 78
    iget v0, p0, Landroid/media/tv/AdBuffer;->mId:I

    return v0
.end method

.method public whitelist getLength()I
    .registers 2

    .line 125
    iget v0, p0, Landroid/media/tv/AdBuffer;->mLength:I

    return v0
.end method

.method public whitelist getMimeType()Ljava/lang/String;
    .registers 2

    .line 88
    iget-object v0, p0, Landroid/media/tv/AdBuffer;->mMimeType:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getOffset()I
    .registers 2

    .line 116
    iget v0, p0, Landroid/media/tv/AdBuffer;->mOffset:I

    return v0
.end method

.method public whitelist getPresentationTimeUs()J
    .registers 3

    .line 134
    iget-wide v0, p0, Landroid/media/tv/AdBuffer;->mPresentationTimeUs:J

    return-wide v0
.end method

.method public whitelist getSharedMemory()Landroid/os/SharedMemory;
    .registers 2

    .line 106
    iget-object v0, p0, Landroid/media/tv/AdBuffer;->mBuffer:Landroid/os/SharedMemory;

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 150
    iget v0, p0, Landroid/media/tv/AdBuffer;->mId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 151
    iget-object v0, p0, Landroid/media/tv/AdBuffer;->mMimeType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 152
    iget-object v0, p0, Landroid/media/tv/AdBuffer;->mBuffer:Landroid/os/SharedMemory;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 153
    iget p2, p0, Landroid/media/tv/AdBuffer;->mOffset:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 154
    iget p2, p0, Landroid/media/tv/AdBuffer;->mLength:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 155
    iget-wide v0, p0, Landroid/media/tv/AdBuffer;->mPresentationTimeUs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 156
    iget p2, p0, Landroid/media/tv/AdBuffer;->mFlags:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 157
    return-void
.end method
