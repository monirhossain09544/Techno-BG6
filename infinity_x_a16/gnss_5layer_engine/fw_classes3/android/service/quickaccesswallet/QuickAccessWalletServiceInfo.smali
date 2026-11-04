.class Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo;
.super Ljava/lang/Object;
.source "QuickAccessWalletServiceInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo$ServiceMetadata;,
        Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo$TileServiceMetadata;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "QAWalletSInfo"

.field private static final blacklist TAG_WALLET_SERVICE:Ljava/lang/String; = "quickaccesswallet-service"


# instance fields
.field private final blacklist mServiceInfo:Landroid/content/pm/ServiceInfo;

.field private final blacklist mServiceMetadata:Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo$ServiceMetadata;

.field private final blacklist mTileServiceMetadata:Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo$TileServiceMetadata;

.field private final blacklist mUserId:I


# direct methods
.method private constructor blacklist <init>(Landroid/content/pm/ServiceInfo;Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo$ServiceMetadata;Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo$TileServiceMetadata;I)V
    .registers 5

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p1, p0, Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    .line 76
    iput-object p2, p0, Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo;->mServiceMetadata:Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo$ServiceMetadata;

    .line 77
    iput-object p3, p0, Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo;->mTileServiceMetadata:Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo$TileServiceMetadata;

    .line 78
    iput p4, p0, Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo;->mUserId:I

    .line 79
    return-void
.end method

