.class public Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;
.super Ljava/lang/Object;
.source "BearerData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cdma/sms/BearerData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TimeStamp"
.end annotation


# instance fields
.field public blacklist hour:I

.field private blacklist mZoneId:Ljava/time/ZoneId;

.field public blacklist minute:I

.field public blacklist monthDay:I

.field public blacklist monthOrdinal:I

.field public blacklist second:I

.field public blacklist year:I


# direct methods
.method public constructor greylist <init>()V
    .registers 2

    .line 264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 265
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->mZoneId:Ljava/time/ZoneId;

    .line 266
    return-void
.end method

.method public static blacklist fromByteArray([B)Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;
    .registers 6

    .line 269
    new-instance v0, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;-><init>()V

    .line 271
    const/4 v1, 0x0

    aget-byte v1, p0, v1

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/IccUtils;->cdmaBcdByteToInt(B)I

    move-result v1

    .line 272
    const/16 v2, 0x63

    const/4 v3, 0x0

    if-gt v1, v2, :cond_73

    if-gez v1, :cond_14

    goto :goto_73

    .line 273
    :cond_14
    const/16 v2, 0x60

    if-lt v1, v2, :cond_1b

    add-int/lit16 v1, v1, 0x76c

    goto :goto_1d

    :cond_1b
    add-int/lit16 v1, v1, 0x7d0

    :goto_1d
    iput v1, v0, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->year:I

    .line 274
    const/4 v1, 0x1

    aget-byte v2, p0, v1

    invoke-static {v2}, Lcom/android/internal/telephony/uicc/IccUtils;->cdmaBcdByteToInt(B)I

    move-result v2

    .line 275
    if-lt v2, v1, :cond_72

    const/16 v4, 0xc

    if-le v2, v4, :cond_2d

    goto :goto_72

    .line 276
    :cond_2d
    iput v2, v0, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->monthOrdinal:I

    .line 277
    const/4 v2, 0x2

    aget-byte v2, p0, v2

    invoke-static {v2}, Lcom/android/internal/telephony/uicc/IccUtils;->cdmaBcdByteToInt(B)I

    move-result v2

    .line 278
    if-lt v2, v1, :cond_71

    const/16 v1, 0x1f

    if-le v2, v1, :cond_3d

    goto :goto_71

    .line 279
    :cond_3d
    iput v2, v0, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->monthDay:I

    .line 280
    const/4 v1, 0x3

    aget-byte v1, p0, v1

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/IccUtils;->cdmaBcdByteToInt(B)I

    move-result v1

    .line 281
    if-ltz v1, :cond_70

    const/16 v2, 0x17

    if-le v1, v2, :cond_4d

    goto :goto_70

    .line 282
    :cond_4d
    iput v1, v0, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->hour:I

    .line 283
    const/4 v1, 0x4

    aget-byte v1, p0, v1

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/IccUtils;->cdmaBcdByteToInt(B)I

    move-result v1

    .line 284
    if-ltz v1, :cond_6f

    const/16 v2, 0x3b

    if-le v1, v2, :cond_5d

    goto :goto_6f

    .line 285
    :cond_5d
    iput v1, v0, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->minute:I

    .line 286
    const/4 v1, 0x5

    aget-byte p0, p0, v1

    invoke-static {p0}, Lcom/android/internal/telephony/uicc/IccUtils;->cdmaBcdByteToInt(B)I

    move-result p0

    .line 287
    if-ltz p0, :cond_6e

    if-le p0, v2, :cond_6b

    goto :goto_6e

    .line 288
    :cond_6b
    iput p0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->second:I

    .line 289
    return-object v0

    .line 287
    :cond_6e
    :goto_6e
    return-object v3

    .line 284
    :cond_6f
    :goto_6f
    return-object v3

    .line 281
    :cond_70
    :goto_70
    return-object v3

    .line 278
    :cond_71
    :goto_71
    return-object v3

    .line 275
    :cond_72
    :goto_72
    return-object v3

    .line 272
    :cond_73
    :goto_73
    return-object v3
.end method

.method public static blacklist fromMillis(J)Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;
    .registers 4

    .line 293
    new-instance v0, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;-><init>()V

    .line 294
    nop

    .line 295
    invoke-static {p0, p1}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object p0

    iget-object p1, v0, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->mZoneId:Ljava/time/ZoneId;

    invoke-virtual {p0, p1}, Ljava/time/Instant;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object p0

    invoke-virtual {p0}, Ljava/time/ZonedDateTime;->toLocalDateTime()Ljava/time/LocalDateTime;

    move-result-object p0

    .line 296
    invoke-virtual {p0}, Ljava/time/LocalDateTime;->getYear()I

    move-result p1

    .line 297
    const/16 v1, 0x7cc

    if-lt p1, v1, :cond_42

    const/16 v1, 0x82f

    if-le p1, v1, :cond_21

    goto :goto_42

    .line 298
    :cond_21
    iput p1, v0, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->year:I

    .line 299
    invoke-virtual {p0}, Ljava/time/LocalDateTime;->getMonthValue()I

    move-result p1

    iput p1, v0, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->monthOrdinal:I

    .line 300
    invoke-virtual {p0}, Ljava/time/LocalDateTime;->getDayOfMonth()I

    move-result p1

    iput p1, v0, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->monthDay:I

    .line 301
    invoke-virtual {p0}, Ljava/time/LocalDateTime;->getHour()I

    move-result p1

    iput p1, v0, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->hour:I

    .line 302
    invoke-virtual {p0}, Ljava/time/LocalDateTime;->getMinute()I

    move-result p1

    iput p1, v0, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->minute:I

    .line 303
    invoke-virtual {p0}, Ljava/time/LocalDateTime;->getSecond()I

    move-result p0

    iput p0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->second:I

    .line 304
    return-object v0

    .line 297
    :cond_42
    :goto_42
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public blacklist toByteArray()[B
    .registers 4

    .line 308
    iget v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->year:I

    rem-int/lit8 v0, v0, 0x64

    .line 309
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    const/4 v2, 0x6

    invoke-direct {v1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 310
    div-int/lit8 v2, v0, 0xa

    and-int/lit8 v2, v2, 0xf

    shl-int/lit8 v2, v2, 0x4

    rem-int/lit8 v0, v0, 0xa

    and-int/lit8 v0, v0, 0xf

    or-int/2addr v0, v2

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 311
    iget v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->monthOrdinal:I

    div-int/lit8 v0, v0, 0xa

    shl-int/lit8 v0, v0, 0x4

    and-int/lit16 v0, v0, 0xf0

    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->monthOrdinal:I

    rem-int/lit8 v2, v2, 0xa

    and-int/lit8 v2, v2, 0xf

    or-int/2addr v0, v2

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 312
    iget v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->monthDay:I

    div-int/lit8 v0, v0, 0xa

    shl-int/lit8 v0, v0, 0x4

    and-int/lit16 v0, v0, 0xf0

    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->monthDay:I

    rem-int/lit8 v2, v2, 0xa

    and-int/lit8 v2, v2, 0xf

    or-int/2addr v0, v2

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 313
    iget v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->hour:I

    div-int/lit8 v0, v0, 0xa

    shl-int/lit8 v0, v0, 0x4

    and-int/lit16 v0, v0, 0xf0

    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->hour:I

    rem-int/lit8 v2, v2, 0xa

    and-int/lit8 v2, v2, 0xf

    or-int/2addr v0, v2

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 314
    iget v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->minute:I

    div-int/lit8 v0, v0, 0xa

    shl-int/lit8 v0, v0, 0x4

    and-int/lit16 v0, v0, 0xf0

    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->minute:I

    rem-int/lit8 v2, v2, 0xa

    and-int/lit8 v2, v2, 0xf

    or-int/2addr v0, v2

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 315
    iget v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->second:I

    div-int/lit8 v0, v0, 0xa

    shl-int/lit8 v0, v0, 0x4

    and-int/lit16 v0, v0, 0xf0

    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->second:I

    rem-int/lit8 v2, v2, 0xa

    and-int/lit8 v2, v2, 0xf

    or-int/2addr v0, v2

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 316
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public blacklist toMillis()J
    .registers 7

    .line 321
    :try_start_0
    iget v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->year:I

    iget v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->monthOrdinal:I

    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->monthDay:I

    iget v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->hour:I

    iget v4, p0, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->minute:I

    iget v5, p0, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->second:I

    .line 322
    invoke-static/range {v0 .. v5}, Ljava/time/LocalDateTime;->of(IIIIII)Ljava/time/LocalDateTime;

    move-result-object v0

    .line 323
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->mZoneId:Ljava/time/ZoneId;

    .line 324
    invoke-virtual {v1}, Ljava/time/ZoneId;->getRules()Ljava/time/zone/ZoneRules;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/time/zone/ZoneRules;->getOffset(Ljava/time/LocalDateTime;)Ljava/time/ZoneOffset;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/time/LocalDateTime;->toInstant(Ljava/time/ZoneOffset;)Ljava/time/Instant;

    move-result-object v0

    .line 325
    invoke-virtual {v0}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v0
    :try_end_22
    .catch Ljava/time/DateTimeException; {:try_start_0 .. :try_end_22} :catch_23

    return-wide v0

    .line 326
    :catch_23
    move-exception v0

    .line 327
    const-string v1, "BearerData"

    const-string v2, "Invalid timestamp"

    invoke-static {v1, v2, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 329
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 335
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 336
    const-string v1, "TimeStamp "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "{ year="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->year:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", month="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->monthOrdinal:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", day="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->monthDay:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", hour="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->hour:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", minute="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->minute:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", second="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->second:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
