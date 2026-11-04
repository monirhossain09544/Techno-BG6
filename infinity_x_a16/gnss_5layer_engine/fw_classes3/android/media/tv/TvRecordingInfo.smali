.class public final Landroid/media/tv/TvRecordingInfo;
.super Ljava/lang/Object;
.source "TvRecordingInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/TvRecordingInfo$DaysOfWeek;,
        Landroid/media/tv/TvRecordingInfo$TvRecordingListType;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/tv/TvRecordingInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist FRIDAY:I = 0x20

.field public static final whitelist MONDAY:I = 0x2

.field public static final whitelist RECORDING_ALL:I = 0x3

.field public static final whitelist RECORDING_IN_PROGRESS:I = 0x2

.field public static final whitelist RECORDING_SCHEDULED:I = 0x1

.field public static final whitelist SATURDAY:I = 0x40

.field public static final whitelist SUNDAY:I = 0x1

.field public static final whitelist THURSDAY:I = 0x10

.field public static final whitelist TUESDAY:I = 0x4

.field public static final whitelist WEDNESDAY:I = 0x8


# instance fields
.field private blacklist mChannelUri:Landroid/net/Uri;

.field private blacklist mContentRatings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/tv/TvContentRating;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mDescription:Ljava/lang/String;

.field private blacklist mEndPaddingMillis:J

.field private blacklist mName:Ljava/lang/String;

.field private blacklist mProgramUri:Landroid/net/Uri;

.field private blacklist mRecordingDurationMillis:J

.field private blacklist mRecordingId:Ljava/lang/String;

.field private blacklist mRecordingStartTimeMillis:J

.field private blacklist mRecordingUri:Landroid/net/Uri;

.field private blacklist mRepeatDays:I

.field private blacklist mScheduledDurationMillis:J

.field private blacklist mScheduledStartTimeMillis:J

.field private blacklist mStartPaddingMillis:J


# direct methods
.method public static synthetic blacklist $r8$lambda$QQKZEhlO875Rb7Qx1ih8lmpPO9U(Landroid/media/tv/TvRecordingInfo;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/media/tv/TvRecordingInfo;->lambda$new$1(Ljava/lang/String;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 360
    new-instance v0, Landroid/media/tv/TvRecordingInfo$1;

    invoke-direct {v0}, Landroid/media/tv/TvRecordingInfo$1;-><init>()V

    sput-object v0, Landroid/media/tv/TvRecordingInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4

    .line 338
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 339
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/tv/TvRecordingInfo;->mRecordingId:Ljava/lang/String;

    .line 340
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/media/tv/TvRecordingInfo;->mStartPaddingMillis:J

    .line 341
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/media/tv/TvRecordingInfo;->mEndPaddingMillis:J

    .line 342
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/tv/TvRecordingInfo;->mRepeatDays:I

    .line 343
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/tv/TvRecordingInfo;->mName:Ljava/lang/String;

    .line 344
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/tv/TvRecordingInfo;->mDescription:Ljava/lang/String;

    .line 345
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/media/tv/TvRecordingInfo;->mScheduledStartTimeMillis:J

    .line 346
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/media/tv/TvRecordingInfo;->mScheduledDurationMillis:J

    .line 347
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/media/tv/TvRecordingInfo;->mChannelUri:Landroid/net/Uri;

    .line 348
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/media/tv/TvRecordingInfo;->mProgramUri:Landroid/net/Uri;

    .line 349
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/tv/TvRecordingInfo;->mContentRatings:Ljava/util/List;

    .line 350
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 351
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 352
    new-instance v1, Landroid/media/tv/TvRecordingInfo$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Landroid/media/tv/TvRecordingInfo$$ExternalSyntheticLambda1;-><init>(Landroid/media/tv/TvRecordingInfo;)V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 354
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/media/tv/TvRecordingInfo;->mRecordingUri:Landroid/net/Uri;

    .line 355
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/media/tv/TvRecordingInfo;->mRecordingDurationMillis:J

    .line 356
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/media/tv/TvRecordingInfo;->mRecordingStartTimeMillis:J

    .line 357
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/media/tv/TvRecordingInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/media/tv/TvRecordingInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;JJILjava/lang/String;Ljava/lang/String;JJLandroid/net/Uri;Landroid/net/Uri;Ljava/util/List;Landroid/net/Uri;JJ)V
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JJI",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "JJ",
            "Landroid/net/Uri;",
            "Landroid/net/Uri;",
            "Ljava/util/List<",
            "Landroid/media/tv/TvContentRating;",
            ">;",
            "Landroid/net/Uri;",
            "JJ)V"
        }
    .end annotation

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput-object p1, p0, Landroid/media/tv/TvRecordingInfo;->mRecordingId:Ljava/lang/String;

    .line 103
    iput-wide p2, p0, Landroid/media/tv/TvRecordingInfo;->mStartPaddingMillis:J

    .line 104
    iput-wide p4, p0, Landroid/media/tv/TvRecordingInfo;->mEndPaddingMillis:J

    .line 105
    iput p6, p0, Landroid/media/tv/TvRecordingInfo;->mRepeatDays:I

    .line 106
    iput-object p7, p0, Landroid/media/tv/TvRecordingInfo;->mName:Ljava/lang/String;

    .line 107
    iput-object p8, p0, Landroid/media/tv/TvRecordingInfo;->mDescription:Ljava/lang/String;

    .line 108
    iput-wide p9, p0, Landroid/media/tv/TvRecordingInfo;->mScheduledStartTimeMillis:J

    .line 109
    iput-wide p11, p0, Landroid/media/tv/TvRecordingInfo;->mScheduledDurationMillis:J

    .line 110
    iput-object p13, p0, Landroid/media/tv/TvRecordingInfo;->mChannelUri:Landroid/net/Uri;

    .line 111
    iput-object p14, p0, Landroid/media/tv/TvRecordingInfo;->mProgramUri:Landroid/net/Uri;

    .line 112
    iput-object p15, p0, Landroid/media/tv/TvRecordingInfo;->mContentRatings:Ljava/util/List;

    .line 113
    move-object/from16 p1, p16

    iput-object p1, p0, Landroid/media/tv/TvRecordingInfo;->mRecordingUri:Landroid/net/Uri;

    .line 114
    move-wide/from16 p1, p17

    iput-wide p1, p0, Landroid/media/tv/TvRecordingInfo;->mRecordingStartTimeMillis:J

    .line 115
    move-wide/from16 p1, p19

    iput-wide p1, p0, Landroid/media/tv/TvRecordingInfo;->mRecordingDurationMillis:J

    .line 116
    return-void
