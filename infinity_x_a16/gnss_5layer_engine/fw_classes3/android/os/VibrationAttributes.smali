.class public final Landroid/os/VibrationAttributes;
.super Ljava/lang/Object;
.source "VibrationAttributes.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/VibrationAttributes$Builder;,
        Landroid/os/VibrationAttributes$Flag;,
        Landroid/os/VibrationAttributes$Usage;,
        Landroid/os/VibrationAttributes$UsageClass;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/VibrationAttributes;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist FLAG_ALL_SUPPORTED:I = 0xf

.field public static final whitelist FLAG_BYPASS_INTERRUPTION_POLICY:I = 0x1

.field public static final blacklist FLAG_BYPASS_USER_VIBRATION_INTENSITY_OFF:I = 0x2

.field public static final blacklist FLAG_INVALIDATE_SETTINGS_CACHE:I = 0x4

.field public static final blacklist FLAG_PIPELINED_EFFECT:I = 0x8

.field private static final blacklist TAG:Ljava/lang/String; = "VibrationAttributes"

.field public static final whitelist USAGE_ACCESSIBILITY:I = 0x42

.field public static final whitelist USAGE_ALARM:I = 0x11

.field public static final whitelist USAGE_CLASS_ALARM:I = 0x1

.field public static final whitelist USAGE_CLASS_FEEDBACK:I = 0x2

.field public static final whitelist USAGE_CLASS_MASK:I = 0xf

.field public static final whitelist USAGE_CLASS_MEDIA:I = 0x3

.field public static final whitelist USAGE_CLASS_UNKNOWN:I = 0x0

.field public static final whitelist USAGE_COMMUNICATION_REQUEST:I = 0x41

.field public static final blacklist USAGE_FILTER_MATCH_ALL:I = -0x1

.field public static final whitelist USAGE_GESTURE_INPUT:I = 0x62

.field public static final whitelist USAGE_HARDWARE_FEEDBACK:I = 0x32

.field public static final blacklist USAGE_IME_FEEDBACK:I = 0x52

.field public static final whitelist USAGE_MEDIA:I = 0x13

.field public static final whitelist USAGE_NOTIFICATION:I = 0x31

.field public static final whitelist USAGE_PHYSICAL_EMULATION:I = 0x22

.field public static final whitelist USAGE_RINGTONE:I = 0x21

.field public static final whitelist USAGE_TOUCH:I = 0x12

.field public static final whitelist USAGE_UNKNOWN:I


# instance fields
.field private final blacklist mFlags:I

.field private final blacklist mOriginalAudioUsage:I

.field private final blacklist mUsage:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmFlags(Landroid/os/VibrationAttributes;)I
    .registers 1

    iget p0, p0, Landroid/os/VibrationAttributes;->mFlags:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOriginalAudioUsage(Landroid/os/VibrationAttributes;)I
    .registers 1

    iget p0, p0, Landroid/os/VibrationAttributes;->mOriginalAudioUsage:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUsage(Landroid/os/VibrationAttributes;)I
    .registers 1

    iget p0, p0, Landroid/os/VibrationAttributes;->mUsage:I

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 350
    new-instance v0, Landroid/os/VibrationAttributes$1;

    invoke-direct {v0}, Landroid/os/VibrationAttributes$1;-><init>()V

    sput-object v0, Landroid/os/VibrationAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(III)V
    .registers 4

    .line 249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 250
    iput p1, p0, Landroid/os/VibrationAttributes;->mUsage:I

    .line 251
    iput p2, p0, Landroid/os/VibrationAttributes;->mOriginalAudioUsage:I

    .line 252
    and-int/lit8 p1, p3, 0xf

    iput p1, p0, Landroid/os/VibrationAttributes;->mFlags:I

    .line 253
    return-void
.end method

