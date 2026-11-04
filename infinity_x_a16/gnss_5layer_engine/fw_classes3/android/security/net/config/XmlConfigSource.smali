.class public Landroid/security/net/config/XmlConfigSource;
.super Ljava/lang/Object;
.source "XmlConfigSource.java"

# interfaces
.implements Landroid/security/net/config/ConfigSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/net/config/XmlConfigSource$ParserException;
    }
.end annotation


# static fields
.field private static final greylist-max-o CONFIG_BASE:I = 0x0

.field private static final greylist-max-o CONFIG_DEBUG:I = 0x2

.field private static final greylist-max-o CONFIG_DOMAIN:I = 0x1


# instance fields
.field private final greylist-max-o mApplicationInfo:Landroid/content/pm/ApplicationInfo;

.field private greylist-max-o mContext:Landroid/content/Context;

.field private final greylist-max-o mDebugBuild:Z

.field private greylist-max-o mDefaultConfig:Landroid/security/net/config/NetworkSecurityConfig;

.field private greylist-max-o mDomainMap:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/util/Pair<",
            "Landroid/security/net/config/Domain;",
            "Landroid/security/net/config/NetworkSecurityConfig;",
            ">;>;"
        }
    .end annotation
.end field

.field private greylist-max-o mInitialized:Z

.field private blacklist mLocalhostConfig:Landroid/security/net/config/NetworkSecurityConfig;

.field private final greylist-max-o mLock:Ljava/lang/Object;

.field private final greylist-max-o mResourceId:I


# direct methods
.method public constructor greylist-max-o <init>(Landroid/content/Context;ILandroid/content/pm/ApplicationInfo;)V
    .registers 5

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/security/net/config/XmlConfigSource;->mLock:Ljava/lang/Object;

    .line 50
    iput-object p1, p0, Landroid/security/net/config/XmlConfigSource;->mContext:Landroid/content/Context;

    .line 51
    iput p2, p0, Landroid/security/net/config/XmlConfigSource;->mResourceId:I

    .line 52
    new-instance p1, Landroid/content/pm/ApplicationInfo;

    invoke-direct {p1, p3}, Landroid/content/pm/ApplicationInfo;-><init>(Landroid/content/pm/ApplicationInfo;)V

    iput-object p1, p0, Landroid/security/net/config/XmlConfigSource;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 54
    iget-object p1, p0, Landroid/security/net/config/XmlConfigSource;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_1f

    const/4 p1, 0x1

    goto :goto_20

    :cond_1f
    const/4 p1, 0x0

    :goto_20
    iput-boolean p1, p0, Landroid/security/net/config/XmlConfigSource;->mDebugBuild:Z

    .line 55
    return-void
.end method

.method private greylist-max-o addDebugAnchorsIfNeeded(Landroid/security/net/config/NetworkSecurityConfig$Builder;Landroid/security/net/config/NetworkSecurityConfig$Builder;)V
    .registers 4

    .line 321
    if-eqz p1, :cond_18

    invoke-virtual {p1}, Landroid/security/net/config/NetworkSecurityConfig$Builder;->hasCertificatesEntryRefs()Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_18

    .line 326
    :cond_9
    invoke-virtual {p2}, Landroid/security/net/config/NetworkSecurityConfig$Builder;->hasCertificatesEntryRefs()Z

    move-result v0

    if-nez v0, :cond_10

    .line 327
    return-void

    .line 330
    :cond_10
    invoke-virtual {p1}, Landroid/security/net/config/NetworkSecurityConfig$Builder;->getCertificatesEntryRefs()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/security/net/config/NetworkSecurityConfig$Builder;->addCertificatesEntryRefs(Ljava/util/Collection;)Landroid/security/net/config/NetworkSecurityConfig$Builder;

    .line 331
    return-void

    .line 322
    :cond_18
    :goto_18
    return-void
.end method

