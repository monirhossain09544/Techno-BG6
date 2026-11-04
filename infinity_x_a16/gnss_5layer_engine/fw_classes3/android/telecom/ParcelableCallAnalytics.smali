.class public Landroid/telecom/ParcelableCallAnalytics;
.super Ljava/lang/Object;
.source "ParcelableCallAnalytics.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telecom/ParcelableCallAnalytics$AnalyticsEvent;,
        Landroid/telecom/ParcelableCallAnalytics$EventTiming;,
        Landroid/telecom/ParcelableCallAnalytics$VideoEvent;
    }
.end annotation


# static fields
.field public static final whitelist CALLTYPE_INCOMING:I = 0x1

.field public static final whitelist CALLTYPE_OUTGOING:I = 0x2

.field public static final whitelist CALLTYPE_UNKNOWN:I = 0x0

.field public static final whitelist CDMA_PHONE:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telecom/ParcelableCallAnalytics;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist GSM_PHONE:I = 0x2

.field public static final whitelist IMS_PHONE:I = 0x4

.field public static final whitelist MILLIS_IN_1_SECOND:J = 0x3e8L

.field public static final whitelist MILLIS_IN_5_MINUTES:J = 0x493e0L

.field public static final whitelist SIP_PHONE:I = 0x8

.field public static final whitelist STILL_CONNECTED:I = -0x1

.field public static final whitelist THIRD_PARTY_PHONE:I = 0x10


# instance fields
.field private final greylist-max-o analyticsEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telecom/ParcelableCallAnalytics$AnalyticsEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o callDurationMillis:J

.field private blacklist callSource:I

.field private final greylist-max-o callTechnologies:I

.field private final greylist-max-o callTerminationCode:I

.field private final greylist-max-o callType:I

.field private final greylist-max-o connectionService:Ljava/lang/String;

.field private final greylist-max-o eventTimings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telecom/ParcelableCallAnalytics$EventTiming;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o isAdditionalCall:Z

.field private final greylist-max-o isCreatedFromExistingConnection:Z

.field private final greylist-max-o isEmergencyCall:Z

.field private final greylist-max-o isInterrupted:Z

.field private greylist-max-o isVideoCall:Z

.field private final greylist-max-o startTimeMillis:J

.field private greylist-max-o videoEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telecom/ParcelableCallAnalytics$VideoEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 272
    new-instance v0, Landroid/telecom/ParcelableCallAnalytics$1;

    invoke-direct {v0}, Landroid/telecom/ParcelableCallAnalytics$1;-><init>()V

    sput-object v0, Landroid/telecom/ParcelableCallAnalytics;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(JJIZZIIZLjava/lang/String;ZLjava/util/List;Ljava/util/List;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJIZZIIZ",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/List<",
            "Landroid/telecom/ParcelableCallAnalytics$AnalyticsEvent;",
            ">;",
            "Ljava/util/List<",
            "Landroid/telecom/ParcelableCallAnalytics$EventTiming;",
            ">;)V"
        }
    .end annotation

    .line 337
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 325
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/telecom/ParcelableCallAnalytics;->isVideoCall:Z

    .line 331
    iput v0, p0, Landroid/telecom/ParcelableCallAnalytics;->callSource:I

    .line 338
    iput-wide p1, p0, Landroid/telecom/ParcelableCallAnalytics;->startTimeMillis:J

    .line 339
    iput-wide p3, p0, Landroid/telecom/ParcelableCallAnalytics;->callDurationMillis:J

    .line 340
    iput p5, p0, Landroid/telecom/ParcelableCallAnalytics;->callType:I

    .line 341
    iput-boolean p6, p0, Landroid/telecom/ParcelableCallAnalytics;->isAdditionalCall:Z

    .line 342
    iput-boolean p7, p0, Landroid/telecom/ParcelableCallAnalytics;->isInterrupted:Z

    .line 343
    iput p8, p0, Landroid/telecom/ParcelableCallAnalytics;->callTechnologies:I

    .line 344
    iput p9, p0, Landroid/telecom/ParcelableCallAnalytics;->callTerminationCode:I

    .line 345
    iput-boolean p10, p0, Landroid/telecom/ParcelableCallAnalytics;->isEmergencyCall:Z

    .line 346
    iput-object p11, p0, Landroid/telecom/ParcelableCallAnalytics;->connectionService:Ljava/lang/String;

    .line 347
    iput-boolean p12, p0, Landroid/telecom/ParcelableCallAnalytics;->isCreatedFromExistingConnection:Z

    .line 348
    iput-object p13, p0, Landroid/telecom/ParcelableCallAnalytics;->analyticsEvents:Ljava/util/List;

    .line 349
    iput-object p14, p0, Landroid/telecom/ParcelableCallAnalytics;->eventTimings:Ljava/util/List;

    .line 350
    return-void
.end method

