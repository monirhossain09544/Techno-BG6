.class public final Landroid/speech/RecognitionPart;
.super Ljava/lang/Object;
.source "RecognitionPart.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/speech/RecognitionPart$Builder;,
        Landroid/speech/RecognitionPart$ConfidenceLevel;,
        Landroid/speech/RecognitionPart$BaseBuilder;
    }
.end annotation


# static fields
.field public static final whitelist CONFIDENCE_LEVEL_HIGH:I = 0x5

.field public static final whitelist CONFIDENCE_LEVEL_LOW:I = 0x1

.field public static final whitelist CONFIDENCE_LEVEL_MEDIUM:I = 0x3

.field public static final whitelist CONFIDENCE_LEVEL_MEDIUM_HIGH:I = 0x4

.field public static final whitelist CONFIDENCE_LEVEL_MEDIUM_LOW:I = 0x2

.field public static final whitelist CONFIDENCE_LEVEL_UNKNOWN:I

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/speech/RecognitionPart;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mConfidenceLevel:I

.field private final blacklist mFormattedText:Ljava/lang/String;

.field private final blacklist mRawText:Ljava/lang/String;

.field private final blacklist mTimestampMillis:J


# direct methods
.method static bridge synthetic blacklist -$$Nest$smdefaultConfidenceLevel()I
    .registers 1

    invoke-static {}, Landroid/speech/RecognitionPart;->defaultConfidenceLevel()I

    move-result v0

    return v0
.end method

.method static bridge synthetic blacklist -$$Nest$smdefaultFormattedText()Ljava/lang/String;
    .registers 1

    invoke-static {}, Landroid/speech/RecognitionPart;->defaultFormattedText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$smdefaultTimestampMillis()J
    .registers 2

    invoke-static {}, Landroid/speech/RecognitionPart;->defaultTimestampMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 366
    new-instance v0, Landroid/speech/RecognitionPart$1;

    invoke-direct {v0}, Landroid/speech/RecognitionPart$1;-><init>()V

    sput-object v0, Landroid/speech/RecognitionPart;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 9

    .line 328
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 332
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    .line 333
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 334
    const/4 v2, 0x2

    and-int/2addr v0, v2

    const/4 v3, 0x0

    if-nez v0, :cond_12

    move-object v0, v3

    goto :goto_16

    :cond_12
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 335
    :goto_16
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 336
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 338
    iput-object v1, p0, Landroid/speech/RecognitionPart;->mRawText:Ljava/lang/String;

    .line 339
    const-class v1, Landroid/annotation/NonNull;

    iget-object v6, p0, Landroid/speech/RecognitionPart;->mRawText:Ljava/lang/String;

    invoke-static {v1, v3, v6}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 341
    iput-object v0, p0, Landroid/speech/RecognitionPart;->mFormattedText:Ljava/lang/String;

    .line 342
    iput-wide v4, p0, Landroid/speech/RecognitionPart;->mTimestampMillis:J

    .line 343
    iput p1, p0, Landroid/speech/RecognitionPart;->mConfidenceLevel:I

    .line 345
    iget p1, p0, Landroid/speech/RecognitionPart;->mConfidenceLevel:I

    if-eqz p1, :cond_a8

    iget p1, p0, Landroid/speech/RecognitionPart;->mConfidenceLevel:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_a8

    iget p1, p0, Landroid/speech/RecognitionPart;->mConfidenceLevel:I

    if-eq p1, v2, :cond_a8

    iget p1, p0, Landroid/speech/RecognitionPart;->mConfidenceLevel:I

    const/4 v1, 0x3

    if-eq p1, v1, :cond_a8

    iget p1, p0, Landroid/speech/RecognitionPart;->mConfidenceLevel:I

    const/4 v3, 0x4

    if-eq p1, v3, :cond_a8

    iget p1, p0, Landroid/speech/RecognitionPart;->mConfidenceLevel:I

    const/4 v4, 0x5

    if-ne p1, v4, :cond_4a

    goto :goto_a8

    .line 351
    :cond_4a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "confidenceLevel was "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Landroid/speech/RecognitionPart;->mConfidenceLevel:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " but must be one of: CONFIDENCE_LEVEL_UNKNOWN("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "), CONFIDENCE_LEVEL_LOW("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "), CONFIDENCE_LEVEL_MEDIUM_LOW("

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "), CONFIDENCE_LEVEL_MEDIUM("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "), CONFIDENCE_LEVEL_MEDIUM_HIGH("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "), CONFIDENCE_LEVEL_HIGH("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 362
    :cond_a8
    :goto_a8
    invoke-direct {p0}, Landroid/speech/RecognitionPart;->onConstructed()V

    .line 363
    return-void
