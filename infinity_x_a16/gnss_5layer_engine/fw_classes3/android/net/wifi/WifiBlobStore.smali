.class public Landroid/net/wifi/WifiBlobStore;
.super Lcom/android/internal/net/ConnectivityBlobStore;
.source "WifiBlobStore.java"


# static fields
.field private static final blacklist DB_NAME:Ljava/lang/String; = "WifiBlobStore.db"

.field private static final blacklist LEGACY_KEYSTORE_SERVICE_NAME:Ljava/lang/String; = "android.security.legacykeystore"

.field private static final blacklist TAG:Ljava/lang/String; = "WifiBlobStore"

.field private static blacklist sInstance:Landroid/net/wifi/WifiBlobStore;

.field private static final blacklist sIsVendorApiLevelGreaterThanT:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 35
    invoke-static {}, Landroid/net/wifi/WifiBlobStore;->isVendorApiLevelGreaterThanT()Z

    move-result v0

    sput-boolean v0, Landroid/net/wifi/WifiBlobStore;->sIsVendorApiLevelGreaterThanT:Z

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 2

    .line 38
    const-string v0, "WifiBlobStore.db"

    invoke-direct {p0, v0}, Lcom/android/internal/net/ConnectivityBlobStore;-><init>(Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method public static blacklist getInstance()Landroid/net/wifi/WifiBlobStore;
    .registers 1

    .line 72
    sget-object v0, Landroid/net/wifi/WifiBlobStore;->sInstance:Landroid/net/wifi/WifiBlobStore;

    if-nez v0, :cond_b

    .line 73
    new-instance v0, Landroid/net/wifi/WifiBlobStore;

    invoke-direct {v0}, Landroid/net/wifi/WifiBlobStore;-><init>()V

    sput-object v0, Landroid/net/wifi/WifiBlobStore;->sInstance:Landroid/net/wifi/WifiBlobStore;

    .line 75
    :cond_b
    sget-object v0, Landroid/net/wifi/WifiBlobStore;->sInstance:Landroid/net/wifi/WifiBlobStore;

    return-object v0
.end method

.method public static blacklist getLegacyKeystore()Landroid/security/legacykeystore/ILegacyKeystore;
    .registers 1

    .line 80
    nop

    .line 81
    const-string v0, "android.security.legacykeystore"

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 80
    invoke-static {v0}, Landroid/security/legacykeystore/ILegacyKeystore$Stub;->asInterface(Landroid/os/IBinder;)Landroid/security/legacykeystore/ILegacyKeystore;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist isVendorApiLevelGreaterThanT()Z
    .registers 7

    .line 42
    nop

    .line 43
    const-string/jumbo v0, "ro.board.first_api_level"

    const-string/jumbo v1, "ro.vndk.version"

    const-string/jumbo v2, "ro.board.api_level"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 45
    const/4 v1, 0x0

    move v2, v1

    :goto_10
    const-string v3, "WifiBlobStore"

    const/4 v4, 0x1

    const/4 v5, 0x3

    if-ge v2, v5, :cond_3e

    aget-object v5, v0, v2

    .line 46
    const/4 v6, -0x1

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 47
    if-eq v5, v6, :cond_3b

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Retrieved API level property, value="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    const/16 v0, 0x21

    if-le v5, v0, :cond_3a

    move v1, v4

    :cond_3a
    return v1

    .line 45
    :cond_3b
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 53
    :cond_3e
    const-string v0, "No API level properties are defined"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    return v4
.end method

.method public static blacklist supplicantCanAccessBlobstore()Z
    .registers 1

    .line 67
    sget-boolean v0, Landroid/net/wifi/WifiBlobStore;->sIsVendorApiLevelGreaterThanT:Z

    return v0
.end method
