.class public Lcom/android/internal/pm/parsing/PackageInfoCommonUtils;
.super Ljava/lang/Object;
.source "PackageInfoCommonUtils.java"


# static fields
.field private static final blacklist DEBUG:Z = false

.field private static final blacklist TAG:Ljava/lang/String; = "PackageParsing"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist assignFieldsComponentInfoParsedMainComponent(Landroid/content/pm/ComponentInfo;Lcom/android/internal/pm/pkg/component/ParsedMainComponent;)V
    .registers 3

    .line 542
    invoke-static {p0, p1}, Lcom/android/internal/pm/parsing/PackageInfoCommonUtils;->assignFieldsPackageItemInfoParsedComponent(Landroid/content/pm/PackageItemInfo;Lcom/android/internal/pm/pkg/component/ParsedComponent;)V

    .line 543
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedMainComponent;->getDescriptionRes()I

    move-result v0

    iput v0, p0, Landroid/content/pm/ComponentInfo;->descriptionRes:I

    .line 544
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedMainComponent;->isDirectBootAware()Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/pm/ComponentInfo;->directBootAware:Z

    .line 545
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedMainComponent;->isEnabled()Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/pm/ComponentInfo;->enabled:Z

    .line 546
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedMainComponent;->getSplitName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ComponentInfo;->splitName:Ljava/lang/String;

    .line 547
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedMainComponent;->getAttributionTags()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ComponentInfo;->attributionTags:[Ljava/lang/String;

    .line 548
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedMainComponent;->getNonLocalizedLabel()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ComponentInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 549
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedMainComponent;->getIcon()I

    move-result p1

    iput p1, p0, Landroid/content/pm/ComponentInfo;->icon:I

    .line 550
    return-void
.end method

.method private static blacklist assignFieldsPackageItemInfoParsedComponent(Landroid/content/pm/PackageItemInfo;Lcom/android/internal/pm/pkg/component/ParsedComponent;)V
    .registers 3

    .line 554
    invoke-static {p1}, Lcom/android/internal/pm/pkg/component/ComponentParseUtils;->getNonLocalizedLabel(Lcom/android/internal/pm/pkg/component/ParsedComponent;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PackageItemInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 555
    invoke-static {p1}, Lcom/android/internal/pm/pkg/component/ComponentParseUtils;->getIcon(Lcom/android/internal/pm/pkg/component/ParsedComponent;)I

    move-result v0

    iput v0, p0, Landroid/content/pm/PackageItemInfo;->icon:I

    .line 556
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedComponent;->getBanner()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PackageItemInfo;->banner:I

    .line 557
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedComponent;->getLabelRes()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PackageItemInfo;->labelRes:I

    .line 558
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedComponent;->getLogo()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PackageItemInfo;->logo:I

    .line 559
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedComponent;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    .line 560
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedComponent;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 561
    return-void
.end method

.method public static blacklist generate(Lcom/android/server/pm/pkg/AndroidPackage;JI)Landroid/content/pm/PackageInfo;
    .registers 20

    .line 90
    move-object/from16 v0, p0

    move-wide/from16 v2, p1

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 91
    return-object v1

    .line 93
    :cond_8
    invoke-static/range {p0 .. p3}, Lcom/android/internal/pm/parsing/PackageInfoCommonUtils;->generateApplicationInfo(Lcom/android/server/pm/pkg/AndroidPackage;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 95
    new-instance v6, Landroid/content/pm/PackageInfo;

    invoke-direct {v6}, Landroid/content/pm/PackageInfo;-><init>()V

    .line 96
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 97
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getSplitNames()[Ljava/lang/String;

    move-result-object v5

    iput-object v5, v6, Landroid/content/pm/PackageInfo;->splitNames:[Ljava/lang/String;

    .line 98
    move-object v5, v0

    check-cast v5, Lcom/android/internal/pm/pkg/parsing/ParsingPackageHidden;

    invoke-interface {v5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageHidden;->getVersionCode()I

    move-result v7

    iput v7, v6, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 99
    invoke-interface {v5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageHidden;->getVersionCodeMajor()I

    move-result v5

    iput v5, v6, Landroid/content/pm/PackageInfo;->versionCodeMajor:I

    .line 100
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getBaseRevisionCode()I

    move-result v5

    iput v5, v6, Landroid/content/pm/PackageInfo;->baseRevisionCode:I

    .line 101
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getSplitRevisionCodes()[I

    move-result-object v5

    iput-object v5, v6, Landroid/content/pm/PackageInfo;->splitRevisionCodes:[I

    .line 102
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getVersionName()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v6, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 103
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->isLeavingSharedUser()Z

    move-result v5

    if-nez v5, :cond_50

    .line 104
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getSharedUserId()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v6, Landroid/content/pm/PackageInfo;->sharedUserId:Ljava/lang/String;

    .line 105
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getSharedUserLabelResourceId()I

    move-result v5

    iput v5, v6, Landroid/content/pm/PackageInfo;->sharedUserLabel:I

    .line 107
    :cond_50
    iput-object v4, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 108
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getInstallLocation()I

    move-result v5

    iput v5, v6, Landroid/content/pm/PackageInfo;->installLocation:I

    .line 109
    iget-object v5, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v7, 0x1

    and-int/2addr v5, v7

    if-nez v5, :cond_68

    iget-object v5, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v5, v5, 0x80

    if-eqz v5, :cond_6e

    .line 111
    :cond_68
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->isRequiredForAllUsers()Z

    move-result v5

    iput-boolean v5, v6, Landroid/content/pm/PackageInfo;->requiredForAllUsers:Z

    .line 113
    :cond_6e
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getRestrictedAccountType()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v6, Landroid/content/pm/PackageInfo;->restrictedAccountType:Ljava/lang/String;

    .line 114
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequiredAccountType()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v6, Landroid/content/pm/PackageInfo;->requiredAccountType:Ljava/lang/String;

    .line 115
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getOverlayTarget()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v6, Landroid/content/pm/PackageInfo;->overlayTarget:Ljava/lang/String;

    .line 116
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getOverlayTargetOverlayableName()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v6, Landroid/content/pm/PackageInfo;->targetOverlayableName:Ljava/lang/String;

    .line 117
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getOverlayCategory()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v6, Landroid/content/pm/PackageInfo;->overlayCategory:Ljava/lang/String;

    .line 118
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getOverlayPriority()I

    move-result v5

    iput v5, v6, Landroid/content/pm/PackageInfo;->overlayPriority:I

    .line 119
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->isOverlayIsStatic()Z

    move-result v5

    iput-boolean v5, v6, Landroid/content/pm/PackageInfo;->mOverlayIsStatic:Z

    .line 120
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getCompileSdkVersion()I

    move-result v5

    iput v5, v6, Landroid/content/pm/PackageInfo;->compileSdkVersion:I

    .line 121
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getCompileSdkVersionCodeName()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v6, Landroid/content/pm/PackageInfo;->compileSdkVersionCodename:Ljava/lang/String;

    .line 122
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->isStub()Z

    move-result v5

    iput-boolean v5, v6, Landroid/content/pm/PackageInfo;->isStub:Z

    .line 123
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->isCoreApp()Z

    move-result v5

    iput-boolean v5, v6, Landroid/content/pm/PackageInfo;->coreApp:Z

    .line 124
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->isApex()Z

    move-result v5

    iput-boolean v5, v6, Landroid/content/pm/PackageInfo;->isApex:Z

    .line 126
    const-wide/16 v8, 0x4000

    and-long/2addr v8, v2

    const-wide/16 v10, 0x0

    cmp-long v5, v8, v10

    if-eqz v5, :cond_104

    .line 127
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getConfigPreferences()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    .line 128
    if-lez v5, :cond_d6

    .line 129
    new-array v5, v5, [Landroid/content/pm/ConfigurationInfo;

    iput-object v5, v6, Landroid/content/pm/PackageInfo;->configPreferences:[Landroid/content/pm/ConfigurationInfo;

    .line 130
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getConfigPreferences()Ljava/util/List;

    move-result-object v5

    iget-object v8, v6, Landroid/content/pm/PackageInfo;->configPreferences:[Landroid/content/pm/ConfigurationInfo;

    invoke-interface {v5, v8}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 132
    :cond_d6
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedFeatures()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    .line 133
    if-lez v5, :cond_ed

    .line 134
    new-array v5, v5, [Landroid/content/pm/FeatureInfo;

    iput-object v5, v6, Landroid/content/pm/PackageInfo;->reqFeatures:[Landroid/content/pm/FeatureInfo;

    .line 135
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedFeatures()Ljava/util/List;

    move-result-object v5

    iget-object v8, v6, Landroid/content/pm/PackageInfo;->reqFeatures:[Landroid/content/pm/FeatureInfo;

    invoke-interface {v5, v8}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 137
    :cond_ed
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getFeatureGroups()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    .line 138
    if-lez v5, :cond_104

    .line 139
    new-array v5, v5, [Landroid/content/pm/FeatureGroupInfo;

    iput-object v5, v6, Landroid/content/pm/PackageInfo;->featureGroups:[Landroid/content/pm/FeatureGroupInfo;

    .line 140
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getFeatureGroups()Ljava/util/List;

    move-result-object v5

    iget-object v8, v6, Landroid/content/pm/PackageInfo;->featureGroups:[Landroid/content/pm/FeatureGroupInfo;

    invoke-interface {v5, v8}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 143
    :cond_104
    const-wide/16 v8, 0x1000

    and-long/2addr v8, v2

    cmp-long v5, v8, v10

    const/4 v8, 0x0

    if-eqz v5, :cond_193

    .line 144
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getPermissions()Ljava/util/List;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result v5

    .line 145
    if-lez v5, :cond_132

    .line 146
    new-array v9, v5, [Landroid/content/pm/PermissionInfo;

    iput-object v9, v6, Landroid/content/pm/PackageInfo;->permissions:[Landroid/content/pm/PermissionInfo;

    .line 147
    move v9, v8

    :goto_11b
    if-ge v9, v5, :cond_132

    .line 148
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getPermissions()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/pm/pkg/component/ParsedPermission;

    .line 149
    invoke-static {v12, v2, v3}, Lcom/android/internal/pm/parsing/PackageInfoCommonUtils;->generatePermissionInfo(Lcom/android/internal/pm/pkg/component/ParsedPermission;J)Landroid/content/pm/PermissionInfo;

    move-result-object v12

    .line 150
    iget-object v13, v6, Landroid/content/pm/PackageInfo;->permissions:[Landroid/content/pm/PermissionInfo;

    aput-object v12, v13, v9

    .line 147
    add-int/lit8 v9, v9, 0x1

    goto :goto_11b

    .line 153
    :cond_132
    nop

    .line 154
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getUsesPermissionMapping()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    .line 155
    invoke-interface {v5}, Ljava/util/Collection;->size()I

    move-result v9

    .line 156
    if-lez v9, :cond_193

    .line 157
    new-array v12, v9, [Ljava/lang/String;

    iput-object v12, v6, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 158
    new-array v9, v9, [I

    iput-object v9, v6, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    .line 159
    nop

    .line 160
    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v9, v8

    :goto_14f
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_193

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/pm/pkg/component/ParsedUsesPermission;

    .line 161
    iget-object v13, v6, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    invoke-interface {v12}, Lcom/android/internal/pm/pkg/component/ParsedUsesPermission;->getName()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v13, v9

    .line 163
    iget-object v13, v6, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    aget v14, v13, v9

    or-int/2addr v14, v7

    aput v14, v13, v9

    .line 165
    invoke-interface {v12}, Lcom/android/internal/pm/pkg/component/ParsedUsesPermission;->getUsesPermissionFlags()I

    move-result v12

    const/high16 v13, 0x10000

    and-int/2addr v12, v13

    if-eqz v12, :cond_17a

    .line 167
    iget-object v12, v6, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    aget v14, v12, v9

    or-int/2addr v13, v14

    aput v13, v12, v9

    .line 170
    :cond_17a
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getImplicitPermissions()Ljava/util/Set;

    move-result-object v12

    iget-object v13, v6, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    aget-object v13, v13, v9

    invoke-interface {v12, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_190

    .line 171
    iget-object v12, v6, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    aget v13, v12, v9

    or-int/lit8 v13, v13, 0x4

    aput v13, v12, v9

    .line 174
    :cond_190
    add-int/lit8 v9, v9, 0x1

    .line 175
    goto :goto_14f

    .line 178
    :cond_193
    const-wide v12, 0x80000000L

    and-long/2addr v12, v2

    cmp-long v5, v12, v10

    if-eqz v5, :cond_1e6

    .line 179
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getAttributions()Ljava/util/List;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result v5

    .line 180
    if-lez v5, :cond_1ce

    .line 181
    new-array v9, v5, [Landroid/content/pm/Attribution;

    iput-object v9, v6, Landroid/content/pm/PackageInfo;->attributions:[Landroid/content/pm/Attribution;

    .line 182
    move v9, v8

    :goto_1ac
    if-ge v9, v5, :cond_1ce

    .line 183
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getAttributions()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/pm/pkg/component/ParsedAttribution;

    .line 184
    if-eqz v12, :cond_1cb

    .line 185
    iget-object v13, v6, Landroid/content/pm/PackageInfo;->attributions:[Landroid/content/pm/Attribution;

    new-instance v14, Landroid/content/pm/Attribution;

    invoke-interface {v12}, Lcom/android/internal/pm/pkg/component/ParsedAttribution;->getTag()Ljava/lang/String;

    move-result-object v15

    .line 186
    invoke-interface {v12}, Lcom/android/internal/pm/pkg/component/ParsedAttribution;->getLabel()I

    move-result v12

    invoke-direct {v14, v15, v12}, Landroid/content/pm/Attribution;-><init>(Ljava/lang/String;I)V

    aput-object v14, v13, v9

    .line 182
    :cond_1cb
    add-int/lit8 v9, v9, 0x1

    goto :goto_1ac

    .line 190
    :cond_1ce
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->isAttributionsUserVisible()Z

    move-result v5

    if-eqz v5, :cond_1dd

    .line 191
    iget-object v5, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v5, Landroid/content/pm/ApplicationInfo;->privateFlagsExt:I

    or-int/lit8 v9, v9, 0x4

    iput v9, v5, Landroid/content/pm/ApplicationInfo;->privateFlagsExt:I

    goto :goto_1e5

    .line 194
    :cond_1dd
    iget-object v5, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v5, Landroid/content/pm/ApplicationInfo;->privateFlagsExt:I

    and-int/lit8 v9, v9, -0x5

    iput v9, v5, Landroid/content/pm/ApplicationInfo;->privateFlagsExt:I

    .line 197
    :goto_1e5
    goto :goto_1ee

    .line 198
    :cond_1e6
    iget-object v5, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v5, Landroid/content/pm/ApplicationInfo;->privateFlagsExt:I

    and-int/lit8 v9, v9, -0x5

    iput v9, v5, Landroid/content/pm/ApplicationInfo;->privateFlagsExt:I

    .line 202
    :goto_1ee
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v5

    .line 204
    const-wide/16 v12, 0x40

    and-long/2addr v12, v2

    cmp-long v9, v12, v10

    if-eqz v9, :cond_226

    .line 205
    invoke-virtual {v5}, Landroid/content/pm/SigningDetails;->hasPastSigningCertificates()Z

    move-result v9

    if-eqz v9, :cond_20e

    .line 208
    new-array v7, v7, [Landroid/content/pm/Signature;

    iput-object v7, v6, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 209
    iget-object v7, v6, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    invoke-virtual {v5}, Landroid/content/pm/SigningDetails;->getPastSigningCertificates()[Landroid/content/pm/Signature;

    move-result-object v9

    aget-object v9, v9, v8

    aput-object v9, v7, v8

    goto :goto_226

    .line 210
    :cond_20e
    invoke-virtual {v5}, Landroid/content/pm/SigningDetails;->hasSignatures()Z

    move-result v7

    if-eqz v7, :cond_226

    .line 212
    invoke-virtual {v5}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    move-result-object v7

    array-length v7, v7

    .line 213
    new-array v9, v7, [Landroid/content/pm/Signature;

    iput-object v9, v6, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 214
    invoke-virtual {v5}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    move-result-object v9

    iget-object v12, v6, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    invoke-static {v9, v8, v12, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 220
    :cond_226
    :goto_226
    const-wide/32 v12, 0x8000000

    and-long/2addr v12, v2

    cmp-long v7, v12, v10

    if-eqz v7, :cond_23c

    .line 221
    sget-object v7, Landroid/content/pm/SigningDetails;->UNKNOWN:Landroid/content/pm/SigningDetails;

    if-eq v5, v7, :cond_23a

    .line 223
    new-instance v1, Landroid/content/pm/SigningInfo;

    invoke-direct {v1, v5}, Landroid/content/pm/SigningInfo;-><init>(Landroid/content/pm/SigningDetails;)V

    iput-object v1, v6, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    goto :goto_23c

    .line 225
    :cond_23a
    iput-object v1, v6, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    .line 229
    :cond_23c
    :goto_23c
    const-wide/16 v12, 0x1

    and-long/2addr v12, v2

    cmp-long v1, v12, v10

    if-eqz v1, :cond_289

    .line 230
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getActivities()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 231
    if-lez v1, :cond_289

    .line 232
    nop

    .line 233
    new-array v5, v1, [Landroid/content/pm/ActivityInfo;

    .line 234
    move v7, v8

    move v9, v7

    :goto_252
    if-ge v7, v1, :cond_281

    .line 235
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getActivities()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/pm/pkg/component/ParsedActivity;

    .line 236
    invoke-interface {v12}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->isDirectBootAware()Z

    move-result v13

    invoke-static {v0, v13, v2, v3}, Lcom/android/internal/pm/parsing/PackageInfoCommonUtils;->isMatch(Lcom/android/server/pm/pkg/AndroidPackage;ZJ)Z

    move-result v13

    if-eqz v13, :cond_27e

    .line 237
    sget-object v13, Landroid/content/pm/PackageManager;->APP_DETAILS_ACTIVITY_CLASS_NAME:Ljava/lang/String;

    .line 238
    invoke-interface {v12}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getName()Ljava/lang/String;

    move-result-object v14

    .line 237
    invoke-virtual {v13, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_275

    .line 239
    goto :goto_27e

    .line 241
    :cond_275
    add-int/lit8 v13, v9, 0x1

    invoke-static {v12, v2, v3, v4}, Lcom/android/internal/pm/parsing/PackageInfoCommonUtils;->generateActivityInfo(Lcom/android/internal/pm/pkg/component/ParsedActivity;JLandroid/content/pm/ApplicationInfo;)Landroid/content/pm/ActivityInfo;

    move-result-object v12

    aput-object v12, v5, v9

    move v9, v13

    .line 234
    :cond_27e
    :goto_27e
    add-int/lit8 v7, v7, 0x1

    goto :goto_252

    .line 244
    :cond_281
    invoke-static {v5, v9}, Lcom/android/internal/util/ArrayUtils;->trimToSize([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/content/pm/ActivityInfo;

    iput-object v1, v6, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    .line 247
    :cond_289
    const-wide/16 v12, 0x2

    and-long/2addr v12, v2

    cmp-long v1, v12, v10

    if-eqz v1, :cond_2c9

    .line 248
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getReceivers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 249
    if-lez v1, :cond_2c9

    .line 250
    nop

    .line 251
    new-array v5, v1, [Landroid/content/pm/ActivityInfo;

    .line 252
    move v7, v8

    move v9, v7

    :goto_29f
    if-ge v7, v1, :cond_2c1

    .line 253
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getReceivers()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/pm/pkg/component/ParsedActivity;

    .line 254
    invoke-interface {v12}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->isDirectBootAware()Z

    move-result v13

    invoke-static {v0, v13, v2, v3}, Lcom/android/internal/pm/parsing/PackageInfoCommonUtils;->isMatch(Lcom/android/server/pm/pkg/AndroidPackage;ZJ)Z

    move-result v13

    if-eqz v13, :cond_2be

    .line 255
    add-int/lit8 v13, v9, 0x1

    invoke-static {v12, v2, v3, v4}, Lcom/android/internal/pm/parsing/PackageInfoCommonUtils;->generateActivityInfo(Lcom/android/internal/pm/pkg/component/ParsedActivity;JLandroid/content/pm/ApplicationInfo;)Landroid/content/pm/ActivityInfo;

    move-result-object v12

    aput-object v12, v5, v9

    move v9, v13

    .line 252
    :cond_2be
    add-int/lit8 v7, v7, 0x1

    goto :goto_29f

    .line 258
    :cond_2c1
    invoke-static {v5, v9}, Lcom/android/internal/util/ArrayUtils;->trimToSize([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/content/pm/ActivityInfo;

    iput-object v1, v6, Landroid/content/pm/PackageInfo;->receivers:[Landroid/content/pm/ActivityInfo;

    .line 261
    :cond_2c9
    const-wide/16 v12, 0x4

    and-long/2addr v12, v2

    cmp-long v1, v12, v10

    if-eqz v1, :cond_309

    .line 262
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getServices()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 263
    if-lez v1, :cond_309

    .line 264
    nop

    .line 265
    new-array v5, v1, [Landroid/content/pm/ServiceInfo;

    .line 266
    move v7, v8

    move v9, v7

    :goto_2df
    if-ge v7, v1, :cond_301

    .line 267
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getServices()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/pm/pkg/component/ParsedService;

    .line 268
    invoke-interface {v12}, Lcom/android/internal/pm/pkg/component/ParsedService;->isDirectBootAware()Z

    move-result v13

    invoke-static {v0, v13, v2, v3}, Lcom/android/internal/pm/parsing/PackageInfoCommonUtils;->isMatch(Lcom/android/server/pm/pkg/AndroidPackage;ZJ)Z

    move-result v13

    if-eqz v13, :cond_2fe

    .line 269
    add-int/lit8 v13, v9, 0x1

    invoke-static {v12, v2, v3, v4}, Lcom/android/internal/pm/parsing/PackageInfoCommonUtils;->generateServiceInfo(Lcom/android/internal/pm/pkg/component/ParsedService;JLandroid/content/pm/ApplicationInfo;)Landroid/content/pm/ServiceInfo;

    move-result-object v12

    aput-object v12, v5, v9

    move v9, v13

    .line 266
    :cond_2fe
    add-int/lit8 v7, v7, 0x1

    goto :goto_2df

    .line 272
    :cond_301
    invoke-static {v5, v9}, Lcom/android/internal/util/ArrayUtils;->trimToSize([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/content/pm/ServiceInfo;

    iput-object v1, v6, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    .line 275
    :cond_309
    const-wide/16 v12, 0x8

    and-long/2addr v12, v2

    cmp-long v1, v12, v10

    if-eqz v1, :cond_34b

    .line 276
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getProviders()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    .line 277
    if-lez v7, :cond_34b

    .line 278
    nop

    .line 279
    new-array v9, v7, [Landroid/content/pm/ProviderInfo;

    .line 280
    move v12, v8

    move v13, v12

    :goto_31f
    if-ge v12, v7, :cond_343

    .line 281
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getProviders()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/pm/pkg/component/ParsedProvider;

    .line 282
    invoke-interface {v1}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->isDirectBootAware()Z

    move-result v5

    invoke-static {v0, v5, v2, v3}, Lcom/android/internal/pm/parsing/PackageInfoCommonUtils;->isMatch(Lcom/android/server/pm/pkg/AndroidPackage;ZJ)Z

    move-result v5

    if-eqz v5, :cond_340

    .line 283
    add-int/lit8 v14, v13, 0x1

    move/from16 v5, p3

    invoke-static/range {v0 .. v5}, Lcom/android/internal/pm/parsing/PackageInfoCommonUtils;->generateProviderInfo(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/internal/pm/pkg/component/ParsedProvider;JLandroid/content/pm/ApplicationInfo;I)Landroid/content/pm/ProviderInfo;

    move-result-object v1

    aput-object v1, v9, v13

    move v13, v14

    .line 280
    :cond_340
    add-int/lit8 v12, v12, 0x1

    goto :goto_31f

    .line 286
    :cond_343
    invoke-static {v9, v13}, Lcom/android/internal/util/ArrayUtils;->trimToSize([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/content/pm/ProviderInfo;

    iput-object v1, v6, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    .line 289
    :cond_34b
    const-wide/16 v4, 0x10

    and-long/2addr v4, v2

    cmp-long v1, v4, v10

    if-eqz v1, :cond_37a

    .line 290
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getInstrumentations()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 291
    if-lez v1, :cond_37a

    .line 292
    new-array v4, v1, [Landroid/content/pm/InstrumentationInfo;

    iput-object v4, v6, Landroid/content/pm/PackageInfo;->instrumentation:[Landroid/content/pm/InstrumentationInfo;

    .line 293
    nop

    :goto_361
    if-ge v8, v1, :cond_37a

    .line 294
    iget-object v4, v6, Landroid/content/pm/PackageInfo;->instrumentation:[Landroid/content/pm/InstrumentationInfo;

    .line 295
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getInstrumentations()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/pm/pkg/component/ParsedInstrumentation;

    .line 294
    move/from16 v7, p3

    invoke-static {v5, v0, v2, v3, v7}, Lcom/android/internal/pm/parsing/PackageInfoCommonUtils;->generateInstrumentationInfo(Lcom/android/internal/pm/pkg/component/ParsedInstrumentation;Lcom/android/server/pm/pkg/AndroidPackage;JI)Landroid/content/pm/InstrumentationInfo;

    move-result-object v5

    aput-object v5, v4, v8

    .line 293
    add-int/lit8 v8, v8, 0x1

    goto :goto_361

    .line 300
    :cond_37a
    return-object v6
.end method

.method private static blacklist generateActivityInfo(Lcom/android/internal/pm/pkg/component/ParsedActivity;JLandroid/content/pm/ApplicationInfo;)Landroid/content/pm/ActivityInfo;
    .registers 8

    .line 354
    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 357
    :cond_4
    new-instance v1, Landroid/content/pm/ActivityInfo;

    invoke-direct {v1}, Landroid/content/pm/ActivityInfo;-><init>()V

    .line 358
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getTargetActivity()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    .line 359
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getProcessName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    .line 360
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->isExported()Z

    move-result v2

    iput-boolean v2, v1, Landroid/content/pm/ActivityInfo;->exported:Z

    .line 361
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getTheme()I

    move-result v2

    iput v2, v1, Landroid/content/pm/ActivityInfo;->theme:I

    .line 362
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getUiOptions()I

    move-result v2

    iput v2, v1, Landroid/content/pm/ActivityInfo;->uiOptions:I

    .line 363
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getParentActivityName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/content/pm/ActivityInfo;->parentActivityName:Ljava/lang/String;

    .line 364
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getPermission()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    .line 365
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getTaskAffinity()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    .line 366
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getFlags()I

    move-result v2

    iput v2, v1, Landroid/content/pm/ActivityInfo;->flags:I

    .line 367
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getPrivateFlags()I

    move-result v2

    iput v2, v1, Landroid/content/pm/ActivityInfo;->privateFlags:I

    .line 368
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getLaunchMode()I

    move-result v2

    iput v2, v1, Landroid/content/pm/ActivityInfo;->launchMode:I

    .line 369
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getDocumentLaunchMode()I

    move-result v2

    iput v2, v1, Landroid/content/pm/ActivityInfo;->documentLaunchMode:I

    .line 370
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getMaxRecents()I

    move-result v2

    iput v2, v1, Landroid/content/pm/ActivityInfo;->maxRecents:I

    .line 371
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getConfigChanges()I

    move-result v2

    iput v2, v1, Landroid/content/pm/ActivityInfo;->configChanges:I

    .line 372
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getSoftInputMode()I

    move-result v2

    iput v2, v1, Landroid/content/pm/ActivityInfo;->softInputMode:I

    .line 373
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getPersistableMode()I

    move-result v2

    iput v2, v1, Landroid/content/pm/ActivityInfo;->persistableMode:I

    .line 374
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getLockTaskLaunchMode()I

    move-result v2

    iput v2, v1, Landroid/content/pm/ActivityInfo;->lockTaskLaunchMode:I

    .line 375
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getScreenOrientation()I

    move-result v2

    iput v2, v1, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    .line 376
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getResizeMode()I

    move-result v2

    iput v2, v1, Landroid/content/pm/ActivityInfo;->resizeMode:I

    .line 377
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getMaxAspectRatio()F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/pm/ActivityInfo;->setMaxAspectRatio(F)V

    .line 378
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getMinAspectRatio()F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/pm/ActivityInfo;->setMinAspectRatio(F)V

    .line 379
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->isSupportsSizeChanges()Z

    move-result v2

    iput-boolean v2, v1, Landroid/content/pm/ActivityInfo;->supportsSizeChanges:Z

    .line 380
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getRequestedVrComponent()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/content/pm/ActivityInfo;->requestedVrComponent:Ljava/lang/String;

    .line 381
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getRotationAnimation()I

    move-result v2

    iput v2, v1, Landroid/content/pm/ActivityInfo;->rotationAnimation:I

    .line 382
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getColorMode()I

    move-result v2

    iput v2, v1, Landroid/content/pm/ActivityInfo;->colorMode:I

    .line 383
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getWindowLayout()Landroid/content/pm/ActivityInfo$WindowLayout;

    move-result-object v2

    iput-object v2, v1, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    .line 384
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getAttributionTags()[Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/content/pm/ActivityInfo;->attributionTags:[Ljava/lang/String;

    .line 385
    const-wide/16 v2, 0x80

    and-long/2addr p1, v2

    const-wide/16 v2, 0x0

    cmp-long p1, p1, v2

    if-eqz p1, :cond_c5

    .line 386
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getMetaData()Landroid/os/Bundle;

    move-result-object p1

    .line 388
    invoke-virtual {p1}, Landroid/os/Bundle;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_c1

    goto :goto_c2

    :cond_c1
    move-object v0, p1

    :goto_c2
    iput-object v0, v1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 389
    goto :goto_c7

    .line 390
    :cond_c5
    iput-object v0, v1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 392
    :goto_c7
    iput-object p3, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 393
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getRequiredDisplayCategory()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Landroid/content/pm/ActivityInfo;->requiredDisplayCategory:Ljava/lang/String;

    .line 394
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getKnownActivityEmbeddingCerts()Ljava/util/Set;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/content/pm/ActivityInfo;->setKnownActivityEmbeddingCerts(Ljava/util/Set;)V

    .line 395
    invoke-static {v1, p0}, Lcom/android/internal/pm/parsing/PackageInfoCommonUtils;->assignFieldsComponentInfoParsedMainComponent(Landroid/content/pm/ComponentInfo;Lcom/android/internal/pm/pkg/component/ParsedMainComponent;)V

    .line 396
    return-object v1
.end method

.method private static blacklist generateApplicationInfo(Lcom/android/server/pm/pkg/AndroidPackage;JI)Landroid/content/pm/ApplicationInfo;
    .registers 9

    .line 328
    move-object v0, p0

    check-cast v0, Lcom/android/internal/pm/parsing/pkg/AndroidPackageHidden;

    invoke-interface {v0}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageHidden;->toAppInfoWithoutState()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 330
    invoke-static {v0, p1, p2}, Lcom/android/internal/pm/parsing/PackageInfoCommonUtils;->updateApplicationInfo(Landroid/content/pm/ApplicationInfo;J)V

    .line 332
    invoke-static {v0, p0, p3}, Lcom/android/internal/pm/parsing/PackageInfoCommonUtils;->initForUser(Landroid/content/pm/ApplicationInfo;Lcom/android/server/pm/pkg/AndroidPackage;I)V

    .line 334
    invoke-static {p0}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageLegacyUtils;->getRawPrimaryCpuAbi(Lcom/android/server/pm/pkg/AndroidPackage;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, v0, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    .line 335
    invoke-static {p0}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageLegacyUtils;->getRawSecondaryCpuAbi(Lcom/android/server/pm/pkg/AndroidPackage;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, v0, Landroid/content/pm/ApplicationInfo;->secondaryCpuAbi:Ljava/lang/String;

    .line 337
    const-wide/16 v1, 0x80

    and-long/2addr v1, p1

    const-wide/16 v3, 0x0

    cmp-long p3, v1, v3

    if-eqz p3, :cond_28

    .line 338
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getMetaData()Landroid/os/Bundle;

    move-result-object p3

    iput-object p3, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 340
    :cond_28
    const-wide/16 v1, 0x400

    and-long/2addr p1, v1

    cmp-long p1, p1, v3

    if-eqz p1, :cond_46

    .line 341
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getUsesLibraries()Ljava/util/List;

    move-result-object p0

    .line 343
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3b

    .line 344
    const/4 p0, 0x0

    goto :goto_44

    :cond_3b
    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/String;

    invoke-interface {p0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    :goto_44
    iput-object p0, v0, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    .line 347
    :cond_46
    return-object v0
.end method

.method private static blacklist generateInstrumentationInfo(Lcom/android/internal/pm/pkg/component/ParsedInstrumentation;Lcom/android/server/pm/pkg/AndroidPackage;JI)Landroid/content/pm/InstrumentationInfo;
    .registers 9

    .line 465
    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 467
    :cond_4
    new-instance v1, Landroid/content/pm/InstrumentationInfo;

    invoke-direct {v1}, Landroid/content/pm/InstrumentationInfo;-><init>()V

    .line 468
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedInstrumentation;->getTargetPackage()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/content/pm/InstrumentationInfo;->targetPackage:Ljava/lang/String;

    .line 469
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedInstrumentation;->getTargetProcesses()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/content/pm/InstrumentationInfo;->targetProcesses:Ljava/lang/String;

    .line 470
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedInstrumentation;->isHandleProfiling()Z

    move-result v2

    iput-boolean v2, v1, Landroid/content/pm/InstrumentationInfo;->handleProfiling:Z

    .line 471
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedInstrumentation;->isFunctionalTest()Z

    move-result v2

    iput-boolean v2, v1, Landroid/content/pm/InstrumentationInfo;->functionalTest:Z

    .line 473
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getBaseApkPath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/content/pm/InstrumentationInfo;->sourceDir:Ljava/lang/String;

    .line 474
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getBaseApkPath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/content/pm/InstrumentationInfo;->publicSourceDir:Ljava/lang/String;

    .line 475
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getSplitNames()[Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/content/pm/InstrumentationInfo;->splitNames:[Ljava/lang/String;

    .line 476
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getSplitCodePaths()[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    if-nez v2, :cond_3c

    move-object v2, v0

    goto :goto_40

    :cond_3c
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getSplitCodePaths()[Ljava/lang/String;

    move-result-object v2

    :goto_40
    iput-object v2, v1, Landroid/content/pm/InstrumentationInfo;->splitSourceDirs:[Ljava/lang/String;

    .line 477
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getSplitCodePaths()[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    if-nez v2, :cond_4b

    .line 478
    move-object v2, v0

    goto :goto_4f

    :cond_4b
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getSplitCodePaths()[Ljava/lang/String;

    move-result-object v2

    :goto_4f
    iput-object v2, v1, Landroid/content/pm/InstrumentationInfo;->splitPublicSourceDirs:[Ljava/lang/String;

    .line 479
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getSplitDependencies()Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-nez v2, :cond_5d

    .line 480
    move-object v2, v0

    goto :goto_61

    :cond_5d
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getSplitDependencies()Landroid/util/SparseArray;

    move-result-object v2

    :goto_61
    iput-object v2, v1, Landroid/content/pm/InstrumentationInfo;->splitDependencies:Landroid/util/SparseArray;

    .line 482
    invoke-static {v1, p1, p4}, Lcom/android/internal/pm/parsing/PackageInfoCommonUtils;->initForUser(Landroid/content/pm/InstrumentationInfo;Lcom/android/server/pm/pkg/AndroidPackage;I)V

    .line 484
    invoke-static {p1}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageLegacyUtils;->getRawPrimaryCpuAbi(Lcom/android/server/pm/pkg/AndroidPackage;)Ljava/lang/String;

    move-result-object p4

    iput-object p4, v1, Landroid/content/pm/InstrumentationInfo;->primaryCpuAbi:Ljava/lang/String;

    .line 485
    invoke-static {p1}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageLegacyUtils;->getRawSecondaryCpuAbi(Lcom/android/server/pm/pkg/AndroidPackage;)Ljava/lang/String;

    move-result-object p4

    iput-object p4, v1, Landroid/content/pm/InstrumentationInfo;->secondaryCpuAbi:Ljava/lang/String;

    .line 486
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getNativeLibraryDir()Ljava/lang/String;

    move-result-object p4

    iput-object p4, v1, Landroid/content/pm/InstrumentationInfo;->nativeLibraryDir:Ljava/lang/String;

    .line 487
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getSecondaryNativeLibraryDir()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Landroid/content/pm/InstrumentationInfo;->secondaryNativeLibraryDir:Ljava/lang/String;

    .line 489
    invoke-static {v1, p0}, Lcom/android/internal/pm/parsing/PackageInfoCommonUtils;->assignFieldsPackageItemInfoParsedComponent(Landroid/content/pm/PackageItemInfo;Lcom/android/internal/pm/pkg/component/ParsedComponent;)V

    .line 491
    const-wide/16 v2, 0x80

    and-long p1, p2, v2

    const-wide/16 p3, 0x0

    cmp-long p1, p1, p3

    if-nez p1, :cond_8e

    .line 492
    iput-object v0, v1, Landroid/content/pm/InstrumentationInfo;->metaData:Landroid/os/Bundle;

    goto :goto_9c

    .line 494
    :cond_8e
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedInstrumentation;->getMetaData()Landroid/os/Bundle;

    move-result-object p0

    .line 496
    invoke-virtual {p0}, Landroid/os/Bundle;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_99

    goto :goto_9a

    :cond_99
    move-object v0, p0

    :goto_9a
    iput-object v0, v1, Landroid/content/pm/InstrumentationInfo;->metaData:Landroid/os/Bundle;

    .line 499
    :goto_9c
    return-object v1
.end method

.method private static blacklist generatePermissionInfo(Lcom/android/internal/pm/pkg/component/ParsedPermission;J)Landroid/content/pm/PermissionInfo;
    .registers 11

    .line 506
    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 508
    :cond_4
    new-instance v1, Landroid/content/pm/PermissionInfo;

    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getBackgroundPermission()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/pm/PermissionInfo;-><init>(Ljava/lang/String;)V

    .line 510
    invoke-static {v1, p0}, Lcom/android/internal/pm/parsing/PackageInfoCommonUtils;->assignFieldsPackageItemInfoParsedComponent(Landroid/content/pm/PackageItemInfo;Lcom/android/internal/pm/pkg/component/ParsedComponent;)V

    .line 512
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getGroup()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    .line 513
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getRequestRes()I

    move-result v2

    iput v2, v1, Landroid/content/pm/PermissionInfo;->requestRes:I

    .line 514
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getProtectionLevel()I

    move-result v2

    iput v2, v1, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    .line 515
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getDescriptionRes()I

    move-result v2

    iput v2, v1, Landroid/content/pm/PermissionInfo;->descriptionRes:I

    .line 516
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getFlags()I

    move-result v2

    iput v2, v1, Landroid/content/pm/PermissionInfo;->flags:I

    .line 517
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getKnownCerts()Ljava/util/Set;

    move-result-object v2

    iput-object v2, v1, Landroid/content/pm/PermissionInfo;->knownCerts:Ljava/util/Set;

    .line 518
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->isPurposeRequired()Z

    move-result v2

    iput-boolean v2, v1, Landroid/content/pm/PermissionInfo;->requiresPurpose:Z

    .line 519
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getRequiresPurposeTargetSdkVersion()I

    move-result v2

    iput v2, v1, Landroid/content/pm/PermissionInfo;->requiresPurposeTargetSdkVersion:I

    .line 520
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getValidPurposes()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_48
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_70

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/pm/pkg/component/ParsedValidPurpose;

    .line 521
    if-eqz v3, :cond_6f

    .line 522
    iget-object v4, v1, Landroid/content/pm/PermissionInfo;->validPurposes:Ljava/util/Map;

    .line 523
    invoke-interface {v3}, Lcom/android/internal/pm/pkg/component/ParsedValidPurpose;->getName()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Landroid/content/pm/ValidPurposeInfo;

    .line 525
    invoke-interface {v3}, Lcom/android/internal/pm/pkg/component/ParsedValidPurpose;->getName()Ljava/lang/String;

    move-result-object v7

    .line 526
    invoke-interface {v3}, Lcom/android/internal/pm/pkg/component/ParsedValidPurpose;->getMaxTargetSdkVersion()I

    move-result v3

    invoke-direct {v6, v7, v3}, Landroid/content/pm/ValidPurposeInfo;-><init>(Ljava/lang/String;I)V

    .line 523
    invoke-static {v4, v5, v6}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v3

    iput-object v3, v1, Landroid/content/pm/PermissionInfo;->validPurposes:Ljava/util/Map;

    .line 528
    :cond_6f
    goto :goto_48

    .line 530
    :cond_70
    const-wide/16 v2, 0x80

    and-long/2addr p1, v2

    const-wide/16 v2, 0x0

    cmp-long p1, p1, v2

    if-nez p1, :cond_7c

    .line 531
    iput-object v0, v1, Landroid/content/pm/PermissionInfo;->metaData:Landroid/os/Bundle;

    goto :goto_8a

    .line 533
    :cond_7c
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getMetaData()Landroid/os/Bundle;

    move-result-object p0

    .line 535
    invoke-virtual {p0}, Landroid/os/Bundle;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_87

    goto :goto_88

    :cond_87
    move-object v0, p0

    :goto_88
    iput-object v0, v1, Landroid/content/pm/PermissionInfo;->metaData:Landroid/os/Bundle;

    .line 537
    :goto_8a
    return-object v1
.end method

.method private static blacklist generateProviderInfo(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/internal/pm/pkg/component/ParsedProvider;JLandroid/content/pm/ApplicationInfo;I)Landroid/content/pm/ProviderInfo;
    .registers 11

    .line 426
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    .line 428
    :cond_4
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3c

    .line 429
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AppInfo\'s package name is different. Expected="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " actual="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object p4, p4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    const-string v1, "PackageParsing"

    invoke-static {v1, p4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    invoke-static {p0, p2, p3, p5}, Lcom/android/internal/pm/parsing/PackageInfoCommonUtils;->generateApplicationInfo(Lcom/android/server/pm/pkg/AndroidPackage;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object p4

    .line 435
    :cond_3c
    new-instance p0, Landroid/content/pm/ProviderInfo;

    invoke-direct {p0}, Landroid/content/pm/ProviderInfo;-><init>()V

    .line 436
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->isExported()Z

    move-result p5

    iput-boolean p5, p0, Landroid/content/pm/ProviderInfo;->exported:Z

    .line 437
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->getFlags()I

    move-result p5

    iput p5, p0, Landroid/content/pm/ProviderInfo;->flags:I

    .line 438
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->getProcessName()Ljava/lang/String;

    move-result-object p5

    iput-object p5, p0, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    .line 439
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->getAuthority()Ljava/lang/String;

    move-result-object p5

    iput-object p5, p0, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    .line 440
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->isSyncable()Z

    move-result p5

    iput-boolean p5, p0, Landroid/content/pm/ProviderInfo;->isSyncable:Z

    .line 441
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->getReadPermission()Ljava/lang/String;

    move-result-object p5

    iput-object p5, p0, Landroid/content/pm/ProviderInfo;->readPermission:Ljava/lang/String;

    .line 442
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->getWritePermission()Ljava/lang/String;

    move-result-object p5

    iput-object p5, p0, Landroid/content/pm/ProviderInfo;->writePermission:Ljava/lang/String;

    .line 443
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->isGrantUriPermissions()Z

    move-result p5

    iput-boolean p5, p0, Landroid/content/pm/ProviderInfo;->grantUriPermissions:Z

    .line 444
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->isForceUriPermissions()Z

    move-result p5

    iput-boolean p5, p0, Landroid/content/pm/ProviderInfo;->forceUriPermissions:Z

    .line 445
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->isMultiProcess()Z

    move-result p5

    iput-boolean p5, p0, Landroid/content/pm/ProviderInfo;->multiprocess:Z

    .line 446
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->getInitOrder()I

    move-result p5

    iput p5, p0, Landroid/content/pm/ProviderInfo;->initOrder:I

    .line 447
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->getUriPermissionPatterns()Ljava/util/List;

    move-result-object p5

    const/4 v1, 0x0

    new-array v2, v1, [Landroid/os/PatternMatcher;

    invoke-interface {p5, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p5

    check-cast p5, [Landroid/os/PatternMatcher;

    iput-object p5, p0, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    .line 448
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->getPathPermissions()Ljava/util/List;

    move-result-object p5

    new-array v1, v1, [Landroid/content/pm/PathPermission;

    invoke-interface {p5, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p5

    check-cast p5, [Landroid/content/pm/PathPermission;

    iput-object p5, p0, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    .line 449
    const-wide/16 v1, 0x800

    and-long/2addr v1, p2

    const-wide/16 v3, 0x0

    cmp-long p5, v1, v3

    if-nez p5, :cond_ab

    .line 450
    iput-object v0, p0, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    .line 452
    :cond_ab
    const-wide/16 v1, 0x80

    and-long/2addr p2, v1

    cmp-long p2, p2, v3

    if-eqz p2, :cond_c0

    .line 453
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->getMetaData()Landroid/os/Bundle;

    move-result-object p2

    .line 455
    invoke-virtual {p2}, Landroid/os/Bundle;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_bd

    goto :goto_be

    :cond_bd
    move-object v0, p2

    :goto_be
    iput-object v0, p0, Landroid/content/pm/ProviderInfo;->metaData:Landroid/os/Bundle;

    .line 457
    :cond_c0
    iput-object p4, p0, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 458
    invoke-static {p0, p1}, Lcom/android/internal/pm/parsing/PackageInfoCommonUtils;->assignFieldsComponentInfoParsedMainComponent(Landroid/content/pm/ComponentInfo;Lcom/android/internal/pm/pkg/component/ParsedMainComponent;)V

    .line 459
    return-object p0
.end method

.method private static blacklist generateServiceInfo(Lcom/android/internal/pm/pkg/component/ParsedService;JLandroid/content/pm/ApplicationInfo;)Landroid/content/pm/ServiceInfo;
    .registers 8

    .line 403
    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 406
    :cond_4
    new-instance v1, Landroid/content/pm/ServiceInfo;

    invoke-direct {v1}, Landroid/content/pm/ServiceInfo;-><init>()V

    .line 407
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedService;->isExported()Z

    move-result v2

    iput-boolean v2, v1, Landroid/content/pm/ServiceInfo;->exported:Z

    .line 408
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedService;->getFlags()I

    move-result v2

    iput v2, v1, Landroid/content/pm/ServiceInfo;->flags:I

    .line 409
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedService;->getPermission()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    .line 410
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedService;->getProcessName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    .line 411
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedService;->getForegroundServiceType()I

    move-result v2

    iput v2, v1, Landroid/content/pm/ServiceInfo;->mForegroundServiceType:I

    .line 412
    iput-object p3, v1, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 413
    const-wide/16 v2, 0x80

    and-long/2addr p1, v2

    const-wide/16 v2, 0x0

    cmp-long p1, p1, v2

    if-eqz p1, :cond_40

    .line 414
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedService;->getMetaData()Landroid/os/Bundle;

    move-result-object p1

    .line 416
    invoke-virtual {p1}, Landroid/os/Bundle;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_3d

    goto :goto_3e

    :cond_3d
    move-object v0, p1

    :goto_3e
    iput-object v0, v1, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    .line 418
    :cond_40
    invoke-static {v1, p0}, Lcom/android/internal/pm/parsing/PackageInfoCommonUtils;->assignFieldsComponentInfoParsedMainComponent(Landroid/content/pm/ComponentInfo;Lcom/android/internal/pm/pkg/component/ParsedMainComponent;)V

    .line 419
    return-object v1
.end method

.method private static blacklist initForUser(Landroid/content/pm/ApplicationInfo;Lcom/android/server/pm/pkg/AndroidPackage;I)V
    .registers 8

    .line 565
    move-object v0, p1

    check-cast v0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    .line 566
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 567
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getUid()I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    invoke-static {p2, v2}, Landroid/os/UserHandle;->getUid(II)I

    move-result v2

    iput v2, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 570
    invoke-virtual {v0}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBaseAppDataCredentialProtectedDirForSystemUser()Ljava/lang/String;

    move-result-object v2

    .line 571
    invoke-virtual {v0}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBaseAppDataDeviceProtectedDirForSystemUser()Ljava/lang/String;

    move-result-object v0

    .line 572
    if-eqz v2, :cond_84

    if-eqz v0, :cond_84

    .line 573
    if-nez p2, :cond_4a

    .line 574
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Landroid/content/pm/ApplicationInfo;->credentialProtectedDataDir:Ljava/lang/String;

    .line 575
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Landroid/content/pm/ApplicationInfo;->deviceProtectedDataDir:Ljava/lang/String;

    goto :goto_84

    .line 578
    :cond_4a
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    .line 579
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    .line 580
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v2, v3, -0x2

    add-int/lit8 v3, v3, -0x1

    .line 581
    invoke-virtual {v4, v2, v3, p2}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 582
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 583
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/content/pm/ApplicationInfo;->credentialProtectedDataDir:Ljava/lang/String;

    .line 584
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    .line 585
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v0, v2, -0x2

    add-int/lit8 v2, v2, -0x1

    .line 586
    invoke-virtual {v3, v0, v2, p2}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 587
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 588
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Landroid/content/pm/ApplicationInfo;->deviceProtectedDataDir:Ljava/lang/String;

    .line 592
    :cond_84
    :goto_84
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->isDefaultToDeviceProtectedStorage()Z

    move-result p1

    if-eqz p1, :cond_8f

    .line 594
    iget-object p1, p0, Landroid/content/pm/ApplicationInfo;->deviceProtectedDataDir:Ljava/lang/String;

    iput-object p1, p0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    goto :goto_93

    .line 596
    :cond_8f
    iget-object p1, p0, Landroid/content/pm/ApplicationInfo;->credentialProtectedDataDir:Ljava/lang/String;

    iput-object p1, p0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    .line 598
    :goto_93
    return-void
.end method

.method private static blacklist initForUser(Landroid/content/pm/InstrumentationInfo;Lcom/android/server/pm/pkg/AndroidPackage;I)V
    .registers 8

    .line 604
    move-object v0, p1

    check-cast v0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    .line 605
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 608
    invoke-virtual {v0}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBaseAppDataCredentialProtectedDirForSystemUser()Ljava/lang/String;

    move-result-object v2

    .line 609
    invoke-virtual {v0}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBaseAppDataDeviceProtectedDirForSystemUser()Ljava/lang/String;

    move-result-object v0

    .line 610
    if-eqz v2, :cond_76

    if-eqz v0, :cond_76

    .line 611
    if-nez p2, :cond_3c

    .line 612
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Landroid/content/pm/InstrumentationInfo;->credentialProtectedDataDir:Ljava/lang/String;

    .line 613
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Landroid/content/pm/InstrumentationInfo;->deviceProtectedDataDir:Ljava/lang/String;

    goto :goto_76

    .line 616
    :cond_3c
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    .line 617
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    .line 618
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v2, v3, -0x2

    add-int/lit8 v3, v3, -0x1

    .line 619
    invoke-virtual {v4, v2, v3, p2}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 620
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 621
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/content/pm/InstrumentationInfo;->credentialProtectedDataDir:Ljava/lang/String;

    .line 622
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    .line 623
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v0, v2, -0x2

    add-int/lit8 v2, v2, -0x1

    .line 624
    invoke-virtual {v3, v0, v2, p2}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 625
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 626
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Landroid/content/pm/InstrumentationInfo;->deviceProtectedDataDir:Ljava/lang/String;

    .line 630
    :cond_76
    :goto_76
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->isDefaultToDeviceProtectedStorage()Z

    move-result p1

    if-eqz p1, :cond_81

    .line 632
    iget-object p1, p0, Landroid/content/pm/InstrumentationInfo;->deviceProtectedDataDir:Ljava/lang/String;

    iput-object p1, p0, Landroid/content/pm/InstrumentationInfo;->dataDir:Ljava/lang/String;

    goto :goto_85

    .line 634
    :cond_81
    iget-object p1, p0, Landroid/content/pm/InstrumentationInfo;->credentialProtectedDataDir:Ljava/lang/String;

    iput-object p1, p0, Landroid/content/pm/InstrumentationInfo;->dataDir:Ljava/lang/String;

    .line 636
    :goto_85
    return-void
.end method

.method private static blacklist isMatch(Lcom/android/server/pm/pkg/AndroidPackage;ZJ)Z
    .registers 10

    .line 649
    check-cast p0, Lcom/android/internal/pm/parsing/pkg/AndroidPackageHidden;

    invoke-interface {p0}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageHidden;->isSystem()Z

    move-result p0

    .line 650
    const-wide/32 v0, 0x100000

    and-long/2addr v0, p2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-eqz v0, :cond_18

    .line 651
    if-nez p0, :cond_18

    .line 652
    invoke-static {v1, p2, p3}, Lcom/android/internal/pm/parsing/PackageInfoCommonUtils;->reportIfDebug(ZJ)Z

    move-result p0

    return p0

    .line 656
    :cond_18
    const-wide/32 v4, 0x40000

    and-long/2addr v4, p2

    cmp-long p0, v4, v2

    const/4 v0, 0x1

    if-eqz p0, :cond_25

    if-nez p1, :cond_25

    move p0, v0

    goto :goto_26

    :cond_25
    move p0, v1

    .line 658
    :goto_26
    const-wide/32 v4, 0x80000

    and-long/2addr v4, p2

    cmp-long v2, v4, v2

    if-eqz v2, :cond_32

    if-eqz p1, :cond_32

    move p1, v0

    goto :goto_33

    :cond_32
    move p1, v1

    .line 660
    :goto_33
    if-nez p0, :cond_37

    if-eqz p1, :cond_38

    :cond_37
    move v1, v0

    :cond_38
    invoke-static {v1, p2, p3}, Lcom/android/internal/pm/parsing/PackageInfoCommonUtils;->reportIfDebug(ZJ)Z

    move-result p0

    return p0
.end method

.method private static blacklist reportIfDebug(ZJ)Z
    .registers 3

    .line 669
    return p0
.end method

.method private static blacklist updateApplicationInfo(Landroid/content/pm/ApplicationInfo;J)V
    .registers 9

    .line 304
    const-wide/16 v0, 0x80

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-nez v0, :cond_c

    .line 305
    iput-object v1, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 307
    :cond_c
    const-wide/16 v4, 0x400

    and-long/2addr p1, v4

    cmp-long p1, p1, v2

    if-nez p1, :cond_17

    .line 308
    iput-object v1, p0, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    .line 309
    iput-object v1, p0, Landroid/content/pm/ApplicationInfo;->sharedLibraryInfos:Ljava/util/List;

    .line 313
    :cond_17
    sget-boolean p1, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->sCompatibilityModeEnabled:Z

    if-nez p1, :cond_1e

    .line 314
    invoke-virtual {p0}, Landroid/content/pm/ApplicationInfo;->disableCompatibilityMode()V

    .line 317
    :cond_1e
    iget p1, p0, Landroid/content/pm/ApplicationInfo;->category:I

    const/4 p2, -0x1

    if-ne p1, p2, :cond_2b

    .line 318
    iget-object p1, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {p1}, Landroid/content/pm/FallbackCategoryProvider;->getFallbackCategory(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Landroid/content/pm/ApplicationInfo;->category:I

    .line 320
    :cond_2b
    const-string p1, ":complete"

    iput-object p1, p0, Landroid/content/pm/ApplicationInfo;->seInfoUser:Ljava/lang/String;

    .line 321
    return-void
.end method
