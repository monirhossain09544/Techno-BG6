.class public final Landroid/net/wifi/WifiKeystore;
.super Ljava/lang/Object;
.source "WifiKeystore.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "WifiKeystore"

.field private static final blacklist sPrimaryDbName:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 42
    invoke-static {}, Landroid/net/wifi/WifiBlobStore;->supplicantCanAccessBlobstore()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "WifiBlobstore"

    goto :goto_b

    :cond_9
    const-string v0, "LegacyKeystore"

    :goto_b
    sput-object v0, Landroid/net/wifi/WifiKeystore;->sPrimaryDbName:Ljava/lang/String;

    .line 41
    return-void
.end method

.method constructor blacklist <init>()V
    .registers 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    return-void
.end method

.method public static whitelist get(Ljava/lang/String;)[B
    .registers 7
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 90
    const-string v0, "Failed to get blob."

    const-string v1, "WifiKeystore"

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 92
    :try_start_8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "get blob. alias="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", primaryDb="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Landroid/net/wifi/WifiKeystore;->sPrimaryDbName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    invoke-static {}, Landroid/net/wifi/WifiBlobStore;->getInstance()Landroid/net/wifi/WifiBlobStore;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/net/wifi/WifiBlobStore;->get(Ljava/lang/String;)[B

    move-result-object v4
    :try_end_32
    .catch Landroid/os/ServiceSpecificException; {:try_start_8 .. :try_end_32} :catch_53
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_32} :catch_4e
    .catchall {:try_start_8 .. :try_end_32} :catchall_4c

    .line 94
    if-eqz v4, :cond_39

    .line 95
    nop

    .line 106
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 95
    return-object v4

    .line 97
    :cond_39
    :try_start_39
    const-string v4, "Searching for blob in Legacy Keystore"

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    invoke-static {}, Landroid/net/wifi/WifiBlobStore;->getLegacyKeystore()Landroid/security/legacykeystore/ILegacyKeystore;

    move-result-object v4

    const/16 v5, 0x3f2

    invoke-interface {v4, p0, v5}, Landroid/security/legacykeystore/ILegacyKeystore;->get(Ljava/lang/String;I)[B

    move-result-object p0
    :try_end_48
    .catch Landroid/os/ServiceSpecificException; {:try_start_39 .. :try_end_48} :catch_53
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_48} :catch_4e
    .catchall {:try_start_39 .. :try_end_48} :catchall_4c

    .line 106
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 98
    return-object p0

    .line 106
    :catchall_4c
    move-exception p0

    goto :goto_64

    .line 103
    :catch_4e
    move-exception p0

    .line 104
    :try_start_4f
    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5c

    .line 99
    :catch_53
    move-exception p0

    .line 100
    iget v4, p0, Landroid/os/ServiceSpecificException;->errorCode:I

    const/4 v5, 0x7

    if-eq v4, v5, :cond_5c

    .line 101
    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5c
    .catchall {:try_start_4f .. :try_end_5c} :catchall_4c

    .line 106
    :cond_5c
    :goto_5c
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 107
    nop

    .line 108
    const/4 p0, 0x0

    new-array p0, p0, [B

    return-object p0

    .line 106
    :goto_64
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 107
    throw p0
.end method

.method public static whitelist list(Ljava/lang/String;)[Ljava/lang/String;
    .registers 9
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 152
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 155
    const/4 v2, 0x0

    :try_start_5
    invoke-static {}, Landroid/net/wifi/WifiBlobStore;->getInstance()Landroid/net/wifi/WifiBlobStore;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/net/wifi/WifiBlobStore;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 157
    invoke-static {}, Landroid/net/wifi/WifiBlobStore;->getLegacyKeystore()Landroid/security/legacykeystore/ILegacyKeystore;

    move-result-object v4

    const/16 v5, 0x3f2

    invoke-interface {v4, p0, v5}, Landroid/security/legacykeystore/ILegacyKeystore;->list(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    .line 158
    move v5, v2

    :goto_18
    array-length v6, v4

    if-ge v5, v6, :cond_2a

    .line 159
    aget-object v6, v4, v5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 158
    add-int/lit8 v5, v5, 0x1

    goto :goto_18

    .line 162
    :cond_2a
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    .line 163
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {p0, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 164
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {p0, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 165
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    .line 166
    invoke-interface {p0, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_49} :catch_4f
    .catchall {:try_start_5 .. :try_end_49} :catchall_4d

    .line 170
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 166
    return-object p0

    .line 170
    :catchall_4d
    move-exception p0

    goto :goto_5e

    .line 167
    :catch_4f
    move-exception p0

    .line 168
    :try_start_50
    const-string v3, "WifiKeystore"

    const-string v4, "Failed to list blobs."

    invoke-static {v3, v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_57
    .catchall {:try_start_50 .. :try_end_57} :catchall_4d

    .line 170
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 171
    nop

    .line 172
    new-array p0, v2, [Ljava/lang/String;

    return-object p0

    .line 170
    :goto_5e
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 171
    throw p0
.end method

.method public static whitelist put(Ljava/lang/String;[B)Z
    .registers 7
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 62
    const-string v0, "WifiKeystore"

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 64
    :try_start_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "put blob. alias="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", primaryDb="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/net/wifi/WifiKeystore;->sPrimaryDbName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    invoke-static {}, Landroid/net/wifi/WifiBlobStore;->supplicantCanAccessBlobstore()Z

    move-result v3

    if-eqz v3, :cond_3b

    .line 66
    invoke-static {}, Landroid/net/wifi/WifiBlobStore;->getInstance()Landroid/net/wifi/WifiBlobStore;

    move-result-object v3

    invoke-virtual {v3, p0, p1}, Landroid/net/wifi/WifiBlobStore;->put(Ljava/lang/String;[B)Z

    move-result p0
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_37} :catch_4c
    .catchall {:try_start_6 .. :try_end_37} :catchall_4a

    .line 75
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 66
    return p0

    .line 68
    :cond_3b
    :try_start_3b
    invoke-static {}, Landroid/net/wifi/WifiBlobStore;->getLegacyKeystore()Landroid/security/legacykeystore/ILegacyKeystore;

    move-result-object v3

    const/16 v4, 0x3f2

    invoke-interface {v3, p0, v4, p1}, Landroid/security/legacykeystore/ILegacyKeystore;->put(Ljava/lang/String;I[B)V
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_44} :catch_4c
    .catchall {:try_start_3b .. :try_end_44} :catchall_4a

    .line 69
    nop

    .line 75
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 69
    const/4 p0, 0x1

    return p0

    .line 75
    :catchall_4a
    move-exception p0

    goto :goto_58

    .line 71
    :catch_4c
    move-exception p0

    .line 72
    :try_start_4d
    const-string p1, "Failed to put blob."

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_52
    .catchall {:try_start_4d .. :try_end_52} :catchall_4a

    .line 73
    nop

    .line 75
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 73
    const/4 p0, 0x0

    return p0

    .line 75
    :goto_58
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 76
    throw p0
.end method

.method public static whitelist remove(Ljava/lang/String;)Z
    .registers 10
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 120
    const-string v0, "Failed to remove blob."

    const-string v1, "WifiKeystore"

    .line 121
    nop

    .line 122
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 124
    const/4 v4, 0x1

    const/4 v5, 0x0

    :try_start_b
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "remove blob. alias="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", primaryDb="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Landroid/net/wifi/WifiKeystore;->sPrimaryDbName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    invoke-static {}, Landroid/net/wifi/WifiBlobStore;->getInstance()Landroid/net/wifi/WifiBlobStore;

    move-result-object v6

    invoke-virtual {v6, p0}, Landroid/net/wifi/WifiBlobStore;->remove(Ljava/lang/String;)Z

    move-result v6
    :try_end_36
    .catch Landroid/os/ServiceSpecificException; {:try_start_b .. :try_end_36} :catch_51
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_36} :catch_4b
    .catchall {:try_start_b .. :try_end_36} :catchall_49

    .line 127
    :try_start_36
    invoke-static {}, Landroid/net/wifi/WifiBlobStore;->getLegacyKeystore()Landroid/security/legacykeystore/ILegacyKeystore;

    move-result-object v7

    const/16 v8, 0x3f2

    invoke-interface {v7, p0, v8}, Landroid/security/legacykeystore/ILegacyKeystore;->remove(Ljava/lang/String;I)V
    :try_end_3f
    .catch Landroid/os/ServiceSpecificException; {:try_start_36 .. :try_end_3f} :catch_47
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_3f} :catch_45
    .catchall {:try_start_36 .. :try_end_3f} :catchall_49

    .line 128
    nop

    .line 136
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 137
    move p0, v4

    goto :goto_5f

    .line 133
    :catch_45
    move-exception p0

    goto :goto_4d

    .line 129
    :catch_47
    move-exception p0

    goto :goto_53

    .line 136
    :catchall_49
    move-exception p0

    goto :goto_86

    .line 133
    :catch_4b
    move-exception p0

    move v6, v5

    .line 134
    :goto_4d
    :try_start_4d
    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5b

    .line 129
    :catch_51
    move-exception p0

    move v6, v5

    .line 130
    :goto_53
    iget v7, p0, Landroid/os/ServiceSpecificException;->errorCode:I

    const/4 v8, 0x7

    if-eq v7, v8, :cond_5b

    .line 131
    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5b
    .catchall {:try_start_4d .. :try_end_5b} :catchall_49

    .line 136
    :cond_5b
    :goto_5b
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 137
    move p0, v5

    .line 138
    :goto_5f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Removal status: wifiBlobStore="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", legacyKeystore="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    if-nez v6, :cond_85

    if-eqz p0, :cond_84

    goto :goto_85

    :cond_84
    move v4, v5

    :cond_85
    :goto_85
    return v4

    .line 136
    :goto_86
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 137
    throw p0
.end method

.method public static whitelist removeAll()Z
    .registers 6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 206
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Removing all blobs from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/net/wifi/WifiKeystore;->sPrimaryDbName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiKeystore"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 211
    :try_start_1e
    invoke-static {}, Landroid/net/wifi/WifiBlobStore;->supplicantCanAccessBlobstore()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 212
    invoke-static {}, Landroid/net/wifi/WifiBlobStore;->getInstance()Landroid/net/wifi/WifiBlobStore;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiBlobStore;->removeAll()Z

    move-result v0
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_2c} :catch_3a
    .catchall {:try_start_1e .. :try_end_2c} :catchall_38

    .line 220
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 212
    return v0

    .line 214
    :cond_30
    :try_start_30
    invoke-static {}, Landroid/net/wifi/WifiKeystore;->removeAllFromLegacyKs()Z

    move-result v0
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_34} :catch_3a
    .catchall {:try_start_30 .. :try_end_34} :catchall_38

    .line 220
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 214
    return v0

    .line 220
    :catchall_38
    move-exception v0

    goto :goto_57

    .line 216
    :catch_3a
    move-exception v0

    .line 217
    :try_start_3b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to remove all blobs: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_51
    .catchall {:try_start_3b .. :try_end_51} :catchall_38

    .line 218
    nop

    .line 220
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 218
    const/4 v0, 0x0

    return v0

    .line 220
    :goto_57
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 221
    throw v0
.end method

.method private static blacklist removeAllFromLegacyKs()Z
    .registers 7

    .line 183
    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Landroid/net/wifi/WifiBlobStore;->getLegacyKeystore()Landroid/security/legacykeystore/ILegacyKeystore;

    move-result-object v1

    .line 184
    const-string v2, ""

    const/16 v3, 0x3f2

    invoke-interface {v1, v2, v3}, Landroid/security/legacykeystore/ILegacyKeystore;->list(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    .line 185
    array-length v4, v2

    move v5, v0

    :goto_f
    if-ge v5, v4, :cond_19

    aget-object v6, v2, v5

    .line 186
    invoke-interface {v1, v6, v3}, Landroid/security/legacykeystore/ILegacyKeystore;->remove(Ljava/lang/String;I)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_16} :catch_1b

    .line 185
    add-int/lit8 v5, v5, 0x1

    goto :goto_f

    .line 188
    :cond_19
    const/4 v0, 0x1

    return v0

    .line 189
    :catch_1b
    move-exception v1

    .line 190
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to remove all blobs from Legacy Keystore: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WifiKeystore"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    return v0
.end method
