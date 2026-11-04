.class public Lcom/android/internal/statusbar/NetworkTraffic;
.super Landroid/widget/TextView;
.source "NetworkTraffic.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/statusbar/NetworkTraffic$SettingsObserver;,
        Lcom/android/internal/statusbar/NetworkTraffic$LinkPropertiesHolder;
    }
.end annotation


# static fields
.field private static final blacklist AUTOHIDE_THRESHOLD_KILOBITS:J = 0xaL

.field private static final blacklist AUTOHIDE_THRESHOLD_KILOBYTES:J = 0x8L

.field private static final blacklist AUTOHIDE_THRESHOLD_MEGABITS:J = 0x64L

.field private static final blacklist AUTOHIDE_THRESHOLD_MEGABYTES:J = 0x50L

.field private static final blacklist CLAT_PREFIX:Ljava/lang/String; = "v4-"

.field private static final blacklist DEBUG:Z = false

.field private static final blacklist MESSAGE_TYPE_ADD_NETWORK:I = 0x2

.field private static final blacklist MESSAGE_TYPE_PERIODIC_REFRESH:I = 0x0

.field private static final blacklist MESSAGE_TYPE_REMOVE_NETWORK:I = 0x3

.field private static final blacklist MESSAGE_TYPE_UPDATE_VIEW:I = 0x1

.field private static final blacklist MODE_DISABLED:I = 0x0

.field private static final blacklist MODE_DOWNSTREAM_ONLY:I = 0x2

.field private static final blacklist MODE_UPSTREAM_AND_DOWNSTREAM:I = 0x3

.field private static final blacklist MODE_UPSTREAM_ONLY:I = 0x1

.field private static final blacklist REFRESH_INTERVAL:I = 0x7d0

.field private static final blacklist TAG:Ljava/lang/String; = "NetworkTraffic"

.field private static final blacklist UNITS_AUTOBYTES:I = 0x4

.field private static final blacklist UNITS_KILOBITS:I = 0x0

.field private static final blacklist UNITS_KILOBYTES:I = 0x2

.field private static final blacklist UNITS_MEGABITS:I = 0x1

.field private static final blacklist UNITS_MEGABYTES:I = 0x3


# instance fields
.field private blacklist mAutoHide:Z

.field private blacklist mAutoHideThreshold:J

.field private blacklist mConnectivityManager:Landroid/net/ConnectivityManager;

.field private final blacklist mDarkReceiver:Lcom/android/internal/statusbar/CustomStatusBarItem$DarkReceiver;

.field private blacklist mDefaultNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private blacklist mIconTint:I

.field private blacklist mLastRxBytes:J

.field private blacklist mLastTxBytes:J

.field private blacklist mLastUpdateTime:J

.field private final blacklist mLinkPropertiesMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/net/Network;",
            "Landroid/net/LinkProperties;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mMode:I

.field private blacklist mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private blacklist mNetworkTrafficIsVisible:Z

.field private blacklist mNetworksChanged:Z

.field private final blacklist mObserver:Lcom/android/internal/statusbar/NetworkTraffic$SettingsObserver;

.field private blacklist mRxKbps:J

.field private final blacklist mTextSize:I

.field private final blacklist mTrafficHandler:Landroid/os/Handler;

.field private blacklist mTxKbps:J

.field private blacklist mUnits:I

