.class public Lcom/android/internal/util/infinity/OmniJawsClient;
.super Ljava/lang/Object;
.source "OmniJawsClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/util/infinity/OmniJawsClient$WeatherInfo;,
        Lcom/android/internal/util/infinity/OmniJawsClient$DayForecast;,
        Lcom/android/internal/util/infinity/OmniJawsClient$HourlyForecast;,
        Lcom/android/internal/util/infinity/OmniJawsClient$OmniJawsObserver;,
        Lcom/android/internal/util/infinity/OmniJawsClient$WeatherUpdateReceiver;
    }
.end annotation


# static fields
.field private static final blacklist DEBUG:Z = false

.field private static final blacklist EXTRA_ERROR:Ljava/lang/String; = "error"

.field public static final blacklist EXTRA_ERROR_DISABLED:I = 0x2

.field public static final blacklist EXTRA_ERROR_LOCATION:I = 0x1

.field public static final blacklist EXTRA_ERROR_NETWORK:I = 0x0

.field public static final blacklist HOURLY_PROJECTION:[Ljava/lang/String;

.field public static final blacklist HOURLY_URI:Landroid/net/Uri;

.field private static final blacklist ICON_PACKAGE_DEFAULT:Ljava/lang/String; = "org.omnirom.omnijaws"

.field private static final blacklist ICON_PREFIX_DEFAULT:Ljava/lang/String; = "google_new"

.field public static final blacklist SERVICE_PACKAGE:Ljava/lang/String; = "org.omnirom.omnijaws"

.field public static final blacklist SETTINGS_PROJECTION:[Ljava/lang/String;

.field public static final blacklist SETTINGS_URI:Landroid/net/Uri;

.field private static final blacklist TAG:Ljava/lang/String; = "OmniJawsClient"

.field public static final blacklist WEATHER_ERROR:Ljava/lang/String; = "org.omnirom.omnijaws.WEATHER_ERROR"

.field public static final blacklist WEATHER_PROJECTION:[Ljava/lang/String;

.field public static final blacklist WEATHER_UPDATE:Ljava/lang/String; = "org.omnirom.omnijaws.WEATHER_UPDATE"

.field public static final blacklist WEATHER_URI:Landroid/net/Uri;

.field private static blacklist sInstance:Lcom/android/internal/util/infinity/OmniJawsClient;

.field private static final blacklist sNoDigitsFormat:Ljava/text/DecimalFormat;


# instance fields
.field private volatile blacklist mCachedInfo:Lcom/android/internal/util/infinity/OmniJawsClient$WeatherInfo;

.field private blacklist mIconPrefix:Ljava/lang/String;

.field private blacklist mMetric:Z

.field private final blacklist mObservers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/internal/util/infinity/OmniJawsClient$OmniJawsObserver;",
            ">;>;"
        }
    .end annotation
.end field

.field private blacklist mPackageName:Ljava/lang/String;

.field private blacklist mReceiver:Lcom/android/internal/util/infinity/OmniJawsClient$WeatherUpdateReceiver;

.field private blacklist mRes:Landroid/content/res/Resources;

.field private blacklist mSettingIconPackage:Ljava/lang/String;

.field private blacklist mWeatherReceiverRegistered:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmObservers(Lcom/android/internal/util/infinity/OmniJawsClient;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/util/infinity/OmniJawsClient;->mObservers:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mpruneDeadObservers(Lcom/android/internal/util/infinity/OmniJawsClient;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/util/infinity/OmniJawsClient;->pruneDeadObservers()V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 22

    .line 50
    const-string v0, "content://org.omnirom.omnijaws.provider/weather"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/internal/util/infinity/OmniJawsClient;->WEATHER_URI:Landroid/net/Uri;

    .line 51
    const-string v0, "content://org.omnirom.omnijaws.provider/settings"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/internal/util/infinity/OmniJawsClient;->SETTINGS_URI:Landroid/net/Uri;

    .line 52
    const-string v0, "content://org.omnirom.omnijaws.provider/hourly"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/internal/util/infinity/OmniJawsClient;->HOURLY_URI:Landroid/net/Uri;

    .line 63
    const-string v20, "sunrise"

    const-string v21, "sunset"

    const-string v1, "city"

    const-string v2, "wind_speed"

    const-string v3, "wind_direction"

    const-string v4, "condition_code"

    const-string v5, "temperature"

    const-string v6, "humidity"

    const-string v7, "condition"

    const-string v8, "forecast_low"

    const-string v9, "forecast_high"

    const-string v10, "forecast_condition"

    const-string v11, "forecast_condition_code"

    const-string v12, "time_stamp"

    const-string v13, "forecast_date"

    const-string v14, "pin_wheel"

    const-string v15, "feels_like"

    const-string v16, "pressure"

    const-string v17, "uvi"

    const-string v18, "visibility"

    const-string v19, "dew_point"

    filled-new-array/range {v1 .. v21}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/util/infinity/OmniJawsClient;->WEATHER_PROJECTION:[Ljava/lang/String;

    .line 70
    const-string v0, "setup"

    const-string v1, "icon_pack"

    const-string v2, "enabled"

    const-string v3, "units"

    const-string v4, "provider"

    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/util/infinity/OmniJawsClient;->SETTINGS_PROJECTION:[Ljava/lang/String;

    .line 74
    const-string v5, "hourly_humidity"

    const-string v6, "hourly_wind_speed"

    const-string v1, "hourly_temperature"

    const-string v2, "hourly_condition_code"

    const-string v3, "hourly_condition"

    const-string v4, "hourly_timestamp"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/util/infinity/OmniJawsClient;->HOURLY_PROJECTION:[Ljava/lang/String;

    .line 79
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "0"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/util/infinity/OmniJawsClient;->sNoDigitsFormat:Ljava/text/DecimalFormat;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/util/infinity/OmniJawsClient;->mObservers:Ljava/util/List;

    .line 92
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/util/infinity/OmniJawsClient;->mWeatherReceiverRegistered:Z

    return-void
.end method

.method public static blacklist get()Lcom/android/internal/util/infinity/OmniJawsClient;
    .registers 2

    .line 95
    sget-object v0, Lcom/android/internal/util/infinity/OmniJawsClient;->sInstance:Lcom/android/internal/util/infinity/OmniJawsClient;

    if-nez v0, :cond_17

    .line 96
    const-class v0, Lcom/android/internal/util/infinity/OmniJawsClient;

    monitor-enter v0

    .line 97
    :try_start_7
    sget-object v1, Lcom/android/internal/util/infinity/OmniJawsClient;->sInstance:Lcom/android/internal/util/infinity/OmniJawsClient;

    if-nez v1, :cond_12

    .line 98
    new-instance v1, Lcom/android/internal/util/infinity/OmniJawsClient;

    invoke-direct {v1}, Lcom/android/internal/util/infinity/OmniJawsClient;-><init>()V

    sput-object v1, Lcom/android/internal/util/infinity/OmniJawsClient;->sInstance:Lcom/android/internal/util/infinity/OmniJawsClient;

    .line 100
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 102
    :cond_17
    :goto_17
    sget-object v0, Lcom/android/internal/util/infinity/OmniJawsClient;->sInstance:Lcom/android/internal/util/infinity/OmniJawsClient;

    return-object v0
.end method

.method private blacklist getDefaultConditionImage(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .registers 6

    .line 407
    const-string v0, "org.omnirom.omnijaws"

    const/high16 v1, -0x10000

    :try_start_4
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object p1

    .line 408
    const-string v2, "google_new_na"

    const-string v3, "drawable"

    invoke-virtual {p1, v2, v3, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 409
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 410
    if-eqz p1, :cond_1c

    :goto_1b
    goto :goto_22

    :cond_1c
    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {p1, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_21} :catch_23

    goto :goto_1b

    :goto_22
    return-object p1

    .line 411
    :catch_23
    move-exception p1

    .line 412
    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {p1, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    return-object p1
.end method

.method private static blacklist getFormattedValue(F)Ljava/lang/String;
    .registers 4

    .line 299
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string p0, "-"

    return-object p0

    .line 300
    :cond_9
    sget-object v0, Lcom/android/internal/util/infinity/OmniJawsClient;->sNoDigitsFormat:Ljava/text/DecimalFormat;

    float-to-double v1, p0

    invoke-virtual {v0, v1, v2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p0

    .line 301
    const-string v0, "-0"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const-string p0, "0"

    :cond_1a
    return-object p0
.end method

.method private blacklist getTemperatureUnit()Ljava/lang/String;
    .registers 2

    .line 384
    iget-boolean v0, p0, Lcom/android/internal/util/infinity/OmniJawsClient;->mMetric:Z

    if-eqz v0, :cond_7

    const-string v0, "\u00b0C"

    goto :goto_9

    :cond_7
    const-string v0, "\u00b0F"

    :goto_9
    return-object v0
.end method

.method private blacklist getWindUnit()Ljava/lang/String;
    .registers 2

    .line 388
    iget-boolean v0, p0, Lcom/android/internal/util/infinity/OmniJawsClient;->mMetric:Z

    if-eqz v0, :cond_7

    const-string v0, "km/h"

    goto :goto_9

    :cond_7
    const-string v0, "mph"

    :goto_9
    return-object v0
.end method

.method private blacklist isAvailableApp(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 5

    .line 322
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 323
    const/4 v1, 0x1

    invoke-virtual {p1, p2, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 324
    invoke-virtual {p1, p2}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result p1
    :try_end_d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_d} :catch_15
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_d} :catch_15

    .line 325
    const/4 p2, 0x2

    if-eq p1, p2, :cond_14

    const/4 p2, 0x3

    if-eq p1, p2, :cond_14

    move v0, v1

    :cond_14
    return v0

    .line 327
    :catch_15
    move-exception p1

    .line 328
    return v0
.end method

.method static synthetic blacklist lambda$pruneDeadObservers$1(Ljava/lang/ref/WeakReference;)Z
    .registers 1

    .line 352
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method static synthetic blacklist lambda$removeObserver$0(Lcom/android/internal/util/infinity/OmniJawsClient$OmniJawsObserver;Ljava/lang/ref/WeakReference;)Z
    .registers 2

    .line 342
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/util/infinity/OmniJawsClient$OmniJawsObserver;

    .line 343
    if-eqz p1, :cond_d

    if-ne p1, p0, :cond_b

    goto :goto_d

    :cond_b
    const/4 p0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 p0, 0x1

    :goto_e
    return p0
.end method

.method private blacklist loadCustomIconPackage(Landroid/content/Context;)V
    .registers 5

    .line 283
    iget-object v0, p0, Lcom/android/internal/util/infinity/OmniJawsClient;->mSettingIconPackage:Ljava/lang/String;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 284
    const/4 v1, -0x1

    if-ne v0, v1, :cond_f

    .line 285
    invoke-direct {p0, p1}, Lcom/android/internal/util/infinity/OmniJawsClient;->loadDefaultIconsPackage(Landroid/content/Context;)V

    .line 286
    return-void

    .line 288
    :cond_f
    iget-object v1, p0, Lcom/android/internal/util/infinity/OmniJawsClient;->mSettingIconPackage:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/util/infinity/OmniJawsClient;->mPackageName:Ljava/lang/String;

    .line 289
    iget-object v1, p0, Lcom/android/internal/util/infinity/OmniJawsClient;->mSettingIconPackage:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/util/infinity/OmniJawsClient;->mIconPrefix:Ljava/lang/String;

    .line 291
    :try_start_22
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/util/infinity/OmniJawsClient;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/util/infinity/OmniJawsClient;->mRes:Landroid/content/res/Resources;
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_2e} :catch_2f

    .line 295
    goto :goto_3a

    .line 292
    :catch_2f
    move-exception v0

    .line 293
    const-string v0, "OmniJawsClient"

    const-string v1, "Icon pack loading failed, fallback to default"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    invoke-direct {p0, p1}, Lcom/android/internal/util/infinity/OmniJawsClient;->loadDefaultIconsPackage(Landroid/content/Context;)V

    .line 296
    :goto_3a
    return-void
.end method

.method private blacklist loadDefaultIconsPackage(Landroid/content/Context;)V
    .registers 4

    .line 271
    const-string v0, "org.omnirom.omnijaws"

    iput-object v0, p0, Lcom/android/internal/util/infinity/OmniJawsClient;->mPackageName:Ljava/lang/String;

    .line 272
    const-string v0, "google_new"

    iput-object v0, p0, Lcom/android/internal/util/infinity/OmniJawsClient;->mIconPrefix:Ljava/lang/String;

    .line 273
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/internal/util/infinity/OmniJawsClient;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/util/infinity/OmniJawsClient;->mIconPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/util/infinity/OmniJawsClient;->mSettingIconPackage:Ljava/lang/String;

    .line 275
    :try_start_25
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iget-object v0, p0, Lcom/android/internal/util/infinity/OmniJawsClient;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/util/infinity/OmniJawsClient;->mRes:Landroid/content/res/Resources;
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_31} :catch_32

    .line 279
    goto :goto_3d

    .line 276
    :catch_32
    move-exception p1

    .line 277
    const-string p1, "OmniJawsClient"

    const-string v0, "No default icon package found"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/internal/util/infinity/OmniJawsClient;->mRes:Landroid/content/res/Resources;

    .line 280
    :goto_3d
    return-void
.end method

.method private blacklist pruneDeadObservers()V
    .registers 3

    .line 352
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/util/infinity/OmniJawsClient;->mObservers:Ljava/util/List;

    new-instance v1, Lcom/android/internal/util/infinity/OmniJawsClient$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/internal/util/infinity/OmniJawsClient$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_b

    .line 355
    goto :goto_13

    .line 353
    :catch_b
    move-exception v0

    .line 354
    const-string v0, "OmniJawsClient"

    const-string v1, "Exception occured while pruning, ignoring"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    :goto_13
    return-void
.end method

.method private blacklist registerReceiverIfNeeded(Landroid/content/Context;)V
    .registers 5

    .line 359
    iget-boolean v0, p0, Lcom/android/internal/util/infinity/OmniJawsClient;->mWeatherReceiverRegistered:Z

    if-nez v0, :cond_38

    iget-object v0, p0, Lcom/android/internal/util/infinity/OmniJawsClient;->mObservers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_38

    .line 360
    iget-object v0, p0, Lcom/android/internal/util/infinity/OmniJawsClient;->mReceiver:Lcom/android/internal/util/infinity/OmniJawsClient$WeatherUpdateReceiver;

    if-eqz v0, :cond_18

    .line 362
    :try_start_10
    iget-object v0, p0, Lcom/android/internal/util/infinity/OmniJawsClient;->mReceiver:Lcom/android/internal/util/infinity/OmniJawsClient$WeatherUpdateReceiver;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_15} :catch_16

    goto :goto_17

    .line 363
    :catch_16
    move-exception v0

    :goto_17
    nop

    .line 365
    :cond_18
    new-instance v0, Lcom/android/internal/util/infinity/OmniJawsClient$WeatherUpdateReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/internal/util/infinity/OmniJawsClient$WeatherUpdateReceiver;-><init>(Lcom/android/internal/util/infinity/OmniJawsClient;Lcom/android/internal/util/infinity/OmniJawsClient-IA;)V

    iput-object v0, p0, Lcom/android/internal/util/infinity/OmniJawsClient;->mReceiver:Lcom/android/internal/util/infinity/OmniJawsClient$WeatherUpdateReceiver;

    .line 366
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 367
    const-string v1, "org.omnirom.omnijaws.WEATHER_UPDATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 368
    const-string v1, "org.omnirom.omnijaws.WEATHER_ERROR"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 369
    iget-object v1, p0, Lcom/android/internal/util/infinity/OmniJawsClient;->mReceiver:Lcom/android/internal/util/infinity/OmniJawsClient$WeatherUpdateReceiver;

    const/4 v2, 0x2

    invoke-virtual {p1, v1, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 370
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/internal/util/infinity/OmniJawsClient;->mWeatherReceiverRegistered:Z

    .line 372
    :cond_38
    return-void
.end method

.method private blacklist unregisterReceiver(Landroid/content/Context;)V
    .registers 3

    .line 375
    iget-boolean v0, p0, Lcom/android/internal/util/infinity/OmniJawsClient;->mWeatherReceiverRegistered:Z

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/internal/util/infinity/OmniJawsClient;->mReceiver:Lcom/android/internal/util/infinity/OmniJawsClient$WeatherUpdateReceiver;

    if-eqz v0, :cond_13

    .line 377
    :try_start_8
    iget-object v0, p0, Lcom/android/internal/util/infinity/OmniJawsClient;->mReceiver:Lcom/android/internal/util/infinity/OmniJawsClient$WeatherUpdateReceiver;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_d} :catch_e

    goto :goto_f

    .line 378
    :catch_e
    move-exception p1

    :goto_f
    nop

    .line 379
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/internal/util/infinity/OmniJawsClient;->mWeatherReceiverRegistered:Z

    .line 381
    :cond_13
    return-void
.end method

.method private blacklist updateSettings(Landroid/content/Context;)V
    .registers 4

    .line 260
    iget-object v0, p0, Lcom/android/internal/util/infinity/OmniJawsClient;->mCachedInfo:Lcom/android/internal/util/infinity/OmniJawsClient$WeatherInfo;

    .line 261
    if-eqz v0, :cond_7

    iget-object v0, v0, Lcom/android/internal/util/infinity/OmniJawsClient$WeatherInfo;->iconPack:Ljava/lang/String;

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    .line 262
    :goto_8
    if-eqz v0, :cond_1f

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_11

    goto :goto_1f

    .line 264
    :cond_11
    iget-object v1, p0, Lcom/android/internal/util/infinity/OmniJawsClient;->mSettingIconPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    .line 265
    iput-object v0, p0, Lcom/android/internal/util/infinity/OmniJawsClient;->mSettingIconPackage:Ljava/lang/String;

    .line 266
    invoke-direct {p0, p1}, Lcom/android/internal/util/infinity/OmniJawsClient;->loadCustomIconPackage(Landroid/content/Context;)V

    goto :goto_22

    .line 263
    :cond_1f
    :goto_1f
    invoke-direct {p0, p1}, Lcom/android/internal/util/infinity/OmniJawsClient;->loadDefaultIconsPackage(Landroid/content/Context;)V

    .line 268
    :cond_22
    :goto_22
    return-void
.end method


# virtual methods
.method public blacklist addObserver(Landroid/content/Context;Lcom/android/internal/util/infinity/OmniJawsClient$OmniJawsObserver;)V
    .registers 5

    .line 333
    if-nez p2, :cond_3

    return-void

    .line 334
    :cond_3
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/util/infinity/OmniJawsClient;->removeObserver(Landroid/content/Context;Lcom/android/internal/util/infinity/OmniJawsClient$OmniJawsObserver;)V

    .line 335
    iget-object v0, p0, Lcom/android/internal/util/infinity/OmniJawsClient;->mObservers:Ljava/util/List;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 336
    invoke-direct {p0, p1}, Lcom/android/internal/util/infinity/OmniJawsClient;->registerReceiverIfNeeded(Landroid/content/Context;)V

    .line 337
    return-void
.end method

.method public blacklist getResOmni(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .registers 6

    .line 417
    iget-object v0, p0, Lcom/android/internal/util/infinity/OmniJawsClient;->mRes:Landroid/content/res/Resources;

    if-nez v0, :cond_7

    invoke-direct {p0, p1}, Lcom/android/internal/util/infinity/OmniJawsClient;->loadDefaultIconsPackage(Landroid/content/Context;)V

    .line 419
    :cond_7
    const/high16 p1, -0x10000

    :try_start_9
    iget-object v0, p0, Lcom/android/internal/util/infinity/OmniJawsClient;->mRes:Landroid/content/res/Resources;

    const-string v1, "drawable"

    iget-object v2, p0, Lcom/android/internal/util/infinity/OmniJawsClient;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, p2, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    .line 420
    iget-object v0, p0, Lcom/android/internal/util/infinity/OmniJawsClient;->mRes:Landroid/content/res/Resources;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 421
    if-eqz p2, :cond_1d

    :goto_1c
    goto :goto_23

    :cond_1d
    new-instance p2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {p2, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_22} :catch_24

    goto :goto_1c

    :goto_23
    return-object p2

    .line 422
    :catch_24
    move-exception p2

    .line 423
    const-string v0, "OmniJawsClient"

    const-string v1, "getResOmni"

    invoke-static {v0, v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 424
    new-instance p2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {p2, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    return-object p2
.end method

.method public blacklist getSettingsIntent()Landroid/content/Intent;
    .registers 4

    .line 128
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 129
    const-string v1, "org.omnirom.omnijaws"

    const-string v2, "org.omnirom.omnijaws.SettingsActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 128
    return-object v0
.end method

.method public blacklist getWeatherActivityIntent(Landroid/content/Context;)Landroid/content/Intent;
    .registers 4

    .line 133
    invoke-virtual {p0, p1}, Lcom/android/internal/util/infinity/OmniJawsClient;->isOmniJawsEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_16

    .line 134
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.MAIN"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 135
    const-string v0, "org.omnirom.omnijaws"

    const-string v1, "org.omnirom.omnijaws.WeatherActivity"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 134
    return-object p1

    .line 137
    :cond_16
    invoke-virtual {p0}, Lcom/android/internal/util/infinity/OmniJawsClient;->getSettingsIntent()Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method public blacklist getWeatherConditionImage(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .registers 6

    .line 392
    iget-object v0, p0, Lcom/android/internal/util/infinity/OmniJawsClient;->mRes:Landroid/content/res/Resources;

    if-nez v0, :cond_7

    .line 393
    invoke-direct {p0, p1}, Lcom/android/internal/util/infinity/OmniJawsClient;->loadDefaultIconsPackage(Landroid/content/Context;)V

    .line 396
    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/android/internal/util/infinity/OmniJawsClient;->mRes:Landroid/content/res/Resources;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/internal/util/infinity/OmniJawsClient;->mIconPrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "drawable"

    iget-object v2, p0, Lcom/android/internal/util/infinity/OmniJawsClient;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, p2, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    .line 397
    iget-object v0, p0, Lcom/android/internal/util/infinity/OmniJawsClient;->mRes:Landroid/content/res/Resources;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 398
    if-eqz p2, :cond_34

    goto :goto_38

    :cond_34
    invoke-direct {p0, p1}, Lcom/android/internal/util/infinity/OmniJawsClient;->getDefaultConditionImage(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p2
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_38} :catch_39

    :goto_38
    return-object p2

    .line 399
    :catch_39
    move-exception p2

    .line 400
    const-string v0, "OmniJawsClient"

    const-string v1, "getWeatherConditionImage"

    invoke-static {v0, v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 401
    invoke-direct {p0, p1}, Lcom/android/internal/util/infinity/OmniJawsClient;->getDefaultConditionImage(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public blacklist getWeatherInfo()Lcom/android/internal/util/infinity/OmniJawsClient$WeatherInfo;
    .registers 2

    .line 141
    iget-object v0, p0, Lcom/android/internal/util/infinity/OmniJawsClient;->mCachedInfo:Lcom/android/internal/util/infinity/OmniJawsClient$WeatherInfo;

    return-object v0
.end method

.method public blacklist isOmniJawsEnabled(Landroid/content/Context;)Z
    .registers 10

    .line 309
    invoke-virtual {p0, p1}, Lcom/android/internal/util/infinity/OmniJawsClient;->isOmniJawsServiceInstalled(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 311
    :cond_8
    :try_start_8
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/internal/util/infinity/OmniJawsClient;->SETTINGS_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/internal/util/infinity/OmniJawsClient;->SETTINGS_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_17} :catch_3c

    .line 313
    if-eqz p1, :cond_35

    :try_start_19
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0
    :try_end_23
    .catchall {:try_start_19 .. :try_end_23} :catchall_27

    const/4 v2, 0x1

    if-ne v0, v2, :cond_35

    goto :goto_36

    .line 311
    :catchall_27
    move-exception v0

    move-object v2, v0

    if-eqz p1, :cond_34

    :try_start_2b
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_2e
    .catchall {:try_start_2b .. :try_end_2e} :catchall_2f

    goto :goto_34

    :catchall_2f
    move-exception v0

    move-object p1, v0

    :try_start_31
    invoke-virtual {v2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_34
    :goto_34
    throw v2

    .line 313
    :cond_35
    move v2, v1

    .line 314
    :goto_36
    if-eqz p1, :cond_3b

    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_3b} :catch_3c

    .line 313
    :cond_3b
    return v2

    .line 314
    :catch_3c
    move-exception v0

    move-object p1, v0

    .line 315
    const-string v0, "OmniJawsClient"

    const-string v2, "isOmniJawsEnabled"

    invoke-static {v0, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 316
    return v1
.end method

.method public blacklist isOmniJawsServiceInstalled(Landroid/content/Context;)Z
    .registers 3

    .line 305
    const-string v0, "org.omnirom.omnijaws"

    invoke-direct {p0, p1, v0}, Lcom/android/internal/util/infinity/OmniJawsClient;->isAvailableApp(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public blacklist queryWeather(Landroid/content/Context;)V
    .registers 16

    .line 145
    invoke-virtual {p0, p1}, Lcom/android/internal/util/infinity/OmniJawsClient;->isOmniJawsEnabled(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "OmniJawsClient"

    if-nez v0, :cond_11

    .line 146
    const-string p1, "queryWeather while disabled"

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    iput-object v1, p0, Lcom/android/internal/util/infinity/OmniJawsClient;->mCachedInfo:Lcom/android/internal/util/infinity/OmniJawsClient$WeatherInfo;

    .line 148
    return-void

    .line 151
    :cond_11
    nop

    .line 153
    const/4 v3, 0x4

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, -0x1

    :try_start_17
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    sget-object v9, Lcom/android/internal/util/infinity/OmniJawsClient;->WEATHER_URI:Landroid/net/Uri;

    sget-object v10, Lcom/android/internal/util/infinity/OmniJawsClient;->WEATHER_PROJECTION:[Ljava/lang/String;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_26} :catch_15a

    .line 156
    if-eqz v8, :cond_152

    :try_start_28
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_152

    .line 157
    new-instance v0, Lcom/android/internal/util/infinity/OmniJawsClient$WeatherInfo;

    invoke-direct {v0}, Lcom/android/internal/util/infinity/OmniJawsClient$WeatherInfo;-><init>()V

    .line 158
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 160
    move v10, v5

    :goto_39
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v11

    if-ge v10, v11, :cond_142

    .line 161
    invoke-interface {v8, v10}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 162
    if-nez v10, :cond_107

    .line 163
    invoke-interface {v8, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v0, Lcom/android/internal/util/infinity/OmniJawsClient$WeatherInfo;->city:Ljava/lang/String;

    .line 164
    invoke-interface {v8, v6}, Landroid/database/Cursor;->getFloat(I)F

    move-result v11

    invoke-static {v11}, Lcom/android/internal/util/infinity/OmniJawsClient;->getFormattedValue(F)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v0, Lcom/android/internal/util/infinity/OmniJawsClient$WeatherInfo;->windSpeed:Ljava/lang/String;

    .line 165
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\u00b0"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v0, Lcom/android/internal/util/infinity/OmniJawsClient$WeatherInfo;->windDirection:Ljava/lang/String;

    .line 166
    const/4 v11, 0x3

    invoke-interface {v8, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    iput v11, v0, Lcom/android/internal/util/infinity/OmniJawsClient$WeatherInfo;->conditionCode:I

    .line 167
    invoke-interface {v8, v3}, Landroid/database/Cursor;->getFloat(I)F

    move-result v11

    invoke-static {v11}, Lcom/android/internal/util/infinity/OmniJawsClient;->getFormattedValue(F)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v0, Lcom/android/internal/util/infinity/OmniJawsClient$WeatherInfo;->temp:Ljava/lang/String;

    .line 168
    const/4 v11, 0x5

    invoke-interface {v8, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v0, Lcom/android/internal/util/infinity/OmniJawsClient$WeatherInfo;->humidity:Ljava/lang/String;

    .line 169
    const/4 v11, 0x6

    invoke-interface {v8, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v0, Lcom/android/internal/util/infinity/OmniJawsClient$WeatherInfo;->condition:Ljava/lang/String;

    .line 170
    const/16 v11, 0xb

    invoke-interface {v8, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    iput-object v11, v0, Lcom/android/internal/util/infinity/OmniJawsClient$WeatherInfo;->timeStamp:Ljava/lang/Long;

    .line 171
    const/16 v11, 0xd

    invoke-interface {v8, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v0, Lcom/android/internal/util/infinity/OmniJawsClient$WeatherInfo;->pinWheel:Ljava/lang/String;

    .line 173
    const-string v11, "feels_like"

    invoke-interface {v8, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 174
    if-eq v11, v7, :cond_b2

    invoke-interface {v8, v11}, Landroid/database/Cursor;->getFloat(I)F

    move-result v11

    iput v11, v0, Lcom/android/internal/util/infinity/OmniJawsClient$WeatherInfo;->feelsLike:F

    .line 175
    :cond_b2
    const-string v11, "pressure"

    invoke-interface {v8, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 176
    if-eq v11, v7, :cond_c0

    invoke-interface {v8, v11}, Landroid/database/Cursor;->getFloat(I)F

    move-result v11

    iput v11, v0, Lcom/android/internal/util/infinity/OmniJawsClient$WeatherInfo;->pressure:F

    .line 177
    :cond_c0
    const-string v11, "uvi"

    invoke-interface {v8, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 178
    if-eq v11, v7, :cond_ce

    invoke-interface {v8, v11}, Landroid/database/Cursor;->getFloat(I)F

    move-result v11

    iput v11, v0, Lcom/android/internal/util/infinity/OmniJawsClient$WeatherInfo;->uvi:F

    .line 179
    :cond_ce
    const-string v11, "visibility"

    invoke-interface {v8, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 180
    if-eq v11, v7, :cond_dc

    invoke-interface {v8, v11}, Landroid/database/Cursor;->getFloat(I)F

    move-result v11

    iput v11, v0, Lcom/android/internal/util/infinity/OmniJawsClient$WeatherInfo;->visibility:F

    .line 181
    :cond_dc
    const-string v11, "dew_point"

    invoke-interface {v8, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 182
    if-eq v11, v7, :cond_ea

    invoke-interface {v8, v11}, Landroid/database/Cursor;->getFloat(I)F

    move-result v11

    iput v11, v0, Lcom/android/internal/util/infinity/OmniJawsClient$WeatherInfo;->dewPoint:F

    .line 183
    :cond_ea
    const-string v11, "sunrise"

    invoke-interface {v8, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 184
    if-eq v11, v7, :cond_f8

    invoke-interface {v8, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    iput-wide v11, v0, Lcom/android/internal/util/infinity/OmniJawsClient$WeatherInfo;->sunrise:J

    .line 185
    :cond_f8
    const-string v11, "sunset"

    invoke-interface {v8, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 186
    if-eq v11, v7, :cond_106

    invoke-interface {v8, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    iput-wide v11, v0, Lcom/android/internal/util/infinity/OmniJawsClient$WeatherInfo;->sunset:J

    .line 187
    :cond_106
    goto :goto_13e

    .line 188
    :cond_107
    new-instance v11, Lcom/android/internal/util/infinity/OmniJawsClient$DayForecast;

    invoke-direct {v11}, Lcom/android/internal/util/infinity/OmniJawsClient$DayForecast;-><init>()V

    .line 189
    const/4 v12, 0x7

    invoke-interface {v8, v12}, Landroid/database/Cursor;->getFloat(I)F

    move-result v12

    invoke-static {v12}, Lcom/android/internal/util/infinity/OmniJawsClient;->getFormattedValue(F)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v11, Lcom/android/internal/util/infinity/OmniJawsClient$DayForecast;->low:Ljava/lang/String;

    .line 190
    const/16 v12, 0x8

    invoke-interface {v8, v12}, Landroid/database/Cursor;->getFloat(I)F

    move-result v12

    invoke-static {v12}, Lcom/android/internal/util/infinity/OmniJawsClient;->getFormattedValue(F)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v11, Lcom/android/internal/util/infinity/OmniJawsClient$DayForecast;->high:Ljava/lang/String;

    .line 191
    const/16 v12, 0x9

    invoke-interface {v8, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v11, Lcom/android/internal/util/infinity/OmniJawsClient$DayForecast;->condition:Ljava/lang/String;

    .line 192
    const/16 v12, 0xa

    invoke-interface {v8, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    iput v12, v11, Lcom/android/internal/util/infinity/OmniJawsClient$DayForecast;->conditionCode:I

    .line 193
    const/16 v12, 0xc

    invoke-interface {v8, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v11, Lcom/android/internal/util/infinity/OmniJawsClient$DayForecast;->date:Ljava/lang/String;

    .line 194
    invoke-interface {v9, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    :goto_13e
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_39

    .line 197
    :cond_142
    iput-object v9, v0, Lcom/android/internal/util/infinity/OmniJawsClient$WeatherInfo;->forecasts:Ljava/util/List;
    :try_end_144
    .catchall {:try_start_28 .. :try_end_144} :catchall_145

    goto :goto_153

    .line 153
    :catchall_145
    move-exception v0

    move-object v9, v0

    if-eqz v8, :cond_151

    :try_start_149
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_14c
    .catchall {:try_start_149 .. :try_end_14c} :catchall_14d

    goto :goto_151

    :catchall_14d
    move-exception v0

    :try_start_14e
    invoke-virtual {v9, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_151
    :goto_151
    throw v9

    .line 199
    :cond_152
    move-object v0, v1

    :goto_153
    if-eqz v8, :cond_158

    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_158
    .catch Ljava/lang/Exception; {:try_start_14e .. :try_end_158} :catch_15a

    .line 202
    :cond_158
    move-object v1, v0

    goto :goto_161

    .line 199
    :catch_15a
    move-exception v0

    .line 200
    const-string v8, "queryWeather: weather"

    invoke-static {v2, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 201
    nop

    .line 204
    :goto_161
    :try_start_161
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    sget-object v9, Lcom/android/internal/util/infinity/OmniJawsClient;->SETTINGS_URI:Landroid/net/Uri;

    sget-object v10, Lcom/android/internal/util/infinity/OmniJawsClient;->SETTINGS_PROJECTION:[Ljava/lang/String;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8
    :try_end_170
    .catch Ljava/lang/Exception; {:try_start_161 .. :try_end_170} :catch_1af

    .line 207
    if-eqz v8, :cond_1a9

    :try_start_172
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1a9

    .line 208
    invoke-interface {v8, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-nez v0, :cond_17f

    move v5, v6

    :cond_17f
    iput-boolean v5, p0, Lcom/android/internal/util/infinity/OmniJawsClient;->mMetric:Z

    .line 209
    if-eqz v1, :cond_1a9

    .line 210
    invoke-direct {p0}, Lcom/android/internal/util/infinity/OmniJawsClient;->getTemperatureUnit()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/internal/util/infinity/OmniJawsClient$WeatherInfo;->tempUnits:Ljava/lang/String;

    .line 211
    invoke-direct {p0}, Lcom/android/internal/util/infinity/OmniJawsClient;->getWindUnit()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/internal/util/infinity/OmniJawsClient$WeatherInfo;->windUnits:Ljava/lang/String;

    .line 212
    invoke-interface {v8, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/internal/util/infinity/OmniJawsClient$WeatherInfo;->provider:Ljava/lang/String;

    .line 213
    invoke-interface {v8, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/internal/util/infinity/OmniJawsClient$WeatherInfo;->iconPack:Ljava/lang/String;
    :try_end_19b
    .catchall {:try_start_172 .. :try_end_19b} :catchall_19c

    goto :goto_1a9

    .line 204
    :catchall_19c
    move-exception v0

    move-object v3, v0

    if-eqz v8, :cond_1a8

    :try_start_1a0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_1a3
    .catchall {:try_start_1a0 .. :try_end_1a3} :catchall_1a4

    goto :goto_1a8

    :catchall_1a4
    move-exception v0

    :try_start_1a5
    invoke-virtual {v3, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1a8
    :goto_1a8
    throw v3

    .line 216
    :cond_1a9
    :goto_1a9
    if-eqz v8, :cond_1ae

    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_1ae
    .catch Ljava/lang/Exception; {:try_start_1a5 .. :try_end_1ae} :catch_1af

    .line 218
    :cond_1ae
    goto :goto_1b5

    .line 216
    :catch_1af
    move-exception v0

    .line 217
    const-string v3, "queryWeather: settings"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 220
    :goto_1b5
    if-eqz v1, :cond_259

    .line 221
    :try_start_1b7
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    sget-object v9, Lcom/android/internal/util/infinity/OmniJawsClient;->HOURLY_URI:Landroid/net/Uri;

    sget-object v10, Lcom/android/internal/util/infinity/OmniJawsClient;->HOURLY_PROJECTION:[Ljava/lang/String;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_1c6
    .catch Ljava/lang/Exception; {:try_start_1b7 .. :try_end_1c6} :catch_253

    .line 223
    if-eqz v3, :cond_24d

    :try_start_1c8
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_24d

    .line 224
    const-string v0, "hourly_temperature"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 225
    const-string v4, "hourly_condition_code"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 226
    const-string v5, "hourly_condition"

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 227
    const-string v6, "hourly_timestamp"

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 228
    const-string v8, "hourly_humidity"

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 229
    const-string v9, "hourly_wind_speed"

    invoke-interface {v3, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 231
    if-eq v0, v7, :cond_23a

    if-eq v4, v7, :cond_23a

    if-eq v5, v7, :cond_23a

    if-eq v6, v7, :cond_23a

    if-eq v8, v7, :cond_23a

    if-ne v9, v7, :cond_1ff

    goto :goto_23a

    .line 235
    :cond_1ff
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 236
    :goto_204
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10

    if-eqz v10, :cond_237

    .line 237
    new-instance v10, Lcom/android/internal/util/infinity/OmniJawsClient$HourlyForecast;

    invoke-direct {v10}, Lcom/android/internal/util/infinity/OmniJawsClient$HourlyForecast;-><init>()V

    .line 238
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getFloat(I)F

    move-result v11

    iput v11, v10, Lcom/android/internal/util/infinity/OmniJawsClient$HourlyForecast;->temperature:F

    .line 239
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    iput v11, v10, Lcom/android/internal/util/infinity/OmniJawsClient$HourlyForecast;->conditionCode:I

    .line 240
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v10, Lcom/android/internal/util/infinity/OmniJawsClient$HourlyForecast;->condition:Ljava/lang/String;

    .line 241
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    iput-wide v11, v10, Lcom/android/internal/util/infinity/OmniJawsClient$HourlyForecast;->timestamp:J

    .line 242
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getFloat(I)F

    move-result v11

    iput v11, v10, Lcom/android/internal/util/infinity/OmniJawsClient$HourlyForecast;->humidity:F

    .line 243
    invoke-interface {v3, v9}, Landroid/database/Cursor;->getFloat(I)F

    move-result v11

    iput v11, v10, Lcom/android/internal/util/infinity/OmniJawsClient$HourlyForecast;->windSpeed:F

    .line 244
    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 245
    goto :goto_204

    .line 246
    :cond_237
    iput-object v7, v1, Lcom/android/internal/util/infinity/OmniJawsClient$WeatherInfo;->hourlyForecasts:Ljava/util/List;

    goto :goto_24d

    .line 233
    :cond_23a
    :goto_23a
    const-string v0, "queryWeather: hourly columns missing, skipping hourly forecasts"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_23f
    .catchall {:try_start_1c8 .. :try_end_23f} :catchall_240

    goto :goto_24d

    .line 221
    :catchall_240
    move-exception v0

    move-object v4, v0

    if-eqz v3, :cond_24c

    :try_start_244
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_247
    .catchall {:try_start_244 .. :try_end_247} :catchall_248

    goto :goto_24c

    :catchall_248
    move-exception v0

    :try_start_249
    invoke-virtual {v4, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_24c
    :goto_24c
    throw v4

    .line 249
    :cond_24d
    :goto_24d
    if-eqz v3, :cond_252

    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_252
    .catch Ljava/lang/Exception; {:try_start_249 .. :try_end_252} :catch_253

    .line 251
    :cond_252
    goto :goto_259

    .line 249
    :catch_253
    move-exception v0

    .line 250
    const-string v3, "queryWeather: hourly"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 254
    :cond_259
    :goto_259
    iput-object v1, p0, Lcom/android/internal/util/infinity/OmniJawsClient;->mCachedInfo:Lcom/android/internal/util/infinity/OmniJawsClient$WeatherInfo;

    .line 256
    invoke-direct {p0, p1}, Lcom/android/internal/util/infinity/OmniJawsClient;->updateSettings(Landroid/content/Context;)V

    .line 257
    return-void
.end method

.method public blacklist removeObserver(Landroid/content/Context;Lcom/android/internal/util/infinity/OmniJawsClient$OmniJawsObserver;)V
    .registers 5

    .line 340
    if-nez p2, :cond_3

    return-void

    .line 341
    :cond_3
    iget-object v0, p0, Lcom/android/internal/util/infinity/OmniJawsClient;->mObservers:Ljava/util/List;

    new-instance v1, Lcom/android/internal/util/infinity/OmniJawsClient$$ExternalSyntheticLambda1;

    invoke-direct {v1, p2}, Lcom/android/internal/util/infinity/OmniJawsClient$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/util/infinity/OmniJawsClient$OmniJawsObserver;)V

    invoke-interface {v0, v1}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    .line 345
    iget-object p2, p0, Lcom/android/internal/util/infinity/OmniJawsClient;->mObservers:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_18

    .line 346
    invoke-direct {p0, p1}, Lcom/android/internal/util/infinity/OmniJawsClient;->unregisterReceiver(Landroid/content/Context;)V

    .line 348
    :cond_18
    return-void
.end method
