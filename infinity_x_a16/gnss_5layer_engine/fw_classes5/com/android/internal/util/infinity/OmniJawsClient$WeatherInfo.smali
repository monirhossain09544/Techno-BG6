.class public Lcom/android/internal/util/infinity/OmniJawsClient$WeatherInfo;
.super Ljava/lang/Object;
.source "OmniJawsClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/util/infinity/OmniJawsClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WeatherInfo"
.end annotation


# instance fields
.field public blacklist city:Ljava/lang/String;

.field public blacklist condition:Ljava/lang/String;

.field public blacklist conditionCode:I

.field public blacklist dewPoint:F

.field public blacklist feelsLike:F

.field public blacklist forecasts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/util/infinity/OmniJawsClient$DayForecast;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist hourlyForecasts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/util/infinity/OmniJawsClient$HourlyForecast;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist humidity:Ljava/lang/String;

.field public blacklist iconPack:Ljava/lang/String;

.field public blacklist pinWheel:Ljava/lang/String;

.field public blacklist pressure:F

.field public blacklist provider:Ljava/lang/String;

.field public blacklist sunrise:J

.field public blacklist sunset:J

.field public blacklist temp:Ljava/lang/String;

.field public blacklist tempUnits:Ljava/lang/String;

.field public blacklist timeStamp:Ljava/lang/Long;

.field public blacklist uvi:F

.field public blacklist visibility:F

.field public blacklist windDirection:Ljava/lang/String;

.field public blacklist windSpeed:Ljava/lang/String;

.field public blacklist windUnits:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 428
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 444
    const/high16 v0, 0x7fc00000    # Float.NaN

    iput v0, p0, Lcom/android/internal/util/infinity/OmniJawsClient$WeatherInfo;->feelsLike:F

    .line 445
    iput v0, p0, Lcom/android/internal/util/infinity/OmniJawsClient$WeatherInfo;->pressure:F

    .line 446
    iput v0, p0, Lcom/android/internal/util/infinity/OmniJawsClient$WeatherInfo;->uvi:F

    .line 447
    iput v0, p0, Lcom/android/internal/util/infinity/OmniJawsClient$WeatherInfo;->visibility:F

    .line 448
    iput v0, p0, Lcom/android/internal/util/infinity/OmniJawsClient$WeatherInfo;->dewPoint:F

    return-void
.end method


# virtual methods
.method public blacklist getLastUpdateTime()Ljava/lang/String;
    .registers 5

    .line 454
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "HH:mm:ss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v1, Ljava/util/Date;

    iget-object v2, p0, Lcom/android/internal/util/infinity/OmniJawsClient$WeatherInfo;->timeStamp:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 459
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/internal/util/infinity/OmniJawsClient$WeatherInfo;->city:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " @ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    iget-object v2, p0, Lcom/android/internal/util/infinity/OmniJawsClient$WeatherInfo;->timeStamp:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/util/infinity/OmniJawsClient$WeatherInfo;->condition:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/util/infinity/OmniJawsClient$WeatherInfo;->temp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