.field private final blacklist mVisibilityReceiver:Lcom/android/internal/statusbar/CustomStatusBarItem$VisibilityReceiver;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAutoHide(Lcom/android/internal/statusbar/NetworkTraffic;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/internal/statusbar/NetworkTraffic;->mAutoHide:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAutoHideThreshold(Lcom/android/internal/statusbar/NetworkTraffic;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/internal/statusbar/NetworkTraffic;->mAutoHideThreshold:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIconTint(Lcom/android/internal/statusbar/NetworkTraffic;)I
    .registers 1

    iget p0, p0, Lcom/android/internal/statusbar/NetworkTraffic;->mIconTint:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLastRxBytes(Lcom/android/internal/statusbar/NetworkTraffic;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/internal/statusbar/NetworkTraffic;->mLastRxBytes:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLastTxBytes(Lcom/android/internal/statusbar/NetworkTraffic;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/internal/statusbar/NetworkTraffic;->mLastTxBytes:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLastUpdateTime(Lcom/android/internal/statusbar/NetworkTraffic;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/internal/statusbar/NetworkTraffic;->mLastUpdateTime:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLinkPropertiesMap(Lcom/android/internal/statusbar/NetworkTraffic;)Ljava/util/HashMap;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/statusbar/NetworkTraffic;->mLinkPropertiesMap:Ljava/util/HashMap;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMode(Lcom/android/internal/statusbar/NetworkTraffic;)I
    .registers 1

    iget p0, p0, Lcom/android/internal/statusbar/NetworkTraffic;->mMode:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNetworkTrafficIsVisible(Lcom/android/internal/statusbar/NetworkTraffic;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/internal/statusbar/NetworkTraffic;->mNetworkTrafficIsVisible:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNetworksChanged(Lcom/android/internal/statusbar/NetworkTraffic;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/internal/statusbar/NetworkTraffic;->mNetworksChanged:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRxKbps(Lcom/android/internal/statusbar/NetworkTraffic;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/internal/statusbar/NetworkTraffic;->mRxKbps:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTextSize(Lcom/android/internal/statusbar/NetworkTraffic;)I
    .registers 1

    iget p0, p0, Lcom/android/internal/statusbar/NetworkTraffic;->mTextSize:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTrafficHandler(Lcom/android/internal/statusbar/NetworkTraffic;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/statusbar/NetworkTraffic;->mTrafficHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTxKbps(Lcom/android/internal/statusbar/NetworkTraffic;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/internal/statusbar/NetworkTraffic;->mTxKbps:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUnits(Lcom/android/internal/statusbar/NetworkTraffic;)I
    .registers 1

    iget p0, p0, Lcom/android/internal/statusbar/NetworkTraffic;->mUnits:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIconTint(Lcom/android/internal/statusbar/NetworkTraffic;I)V
    .registers 2

    iput p1, p0, Lcom/android/internal/statusbar/NetworkTraffic;->mIconTint:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmLastRxBytes(Lcom/android/internal/statusbar/NetworkTraffic;J)V
    .registers 3

    iput-wide p1, p0, Lcom/android/internal/statusbar/NetworkTraffic;->mLastRxBytes:J

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmLastTxBytes(Lcom/android/internal/statusbar/NetworkTraffic;J)V
    .registers 3

    iput-wide p1, p0, Lcom/android/internal/statusbar/NetworkTraffic;->mLastTxBytes:J

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmLastUpdateTime(Lcom/android/internal/statusbar/NetworkTraffic;J)V
    .registers 3

    iput-wide p1, p0, Lcom/android/internal/statusbar/NetworkTraffic;->mLastUpdateTime:J

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmNetworkTrafficIsVisible(Lcom/android/internal/statusbar/NetworkTraffic;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/internal/statusbar/NetworkTraffic;->mNetworkTrafficIsVisible:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmNetworksChanged(Lcom/android/internal/statusbar/NetworkTraffic;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/internal/statusbar/NetworkTraffic;->mNetworksChanged:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmRxKbps(Lcom/android/internal/statusbar/NetworkTraffic;J)V
    .registers 3

    iput-wide p1, p0, Lcom/android/internal/statusbar/NetworkTraffic;->mRxKbps:J

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmTxKbps(Lcom/android/internal/statusbar/NetworkTraffic;J)V
    .registers 3

    iput-wide p1, p0, Lcom/android/internal/statusbar/NetworkTraffic;->mTxKbps:J

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$misConnectionAvailable(Lcom/android/internal/statusbar/NetworkTraffic;)Z
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/statusbar/NetworkTraffic;->isConnectionAvailable()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mupdateSettings(Lcom/android/internal/statusbar/NetworkTraffic;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/statusbar/NetworkTraffic;->updateSettings()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mupdateViewState(Lcom/android/internal/statusbar/NetworkTraffic;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/statusbar/NetworkTraffic;->updateViewState()V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 3

    .line 99
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/statusbar/NetworkTraffic;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 100
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 103
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/statusbar/NetworkTraffic;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 104
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    .line 107
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 76
    const/4 p1, 0x0

    iput p1, p0, Lcom/android/internal/statusbar/NetworkTraffic;->mMode:I

    .line 86
    const/4 p2, -0x1

    iput p2, p0, Lcom/android/internal/statusbar/NetworkTraffic;->mIconTint:I

    .line 93
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/android/internal/statusbar/NetworkTraffic;->mLinkPropertiesMap:Ljava/util/HashMap;

    .line 96
    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/android/internal/statusbar/NetworkTraffic;->mNetworksChanged:Z

    .line 345
    new-instance p3, Lcom/android/internal/statusbar/NetworkTraffic$4;

    invoke-direct {p3, p0}, Lcom/android/internal/statusbar/NetworkTraffic$4;-><init>(Lcom/android/internal/statusbar/NetworkTraffic;)V

    iput-object p3, p0, Lcom/android/internal/statusbar/NetworkTraffic;->mDarkReceiver:Lcom/android/internal/statusbar/CustomStatusBarItem$DarkReceiver;

    .line 354
    new-instance p3, Lcom/android/internal/statusbar/NetworkTraffic$5;

    invoke-direct {p3, p0}, Lcom/android/internal/statusbar/NetworkTraffic$5;-><init>(Lcom/android/internal/statusbar/NetworkTraffic;)V

    iput-object p3, p0, Lcom/android/internal/statusbar/NetworkTraffic;->mVisibilityReceiver:Lcom/android/internal/statusbar/CustomStatusBarItem$VisibilityReceiver;

    .line 109
    invoke-virtual {p0}, Lcom/android/internal/statusbar/NetworkTraffic;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    .line 110
    const v0, 0x1050284

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/statusbar/NetworkTraffic;->mTextSize:I

    .line 111
    const v0, 0x1040292

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3, p2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/internal/statusbar/NetworkTraffic;->setTypeface(Landroid/graphics/Typeface;)V

    .line 114
    iput-boolean p1, p0, Lcom/android/internal/statusbar/NetworkTraffic;->mNetworkTrafficIsVisible:Z

    .line 116
    iget-object p1, p0, Lcom/android/internal/statusbar/NetworkTraffic;->mContext:Landroid/content/Context;

    const-class p2, Landroid/net/ConnectivityManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Lcom/android/internal/statusbar/NetworkTraffic;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 117
    new-instance p1, Lcom/android/internal/statusbar/NetworkTraffic$1;

    iget-object p2, p0, Lcom/android/internal/statusbar/NetworkTraffic;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/android/internal/statusbar/NetworkTraffic$1;-><init>(Lcom/android/internal/statusbar/NetworkTraffic;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/internal/statusbar/NetworkTraffic;->mTrafficHandler:Landroid/os/Handler;

    .line 276
    new-instance p1, Lcom/android/internal/statusbar/NetworkTraffic$SettingsObserver;

    iget-object p2, p0, Lcom/android/internal/statusbar/NetworkTraffic;->mTrafficHandler:Landroid/os/Handler;

    invoke-direct {p1, p0, p2}, Lcom/android/internal/statusbar/NetworkTraffic$SettingsObserver;-><init>(Lcom/android/internal/statusbar/NetworkTraffic;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/internal/statusbar/NetworkTraffic;->mObserver:Lcom/android/internal/statusbar/NetworkTraffic$SettingsObserver;

    .line 277
    invoke-direct {p0}, Lcom/android/internal/statusbar/NetworkTraffic;->updateSettings()V

    .line 278
    return-void
.end method

.method static synthetic blacklist access$000(Lcom/android/internal/statusbar/NetworkTraffic;)Landroid/content/Context;
    .registers 1

    .line 40
    iget-object p0, p0, Lcom/android/internal/statusbar/NetworkTraffic;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic blacklist access$100(Lcom/android/internal/statusbar/NetworkTraffic;)Landroid/content/Context;
    .registers 1

    .line 40
    iget-object p0, p0, Lcom/android/internal/statusbar/NetworkTraffic;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic blacklist access$200(Lcom/android/internal/statusbar/NetworkTraffic;)Landroid/content/Context;
    .registers 1

    .line 40
    iget-object p0, p0, Lcom/android/internal/statusbar/NetworkTraffic;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private blacklist isConnectionAvailable()Z
    .registers 2

    .line 412
    iget-object v0, p0, Lcom/android/internal/statusbar/NetworkTraffic;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private blacklist manageNetworkCallbacks()V
    .registers 4

    .line 292
    iget v0, p0, Lcom/android/internal/statusbar/NetworkTraffic;->mMode:I

    if-nez v0, :cond_8

    .line 294
    invoke-direct {p0}, Lcom/android/internal/statusbar/NetworkTraffic;->unregisterNetworkCallbacks()V

    .line 295
    return-void

    .line 299
    :cond_8
    iget-object v0, p0, Lcom/android/internal/statusbar/NetworkTraffic;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    if-nez v0, :cond_2f

    .line 300
    new-instance v0, Lcom/android/internal/statusbar/NetworkTraffic$2;

    invoke-direct {v0, p0}, Lcom/android/internal/statusbar/NetworkTraffic$2;-><init>(Lcom/android/internal/statusbar/NetworkTraffic;)V

    iput-object v0, p0, Lcom/android/internal/statusbar/NetworkTraffic;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 319
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 321
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    .line 322
    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    .line 323
    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    .line 325
    iget-object v1, p0, Lcom/android/internal/statusbar/NetworkTraffic;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v2, p0, Lcom/android/internal/statusbar/NetworkTraffic;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v1, v0, v2}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 328
    :cond_2f
    iget-object v0, p0, Lcom/android/internal/statusbar/NetworkTraffic;->mDefaultNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    if-nez v0, :cond_41

    .line 329
    new-instance v0, Lcom/android/internal/statusbar/NetworkTraffic$3;

    invoke-direct {v0, p0}, Lcom/android/internal/statusbar/NetworkTraffic$3;-><init>(Lcom/android/internal/statusbar/NetworkTraffic;)V

    iput-object v0, p0, Lcom/android/internal/statusbar/NetworkTraffic;->mDefaultNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 341
    iget-object v0, p0, Lcom/android/internal/statusbar/NetworkTraffic;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/android/internal/statusbar/NetworkTraffic;->mDefaultNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->registerDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 343
    :cond_41
    return-void
.end method

.method private blacklist unregisterNetworkCallbacks()V
    .registers 4

    .line 281
    iget-object v0, p0, Lcom/android/internal/statusbar/NetworkTraffic;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    .line 282
    iget-object v0, p0, Lcom/android/internal/statusbar/NetworkTraffic;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v2, p0, Lcom/android/internal/statusbar/NetworkTraffic;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 283
    iput-object v1, p0, Lcom/android/internal/statusbar/NetworkTraffic;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 285
    :cond_e
    iget-object v0, p0, Lcom/android/internal/statusbar/NetworkTraffic;->mDefaultNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    if-eqz v0, :cond_1b

    .line 286
    iget-object v0, p0, Lcom/android/internal/statusbar/NetworkTraffic;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v2, p0, Lcom/android/internal/statusbar/NetworkTraffic;->mDefaultNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 287
    iput-object v1, p0, Lcom/android/internal/statusbar/NetworkTraffic;->mDefaultNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 289
    :cond_1b
    return-void
.end method

.method private blacklist updateSettings()V
    .registers 5

    .line 416
    iget-object v0, p0, Lcom/android/internal/statusbar/NetworkTraffic;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 418
    const-string v1, "network_traffic_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/statusbar/NetworkTraffic;->mMode:I

    .line 419
    nop

    .line 420
    const-string v1, "network_traffic_autohide"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1a

    move v2, v3

    :cond_1a
    iput-boolean v2, p0, Lcom/android/internal/statusbar/NetworkTraffic;->mAutoHide:Z

    .line 421
    const-string v1, "network_traffic_units"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/statusbar/NetworkTraffic;->mUnits:I

    .line 424
    invoke-direct {p0}, Lcom/android/internal/statusbar/NetworkTraffic;->manageNetworkCallbacks()V

    .line 426
    iget v0, p0, Lcom/android/internal/statusbar/NetworkTraffic;->mUnits:I

    packed-switch v0, :pswitch_data_4a

    .line 441
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/statusbar/NetworkTraffic;->mAutoHideThreshold:J

    goto :goto_46

    .line 438
    :pswitch_32
    const-wide/16 v0, 0x50

    iput-wide v0, p0, Lcom/android/internal/statusbar/NetworkTraffic;->mAutoHideThreshold:J

    .line 439
    goto :goto_46

    .line 435
    :pswitch_37
    const-wide/16 v0, 0x8

    iput-wide v0, p0, Lcom/android/internal/statusbar/NetworkTraffic;->mAutoHideThreshold:J

    .line 436
    goto :goto_46

    .line 431
    :pswitch_3c
    const-wide/16 v0, 0x64

    iput-wide v0, p0, Lcom/android/internal/statusbar/NetworkTraffic;->mAutoHideThreshold:J

    .line 432
    goto :goto_46

    .line 428
    :pswitch_41
    const-wide/16 v0, 0xa

    iput-wide v0, p0, Lcom/android/internal/statusbar/NetworkTraffic;->mAutoHideThreshold:J

    .line 429
    nop

    .line 444
    :goto_46
    invoke-direct {p0}, Lcom/android/internal/statusbar/NetworkTraffic;->updateViewState()V

    .line 445
    return-void

    :pswitch_data_4a
    .packed-switch 0x0
        :pswitch_41
        :pswitch_3c
        :pswitch_37
        :pswitch_32
        :pswitch_37
    .end packed-switch
.end method

.method private blacklist updateViewState()V
    .registers 3

    .line 448
    iget-object v0, p0, Lcom/android/internal/statusbar/NetworkTraffic;->mTrafficHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 449
    return-void
.end method


# virtual methods
.method protected whitelist onAttachedToWindow()V
    .registers 3

    .line 366
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    .line 368
    invoke-static {p0}, Lcom/android/internal/statusbar/CustomStatusBarItem;->findManager(Landroid/view/View;)Lcom/android/internal/statusbar/CustomStatusBarItem$Manager;

    move-result-object v0

    .line 369
    iget-object v1, p0, Lcom/android/internal/statusbar/NetworkTraffic;->mDarkReceiver:Lcom/android/internal/statusbar/CustomStatusBarItem$DarkReceiver;

    invoke-interface {v0, v1}, Lcom/android/internal/statusbar/CustomStatusBarItem$Manager;->addDarkReceiver(Lcom/android/internal/statusbar/CustomStatusBarItem$DarkReceiver;)V

    .line 370
    iget-object v1, p0, Lcom/android/internal/statusbar/NetworkTraffic;->mVisibilityReceiver:Lcom/android/internal/statusbar/CustomStatusBarItem$VisibilityReceiver;

    invoke-interface {v0, v1}, Lcom/android/internal/statusbar/CustomStatusBarItem$Manager;->addVisibilityReceiver(Lcom/android/internal/statusbar/CustomStatusBarItem$VisibilityReceiver;)V

    .line 372
    iget-object v0, p0, Lcom/android/internal/statusbar/NetworkTraffic;->mObserver:Lcom/android/internal/statusbar/NetworkTraffic$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/internal/statusbar/NetworkTraffic$SettingsObserver;->observe()V

    .line 373
    invoke-direct {p0}, Lcom/android/internal/statusbar/NetworkTraffic;->updateSettings()V

    .line 374
    return-void
.end method

.method protected whitelist onDetachedFromWindow()V
    .registers 2

    .line 378
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    .line 379
    iget-object v0, p0, Lcom/android/internal/statusbar/NetworkTraffic;->mObserver:Lcom/android/internal/statusbar/NetworkTraffic$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/internal/statusbar/NetworkTraffic$SettingsObserver;->unobserve()V

    .line 380
    invoke-direct {p0}, Lcom/android/internal/statusbar/NetworkTraffic;->unregisterNetworkCallbacks()V

    .line 381
    return-void
.end method
