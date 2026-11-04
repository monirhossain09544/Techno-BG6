.class public final Landroid/proximity/RangingParams;
.super Ljava/lang/Object;
.source "RangingParams.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/proximity/RangingParams$Builder;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/proximity/RangingParams;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist DEFAULT_THRESHOLD_METERS:D = 1.5

.field private static final blacklist DEFAULT_TIMEOUT_MILLIS:I = 0x1388


# instance fields
.field private final blacklist mThresholdMeters:D

.field private final blacklist mTimeoutMillis:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmThresholdMeters(Landroid/proximity/RangingParams;)D
    .registers 3

    iget-wide v0, p0, Landroid/proximity/RangingParams;->mThresholdMeters:D

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTimeoutMillis(Landroid/proximity/RangingParams;)I
    .registers 1

    iget p0, p0, Landroid/proximity/RangingParams;->mTimeoutMillis:I

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 53
    new-instance v0, Landroid/proximity/RangingParams$1;

    invoke-direct {v0}, Landroid/proximity/RangingParams$1;-><init>()V

    sput-object v0, Landroid/proximity/RangingParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(DI)V
    .registers 4

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-wide p1, p0, Landroid/proximity/RangingParams;->mThresholdMeters:D

    .line 34
    iput p3, p0, Landroid/proximity/RangingParams;->mTimeoutMillis:I

    .line 35
    return-void
.end method

.method synthetic constructor blacklist <init>(DILandroid/proximity/RangingParams-IA;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/proximity/RangingParams;-><init>(DI)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 68
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getDefaultThresholdMeters()D
    .registers 3

    .line 38
    const-wide/high16 v0, 0x3ff8000000000000L    # 1.5

    return-wide v0
.end method

.method public blacklist getDefaultTimeoutMillis()I
    .registers 2

    .line 42
    const/16 v0, 0x1388

    return v0
.end method

.method public blacklist getThresholdMeters()D
    .registers 3

    .line 46
    iget-wide v0, p0, Landroid/proximity/RangingParams;->mThresholdMeters:D

    return-wide v0
.end method

.method public blacklist getTimeoutMillis()I
    .registers 2

    .line 50
    iget v0, p0, Landroid/proximity/RangingParams;->mTimeoutMillis:I

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RangingParams{mThresholdMeters="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/proximity/RangingParams;->mThresholdMeters:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTimeoutMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/proximity/RangingParams;->mTimeoutMillis:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 73
    iget-wide v0, p0, Landroid/proximity/RangingParams;->mThresholdMeters:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 74
    iget p2, p0, Landroid/proximity/RangingParams;->mTimeoutMillis:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 75
    return-void
.end method
