.class public final Landroid/net/http/HttpResponseCache;
.super Ljava/net/ResponseCache;
.source "HttpResponseCache.java"

# interfaces
.implements Lcom/android/okhttp/internalandroidapi/HasCacheHolder;
.implements Ljava/io/Closeable;


# instance fields
.field private final blacklist mDelegate:Lcom/android/okhttp/internalandroidapi/AndroidResponseCacheAdapter;


# direct methods
.method private constructor blacklist <init>(Lcom/android/okhttp/internalandroidapi/AndroidResponseCacheAdapter;)V
    .registers 2

    .line 155
    invoke-direct {p0}, Ljava/net/ResponseCache;-><init>()V

    .line 156
    iput-object p1, p0, Landroid/net/http/HttpResponseCache;->mDelegate:Lcom/android/okhttp/internalandroidapi/AndroidResponseCacheAdapter;

    .line 157
    return-void
.end method

.method public static whitelist getInstalled()Landroid/net/http/HttpResponseCache;
    .registers 2

    .line 164
    invoke-static {}, Ljava/net/ResponseCache;->getDefault()Ljava/net/ResponseCache;

    move-result-object v0

    .line 165
    instance-of v1, v0, Landroid/net/http/HttpResponseCache;

    if-eqz v1, :cond_b

    .line 166
    check-cast v0, Landroid/net/http/HttpResponseCache;

    return-object v0

    .line 168
    :cond_b
    const/4 v0, 0x0

    return-object v0
.end method

.method public static declared-synchronized whitelist install(Ljava/io/File;J)Landroid/net/http/HttpResponseCache;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-class v0, Landroid/net/http/HttpResponseCache;

    monitor-enter v0

    .line 183
    :try_start_3
    invoke-static {}, Ljava/net/ResponseCache;->getDefault()Ljava/net/ResponseCache;

    move-result-object v1

    .line 184
    instance-of v2, v1, Landroid/net/http/HttpResponseCache;

    if-eqz v2, :cond_1c

    .line 185
    check-cast v1, Landroid/net/http/HttpResponseCache;

    .line 186
    invoke-virtual {v1}, Landroid/net/http/HttpResponseCache;->getCacheHolder()Lcom/android/okhttp/internalandroidapi/HasCacheHolder$CacheHolder;

    move-result-object v2

    .line 188
    invoke-virtual {v2, p0, p1, p2}, Lcom/android/okhttp/internalandroidapi/HasCacheHolder$CacheHolder;->isEquivalent(Ljava/io/File;J)Z

    move-result v2
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_2f

    if-eqz v2, :cond_19

    .line 189
    monitor-exit v0

    return-object v1

    .line 192
    :cond_19
    :try_start_19
    invoke-virtual {v1}, Landroid/net/http/HttpResponseCache;->close()V

    .line 196
    :cond_1c
    invoke-static {p0, p1, p2}, Lcom/android/okhttp/internalandroidapi/HasCacheHolder$CacheHolder;->create(Ljava/io/File;J)Lcom/android/okhttp/internalandroidapi/HasCacheHolder$CacheHolder;

    move-result-object p0

    .line 197
    new-instance p1, Lcom/android/okhttp/internalandroidapi/AndroidResponseCacheAdapter;

    invoke-direct {p1, p0}, Lcom/android/okhttp/internalandroidapi/AndroidResponseCacheAdapter;-><init>(Lcom/android/okhttp/internalandroidapi/HasCacheHolder$CacheHolder;)V

    .line 199
    new-instance p0, Landroid/net/http/HttpResponseCache;

    invoke-direct {p0, p1}, Landroid/net/http/HttpResponseCache;-><init>(Lcom/android/okhttp/internalandroidapi/AndroidResponseCacheAdapter;)V

    .line 200
    invoke-static {p0}, Ljava/net/ResponseCache;->setDefault(Ljava/net/ResponseCache;)V
    :try_end_2d
    .catchall {:try_start_19 .. :try_end_2d} :catchall_2f

    .line 201
    monitor-exit v0

    return-object p0

    .line 182
    :catchall_2f
    move-exception p0

    :try_start_30
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2f

    throw p0
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 281
    invoke-static {}, Ljava/net/ResponseCache;->getDefault()Ljava/net/ResponseCache;

    move-result-object v0

    if-ne v0, p0, :cond_a

    .line 282
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/net/ResponseCache;->setDefault(Ljava/net/ResponseCache;)V

    .line 284
    :cond_a
    iget-object v0, p0, Landroid/net/http/HttpResponseCache;->mDelegate:Lcom/android/okhttp/internalandroidapi/AndroidResponseCacheAdapter;

    invoke-virtual {v0}, Lcom/android/okhttp/internalandroidapi/AndroidResponseCacheAdapter;->close()V

    .line 285
    return-void
.end method