.method private greylist-max-o ensureInitialized()V
    .registers 7

    .line 89
    iget-object v0, p0, Landroid/security/net/config/XmlConfigSource;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 90
    :try_start_3
    iget-boolean v1, p0, Landroid/security/net/config/XmlConfigSource;->mInitialized:Z

    if-eqz v1, :cond_9

    .line 91
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_58

    return-void

    .line 93
    :cond_9
    :try_start_9
    iget-object v1, p0, Landroid/security/net/config/XmlConfigSource;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Landroid/security/net/config/XmlConfigSource;->mResourceId:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1
    :try_end_15
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_9 .. :try_end_15} :catch_32
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9 .. :try_end_15} :catch_32
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_15} :catch_32
    .catch Landroid/security/net/config/XmlConfigSource$ParserException; {:try_start_9 .. :try_end_15} :catch_32
    .catchall {:try_start_9 .. :try_end_15} :catchall_58

    .line 94
    :try_start_15
    invoke-direct {p0, v1}, Landroid/security/net/config/XmlConfigSource;->parseNetworkSecurityConfig(Landroid/content/res/XmlResourceParser;)V

    .line 95
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/security/net/config/XmlConfigSource;->mContext:Landroid/content/Context;

    .line 96
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/security/net/config/XmlConfigSource;->mInitialized:Z
    :try_end_1e
    .catchall {:try_start_15 .. :try_end_1e} :catchall_26

    .line 97
    if-eqz v1, :cond_23

    :try_start_20
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_23
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_20 .. :try_end_23} :catch_32
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_20 .. :try_end_23} :catch_32
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_23} :catch_32
    .catch Landroid/security/net/config/XmlConfigSource$ParserException; {:try_start_20 .. :try_end_23} :catch_32
    .catchall {:try_start_20 .. :try_end_23} :catchall_58

    .line 101
    :cond_23
    nop

    .line 102
    :try_start_24
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_58

    .line 103
    return-void

    .line 93
    :catchall_26
    move-exception v2

    if-eqz v1, :cond_31

    :try_start_29
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_2c
    .catchall {:try_start_29 .. :try_end_2c} :catchall_2d

    goto :goto_31

    :catchall_2d
    move-exception v1

    :try_start_2e
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_31
    :goto_31
    throw v2
    :try_end_32
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2e .. :try_end_32} :catch_32
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2e .. :try_end_32} :catch_32
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_32} :catch_32
    .catch Landroid/security/net/config/XmlConfigSource$ParserException; {:try_start_2e .. :try_end_32} :catch_32
    .catchall {:try_start_2e .. :try_end_32} :catchall_58

    .line 97
    :catch_32
    move-exception v1

    .line 99
    :try_start_33
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to parse XML configuration from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/security/net/config/XmlConfigSource;->mContext:Landroid/content/Context;

    .line 100
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, p0, Landroid/security/net/config/XmlConfigSource;->mResourceId:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 102
    :catchall_58
    move-exception v1

    monitor-exit v0
    :try_end_5a
    .catchall {:try_start_33 .. :try_end_5a} :catchall_58

    throw v1
.end method

.method private static final greylist-max-o getConfigString(I)Ljava/lang/String;
    .registers 4

    .line 76
    packed-switch p0, :pswitch_data_26

    .line 84
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown config type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :pswitch_1c
    const-string p0, "debug-overrides"

    return-object p0

    .line 80
    :pswitch_1f
    const-string p0, "domain-config"

    return-object p0

    .line 78
    :pswitch_22
    const-string p0, "base-config"

    return-object p0

    nop

    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_22
        :pswitch_1f
        :pswitch_1c
    .end packed-switch
.end method

