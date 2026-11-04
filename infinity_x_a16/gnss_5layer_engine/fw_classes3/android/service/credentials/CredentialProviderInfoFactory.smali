.class public final Landroid/service/credentials/CredentialProviderInfoFactory;
.super Ljava/lang/Object;
.source "CredentialProviderInfoFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/credentials/CredentialProviderInfoFactory$ProviderGenerator;
    }
.end annotation


# static fields
.field private static final blacklist ATTR_NAME:Ljava/lang/String; = "name"

.field private static final blacklist TAG:Ljava/lang/String; = "CredentialManager"

.field private static final blacklist TAG_CAPABILITIES:Ljava/lang/String; = "capabilities"

.field private static final blacklist TAG_CAPABILITY:Ljava/lang/String; = "capability"

.field private static final blacklist TAG_CREDENTIAL_PROVIDER:Ljava/lang/String; = "credential-provider"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist create(Landroid/content/Context;Landroid/content/ComponentName;IZZ)Landroid/credentials/CredentialProviderInfo;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .line 92
    nop

    .line 94
    invoke-static {p1, p2}, Landroid/service/credentials/CredentialProviderInfoFactory;->getServiceInfoOrThrow(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v1

    .line 92
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v2, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Landroid/service/credentials/CredentialProviderInfoFactory;->create(Landroid/content/Context;Landroid/content/pm/ServiceInfo;ZZZZ)Landroid/credentials/CredentialProviderInfo;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist create(Landroid/content/Context;Landroid/content/pm/ServiceInfo;ZZZZ)Landroid/credentials/CredentialProviderInfo;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .line 121
    invoke-static {p1}, Landroid/service/credentials/CredentialProviderInfoFactory;->verifyProviderPermission(Landroid/content/pm/ServiceInfo;)V

    .line 122
    if-eqz p2, :cond_3b

    .line 123
    invoke-static {p0, p1, p3}, Landroid/service/credentials/CredentialProviderInfoFactory;->isValidSystemProvider(Landroid/content/Context;Landroid/content/pm/ServiceInfo;Z)Z

    move-result p3

    if-eqz p3, :cond_c

    goto :goto_3b

    .line 125
    :cond_c
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Provider is not a valid system provider: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p3, "CredentialManager"

    invoke-static {p3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 131
    :cond_3b
    :goto_3b
    invoke-static {p0, p1}, Landroid/service/credentials/CredentialProviderInfoFactory;->populateMetadata(Landroid/content/Context;Landroid/content/pm/ServiceInfo;)Landroid/credentials/CredentialProviderInfo$Builder;

    move-result-object p0

    .line 132
    invoke-virtual {p0, p2}, Landroid/credentials/CredentialProviderInfo$Builder;->setSystemProvider(Z)Landroid/credentials/CredentialProviderInfo$Builder;

    move-result-object p0

    .line 133
    invoke-virtual {p0, p4}, Landroid/credentials/CredentialProviderInfo$Builder;->setEnabled(Z)Landroid/credentials/CredentialProviderInfo$Builder;

    move-result-object p0

    .line 134
    invoke-virtual {p0, p5}, Landroid/credentials/CredentialProviderInfo$Builder;->setPrimary(Z)Landroid/credentials/CredentialProviderInfo$Builder;

    move-result-object p0

    .line 135
    invoke-virtual {p0}, Landroid/credentials/CredentialProviderInfo$Builder;->build()Landroid/credentials/CredentialProviderInfo;

    move-result-object p0

    .line 131
    return-object p0
.end method

.method public static blacklist createForTests(Landroid/content/pm/ServiceInfo;Ljava/lang/CharSequence;ZZLjava/util/List;)Landroid/credentials/CredentialProviderInfo;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/ServiceInfo;",
            "Ljava/lang/CharSequence;",
            "ZZ",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/credentials/CredentialProviderInfo;"
        }
    .end annotation

    .line 149
    new-instance v0, Landroid/credentials/CredentialProviderInfo$Builder;

    invoke-direct {v0, p0}, Landroid/credentials/CredentialProviderInfo$Builder;-><init>(Landroid/content/pm/ServiceInfo;)V

    .line 150
    invoke-virtual {v0, p3}, Landroid/credentials/CredentialProviderInfo$Builder;->setEnabled(Z)Landroid/credentials/CredentialProviderInfo$Builder;

    move-result-object p0

    .line 151
    invoke-virtual {p0, p1}, Landroid/credentials/CredentialProviderInfo$Builder;->setOverrideLabel(Ljava/lang/CharSequence;)Landroid/credentials/CredentialProviderInfo$Builder;

    move-result-object p0

    .line 152
    invoke-virtual {p0, p2}, Landroid/credentials/CredentialProviderInfo$Builder;->setSystemProvider(Z)Landroid/credentials/CredentialProviderInfo$Builder;

    move-result-object p0

    .line 153
    invoke-virtual {p0, p4}, Landroid/credentials/CredentialProviderInfo$Builder;->addCapabilities(Ljava/util/List;)Landroid/credentials/CredentialProviderInfo$Builder;

    move-result-object p0

    .line 154
    invoke-virtual {p0}, Landroid/credentials/CredentialProviderInfo$Builder;->build()Landroid/credentials/CredentialProviderInfo;

    move-result-object p0

    .line 149
    return-object p0
.end method

.method private static blacklist extractXmlMetadata(Landroid/content/Context;Landroid/content/pm/ServiceInfo;Landroid/content/pm/PackageManager;Landroid/content/res/Resources;)Landroid/credentials/CredentialProviderInfo$Builder;
    .registers 9

    .line 246
    new-instance p0, Landroid/credentials/CredentialProviderInfo$Builder;

    invoke-direct {p0, p1}, Landroid/credentials/CredentialProviderInfo$Builder;-><init>(Landroid/content/pm/ServiceInfo;)V

    .line 248
    nop

    .line 249
    const-string v0, "android.credentials.provider"

    invoke-virtual {p1, p2, v0}, Landroid/content/pm/ServiceInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object p1

    .line 250
    if-nez p1, :cond_f

    .line 251
    return-object p0

    .line 255
    :cond_f
    const/4 p2, 0x0

    move v0, p2

    .line 256
    :goto_11
    const/4 v1, 0x1

    const-string v2, "CredentialManager"

    if-eq v0, v1, :cond_1e

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1e

    .line 257
    :try_start_19
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v0

    goto :goto_11

    .line 261
    :cond_1e
    const-string v0, "credential-provider"

    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_64

    .line 262
    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_2e} :catch_6a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_19 .. :try_end_2e} :catch_6a

    .line 263
    nop

    .line 265
    const/4 v3, 0x0

    :try_start_30
    sget-object v4, Lcom/android/internal/R$styleable;->CredentialProvider:[I

    .line 266
    invoke-virtual {p3, v0, v4}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 269
    nop

    .line 270
    invoke-static {v3, v1}, Landroid/service/credentials/CredentialProviderInfoFactory;->getAfsAttributeSafe(Landroid/content/res/TypedArray;I)Ljava/lang/String;

    move-result-object v0

    .line 269
    invoke-virtual {p0, v0}, Landroid/credentials/CredentialProviderInfo$Builder;->setSettingsSubtitle(Ljava/lang/CharSequence;)Landroid/credentials/CredentialProviderInfo$Builder;

    .line 273
    nop

    .line 274
    invoke-static {v3, p2}, Landroid/service/credentials/CredentialProviderInfoFactory;->getAfsAttributeSafe(Landroid/content/res/TypedArray;I)Ljava/lang/String;

    move-result-object p2

    .line 273
    invoke-virtual {p0, p2}, Landroid/credentials/CredentialProviderInfo$Builder;->setSettingsActivity(Ljava/lang/CharSequence;)Landroid/credentials/CredentialProviderInfo$Builder;
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_46} :catch_4b
    .catchall {:try_start_30 .. :try_end_46} :catchall_49

    .line 280
    if-eqz v3, :cond_56

    .line 281
    goto :goto_53

    .line 280
    :catchall_49
    move-exception p1

    goto :goto_5e

    .line 277
    :catch_4b
    move-exception p2

    .line 278
    :try_start_4c
    const-string v0, "Failed to get XML attr for metadata"

    invoke-static {v2, v0, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_51
    .catchall {:try_start_4c .. :try_end_51} :catchall_49

    .line 280
    if-eqz v3, :cond_56

    .line 281
    :goto_53
    :try_start_53
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 285
    :cond_56
    invoke-static {p1, p3}, Landroid/service/credentials/CredentialProviderInfoFactory;->parseXmlProviderOuterCapabilities(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/credentials/CredentialProviderInfo$Builder;->addCapabilities(Ljava/util/List;)Landroid/credentials/CredentialProviderInfo$Builder;

    .line 286
    goto :goto_69

    .line 280
    :goto_5e
    if-eqz v3, :cond_63

    .line 281
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 283
    :cond_63
    throw p1

    .line 287
    :cond_64
    const-string p1, "Meta-data does not start with credential-provider-service tag"

    invoke-static {v2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_69
    .catch Ljava/io/IOException; {:try_start_53 .. :try_end_69} :catch_6a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_53 .. :try_end_69} :catch_6a

    .line 291
    :goto_69
    goto :goto_70

    .line 289
    :catch_6a
    move-exception p1

    .line 290
    const-string p2, "Error parsing credential provider service meta-data"

    invoke-static {v2, p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 293
    :goto_70
    return-object p0
.end method

.method private static blacklist getAfsAttributeSafe(Landroid/content/res/TypedArray;I)Ljava/lang/String;
    .registers 4

    .line 298
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 299
    return-object v0

    .line 303
    :cond_4
    :try_start_4
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_8} :catch_9

    return-object p0

    .line 304
    :catch_9
    move-exception p0

    .line 305
    const-string p1, "CredentialManager"

    const-string v1, "Failed to get XML attr from afs attributes"

    invoke-static {p1, v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 308
    return-object v0
.end method

.method private static blacklist getAvailableSystemServiceInfos(Landroid/content/Context;IZ)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "IZ)",
            "Ljava/util/List<",
            "Landroid/content/pm/ServiceInfo;",
            ">;"
        }
    .end annotation

    .line 378
    const-string v0, "context must not be null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 380
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 381
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 383
    nop

    .line 384
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.service.credentials.system.CredentialProviderService"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 387
    const-wide/16 v4, 0x80

    invoke-static {v4, v5}, Landroid/content/pm/PackageManager$ResolveInfoFlags;->of(J)Landroid/content/pm/PackageManager$ResolveInfoFlags;

    move-result-object v4

    .line 385
    invoke-virtual {v2, v3, v4, p1}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;I)Ljava/util/List;

    move-result-object p1

    .line 383
    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 390
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2c
    :goto_2c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_78

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 391
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 392
    if-eqz p2, :cond_42

    .line 393
    if-eqz v1, :cond_2c

    .line 394
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2c

    .line 400
    :cond_42
    nop

    .line 401
    :try_start_43
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 404
    const-wide/32 v4, 0x100000

    invoke-static {v4, v5}, Landroid/content/pm/PackageManager$ApplicationInfoFlags;->of(J)Landroid/content/pm/PackageManager$ApplicationInfoFlags;

    move-result-object v4

    .line 402
    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;Landroid/content/pm/PackageManager$ApplicationInfoFlags;)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 407
    if-eqz v2, :cond_5d

    if-nez v1, :cond_59

    goto :goto_5d

    .line 410
    :cond_59
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5c
    .catch Ljava/lang/SecurityException; {:try_start_43 .. :try_end_5c} :catch_5e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_43 .. :try_end_5c} :catch_5e

    .line 413
    goto :goto_77

    .line 408
    :cond_5d
    :goto_5d
    goto :goto_2c

    .line 411
    :catch_5e
    move-exception v2

    .line 412
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error getting info for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "CredentialManager"

    invoke-static {v3, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 414
    :goto_77
    goto :goto_2c

    .line 415
    :cond_78
    return-object v0
.end method

.method public static blacklist getAvailableSystemServices(Landroid/content/Context;IZLjava/util/Set;)Ljava/util/List;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "IZ",
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/credentials/CredentialProviderInfo;",
            ">;"
        }
    .end annotation

    .line 428
    const-string v1, "CredentialManager"

    const-string v0, "context must not be null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 430
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 432
    invoke-static {p0, p1, p2}, Landroid/service/credentials/CredentialProviderInfoFactory;->getAvailableSystemServiceInfos(Landroid/content/Context;IZ)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_14
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_61

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/content/pm/ServiceInfo;

    .line 435
    nop

    .line 441
    :try_start_22
    invoke-virtual {v4}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7
    :try_end_2a
    .catch Ljava/lang/SecurityException; {:try_start_22 .. :try_end_2a} :catch_44

    .line 436
    const/4 v5, 0x1

    const/4 v8, 0x0

    move-object v3, p0

    move v6, p2

    :try_start_2e
    invoke-static/range {v3 .. v8}, Landroid/service/credentials/CredentialProviderInfoFactory;->create(Landroid/content/Context;Landroid/content/pm/ServiceInfo;ZZZZ)Landroid/credentials/CredentialProviderInfo;

    move-result-object p0

    .line 443
    invoke-virtual {p0}, Landroid/credentials/CredentialProviderInfo;->isSystemProvider()Z

    move-result p2

    if-eqz p2, :cond_3c

    .line 444
    invoke-interface {v2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_41

    .line 446
    :cond_3c
    const-string p0, "Non system provider was in system provider list."

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_41
    .catch Ljava/lang/SecurityException; {:try_start_2e .. :try_end_41} :catch_42

    .line 450
    :goto_41
    goto :goto_5e

    .line 448
    :catch_42
    move-exception v0

    goto :goto_47

    :catch_44
    move-exception v0

    move-object v3, p0

    move v6, p2

    :goto_47
    move-object p0, v0

    .line 449
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to create CredentialProviderInfo: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    :goto_5e
    move-object p0, v3

    move p2, v6

    goto :goto_14

    .line 452
    :cond_61
    return-object v2
.end method

.method public static blacklist getCredentialProviderServices(Landroid/content/Context;IILjava/util/Set;Ljava/util/Set;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II",
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;",
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/credentials/CredentialProviderInfo;",
            ">;"
        }
    .end annotation

    .line 482
    const-string v0, "context must not be null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 487
    const/4 v0, 0x3

    if-eq p2, v0, :cond_d

    .line 488
    invoke-static {p0, p1}, Landroid/service/credentials/CredentialProviderInfoFactory;->getDeviceManagerPolicy(Landroid/content/Context;I)Landroid/app/admin/PackagePolicy;

    move-result-object v0

    goto :goto_e

    .line 489
    :cond_d
    const/4 v0, 0x0

    .line 493
    :goto_e
    new-instance v1, Landroid/service/credentials/CredentialProviderInfoFactory$ProviderGenerator;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2, p2}, Landroid/service/credentials/CredentialProviderInfoFactory$ProviderGenerator;-><init>(Landroid/content/Context;Landroid/app/admin/PackagePolicy;ZI)V

    .line 496
    nop

    .line 497
    invoke-static {p0, p1, v2, p3, p4}, Landroid/service/credentials/CredentialProviderInfoFactory;->getUserProviders(Landroid/content/Context;IZLjava/util/Set;Ljava/util/Set;)Ljava/util/List;

    move-result-object p2

    .line 496
    invoke-virtual {v1, p2}, Landroid/service/credentials/CredentialProviderInfoFactory$ProviderGenerator;->addUserProviders(Ljava/util/List;)V

    .line 503
    nop

    .line 504
    invoke-static {p0, p1, v2, p3}, Landroid/service/credentials/CredentialProviderInfoFactory;->getAvailableSystemServices(Landroid/content/Context;IZLjava/util/Set;)Ljava/util/List;

    move-result-object p0

    .line 503
    invoke-virtual {v1, p0}, Landroid/service/credentials/CredentialProviderInfoFactory$ProviderGenerator;->addSystemProviders(Ljava/util/List;)V

    .line 506
    invoke-virtual {v1}, Landroid/service/credentials/CredentialProviderInfoFactory$ProviderGenerator;->getProviders()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist getCredentialProviderServicesForTesting(Landroid/content/Context;IILjava/util/Set;Ljava/util/Set;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II",
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;",
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/credentials/CredentialProviderInfo;",
            ">;"
        }
    .end annotation

    .line 520
    const-string v0, "context must not be null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 525
    const/4 v0, 0x3

    if-eq p2, v0, :cond_d

    .line 526
    invoke-static {p0, p1}, Landroid/service/credentials/CredentialProviderInfoFactory;->getDeviceManagerPolicy(Landroid/content/Context;I)Landroid/app/admin/PackagePolicy;

    move-result-object v0

    goto :goto_e

    .line 527
    :cond_d
    const/4 v0, 0x0

    .line 531
    :goto_e
    new-instance v1, Landroid/service/credentials/CredentialProviderInfoFactory$ProviderGenerator;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v0, v2, p2}, Landroid/service/credentials/CredentialProviderInfoFactory$ProviderGenerator;-><init>(Landroid/content/Context;Landroid/app/admin/PackagePolicy;ZI)V

    .line 534
    nop

    .line 535
    invoke-static {p0, p1, v2, p3, p4}, Landroid/service/credentials/CredentialProviderInfoFactory;->getUserProviders(Landroid/content/Context;IZLjava/util/Set;Ljava/util/Set;)Ljava/util/List;

    move-result-object p2

    .line 534
    invoke-virtual {v1, p2}, Landroid/service/credentials/CredentialProviderInfoFactory$ProviderGenerator;->addUserProviders(Ljava/util/List;)V

    .line 541
    nop

    .line 542
    invoke-static {p0, p1, v2, p3}, Landroid/service/credentials/CredentialProviderInfoFactory;->getAvailableSystemServices(Landroid/content/Context;IZLjava/util/Set;)Ljava/util/List;

    move-result-object p0

    .line 541
    invoke-virtual {v1, p0}, Landroid/service/credentials/CredentialProviderInfoFactory$ProviderGenerator;->addSystemProviders(Ljava/util/List;)V

    .line 544
    invoke-virtual {v1}, Landroid/service/credentials/CredentialProviderInfoFactory$ProviderGenerator;->getProviders()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist getDeviceManagerPolicy(Landroid/content/Context;I)Landroid/app/admin/PackagePolicy;
    .registers 3

    .line 457
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object p0

    .line 460
    :try_start_9
    const-class p1, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/admin/DevicePolicyManager;

    .line 461
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->getCredentialManagerPolicy()Landroid/app/admin/PackagePolicy;

    move-result-object p0
    :try_end_15
    .catch Ljava/lang/SecurityException; {:try_start_9 .. :try_end_15} :catch_16

    .line 462
    return-object p0

    .line 463
    :catch_16
    move-exception p0

    .line 465
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to get device policy: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CredentialManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    const/4 p0, 0x0

    return-object p0
