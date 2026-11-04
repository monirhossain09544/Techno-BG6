.class public Landroid/security/LegacyVpnProfileStore;
.super Ljava/lang/Object;
.source "LegacyVpnProfileStore.java"


# static fields
.field private static final blacklist LEGACY_KEYSTORE_SERVICE_NAME:Ljava/lang/String; = "android.security.legacykeystore"

.field public static final blacklist PROFILE_NOT_FOUND:I = 0x7

.field public static final blacklist SYSTEM_ERROR:I = 0x4

.field private static final blacklist TAG:Ljava/lang/String; = "LegacyVpnProfileStore"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist get(Ljava/lang/String;)[B
    .registers 5

    .line 75
    const-string v0, "Failed to get vpn profile."

    const-string v1, "LegacyVpnProfileStore"

    invoke-static {}, Landroid/os/StrictMode;->noteDiskRead()V

    .line 77
    :try_start_7
    invoke-static {}, Landroid/security/LegacyVpnProfileStore;->getService()Landroid/security/legacykeystore/ILegacyKeystore;

    move-result-object v2

    const/4 v3, -0x1

    invoke-interface {v2, p0, v3}, Landroid/security/legacykeystore/ILegacyKeystore;->get(Ljava/lang/String;I)[B

    move-result-object p0
    :try_end_10
    .catch Landroid/os/ServiceSpecificException; {:try_start_7 .. :try_end_10} :catch_16
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_10} :catch_11

    return-object p0

    .line 82
    :catch_11
    move-exception p0

    .line 83
    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_20

    .line 78
    :catch_16
    move-exception p0

    .line 79
    iget v2, p0, Landroid/os/ServiceSpecificException;->errorCode:I

    const/4 v3, 0x7

    if-eq v2, v3, :cond_1f

    .line 80
    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 84
    :cond_1f
    nop

    .line 85
    :goto_20
    const/4 p0, 0x0

    return-object p0
.end method

.method private static blacklist getService()Landroid/security/legacykeystore/ILegacyKeystore;
    .registers 1

    .line 42
    nop

    .line 43
    const-string v0, "android.security.legacykeystore"

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 42
    invoke-static {v0}, Landroid/security/legacykeystore/ILegacyKeystore$Stub;->asInterface(Landroid/os/IBinder;)Landroid/security/legacykeystore/ILegacyKeystore;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist list(Ljava/lang/String;)[Ljava/lang/String;
    .registers 6

    .line 116
    invoke-static {}, Landroid/os/StrictMode;->noteDiskRead()V

    .line 118
    const/4 v0, 0x0

    :try_start_4
    invoke-static {}, Landroid/security/LegacyVpnProfileStore;->getService()Landroid/security/legacykeystore/ILegacyKeystore;

    move-result-object v1

    const/4 v2, -0x1

    invoke-interface {v1, p0, v2}, Landroid/security/legacykeystore/ILegacyKeystore;->list(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    .line 119
    move v2, v0

    :goto_e
    array-length v3, v1

    if-ge v2, v3, :cond_20

    .line 120
    aget-object v3, v1, v2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_1d} :catch_21

    .line 119
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 122
    :cond_20
    return-object v1

    .line 123
    :catch_21
    move-exception p0

    .line 124
    const-string v1, "LegacyVpnProfileStore"

    const-string v2, "Failed to list vpn profiles."

    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 126
    new-array p0, v0, [Ljava/lang/String;

    return-object p0
.end method

.method public static blacklist put(Ljava/lang/String;[B)Z
    .registers 4

    .line 55
    invoke-static {}, Landroid/os/StrictMode;->noteDiskWrite()V

    .line 57
    :try_start_3
    invoke-static {}, Landroid/security/LegacyVpnProfileStore;->getService()Landroid/security/legacykeystore/ILegacyKeystore;

    move-result-object v0

    const/4 v1, -0x1

    invoke-interface {v0, p0, v1, p1}, Landroid/security/legacykeystore/ILegacyKeystore;->put(Ljava/lang/String;I[B)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_b} :catch_d

    .line 58
    const/4 p0, 0x1

    return p0

    .line 59
    :catch_d
    move-exception p0

    .line 60
    const-string p1, "LegacyVpnProfileStore"

    const-string v0, "Failed to put vpn profile."

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 61
    const/4 p0, 0x0

    return p0
.end method

.method public static blacklist remove(Ljava/lang/String;)Z
    .registers 5

    .line 95
    const-string v0, "Failed to remove vpn profile."

    const-string v1, "LegacyVpnProfileStore"

    invoke-static {}, Landroid/os/StrictMode;->noteDiskWrite()V

    .line 97
    :try_start_7
    invoke-static {}, Landroid/security/LegacyVpnProfileStore;->getService()Landroid/security/legacykeystore/ILegacyKeystore;

    move-result-object v2

    const/4 v3, -0x1

    invoke-interface {v2, p0, v3}, Landroid/security/legacykeystore/ILegacyKeystore;->remove(Ljava/lang/String;I)V
    :try_end_f
    .catch Landroid/os/ServiceSpecificException; {:try_start_7 .. :try_end_f} :catch_16
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_f} :catch_11

    .line 98
    const/4 p0, 0x1

    return p0

    .line 103
    :catch_11
    move-exception p0

    .line 104
    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_20

    .line 99
    :catch_16
    move-exception p0

    .line 100
    iget v2, p0, Landroid/os/ServiceSpecificException;->errorCode:I

    const/4 v3, 0x7

    if-eq v2, v3, :cond_1f

    .line 101
    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 105
    :cond_1f
    nop

    .line 106
    :goto_20
    const/4 p0, 0x0

    return p0
.end method