.method public whitelist delete()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 291
    invoke-static {}, Ljava/net/ResponseCache;->getDefault()Ljava/net/ResponseCache;

    move-result-object v0

    if-ne v0, p0, :cond_a

    .line 292
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/net/ResponseCache;->setDefault(Ljava/net/ResponseCache;)V

    .line 294
    :cond_a
    iget-object v0, p0, Landroid/net/http/HttpResponseCache;->mDelegate:Lcom/android/okhttp/internalandroidapi/AndroidResponseCacheAdapter;

    invoke-virtual {v0}, Lcom/android/okhttp/internalandroidapi/AndroidResponseCacheAdapter;->delete()V

    .line 295
    return-void
.end method

.method public whitelist flush()V
    .registers 2

    .line 244
    :try_start_0
    iget-object v0, p0, Landroid/net/http/HttpResponseCache;->mDelegate:Lcom/android/okhttp/internalandroidapi/AndroidResponseCacheAdapter;

    invoke-virtual {v0}, Lcom/android/okhttp/internalandroidapi/AndroidResponseCacheAdapter;->flush()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_6

    .line 246
    goto :goto_7

    .line 245
    :catch_6
    move-exception v0

    .line 247
    :goto_7
    return-void
.end method

.method public whitelist test-api get(Ljava/net/URI;Ljava/lang/String;Ljava/util/Map;)Ljava/net/CacheResponse;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/net/CacheResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 207
    iget-object v0, p0, Landroid/net/http/HttpResponseCache;->mDelegate:Lcom/android/okhttp/internalandroidapi/AndroidResponseCacheAdapter;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/okhttp/internalandroidapi/AndroidResponseCacheAdapter;->get(Ljava/net/URI;Ljava/lang/String;Ljava/util/Map;)Ljava/net/CacheResponse;

    move-result-object p1

    return-object p1
.end method

.method public blacklist test-api getCacheHolder()Lcom/android/okhttp/internalandroidapi/HasCacheHolder$CacheHolder;
    .registers 2

    .line 300
    iget-object v0, p0, Landroid/net/http/HttpResponseCache;->mDelegate:Lcom/android/okhttp/internalandroidapi/AndroidResponseCacheAdapter;

    invoke-virtual {v0}, Lcom/android/okhttp/internalandroidapi/AndroidResponseCacheAdapter;->getCacheHolder()Lcom/android/okhttp/internalandroidapi/HasCacheHolder$CacheHolder;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getHitCount()I
    .registers 2

    .line 263
    iget-object v0, p0, Landroid/net/http/HttpResponseCache;->mDelegate:Lcom/android/okhttp/internalandroidapi/AndroidResponseCacheAdapter;

    invoke-virtual {v0}, Lcom/android/okhttp/internalandroidapi/AndroidResponseCacheAdapter;->getHitCount()I

    move-result v0

    return v0
.end method

.method public whitelist getNetworkCount()I
    .registers 2

    .line 254
    iget-object v0, p0, Landroid/net/http/HttpResponseCache;->mDelegate:Lcom/android/okhttp/internalandroidapi/AndroidResponseCacheAdapter;

    invoke-virtual {v0}, Lcom/android/okhttp/internalandroidapi/AndroidResponseCacheAdapter;->getNetworkCount()I

    move-result v0

    return v0
.end method

.method public whitelist getRequestCount()I
    .registers 2

    .line 272
    iget-object v0, p0, Landroid/net/http/HttpResponseCache;->mDelegate:Lcom/android/okhttp/internalandroidapi/AndroidResponseCacheAdapter;

    invoke-virtual {v0}, Lcom/android/okhttp/internalandroidapi/AndroidResponseCacheAdapter;->getRequestCount()I

    move-result v0

    return v0
.end method

.method public whitelist maxSize()J
    .registers 3

    .line 234
    iget-object v0, p0, Landroid/net/http/HttpResponseCache;->mDelegate:Lcom/android/okhttp/internalandroidapi/AndroidResponseCacheAdapter;

    invoke-virtual {v0}, Lcom/android/okhttp/internalandroidapi/AndroidResponseCacheAdapter;->getMaxSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist test-api put(Ljava/net/URI;Ljava/net/URLConnection;)Ljava/net/CacheRequest;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 212
    iget-object v0, p0, Landroid/net/http/HttpResponseCache;->mDelegate:Lcom/android/okhttp/internalandroidapi/AndroidResponseCacheAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/android/okhttp/internalandroidapi/AndroidResponseCacheAdapter;->put(Ljava/net/URI;Ljava/net/URLConnection;)Ljava/net/CacheRequest;

    move-result-object p1

    return-object p1
.end method

.method public whitelist size()J
    .registers 3

    .line 222
    :try_start_0
    iget-object v0, p0, Landroid/net/http/HttpResponseCache;->mDelegate:Lcom/android/okhttp/internalandroidapi/AndroidResponseCacheAdapter;

    invoke-virtual {v0}, Lcom/android/okhttp/internalandroidapi/AndroidResponseCacheAdapter;->getSize()J

    move-result-wide v0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_6} :catch_7

    return-wide v0

    .line 223
    :catch_7
    move-exception v0

    .line 225
    const-wide/16 v0, -0x1

    return-wide v0
.end method