.end method

.method private synthetic blacklist lambda$new$1(Ljava/lang/String;)V
    .registers 3

    .line 353
    iget-object v0, p0, Landroid/media/tv/TvRecordingInfo;->mContentRatings:Ljava/util/List;

    invoke-static {p1}, Landroid/media/tv/TvContentRating;->unflattenFromString(Ljava/lang/String;)Landroid/media/tv/TvContentRating;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic blacklist lambda$writeToParcel$0(Ljava/util/List;Landroid/media/tv/TvContentRating;)V
    .registers 2

    .line 331
    invoke-virtual {p1}, Landroid/media/tv/TvContentRating;->flattenToString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 309
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getChannelUri()Landroid/net/Uri;
    .registers 2

    .line 245
    iget-object v0, p0, Landroid/media/tv/TvRecordingInfo;->mChannelUri:Landroid/net/Uri;

    return-object v0
.end method

.method public whitelist getContentRatings()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/tv/TvContentRating;",
            ">;"
        }
    .end annotation

    .line 268
    iget-object v0, p0, Landroid/media/tv/TvRecordingInfo;->mContentRatings:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getDescription()Ljava/lang/String;
    .registers 2

    .line 211
    iget-object v0, p0, Landroid/media/tv/TvRecordingInfo;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getEndPaddingMillis()J
    .registers 3

    .line 147
    iget-wide v0, p0, Landroid/media/tv/TvRecordingInfo;->mEndPaddingMillis:J

    return-wide v0
.end method

.method public whitelist getName()Ljava/lang/String;
    .registers 2

    .line 190
    iget-object v0, p0, Landroid/media/tv/TvRecordingInfo;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getProgramUri()Landroid/net/Uri;
    .registers 2

    .line 258
    iget-object v0, p0, Landroid/media/tv/TvRecordingInfo;->mProgramUri:Landroid/net/Uri;

    return-object v0
.end method

.method public whitelist getRecordingDurationMillis()J
    .registers 3

    .line 304
    iget-wide v0, p0, Landroid/media/tv/TvRecordingInfo;->mRecordingDurationMillis:J

    return-wide v0
.end method

.method public whitelist getRecordingId()Ljava/lang/String;
    .registers 2

    .line 123
    iget-object v0, p0, Landroid/media/tv/TvRecordingInfo;->mRecordingId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getRecordingStartTimeMillis()J
    .registers 3

    .line 291
    iget-wide v0, p0, Landroid/media/tv/TvRecordingInfo;->mRecordingStartTimeMillis:J

    return-wide v0