.method private static blacklist getDefaultPaymentApp(Landroid/content/Context;)Landroid/content/ComponentName;
    .registers 2

    .line 161
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 162
    const-string v0, "nfc_payment_default_component"

    invoke-static {p0, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 163
    if-nez p0, :cond_e

    const/4 p0, 0x0

    goto :goto_12

    :cond_e
    invoke-static {p0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p0

    :goto_12
    return-object p0
.end method

.method private static blacklist getDefaultWalletApp(Landroid/content/Context;)Landroid/util/Pair;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 125
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    .line 127
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 129
    :try_start_c
    const-class v3, Landroid/app/role/RoleManager;

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/role/RoleManager;

    .line 131
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/Flags;->walletRoleCrossUserEnabled()Z

    move-result v4
    :try_end_18
    .catchall {:try_start_c .. :try_end_18} :catchall_67

    const/4 v5, 0x0

    const-string v6, "android.app.role.WALLET"

    if-eqz v4, :cond_42

    .line 132
    :try_start_1d
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/permission/flags/Flags;->crossUserRoleEnabled()Z

    move-result v4

    if-eqz v4, :cond_42

    const-string v4, "android.permission.INTERACT_ACROSS_USERS_FULL"

    .line 133
    invoke-virtual {p0, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_42

    .line 136
    invoke-virtual {v3, v6}, Landroid/app/role/RoleManager;->getActiveUserForRole(Ljava/lang/String;)Landroid/os/UserHandle;

    move-result-object v0

    .line 137
    if-nez v0, :cond_42

    .line 138
    new-instance p0, Landroid/util/Pair;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v5, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_3e
    .catchall {:try_start_1d .. :try_end_3e} :catchall_67

    .line 146
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 138
    return-object p0

    .line 141
    :cond_42
    :try_start_42
    invoke-virtual {v3, v6, v0}, Landroid/app/role/RoleManager;->getRoleHoldersAsUser(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object p0

    .line 143
    new-instance v3, Landroid/util/Pair;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4f

    :goto_4e
    goto :goto_58

    :cond_4f
    const/4 v4, 0x0

    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object v5, p0

    check-cast v5, Ljava/lang/String;

    goto :goto_4e

    .line 144
    :goto_58
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-direct {v3, v5, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_63
    .catchall {:try_start_42 .. :try_end_63} :catchall_67

    .line 146
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 143
    return-object v3

    .line 146
    :catchall_67
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 147
    throw p0
.end method

.method private static blacklist getWalletServiceInfo(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/pm/ServiceInfo;
    .registers 5

    .line 168
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.service.quickaccesswallet.QuickAccessWalletService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 169
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 170
    nop

    .line 171
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const p1, 0xd0080

    invoke-virtual {p0, v0, p1, p2}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object p0

    .line 176
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1e

    const/4 p0, 0x0

    goto :goto_27

    :cond_1e
    const/4 p1, 0x0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ResolveInfo;

    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    :goto_27
    return-object p0
.end method

.method private static blacklist isWalletRoleAvailable(Landroid/content/Context;)Z
    .registers 4

    .line 151
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 153
    :try_start_4
    const-class v2, Landroid/app/role/RoleManager;

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/role/RoleManager;

    .line 154
    const-string v2, "android.app.role.WALLET"

    invoke-virtual {p0, v2}, Landroid/app/role/RoleManager;->isRoleAvailable(Ljava/lang/String;)Z

    move-result p0
    :try_end_12
    .catchall {:try_start_4 .. :try_end_12} :catchall_16

    .line 156
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 154
    return p0

    .line 156
    :catchall_16
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 157
    throw p0
.end method

.method static blacklist parseServiceMetadata(Landroid/content/Context;Landroid/content/pm/ServiceInfo;)Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo$ServiceMetadata;
    .registers 13

    .line 231
    const-string v1, "QAWalletSInfo"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 232
    nop

    .line 233
    const-string v0, "android.quickaccesswallet"

    invoke-virtual {p1, p0, v0}, Landroid/content/pm/ServiceInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    .line 235
    if-nez v0, :cond_14

    .line 236
    invoke-static {}, Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo$ServiceMetadata;->-$$Nest$smempty()Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo$ServiceMetadata;

    move-result-object p0

    return-object p0

    .line 240
    :cond_14
    :try_start_14
    iget-object p1, p1, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object p0

    .line 241
    const/4 p1, 0x0

    move v2, p1

    .line 242
    :goto_1c
    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v2, v4, :cond_27

    if-eq v2, v3, :cond_27

    .line 243
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v2

    goto :goto_1c

    .line 246
    :cond_27
    const-string/jumbo v2, "quickaccesswallet-service"

    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_65

    .line 247
    invoke-static {v0}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0
    :try_end_38
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_14 .. :try_end_38} :catch_6b
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_38} :catch_6b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_14 .. :try_end_38} :catch_6b

    .line 248
    nop

    .line 250
    const/4 v2, 0x0

    :try_start_3a
    sget-object v5, Lcom/android/internal/R$styleable;->QuickAccessWalletService:[I

    invoke-virtual {p0, v0, v5}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 252
    invoke-virtual {v2, p1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 254
    invoke-virtual {v2, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 256
    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    .line 258
    const/4 p0, 0x3

    invoke-virtual {v2, p0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    .line 260
    new-instance v5, Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo$ServiceMetadata;

    const/4 v10, 0x0

    invoke-direct/range {v5 .. v10}, Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo$ServiceMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo-IA;)V
    :try_end_57
    .catchall {:try_start_3a .. :try_end_57} :catchall_5d

    .line 263
    if-eqz v2, :cond_5c

    .line 264
    :try_start_59
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 260
    :cond_5c
    return-object v5

    .line 263
    :catchall_5d
    move-exception v0

    move-object p0, v0

    if-eqz v2, :cond_64

    .line 264
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 266
    :cond_64
    throw p0

    .line 268
    :cond_65
    const-string p0, "Meta-data does not start with quickaccesswallet-service tag"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_59 .. :try_end_6a} :catch_6b
    .catch Ljava/io/IOException; {:try_start_59 .. :try_end_6a} :catch_6b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_59 .. :try_end_6a} :catch_6b

    .line 274
    goto :goto_72

    .line 270
    :catch_6b
    move-exception v0

    move-object p0, v0

    .line 273
    const-string p1, "Error parsing quickaccesswallet service meta-data"

    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 275
    :goto_72
    invoke-static {}, Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo$ServiceMetadata;->-$$Nest$smempty()Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo$ServiceMetadata;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist parseTileServiceMetadata(Landroid/content/Context;Landroid/content/pm/ServiceInfo;)Landroid/graphics/drawable/Drawable;
    .registers 4

    .line 190
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 191
    iget-object v0, p1, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    .line 192
    const-string v1, "android.quickaccesswallet.tile"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 193
    const/4 v1, 0x0

    if-eqz v0, :cond_22

    .line 195
    :try_start_f
    iget-object p1, p1, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object p0

    .line 196
    invoke-virtual {p0, v0, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0
    :try_end_19
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_f .. :try_end_19} :catch_1a

    return-object p0

    .line 197
    :catch_1a
    move-exception p0

    .line 198
    const-string p1, "QAWalletSInfo"

    const-string v0, "Error parsing quickaccesswallet tile service meta-data"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 201
    :cond_22
    return-object v1
.end method

.method static blacklist tryCreate(Landroid/content/Context;)Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo;
    .registers 6

    .line 83
    nop

    .line 85
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    .line 87
    invoke-static {p0}, Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo;->isWalletRoleAvailable(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1d

    .line 88
    invoke-static {p0}, Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo;->getDefaultWalletApp(Landroid/content/Context;)Landroid/util/Pair;

    move-result-object v0

    .line 89
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 90
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 91
    goto :goto_28

    .line 92
    :cond_1d
    invoke-static {p0}, Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo;->getDefaultPaymentApp(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v1

    .line 93
    if-nez v1, :cond_24

    .line 94
    return-object v2

    .line 96
    :cond_24
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 99
    :goto_28
    if-eqz v1, :cond_65

    if-gez v0, :cond_2d

    goto :goto_65

    .line 103
    :cond_2d
    invoke-static {p0, v1, v0}, Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo;->getWalletServiceInfo(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/pm/ServiceInfo;

    move-result-object v1

    .line 105
    if-nez v1, :cond_34

    .line 106
    return-object v2

    .line 109
    :cond_34
    iget-object v3, v1, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    const-string v4, "android.permission.BIND_QUICK_ACCESS_WALLET_SERVICE"

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_52

    .line 110
    iget-object p0, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v0, v1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    filled-new-array {p0, v0, v4}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "%s.%s does not require permission %s"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "QAWalletSInfo"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    return-object v2

    .line 116
    :cond_52
    invoke-static {p0, v1}, Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo;->parseServiceMetadata(Landroid/content/Context;Landroid/content/pm/ServiceInfo;)Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo$ServiceMetadata;

    move-result-object v3

    .line 117
    new-instance v4, Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo$TileServiceMetadata;

    .line 118
    invoke-static {p0, v1}, Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo;->parseTileServiceMetadata(Landroid/content/Context;Landroid/content/pm/ServiceInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-direct {v4, p0, v2}, Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo$TileServiceMetadata;-><init>(Landroid/graphics/drawable/Drawable;Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo-IA;)V

    .line 119
    new-instance p0, Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo;

    invoke-direct {p0, v1, v3, v4, v0}, Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo;-><init>(Landroid/content/pm/ServiceInfo;Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo$ServiceMetadata;Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo$TileServiceMetadata;I)V

    return-object p0

    .line 100
    :cond_65
    :goto_65
    return-object v2
.end method


# virtual methods
.method blacklist getComponentName()Landroid/content/ComponentName;
    .registers 2

    .line 283
    iget-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    invoke-virtual {v0}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method blacklist getServiceLabel(Landroid/content/Context;)Ljava/lang/CharSequence;
    .registers 3

    .line 341
    iget-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/pm/ServiceInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method blacklist getSettingsActivity()Ljava/lang/String;
    .registers 2

    .line 306
    iget-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo;->mServiceMetadata:Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo$ServiceMetadata;

    invoke-static {v0}, Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo$ServiceMetadata;->-$$Nest$fgetmSettingsActivity(Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo$ServiceMetadata;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method blacklist getShortcutLongLabel(Landroid/content/Context;)Ljava/lang/CharSequence;
    .registers 3

    .line 333
    iget-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo;->mServiceMetadata:Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo$ServiceMetadata;

    invoke-static {v0}, Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo$ServiceMetadata;->-$$Nest$fgetmShortcutLongLabel(Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo$ServiceMetadata;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 334
    iget-object p1, p0, Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo;->mServiceMetadata:Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo$ServiceMetadata;

    invoke-static {p1}, Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo$ServiceMetadata;->-$$Nest$fgetmShortcutLongLabel(Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo$ServiceMetadata;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1

    .line 336
    :cond_13
    iget-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/pm/ServiceInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method blacklist getShortcutShortLabel(Landroid/content/Context;)Ljava/lang/CharSequence;
    .registers 3

    .line 325
    iget-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo;->mServiceMetadata:Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo$ServiceMetadata;

    invoke-static {v0}, Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo$ServiceMetadata;->-$$Nest$fgetmShortcutShortLabel(Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo$ServiceMetadata;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 326
    iget-object p1, p0, Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo;->mServiceMetadata:Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo$ServiceMetadata;

    invoke-static {p1}, Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo$ServiceMetadata;->-$$Nest$fgetmShortcutShortLabel(Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo$ServiceMetadata;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1

    .line 328
    :cond_13
    iget-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/pm/ServiceInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method blacklist getTileIcon()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 320
    iget-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo;->mTileServiceMetadata:Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo$TileServiceMetadata;

    invoke-static {v0}, Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo$TileServiceMetadata;->-$$Nest$fgetmTileIcon(Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo$TileServiceMetadata;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method blacklist getUserId()I
    .registers 2

    .line 287
    iget v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo;->mUserId:I

    return v0
.end method

.method blacklist getWalletActivity()Ljava/lang/String;
    .registers 2

    .line 296
    iget-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo;->mServiceMetadata:Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo$ServiceMetadata;

    invoke-static {v0}, Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo$ServiceMetadata;->-$$Nest$fgetmTargetActivity(Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo$ServiceMetadata;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method blacklist getWalletLogo(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .registers 4

    .line 311
    iget-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/ServiceInfo;->loadLogo(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 312
    if-eqz v0, :cond_d

    .line 313
    return-object v0

    .line 315
    :cond_d
    iget-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/pm/ServiceInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method