.end method

.method private static blacklist getServiceInfoOrThrow(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 358
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 359
    const-wide/16 v1, 0x80

    invoke-interface {v0, p0, v1, v2, p1}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ServiceInfo;

    move-result-object p1
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_e

    .line 360
    if-eqz p1, :cond_d

    .line 361
    return-object p1

    .line 365
    :cond_d
    goto :goto_16

    .line 363
    :catch_e
    move-exception p1

    .line 364
    const-string v0, "CredentialManager"

    const-string v1, "Unable to get serviceInfo"

    invoke-static {v0, v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 366
    :goto_16
    new-instance p1, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-virtual {p0}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static blacklist getUserProviders(Landroid/content/Context;IZLjava/util/Set;Ljava/util/Set;)Ljava/util/List;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "IZ",
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;",
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/credentials/CredentialProviderInfo;",
            ">;"
        }
    .end annotation

    .line 638
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 639
    nop

    .line 640
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.service.credentials.CredentialProviderService"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 643
    const-wide/16 v3, 0x80

    invoke-static {v3, v4}, Landroid/content/pm/PackageManager$ResolveInfoFlags;->of(J)Landroid/content/pm/PackageManager$ResolveInfoFlags;

    move-result-object v3

    .line 641
    invoke-virtual {v0, v2, v3, p1}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;I)Ljava/util/List;

    move-result-object p1

    .line 645
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_78

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 646
    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 647
    const-string v8, "CredentialManager"

    if-nez v3, :cond_37

    .line 648
    const-string v0, "No serviceInfo found for resolveInfo, so skipping provider"

    invoke-static {v8, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    goto :goto_1f

    .line 653
    :cond_37
    nop

    .line 659
    :try_start_38
    invoke-virtual {v3}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    .line 660
    invoke-virtual {v3}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-interface {p4, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_48} :catch_5b

    .line 654
    const/4 v4, 0x0

    move-object v2, p0

    move v5, p2

    :try_start_4b
    invoke-static/range {v2 .. v7}, Landroid/service/credentials/CredentialProviderInfoFactory;->create(Landroid/content/Context;Landroid/content/pm/ServiceInfo;ZZZZ)Landroid/credentials/CredentialProviderInfo;

    move-result-object p0

    .line 661
    invoke-virtual {p0}, Landroid/credentials/CredentialProviderInfo;->isSystemProvider()Z

    move-result p2

    if-nez p2, :cond_58

    .line 662
    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_58} :catch_59

    .line 666
    :cond_58
    goto :goto_75

    .line 664
    :catch_59
    move-exception v0

    goto :goto_5e

    :catch_5b
    move-exception v0

    move-object v2, p0

    move v5, p2

    :goto_5e
    move-object p0, v0

    .line 665
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error getting info for "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v8, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 667
    :goto_75
    move-object p0, v2

    move p2, v5

    goto :goto_1f

    .line 668
    :cond_78
    return-object v1
