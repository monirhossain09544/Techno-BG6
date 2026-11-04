.class public final Landroid/service/rotationresolver/RotationResolutionRequest;
.super Ljava/lang/Object;
.source "RotationResolutionRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/service/rotationresolver/RotationResolutionRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mCurrentRotation:I

.field private final blacklist mForegroundPackageName:Ljava/lang/String;

.field private final blacklist mProposedRotation:I

.field private final blacklist mShouldUseCamera:Z

.field private final blacklist mTimeoutMillis:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 219
    new-instance v0, Landroid/service/rotationresolver/RotationResolutionRequest$1;

    invoke-direct {v0}, Landroid/service/rotationresolver/RotationResolutionRequest$1;-><init>()V

    sput-object v0, Landroid/service/rotationresolver/RotationResolutionRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 9

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 194
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    .line 195
    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    .line 196
    :goto_e
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 197
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 198
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 199
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 201
    iput-object v1, p0, Landroid/service/rotationresolver/RotationResolutionRequest;->mForegroundPackageName:Ljava/lang/String;

    .line 202
    const-class p1, Landroid/annotation/NonNull;

    iget-object v1, p0, Landroid/service/rotationresolver/RotationResolutionRequest;->mForegroundPackageName:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {p1, v6, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 204
    iput v2, p0, Landroid/service/rotationresolver/RotationResolutionRequest;->mCurrentRotation:I

    .line 205
    const-class p1, Landroid/view/Surface$Rotation;

    iget v1, p0, Landroid/service/rotationresolver/RotationResolutionRequest;->mCurrentRotation:I

    invoke-static {p1, v6, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    .line 207
    iput v3, p0, Landroid/service/rotationresolver/RotationResolutionRequest;->mProposedRotation:I

    .line 208
    const-class p1, Landroid/view/Surface$Rotation;

    iget v1, p0, Landroid/service/rotationresolver/RotationResolutionRequest;->mProposedRotation:I

    invoke-static {p1, v6, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    .line 210
    iput-boolean v0, p0, Landroid/service/rotationresolver/RotationResolutionRequest;->mShouldUseCamera:Z

    .line 211
    iput-wide v4, p0, Landroid/service/rotationresolver/RotationResolutionRequest;->mTimeoutMillis:J

    .line 212
    const-class p1, Landroid/annotation/DurationMillisLong;

    iget-wide v0, p0, Landroid/service/rotationresolver/RotationResolutionRequest;->mTimeoutMillis:J

    invoke-static {p1, v6, v0, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;J)V

    .line 216
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;IIZJ)V
    .registers 9

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput-object p1, p0, Landroid/service/rotationresolver/RotationResolutionRequest;->mForegroundPackageName:Ljava/lang/String;

    .line 97
    const-class p1, Landroid/annotation/NonNull;

    iget-object v0, p0, Landroid/service/rotationresolver/RotationResolutionRequest;->mForegroundPackageName:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 99
    iput p2, p0, Landroid/service/rotationresolver/RotationResolutionRequest;->mCurrentRotation:I

    .line 100
    const-class p1, Landroid/view/Surface$Rotation;

    iget p2, p0, Landroid/service/rotationresolver/RotationResolutionRequest;->mCurrentRotation:I

    invoke-static {p1, v1, p2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    .line 102
    iput p3, p0, Landroid/service/rotationresolver/RotationResolutionRequest;->mProposedRotation:I

    .line 103
    const-class p1, Landroid/view/Surface$Rotation;

    iget p2, p0, Landroid/service/rotationresolver/RotationResolutionRequest;->mProposedRotation:I

    invoke-static {p1, v1, p2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    .line 105
    iput-boolean p4, p0, Landroid/service/rotationresolver/RotationResolutionRequest;->mShouldUseCamera:Z

    .line 106
    iput-wide p5, p0, Landroid/service/rotationresolver/RotationResolutionRequest;->mTimeoutMillis:J

    .line 107
    const-class p1, Landroid/annotation/DurationMillisLong;

    iget-wide p2, p0, Landroid/service/rotationresolver/RotationResolutionRequest;->mTimeoutMillis:J

    invoke-static {p1, v1, p2, p3}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;J)V

    .line 111
    return-void
.end method

.method private blacklist __metadata()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 238
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 185
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getCurrentRotation()I
    .registers 2

    .line 126
    iget v0, p0, Landroid/service/rotationresolver/RotationResolutionRequest;->mCurrentRotation:I

    return v0
.end method

.method public whitelist getForegroundPackageName()Ljava/lang/String;
    .registers 2

    .line 118
    iget-object v0, p0, Landroid/service/rotationresolver/RotationResolutionRequest;->mForegroundPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getProposedRotation()I
    .registers 2

    .line 134
    iget v0, p0, Landroid/service/rotationresolver/RotationResolutionRequest;->mProposedRotation:I

    return v0
.end method

.method public whitelist getTimeoutMillis()J
    .registers 3

    .line 150
    iget-wide v0, p0, Landroid/service/rotationresolver/RotationResolutionRequest;->mTimeoutMillis:J

    return-wide v0
.end method

.method public whitelist shouldUseCamera()Z
    .registers 2

    .line 142
    iget-boolean v0, p0, Landroid/service/rotationresolver/RotationResolutionRequest;->mShouldUseCamera:Z

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RotationResolutionRequest { foregroundPackageName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/rotationresolver/RotationResolutionRequest;->mForegroundPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", currentRotation = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/service/rotationresolver/RotationResolutionRequest;->mCurrentRotation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", proposedRotation = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/service/rotationresolver/RotationResolutionRequest;->mProposedRotation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", shouldUseCamera = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/service/rotationresolver/RotationResolutionRequest;->mShouldUseCamera:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", timeoutMillis = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/service/rotationresolver/RotationResolutionRequest;->mTimeoutMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 174
    nop

    .line 175
    iget-boolean p2, p0, Landroid/service/rotationresolver/RotationResolutionRequest;->mShouldUseCamera:Z

    if-eqz p2, :cond_9

    const/16 p2, 0x8

    int-to-byte p2, p2

    goto :goto_a

    :cond_9
    const/4 p2, 0x0

    .line 176
    :goto_a
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 177
    iget-object p2, p0, Landroid/service/rotationresolver/RotationResolutionRequest;->mForegroundPackageName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 178
    iget p2, p0, Landroid/service/rotationresolver/RotationResolutionRequest;->mCurrentRotation:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 179
    iget p2, p0, Landroid/service/rotationresolver/RotationResolutionRequest;->mProposedRotation:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 180
    iget-wide v0, p0, Landroid/service/rotationresolver/RotationResolutionRequest;->mTimeoutMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 181
    return-void
.end method