.end method

.method public whitelist getRecordingUri()Landroid/net/Uri;
    .registers 2

    .line 278
    iget-object v0, p0, Landroid/media/tv/TvRecordingInfo;->mRecordingUri:Landroid/net/Uri;

    return-object v0
.end method

.method public whitelist getRepeatDays()I
    .registers 2

    .line 179
    iget v0, p0, Landroid/media/tv/TvRecordingInfo;->mRepeatDays:I

    return v0
.end method

.method public whitelist getScheduledDurationMillis()J
    .registers 3

    .line 237
    iget-wide v0, p0, Landroid/media/tv/TvRecordingInfo;->mScheduledDurationMillis:J

    return-wide v0
.end method

.method public whitelist getScheduledStartTimeMillis()J
    .registers 3

    .line 229
    iget-wide v0, p0, Landroid/media/tv/TvRecordingInfo;->mScheduledStartTimeMillis:J

    return-wide v0
.end method

.method public whitelist getStartPaddingMillis()J
    .registers 3

    .line 135
    iget-wide v0, p0, Landroid/media/tv/TvRecordingInfo;->mStartPaddingMillis:J

    return-wide v0
.end method

.method public whitelist setDescription(Ljava/lang/String;)V
    .registers 2

    .line 221
    iput-object p1, p0, Landroid/media/tv/TvRecordingInfo;->mDescription:Ljava/lang/String;

    .line 222
    return-void
.end method

.method public whitelist setName(Ljava/lang/String;)V
    .registers 2

    .line 200
    iput-object p1, p0, Landroid/media/tv/TvRecordingInfo;->mName:Ljava/lang/String;

    .line 201
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 6

    .line 320
    iget-object p2, p0, Landroid/media/tv/TvRecordingInfo;->mRecordingId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 321
    iget-wide v0, p0, Landroid/media/tv/TvRecordingInfo;->mStartPaddingMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 322
    iget-wide v0, p0, Landroid/media/tv/TvRecordingInfo;->mEndPaddingMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 323
    iget p2, p0, Landroid/media/tv/TvRecordingInfo;->mRepeatDays:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 324
    iget-object p2, p0, Landroid/media/tv/TvRecordingInfo;->mName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 325
    iget-object p2, p0, Landroid/media/tv/TvRecordingInfo;->mDescription:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 326
    iget-wide v0, p0, Landroid/media/tv/TvRecordingInfo;->mScheduledStartTimeMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 327
    iget-wide v0, p0, Landroid/media/tv/TvRecordingInfo;->mScheduledDurationMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 328
    iget-object p2, p0, Landroid/media/tv/TvRecordingInfo;->mChannelUri:Landroid/net/Uri;

    const/4 v0, 0x0

    if-nez p2, :cond_2f

    move-object p2, v0

    goto :goto_35

    :cond_2f
    iget-object p2, p0, Landroid/media/tv/TvRecordingInfo;->mChannelUri:Landroid/net/Uri;

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_35
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 329
    iget-object p2, p0, Landroid/media/tv/TvRecordingInfo;->mProgramUri:Landroid/net/Uri;

    if-nez p2, :cond_3e

    move-object p2, v0

    goto :goto_44

    :cond_3e
    iget-object p2, p0, Landroid/media/tv/TvRecordingInfo;->mProgramUri:Landroid/net/Uri;

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_44
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 330
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 331
    iget-object v1, p0, Landroid/media/tv/TvRecordingInfo;->mContentRatings:Ljava/util/List;

    new-instance v2, Landroid/media/tv/TvRecordingInfo$$ExternalSyntheticLambda0;

    invoke-direct {v2, p2}, Landroid/media/tv/TvRecordingInfo$$ExternalSyntheticLambda0;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v2}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 332
    iget-object p2, p0, Landroid/media/tv/TvRecordingInfo;->mContentRatings:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 333
    iget-object p2, p0, Landroid/media/tv/TvRecordingInfo;->mRecordingUri:Landroid/net/Uri;

    if-nez p2, :cond_60

    goto :goto_66

    :cond_60
    iget-object p2, p0, Landroid/media/tv/TvRecordingInfo;->mProgramUri:Landroid/net/Uri;

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_66
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 334
    iget-wide v0, p0, Landroid/media/tv/TvRecordingInfo;->mRecordingDurationMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 335
    iget-wide v0, p0, Landroid/media/tv/TvRecordingInfo;->mRecordingStartTimeMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 336
    return-void
.end method
