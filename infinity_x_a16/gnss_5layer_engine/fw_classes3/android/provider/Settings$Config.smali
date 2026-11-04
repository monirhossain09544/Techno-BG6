.class public final Landroid/provider/Settings$Config;
.super Landroid/provider/Settings$NameValueTable;
.source "Settings.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
    client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Config"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/Settings$Config$SyncDisabledMode;
    }
.end annotation


# static fields
.field public static final blacklist CONTENT_URI:Landroid/net/Uri;

.field public static final blacklist SYNC_DISABLED_MODE_NONE:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist SYNC_DISABLED_MODE_PERSISTENT:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist SYNC_DISABLED_MODE_UNTIL_REBOOT:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final blacklist sNameValueCache:Landroid/provider/Settings$NameValueCache;

.field private static final blacklist sProviderHolder:Landroid/provider/Settings$ContentProviderHolder;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 12

    .line 23160
    const-string v0, "content://settings/config"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Settings$Config;->CONTENT_URI:Landroid/net/Uri;

    .line 23162
    new-instance v0, Landroid/provider/Settings$ContentProviderHolder;

    sget-object v1, Landroid/provider/Settings$Config;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1}, Landroid/provider/Settings$ContentProviderHolder;-><init>(Landroid/net/Uri;)V

    sput-object v0, Landroid/provider/Settings$Config;->sProviderHolder:Landroid/provider/Settings$ContentProviderHolder;

    .line 23166
    new-instance v2, Landroid/provider/Settings$NameValueCache;

    sget-object v3, Landroid/provider/Settings$Config;->CONTENT_URI:Landroid/net/Uri;

    sget-object v9, Landroid/provider/Settings$Config;->sProviderHolder:Landroid/provider/Settings$ContentProviderHolder;

    const-class v10, Landroid/provider/Settings$Config;

    const/4 v11, 0x0

    const-string v4, "GET_config"

    const-string v5, "PUT_config"

    const-string v6, "DELETE_config"

    const-string v7, "LIST_config"

    const-string v8, "SET_ALL_config"

    invoke-direct/range {v2 .. v11}, Landroid/provider/Settings$NameValueCache;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/provider/Settings$ContentProviderHolder;Ljava/lang/Class;Landroid/provider/Settings-IA;)V

    sput-object v2, Landroid/provider/Settings$Config;->sNameValueCache:Landroid/provider/Settings$NameValueCache;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 23177
    invoke-direct {p0}, Landroid/provider/Settings$NameValueTable;-><init>()V

    .line 23178
    return-void
.end method

.method public static blacklist checkCallingOrSelfPermission(Ljava/lang/String;)I
    .registers 2

    .line 23584
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    .line 23585
    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p0

    .line 23584
    return p0
.end method