.method private blacklist parseCertificateTransparency(Landroid/content/res/XmlResourceParser;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Landroid/security/net/config/XmlConfigSource$ParserException;
        }
    .end annotation

    .line 187
    const-string v0, "enabled"

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {p1, v2, v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method private greylist-max-o parseCertificatesEntry(Landroid/content/res/XmlResourceParser;Z)Landroid/security/net/config/CertificatesEntryRef;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Landroid/security/net/config/XmlConfigSource$ParserException;
        }
    .end annotation

    .line 193
    nop

    .line 194
    const/4 v0, 0x0

    const-string/jumbo v1, "overridePins"

    invoke-interface {p1, v0, v1, p2}, Landroid/content/res/XmlResourceParser;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p2

    .line 195
    const-string/jumbo v1, "src"

    const/4 v2, -0x1

    invoke-interface {p1, v0, v1, v2}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    .line 196
    nop

    .line 197
    invoke-interface {p1, v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 198
    nop

    .line 199
    if-eqz v0, :cond_61

    .line 202
    const/4 v1, 0x1

    if-eq v3, v2, :cond_24

    .line 204
    new-instance v0, Landroid/security/net/config/ResourceCertificateSource;

    iget-object v2, p0, Landroid/security/net/config/XmlConfigSource;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3, v2}, Landroid/security/net/config/ResourceCertificateSource;-><init>(ILandroid/content/Context;)V

    .line 205
    goto :goto_50

    .line 206
    :cond_24
    const-string/jumbo v2, "system"

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_34

    .line 207
    invoke-static {}, Landroid/security/net/config/SystemCertificateSource;->getInstance()Landroid/security/net/config/SystemCertificateSource;

    move-result-object v0

    move v1, v3

    goto :goto_50

    .line 208
    :cond_34
    const-string/jumbo v2, "user"

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_42

    .line 209
    invoke-static {}, Landroid/security/net/config/UserCertificateSource;->getInstance()Landroid/security/net/config/UserCertificateSource;

    move-result-object v0

    .line 210
    goto :goto_50

    .line 211
    :cond_42
    const-string/jumbo v1, "wfa"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_59

    .line 212
    invoke-static {}, Landroid/security/net/config/WfaCertificateSource;->getInstance()Landroid/security/net/config/WfaCertificateSource;

    move-result-object v0

    move v1, v3

    .line 217
    :goto_50
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 218
    new-instance p1, Landroid/security/net/config/CertificatesEntryRef;

    invoke-direct {p1, v0, p2, v1}, Landroid/security/net/config/CertificatesEntryRef;-><init>(Landroid/security/net/config/CertificateSource;ZZ)V

    return-object p1

    .line 214
    :cond_59
    new-instance p2, Landroid/security/net/config/XmlConfigSource$ParserException;

    const-string v0, "Unknown certificates src. Should be one of system|user|@resourceVal"

    invoke-direct {p2, p1, v0}, Landroid/security/net/config/XmlConfigSource$ParserException;-><init>(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    throw p2

    .line 200
    :cond_61
    new-instance p2, Landroid/security/net/config/XmlConfigSource$ParserException;

    const-string v0, "certificates element missing src attribute"

    invoke-direct {p2, p1, v0}, Landroid/security/net/config/XmlConfigSource$ParserException;-><init>(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    throw p2
.end method

.method private greylist-max-o parseConfigEntry(Landroid/content/res/XmlResourceParser;Ljava/util/Set;Landroid/security/net/config/NetworkSecurityConfig$Builder;I)Ljava/util/List;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/XmlResourceParser;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/security/net/config/NetworkSecurityConfig$Builder;",
            "I)",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Landroid/security/net/config/NetworkSecurityConfig$Builder;",
            "Ljava/util/Set<",
            "Landroid/security/net/config/Domain;",
            ">;>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Landroid/security/net/config/XmlConfigSource$ParserException;
        }
    .end annotation

    .line 241
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 242
    new-instance v1, Landroid/security/net/config/NetworkSecurityConfig$Builder;

    invoke-direct {v1}, Landroid/security/net/config/NetworkSecurityConfig$Builder;-><init>()V

    .line 243
    invoke-virtual {v1, p3}, Landroid/security/net/config/NetworkSecurityConfig$Builder;->setParent(Landroid/security/net/config/NetworkSecurityConfig$Builder;)Landroid/security/net/config/NetworkSecurityConfig$Builder;

    .line 244
    new-instance p3, Landroid/util/ArraySet;

    invoke-direct {p3}, Landroid/util/ArraySet;-><init>()V

    .line 245
    nop

    .line 246
    nop

    .line 247
    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne p4, v2, :cond_1b

    move v2, v3

    goto :goto_1c

    :cond_1b
    move v2, v4

    .line 248
    :goto_1c
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v5

    .line 251
    new-instance v6, Landroid/util/Pair;

    invoke-direct {v6, v1, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 254
    move v6, v4

    :goto_29
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getAttributeCount()I

    move-result v7

    if-ge v6, v7, :cond_57

    .line 255
    invoke-interface {p1, v6}, Landroid/content/res/XmlResourceParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v7

    .line 256
    const-string v8, "hstsEnforced"

    invoke-virtual {v8, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_44

    .line 257
    nop

    .line 258
    invoke-interface {p1, v6, v4}, Landroid/content/res/XmlResourceParser;->getAttributeBooleanValue(IZ)Z

    move-result v7

    .line 257
    invoke-virtual {v1, v7}, Landroid/security/net/config/NetworkSecurityConfig$Builder;->setHstsEnforced(Z)Landroid/security/net/config/NetworkSecurityConfig$Builder;

    goto :goto_54

    .line 260
    :cond_44
    const-string v8, "cleartextTrafficPermitted"

    invoke-virtual {v8, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_54

    .line 261
    nop

    .line 262
    invoke-interface {p1, v6, v3}, Landroid/content/res/XmlResourceParser;->getAttributeBooleanValue(IZ)Z

    move-result v7

    .line 261
    invoke-virtual {v1, v7}, Landroid/security/net/config/NetworkSecurityConfig$Builder;->setCleartextTrafficPermitted(Z)Landroid/security/net/config/NetworkSecurityConfig$Builder;

    .line 254
    :cond_54
    :goto_54
    add-int/lit8 v6, v6, 0x1

    goto :goto_29

    :cond_57
    move v6, v4

    .line 267
    :goto_58
    invoke-static {p1, v5}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v7

    if-eqz v7, :cond_154

    .line 268
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 269
    const-string v8, "domain"

    invoke-virtual {v8, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_92

    .line 270
    if-ne p4, v3, :cond_75

    .line 274
    invoke-direct {p0, p1, p2}, Landroid/security/net/config/XmlConfigSource;->parseDomain(Landroid/content/res/XmlResourceParser;Ljava/util/Set;)Landroid/security/net/config/Domain;

    move-result-object v7

    .line 275
    invoke-interface {p3, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 276
    goto/16 :goto_152

    .line 271
    :cond_75
    new-instance p2, Landroid/security/net/config/XmlConfigSource$ParserException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "domain element not allowed in "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    .line 272
    invoke-static {p4}, Landroid/security/net/config/XmlConfigSource;->getConfigString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p1, p3}, Landroid/security/net/config/XmlConfigSource$ParserException;-><init>(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    throw p2

    .line 276
    :cond_92
    const-string/jumbo v8, "trust-anchors"

    invoke-virtual {v8, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b0

    .line 277
    if-nez v4, :cond_a8

    .line 281
    nop

    .line 282
    invoke-direct {p0, p1, v2}, Landroid/security/net/config/XmlConfigSource;->parseTrustAnchors(Landroid/content/res/XmlResourceParser;Z)Ljava/util/Collection;

    move-result-object v4

    .line 281
    invoke-virtual {v1, v4}, Landroid/security/net/config/NetworkSecurityConfig$Builder;->addCertificatesEntryRefs(Ljava/util/Collection;)Landroid/security/net/config/NetworkSecurityConfig$Builder;

    .line 283
    move v4, v3

    goto/16 :goto_152

    .line 278
    :cond_a8
    new-instance p2, Landroid/security/net/config/XmlConfigSource$ParserException;

    const-string p3, "Multiple trust-anchor elements not allowed"

    invoke-direct {p2, p1, p3}, Landroid/security/net/config/XmlConfigSource$ParserException;-><init>(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    throw p2

    .line 284
    :cond_b0
    const-string/jumbo v8, "pin-set"

    invoke-virtual {v8, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_ed

    .line 285
    if-ne p4, v3, :cond_cf

    .line 289
    if-nez v6, :cond_c7

    .line 292
    invoke-direct {p0, p1}, Landroid/security/net/config/XmlConfigSource;->parsePinSet(Landroid/content/res/XmlResourceParser;)Landroid/security/net/config/PinSet;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/security/net/config/NetworkSecurityConfig$Builder;->setPinSet(Landroid/security/net/config/PinSet;)Landroid/security/net/config/NetworkSecurityConfig$Builder;

    .line 293
    move v6, v3

    goto/16 :goto_152

    .line 290
    :cond_c7
    new-instance p2, Landroid/security/net/config/XmlConfigSource$ParserException;

    const-string p3, "Multiple pin-set elements not allowed"

    invoke-direct {p2, p1, p3}, Landroid/security/net/config/XmlConfigSource$ParserException;-><init>(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    throw p2

    .line 286
    :cond_cf
    new-instance p2, Landroid/security/net/config/XmlConfigSource$ParserException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "pin-set element not allowed in "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    .line 287
    invoke-static {p4}, Landroid/security/net/config/XmlConfigSource;->getConfigString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p1, p3}, Landroid/security/net/config/XmlConfigSource$ParserException;-><init>(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    throw p2

    .line 294
    :cond_ed
    const-string v8, "domain-config"

    invoke-virtual {v8, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_11c

    .line 295
    if-ne p4, v3, :cond_ff

    .line 299
    invoke-direct {p0, p1, p2, v1, p4}, Landroid/security/net/config/XmlConfigSource;->parseConfigEntry(Landroid/content/res/XmlResourceParser;Ljava/util/Set;Landroid/security/net/config/NetworkSecurityConfig$Builder;I)Ljava/util/List;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_152

    .line 296
    :cond_ff
    new-instance p2, Landroid/security/net/config/XmlConfigSource$ParserException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Nested domain-config not allowed in "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    .line 297
    invoke-static {p4}, Landroid/security/net/config/XmlConfigSource;->getConfigString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p1, p3}, Landroid/security/net/config/XmlConfigSource$ParserException;-><init>(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    throw p2

    .line 300
    :cond_11c
    const-string v8, "certificateTransparency"

    invoke-virtual {v8, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_14f

    .line 301
    if-eqz p4, :cond_146

    if-ne p4, v3, :cond_129

    goto :goto_146

    .line 302
    :cond_129
    new-instance p2, Landroid/security/net/config/XmlConfigSource$ParserException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "certificateTransparency not allowed in "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    .line 305
    invoke-static {p4}, Landroid/security/net/config/XmlConfigSource;->getConfigString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p1, p3}, Landroid/security/net/config/XmlConfigSource$ParserException;-><init>(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    throw p2

    .line 307
    :cond_146
    :goto_146
    nop

    .line 308
    invoke-direct {p0, p1}, Landroid/security/net/config/XmlConfigSource;->parseCertificateTransparency(Landroid/content/res/XmlResourceParser;)Z

    move-result v7

    .line 307
    invoke-virtual {v1, v7}, Landroid/security/net/config/NetworkSecurityConfig$Builder;->setCertificateTransparencyVerificationRequired(Z)Landroid/security/net/config/NetworkSecurityConfig$Builder;

    goto :goto_152

    .line 310
    :cond_14f
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 312
    :goto_152
    goto/16 :goto_58

    .line 313
    :cond_154
    if-ne p4, v3, :cond_165

    invoke-interface {p3}, Ljava/util/Set;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_15d

    goto :goto_165

    .line 314
    :cond_15d
    new-instance p2, Landroid/security/net/config/XmlConfigSource$ParserException;

    const-string p3, "No domain elements in domain-config"

    invoke-direct {p2, p1, p3}, Landroid/security/net/config/XmlConfigSource$ParserException;-><init>(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    throw p2

    .line 316
    :cond_165
    :goto_165
    return-object v0
.end method

.method private greylist-max-o parseDebugOverridesResource()Landroid/security/net/config/NetworkSecurityConfig$Builder;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Landroid/security/net/config/XmlConfigSource$ParserException;
        }
    .end annotation

    .line 425
    iget-object v0, p0, Landroid/security/net/config/XmlConfigSource;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 426
    iget v1, p0, Landroid/security/net/config/XmlConfigSource;->mResourceId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v1

    .line 427
    iget v2, p0, Landroid/security/net/config/XmlConfigSource;->mResourceId:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v2

    .line 428
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_debug"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "xml"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 430
    const/4 v2, 0x0

    if-nez v1, :cond_30

    .line 431
    return-object v2

    .line 433
    :cond_30
    nop

    .line 435
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    .line 436
    :try_start_35
    const-string v1, "network-security-config"

    invoke-static {v0, v1}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 437
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v1

    .line 438
    const/4 v3, 0x0

    move-object v4, v2

    move v5, v3

    .line 439
    :goto_41
    invoke-static {v0, v1}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v6

    if-eqz v6, :cond_7b

    .line 440
    const-string v6, "debug-overrides"

    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_77

    .line 441
    if-nez v5, :cond_6f

    .line 444
    iget-boolean v5, p0, Landroid/security/net/config/XmlConfigSource;->mDebugBuild:Z

    if-eqz v5, :cond_6a

    .line 445
    nop

    .line 446
    const/4 v4, 0x2

    invoke-direct {p0, v0, v2, v2, v4}, Landroid/security/net/config/XmlConfigSource;->parseConfigEntry(Landroid/content/res/XmlResourceParser;Ljava/util/Set;Landroid/security/net/config/NetworkSecurityConfig$Builder;I)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    iget-object v4, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Landroid/security/net/config/NetworkSecurityConfig$Builder;

    goto :goto_6d

    .line 448
    :cond_6a
    invoke-static {v0}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 450
    :goto_6d
    const/4 v5, 0x1

    goto :goto_41

    .line 442
    :cond_6f
    new-instance v1, Landroid/security/net/config/XmlConfigSource$ParserException;

    const-string v2, "Only one debug-overrides allowed"

    invoke-direct {v1, v0, v2}, Landroid/security/net/config/XmlConfigSource$ParserException;-><init>(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    throw v1

    .line 452
    :cond_77
    invoke-static {v0}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_7a
    .catchall {:try_start_35 .. :try_end_7a} :catchall_81

    goto :goto_41

    .line 455
    :cond_7b
    if-eqz v0, :cond_80

    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V

    .line 457
    :cond_80
    return-object v4

    .line 435
    :catchall_81
    move-exception v1

    if-eqz v0, :cond_8c

    :try_start_84
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_87
    .catchall {:try_start_84 .. :try_end_87} :catchall_88

    goto :goto_8c

    :catchall_88
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_8c
    :goto_8c
    throw v1
.end method

.method private greylist-max-o parseDomain(Landroid/content/res/XmlResourceParser;Ljava/util/Set;)Landroid/security/net/config/Domain;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/XmlResourceParser;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/security/net/config/Domain;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Landroid/security/net/config/XmlConfigSource$ParserException;
        }
    .end annotation

    .line 167
    nop

    .line 168
    const/4 v0, 0x0

    const-string v1, "includeSubdomains"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Landroid/content/res/XmlResourceParser;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    .line 169
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_52

    .line 172
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 173
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_4a

    .line 179
    invoke-interface {p2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_31

    .line 182
    new-instance p1, Landroid/security/net/config/Domain;

    invoke-direct {p1, v1, v0}, Landroid/security/net/config/Domain;-><init>(Ljava/lang/String;Z)V

    return-object p1

    .line 180
    :cond_31
    new-instance p2, Landroid/security/net/config/XmlConfigSource$ParserException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " has already been specified"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, p1, v0}, Landroid/security/net/config/XmlConfigSource$ParserException;-><init>(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    throw p2

    .line 174
    :cond_4a
    new-instance p2, Landroid/security/net/config/XmlConfigSource$ParserException;

    const-string v0, "domain contains additional elements"

    invoke-direct {p2, p1, v0}, Landroid/security/net/config/XmlConfigSource$ParserException;-><init>(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    throw p2

    .line 170
    :cond_52
    new-instance p2, Landroid/security/net/config/XmlConfigSource$ParserException;

    const-string v0, "Domain name missing"

    invoke-direct {p2, p1, v0}, Landroid/security/net/config/XmlConfigSource$ParserException;-><init>(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    throw p2
.end method

.method private greylist-max-o parseNetworkSecurityConfig(Landroid/content/res/XmlResourceParser;)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Landroid/security/net/config/XmlConfigSource$ParserException;
        }
    .end annotation

    .line 335
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 336
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 337
    nop

    .line 338
    nop

    .line 339
    nop

    .line 340
    nop

    .line 342
    const-string v2, "network-security-config"

    invoke-static {p1, v2}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 343
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v5, v3

    move-object v7, v5

    move v6, v4

    move v8, v6

    .line 344
    :goto_1d
    invoke-static {p1, v2}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v9

    const/4 v10, 0x1

    if-eqz v9, :cond_96

    .line 345
    const-string v9, "base-config"

    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4d

    .line 346
    if-nez v6, :cond_45

    .line 349
    nop

    .line 350
    nop

    .line 351
    invoke-direct {p0, p1, v0, v3, v4}, Landroid/security/net/config/XmlConfigSource;->parseConfigEntry(Landroid/content/res/XmlResourceParser;Ljava/util/Set;Landroid/security/net/config/NetworkSecurityConfig$Builder;I)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/Pair;

    iget-object v6, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v7, v6

    check-cast v7, Landroid/security/net/config/NetworkSecurityConfig$Builder;

    move v6, v10

    goto :goto_1d

    .line 347
    :cond_45
    new-instance v0, Landroid/security/net/config/XmlConfigSource$ParserException;

    const-string v1, "Only one base-config allowed"

    invoke-direct {v0, p1, v1}, Landroid/security/net/config/XmlConfigSource$ParserException;-><init>(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    throw v0

    .line 352
    :cond_4d
    const-string v9, "domain-config"

    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_62

    .line 353
    nop

    .line 354
    invoke-direct {p0, p1, v0, v7, v10}, Landroid/security/net/config/XmlConfigSource;->parseConfigEntry(Landroid/content/res/XmlResourceParser;Ljava/util/Set;Landroid/security/net/config/NetworkSecurityConfig$Builder;I)Ljava/util/List;

    move-result-object v9

    .line 353
    invoke-interface {v1, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1d

    .line 355
    :cond_62
    const-string v9, "debug-overrides"

    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_92

    .line 356
    if-nez v8, :cond_8a

    .line 359
    iget-boolean v8, p0, Landroid/security/net/config/XmlConfigSource;->mDebugBuild:Z

    if-eqz v8, :cond_85

    .line 360
    nop

    .line 361
    const/4 v5, 0x2

    invoke-direct {p0, p1, v3, v3, v5}, Landroid/security/net/config/XmlConfigSource;->parseConfigEntry(Landroid/content/res/XmlResourceParser;Ljava/util/Set;Landroid/security/net/config/NetworkSecurityConfig$Builder;I)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Pair;

    iget-object v5, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Landroid/security/net/config/NetworkSecurityConfig$Builder;

    goto :goto_88

    .line 363
    :cond_85
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 365
    :goto_88
    move v8, v10

    goto :goto_1d

    .line 357
    :cond_8a
    new-instance v0, Landroid/security/net/config/XmlConfigSource$ParserException;

    const-string v1, "Only one debug-overrides allowed"

    invoke-direct {v0, p1, v1}, Landroid/security/net/config/XmlConfigSource$ParserException;-><init>(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    throw v0

    .line 367
    :cond_92
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_1d

    .line 372
    :cond_96
    iget-boolean p1, p0, Landroid/security/net/config/XmlConfigSource;->mDebugBuild:Z

    if-eqz p1, :cond_a0

    if-nez v5, :cond_a0

    .line 373
    invoke-direct {p0}, Landroid/security/net/config/XmlConfigSource;->parseDebugOverridesResource()Landroid/security/net/config/NetworkSecurityConfig$Builder;

    move-result-object v5

    .line 378
    :cond_a0
    iget-object p1, p0, Landroid/security/net/config/XmlConfigSource;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 379
    invoke-static {p1}, Landroid/security/net/config/NetworkSecurityConfig;->getDefaultBuilder(Landroid/content/pm/ApplicationInfo;)Landroid/security/net/config/NetworkSecurityConfig$Builder;

    move-result-object p1

    .line 380
    invoke-direct {p0, v5, p1}, Landroid/security/net/config/XmlConfigSource;->addDebugAnchorsIfNeeded(Landroid/security/net/config/NetworkSecurityConfig$Builder;Landroid/security/net/config/NetworkSecurityConfig$Builder;)V

    .line 381
    if-eqz v7, :cond_b2

    .line 382
    invoke-virtual {v7, p1}, Landroid/security/net/config/NetworkSecurityConfig$Builder;->setParent(Landroid/security/net/config/NetworkSecurityConfig$Builder;)Landroid/security/net/config/NetworkSecurityConfig$Builder;

    .line 383
    invoke-direct {p0, v5, v7}, Landroid/security/net/config/XmlConfigSource;->addDebugAnchorsIfNeeded(Landroid/security/net/config/NetworkSecurityConfig$Builder;Landroid/security/net/config/NetworkSecurityConfig$Builder;)V

    goto :goto_b3

    .line 385
    :cond_b2
    move-object v7, p1

    .line 388
    :goto_b3
    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    .line 390
    nop

    .line 391
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_bd
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_102

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 392
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroid/security/net/config/NetworkSecurityConfig$Builder;

    .line 393
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/util/Set;

    .line 400
    invoke-virtual {v2}, Landroid/security/net/config/NetworkSecurityConfig$Builder;->getParent()Landroid/security/net/config/NetworkSecurityConfig$Builder;

    move-result-object v3

    if-nez v3, :cond_da

    .line 401
    invoke-virtual {v2, v7}, Landroid/security/net/config/NetworkSecurityConfig$Builder;->setParent(Landroid/security/net/config/NetworkSecurityConfig$Builder;)Landroid/security/net/config/NetworkSecurityConfig$Builder;

    .line 403
    :cond_da
    invoke-direct {p0, v5, v2}, Landroid/security/net/config/XmlConfigSource;->addDebugAnchorsIfNeeded(Landroid/security/net/config/NetworkSecurityConfig$Builder;Landroid/security/net/config/NetworkSecurityConfig$Builder;)V

    .line 404
    invoke-virtual {v2}, Landroid/security/net/config/NetworkSecurityConfig$Builder;->build()Landroid/security/net/config/NetworkSecurityConfig;

    move-result-object v2

    .line 405
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_101

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/security/net/config/Domain;

    .line 406
    invoke-virtual {v3}, Landroid/security/net/config/Domain;->isLocalhost()Z

    move-result v6

    if-eqz v6, :cond_f8

    .line 407
    move v4, v10

    .line 409
    :cond_f8
    new-instance v6, Landroid/util/Pair;

    invoke-direct {v6, v3, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p1, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 410
    goto :goto_e5

    .line 411
    :cond_101
    goto :goto_bd

    .line 412
    :cond_102
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/org/conscrypt/net/flags/Flags;->networkSecurityConfigLocalhost()Z

    move-result v0

    if-eqz v0, :cond_11a

    if-nez v4, :cond_11a

    .line 414
    invoke-static {}, Landroid/security/net/config/NetworkSecurityConfig;->getLocalhostBuilder()Landroid/security/net/config/NetworkSecurityConfig$Builder;

    move-result-object v0

    .line 415
    invoke-direct {p0, v5, v0}, Landroid/security/net/config/XmlConfigSource;->addDebugAnchorsIfNeeded(Landroid/security/net/config/NetworkSecurityConfig$Builder;Landroid/security/net/config/NetworkSecurityConfig$Builder;)V

    .line 416
    invoke-virtual {v0, v7}, Landroid/security/net/config/NetworkSecurityConfig$Builder;->setParent(Landroid/security/net/config/NetworkSecurityConfig$Builder;)Landroid/security/net/config/NetworkSecurityConfig$Builder;

    .line 417
    invoke-virtual {v0}, Landroid/security/net/config/NetworkSecurityConfig$Builder;->build()Landroid/security/net/config/NetworkSecurityConfig;

    move-result-object v0

    iput-object v0, p0, Landroid/security/net/config/XmlConfigSource;->mLocalhostConfig:Landroid/security/net/config/NetworkSecurityConfig;

    .line 419
    :cond_11a
    invoke-virtual {v7}, Landroid/security/net/config/NetworkSecurityConfig$Builder;->build()Landroid/security/net/config/NetworkSecurityConfig;

    move-result-object v0

    iput-object v0, p0, Landroid/security/net/config/XmlConfigSource;->mDefaultConfig:Landroid/security/net/config/NetworkSecurityConfig;

    .line 420
    iput-object p1, p0, Landroid/security/net/config/XmlConfigSource;->mDomainMap:Ljava/util/Set;

    .line 421
    return-void
.end method

.method private greylist-max-o parsePin(Landroid/content/res/XmlResourceParser;)Landroid/security/net/config/Pin;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Landroid/security/net/config/XmlConfigSource$ParserException;
        }
    .end annotation

    .line 107
    const/4 v0, 0x0

    const-string v1, "digest"

    invoke-interface {p1, v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 108
    invoke-static {v0}, Landroid/security/net/config/Pin;->isSupportedDigestAlgorithm(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7f

    .line 112
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_77

    .line 115
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 116
    nop

    .line 118
    const/4 v2, 0x0

    :try_start_1e
    invoke-static {v1, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1
    :try_end_22
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1e .. :try_end_22} :catch_6e

    .line 121
    nop

    .line 122
    invoke-static {v0}, Landroid/security/net/config/Pin;->getDigestLength(Ljava/lang/String;)I

    move-result v2

    .line 123
    array-length v3, v1

    if-ne v3, v2, :cond_40

    .line 128
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_37

    .line 131
    new-instance p1, Landroid/security/net/config/Pin;

    invoke-direct {p1, v0, v1}, Landroid/security/net/config/Pin;-><init>(Ljava/lang/String;[B)V

    return-object p1

    .line 129
    :cond_37
    new-instance v0, Landroid/security/net/config/XmlConfigSource$ParserException;

    const-string/jumbo v1, "pin contains additional elements"

    invoke-direct {v0, p1, v1}, Landroid/security/net/config/XmlConfigSource$ParserException;-><init>(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    throw v0

    .line 124
    :cond_40
    new-instance v3, Landroid/security/net/config/XmlConfigSource$ParserException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "digest length "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v1, v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " does not match expected length for "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, p1, v0}, Landroid/security/net/config/XmlConfigSource$ParserException;-><init>(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    throw v3

    .line 119
    :catch_6e
    move-exception v0

    .line 120
    new-instance v1, Landroid/security/net/config/XmlConfigSource$ParserException;

    const-string v2, "Invalid pin digest"

    invoke-direct {v1, p1, v2, v0}, Landroid/security/net/config/XmlConfigSource$ParserException;-><init>(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 113
    :cond_77
    new-instance v0, Landroid/security/net/config/XmlConfigSource$ParserException;

    const-string v1, "Missing pin digest"

    invoke-direct {v0, p1, v1}, Landroid/security/net/config/XmlConfigSource$ParserException;-><init>(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    throw v0

    .line 109
    :cond_7f
    new-instance v1, Landroid/security/net/config/XmlConfigSource$ParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported pin digest algorithm: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, p1, v0}, Landroid/security/net/config/XmlConfigSource$ParserException;-><init>(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    throw v1
.end method

.method private greylist-max-o parsePinSet(Landroid/content/res/XmlResourceParser;)Landroid/security/net/config/PinSet;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Landroid/security/net/config/XmlConfigSource$ParserException;
        }
    .end annotation

    .line 136
    const-string v0, "Invalid expiration date in pin-set"

    const/4 v1, 0x0

    const-string v2, "expiration"

    invoke-interface {p1, v1, v2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 137
    nop

    .line 138
    if-eqz v1, :cond_30

    .line 140
    :try_start_c
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "yyyy-MM-dd"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 141
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->setLenient(Z)V

    .line 142
    invoke-virtual {v2, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 143
    if-eqz v1, :cond_23

    .line 146
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 149
    goto :goto_35

    .line 144
    :cond_23
    new-instance v1, Landroid/security/net/config/XmlConfigSource$ParserException;

    invoke-direct {v1, p1, v0}, Landroid/security/net/config/XmlConfigSource$ParserException;-><init>(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    throw v1
    :try_end_29
    .catch Ljava/text/ParseException; {:try_start_c .. :try_end_29} :catch_29

    .line 147
    :catch_29
    move-exception v1

    .line 148
    new-instance v2, Landroid/security/net/config/XmlConfigSource$ParserException;

    invoke-direct {v2, p1, v0, v1}, Landroid/security/net/config/XmlConfigSource$ParserException;-><init>(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 138
    :cond_30
    const-wide v0, 0x7fffffffffffffffL

    .line 152
    :goto_35
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v2

    .line 153
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    .line 154
    :goto_3e
    invoke-static {p1, v2}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v4

    if-eqz v4, :cond_5d

    .line 155
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 156
    const-string/jumbo v5, "pin"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_59

    .line 157
    invoke-direct {p0, p1}, Landroid/security/net/config/XmlConfigSource;->parsePin(Landroid/content/res/XmlResourceParser;)Landroid/security/net/config/Pin;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_5c

    .line 159
    :cond_59
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 161
    :goto_5c
    goto :goto_3e

    .line 162
    :cond_5d
    new-instance p1, Landroid/security/net/config/PinSet;

    invoke-direct {p1, v3, v0, v1}, Landroid/security/net/config/PinSet;-><init>(Ljava/util/Set;J)V

    return-object p1
.end method

.method private greylist-max-o parseTrustAnchors(Landroid/content/res/XmlResourceParser;Z)Ljava/util/Collection;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/XmlResourceParser;",
            "Z)",
            "Ljava/util/Collection<",
            "Landroid/security/net/config/CertificatesEntryRef;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Landroid/security/net/config/XmlConfigSource$ParserException;
        }
    .end annotation

    .line 224
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v0

    .line 225
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 226
    :goto_9
    invoke-static {p1, v0}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 227
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 228
    const-string v3, "certificates"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 229
    invoke-direct {p0, p1, p2}, Landroid/security/net/config/XmlConfigSource;->parseCertificatesEntry(Landroid/content/res/XmlResourceParser;Z)Landroid/security/net/config/CertificatesEntryRef;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_26

    .line 231
    :cond_23
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 233
    :goto_26
    goto :goto_9

    .line 234
    :cond_27
    return-object v1
.end method


# virtual methods
.method public greylist-max-o getDefaultConfig()Landroid/security/net/config/NetworkSecurityConfig;
    .registers 2

    .line 65
    invoke-direct {p0}, Landroid/security/net/config/XmlConfigSource;->ensureInitialized()V

    .line 66
    iget-object v0, p0, Landroid/security/net/config/XmlConfigSource;->mDefaultConfig:Landroid/security/net/config/NetworkSecurityConfig;

    return-object v0
.end method

.method public blacklist getLocalhostConfig()Landroid/security/net/config/NetworkSecurityConfig;
    .registers 2

    .line 71
    invoke-direct {p0}, Landroid/security/net/config/XmlConfigSource;->ensureInitialized()V

    .line 72
    iget-object v0, p0, Landroid/security/net/config/XmlConfigSource;->mLocalhostConfig:Landroid/security/net/config/NetworkSecurityConfig;

    return-object v0
.end method

.method public greylist-max-o getPerDomainConfigs()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroid/util/Pair<",
            "Landroid/security/net/config/Domain;",
            "Landroid/security/net/config/NetworkSecurityConfig;",
            ">;>;"
        }
    .end annotation

    .line 59
    invoke-direct {p0}, Landroid/security/net/config/XmlConfigSource;->ensureInitialized()V

    .line 60
    iget-object v0, p0, Landroid/security/net/config/XmlConfigSource;->mDomainMap:Ljava/util/Set;

    return-object v0
.end method
