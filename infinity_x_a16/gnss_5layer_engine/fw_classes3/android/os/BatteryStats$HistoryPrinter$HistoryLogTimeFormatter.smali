.class Landroid/os/BatteryStats$HistoryPrinter$HistoryLogTimeFormatter;
.super Ljava/lang/Object;
.source "BatteryStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/BatteryStats$HistoryPrinter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HistoryLogTimeFormatter"
.end annotation


# static fields
.field private static final blacklist HOUR_MILLIS:J = 0x36ee80L

.field private static final blacklist MINUTE_MILLIS:J = 0xea60L


# instance fields
.field private blacklist mCachedHour:J

.field private blacklist mCachedHourFormatted:Ljava/lang/String;

.field private final blacklist mDate:Ljava/util/Date;

.field private final blacklist mDateFormat:Ljava/text/SimpleDateFormat;

.field private final blacklist mTimeZoneOffset:J


# direct methods
.method private constructor blacklist <init>(Ljava/util/TimeZone;)V
    .registers 5

    .line 7211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7203
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM-dd HH:"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Landroid/os/BatteryStats$HistoryPrinter$HistoryLogTimeFormatter;->mDateFormat:Ljava/text/SimpleDateFormat;

    .line 7205
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Landroid/os/BatteryStats$HistoryPrinter$HistoryLogTimeFormatter;->mDate:Ljava/util/Date;

    .line 7212
    invoke-virtual {p1}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Landroid/os/BatteryStats$HistoryPrinter$HistoryLogTimeFormatter;->mTimeZoneOffset:J

    .line 7213
    iget-object v0, p0, Landroid/os/BatteryStats$HistoryPrinter$HistoryLogTimeFormatter;->mDateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0}, Ljava/text/SimpleDateFormat;->getCalendar()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 7214
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/util/TimeZone;Landroid/os/BatteryStats-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/os/BatteryStats$HistoryPrinter$HistoryLogTimeFormatter;-><init>(Ljava/util/TimeZone;)V

    return-void
.end method


# virtual methods
.method blacklist append(Ljava/lang/StringBuilder;J)V
    .registers 12

    .line 7218
    iget-wide v0, p0, Landroid/os/BatteryStats$HistoryPrinter$HistoryLogTimeFormatter;->mTimeZoneOffset:J

    add-long/2addr v0, p2

    .line 7219
    const-wide/32 v2, 0x36ee80

    div-long v4, v0, v2

    .line 7220
    iget-wide v6, p0, Landroid/os/BatteryStats$HistoryPrinter$HistoryLogTimeFormatter;->mCachedHour:J

    cmp-long v6, v4, v6

    if-eqz v6, :cond_1f

    .line 7221
    iget-object v6, p0, Landroid/os/BatteryStats$HistoryPrinter$HistoryLogTimeFormatter;->mDate:Ljava/util/Date;

    invoke-virtual {v6, p2, p3}, Ljava/util/Date;->setTime(J)V

    .line 7222
    iget-object p2, p0, Landroid/os/BatteryStats$HistoryPrinter$HistoryLogTimeFormatter;->mDateFormat:Ljava/text/SimpleDateFormat;

    iget-object p3, p0, Landroid/os/BatteryStats$HistoryPrinter$HistoryLogTimeFormatter;->mDate:Ljava/util/Date;

    invoke-virtual {p2, p3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Landroid/os/BatteryStats$HistoryPrinter$HistoryLogTimeFormatter;->mCachedHourFormatted:Ljava/lang/String;

    .line 7223
    iput-wide v4, p0, Landroid/os/BatteryStats$HistoryPrinter$HistoryLogTimeFormatter;->mCachedHour:J

    .line 7225
    :cond_1f
    iget-object p2, p0, Landroid/os/BatteryStats$HistoryPrinter$HistoryLogTimeFormatter;->mCachedHourFormatted:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7227
    rem-long/2addr v0, v2

    .line 7229
    const-wide/32 p2, 0xea60

    div-long v2, v0, p2

    .line 7230
    const-wide/16 v4, 0xa

    cmp-long v6, v2, v4

    const/16 v7, 0x30

    if-gez v6, :cond_35

    .line 7231
    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7233
    :cond_35
    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x3a

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7235
    rem-long/2addr v0, p2

    .line 7236
    const-wide/16 p2, 0x3e8

    div-long v2, v0, p2

    .line 7237
    cmp-long v6, v2, v4

    if-gez v6, :cond_4a

    .line 7238
    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7240
    :cond_4a
    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x2e

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7242
    rem-long/2addr v0, p2

    .line 7243
    const-wide/16 p2, 0x64

    cmp-long p2, v0, p2

    if-gez p2, :cond_64

    .line 7244
    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7245
    cmp-long p2, v0, v4

    if-gez p2, :cond_64

    .line 7246
    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7249
    :cond_64
    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 7250
    return-void
.end method