.end method

.method constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;JI)V
    .registers 9

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 190
    iput-object p1, p0, Landroid/speech/RecognitionPart;->mRawText:Ljava/lang/String;

    .line 191
    const-class p1, Landroid/annotation/NonNull;

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/speech/RecognitionPart;->mRawText:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 193
    iput-object p2, p0, Landroid/speech/RecognitionPart;->mFormattedText:Ljava/lang/String;

    .line 194
    iput-wide p3, p0, Landroid/speech/RecognitionPart;->mTimestampMillis:J

    .line 195
    iput p5, p0, Landroid/speech/RecognitionPart;->mConfidenceLevel:I

    .line 197
    iget p1, p0, Landroid/speech/RecognitionPart;->mConfidenceLevel:I

    if-eqz p1, :cond_8f

    iget p1, p0, Landroid/speech/RecognitionPart;->mConfidenceLevel:I

    const/4 p2, 0x1

    if-eq p1, p2, :cond_8f

    iget p1, p0, Landroid/speech/RecognitionPart;->mConfidenceLevel:I

    const/4 p3, 0x2

    if-eq p1, p3, :cond_8f

    iget p1, p0, Landroid/speech/RecognitionPart;->mConfidenceLevel:I

    const/4 p4, 0x3

    if-eq p1, p4, :cond_8f

    iget p1, p0, Landroid/speech/RecognitionPart;->mConfidenceLevel:I

    const/4 p5, 0x4

    if-eq p1, p5, :cond_8f

    iget p1, p0, Landroid/speech/RecognitionPart;->mConfidenceLevel:I

    const/4 v0, 0x5

    if-ne p1, v0, :cond_31

    goto :goto_8f

    .line 203
    :cond_31
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "confidenceLevel was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/speech/RecognitionPart;->mConfidenceLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " but must be one of: CONFIDENCE_LEVEL_UNKNOWN("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "), CONFIDENCE_LEVEL_LOW("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, "), CONFIDENCE_LEVEL_MEDIUM_LOW("

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, "), CONFIDENCE_LEVEL_MEDIUM("

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, "), CONFIDENCE_LEVEL_MEDIUM_HIGH("

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, "), CONFIDENCE_LEVEL_HIGH("

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, ")"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 214
    :cond_8f
    :goto_8f
    invoke-direct {p0}, Landroid/speech/RecognitionPart;->onConstructed()V

    .line 215
    return-void
.end method

.method private blacklist __metadata()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 482
    return-void
.end method

.method public static blacklist confidenceLevelToString(I)Ljava/lang/String;
    .registers 1

    .line 167
    packed-switch p0, :pswitch_data_1a

    .line 180
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 179
    :pswitch_8
    const-string p0, "CONFIDENCE_LEVEL_HIGH"

    return-object p0

    .line 177
    :pswitch_b
    const-string p0, "CONFIDENCE_LEVEL_MEDIUM_HIGH"

    return-object p0

    .line 175
    :pswitch_e
    const-string p0, "CONFIDENCE_LEVEL_MEDIUM"

    return-object p0

    .line 173
    :pswitch_11
    const-string p0, "CONFIDENCE_LEVEL_MEDIUM_LOW"

    return-object p0

    .line 171
    :pswitch_14
    const-string p0, "CONFIDENCE_LEVEL_LOW"

    return-object p0

    .line 169
    :pswitch_17
    const-string p0, "CONFIDENCE_LEVEL_UNKNOWN"

    return-object p0

    :pswitch_data_1a
    .packed-switch 0x0
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method

.method private static blacklist defaultConfidenceLevel()I
    .registers 1

    .line 107
    const/4 v0, 0x0

    return v0
.end method

.method private static blacklist defaultFormattedText()Ljava/lang/String;
    .registers 1

    .line 82
    const/4 v0, 0x0

    return-object v0
.end method

.method private static blacklist defaultTimestampMillis()J
    .registers 2

    .line 94
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private blacklist onConstructed()V
    .registers 4

    .line 111
    iget-wide v0, p0, Landroid/speech/RecognitionPart;->mTimestampMillis:J

    const-string v2, "The timestamp must be non-negative."

    invoke-static {v0, v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(JLjava/lang/String;)J

    .line 113
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 323
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 8

    .line 280
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 281
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_39

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_39

    .line 283
    :cond_12
    check-cast p1, Landroid/speech/RecognitionPart;

    .line 285
    iget-object v2, p0, Landroid/speech/RecognitionPart;->mRawText:Ljava/lang/String;

    iget-object v3, p1, Landroid/speech/RecognitionPart;->mRawText:Ljava/lang/String;

    .line 286
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_37

    iget-object v2, p0, Landroid/speech/RecognitionPart;->mFormattedText:Ljava/lang/String;

    iget-object v3, p1, Landroid/speech/RecognitionPart;->mFormattedText:Ljava/lang/String;

    .line 287
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_37

    iget-wide v2, p0, Landroid/speech/RecognitionPart;->mTimestampMillis:J

    iget-wide v4, p1, Landroid/speech/RecognitionPart;->mTimestampMillis:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_37

    iget v2, p0, Landroid/speech/RecognitionPart;->mConfidenceLevel:I

    iget p1, p1, Landroid/speech/RecognitionPart;->mConfidenceLevel:I

    if-ne v2, p1, :cond_37

    goto :goto_38

    :cond_37
    move v0, v1

    .line 285
    :goto_38
    return v0

    .line 281
    :cond_39
    :goto_39
    return v1
.end method

.method public whitelist getConfidenceLevel()I
    .registers 2

    .line 256
    iget v0, p0, Landroid/speech/RecognitionPart;->mConfidenceLevel:I

    return v0
.end method

.method public whitelist getFormattedText()Ljava/lang/String;
    .registers 2

    .line 233
    iget-object v0, p0, Landroid/speech/RecognitionPart;->mFormattedText:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getRawText()Ljava/lang/String;
    .registers 2

    .line 222
    iget-object v0, p0, Landroid/speech/RecognitionPart;->mRawText:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getTimestampMillis()J
    .registers 3

    .line 245
    iget-wide v0, p0, Landroid/speech/RecognitionPart;->mTimestampMillis:J

    return-wide v0
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 298
    nop

    .line 299
    iget-object v0, p0, Landroid/speech/RecognitionPart;->mRawText:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    const/16 v1, 0x1f

    add-int/2addr v0, v1

    .line 300
    mul-int/2addr v0, v1

    iget-object v2, p0, Landroid/speech/RecognitionPart;->mFormattedText:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 301
    mul-int/2addr v0, v1

    iget-wide v2, p0, Landroid/speech/RecognitionPart;->mTimestampMillis:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    add-int/2addr v0, v2

    .line 302
    mul-int/2addr v0, v1

    iget v1, p0, Landroid/speech/RecognitionPart;->mConfidenceLevel:I

    add-int/2addr v0, v1

    .line 303
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 265
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RecognitionPart { rawText = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/speech/RecognitionPart;->mRawText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", formattedText = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/speech/RecognitionPart;->mFormattedText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", timestampMillis = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/speech/RecognitionPart;->mTimestampMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", confidenceLevel = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/speech/RecognitionPart;->mConfidenceLevel:I

    .line 269
    invoke-static {v1}, Landroid/speech/RecognitionPart;->confidenceLevelToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 265
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 312
    nop

    .line 313
    iget-object p2, p0, Landroid/speech/RecognitionPart;->mFormattedText:Ljava/lang/String;

    if-eqz p2, :cond_8

    const/4 p2, 0x2

    int-to-byte p2, p2

    goto :goto_9

    :cond_8
    const/4 p2, 0x0

    .line 314
    :goto_9
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 315
    iget-object p2, p0, Landroid/speech/RecognitionPart;->mRawText:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 316
    iget-object p2, p0, Landroid/speech/RecognitionPart;->mFormattedText:Ljava/lang/String;

    if-eqz p2, :cond_1a

    iget-object p2, p0, Landroid/speech/RecognitionPart;->mFormattedText:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 317
    :cond_1a
    iget-wide v0, p0, Landroid/speech/RecognitionPart;->mTimestampMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 318
    iget p2, p0, Landroid/speech/RecognitionPart;->mConfidenceLevel:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 319
    return-void
.end method