.end method

.method private static blacklist isSystemProviderWithValidPermission(Landroid/content/pm/ServiceInfo;Landroid/content/Context;)Z
    .registers 3

    .line 168
    if-nez p1, :cond_b

    .line 169
    const-string p0, "CredentialManager"

    const-string p1, "Context is null in isSystemProviderWithValidPermission"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    const/4 p0, 0x0

    return p0

    .line 172
    :cond_b
    iget-object p0, p0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    const-string v0, "android.permission.PROVIDE_DEFAULT_ENABLED_CREDENTIAL_SERVICE"

    invoke-static {p1, p0, v0}, Landroid/service/credentials/PermissionUtils;->hasPermission(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static blacklist isValidSystemProvider(Landroid/content/Context;Landroid/content/pm/ServiceInfo;Z)Z
    .registers 4

    .line 182
    const-string v0, "context must not be null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 184
    if-eqz p2, :cond_2c

    .line 185
    iget-object p0, p1, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    .line 186
    if-nez p0, :cond_25

    .line 187
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "metadata is null while reading TEST_SYSTEM_PROVIDER_META_DATA_KEY: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CredentialManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    const/4 p0, 0x0

    return p0

    .line 194
    :cond_25
    const-string p1, "android.credentials.testsystemprovider"

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 198
    :cond_2c
    invoke-static {p1, p0}, Landroid/service/credentials/CredentialProviderInfoFactory;->isSystemProviderWithValidPermission(Landroid/content/pm/ServiceInfo;Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method private static blacklist parseXmlProviderInnerCapabilities(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Landroid/content/res/Resources;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 332
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 334
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 336
    :cond_9
    :goto_9
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3e

    const/4 v2, 0x3

    if-ne v1, v2, :cond_19

    .line 337
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_3e

    .line 338
    :cond_19
    if-eq v1, v2, :cond_9

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1f

    .line 339
    goto :goto_9

    .line 342
    :cond_1f
    const-string v1, "capability"

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 343
    const/4 v1, 0x0

    const-string v2, "name"

    invoke-interface {p0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 344
    if-eqz v1, :cond_3d

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3d

    .line 345
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 347
    :cond_3d
    goto :goto_9

    .line 350
    :cond_3e
    return-object p1
.end method

.method private static blacklist parseXmlProviderOuterCapabilities(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Landroid/content/res/Resources;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 313
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 314
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .line 316
    :cond_9
    :goto_9
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_33

    const/4 v3, 0x3

    if-ne v2, v3, :cond_19

    .line 317
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v1, :cond_33

    .line 318
    :cond_19
    if-eq v2, v3, :cond_9

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1f

    .line 319
    goto :goto_9

    .line 322
    :cond_1f
    const-string v2, "capabilities"

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 323
    invoke-static {p0, p1}, Landroid/service/credentials/CredentialProviderInfoFactory;->parseXmlProviderInnerCapabilities(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_9

    .line 327
    :cond_33
    return-object v0
.end method

.method private static blacklist populateMetadata(Landroid/content/Context;Landroid/content/pm/ServiceInfo;)Landroid/credentials/CredentialProviderInfo$Builder;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .line 203
    const-string v0, "context must not be null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 204
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 205
    new-instance v1, Landroid/credentials/CredentialProviderInfo$Builder;

    invoke-direct {v1, p1}, Landroid/credentials/CredentialProviderInfo$Builder;-><init>(Landroid/content/pm/ServiceInfo;)V

    .line 208
    iget-object v2, p1, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    .line 209
    const-string v3, "CredentialManager"

    if-nez v2, :cond_2f

    .line 210
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Metadata is null for provider: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p1}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    return-object v1

    .line 215
    :cond_2f
    nop

    .line 217
    :try_start_30
    iget-object v2, p1, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v2
    :try_end_36
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_30 .. :try_end_36} :catch_37

    .line 220
    goto :goto_3e

    .line 218
    :catch_37
    move-exception v2

    .line 219
    const-string v4, "Failed to get app resources"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v2, 0x0

    .line 223
    :goto_3e
    if-nez v2, :cond_5b

    .line 224
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Resources are null for the serviceInfo being processed: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 227
    invoke-virtual {p1}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 224
    invoke-static {v3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    return-object v1

    .line 233
    :cond_5b
    :try_start_5b
    invoke-static {p0, p1, v0, v2}, Landroid/service/credentials/CredentialProviderInfoFactory;->extractXmlMetadata(Landroid/content/Context;Landroid/content/pm/ServiceInfo;Landroid/content/pm/PackageManager;Landroid/content/res/Resources;)Landroid/credentials/CredentialProviderInfo$Builder;

    move-result-object v1
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_5f} :catch_60

    .line 236
    goto :goto_66

    .line 234
    :catch_60
    move-exception p0

    .line 235
    const-string p1, "Failed to get XML metadata"

    invoke-static {v3, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 238
    :goto_66
    return-object v1
.end method

.method private static blacklist verifyProviderPermission(Landroid/content/pm/ServiceInfo;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 159
    const-string v0, "android.permission.BIND_CREDENTIAL_PROVIDER_SERVICE"

    iget-object p0, p0, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b

    .line 160
    return-void

    .line 162
    :cond_b
    new-instance p0, Ljava/lang/SecurityException;

    const-string v0, "Service does not require the expected permission : android.permission.BIND_CREDENTIAL_PROVIDER_SERVICE"

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