.method synthetic constructor blacklist <init>(IIILandroid/os/VibrationAttributes-IA;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/os/VibrationAttributes;-><init>(III)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 343
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 344
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/VibrationAttributes;->mUsage:I

    .line 345
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/VibrationAttributes;->mOriginalAudioUsage:I

    .line 346
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/os/VibrationAttributes;->mFlags:I

    .line 347
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/os/VibrationAttributes-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/os/VibrationAttributes;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static whitelist createForUsage(I)Landroid/os/VibrationAttributes;
    .registers 2

    .line 241
    new-instance v0, Landroid/os/VibrationAttributes$Builder;

    invoke-direct {v0}, Landroid/os/VibrationAttributes$Builder;-><init>()V

    invoke-virtual {v0, p0}, Landroid/os/VibrationAttributes$Builder;->setUsage(I)Landroid/os/VibrationAttributes$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/VibrationAttributes$Builder;->build()Landroid/os/VibrationAttributes;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist usageToString(I)Ljava/lang/String;
    .registers 3

    .line 393
    sparse-switch p0, :sswitch_data_3c

    .line 419
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unknown usage "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 417
    :sswitch_18
    const-string p0, "GESTURE_INPUT"

    return-object p0

    .line 415
    :sswitch_1b
    const-string p0, "IME"

    return-object p0

    .line 399
    :sswitch_1e
    const-string p0, "ACCESSIBILITY"

    return-object p0

    .line 405
    :sswitch_21
    const-string p0, "COMMUNICATION_REQUEST"

    return-object p0

    .line 413
    :sswitch_24
    const-string p0, "HARDWARE_FEEDBACK"

    return-object p0

    .line 403
    :sswitch_27
    const-string p0, "NOTIFICATION"

    return-object p0

    .line 411
    :sswitch_2a
    const-string p0, "PHYSICAL_EMULATION"

    return-object p0

    .line 401
    :sswitch_2d
    const-string p0, "RINGTONE"

    return-object p0

    .line 407
    :sswitch_30
    const-string p0, "MEDIA"

    return-object p0

    .line 409
    :sswitch_33
    const-string p0, "TOUCH"

    return-object p0

    .line 397
    :sswitch_36
    const-string p0, "ALARM"

    return-object p0

    .line 395
    :sswitch_39
    const-string p0, "UNKNOWN"

    return-object p0

    :sswitch_data_3c
    .sparse-switch
        0x0 -> :sswitch_39
        0x11 -> :sswitch_36
        0x12 -> :sswitch_33
        0x13 -> :sswitch_30
        0x21 -> :sswitch_2d
        0x22 -> :sswitch_2a
        0x31 -> :sswitch_27
        0x32 -> :sswitch_24
        0x41 -> :sswitch_21
        0x42 -> :sswitch_1e
        0x52 -> :sswitch_1b
        0x62 -> :sswitch_18
    .end sparse-switch
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 333
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 361
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 362
    return v0

    .line 364
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_29

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_29

    .line 367
    :cond_12
    check-cast p1, Landroid/os/VibrationAttributes;

    .line 368
    iget v2, p0, Landroid/os/VibrationAttributes;->mUsage:I

    iget v3, p1, Landroid/os/VibrationAttributes;->mUsage:I

    if-ne v2, v3, :cond_27

    iget v2, p0, Landroid/os/VibrationAttributes;->mOriginalAudioUsage:I

    iget v3, p1, Landroid/os/VibrationAttributes;->mOriginalAudioUsage:I

    if-ne v2, v3, :cond_27

    iget v2, p0, Landroid/os/VibrationAttributes;->mFlags:I

    iget p1, p1, Landroid/os/VibrationAttributes;->mFlags:I

    if-ne v2, p1, :cond_27

    goto :goto_28

    :cond_27
    move v0, v1

    :goto_28
    return v0

    .line 365
    :cond_29
    :goto_29
    return v1
.end method

.method public blacklist getAudioUsage()I
    .registers 2

    .line 305
    iget v0, p0, Landroid/os/VibrationAttributes;->mOriginalAudioUsage:I

    if-eqz v0, :cond_7

    .line 307
    iget v0, p0, Landroid/os/VibrationAttributes;->mOriginalAudioUsage:I

    return v0

    .line 310
    :cond_7
    iget v0, p0, Landroid/os/VibrationAttributes;->mUsage:I

    sparse-switch v0, :sswitch_data_1e

    .line 327
    const/4 v0, 0x0

    return v0

    .line 323
    :sswitch_e
    const/16 v0, 0xb

    return v0

    .line 314
    :sswitch_11
    const/4 v0, 0x2

    return v0

    .line 312
    :sswitch_13
    const/4 v0, 0x5

    return v0

    .line 316
    :sswitch_15
    const/4 v0, 0x6

    return v0

    .line 325
    :sswitch_17
    const/4 v0, 0x1

    return v0

    .line 319
    :sswitch_19
    const/16 v0, 0xd

    return v0

    .line 321
    :sswitch_1c
    const/4 v0, 0x4

    return v0

    :sswitch_data_1e
    .sparse-switch
        0x11 -> :sswitch_1c
        0x12 -> :sswitch_19
        0x13 -> :sswitch_17
        0x21 -> :sswitch_15
        0x31 -> :sswitch_13
        0x41 -> :sswitch_11
        0x42 -> :sswitch_e
        0x52 -> :sswitch_19
    .end sparse-switch
.end method

.method public whitelist getFlags()I
    .registers 2

    .line 286
    iget v0, p0, Landroid/os/VibrationAttributes;->mFlags:I

    return v0
.end method

.method public blacklist getOriginalAudioUsage()I
    .registers 2

    .line 277
    iget v0, p0, Landroid/os/VibrationAttributes;->mOriginalAudioUsage:I

    return v0
.end method

.method public whitelist getUsage()I
    .registers 2

    .line 268
    iget v0, p0, Landroid/os/VibrationAttributes;->mUsage:I

    return v0
.end method

.method public whitelist getUsageClass()I
    .registers 2

    .line 260
    iget v0, p0, Landroid/os/VibrationAttributes;->mUsage:I

    and-int/lit8 v0, v0, 0xf

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 374
    iget v0, p0, Landroid/os/VibrationAttributes;->mUsage:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Landroid/os/VibrationAttributes;->mOriginalAudioUsage:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Landroid/os/VibrationAttributes;->mFlags:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist isFlagSet(I)Z
    .registers 3

    .line 294
    iget v0, p0, Landroid/os/VibrationAttributes;->mFlags:I

    and-int/2addr p1, v0

    if-lez p1, :cond_7

    const/4 p1, 0x1

    goto :goto_8

    :cond_7
    const/4 p1, 0x0

    :goto_8
    return p1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 379
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VibrationAttributes{mUsage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 380
    invoke-virtual {p0}, Landroid/os/VibrationAttributes;->usageToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAudioUsage= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/VibrationAttributes;->mOriginalAudioUsage:I

    .line 381
    invoke-static {v1}, Landroid/media/AudioAttributes;->usageToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mFlags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/VibrationAttributes;->mFlags:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 379
    return-object v0
.end method

.method public blacklist usageToString()Ljava/lang/String;
    .registers 2

    .line 388
    iget v0, p0, Landroid/os/VibrationAttributes;->mUsage:I

    invoke-static {v0}, Landroid/os/VibrationAttributes;->usageToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 338
    iget p2, p0, Landroid/os/VibrationAttributes;->mUsage:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 339
    iget p2, p0, Landroid/os/VibrationAttributes;->mOriginalAudioUsage:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 340
    iget p2, p0, Landroid/os/VibrationAttributes;->mFlags:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 341
    return-void
.end method
