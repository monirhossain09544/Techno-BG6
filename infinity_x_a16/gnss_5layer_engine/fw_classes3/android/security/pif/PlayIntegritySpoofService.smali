.class public final Landroid/security/pif/PlayIntegritySpoofService;
.super Ljava/lang/Object;
.source "PlayIntegritySpoofService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/pif/PlayIntegritySpoofService$CustomPackageInfoCreator;
    }
.end annotation


# static fields
.field private static final blacklist DROIDGUARD_PACKAGE:Ljava/lang/String; = "com.google.android.gms.unstable"

.field private static final blacklist FEATURES_NEXUS:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist FEATURES_PIXEL:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist FEATURES_PIXEL_OTHERS:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist FEATURES_TENSOR:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist GMS_PACKAGE:Ljava/lang/String; = "com.google.android.gms"

.field private static final blacklist GPHOTOS_PACKAGE:Ljava/lang/String; = "com.google.android.apps.photos"

.field private static final blacklist NETFLIX_PACKAGE:Ljava/lang/String; = "com.netflix.mediaclient"

.field private static final blacklist PIXEL_XL_PROPS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist PRIV_PKGS:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist ROM_SIGNATURE_DATA:Ljava/lang/String; = "MIIFyTCCA7GgAwIBAgIVALyxxl+zDS9SL68SzOr48309eAZyMA0GCSqGSIb3DQEBCwUAMHQxCzAJBgNVBAYTAlVTMRMwEQYDVQQIEwpDYWxpZm9ybmlhMRYwFAYDVQQHEw1Nb3VudGFpbiBWaWV3MRQwEgYDVQQKEwtHb29nbGUgSW5jLjEQMA4GA1UECxMHQW5kcm9pZDEQMA4GA1UEAxMHQW5kcm9pZDAgFw0yMjExMDExODExMzVaGA8yMDUyMTEwMTE4MTEzNVowdDELMAkGA1UEBhMCVVMxEzARBgNVBAgTCkNhbGlmb3JuaWExFjAUBgNVBAcTDU1vdW50YWluIFZpZXcxFDASBgNVBAoTC0dvb2dsZSBJbmMuMRAwDgYDVQQLEwdBbmRyb2lkMRAwDgYDVQQDEwdBbmRyb2lkMIICIjANBgkqhkiG9w0BAQEFAAOCAg8AMIICCgKCAgEAsqtalIy/nctKlrhd1UVoDffFGnDf9GLi0QQhsVoJkfF16vDDydZJOycG7/kQziRZhFdcoMrIYZzzw0ppBjsSe1AiWMuKXwTBaEtxN99S1xsJiW4/QMI6N6kMunydWRMsbJ6aAxi1lVq0bxSwr8Sg/8u9HGVivfdG8OpUM+qjuV5gey5xttNLK3BZDrAlco8RkJZryAD40flmJZrWXJmcr2HhJJUnqG4Z3MSziEgW1u1JnnY3f/BFdgYsA54SgdUGdQP3aqzSjIpGK01/vjrXvifHazSANjvl0AUE5i6AarMw2biEKB2ySUDp8idC5w12GpqDrhZ/QkW8yBSa87KbkMYXuRA2Gq1fYbQx3YJraw0UgZ4M3fFKpt6raxxM5j0sWHlULD7dAZMERvNESVrKG3tQ7B39WAD8QLGYc45DFEGOhKv5Fv8510h5sXK502IvGpI4FDwz2rbtAgJ0j+16db5wCSW5ThvNPhCheyciajc8dU1B5tJzZN/ksBpzne4Xf9gOLZ9ZU0+3Z5gHVvTS/YpxBFwiFpmL7dvGxew0cXGSsG5UTBlgr7i0SX0WhY4Djjo8IfPwrvvA0QaCFamdYXKqBsSHgEyXS9zgGIFPt2jWdhaS+sAa//5SXcWro0OdiKPuwEzLgj759ke1sHRnvO735dYn5whVbzlGyLBh3L0CAwEAAaNQME4wDAYDVR0TBAUwAwEB/zAdBgNVHQ4EFgQUU1eXQ7NoYKjvOQlh5V8jHQMoxA8wHwYDVR0jBBgwFoAUU1eXQ7NoYKjvOQlh5V8jHQMoxA8wDQYJKoZIhvcNAQELBQADggIBAHFIazRLs3itnZKllPnboSd6sHbzeJURKehx8GJPvIC+xWlwWyFO5+GHmgc3yh/SVd3Xja/k8Ud59WEYTjyJJWTw0Jygx37rHW7VGn2HDuy/x0D+els+S8HeLD1toPFMepjIXJn7nHLhtmzTPlDWDrhiaYsls/k5Izf89xYnI4euuOY2+1gsweJqFGfbznqyqy8xLyzoZ6bvBJtgeY+G3i/9Be14HseSNa4FvI1Oze/l2gUu1IXzN6DGWR/lxEyt+TncJfBGKbjafYrfSh3zsE4N3TU7BeOL5INirOMjre/jVgB1YQG5qLVaPoz6mdn75AbBBm5a5ahApLiKqzy/hP+1rWgw8Ikb7vbUqov/bnY3IlIU6XcPJTCDb9aRZQkStvYpQd82XTyxD/T0GgRLnUj5Uv6iZlikFx1KNj0YNS2T3gyvL++J9B0Y6gAkiG0EtNplz7Pomsv5pVdmHVdKMjqWw5/6zYzVmu5cXFtR384Ti1qwML1xkD6TC3VIv88rKIEjrkY2c+v1frh9fRJ2OmzXmML9NgHTjEiJR2Ib2iNrMKxkuTIs9oxKZgrJtJKvdU9qJJKM5PnZuNuHhGs6A/9gt9OccetYeQvVSqeEmQluWfcunQn9C9Vwi2BJIiVJh4IdWZf5/e2PlSSQ9CJjz2bKI17pzdxOmjQfE0JSF7Xt"

.field private static final blacklist SNAPCHAT_PACKAGE:Ljava/lang/String; = "com.snapchat.android"

.field private static final blacklist TAG:Ljava/lang/String; = "PIF"

.field private static final blacklist VENDING_PACKAGE:Ljava/lang/String; = "com.android.vending"

.field private static blacklist sInstance:Landroid/security/pif/PlayIntegritySpoofService;


# instance fields
.field private final blacklist mBuildFields:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private volatile blacklist mConfigLoaded:Z

.field private volatile blacklist mDebug:Z

.field private final blacklist mLoadLock:Ljava/lang/Object;

.field private volatile blacklist mSignatureSpoofed:Z

.field private volatile blacklist mSpoofBuild:Z

.field private volatile blacklist mSpoofNetflix:Z

.field private volatile blacklist mSpoofPhotos:Z

.field private volatile blacklist mSpoofProps:Z

.field private volatile blacklist mSpoofProvider:Z

.field private volatile blacklist mSpoofSignature:Z

.field private volatile blacklist mSpoofSnapchat:Z

.field private volatile blacklist mSpoofVendingBuild:Z

.field private volatile blacklist mSpoofVendingSdk:Z

