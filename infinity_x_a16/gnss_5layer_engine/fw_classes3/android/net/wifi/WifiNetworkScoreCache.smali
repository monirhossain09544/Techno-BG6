.class public Landroid/net/wifi/WifiNetworkScoreCache;
.super Landroid/net/INetworkScoreCache$Stub;
.source "WifiNetworkScoreCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/WifiNetworkScoreCache$CacheListener;
    }
.end annotation


# static fields
.field private static final greylist-max-o DBG:Z

.field private static final greylist-max-o DEFAULT_MAX_CACHE_SIZE:I = 0x64

.field public static final greylist-max-o INVALID_NETWORK_SCORE:I = -0x80

.field private static final greylist-max-o TAG:Ljava/lang/String; = "WifiNetworkScoreCache"


# instance fields
.field private final greylist-max-o mCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Landroid/net/ScoredNetwork;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mContext:Landroid/content/Context;

.field private greylist-max-o mListener:Landroid/net/wifi/WifiNetworkScoreCache$CacheListener;

.field private final greylist-max-o mLock:Ljava/lang/Object;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 46
    const-string v0, "WifiNetworkScoreCache"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroid/net/wifi/WifiNetworkScoreCache;->DBG:Z

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;)V
    .registers 3

    .line 70
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/net/wifi/WifiNetworkScoreCache;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiNetworkScoreCache$CacheListener;)V

    .line 71
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;Landroid/net/wifi/WifiNetworkScoreCache$CacheListener;)V
    .registers 4

    .line 80
    const/16 v0, 0x64

    invoke-direct {p0, p1, p2, v0}, Landroid/net/wifi/WifiNetworkScoreCache;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiNetworkScoreCache$CacheListener;I)V

    .line 81
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;Landroid/net/wifi/WifiNetworkScoreCache$CacheListener;I)V
    .registers 5

    .line 84
    invoke-direct {p0}, Landroid/net/INetworkScoreCache$Stub;-><init>()V

    .line 62
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/WifiNetworkScoreCache;->mLock:Ljava/lang/Object;

    .line 85
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Landroid/net/wifi/WifiNetworkScoreCache;->mContext:Landroid/content/Context;

    .line 86
    iput-object p2, p0, Landroid/net/wifi/WifiNetworkScoreCache;->mListener:Landroid/net/wifi/WifiNetworkScoreCache$CacheListener;

    .line 87
    new-instance p1, Landroid/util/LruCache;

    invoke-direct {p1, p3}, Landroid/util/LruCache;-><init>(I)V

    iput-object p1, p0, Landroid/net/wifi/WifiNetworkScoreCache;->mCache:Landroid/util/LruCache;

    .line 88
    return-void
.end method

.method private greylist-max-o buildNetworkKey(Landroid/net/NetworkKey;)Ljava/lang/String;
    .registers 5

    .line 221
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 222
    return-object v0

    .line 224
    :cond_4
    iget-object v1, p1, Landroid/net/NetworkKey;->wifiKey:Landroid/net/WifiKey;

    if-nez v1, :cond_9

    return-object v0

    .line 225
    :cond_9
    iget v1, p1, Landroid/net/NetworkKey;->type:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_31

    .line 226
    iget-object v1, p1, Landroid/net/NetworkKey;->wifiKey:Landroid/net/WifiKey;

    iget-object v1, v1, Landroid/net/WifiKey;->ssid:Ljava/lang/String;

    .line 227
    if-nez v1, :cond_15

    return-object v0

    .line 228
    :cond_15
    iget-object v0, p1, Landroid/net/NetworkKey;->wifiKey:Landroid/net/WifiKey;

    iget-object v0, v0, Landroid/net/WifiKey;->bssid:Ljava/lang/String;

    if-eqz v0, :cond_30

    .line 229
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p1, p1, Landroid/net/NetworkKey;->wifiKey:Landroid/net/WifiKey;

    iget-object p1, p1, Landroid/net/WifiKey;->bssid:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 231
    :cond_30
    return-object v1

    .line 233
    :cond_31
    return-object v0
.end method

