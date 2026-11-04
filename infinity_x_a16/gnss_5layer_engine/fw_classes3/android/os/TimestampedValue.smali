.class public final Landroid/os/TimestampedValue;
.super Ljava/lang/Object;
.source "TimestampedValue.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/TimestampedValue<",
            "*>;>;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mReferenceTimeMillis:J

.field private final blacklist mValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 98
    new-instance v0, Landroid/os/TimestampedValue$1;

    invoke-direct {v0}, Landroid/os/TimestampedValue$1;-><init>()V

    sput-object v0, Landroid/os/TimestampedValue;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(JLjava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTT;)V"
        }
    .end annotation

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-wide p1, p0, Landroid/os/TimestampedValue;->mReferenceTimeMillis:J

    .line 46
    iput-object p3, p0, Landroid/os/TimestampedValue;->mValue:Ljava/lang/Object;

    .line 47
    return-void
.end method

.method public static blacklist referenceTimeDifference(Landroid/os/TimestampedValue;Landroid/os/TimestampedValue;)J
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/TimestampedValue<",
            "*>;",
            "Landroid/os/TimestampedValue<",
            "*>;)J"
        }
    .end annotation

    .line 94
    iget-wide v0, p0, Landroid/os/TimestampedValue;->mReferenceTimeMillis:J

    iget-wide p0, p1, Landroid/os/TimestampedValue;->mReferenceTimeMillis:J

    sub-long/2addr v0, p0

    return-wide v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 122
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 8

    .line 65
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 66
    return v0

    .line 68
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_29

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_29

    .line 71
    :cond_12
    check-cast p1, Landroid/os/TimestampedValue;

    .line 72
    iget-wide v2, p0, Landroid/os/TimestampedValue;->mReferenceTimeMillis:J

    iget-wide v4, p1, Landroid/os/TimestampedValue;->mReferenceTimeMillis:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_27

    iget-object v2, p0, Landroid/os/TimestampedValue;->mValue:Ljava/lang/Object;

    iget-object p1, p1, Landroid/os/TimestampedValue;->mValue:Ljava/lang/Object;

    .line 73
    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_27

    goto :goto_28

    :cond_27
    move v0, v1

    .line 72
    :goto_28
    return v0

    .line 69
    :cond_29
    :goto_29
    return v1
.end method

.method public blacklist getReferenceTimeMillis()J
    .registers 3

    .line 51
    iget-wide v0, p0, Landroid/os/TimestampedValue;->mReferenceTimeMillis:J

    return-wide v0
.end method

.method public blacklist getValue()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 60
    iget-object v0, p0, Landroid/os/TimestampedValue;->mValue:Ljava/lang/Object;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 78
    iget-wide v0, p0, Landroid/os/TimestampedValue;->mReferenceTimeMillis:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-object v1, p0, Landroid/os/TimestampedValue;->mValue:Ljava/lang/Object;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TimestampedValue{mReferenceTimeMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/os/TimestampedValue;->mReferenceTimeMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/TimestampedValue;->mValue:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

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

    .line 127
    iget-wide v0, p0, Landroid/os/TimestampedValue;->mReferenceTimeMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 128
    iget-object p2, p0, Landroid/os/TimestampedValue;->mValue:Ljava/lang/Object;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 129
    return-void
.end method