.method public static blacklist clearMonitorCallback(Landroid/content/ContentResolver;)V
    .registers 9
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 23522
    const-string v1, "Settings"

    :try_start_2
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 23523
    const-string v0, "_user"

    invoke-virtual {p0}, Landroid/content/ContentResolver;->getUserId()I

    move-result v2

    invoke-virtual {v7, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 23524
    sget-object v0, Landroid/provider/Settings$Config;->sProviderHolder:Landroid/provider/Settings$ContentProviderHolder;

    invoke-virtual {v0, p0}, Landroid/provider/Settings$ContentProviderHolder;->getProvider(Landroid/content/ContentResolver;)Landroid/content/IContentProvider;

    move-result-object v2

    .line 23525
    if-nez v2, :cond_1e

    .line 23526
    const-string p0, "Can\'t clear config monitor callback because cp is null"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 23527
    return-void

    .line 23529
    :cond_1e
    invoke-virtual {p0}, Landroid/content/ContentResolver;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v3

    sget-object p0, Landroid/provider/Settings$Config;->sProviderHolder:Landroid/provider/Settings$ContentProviderHolder;

    invoke-static {p0}, Landroid/provider/Settings$ContentProviderHolder;->-$$Nest$fgetmUri(Landroid/provider/Settings$ContentProviderHolder;)Landroid/net/Uri;

    move-result-object p0

    .line 23530
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v4

    const-string v5, "UNREGISTER_MONITOR_CALLBACK_config"

    .line 23529
    const/4 v6, 0x0

    invoke-interface/range {v2 .. v7}, Landroid/content/IContentProvider;->call(Landroid/content/AttributionSource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_32} :catch_33

    .line 23534
    goto :goto_3a

    .line 23532
    :catch_33
    move-exception v0

    move-object p0, v0

    .line 23533
    const-string v0, "Can\'t clear config monitor callback"

    invoke-static {v1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 23535
    :goto_3a
    return-void
.end method

.method public static blacklist clearProviderForTest()V
    .registers 1

    .line 23614
    sget-object v0, Landroid/provider/Settings$Config;->sProviderHolder:Landroid/provider/Settings$ContentProviderHolder;

    invoke-virtual {v0}, Landroid/provider/Settings$ContentProviderHolder;->clearProviderForTest()V

    .line 23615
    sget-object v0, Landroid/provider/Settings$Config;->sNameValueCache:Landroid/provider/Settings$NameValueCache;

    invoke-virtual {v0}, Landroid/provider/Settings$NameValueCache;->clearGenerationTrackerForTest()V

    .line 23616
    return-void
.end method

.method static blacklist createCompositeName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 23645
    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23646
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23647
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 23648
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist createNamespaceUri(Ljava/lang/String;)Landroid/net/Uri;
    .registers 2

    .line 23657
    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23658
    sget-object v0, Landroid/provider/Settings$Config;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist createPrefix(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 23652
    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23653
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist deleteString(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 23391
    invoke-static {p0, p1}, Lcom/android/internal/util/infinity/DeviceConfigUtils;->shouldDenyDeviceConfigControl(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 23392
    const/4 p0, 0x1

    return p0

    .line 23394
    :cond_8
    invoke-static {}, Landroid/provider/Settings$Config;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 23395
    sget-object v1, Landroid/provider/Settings$Config;->sNameValueCache:Landroid/provider/Settings$NameValueCache;

    .line 23396
    invoke-static {p0, p1}, Landroid/provider/Settings$Config;->createCompositeName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0}, Landroid/content/ContentResolver;->getUserId()I

    move-result p1

    .line 23395
    invoke-virtual {v1, v0, p0, p1}, Landroid/provider/Settings$NameValueCache;->deleteStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public static blacklist getAllStrings()Ljava/util/Map;
    .registers 10
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 23230
    const-string v1, "Settings"

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 23232
    :try_start_7
    invoke-static {}, Landroid/provider/Settings$Config;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 23233
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 23234
    const-string v3, "_user"

    invoke-virtual {v0}, Landroid/content/ContentResolver;->getUserId()I

    move-result v4

    invoke-virtual {v8, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 23235
    sget-object v3, Landroid/provider/Settings$Config;->sProviderHolder:Landroid/provider/Settings$ContentProviderHolder;

    invoke-virtual {v3, v0}, Landroid/provider/Settings$ContentProviderHolder;->getProvider(Landroid/content/ContentResolver;)Landroid/content/IContentProvider;

    move-result-object v3

    .line 23236
    if-nez v3, :cond_27

    .line 23237
    const-string v0, "Can\'t get all strings because cp is null"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 23238
    return-object v2

    .line 23241
    :cond_27
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/provider/Flags;->reduceBinderTransactionSizeForGetAllProperties()Z

    move-result v4
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_2b} :catch_c2

    const-string/jumbo v9, "value"

    if-eqz v4, :cond_9f

    .line 23242
    :try_start_30
    invoke-virtual {v0}, Landroid/content/ContentResolver;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v4

    sget-object v0, Landroid/provider/Settings$Config;->sProviderHolder:Landroid/provider/Settings$ContentProviderHolder;

    invoke-static {v0}, Landroid/provider/Settings$ContentProviderHolder;->-$$Nest$fgetmUri(Landroid/provider/Settings$ContentProviderHolder;)Landroid/net/Uri;

    move-result-object v0

    .line 23243
    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v5

    const-string v6, "LIST_namespaces_config"

    .line 23242
    const/4 v7, 0x0

    invoke-interface/range {v3 .. v8}, Landroid/content/IContentProvider;->call(Landroid/content/AttributionSource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 23245
    if-eqz v0, :cond_9e

    .line 23246
    const-class v3, Ljava/util/HashSet;

    .line 23247
    invoke-virtual {v0, v9, v3}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    .line 23249
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_53
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 23250
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 23251
    invoke-static {v3, v4}, Landroid/provider/Settings$Config;->getStrings(Ljava/lang/String;Ljava/util/List;)Ljava/util/Map;

    move-result-object v4

    .line 23252
    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_70
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 23253
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v2, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23254
    goto :goto_70

    .line 23255
    :cond_9d
    goto :goto_53

    .line 23257
    :cond_9e
    goto :goto_c1

    .line 23258
    :cond_9f
    invoke-virtual {v0}, Landroid/content/ContentResolver;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v4

    sget-object v0, Landroid/provider/Settings$Config;->sProviderHolder:Landroid/provider/Settings$ContentProviderHolder;

    invoke-static {v0}, Landroid/provider/Settings$ContentProviderHolder;->-$$Nest$fgetmUri(Landroid/provider/Settings$ContentProviderHolder;)Landroid/net/Uri;

    move-result-object v0

    .line 23259
    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v5

    const-string v6, "LIST_config"

    .line 23258
    const/4 v7, 0x0

    invoke-interface/range {v3 .. v8}, Landroid/content/IContentProvider;->call(Landroid/content/AttributionSource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 23261
    if-eqz v0, :cond_c1

    .line 23262
    const-class v3, Ljava/util/HashMap;

    .line 23263
    invoke-virtual {v0, v9, v3}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 23265
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V
    :try_end_c1
    .catch Landroid/os/RemoteException; {:try_start_30 .. :try_end_c1} :catch_c2

    .line 23270
    :cond_c1
    :goto_c1
    goto :goto_db

    .line 23268
    :catch_c2
    move-exception v0

    .line 23269
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t query configuration table for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/provider/Settings$Config;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 23271
    :goto_db
    return-object v2
.end method

.method private static blacklist getContentResolver()Landroid/content/ContentResolver;
    .registers 1

    .line 23662
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getString(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 23191
    invoke-static {}, Landroid/provider/Settings$Config;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 23192
    invoke-virtual {v0}, Landroid/content/ContentResolver;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p0}, Lcom/android/internal/util/infinity/HideDeveloperStatusUtils;->shouldHideDevStatus(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 23193
    const-string p0, "0"

    return-object p0

    .line 23195
    :cond_11
    sget-object v1, Landroid/provider/Settings$Config;->sNameValueCache:Landroid/provider/Settings$NameValueCache;

    invoke-virtual {v0}, Landroid/content/ContentResolver;->getUserId()I

    move-result v2

    invoke-virtual {v1, v0, p0, v2}, Landroid/provider/Settings$NameValueCache;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist getStrings(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/util/List;)Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 23288
    invoke-static {p1}, Landroid/provider/Settings$Config;->createPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 23290
    sget-object v0, Landroid/provider/Settings$Config;->sNameValueCache:Landroid/provider/Settings$NameValueCache;

    invoke-static {v0, p0, p1, p2}, Landroid/provider/Settings$NameValueCache;->-$$Nest$mgetStringsForPrefixStripPrefix(Landroid/provider/Settings$NameValueCache;Landroid/content/ContentResolver;Ljava/lang/String;Ljava/util/List;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist getStrings(Ljava/lang/String;Ljava/util/List;)Ljava/util/Map;
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 23213
    invoke-static {}, Landroid/provider/Settings$Config;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p0, p1}, Landroid/provider/Settings$Config;->getStrings(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/util/List;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist getSyncDisabledMode()I
    .registers 9
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 23476
    const-string v1, "Settings"

    const/4 v2, -0x1

    :try_start_3
    invoke-static {}, Landroid/provider/Settings$Config;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 23477
    sget-object v8, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    .line 23478
    sget-object v3, Landroid/provider/Settings$Config;->sProviderHolder:Landroid/provider/Settings$ContentProviderHolder;

    invoke-virtual {v3, v0}, Landroid/provider/Settings$ContentProviderHolder;->getProvider(Landroid/content/ContentResolver;)Landroid/content/IContentProvider;

    move-result-object v3

    .line 23479
    if-nez v3, :cond_30

    .line 23480
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t query sync disabled mode for "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v3, Landroid/provider/Settings$Config;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " because cp is null"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 23482
    return v2

    .line 23484
    :cond_30
    invoke-virtual {v0}, Landroid/content/ContentResolver;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v4

    sget-object v0, Landroid/provider/Settings$Config;->sProviderHolder:Landroid/provider/Settings$ContentProviderHolder;

    invoke-static {v0}, Landroid/provider/Settings$ContentProviderHolder;->-$$Nest$fgetmUri(Landroid/provider/Settings$ContentProviderHolder;)Landroid/net/Uri;

    move-result-object v0

    .line 23485
    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v5

    const-string v6, "GET_SYNC_DISABLED_MODE_config"

    .line 23484
    const/4 v7, 0x0

    invoke-interface/range {v3 .. v8}, Landroid/content/IContentProvider;->call(Landroid/content/AttributionSource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 23488
    const-string v3, "config_get_sync_disabled_mode_return"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0
    :try_end_4b
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_4b} :catch_4c

    return v0

    .line 23489
    :catch_4c
    move-exception v0

    .line 23490
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t query sync disabled mode "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/provider/Settings$Config;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 23492
    return v2
.end method

.method private static blacklist handleMonitorCallback(Landroid/os/Bundle;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$MonitorCallback;)V
    .registers 6

    .line 23622
    const-string v0, "monitor_callback_type"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 23623
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_5a

    :cond_f
    goto :goto_24

    :sswitch_10
    const-string v1, "access_callback"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    goto :goto_25

    :sswitch_1a
    const-string v1, "namespace_updated_callback"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x0

    goto :goto_25

    :goto_24
    const/4 v0, -0x1

    :goto_25
    const-string v1, "namespace"

    packed-switch v0, :pswitch_data_64

    .line 23639
    const-string p0, "Settings"

    const-string p1, "Unrecognized DeviceConfig callback"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_58

    .line 23631
    :pswitch_32
    const-string v0, "calling_package"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 23632
    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 23633
    if-eqz p0, :cond_58

    if-eqz v0, :cond_58

    .line 23634
    new-instance v1, Landroid/provider/Settings$Config$$ExternalSyntheticLambda2;

    invoke-direct {v1, p2, v0, p0}, Landroid/provider/Settings$Config$$ExternalSyntheticLambda2;-><init>(Landroid/provider/DeviceConfig$MonitorCallback;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_58

    .line 23625
    :pswitch_4a
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 23626
    if-eqz p0, :cond_58

    .line 23627
    new-instance v0, Landroid/provider/Settings$Config$$ExternalSyntheticLambda1;

    invoke-direct {v0, p2, p0}, Landroid/provider/Settings$Config$$ExternalSyntheticLambda1;-><init>(Landroid/provider/DeviceConfig$MonitorCallback;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 23642
    :cond_58
    :goto_58
    return-void

    nop

    :sswitch_data_5a
    .sparse-switch
        -0x2ccdde53 -> :sswitch_1a
        0x45856cc0 -> :sswitch_10
    .end sparse-switch

    :pswitch_data_64
    .packed-switch 0x0
        :pswitch_4a
        :pswitch_32
    .end packed-switch
.end method

.method static synthetic blacklist lambda$handleMonitorCallback$1(Landroid/provider/DeviceConfig$MonitorCallback;Ljava/lang/String;)V
    .registers 2

    .line 23627
    invoke-interface {p0, p1}, Landroid/provider/DeviceConfig$MonitorCallback;->onNamespaceUpdate(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic blacklist lambda$handleMonitorCallback$2(Landroid/provider/DeviceConfig$MonitorCallback;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 23635
    invoke-interface {p0, p1, p2}, Landroid/provider/DeviceConfig$MonitorCallback;->onDeviceConfigAccess(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic blacklist lambda$setMonitorCallbackAsUser$0(Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$MonitorCallback;Landroid/os/Bundle;)V
    .registers 3

    .line 23597
    invoke-static {p2, p0, p1}, Landroid/provider/Settings$Config;->handleMonitorCallback(Landroid/os/Bundle;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$MonitorCallback;)V

    .line 23598
    return-void
.end method

.method public static blacklist putString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 12
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 23315
    invoke-static {p0, p1}, Lcom/android/internal/util/infinity/DeviceConfigUtils;->shouldDenyDeviceConfigControl(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 23316
    const/4 p0, 0x1

    return p0

    .line 23318
    :cond_8
    invoke-static {}, Landroid/provider/Settings$Config;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 23319
    sget-object v0, Landroid/provider/Settings$Config;->sNameValueCache:Landroid/provider/Settings$NameValueCache;

    invoke-static {p0, p1}, Landroid/provider/Settings$Config;->createCompositeName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 23320
    invoke-virtual {v1}, Landroid/content/ContentResolver;->getUserId()I

    move-result v6

    .line 23319
    const/4 v4, 0x0

    const/4 v7, 0x0

    move-object v3, p2

    move v5, p3

    invoke-virtual/range {v0 .. v7}, Landroid/provider/Settings$NameValueCache;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIZ)Z

    move-result p0

    return p0
.end method

.method public static blacklist registerContentObserver(Ljava/lang/String;ZLandroid/database/ContentObserver;)V
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 23546
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 23547
    invoke-static {p0}, Landroid/provider/Settings$Config;->createNamespaceUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {v0, p0, p1, p2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 23549
    return-void
.end method

.method public static blacklist resetToDefaults(ILjava/lang/String;)V
    .registers 11
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 23417
    const-string v1, "Can\'t reset to defaults for "

    const-string v2, "Settings"

    :try_start_4
    invoke-static {}, Landroid/provider/Settings$Config;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 23418
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 23419
    const-string v3, "_user"

    invoke-virtual {v0}, Landroid/content/ContentResolver;->getUserId()I

    move-result v4

    invoke-virtual {v8, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 23420
    const-string v3, "_reset_mode"

    invoke-virtual {v8, v3, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 23421
    if-eqz p1, :cond_26

    .line 23422
    const-string p0, "_prefix"

    invoke-static {p1}, Landroid/provider/Settings$Config;->createPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v8, p0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 23424
    :cond_26
    sget-object p0, Landroid/provider/Settings$Config;->sProviderHolder:Landroid/provider/Settings$ContentProviderHolder;

    invoke-virtual {p0, v0}, Landroid/provider/Settings$ContentProviderHolder;->getProvider(Landroid/content/ContentResolver;)Landroid/content/IContentProvider;

    move-result-object v3

    .line 23425
    if-nez v3, :cond_4b

    .line 23426
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    sget-object p1, Landroid/provider/Settings$Config;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " because cp is null"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 23428
    return-void

    .line 23430
    :cond_4b
    invoke-virtual {v0}, Landroid/content/ContentResolver;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v4

    sget-object p0, Landroid/provider/Settings$Config;->sProviderHolder:Landroid/provider/Settings$ContentProviderHolder;

    invoke-static {p0}, Landroid/provider/Settings$ContentProviderHolder;->-$$Nest$fgetmUri(Landroid/provider/Settings$ContentProviderHolder;)Landroid/net/Uri;

    move-result-object p0

    .line 23431
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v5

    const-string v6, "RESET_config"

    .line 23430
    const/4 v7, 0x0

    invoke-interface/range {v3 .. v8}, Landroid/content/IContentProvider;->call(Landroid/content/AttributionSource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_5f
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_5f} :catch_60

    .line 23434
    goto :goto_78

    .line 23432
    :catch_60
    move-exception v0

    move-object p0, v0

    .line 23433
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sget-object v0, Landroid/provider/Settings$Config;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 23435
    :goto_78
    const/4 p0, 0x0

    invoke-static {p0, p0}, Lcom/android/internal/util/infinity/DeviceConfigUtils;->setDefaultProperties(Ljava/lang/String;Ljava/lang/String;)V

    .line 23436
    return-void
.end method

.method public static blacklist setMonitorCallback(Landroid/content/ContentResolver;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$MonitorCallback;)V
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 23509
    invoke-virtual {p0}, Landroid/content/ContentResolver;->getUserId()I

    move-result v0

    invoke-static {p1, p0, v0, p2}, Landroid/provider/Settings$Config;->setMonitorCallbackAsUser(Ljava/util/concurrent/Executor;Landroid/content/ContentResolver;ILandroid/provider/DeviceConfig$MonitorCallback;)V

    .line 23510
    return-void
.end method

.method private static blacklist setMonitorCallbackAsUser(Ljava/util/concurrent/Executor;Landroid/content/ContentResolver;ILandroid/provider/DeviceConfig$MonitorCallback;)V
    .registers 12

    .line 23593
    const-string v1, "Settings"

    :try_start_2
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 23594
    const-string v0, "_user"

    invoke-virtual {v7, v0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 23595
    const-string p2, "_monitor_callback_key"

    new-instance v0, Landroid/os/RemoteCallback;

    new-instance v2, Landroid/provider/Settings$Config$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p3}, Landroid/provider/Settings$Config$$ExternalSyntheticLambda0;-><init>(Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$MonitorCallback;)V

    invoke-direct {v0, v2}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V

    invoke-virtual {v7, p2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 23599
    sget-object p0, Landroid/provider/Settings$Config;->sProviderHolder:Landroid/provider/Settings$ContentProviderHolder;

    invoke-virtual {p0, p1}, Landroid/provider/Settings$ContentProviderHolder;->getProvider(Landroid/content/ContentResolver;)Landroid/content/IContentProvider;

    move-result-object v2

    .line 23600
    if-nez v2, :cond_29

    .line 23601
    const-string p0, "Can\'t set config monitor callback because cp is null"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 23602
    return-void

    .line 23604
    :cond_29
    invoke-virtual {p1}, Landroid/content/ContentResolver;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v3

    sget-object p0, Landroid/provider/Settings$Config;->sProviderHolder:Landroid/provider/Settings$ContentProviderHolder;

    invoke-static {p0}, Landroid/provider/Settings$ContentProviderHolder;->-$$Nest$fgetmUri(Landroid/provider/Settings$ContentProviderHolder;)Landroid/net/Uri;

    move-result-object p0

    .line 23605
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v4

    const-string v5, "REGISTER_MONITOR_CALLBACK_config"

    .line 23604
    const/4 v6, 0x0

    invoke-interface/range {v2 .. v7}, Landroid/content/IContentProvider;->call(Landroid/content/AttributionSource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_3d
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_3d} :catch_3e

    .line 23609
    goto :goto_45

    .line 23607
    :catch_3e
    move-exception v0

    move-object p0, v0

    .line 23608
    const-string p1, "Can\'t set config monitor callback"

    invoke-static {v1, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 23610
    :goto_45
    return-void
.end method

.method public static blacklist setStrings(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/util/Map;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/provider/DeviceConfig$BadConfigException;
        }
    .end annotation

    .line 23359
    new-instance v0, Ljava/util/HashMap;

    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 23360
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_15
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_36

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 23361
    nop

    .line 23362
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {p1, v2}, Landroid/provider/Settings$Config;->createCompositeName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 23361
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23363
    goto :goto_15

    .line 23364
    :cond_36
    sget-object p2, Landroid/provider/Settings$Config;->sNameValueCache:Landroid/provider/Settings$NameValueCache;

    .line 23365
    invoke-static {p1}, Landroid/provider/Settings$Config;->createPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 23364
    invoke-virtual {p2, p0, p1, v0}, Landroid/provider/Settings$NameValueCache;->setStringsForPrefix(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/util/HashMap;)I

    move-result p0

    .line 23366
    const/4 p1, 0x1

    if-ne p0, p1, :cond_44

    .line 23367
    return p1

    .line 23368
    :cond_44
    const/4 p1, 0x2

    if-ne p0, p1, :cond_49

    .line 23369
    const/4 p0, 0x0

    return p0

    .line 23372
    :cond_49
    new-instance p0, Landroid/provider/DeviceConfig$BadConfigException;

    invoke-direct {p0}, Landroid/provider/DeviceConfig$BadConfigException;-><init>()V

    throw p0
.end method

.method public static blacklist setStrings(Ljava/lang/String;Ljava/util/Map;)Z
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/provider/DeviceConfig$BadConfigException;
        }
    .end annotation

    .line 23339
    invoke-static {}, Landroid/provider/Settings$Config;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p0, p1}, Landroid/provider/Settings$Config;->setStrings(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/util/Map;)Z

    move-result p1

    .line 23340
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/internal/util/infinity/DeviceConfigUtils;->setDefaultProperties(Ljava/lang/String;Ljava/lang/String;)V

    .line 23341
    return p1
.end method

.method public static blacklist setSyncDisabledMode(I)V
    .registers 9
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 23449
    const-string v1, "Settings"

    :try_start_2
    invoke-static {}, Landroid/provider/Settings$Config;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 23450
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 23451
    const-string v2, "_disabled_mode"

    invoke-virtual {v7, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 23452
    sget-object p0, Landroid/provider/Settings$Config;->sProviderHolder:Landroid/provider/Settings$ContentProviderHolder;

    invoke-virtual {p0, v0}, Landroid/provider/Settings$ContentProviderHolder;->getProvider(Landroid/content/ContentResolver;)Landroid/content/IContentProvider;

    move-result-object v2

    .line 23453
    if-nez v2, :cond_37

    .line 23454
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Can\'t set sync disabled mode for "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    sget-object v0, Landroid/provider/Settings$Config;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " because cp is null"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 23456
    return-void

    .line 23458
    :cond_37
    invoke-virtual {v0}, Landroid/content/ContentResolver;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v3

    sget-object p0, Landroid/provider/Settings$Config;->sProviderHolder:Landroid/provider/Settings$ContentProviderHolder;

    invoke-static {p0}, Landroid/provider/Settings$ContentProviderHolder;->-$$Nest$fgetmUri(Landroid/provider/Settings$ContentProviderHolder;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v4

    const-string v5, "SET_SYNC_DISABLED_MODE_config"

    const/4 v6, 0x0

    invoke-interface/range {v2 .. v7}, Landroid/content/IContentProvider;->call(Landroid/content/AttributionSource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_4b
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_4b} :catch_4c

    .line 23462
    goto :goto_66

    .line 23460
    :catch_4c
    move-exception v0

    move-object p0, v0

    .line 23461
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t set sync disabled mode "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Landroid/provider/Settings$Config;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 23463
    :goto_66
    return-void
.end method

.method public static blacklist unregisterContentObserver(Landroid/database/ContentObserver;)V
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 23560
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 23561
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 23562
    return-void
.end method