.method private greylist-max-o buildNetworkKey(Landroid/net/ScoredNetwork;)Ljava/lang/String;
    .registers 2

    .line 214
    if-nez p1, :cond_4

    .line 215
    const/4 p1, 0x0

    return-object p1

    .line 217
    :cond_4
    iget-object p1, p1, Landroid/net/ScoredNetwork;->networkKey:Landroid/net/NetworkKey;

    invoke-direct {p0, p1}, Landroid/net/wifi/WifiNetworkScoreCache;->buildNetworkKey(Landroid/net/NetworkKey;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private greylist-max-o buildNetworkKey(Landroid/net/wifi/ScanResult;)Ljava/lang/String;
    .registers 5

    .line 237
    if-eqz p1, :cond_24

    iget-object v0, p1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    if-nez v0, :cond_7

    goto :goto_24

    .line 240
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 241
    iget-object v2, p1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    iget-object v1, p1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    if-eqz v1, :cond_1f

    .line 244
    iget-object p1, p1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    :cond_1f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 238
    :cond_24
    :goto_24
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public final greylist-max-o clearScores()V
    .registers 3

    .line 120
    iget-object v0, p0, Landroid/net/wifi/WifiNetworkScoreCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 121
    :try_start_3
    iget-object v1, p0, Landroid/net/wifi/WifiNetworkScoreCache;->mCache:Landroid/util/LruCache;

    invoke-virtual {v1}, Landroid/util/LruCache;->evictAll()V

    .line 122
    monitor-exit v0

    .line 123
    return-void

    .line 122
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method protected final whitelist dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 7

    .line 250
    iget-object p1, p0, Landroid/net/wifi/WifiNetworkScoreCache;->mContext:Landroid/content/Context;

    const-string p3, "android.permission.DUMP"

    const-string v0, "WifiNetworkScoreCache"

    invoke-virtual {p1, p3, v0}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    const-string p1, "WifiNetworkScoreCache (%s/%d)"

    iget-object p3, p0, Landroid/net/wifi/WifiNetworkScoreCache;->mContext:Landroid/content/Context;

    .line 252
    invoke-virtual {p3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p3

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {p3, v0}, [Ljava/lang/Object;

    move-result-object p3

    .line 251
    invoke-static {p1, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 253
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 254
    const-string p1, "  All score curves:"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 255
    iget-object p1, p0, Landroid/net/wifi/WifiNetworkScoreCache;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 256
    :try_start_2c
    iget-object p3, p0, Landroid/net/wifi/WifiNetworkScoreCache;->mCache:Landroid/util/LruCache;

    invoke-virtual {p3}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_3a
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5d

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ScoredNetwork;

    .line 257
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 258
    goto :goto_3a

    .line 259
    :cond_5d
    const-string p3, "  Network scores for latest ScanResults:"

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 260
    iget-object p3, p0, Landroid/net/wifi/WifiNetworkScoreCache;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "wifi"

    invoke-virtual {p3, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/net/wifi/WifiManager;

    .line 261
    invoke-virtual {p3}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_75
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_aa

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    .line 262
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 263
    invoke-direct {p0, v0}, Landroid/net/wifi/WifiNetworkScoreCache;->buildNetworkKey(Landroid/net/wifi/ScanResult;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiNetworkScoreCache;->getNetworkScore(Landroid/net/wifi/ScanResult;)I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 262
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 264
    goto :goto_75

    .line 265
    :cond_aa
    monitor-exit p1

    .line 266
    return-void

    .line 265
    :catchall_ac
    move-exception p2

    monitor-exit p1
    :try_end_ae
    .catchall {:try_start_2c .. :try_end_ae} :catchall_ac

    throw p2
.end method

.method public greylist-max-o getMeteredHint(Landroid/net/wifi/ScanResult;)Z
    .registers 2

    .line 167
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiNetworkScoreCache;->getScoredNetwork(Landroid/net/wifi/ScanResult;)Landroid/net/ScoredNetwork;

    move-result-object p1

    .line 168
    if-eqz p1, :cond_c

    iget-boolean p1, p1, Landroid/net/ScoredNetwork;->meteredHint:Z

    if-eqz p1, :cond_c

    const/4 p1, 0x1

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    :goto_d
    return p1
.end method

.method public greylist-max-o getNetworkScore(Landroid/net/wifi/ScanResult;)I
    .registers 6

    .line 147
    nop

    .line 149
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiNetworkScoreCache;->getScoredNetwork(Landroid/net/wifi/ScanResult;)Landroid/net/ScoredNetwork;

    move-result-object v0

    .line 150
    if-eqz v0, :cond_4c

    iget-object v1, v0, Landroid/net/ScoredNetwork;->rssiCurve:Landroid/net/RssiCurve;

    if-eqz v1, :cond_4c

    .line 151
    iget-object v1, v0, Landroid/net/ScoredNetwork;->rssiCurve:Landroid/net/RssiCurve;

    iget v2, p1, Landroid/net/wifi/ScanResult;->level:I

    invoke-virtual {v1, v2}, Landroid/net/RssiCurve;->lookupScore(I)B

    move-result v1

    .line 152
    sget-boolean v2, Landroid/net/wifi/WifiNetworkScoreCache;->DBG:Z

    if-eqz v2, :cond_4e

    .line 153
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNetworkScore found scored network "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, v0, Landroid/net/ScoredNetwork;->networkKey:Landroid/net/NetworkKey;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " score "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 154
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " RSSI "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget p1, p1, Landroid/net/wifi/ScanResult;->level:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 153
    const-string v0, "WifiNetworkScoreCache"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4e

    .line 158
    :cond_4c
    const/16 v1, -0x80

    :cond_4e
    :goto_4e
    return v1
.end method

.method public greylist-max-o getNetworkScore(Landroid/net/wifi/ScanResult;Z)I
    .registers 7

    .line 172
    nop

    .line 174
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiNetworkScoreCache;->getScoredNetwork(Landroid/net/wifi/ScanResult;)Landroid/net/ScoredNetwork;

    move-result-object v0

    .line 175
    if-eqz v0, :cond_56

    iget-object v1, v0, Landroid/net/ScoredNetwork;->rssiCurve:Landroid/net/RssiCurve;

    if-eqz v1, :cond_56

    .line 176
    iget-object v1, v0, Landroid/net/ScoredNetwork;->rssiCurve:Landroid/net/RssiCurve;

    iget v2, p1, Landroid/net/wifi/ScanResult;->level:I

    invoke-virtual {v1, v2, p2}, Landroid/net/RssiCurve;->lookupScore(IZ)B

    move-result v1

    .line 177
    sget-boolean v2, Landroid/net/wifi/WifiNetworkScoreCache;->DBG:Z

    if-eqz v2, :cond_58

    .line 178
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNetworkScore found scored network "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, v0, Landroid/net/ScoredNetwork;->networkKey:Landroid/net/NetworkKey;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " score "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 179
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " RSSI "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget p1, p1, Landroid/net/wifi/ScanResult;->level:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " isActiveNetwork "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 178
    const-string p2, "WifiNetworkScoreCache"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_58

    .line 184
    :cond_56
    const/16 v1, -0x80

    :cond_58
    :goto_58
    return v1
.end method

.method public greylist-max-o getScoredNetwork(Landroid/net/NetworkKey;)Landroid/net/ScoredNetwork;
    .registers 5

    .line 201
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiNetworkScoreCache;->buildNetworkKey(Landroid/net/NetworkKey;)Ljava/lang/String;

    move-result-object v0

    .line 202
    if-nez v0, :cond_24

    .line 203
    sget-boolean v0, Landroid/net/wifi/WifiNetworkScoreCache;->DBG:Z

    if-eqz v0, :cond_22

    .line 204
    const-string v0, "WifiNetworkScoreCache"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not build key string for Network Key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :cond_22
    const/4 p1, 0x0

    return-object p1

    .line 208
    :cond_24
    iget-object p1, p0, Landroid/net/wifi/WifiNetworkScoreCache;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 209
    :try_start_27
    iget-object v1, p0, Landroid/net/wifi/WifiNetworkScoreCache;->mCache:Landroid/util/LruCache;

    invoke-virtual {v1, v0}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ScoredNetwork;

    monitor-exit p1

    return-object v0

    .line 210
    :catchall_31
    move-exception v0

    monitor-exit p1
    :try_end_33
    .catchall {:try_start_27 .. :try_end_33} :catchall_31

    throw v0
.end method

.method public greylist-max-o getScoredNetwork(Landroid/net/wifi/ScanResult;)Landroid/net/ScoredNetwork;
    .registers 4

    .line 189
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiNetworkScoreCache;->buildNetworkKey(Landroid/net/wifi/ScanResult;)Ljava/lang/String;

    move-result-object p1

    .line 190
    if-nez p1, :cond_8

    const/4 p1, 0x0

    return-object p1

    .line 192
    :cond_8
    iget-object v0, p0, Landroid/net/wifi/WifiNetworkScoreCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 193
    :try_start_b
    iget-object v1, p0, Landroid/net/wifi/WifiNetworkScoreCache;->mCache:Landroid/util/LruCache;

    invoke-virtual {v1, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ScoredNetwork;

    .line 194
    monitor-exit v0

    return-object p1

    .line 195
    :catchall_15
    move-exception p1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_b .. :try_end_17} :catchall_15

    throw p1
.end method

.method public greylist-max-o hasScoreCurve(Landroid/net/wifi/ScanResult;)Z
    .registers 2

    .line 142
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiNetworkScoreCache;->getScoredNetwork(Landroid/net/wifi/ScanResult;)Landroid/net/ScoredNetwork;

    move-result-object p1

    .line 143
    if-eqz p1, :cond_c

    iget-object p1, p1, Landroid/net/ScoredNetwork;->rssiCurve:Landroid/net/RssiCurve;

    if-eqz p1, :cond_c

    const/4 p1, 0x1

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    :goto_d
    return p1
.end method

.method public greylist-max-o isScoredNetwork(Landroid/net/wifi/ScanResult;)Z
    .registers 2

    .line 132
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiNetworkScoreCache;->getScoredNetwork(Landroid/net/wifi/ScanResult;)Landroid/net/ScoredNetwork;

    move-result-object p1

    if-eqz p1, :cond_8

    const/4 p1, 0x1

    goto :goto_9

    :cond_8
    const/4 p1, 0x0

    :goto_9
    return p1
.end method

.method public greylist-max-o registerListener(Landroid/net/wifi/WifiNetworkScoreCache$CacheListener;)V
    .registers 3

    .line 270
    iget-object v0, p0, Landroid/net/wifi/WifiNetworkScoreCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 271
    :try_start_3
    iput-object p1, p0, Landroid/net/wifi/WifiNetworkScoreCache;->mListener:Landroid/net/wifi/WifiNetworkScoreCache$CacheListener;

    .line 272
    monitor-exit v0

    .line 273
    return-void

    .line 272
    :catchall_7
    move-exception p1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p1
.end method

.method public greylist-max-o unregisterListener()V
    .registers 3

    .line 277
    iget-object v0, p0, Landroid/net/wifi/WifiNetworkScoreCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 278
    const/4 v1, 0x0

    :try_start_4
    iput-object v1, p0, Landroid/net/wifi/WifiNetworkScoreCache;->mListener:Landroid/net/wifi/WifiNetworkScoreCache$CacheListener;

    .line 279
    monitor-exit v0

    .line 280
    return-void

    .line 279
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_8

    throw v1
.end method

.method public final greylist-max-o updateScores(Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/ScoredNetwork;",
            ">;)V"
        }
    .end annotation

    .line 91
    if-eqz p1, :cond_7a

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_7a

    .line 94
    :cond_9
    sget-boolean v0, Landroid/net/wifi/WifiNetworkScoreCache;->DBG:Z

    if-eqz v0, :cond_2a

    .line 95
    const-string v0, "WifiNetworkScoreCache"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateScores list size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :cond_2a
    nop

    .line 100
    iget-object v0, p0, Landroid/net/wifi/WifiNetworkScoreCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 101
    :try_start_2e
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :cond_33
    :goto_33
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/ScoredNetwork;

    .line 102
    invoke-direct {p0, v3}, Landroid/net/wifi/WifiNetworkScoreCache;->buildNetworkKey(Landroid/net/ScoredNetwork;)Ljava/lang/String;

    move-result-object v4

    .line 103
    if-nez v4, :cond_62

    .line 104
    sget-boolean v4, Landroid/net/wifi/WifiNetworkScoreCache;->DBG:Z

    if-eqz v4, :cond_33

    .line 105
    const-string v4, "WifiNetworkScoreCache"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to build network key for ScoredNetwork"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_33

    .line 109
    :cond_62
    iget-object v2, p0, Landroid/net/wifi/WifiNetworkScoreCache;->mCache:Landroid/util/LruCache;

    invoke-virtual {v2, v4, v3}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    nop

    .line 111
    const/4 v2, 0x1

    goto :goto_33

    .line 113
    :cond_6a
    iget-object v1, p0, Landroid/net/wifi/WifiNetworkScoreCache;->mListener:Landroid/net/wifi/WifiNetworkScoreCache$CacheListener;

    if-eqz v1, :cond_75

    if-eqz v2, :cond_75

    .line 114
    iget-object v1, p0, Landroid/net/wifi/WifiNetworkScoreCache;->mListener:Landroid/net/wifi/WifiNetworkScoreCache$CacheListener;

    invoke-virtual {v1, p1}, Landroid/net/wifi/WifiNetworkScoreCache$CacheListener;->post(Ljava/util/List;)V

    .line 116
    :cond_75
    monitor-exit v0

    .line 117
    return-void

    .line 116
    :catchall_77
    move-exception p1

    monitor-exit v0
    :try_end_79
    .catchall {:try_start_2e .. :try_end_79} :catchall_77

    throw p1

    .line 92
    :cond_7a
    :goto_7a
    return-void
.end method