.field private final blacklist mSystemProps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private volatile blacklist mVerboseLogs:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 17

    .line 40
    const-string v15, "FINGERPRINT"

    const-string v16, "google/marlin/marlin:10/QP1A.191005.007.A3/5972272:user/release-keys"

    const-string v1, "BRAND"

    const-string v2, "google"

    const-string v3, "MANUFACTURER"

    const-string v4, "Google"

    const-string v5, "DEVICE"

    const-string v6, "marlin"

    const-string v7, "PRODUCT"

    const-string v8, "marlin"

    const-string v9, "HARDWARE"

    const-string v10, "marlin"

    const-string v11, "ID"

    const-string v12, "QP1A.191005.007.A3"

    const-string v13, "MODEL"

    const-string v14, "Pixel XL"

    invoke-static/range {v1 .. v16}, Ljava/util/Map;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Landroid/security/pif/PlayIntegritySpoofService;->PIXEL_XL_PROPS:Ljava/util/Map;

    .line 51
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Landroid/security/pif/PlayIntegritySpoofService;->PRIV_PKGS:Landroid/util/ArraySet;

    .line 52
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Landroid/security/pif/PlayIntegritySpoofService;->FEATURES_PIXEL:Landroid/util/ArraySet;

    .line 53
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Landroid/security/pif/PlayIntegritySpoofService;->FEATURES_PIXEL_OTHERS:Landroid/util/ArraySet;

    .line 54
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Landroid/security/pif/PlayIntegritySpoofService;->FEATURES_TENSOR:Landroid/util/ArraySet;

    .line 55
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Landroid/security/pif/PlayIntegritySpoofService;->FEATURES_NEXUS:Landroid/util/ArraySet;

    .line 58
    sget-object v0, Landroid/security/pif/PlayIntegritySpoofService;->FEATURES_PIXEL:Landroid/util/ArraySet;

    const-string v13, "com.google.android.feature.GOOGLE_BUILD"

    const-string v14, "com.google.android.feature.GOOGLE_EXPERIENCE"

    const-string v1, "com.google.android.apps.photos.PIXEL_2019_PRELOAD"

    const-string v2, "com.google.android.apps.photos.PIXEL_2019_MIDYEAR_PRELOAD"

    const-string v3, "com.google.android.apps.photos.PIXEL_2018_PRELOAD"

    const-string v4, "com.google.android.apps.photos.PIXEL_2017_PRELOAD"

    const-string v5, "com.google.android.feature.PIXEL_2021_MIDYEAR_EXPERIENCE"

    const-string v6, "com.google.android.feature.PIXEL_2020_EXPERIENCE"

    const-string v7, "com.google.android.feature.PIXEL_2020_MIDYEAR_EXPERIENCE"

    const-string v8, "com.google.android.feature.PIXEL_2019_EXPERIENCE"

    const-string v9, "com.google.android.feature.PIXEL_2019_MIDYEAR_EXPERIENCE"

    const-string v10, "com.google.android.feature.PIXEL_2018_EXPERIENCE"

    const-string v11, "com.google.android.feature.PIXEL_2017_EXPERIENCE"

    const-string v12, "com.google.android.feature.PIXEL_EXPERIENCE"

    filled-new-array/range {v1 .. v14}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 75
    sget-object v0, Landroid/security/pif/PlayIntegritySpoofService;->FEATURES_PIXEL_OTHERS:Landroid/util/ArraySet;

    const-string v14, "com.google.android.apps.dialer.call_recording_audio"

    const-string v15, "com.google.android.apps.dialer.SUPPORTED"

    const-string v1, "com.google.android.feature.ASI"

    const-string v2, "com.google.android.feature.ANDROID_ONE_EXPERIENCE"

    const-string v3, "com.google.android.feature.GOOGLE_FI_BUNDLED"

    const-string v4, "com.google.android.feature.LILY_EXPERIENCE"

    const-string v5, "com.google.android.feature.TURBO_PRELOAD"

    const-string v6, "com.google.android.feature.WELLBEING"

    const-string v7, "com.google.lens.feature.IMAGE_INTEGRATION"

    const-string v8, "com.google.lens.feature.CAMERA_INTEGRATION"

    const-string v9, "com.google.photos.trust_debug_certs"

    const-string v10, "com.google.android.feature.AER_OPTIMIZED"

    const-string v11, "com.google.android.feature.NEXT_GENERATION_ASSISTANT"

    const-string v12, "android.software.game_service"

    const-string v13, "com.google.android.feature.EXCHANGE_6_2"

    filled-new-array/range {v1 .. v15}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 93
    sget-object v0, Landroid/security/pif/PlayIntegritySpoofService;->FEATURES_TENSOR:Landroid/util/ArraySet;

    const-string v10, "com.google.android.feature.PIXEL_2022_MIDYEAR_EXPERIENCE"

    const-string v11, "com.google.android.feature.PIXEL_2021_EXPERIENCE"

    const-string v1, "com.google.android.feature.PIXEL_2026_EXPERIENCE"

    const-string v2, "com.google.android.feature.PIXEL_2026_MIDYEAR_EXPERIENCE"

    const-string v3, "com.google.android.feature.PIXEL_2025_EXPERIENCE"

    const-string v4, "com.google.android.feature.PIXEL_2025_MIDYEAR_EXPERIENCE"

    const-string v5, "com.google.android.feature.PIXEL_2024_EXPERIENCE"

    const-string v6, "com.google.android.feature.PIXEL_2024_MIDYEAR_EXPERIENCE"

    const-string v7, "com.google.android.feature.PIXEL_2023_EXPERIENCE"

    const-string v8, "com.google.android.feature.PIXEL_2023_MIDYEAR_EXPERIENCE"

    const-string v9, "com.google.android.feature.PIXEL_2022_EXPERIENCE"

    filled-new-array/range {v1 .. v11}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 107
    sget-object v0, Landroid/security/pif/PlayIntegritySpoofService;->FEATURES_NEXUS:Landroid/util/ArraySet;

    const-string v1, "com.google.android.feature.GOOGLE_BUILD"

    const-string v2, "com.google.android.feature.GOOGLE_EXPERIENCE"

    const-string v3, "com.google.android.apps.photos.NEXUS_PRELOAD"

    const-string v4, "com.google.android.apps.photos.nexus_preload"

    const-string v5, "com.google.android.feature.PIXEL_EXPERIENCE"

    filled-new-array {v3, v4, v5, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 115
    sget-object v0, Landroid/security/pif/PlayIntegritySpoofService;->PRIV_PKGS:Landroid/util/ArraySet;

    const-string v1, "com.google.android.apps.pixel.agent"

    const-string v2, "com.google.android.apps.pixel.creativeassistant"

    const-string v3, "com.google.android.googlequicksearchbox"

    const-string v4, "com.google.android.apps.photos"

    filled-new-array {v3, v4, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 121
    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 3

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    const/4 v0, 0x0

    iput v0, p0, Landroid/security/pif/PlayIntegritySpoofService;->mVerboseLogs:I

    .line 154
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/security/pif/PlayIntegritySpoofService;->mSpoofBuild:Z

    .line 155
    iput-boolean v1, p0, Landroid/security/pif/PlayIntegritySpoofService;->mSpoofProps:Z

    .line 156
    iput-boolean v1, p0, Landroid/security/pif/PlayIntegritySpoofService;->mSpoofProvider:Z

    .line 157
    iput-boolean v0, p0, Landroid/security/pif/PlayIntegritySpoofService;->mSpoofSignature:Z

    .line 158
    iput-boolean v1, p0, Landroid/security/pif/PlayIntegritySpoofService;->mSpoofVendingBuild:Z

    .line 159
    iput-boolean v0, p0, Landroid/security/pif/PlayIntegritySpoofService;->mSpoofVendingSdk:Z

    .line 160
    iput-boolean v0, p0, Landroid/security/pif/PlayIntegritySpoofService;->mSpoofPhotos:Z

    .line 161
    iput-boolean v0, p0, Landroid/security/pif/PlayIntegritySpoofService;->mSpoofNetflix:Z

    .line 162
    iput-boolean v0, p0, Landroid/security/pif/PlayIntegritySpoofService;->mSpoofSnapchat:Z

    .line 163
    iput-boolean v0, p0, Landroid/security/pif/PlayIntegritySpoofService;->mDebug:Z

    .line 165
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Landroid/security/pif/PlayIntegritySpoofService;->mBuildFields:Ljava/util/Map;

    .line 166
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Landroid/security/pif/PlayIntegritySpoofService;->mSystemProps:Ljava/util/Map;

    .line 168
    iput-boolean v0, p0, Landroid/security/pif/PlayIntegritySpoofService;->mConfigLoaded:Z

    .line 169
    iput-boolean v0, p0, Landroid/security/pif/PlayIntegritySpoofService;->mSignatureSpoofed:Z

    .line 171
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/security/pif/PlayIntegritySpoofService;->mLoadLock:Ljava/lang/Object;

    .line 173
    return-void
.end method

.method private blacklist ensureLoaded()V
    .registers 3

    .line 185
    iget-boolean v0, p0, Landroid/security/pif/PlayIntegritySpoofService;->mConfigLoaded:Z

    if-eqz v0, :cond_5

    return-void

    .line 186
    :cond_5
    iget-object v0, p0, Landroid/security/pif/PlayIntegritySpoofService;->mLoadLock:Ljava/lang/Object;

    monitor-enter v0

    .line 187
    :try_start_8
    iget-boolean v1, p0, Landroid/security/pif/PlayIntegritySpoofService;->mConfigLoaded:Z

    if-eqz v1, :cond_e

    monitor-exit v0

    return-void

    .line 188
    :cond_e
    invoke-direct {p0}, Landroid/security/pif/PlayIntegritySpoofService;->loadConfigInternal()V

    .line 189
    monitor-exit v0

    .line 190
    return-void

    .line 189
    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_8 .. :try_end_15} :catchall_13

    throw v1
.end method

.method private blacklist findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .line 493
    nop

    .line 494
    :goto_1
    if-eqz p1, :cond_16

    const-class v0, Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 496
    :try_start_b
    invoke-virtual {p1, p2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldException; {:try_start_b .. :try_end_f} :catch_10

    return-object p1

    .line 497
    :catch_10
    move-exception v0

    .line 498
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p1

    .line 499
    goto :goto_1

    .line 501
    :cond_16
    new-instance p1, Ljava/lang/NoSuchFieldException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Field \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "\' not found"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static declared-synchronized blacklist getInstance()Landroid/security/pif/PlayIntegritySpoofService;
    .registers 2

    const-class v0, Landroid/security/pif/PlayIntegritySpoofService;

    monitor-enter v0

    .line 176
    :try_start_3
    sget-object v1, Landroid/security/pif/PlayIntegritySpoofService;->sInstance:Landroid/security/pif/PlayIntegritySpoofService;

    if-nez v1, :cond_13

    .line 177
    new-instance v1, Landroid/security/pif/PlayIntegritySpoofService;

    invoke-direct {v1}, Landroid/security/pif/PlayIntegritySpoofService;-><init>()V

    sput-object v1, Landroid/security/pif/PlayIntegritySpoofService;->sInstance:Landroid/security/pif/PlayIntegritySpoofService;

    .line 178
    sget-object v1, Landroid/security/pif/PlayIntegritySpoofService;->sInstance:Landroid/security/pif/PlayIntegritySpoofService;

    invoke-direct {v1}, Landroid/security/pif/PlayIntegritySpoofService;->loadConfig()V

    .line 180
    :cond_13
    sget-object v1, Landroid/security/pif/PlayIntegritySpoofService;->sInstance:Landroid/security/pif/PlayIntegritySpoofService;

    invoke-direct {v1}, Landroid/security/pif/PlayIntegritySpoofService;->ensureLoaded()V

    .line 181
    sget-object v1, Landroid/security/pif/PlayIntegritySpoofService;->sInstance:Landroid/security/pif/PlayIntegritySpoofService;
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_1c

    monitor-exit v0

    return-object v1

    .line 175
    :catchall_1c
    move-exception v1

    :try_start_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method private blacklist hasField(Ljava/lang/Class;Ljava/lang/String;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 585
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_7
    if-ge v2, v0, :cond_1a

    aget-object v3, p1, v2

    .line 586
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    const/4 p1, 0x1

    return p1

    .line 585
    :cond_17
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 588
    :cond_1a
    return v1
.end method

.method private blacklist loadConfig()V
    .registers 3

    .line 193
    iget-object v0, p0, Landroid/security/pif/PlayIntegritySpoofService;->mLoadLock:Ljava/lang/Object;

    monitor-enter v0

    .line 194
    :try_start_3
    invoke-direct {p0}, Landroid/security/pif/PlayIntegritySpoofService;->loadConfigInternal()V

    .line 195
    monitor-exit v0

    .line 196
    return-void

    .line 195
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v1
.end method

.method private blacklist loadConfigInternal()V
    .registers 11

    .line 199
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    .line 200
    const-string v1, "PIF"

    if-nez v0, :cond_12

    .line 201
    iget v0, p0, Landroid/security/pif/PlayIntegritySpoofService;->mVerboseLogs:I

    if-lez v0, :cond_11

    const-string v0, "ActivityManager not ready, skipping PIF config load"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    :cond_11
    return-void

    .line 207
    :cond_12
    :try_start_12
    invoke-interface {v0}, Landroid/app/IActivityManager;->getSpoofPifConfig()Ljava/lang/String;

    move-result-object v2

    .line 208
    invoke-interface {v0}, Landroid/app/IActivityManager;->getSpoofPifSpoofPhotos()Ljava/lang/String;

    move-result-object v3

    .line 209
    invoke-interface {v0}, Landroid/app/IActivityManager;->getSpoofPifSpoofNetflix()Ljava/lang/String;

    move-result-object v4

    .line 210
    invoke-interface {v0}, Landroid/app/IActivityManager;->getSpoofPifSpoofSnapchat()Ljava/lang/String;

    move-result-object v0
    :try_end_22
    .catchall {:try_start_12 .. :try_end_22} :catchall_124

    .line 211
    const-string/jumbo v5, "true"

    const-string v6, "1"

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v3, :cond_3a

    :try_start_2b
    invoke-virtual {v6, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3a

    .line 212
    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_38

    goto :goto_3a

    :cond_38
    move v3, v7

    goto :goto_3b

    :cond_3a
    :goto_3a
    move v3, v8

    :goto_3b
    iput-boolean v3, p0, Landroid/security/pif/PlayIntegritySpoofService;->mSpoofPhotos:Z

    .line 213
    if-eqz v4, :cond_4d

    invoke-virtual {v6, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4b

    .line 214
    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4d

    :cond_4b
    move v3, v8

    goto :goto_4e

    :cond_4d
    move v3, v7

    :goto_4e
    iput-boolean v3, p0, Landroid/security/pif/PlayIntegritySpoofService;->mSpoofNetflix:Z

    .line 215
    if-eqz v0, :cond_60

    invoke-virtual {v6, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5e

    .line 216
    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_60

    :cond_5e
    move v0, v8

    goto :goto_61

    :cond_60
    move v0, v7

    :goto_61
    iput-boolean v0, p0, Landroid/security/pif/PlayIntegritySpoofService;->mSpoofSnapchat:Z
    :try_end_63
    .catchall {:try_start_2b .. :try_end_63} :catchall_124

    .line 220
    nop

    .line 222
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 223
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 225
    if-eqz v2, :cond_10e

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_78

    goto/16 :goto_10e

    .line 233
    :cond_78
    iput v7, p0, Landroid/security/pif/PlayIntegritySpoofService;->mVerboseLogs:I

    .line 234
    iput-boolean v8, p0, Landroid/security/pif/PlayIntegritySpoofService;->mSpoofBuild:Z

    .line 235
    iput-boolean v8, p0, Landroid/security/pif/PlayIntegritySpoofService;->mSpoofProps:Z

    .line 236
    iput-boolean v8, p0, Landroid/security/pif/PlayIntegritySpoofService;->mSpoofProvider:Z

    .line 237
    iput-boolean v7, p0, Landroid/security/pif/PlayIntegritySpoofService;->mSpoofSignature:Z

    .line 238
    iput-boolean v8, p0, Landroid/security/pif/PlayIntegritySpoofService;->mSpoofVendingBuild:Z

    .line 239
    iput-boolean v7, p0, Landroid/security/pif/PlayIntegritySpoofService;->mSpoofVendingSdk:Z

    .line 240
    iput-boolean v7, p0, Landroid/security/pif/PlayIntegritySpoofService;->mDebug:Z

    .line 243
    :try_start_88
    iget-object v0, p0, Landroid/security/pif/PlayIntegritySpoofService;->mBuildFields:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 244
    iget-object v0, p0, Landroid/security/pif/PlayIntegritySpoofService;->mSystemProps:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 246
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 247
    const-string/jumbo v3, "{"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a3

    .line 248
    invoke-direct {p0, v2}, Landroid/security/pif/PlayIntegritySpoofService;->parseJson(Ljava/lang/String;)V

    goto :goto_a6

    .line 250
    :cond_a3
    invoke-direct {p0, v2}, Landroid/security/pif/PlayIntegritySpoofService;->parseProp(Ljava/lang/String;)V

    .line 253
    :goto_a6
    iput-boolean v8, p0, Landroid/security/pif/PlayIntegritySpoofService;->mConfigLoaded:Z

    .line 254
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PIF config loaded, fields="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/security/pif/PlayIntegritySpoofService;->mBuildFields:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", props="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/security/pif/PlayIntegritySpoofService;->mSystemProps:Ljava/util/Map;

    .line 255
    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 254
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    iget-object v0, p0, Landroid/security/pif/PlayIntegritySpoofService;->mBuildFields:Ljava/util/Map;

    const-string v2, "SECURITY_PATCH"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 260
    if-eqz v0, :cond_106

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_106

    .line 261
    iget-object v2, p0, Landroid/security/pif/PlayIntegritySpoofService;->mSystemProps:Ljava/util/Map;

    const-string/jumbo v3, "ro.build.version.security_patch"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    iget-object v2, p0, Landroid/security/pif/PlayIntegritySpoofService;->mSystemProps:Ljava/util/Map;

    const-string/jumbo v3, "ro.vendor.build.security_patch"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    iget-object v2, p0, Landroid/security/pif/PlayIntegritySpoofService;->mSystemProps:Ljava/util/Map;

    const-string/jumbo v3, "ro.system.build.version.security_patch"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    iget-object v2, p0, Landroid/security/pif/PlayIntegritySpoofService;->mSystemProps:Ljava/util/Map;

    const-string/jumbo v3, "ro.product.build.version.security_patch"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_106
    .catchall {:try_start_88 .. :try_end_106} :catchall_107

    .line 268
    :cond_106
    goto :goto_10d

    .line 266
    :catchall_107
    move-exception v0

    .line 267
    const-string v2, "Failed to load PIF config"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 269
    :goto_10d
    return-void

    .line 226
    :cond_10e
    :goto_10e
    iget-object v0, p0, Landroid/security/pif/PlayIntegritySpoofService;->mBuildFields:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 227
    iget-object v0, p0, Landroid/security/pif/PlayIntegritySpoofService;->mSystemProps:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 228
    iput-boolean v7, p0, Landroid/security/pif/PlayIntegritySpoofService;->mConfigLoaded:Z

    .line 229
    iget v0, p0, Landroid/security/pif/PlayIntegritySpoofService;->mVerboseLogs:I

    if-lez v0, :cond_123

    const-string v0, "No PIF config in Settings.Secure"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    :cond_123
    return-void

    .line 217
    :catchall_124
    move-exception v0

    .line 218
    const-string v2, "Failed to fetch PIF config from system_server"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 219
    return-void
.end method

.method private blacklist parseJson(Ljava/lang/String;)V
    .registers 5

    .line 295
    :try_start_0
    new-instance v0, Landroid/util/JsonReader;

    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_52

    .line 296
    :try_start_a
    invoke-virtual {v0}, Landroid/util/JsonReader;->beginObject()V

    .line 297
    :goto_d
    invoke-virtual {v0}, Landroid/util/JsonReader;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_41

    .line 298
    invoke-virtual {v0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object p1

    .line 300
    sget-object v1, Landroid/security/pif/PlayIntegritySpoofService$1;->$SwitchMap$android$util$JsonToken:[I

    invoke-virtual {v0}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/JsonToken;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_5c

    .line 311
    invoke-virtual {v0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    goto :goto_3d

    .line 308
    :pswitch_2b
    invoke-virtual {v0}, Landroid/util/JsonReader;->nextNull()V

    .line 309
    goto :goto_d

    .line 305
    :pswitch_2f
    invoke-virtual {v0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    .line 306
    goto :goto_3d

    .line 302
    :pswitch_34
    invoke-virtual {v0}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    .line 303
    nop

    .line 314
    :goto_3d
    invoke-direct {p0, p1, v1}, Landroid/security/pif/PlayIntegritySpoofService;->processKeyValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    goto :goto_d

    .line 316
    :cond_41
    invoke-virtual {v0}, Landroid/util/JsonReader;->endObject()V
    :try_end_44
    .catchall {:try_start_a .. :try_end_44} :catchall_48

    .line 317
    :try_start_44
    invoke-virtual {v0}, Landroid/util/JsonReader;->close()V
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_47} :catch_52

    .line 319
    goto :goto_5a

    .line 295
    :catchall_48
    move-exception p1

    :try_start_49
    invoke-virtual {v0}, Landroid/util/JsonReader;->close()V
    :try_end_4c
    .catchall {:try_start_49 .. :try_end_4c} :catchall_4d

    goto :goto_51

    :catchall_4d
    move-exception v0

    :try_start_4e
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_51
    throw p1
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_52} :catch_52

    .line 317
    :catch_52
    move-exception p1

    .line 318
    const-string v0, "PIF"

    const-string v1, "Failed to parse JSON config"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 320
    :goto_5a
    return-void

    nop

    :pswitch_data_5c
    .packed-switch 0x1
        :pswitch_34
        :pswitch_2f
        :pswitch_2b
    .end packed-switch
.end method

.method private blacklist parseProp(Ljava/lang/String;)V
    .registers 8

    .line 272
    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 273
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_9
    if-ge v2, v0, :cond_58

    aget-object v3, p1, v2

    .line 274
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 275
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_55

    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_20

    goto :goto_55

    .line 277
    :cond_20
    const/16 v4, 0x3d

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 278
    if-gtz v4, :cond_29

    goto :goto_55

    .line 280
    :cond_29
    invoke-virtual {v3, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 281
    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 283
    const/16 v4, 0x23

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 284
    if-ltz v4, :cond_4b

    .line 285
    invoke-virtual {v3, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 288
    :cond_4b
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_52

    goto :goto_55

    .line 290
    :cond_52
    invoke-direct {p0, v5, v3}, Landroid/security/pif/PlayIntegritySpoofService;->processKeyValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    :cond_55
    :goto_55
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 292
    :cond_58
    return-void
.end method

.method private blacklist processKeyValue(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    .line 323
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    sparse-switch v0, :sswitch_data_118

    :cond_9
    goto :goto_6c

    :sswitch_a
    const-string/jumbo v0, "spoofProps"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x3

    goto :goto_6d

    :sswitch_15
    const-string/jumbo v0, "spoofBuild"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x2

    goto :goto_6d

    :sswitch_20
    const-string/jumbo v0, "spoofVendingBuild"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x6

    goto :goto_6d

    :sswitch_2b
    const-string v0, "DEBUG"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0x8

    goto :goto_6d

    :sswitch_36
    const-string v0, "VERBOSE_LOGS"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    move v0, v1

    goto :goto_6d

    :sswitch_40
    const-string/jumbo v0, "spoofProvider"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x4

    goto :goto_6d

    :sswitch_4b
    const-string/jumbo v0, "spoofVendingSdk"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x7

    goto :goto_6d

    :sswitch_56
    const-string/jumbo v0, "spoofSignature"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x5

    goto :goto_6d

    :sswitch_61
    const-string/jumbo v0, "verboseLogs"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    move v0, v2

    goto :goto_6d

    :goto_6c
    const/4 v0, -0x1

    :goto_6d
    const-string/jumbo v3, "true"

    const-string v4, "1"

    packed-switch v0, :pswitch_data_13e

    .line 354
    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_112

    const-string v0, "*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10c

    goto/16 :goto_112

    .line 351
    :pswitch_87
    invoke-virtual {v4, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_95

    invoke-virtual {v3, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_94

    goto :goto_95

    :cond_94
    move v1, v2

    :cond_95
    :goto_95
    iput-boolean v1, p0, Landroid/security/pif/PlayIntegritySpoofService;->mDebug:Z

    .line 352
    goto/16 :goto_117

    .line 348
    :pswitch_99
    invoke-virtual {v4, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a7

    invoke-virtual {v3, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_a6

    goto :goto_a7

    :cond_a6
    move v1, v2

    :cond_a7
    :goto_a7
    iput-boolean v1, p0, Landroid/security/pif/PlayIntegritySpoofService;->mSpoofVendingSdk:Z

    .line 349
    goto/16 :goto_117

    .line 345
    :pswitch_ab
    invoke-virtual {v4, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b9

    invoke-virtual {v3, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_b8

    goto :goto_b9

    :cond_b8
    move v1, v2

    :cond_b9
    :goto_b9
    iput-boolean v1, p0, Landroid/security/pif/PlayIntegritySpoofService;->mSpoofVendingBuild:Z

    .line 346
    goto/16 :goto_117

    .line 342
    :pswitch_bd
    invoke-virtual {v4, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_cb

    invoke-virtual {v3, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_ca

    goto :goto_cb

    :cond_ca
    move v1, v2

    :cond_cb
    :goto_cb
    iput-boolean v1, p0, Landroid/security/pif/PlayIntegritySpoofService;->mSpoofSignature:Z

    .line 343
    goto :goto_117

    .line 339
    :pswitch_ce
    invoke-virtual {v4, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_dc

    invoke-virtual {v3, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_db

    goto :goto_dc

    :cond_db
    move v1, v2

    :cond_dc
    :goto_dc
    iput-boolean v1, p0, Landroid/security/pif/PlayIntegritySpoofService;->mSpoofProvider:Z

    .line 340
    goto :goto_117

    .line 336
    :pswitch_df
    invoke-virtual {v4, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_ed

    invoke-virtual {v3, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_ec

    goto :goto_ed

    :cond_ec
    move v1, v2

    :cond_ed
    :goto_ed
    iput-boolean v1, p0, Landroid/security/pif/PlayIntegritySpoofService;->mSpoofProps:Z

    .line 337
    goto :goto_117

    .line 333
    :pswitch_f0
    invoke-virtual {v4, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_fe

    invoke-virtual {v3, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_fd

    goto :goto_fe

    :cond_fd
    move v1, v2

    :cond_fe
    :goto_fe
    iput-boolean v1, p0, Landroid/security/pif/PlayIntegritySpoofService;->mSpoofBuild:Z

    .line 334
    goto :goto_117

    .line 327
    :pswitch_101
    :try_start_101
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Landroid/security/pif/PlayIntegritySpoofService;->mVerboseLogs:I
    :try_end_107
    .catch Ljava/lang/NumberFormatException; {:try_start_101 .. :try_end_107} :catch_108

    .line 330
    goto :goto_117

    .line 328
    :catch_108
    move-exception p1

    .line 329
    iput v2, p0, Landroid/security/pif/PlayIntegritySpoofService;->mVerboseLogs:I

    .line 331
    goto :goto_117

    .line 357
    :cond_10c
    iget-object v0, p0, Landroid/security/pif/PlayIntegritySpoofService;->mBuildFields:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_117

    .line 355
    :cond_112
    :goto_112
    iget-object v0, p0, Landroid/security/pif/PlayIntegritySpoofService;->mSystemProps:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    :goto_117
    return-void

    :sswitch_data_118
    .sparse-switch
        -0x792addaf -> :sswitch_61
        -0x3e289451 -> :sswitch_56
        -0x27aa0e3a -> :sswitch_4b
        -0x262787e6 -> :sswitch_40
        -0x1f448194 -> :sswitch_36
        0x3de9e33 -> :sswitch_2b
        0x19b8c8fa -> :sswitch_20
        0x474bace5 -> :sswitch_15
        0x480fafe7 -> :sswitch_a
    .end sparse-switch

    :pswitch_data_13e
    .packed-switch 0x0
        :pswitch_101
        :pswitch_101
        :pswitch_f0
        :pswitch_df
        :pswitch_ce
        :pswitch_bd
        :pswitch_ab
        :pswitch_99
        :pswitch_87
    .end packed-switch
.end method

.method private blacklist spoofField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 14

    .line 530
    const-string v0, "PIF"

    if-eqz p2, :cond_129

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_c

    goto/16 :goto_129

    .line 539
    :cond_c
    :try_start_c
    const-class v1, Landroid/os/Build;

    invoke-direct {p0, v1, p1}, Landroid/security/pif/PlayIntegritySpoofService;->hasField(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1c

    .line 540
    const-class v1, Landroid/os/Build;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    goto :goto_2a

    .line 541
    :cond_1c
    const-class v1, Landroid/os/Build$VERSION;

    invoke-direct {p0, v1, p1}, Landroid/security/pif/PlayIntegritySpoofService;->hasField(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f6

    .line 542
    const-class v1, Landroid/os/Build$VERSION;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 548
    :goto_2a
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 549
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 551
    invoke-virtual {p2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_3a} :catch_111

    const-string v5, "]: "

    const-string v6, "["

    const/4 v7, 0x0

    if-eqz v4, :cond_6c

    .line 552
    :try_start_41
    iget p3, p0, Landroid/security/pif/PlayIntegritySpoofService;->mVerboseLogs:I

    const/4 v2, 0x2

    if-le p3, v2, :cond_68

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " (unchanged)"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    :cond_68
    invoke-virtual {v1, v7}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 554
    return-void

    .line 557
    :cond_6c
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v4

    .line 560
    const-class v8, Ljava/lang/String;

    if-ne v4, v8, :cond_76

    .line 561
    move-object v4, p2

    goto :goto_9c

    .line 562
    :cond_76
    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v4, v8, :cond_83

    .line 563
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_9c

    .line 564
    :cond_83
    sget-object v8, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v4, v8, :cond_90

    .line 565
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    goto :goto_9c

    .line 566
    :cond_90
    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v4, v8, :cond_dc

    .line 567
    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 574
    :goto_9c
    invoke-virtual {v1, v2, v4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 575
    invoke-virtual {v1, v7}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 577
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PIF/Java:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    goto :goto_128

    .line 569
    :cond_dc
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unsupported field type: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    invoke-virtual {v1, v7}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 571
    return-void

    .line 544
    :cond_f6
    iget p2, p0, Landroid/security/pif/PlayIntegritySpoofService;->mVerboseLogs:I

    if-le p2, v2, :cond_110

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Field not found: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_110
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_110} :catch_111

    .line 545
    :cond_110
    return-void

    .line 579
    :catch_111
    move-exception p2

    .line 580
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to spoof "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 582
    :goto_128
    return-void

    .line 531
    :cond_129
    :goto_129
    iget p2, p0, Landroid/security/pif/PlayIntegritySpoofService;->mVerboseLogs:I

    if-lez p2, :cond_143

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " is empty, skipping"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    :cond_143
    return-void
.end method

.method private blacklist spoofSdkInt()V
    .registers 7

    .line 507
    iget-object v0, p0, Landroid/security/pif/PlayIntegritySpoofService;->mBuildFields:Ljava/util/Map;

    const-string v1, "SDK_INT"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 510
    const/16 v2, 0x20

    if-eqz v0, :cond_15

    :try_start_e
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_12
    .catch Ljava/lang/NumberFormatException; {:try_start_e .. :try_end_12} :catch_13

    goto :goto_15

    .line 511
    :catch_13
    move-exception v0

    .line 512
    goto :goto_16

    .line 513
    :cond_15
    :goto_15
    nop

    .line 516
    :goto_16
    :try_start_16
    const-class v0, Landroid/os/Build$VERSION;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 517
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 518
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    .line 519
    if-eq v3, v2, :cond_50

    .line 520
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 521
    const-string v1, "PIF/Java:DG"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[SDK_INT]: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    :cond_50
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_54} :catch_55

    .line 526
    goto :goto_5d

    .line 524
    :catch_55
    move-exception v0

    .line 525
    const-string v1, "PIF"

    const-string v2, "Failed to spoof SDK_INT"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 527
    :goto_5d
    return-void
.end method


# virtual methods
.method public blacklist getBuildFields()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 623
    iget-object v0, p0, Landroid/security/pif/PlayIntegritySpoofService;->mBuildFields:Ljava/util/Map;

    return-object v0
.end method

.method public blacklist getRomSignatureBytes()[B
    .registers 3

    .line 635
    const-string v0, "MIIFyTCCA7GgAwIBAgIVALyxxl+zDS9SL68SzOr48309eAZyMA0GCSqGSIb3DQEBCwUAMHQxCzAJBgNVBAYTAlVTMRMwEQYDVQQIEwpDYWxpZm9ybmlhMRYwFAYDVQQHEw1Nb3VudGFpbiBWaWV3MRQwEgYDVQQKEwtHb29nbGUgSW5jLjEQMA4GA1UECxMHQW5kcm9pZDEQMA4GA1UEAxMHQW5kcm9pZDAgFw0yMjExMDExODExMzVaGA8yMDUyMTEwMTE4MTEzNVowdDELMAkGA1UEBhMCVVMxEzARBgNVBAgTCkNhbGlmb3JuaWExFjAUBgNVBAcTDU1vdW50YWluIFZpZXcxFDASBgNVBAoTC0dvb2dsZSBJbmMuMRAwDgYDVQQLEwdBbmRyb2lkMRAwDgYDVQQDEwdBbmRyb2lkMIICIjANBgkqhkiG9w0BAQEFAAOCAg8AMIICCgKCAgEAsqtalIy/nctKlrhd1UVoDffFGnDf9GLi0QQhsVoJkfF16vDDydZJOycG7/kQziRZhFdcoMrIYZzzw0ppBjsSe1AiWMuKXwTBaEtxN99S1xsJiW4/QMI6N6kMunydWRMsbJ6aAxi1lVq0bxSwr8Sg/8u9HGVivfdG8OpUM+qjuV5gey5xttNLK3BZDrAlco8RkJZryAD40flmJZrWXJmcr2HhJJUnqG4Z3MSziEgW1u1JnnY3f/BFdgYsA54SgdUGdQP3aqzSjIpGK01/vjrXvifHazSANjvl0AUE5i6AarMw2biEKB2ySUDp8idC5w12GpqDrhZ/QkW8yBSa87KbkMYXuRA2Gq1fYbQx3YJraw0UgZ4M3fFKpt6raxxM5j0sWHlULD7dAZMERvNESVrKG3tQ7B39WAD8QLGYc45DFEGOhKv5Fv8510h5sXK502IvGpI4FDwz2rbtAgJ0j+16db5wCSW5ThvNPhCheyciajc8dU1B5tJzZN/ksBpzne4Xf9gOLZ9ZU0+3Z5gHVvTS/YpxBFwiFpmL7dvGxew0cXGSsG5UTBlgr7i0SX0WhY4Djjo8IfPwrvvA0QaCFamdYXKqBsSHgEyXS9zgGIFPt2jWdhaS+sAa//5SXcWro0OdiKPuwEzLgj759ke1sHRnvO735dYn5whVbzlGyLBh3L0CAwEAAaNQME4wDAYDVR0TBAUwAwEB/zAdBgNVHQ4EFgQUU1eXQ7NoYKjvOQlh5V8jHQMoxA8wHwYDVR0jBBgwFoAUU1eXQ7NoYKjvOQlh5V8jHQMoxA8wDQYJKoZIhvcNAQELBQADggIBAHFIazRLs3itnZKllPnboSd6sHbzeJURKehx8GJPvIC+xWlwWyFO5+GHmgc3yh/SVd3Xja/k8Ud59WEYTjyJJWTw0Jygx37rHW7VGn2HDuy/x0D+els+S8HeLD1toPFMepjIXJn7nHLhtmzTPlDWDrhiaYsls/k5Izf89xYnI4euuOY2+1gsweJqFGfbznqyqy8xLyzoZ6bvBJtgeY+G3i/9Be14HseSNa4FvI1Oze/l2gUu1IXzN6DGWR/lxEyt+TncJfBGKbjafYrfSh3zsE4N3TU7BeOL5INirOMjre/jVgB1YQG5qLVaPoz6mdn75AbBBm5a5ahApLiKqzy/hP+1rWgw8Ikb7vbUqov/bnY3IlIU6XcPJTCDb9aRZQkStvYpQd82XTyxD/T0GgRLnUj5Uv6iZlikFx1KNj0YNS2T3gyvL++J9B0Y6gAkiG0EtNplz7Pomsv5pVdmHVdKMjqWw5/6zYzVmu5cXFtR384Ti1qwML1xkD6TC3VIv88rKIEjrkY2c+v1frh9fRJ2OmzXmML9NgHTjEiJR2Ib2iNrMKxkuTIs9oxKZgrJtJKvdU9qJJKM5PnZuNuHhGs6A/9gt9OccetYeQvVSqeEmQluWfcunQn9C9Vwi2BJIiVJh4IdWZf5/e2PlSSQ9CJjz2bKI17pzdxOmjQfE0JSF7Xt"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    return-object v0
.end method

.method public blacklist getSpoofedProperty(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .line 592
    invoke-direct {p0}, Landroid/security/pif/PlayIntegritySpoofService;->ensureLoaded()V

    .line 593
    const/4 v0, 0x0

    if-eqz p1, :cond_52

    iget-boolean v1, p0, Landroid/security/pif/PlayIntegritySpoofService;->mSpoofProps:Z

    if-eqz v1, :cond_52

    iget-boolean v1, p0, Landroid/security/pif/PlayIntegritySpoofService;->mConfigLoaded:Z

    if-nez v1, :cond_f

    goto :goto_52

    .line 595
    :cond_f
    iget-object v1, p0, Landroid/security/pif/PlayIntegritySpoofService;->mSystemProps:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 596
    if-eqz v1, :cond_1a

    return-object v1

    .line 598
    :cond_1a
    iget-object v1, p0, Landroid/security/pif/PlayIntegritySpoofService;->mSystemProps:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_24
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_51

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 599
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 600
    const-string v4, "*"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_50

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_50

    .line 601
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 603
    :cond_50
    goto :goto_24

    .line 605
    :cond_51
    return-object v0

    .line 593
    :cond_52
    :goto_52
    return-object v0
.end method

.method public blacklist getSystemProps()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 627
    iget-object v0, p0, Landroid/security/pif/PlayIntegritySpoofService;->mSystemProps:Ljava/util/Map;

    return-object v0
.end method

.method public blacklist getVerboseLogs()I
    .registers 2

    .line 619
    iget v0, p0, Landroid/security/pif/PlayIntegritySpoofService;->mVerboseLogs:I

    return v0
.end method

.method public blacklist hasSystemFeature(Ljava/lang/String;I)Ljava/lang/Boolean;
    .registers 6

    .line 651
    const/4 p2, 0x0

    if-nez p1, :cond_4

    return-object p2

    .line 653
    :cond_4
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v0

    .line 654
    const/4 v1, 0x1

    if-eqz v0, :cond_82

    sget-object v2, Landroid/security/pif/PlayIntegritySpoofService;->PRIV_PKGS:Landroid/util/ArraySet;

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_82

    .line 655
    invoke-virtual {p0, v0}, Landroid/security/pif/PlayIntegritySpoofService;->shouldSpoofPhotos(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 656
    sget-object v0, Landroid/security/pif/PlayIntegritySpoofService;->FEATURES_PIXEL:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_27

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 657
    :cond_27
    sget-object v0, Landroid/security/pif/PlayIntegritySpoofService;->FEATURES_PIXEL_OTHERS:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 658
    :cond_34
    sget-object v0, Landroid/security/pif/PlayIntegritySpoofService;->FEATURES_TENSOR:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 659
    :cond_41
    sget-object v0, Landroid/security/pif/PlayIntegritySpoofService;->FEATURES_NEXUS:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_82

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 661
    :cond_4e
    sget-object v0, Landroid/security/pif/PlayIntegritySpoofService;->FEATURES_PIXEL:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5b

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 662
    :cond_5b
    sget-object v0, Landroid/security/pif/PlayIntegritySpoofService;->FEATURES_PIXEL_OTHERS:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_68

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 663
    :cond_68
    sget-object v0, Landroid/security/pif/PlayIntegritySpoofService;->FEATURES_TENSOR:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_75

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 664
    :cond_75
    sget-object v0, Landroid/security/pif/PlayIntegritySpoofService;->FEATURES_NEXUS:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_82

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 668
    :cond_82
    sget-object v0, Landroid/security/pif/PlayIntegritySpoofService;->FEATURES_PIXEL:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8f

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 669
    :cond_8f
    sget-object v0, Landroid/security/pif/PlayIntegritySpoofService;->FEATURES_PIXEL_OTHERS:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9c

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 671
    :cond_9c
    return-object p2
.end method

.method public blacklist isConfigLoaded()Z
    .registers 2

    .line 631
    iget-boolean v0, p0, Landroid/security/pif/PlayIntegritySpoofService;->mConfigLoaded:Z

    return v0
.end method

.method public blacklist isDroidGuard(Ljava/lang/String;)Z
    .registers 3

    .line 384
    const-string v0, "com.google.android.gms.unstable"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public blacklist isGmsProcess(Ljava/lang/String;)Z
    .registers 4

    .line 379
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 380
    :cond_4
    const-string v1, "/com.google.android.gms"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_14

    const-string v1, "/com.android.vending"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_15

    :cond_14
    const/4 v0, 0x1

    :cond_15
    return v0
.end method

.method public blacklist isSpoofProviderEnabled()Z
    .registers 2

    .line 614
    invoke-direct {p0}, Landroid/security/pif/PlayIntegritySpoofService;->ensureLoaded()V

    .line 615
    iget-boolean v0, p0, Landroid/security/pif/PlayIntegritySpoofService;->mSpoofProvider:Z

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Landroid/security/pif/PlayIntegritySpoofService;->mConfigLoaded:Z

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method public blacklist isSpoofSignatureEnabled()Z
    .registers 2

    .line 609
    invoke-direct {p0}, Landroid/security/pif/PlayIntegritySpoofService;->ensureLoaded()V

    .line 610
    iget-boolean v0, p0, Landroid/security/pif/PlayIntegritySpoofService;->mSpoofSignature:Z

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Landroid/security/pif/PlayIntegritySpoofService;->mConfigLoaded:Z

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method public blacklist isVending(Ljava/lang/String;)Z
    .registers 3

    .line 388
    const-string v0, "com.android.vending"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public blacklist logBuildFields()V
    .registers 11

    .line 675
    iget v0, p0, Landroid/security/pif/PlayIntegritySpoofService;->mVerboseLogs:I

    const/16 v1, 0x64

    if-ge v0, v1, :cond_7

    return-void

    .line 676
    :cond_7
    const-class v0, Landroid/os/Build;

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_10
    const/4 v4, 0x0

    const-string v5, " = "

    const-string v6, "PIF"

    if-ge v3, v1, :cond_44

    aget-object v7, v0, v3

    .line 678
    :try_start_19
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Build."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v7, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_3f} :catch_40

    .line 680
    goto :goto_41

    .line 679
    :catch_40
    move-exception v4

    .line 676
    :goto_41
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 682
    :cond_44
    const-class v0, Landroid/os/Build$VERSION;

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    array-length v1, v0

    :goto_4b
    if-ge v2, v1, :cond_7a

    aget-object v3, v0, v2

    .line 684
    :try_start_4f
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Build.VERSION."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_75} :catch_76

    .line 686
    goto :goto_77

    .line 685
    :catch_76
    move-exception v3

    .line 682
    :goto_77
    add-int/lit8 v2, v2, 0x1

    goto :goto_4b

    .line 688
    :cond_7a
    return-void
.end method

.method public blacklist shouldSpoof(Ljava/lang/String;)Z
    .registers 4

    .line 364
    invoke-direct {p0}, Landroid/security/pif/PlayIntegritySpoofService;->ensureLoaded()V

    .line 365
    iget-boolean v0, p0, Landroid/security/pif/PlayIntegritySpoofService;->mConfigLoaded:Z

    const/4 v1, 0x0

    if-nez v0, :cond_9

    return v1

    .line 366
    :cond_9
    const-string v0, "com.google.android.gms.unstable"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_31

    const-string v0, "com.android.vending"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    goto :goto_31

    .line 369
    :cond_1a
    const-string v0, "com.snapchat.android"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 370
    iget-boolean p1, p0, Landroid/security/pif/PlayIntegritySpoofService;->mSpoofSnapchat:Z

    return p1

    .line 372
    :cond_25
    const-string v0, "com.netflix.mediaclient"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_30

    .line 373
    iget-boolean p1, p0, Landroid/security/pif/PlayIntegritySpoofService;->mSpoofNetflix:Z

    return p1

    .line 375
    :cond_30
    return v1

    .line 367
    :cond_31
    :goto_31
    const/4 p1, 0x1

    return p1
.end method

.method public blacklist shouldSpoofPhotos(Ljava/lang/String;)Z
    .registers 3

    .line 639
    const-string v0, "com.google.android.apps.photos"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_a

    const/4 p1, 0x0

    return p1

    .line 640
    :cond_a
    iget-boolean p1, p0, Landroid/security/pif/PlayIntegritySpoofService;->mSpoofPhotos:Z

    return p1
.end method

.method public blacklist spoofBuildFields(Ljava/lang/String;)V
    .registers 6

    .line 392
    invoke-direct {p0}, Landroid/security/pif/PlayIntegritySpoofService;->ensureLoaded()V

    .line 393
    iget-boolean v0, p0, Landroid/security/pif/PlayIntegritySpoofService;->mConfigLoaded:Z

    if-nez v0, :cond_8

    return-void

    .line 395
    :cond_8
    invoke-virtual {p0, p1}, Landroid/security/pif/PlayIntegritySpoofService;->isVending(Ljava/lang/String;)Z

    move-result v0

    .line 396
    invoke-virtual {p0, p1}, Landroid/security/pif/PlayIntegritySpoofService;->isDroidGuard(Ljava/lang/String;)Z

    move-result v1

    .line 397
    const-string v2, "com.snapchat.android"

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 398
    const-string v3, "com.netflix.mediaclient"

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    .line 400
    if-nez v1, :cond_25

    if-nez v0, :cond_25

    if-nez v2, :cond_25

    if-nez p1, :cond_25

    return-void

    .line 402
    :cond_25
    if-eqz v2, :cond_52

    .line 403
    sget-object p1, Landroid/security/pif/PlayIntegritySpoofService;->PIXEL_XL_PROPS:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_31
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_51

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 404
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "SNAP"

    invoke-direct {p0, v1, v0, v2}, Landroid/security/pif/PlayIntegritySpoofService;->spoofField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    goto :goto_31

    .line 406
    :cond_51
    return-void

    .line 409
    :cond_52
    const-string v1, "PIF"

    if-nez v0, :cond_97

    if-eqz p1, :cond_59

    goto :goto_97

    .line 421
    :cond_59
    iget-boolean p1, p0, Landroid/security/pif/PlayIntegritySpoofService;->mSpoofBuild:Z

    if-nez p1, :cond_67

    .line 422
    iget p1, p0, Landroid/security/pif/PlayIntegritySpoofService;->mVerboseLogs:I

    if-lez p1, :cond_66

    const-string p1, "Build spoofing disabled"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    :cond_66
    return-void

    .line 426
    :cond_67
    iget-object p1, p0, Landroid/security/pif/PlayIntegritySpoofService;->mBuildFields:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_71
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 427
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "DG"

    invoke-direct {p0, v1, v0, v2}, Landroid/security/pif/PlayIntegritySpoofService;->spoofField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    goto :goto_71

    .line 433
    :cond_8f
    iget-boolean p1, p0, Landroid/security/pif/PlayIntegritySpoofService;->mSpoofVendingSdk:Z

    if-eqz p1, :cond_96

    .line 434
    invoke-direct {p0}, Landroid/security/pif/PlayIntegritySpoofService;->spoofSdkInt()V

    .line 436
    :cond_96
    return-void

    .line 410
    :cond_97
    :goto_97
    iget-boolean p1, p0, Landroid/security/pif/PlayIntegritySpoofService;->mSpoofVendingBuild:Z

    if-nez p1, :cond_a5

    .line 411
    iget p1, p0, Landroid/security/pif/PlayIntegritySpoofService;->mVerboseLogs:I

    if-lez p1, :cond_a4

    const-string p1, "Vending/Netflix build spoofing disabled"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    :cond_a4
    return-void

    .line 414
    :cond_a5
    iget-object p1, p0, Landroid/security/pif/PlayIntegritySpoofService;->mBuildFields:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_af
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_df

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 415
    const-string v2, "SDK_INT"

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c8

    goto :goto_af

    .line 416
    :cond_c8
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v0, :cond_d9

    const-string v3, "PS"

    goto :goto_db

    :cond_d9
    const-string v3, "NFLX"

    :goto_db
    invoke-direct {p0, v2, v1, v3}, Landroid/security/pif/PlayIntegritySpoofService;->spoofField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    goto :goto_af

    .line 418
    :cond_df
    return-void
.end method

.method public blacklist spoofPhotosProps()V
    .registers 5

    .line 644
    sget-object v0, Landroid/security/pif/PlayIntegritySpoofService;->PIXEL_XL_PROPS:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 645
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "Photos"

    invoke-direct {p0, v2, v1, v3}, Landroid/security/pif/PlayIntegritySpoofService;->spoofField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 646
    goto :goto_a

    .line 647
    :cond_2a
    const-string v0, "PIF"

    const-string v1, "Photos spoofing enabled - device appears as Pixel XL"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    return-void
.end method

.method public blacklist spoofSignature()V
    .registers 10

    .line 439
    const-string v0, "PIF"

    iget-boolean v1, p0, Landroid/security/pif/PlayIntegritySpoofService;->mSpoofSignature:Z

    if-eqz v1, :cond_100

    iget-boolean v1, p0, Landroid/security/pif/PlayIntegritySpoofService;->mSignatureSpoofed:Z

    if-eqz v1, :cond_c

    goto/16 :goto_100

    .line 441
    :cond_c
    new-instance v1, Landroid/content/pm/Signature;

    const-string v2, "MIIFyTCCA7GgAwIBAgIVALyxxl+zDS9SL68SzOr48309eAZyMA0GCSqGSIb3DQEBCwUAMHQxCzAJBgNVBAYTAlVTMRMwEQYDVQQIEwpDYWxpZm9ybmlhMRYwFAYDVQQHEw1Nb3VudGFpbiBWaWV3MRQwEgYDVQQKEwtHb29nbGUgSW5jLjEQMA4GA1UECxMHQW5kcm9pZDEQMA4GA1UEAxMHQW5kcm9pZDAgFw0yMjExMDExODExMzVaGA8yMDUyMTEwMTE4MTEzNVowdDELMAkGA1UEBhMCVVMxEzARBgNVBAgTCkNhbGlmb3JuaWExFjAUBgNVBAcTDU1vdW50YWluIFZpZXcxFDASBgNVBAoTC0dvb2dsZSBJbmMuMRAwDgYDVQQLEwdBbmRyb2lkMRAwDgYDVQQDEwdBbmRyb2lkMIICIjANBgkqhkiG9w0BAQEFAAOCAg8AMIICCgKCAgEAsqtalIy/nctKlrhd1UVoDffFGnDf9GLi0QQhsVoJkfF16vDDydZJOycG7/kQziRZhFdcoMrIYZzzw0ppBjsSe1AiWMuKXwTBaEtxN99S1xsJiW4/QMI6N6kMunydWRMsbJ6aAxi1lVq0bxSwr8Sg/8u9HGVivfdG8OpUM+qjuV5gey5xttNLK3BZDrAlco8RkJZryAD40flmJZrWXJmcr2HhJJUnqG4Z3MSziEgW1u1JnnY3f/BFdgYsA54SgdUGdQP3aqzSjIpGK01/vjrXvifHazSANjvl0AUE5i6AarMw2biEKB2ySUDp8idC5w12GpqDrhZ/QkW8yBSa87KbkMYXuRA2Gq1fYbQx3YJraw0UgZ4M3fFKpt6raxxM5j0sWHlULD7dAZMERvNESVrKG3tQ7B39WAD8QLGYc45DFEGOhKv5Fv8510h5sXK502IvGpI4FDwz2rbtAgJ0j+16db5wCSW5ThvNPhCheyciajc8dU1B5tJzZN/ksBpzne4Xf9gOLZ9ZU0+3Z5gHVvTS/YpxBFwiFpmL7dvGxew0cXGSsG5UTBlgr7i0SX0WhY4Djjo8IfPwrvvA0QaCFamdYXKqBsSHgEyXS9zgGIFPt2jWdhaS+sAa//5SXcWro0OdiKPuwEzLgj759ke1sHRnvO735dYn5whVbzlGyLBh3L0CAwEAAaNQME4wDAYDVR0TBAUwAwEB/zAdBgNVHQ4EFgQUU1eXQ7NoYKjvOQlh5V8jHQMoxA8wHwYDVR0jBBgwFoAUU1eXQ7NoYKjvOQlh5V8jHQMoxA8wDQYJKoZIhvcNAQELBQADggIBAHFIazRLs3itnZKllPnboSd6sHbzeJURKehx8GJPvIC+xWlwWyFO5+GHmgc3yh/SVd3Xja/k8Ud59WEYTjyJJWTw0Jygx37rHW7VGn2HDuy/x0D+els+S8HeLD1toPFMepjIXJn7nHLhtmzTPlDWDrhiaYsls/k5Izf89xYnI4euuOY2+1gsweJqFGfbznqyqy8xLyzoZ6bvBJtgeY+G3i/9Be14HseSNa4FvI1Oze/l2gUu1IXzN6DGWR/lxEyt+TncJfBGKbjafYrfSh3zsE4N3TU7BeOL5INirOMjre/jVgB1YQG5qLVaPoz6mdn75AbBBm5a5ahApLiKqzy/hP+1rWgw8Ikb7vbUqov/bnY3IlIU6XcPJTCDb9aRZQkStvYpQd82XTyxD/T0GgRLnUj5Uv6iZlikFx1KNj0YNS2T3gyvL++J9B0Y6gAkiG0EtNplz7Pomsv5pVdmHVdKMjqWw5/6zYzVmu5cXFtR384Ti1qwML1xkD6TC3VIv88rKIEjrkY2c+v1frh9fRJ2OmzXmML9NgHTjEiJR2Ib2iNrMKxkuTIs9oxKZgrJtJKvdU9qJJKM5PnZuNuHhGs6A/9gt9OccetYeQvVSqeEmQluWfcunQn9C9Vwi2BJIiVJh4IdWZf5/e2PlSSQ9CJjz2bKI17pzdxOmjQfE0JSF7Xt"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/pm/Signature;-><init>([B)V

    .line 442
    sget-object v2, Landroid/content/pm/PackageInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 443
    new-instance v4, Landroid/security/pif/PlayIntegritySpoofService$CustomPackageInfoCreator;

    invoke-direct {v4, v2, v1}, Landroid/security/pif/PlayIntegritySpoofService$CustomPackageInfoCreator;-><init>(Landroid/os/Parcelable$Creator;Landroid/content/pm/Signature;)V

    .line 446
    :try_start_1f
    const-class v1, Landroid/content/pm/PackageInfo;

    const-string v2, "CREATOR"

    invoke-direct {p0, v1, v2}, Landroid/security/pif/PlayIntegritySpoofService;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 447
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 448
    const/4 v5, 0x0

    invoke-virtual {v1, v5, v4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 449
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_32} :catch_e8

    .line 453
    nop

    .line 456
    :try_start_33
    const-class v1, Landroid/content/pm/PackageManager;

    const-string/jumbo v4, "sPackageInfoCache"

    invoke-direct {p0, v1, v4}, Landroid/security/pif/PlayIntegritySpoofService;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 457
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 458
    invoke-virtual {v1, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 459
    if-eqz v4, :cond_56

    .line 460
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-string v7, "clear"

    new-array v8, v3, [Ljava/lang/Class;

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 461
    new-array v7, v3, [Ljava/lang/Object;

    invoke-virtual {v6, v4, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 463
    :cond_56
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_59} :catch_5a

    .line 466
    goto :goto_75

    .line 464
    :catch_5a
    move-exception v1

    .line 465
    iget-boolean v4, p0, Landroid/security/pif/PlayIntegritySpoofService;->mDebug:Z

    if-eqz v4, :cond_75

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Couldn\'t clear PackageInfoCache: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    :cond_75
    :goto_75
    :try_start_75
    const-class v1, Landroid/os/Parcel;

    const-string v4, "mCreators"

    invoke-direct {p0, v1, v4}, Landroid/security/pif/PlayIntegritySpoofService;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 470
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 471
    invoke-virtual {v1, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    .line 472
    if-eqz v4, :cond_8b

    invoke-interface {v4}, Ljava/util/Map;->clear()V

    .line 473
    :cond_8b
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_8e
    .catch Ljava/lang/Exception; {:try_start_75 .. :try_end_8e} :catch_8f

    .line 476
    goto :goto_aa

    .line 474
    :catch_8f
    move-exception v1

    .line 475
    iget-boolean v4, p0, Landroid/security/pif/PlayIntegritySpoofService;->mDebug:Z

    if-eqz v4, :cond_aa

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Couldn\'t clear Parcel mCreators: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    :cond_aa
    :goto_aa
    :try_start_aa
    const-class v1, Landroid/os/Parcel;

    const-string/jumbo v4, "sPairedCreators"

    invoke-direct {p0, v1, v4}, Landroid/security/pif/PlayIntegritySpoofService;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 480
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 481
    invoke-virtual {v1, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    .line 482
    if-eqz v4, :cond_c1

    invoke-interface {v4}, Ljava/util/Map;->clear()V

    .line 483
    :cond_c1
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_c4
    .catch Ljava/lang/Exception; {:try_start_aa .. :try_end_c4} :catch_c5

    .line 486
    goto :goto_e0

    .line 484
    :catch_c5
    move-exception v1

    .line 485
    iget-boolean v3, p0, Landroid/security/pif/PlayIntegritySpoofService;->mDebug:Z

    if-eqz v3, :cond_e0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t clear Parcel sPairedCreators: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    :cond_e0
    :goto_e0
    iput-boolean v2, p0, Landroid/security/pif/PlayIntegritySpoofService;->mSignatureSpoofed:Z

    .line 489
    const-string v1, "Signature spoofing enabled via Parcelable.Creator"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    return-void

    .line 450
    :catch_e8
    move-exception v1

    .line 451
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t replace PackageInfoCreator: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    return-void

    .line 439
    :cond_100
    :goto_100
    return-void
.end method