.method public constructor whitelist <init>(Landroid/os/Parcel;)V
    .registers 4

    .line 352
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 325
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/telecom/ParcelableCallAnalytics;->isVideoCall:Z

    .line 331
    iput v0, p0, Landroid/telecom/ParcelableCallAnalytics;->callSource:I

    .line 353
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/telecom/ParcelableCallAnalytics;->startTimeMillis:J

    .line 354
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/telecom/ParcelableCallAnalytics;->callDurationMillis:J

    .line 355
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telecom/ParcelableCallAnalytics;->callType:I

    .line 356
    invoke-static {p1}, Landroid/telecom/ParcelableCallAnalytics;->readByteAsBoolean(Landroid/os/Parcel;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/telecom/ParcelableCallAnalytics;->isAdditionalCall:Z

    .line 357
    invoke-static {p1}, Landroid/telecom/ParcelableCallAnalytics;->readByteAsBoolean(Landroid/os/Parcel;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/telecom/ParcelableCallAnalytics;->isInterrupted:Z

    .line 358
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telecom/ParcelableCallAnalytics;->callTechnologies:I

    .line 359
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telecom/ParcelableCallAnalytics;->callTerminationCode:I

    .line 360
    invoke-static {p1}, Landroid/telecom/ParcelableCallAnalytics;->readByteAsBoolean(Landroid/os/Parcel;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/telecom/ParcelableCallAnalytics;->isEmergencyCall:Z

    .line 361
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/ParcelableCallAnalytics;->connectionService:Ljava/lang/String;

    .line 362
    invoke-static {p1}, Landroid/telecom/ParcelableCallAnalytics;->readByteAsBoolean(Landroid/os/Parcel;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/telecom/ParcelableCallAnalytics;->isCreatedFromExistingConnection:Z

    .line 363
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telecom/ParcelableCallAnalytics;->analyticsEvents:Ljava/util/List;

    .line 364
    iget-object v0, p0, Landroid/telecom/ParcelableCallAnalytics;->analyticsEvents:Ljava/util/List;

    sget-object v1, Landroid/telecom/ParcelableCallAnalytics$AnalyticsEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 365
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telecom/ParcelableCallAnalytics;->eventTimings:Ljava/util/List;

    .line 366
    iget-object v0, p0, Landroid/telecom/ParcelableCallAnalytics;->eventTimings:Ljava/util/List;

    sget-object v1, Landroid/telecom/ParcelableCallAnalytics$EventTiming;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 367
    invoke-static {p1}, Landroid/telecom/ParcelableCallAnalytics;->readByteAsBoolean(Landroid/os/Parcel;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/telecom/ParcelableCallAnalytics;->isVideoCall:Z

    .line 368
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telecom/ParcelableCallAnalytics;->videoEvents:Ljava/util/List;

    .line 369
    iget-object v0, p0, Landroid/telecom/ParcelableCallAnalytics;->videoEvents:Ljava/util/List;

    sget-object v1, Landroid/telecom/ParcelableCallAnalytics$VideoEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 370
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/telecom/ParcelableCallAnalytics;->callSource:I

    .line 371
    return-void
.end method

.method private static greylist-max-o readByteAsBoolean(Landroid/os/Parcel;)Z
    .registers 2

    .line 479
    invoke-virtual {p0}, Landroid/os/Parcel;->readByte()B

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_8

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method private static greylist-max-o writeBooleanAsByte(Landroid/os/Parcel;Z)V
    .registers 2

    .line 475
    int-to-byte p1, p1

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeByte(B)V

    .line 476
    return-void
.end method


# virtual methods
.method public whitelist analyticsEvents()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telecom/ParcelableCallAnalytics$AnalyticsEvent;",
            ">;"
        }
    .end annotation

    .line 447
    iget-object v0, p0, Landroid/telecom/ParcelableCallAnalytics;->analyticsEvents:Ljava/util/List;

    return-object v0
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 471
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getCallDurationMillis()J
    .registers 3

    .line 411
    iget-wide v0, p0, Landroid/telecom/ParcelableCallAnalytics;->callDurationMillis:J

    return-wide v0
.end method

.method public blacklist getCallSource()I
    .registers 2

    .line 466
    iget v0, p0, Landroid/telecom/ParcelableCallAnalytics;->callSource:I

    return v0
.end method

.method public whitelist getCallTechnologies()I
    .registers 2

    .line 427
    iget v0, p0, Landroid/telecom/ParcelableCallAnalytics;->callTechnologies:I

    return v0
.end method

.method public whitelist getCallTerminationCode()I
    .registers 2

    .line 431
    iget v0, p0, Landroid/telecom/ParcelableCallAnalytics;->callTerminationCode:I

    return v0
.end method

.method public whitelist getCallType()I
    .registers 2

    .line 415
    iget v0, p0, Landroid/telecom/ParcelableCallAnalytics;->callType:I

    return v0
.end method

.method public whitelist getConnectionService()Ljava/lang/String;
    .registers 2

    .line 439
    iget-object v0, p0, Landroid/telecom/ParcelableCallAnalytics;->connectionService:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getEventTimings()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telecom/ParcelableCallAnalytics$EventTiming;",
            ">;"
        }
    .end annotation

    .line 451
    iget-object v0, p0, Landroid/telecom/ParcelableCallAnalytics;->eventTimings:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getStartTimeMillis()J
    .registers 3

    .line 407
    iget-wide v0, p0, Landroid/telecom/ParcelableCallAnalytics;->startTimeMillis:J

    return-wide v0
.end method

.method public greylist-max-o getVideoEvents()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telecom/ParcelableCallAnalytics$VideoEvent;",
            ">;"
        }
    .end annotation

    .line 461
    iget-object v0, p0, Landroid/telecom/ParcelableCallAnalytics;->videoEvents:Ljava/util/List;

    return-object v0
.end method

.method public whitelist isAdditionalCall()Z
    .registers 2

    .line 419
    iget-boolean v0, p0, Landroid/telecom/ParcelableCallAnalytics;->isAdditionalCall:Z

    return v0
.end method

.method public whitelist isCreatedFromExistingConnection()Z
    .registers 2

    .line 443
    iget-boolean v0, p0, Landroid/telecom/ParcelableCallAnalytics;->isCreatedFromExistingConnection:Z

    return v0
.end method

.method public whitelist isEmergencyCall()Z
    .registers 2

    .line 435
    iget-boolean v0, p0, Landroid/telecom/ParcelableCallAnalytics;->isEmergencyCall:Z

    return v0
.end method

.method public whitelist isInterrupted()Z
    .registers 2

    .line 423
    iget-boolean v0, p0, Landroid/telecom/ParcelableCallAnalytics;->isInterrupted:Z

    return v0
.end method

.method public greylist-max-o isVideoCall()Z
    .registers 2

    .line 456
    iget-boolean v0, p0, Landroid/telecom/ParcelableCallAnalytics;->isVideoCall:Z

    return v0
.end method

.method public blacklist setCallSource(I)V
    .registers 2

    .line 403
    iput p1, p0, Landroid/telecom/ParcelableCallAnalytics;->callSource:I

    .line 404
    return-void
.end method

.method public greylist-max-o setIsVideoCall(Z)V
    .registers 2

    .line 393
    iput-boolean p1, p0, Landroid/telecom/ParcelableCallAnalytics;->isVideoCall:Z

    .line 394
    return-void
.end method

.method public greylist-max-o setVideoEvents(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telecom/ParcelableCallAnalytics$VideoEvent;",
            ">;)V"
        }
    .end annotation

    .line 398
    iput-object p1, p0, Landroid/telecom/ParcelableCallAnalytics;->videoEvents:Ljava/util/List;

    .line 399
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 374
    iget-wide v0, p0, Landroid/telecom/ParcelableCallAnalytics;->startTimeMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 375
    iget-wide v0, p0, Landroid/telecom/ParcelableCallAnalytics;->callDurationMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 376
    iget p2, p0, Landroid/telecom/ParcelableCallAnalytics;->callType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 377
    iget-boolean p2, p0, Landroid/telecom/ParcelableCallAnalytics;->isAdditionalCall:Z

    invoke-static {p1, p2}, Landroid/telecom/ParcelableCallAnalytics;->writeBooleanAsByte(Landroid/os/Parcel;Z)V

    .line 378
    iget-boolean p2, p0, Landroid/telecom/ParcelableCallAnalytics;->isInterrupted:Z

    invoke-static {p1, p2}, Landroid/telecom/ParcelableCallAnalytics;->writeBooleanAsByte(Landroid/os/Parcel;Z)V

    .line 379
    iget p2, p0, Landroid/telecom/ParcelableCallAnalytics;->callTechnologies:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 380
    iget p2, p0, Landroid/telecom/ParcelableCallAnalytics;->callTerminationCode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 381
    iget-boolean p2, p0, Landroid/telecom/ParcelableCallAnalytics;->isEmergencyCall:Z

    invoke-static {p1, p2}, Landroid/telecom/ParcelableCallAnalytics;->writeBooleanAsByte(Landroid/os/Parcel;Z)V

    .line 382
    iget-object p2, p0, Landroid/telecom/ParcelableCallAnalytics;->connectionService:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 383
    iget-boolean p2, p0, Landroid/telecom/ParcelableCallAnalytics;->isCreatedFromExistingConnection:Z

    invoke-static {p1, p2}, Landroid/telecom/ParcelableCallAnalytics;->writeBooleanAsByte(Landroid/os/Parcel;Z)V

    .line 384
    iget-object p2, p0, Landroid/telecom/ParcelableCallAnalytics;->analyticsEvents:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 385
    iget-object p2, p0, Landroid/telecom/ParcelableCallAnalytics;->eventTimings:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 386
    iget-boolean p2, p0, Landroid/telecom/ParcelableCallAnalytics;->isVideoCall:Z

    invoke-static {p1, p2}, Landroid/telecom/ParcelableCallAnalytics;->writeBooleanAsByte(Landroid/os/Parcel;Z)V

    .line 387
    iget-object p2, p0, Landroid/telecom/ParcelableCallAnalytics;->videoEvents:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 388
    iget p2, p0, Landroid/telecom/ParcelableCallAnalytics;->callSource:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 389
    return-void
.end method
