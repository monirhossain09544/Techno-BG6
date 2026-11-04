.class public final Lcom/android/internal/app/MessageSamplingConfig;
.super Ljava/lang/Object;
.source "MessageSamplingConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/internal/app/MessageSamplingConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mAcceptableLeftDistance:I

.field private final blacklist mExpirationTimeSinceBootMillis:J

.field private final blacklist mSampledOpCode:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 162
    new-instance v0, Lcom/android/internal/app/MessageSamplingConfig$1;

    invoke-direct {v0}, Lcom/android/internal/app/MessageSamplingConfig$1;-><init>()V

    sput-object v0, Lcom/android/internal/app/MessageSamplingConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(IIJ)V
    .registers 15

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput p1, p0, Lcom/android/internal/app/MessageSamplingConfig;->mSampledOpCode:I

    .line 76
    const-class v1, Landroid/annotation/IntRange;

    iget v3, p0, Lcom/android/internal/app/MessageSamplingConfig;->mSampledOpCode:I

    const-string v7, "to"

    const-wide/16 v8, 0xa9

    const/4 v2, 0x0

    const-string v4, "from"

    const-wide/16 v5, -0x1

    invoke-static/range {v1 .. v9}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/IntRange;ILjava/lang/String;JLjava/lang/String;J)V

    .line 80
    iput p2, p0, Lcom/android/internal/app/MessageSamplingConfig;->mAcceptableLeftDistance:I

    .line 81
    const-class v1, Landroid/annotation/IntRange;

    iget v3, p0, Lcom/android/internal/app/MessageSamplingConfig;->mAcceptableLeftDistance:I

    const-string v7, "to"

    const-string v4, "from"

    const-wide/16 v5, 0x0

    invoke-static/range {v1 .. v9}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/IntRange;ILjava/lang/String;JLjava/lang/String;J)V

    .line 85
    iput-wide p3, p0, Lcom/android/internal/app/MessageSamplingConfig;->mExpirationTimeSinceBootMillis:J

    .line 86
    const-class v1, Landroid/annotation/IntRange;

    iget-wide v2, p0, Lcom/android/internal/app/MessageSamplingConfig;->mExpirationTimeSinceBootMillis:J

    const-string v4, "from"

    move-object v0, v1

    const/4 v1, 0x0

    invoke-static/range {v0 .. v6}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/IntRange;JLjava/lang/String;J)V

    .line 91
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 25

    .line 135
    move-object/from16 v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 139
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 140
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 141
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 143
    iput v1, v0, Lcom/android/internal/app/MessageSamplingConfig;->mSampledOpCode:I

    .line 144
    const-class v5, Landroid/annotation/IntRange;

    iget v7, v0, Lcom/android/internal/app/MessageSamplingConfig;->mSampledOpCode:I

    const-string v11, "to"

    const-wide/16 v12, 0xa9

    const/4 v6, 0x0

    const-string v8, "from"

    const-wide/16 v9, -0x1

    invoke-static/range {v5 .. v13}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/IntRange;ILjava/lang/String;JLjava/lang/String;J)V

    .line 148
    iput v2, v0, Lcom/android/internal/app/MessageSamplingConfig;->mAcceptableLeftDistance:I

    .line 149
    const-class v14, Landroid/annotation/IntRange;

    iget v1, v0, Lcom/android/internal/app/MessageSamplingConfig;->mAcceptableLeftDistance:I

    const-string v20, "to"

    const-wide/16 v21, 0xa9

    const/4 v15, 0x0

    const-string v17, "from"

    const-wide/16 v18, 0x0

    move/from16 v16, v1

    invoke-static/range {v14 .. v22}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/IntRange;ILjava/lang/String;JLjava/lang/String;J)V

    .line 153
    iput-wide v3, v0, Lcom/android/internal/app/MessageSamplingConfig;->mExpirationTimeSinceBootMillis:J

    .line 154
    const-class v5, Landroid/annotation/IntRange;

    iget-wide v7, v0, Lcom/android/internal/app/MessageSamplingConfig;->mExpirationTimeSinceBootMillis:J

    const-string v9, "from"

    const-wide/16 v10, 0x0

    invoke-static/range {v5 .. v11}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/IntRange;JLjava/lang/String;J)V

    .line 159
    return-void
.end method

.method private blacklist __metadata()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 181
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 130
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getAcceptableLeftDistance()I
    .registers 2

    .line 106
    iget v0, p0, Lcom/android/internal/app/MessageSamplingConfig;->mAcceptableLeftDistance:I

    return v0
.end method

.method public blacklist getExpirationTimeSinceBootMillis()J
    .registers 3

    .line 114
    iget-wide v0, p0, Lcom/android/internal/app/MessageSamplingConfig;->mExpirationTimeSinceBootMillis:J

    return-wide v0
.end method

.method public blacklist getSampledOpCode()I
    .registers 2

    .line 98
    iget v0, p0, Lcom/android/internal/app/MessageSamplingConfig;->mSampledOpCode:I

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 123
    iget p2, p0, Lcom/android/internal/app/MessageSamplingConfig;->mSampledOpCode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 124
    iget p2, p0, Lcom/android/internal/app/MessageSamplingConfig;->mAcceptableLeftDistance:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 125
    iget-wide v0, p0, Lcom/android/internal/app/MessageSamplingConfig;->mExpirationTimeSinceBootMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 126
    return-void
.end method
