.class public Lcom/android/internal/pm/parsing/pkg/PackageImpl;
.super Ljava/lang/Object;
.source "PackageImpl.java"

# interfaces
.implements Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
.implements Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;
.implements Lcom/android/internal/pm/parsing/pkg/AndroidPackageHidden;
.implements Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
.implements Lcom/android/internal/pm/pkg/parsing/ParsingPackageHidden;
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/pm/parsing/pkg/PackageImpl$Booleans;,
        Lcom/android/internal/pm/parsing/pkg/PackageImpl$Booleans2;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/internal/pm/parsing/pkg/PackageImpl;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist EMPTY_INT_ARRAY_SPARSE_ARRAY:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "[I>;"
        }
    .end annotation
.end field

.field private static final blacklist ORDER_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/internal/pm/pkg/component/ParsedMainComponent;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist sForBoolean:Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;

.field protected static final blacklist sForIntentInfoPairs:Lcom/android/internal/pm/pkg/parsing/ParsingUtils$StringPairListParceler;

.field public static final blacklist sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

.field public static final blacklist sForInternedStringArray:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringArray;

.field public static final blacklist sForInternedStringList:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;

.field public static final blacklist sForInternedStringSet:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringSet;

.field public static final blacklist sForInternedStringValueMap:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringValueMap;

.field public static final blacklist sForStringSet:Lcom/android/internal/util/Parcelling$BuiltIn$ForStringSet;


# instance fields
.field protected blacklist activities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/pm/pkg/component/ParsedActivity;",
            ">;"
        }
    .end annotation
.end field

.field protected blacklist adoptPermissions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist anyDensity:Ljava/lang/Boolean;

.field protected blacklist apexSystemServices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/pm/pkg/component/ParsedApexSystemService;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist appComponentFactory:Ljava/lang/String;

.field private blacklist attributions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/pm/pkg/component/ParsedAttribution;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist autoRevokePermissions:I

.field private blacklist backupAgentName:Ljava/lang/String;

.field private blacklist banner:I

.field private blacklist baseRevisionCode:I

.field private blacklist category:I

.field private blacklist classLoaderName:Ljava/lang/String;

.field private blacklist className:Ljava/lang/String;

.field private blacklist compatibleWidthLimitDp:I

.field private blacklist compileSdkVersion:I

.field private blacklist compileSdkVersionCodeName:Ljava/lang/String;

.field private blacklist configPreferences:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/ConfigurationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist dataExtractionRules:I

.field private blacklist descriptionRes:I

.field private blacklist featureGroups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/FeatureGroupInfo;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist fullBackupContent:I

.field private blacklist gwpAsanMode:I

.field private blacklist iconRes:I

.field private blacklist implicitPermissions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist installLocation:I

.field protected blacklist instrumentations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/pm/pkg/component/ParsedInstrumentation;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist keySetMapping:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/security/PublicKey;",
            ">;>;"
        }
    .end annotation
.end field

.field private blacklist labelRes:I

.field private blacklist largestWidthLimitDp:I

.field private blacklist libraryNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist logo:I

.field private blacklist mAllowCrossUidActivitySwitchFromBelow:Z

.field private blacklist mAlternateLauncherIconResIds:[I

.field private blacklist mAlternateLauncherLabelResIds:[I

.field protected blacklist mBaseApkPath:Ljava/lang/String;

.field private blacklist mBaseAppDataCredentialProtectedDirForSystemUser:Ljava/lang/String;

.field private blacklist mBaseAppDataDeviceProtectedDirForSystemUser:Ljava/lang/String;

.field private blacklist mBaseAppInfoFlags:I

.field private blacklist mBaseAppInfoPrivateFlags:I

.field private blacklist mBaseAppInfoPrivateFlagsExt:I

.field private blacklist mBooleans:J

.field private blacklist mBooleans2:J

.field blacklist mCallback:Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils$Callback;

.field private blacklist mEmergencyInstaller:Ljava/lang/String;

.field private blacklist mFeatureFlagState:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mIntentMatchingFlags:I

.field private blacklist mKnownActivityEmbeddingCerts:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mLocaleConfigRes:I

.field private blacklist mLongVersionCode:J

.field private blacklist mPageSizeAppCompatFlags:I

.field protected blacklist mPath:Ljava/lang/String;

.field private blacklist mProperties:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/content/pm/PackageManager$Property;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mSplits:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/pm/pkg/AndroidPackageSplit;",
            ">;"
        }
    .end annotation
.end field

.field protected blacklist mStorageUuid:Ljava/util/UUID;

.field private blacklist mUsesLibrariesSorted:[Ljava/lang/String;

.field private blacklist mUsesOptionalLibrariesSorted:[Ljava/lang/String;

.field private blacklist mUsesSdkLibrariesSorted:[Ljava/lang/String;

.field private blacklist mUsesStaticLibrariesSorted:[Ljava/lang/String;

.field private blacklist manageSpaceActivityName:Ljava/lang/String;

.field private final blacklist manifestPackageName:Ljava/lang/String;

.field private blacklist maxAspectRatio:F

.field private blacklist maxSdkVersion:I

.field private blacklist memtagMode:I

.field private blacklist metaData:Landroid/os/Bundle;

.field private blacklist mimeGroups:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist minAspectRatio:F

.field private blacklist minExtensionVersions:Landroid/util/SparseIntArray;

.field private blacklist minSdkVersion:I

.field private blacklist nativeHeapZeroInitialized:I

.field protected blacklist nativeLibraryDir:Ljava/lang/String;

.field protected blacklist nativeLibraryRootDir:Ljava/lang/String;

.field private blacklist nativeLibraryRootRequiresIsa:Z

.field private blacklist networkSecurityConfigRes:I

.field private blacklist nonLocalizedLabel:Ljava/lang/CharSequence;

.field protected blacklist originalPackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist overlayCategory:Ljava/lang/String;

.field private blacklist overlayPriority:I

.field private blacklist overlayTarget:Ljava/lang/String;

.field private blacklist overlayTargetOverlayableName:Ljava/lang/String;

.field private blacklist overlayables:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected blacklist packageName:Ljava/lang/String;

.field private blacklist permission:Ljava/lang/String;

.field protected blacklist permissionGroups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;",
            ">;"
        }
    .end annotation
.end field

.field protected blacklist permissions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/pm/pkg/component/ParsedPermission;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist preferredActivityFilters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field protected blacklist primaryCpuAbi:Ljava/lang/String;

.field private blacklist processName:Ljava/lang/String;

.field private blacklist processes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/internal/pm/pkg/component/ParsedProcess;",
            ">;"
        }
    .end annotation
.end field

.field protected blacklist protectedBroadcasts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected blacklist providers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/pm/pkg/component/ParsedProvider;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist queriesIntents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist queriesPackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist queriesProviders:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected blacklist receivers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/pm/pkg/component/ParsedActivity;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist reqFeatures:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/FeatureInfo;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist requestRawExternalStorageAccess:Ljava/lang/Boolean;

.field private blacklist requiredAccountType:Ljava/lang/String;

.field private blacklist requiresSmallestWidthDp:I

.field private blacklist resizeable:Ljava/lang/Boolean;

.field private blacklist resizeableActivity:Ljava/lang/Boolean;

.field private blacklist restrictUpdateHash:[B

.field private blacklist restrictedAccountType:Ljava/lang/String;

.field private blacklist roundIconRes:I

.field private blacklist sdkLibVersionMajor:I

.field private blacklist sdkLibraryName:Ljava/lang/String;

.field protected blacklist secondaryCpuAbi:Ljava/lang/String;

.field protected blacklist secondaryNativeLibraryDir:Ljava/lang/String;

.field protected blacklist services:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/pm/pkg/component/ParsedService;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist sharedUserId:Ljava/lang/String;

.field private blacklist sharedUserLabel:I

.field private blacklist signingDetails:Landroid/content/pm/SigningDetails;

.field private blacklist splitClassLoaderNames:[Ljava/lang/String;

.field protected blacklist splitCodePaths:[Ljava/lang/String;

.field private blacklist splitDependencies:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "[I>;"
        }
    .end annotation
.end field

.field private blacklist splitFlags:[I

.field private blacklist splitNames:[Ljava/lang/String;

.field private blacklist splitRevisionCodes:[I

.field private blacklist staticSharedLibVersion:J

.field private blacklist staticSharedLibraryName:Ljava/lang/String;

.field private blacklist supportsExtraLargeScreens:Ljava/lang/Boolean;

.field private blacklist supportsLargeScreens:Ljava/lang/Boolean;

.field private blacklist supportsNormalScreens:Ljava/lang/Boolean;

.field private blacklist supportsSmallScreens:Ljava/lang/Boolean;

.field private blacklist targetSandboxVersion:I

.field private blacklist targetSdkVersion:I

.field private blacklist taskAffinity:Ljava/lang/String;

.field private blacklist theme:I

.field private blacklist uiOptions:I

.field private blacklist uid:I

.field private blacklist upgradeKeySets:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected blacklist usesLibraries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected blacklist usesNativeLibraries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected blacklist usesOptionalLibraries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected blacklist usesOptionalNativeLibraries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist usesPermissionMapping:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/internal/pm/pkg/component/ParsedUsesPermission;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist usesSdkLibraries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist usesSdkLibrariesCertDigests:[[Ljava/lang/String;

.field private blacklist usesSdkLibrariesOptional:[Z

.field private blacklist usesSdkLibrariesVersionsMajor:[J

.field private blacklist usesStaticLibraries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist usesStaticLibrariesCertDigests:[[Ljava/lang/String;

.field private blacklist usesStaticLibrariesVersions:[J

.field protected blacklist versionCode:I

.field protected blacklist versionCodeMajor:I

.field private blacklist versionName:Ljava/lang/String;

.field protected blacklist volumeUuid:Ljava/lang/String;

.field private blacklist zygotePreloadName:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 114
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->EMPTY_INT_ARRAY_SPARSE_ARRAY:Landroid/util/SparseArray;

    .line 115
    new-instance v0, Lcom/android/internal/pm/parsing/pkg/PackageImpl$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/internal/pm/parsing/pkg/PackageImpl$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->ORDER_COMPARATOR:Ljava/util/Comparator;

    .line 117
    const-class v0, Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;

    invoke-static {v0}, Lcom/android/internal/util/Parcelling$Cache;->getOrCreate(Ljava/lang/Class;)Lcom/android/internal/util/Parcelling;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;

    sput-object v0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForBoolean:Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;

    .line 119
    const-class v0, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    invoke-static {v0}, Lcom/android/internal/util/Parcelling$Cache;->getOrCreate(Ljava/lang/Class;)Lcom/android/internal/util/Parcelling;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    sput-object v0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    .line 121
    const-class v0, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringArray;

    .line 122
    invoke-static {v0}, Lcom/android/internal/util/Parcelling$Cache;->getOrCreate(Ljava/lang/Class;)Lcom/android/internal/util/Parcelling;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringArray;

    sput-object v0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForInternedStringArray:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringArray;

    .line 123
    const-class v0, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;

    .line 124
    invoke-static {v0}, Lcom/android/internal/util/Parcelling$Cache;->getOrCreate(Ljava/lang/Class;)Lcom/android/internal/util/Parcelling;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;

    sput-object v0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForInternedStringList:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;

    .line 125
    const-class v0, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringValueMap;

    .line 126
    invoke-static {v0}, Lcom/android/internal/util/Parcelling$Cache;->getOrCreate(Ljava/lang/Class;)Lcom/android/internal/util/Parcelling;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringValueMap;

    sput-object v0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForInternedStringValueMap:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringValueMap;

    .line 127
    const-class v0, Lcom/android/internal/util/Parcelling$BuiltIn$ForStringSet;

    .line 128
    invoke-static {v0}, Lcom/android/internal/util/Parcelling$Cache;->getOrCreate(Ljava/lang/Class;)Lcom/android/internal/util/Parcelling;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/Parcelling$BuiltIn$ForStringSet;

    sput-object v0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForStringSet:Lcom/android/internal/util/Parcelling$BuiltIn$ForStringSet;

    .line 129
    const-class v0, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringSet;

    .line 130
    invoke-static {v0}, Lcom/android/internal/util/Parcelling$Cache;->getOrCreate(Ljava/lang/Class;)Lcom/android/internal/util/Parcelling;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringSet;

    sput-object v0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForInternedStringSet:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringSet;

    .line 131
    new-instance v0, Lcom/android/internal/pm/pkg/parsing/ParsingUtils$StringPairListParceler;

    invoke-direct {v0}, Lcom/android/internal/pm/pkg/parsing/ParsingUtils$StringPairListParceler;-><init>()V

    sput-object v0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForIntentInfoPairs:Lcom/android/internal/pm/pkg/parsing/ParsingUtils$StringPairListParceler;

    .line 3567
    new-instance v0, Lcom/android/internal/pm/parsing/pkg/PackageImpl$1;

    invoke-direct {v0}, Lcom/android/internal/pm/parsing/pkg/PackageImpl$1;-><init>()V

    sput-object v0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 3357
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;-><init>(Landroid/os/Parcel;Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils$Callback;)V

    .line 3358
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils$Callback;)V
    .registers 8

    .line 3360
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    nop

    .line 142
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesLibraries:Ljava/util/List;

    .line 143
    nop

    .line 145
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesOptionalLibraries:Ljava/util/List;

    .line 146
    nop

    .line 148
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesNativeLibraries:Ljava/util/List;

    .line 149
    nop

    .line 151
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesOptionalNativeLibraries:Ljava/util/List;

    .line 152
    nop

    .line 154
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->originalPackages:Ljava/util/List;

    .line 155
    nop

    .line 157
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->adoptPermissions:Ljava/util/List;

    .line 158
    nop

    .line 160
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->protectedBroadcasts:Ljava/util/List;

    .line 161
    nop

    .line 162
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->activities:Ljava/util/List;

    .line 163
    nop

    .line 164
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->apexSystemServices:Ljava/util/List;

    .line 165
    nop

    .line 166
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->receivers:Ljava/util/List;

    .line 167
    nop

    .line 168
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->services:Ljava/util/List;

    .line 169
    nop

    .line 170
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->providers:Ljava/util/List;

    .line 171
    nop

    .line 172
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->permissions:Ljava/util/List;

    .line 173
    nop

    .line 174
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->permissionGroups:Ljava/util/List;

    .line 175
    nop

    .line 176
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->instrumentations:Ljava/util/List;

    .line 233
    nop

    .line 235
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->overlayables:Ljava/util/Map;

    .line 244
    nop

    .line 246
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->libraryNames:Ljava/util/List;

    .line 247
    nop

    .line 249
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesStaticLibraries:Ljava/util/List;

    .line 254
    nop

    .line 256
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesSdkLibraries:Ljava/util/List;

    .line 267
    nop

    .line 268
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->configPreferences:Ljava/util/List;

    .line 269
    nop

    .line 270
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->reqFeatures:Ljava/util/List;

    .line 271
    nop

    .line 272
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->featureGroups:Ljava/util/List;

    .line 275
    nop

    .line 276
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesPermissionMapping:Ljava/util/Map;

    .line 277
    nop

    .line 279
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->implicitPermissions:Ljava/util/Set;

    .line 280
    nop

    .line 281
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->upgradeKeySets:Ljava/util/Set;

    .line 282
    nop

    .line 283
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->keySetMapping:Ljava/util/Map;

    .line 284
    nop

    .line 285
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->attributions:Ljava/util/List;

    .line 286
    nop

    .line 288
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->preferredActivityFilters:Ljava/util/List;

    .line 292
    nop

    .line 293
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->processes:Ljava/util/Map;

    .line 296
    nop

    .line 297
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mProperties:Ljava/util/Map;

    .line 298
    sget-object v0, Landroid/content/pm/SigningDetails;->UNKNOWN:Landroid/content/pm/SigningDetails;

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->signingDetails:Landroid/content/pm/SigningDetails;

    .line 300
    nop

    .line 302
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->queriesIntents:Ljava/util/List;

    .line 303
    nop

    .line 305
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->queriesPackages:Ljava/util/List;

    .line 306
    nop

    .line 308
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->queriesProviders:Ljava/util/Set;

    .line 328
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->category:I

    .line 340
    iput v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->installLocation:I

    .line 351
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->minSdkVersion:I

    .line 352
    const v1, 0x7fffffff

    iput v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->maxSdkVersion:I

    .line 365
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->targetSdkVersion:I

    .line 388
    iput v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mPageSizeAppCompatFlags:I

    .line 394
    nop

    .line 396
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mimeGroups:Ljava/util/Set;

    .line 400
    const-wide v2, 0x100000000000L

    iput-wide v2, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mBooleans:J

    .line 401
    const-wide/16 v2, 0x4

    iput-wide v2, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mBooleans2:J

    .line 402
    nop

    .line 403
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mKnownActivityEmbeddingCerts:Ljava/util/Set;

    .line 425
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mFeatureFlagState:Ljava/util/Map;

    .line 492
    iput v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->uid:I

    .line 3361
    iput-object p2, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mCallback:Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils$Callback;

    .line 3363
    const-class p2, Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p2

    .line 3365
    invoke-direct {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->readFeatureFlagState(Landroid/os/Parcel;)V

    .line 3367
    sget-object v0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForBoolean:Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;

    invoke-virtual {v0, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;->unparcel(Landroid/os/Parcel;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->supportsSmallScreens:Ljava/lang/Boolean;

    .line 3368
    sget-object v0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForBoolean:Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;

    invoke-virtual {v0, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;->unparcel(Landroid/os/Parcel;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->supportsNormalScreens:Ljava/lang/Boolean;

    .line 3369
    sget-object v0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForBoolean:Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;

    invoke-virtual {v0, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;->unparcel(Landroid/os/Parcel;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->supportsLargeScreens:Ljava/lang/Boolean;

    .line 3370
    sget-object v0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForBoolean:Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;

    invoke-virtual {v0, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;->unparcel(Landroid/os/Parcel;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->supportsExtraLargeScreens:Ljava/lang/Boolean;

    .line 3371
    sget-object v0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForBoolean:Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;

    invoke-virtual {v0, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;->unparcel(Landroid/os/Parcel;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->resizeable:Ljava/lang/Boolean;

    .line 3372
    sget-object v0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForBoolean:Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;

    invoke-virtual {v0, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;->unparcel(Landroid/os/Parcel;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->anyDensity:Ljava/lang/Boolean;

    .line 3373
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->versionCode:I

    .line 3374
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->versionCodeMajor:I

    .line 3375
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->baseRevisionCode:I

    .line 3376
    sget-object v0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    invoke-virtual {v0, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;->unparcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->versionName:Ljava/lang/String;

    .line 3377
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->compileSdkVersion:I

    .line 3378
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->compileSdkVersionCodeName:Ljava/lang/String;

    .line 3379
    sget-object v0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    invoke-virtual {v0, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;->unparcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->packageName:Ljava/lang/String;

    .line 3380
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mBaseApkPath:Ljava/lang/String;

    .line 3381
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->restrictedAccountType:Ljava/lang/String;

    .line 3382
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->requiredAccountType:Ljava/lang/String;

    .line 3383
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mEmergencyInstaller:Ljava/lang/String;

    .line 3384
    sget-object v0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    invoke-virtual {v0, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;->unparcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->overlayTarget:Ljava/lang/String;

    .line 3385
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->overlayTargetOverlayableName:Ljava/lang/String;

    .line 3386
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->overlayCategory:Ljava/lang/String;

    .line 3387
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->overlayPriority:I

    .line 3388
    sget-object v0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForInternedStringValueMap:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringValueMap;

    invoke-virtual {v0, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringValueMap;->unparcel(Landroid/os/Parcel;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->overlayables:Ljava/util/Map;

    .line 3389
    sget-object v0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    invoke-virtual {v0, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;->unparcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sdkLibraryName:Ljava/lang/String;

    .line 3390
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sdkLibVersionMajor:I

    .line 3391
    sget-object v0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    invoke-virtual {v0, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;->unparcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->staticSharedLibraryName:Ljava/lang/String;

    .line 3392
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->staticSharedLibVersion:J

    .line 3393
    sget-object v0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForInternedStringList:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;

    invoke-virtual {v0, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;->unparcel(Landroid/os/Parcel;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->libraryNames:Ljava/util/List;

    .line 3394
    sget-object v0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForInternedStringList:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;

    invoke-virtual {v0, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;->unparcel(Landroid/os/Parcel;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesLibraries:Ljava/util/List;

    .line 3395
    sget-object v0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForInternedStringList:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;

    invoke-virtual {v0, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;->unparcel(Landroid/os/Parcel;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesOptionalLibraries:Ljava/util/List;

    .line 3396
    sget-object v0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForInternedStringList:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;

    invoke-virtual {v0, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;->unparcel(Landroid/os/Parcel;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesNativeLibraries:Ljava/util/List;

    .line 3397
    sget-object v0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForInternedStringList:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;

    invoke-virtual {v0, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;->unparcel(Landroid/os/Parcel;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesOptionalNativeLibraries:Ljava/util/List;

    .line 3399
    sget-object v0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForInternedStringList:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;

    invoke-virtual {v0, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;->unparcel(Landroid/os/Parcel;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesStaticLibraries:Ljava/util/List;

    .line 3400
    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesStaticLibrariesVersions:[J

    .line 3402
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3403
    if-ltz v0, :cond_231

    .line 3404
    new-array v2, v0, [[Ljava/lang/String;

    iput-object v2, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesStaticLibrariesCertDigests:[[Ljava/lang/String;

    .line 3405
    move v2, v1

    :goto_222
    if-ge v2, v0, :cond_231

    .line 3406
    iget-object v3, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesStaticLibrariesCertDigests:[[Ljava/lang/String;

    sget-object v4, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForInternedStringArray:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringArray;

    invoke-virtual {v4, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringArray;->unparcel(Landroid/os/Parcel;)[Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    .line 3405
    add-int/lit8 v2, v2, 0x1

    goto :goto_222

    .line 3412
    :cond_231
    sget-object v0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForInternedStringList:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;

    invoke-virtual {v0, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;->unparcel(Landroid/os/Parcel;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesSdkLibraries:Ljava/util/List;

    .line 3413
    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesSdkLibrariesVersionsMajor:[J

    .line 3415
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3416
    if-ltz v0, :cond_259

    .line 3417
    new-array v2, v0, [[Ljava/lang/String;

    iput-object v2, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesSdkLibrariesCertDigests:[[Ljava/lang/String;

    .line 3418
    nop

    :goto_24a
    if-ge v1, v0, :cond_259

    .line 3419
    iget-object v2, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesSdkLibrariesCertDigests:[[Ljava/lang/String;

    sget-object v3, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForInternedStringArray:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringArray;

    invoke-virtual {v3, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringArray;->unparcel(Landroid/os/Parcel;)[Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    .line 3418
    add-int/lit8 v1, v1, 0x1

    goto :goto_24a

    .line 3423
    :cond_259
    invoke-virtual {p1}, Landroid/os/Parcel;->createBooleanArray()[Z

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesSdkLibrariesOptional:[Z

    .line 3425
    sget-object v0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    invoke-virtual {v0, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;->unparcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sharedUserId:Ljava/lang/String;

    .line 3426
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sharedUserLabel:I

    .line 3427
    sget-object v0, Landroid/content/pm/ConfigurationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->configPreferences:Ljava/util/List;

    .line 3428
    sget-object v0, Landroid/content/pm/FeatureInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->reqFeatures:Ljava/util/List;

    .line 3429
    sget-object v0, Landroid/content/pm/FeatureGroupInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->featureGroups:Ljava/util/List;

    .line 3430
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->restrictUpdateHash:[B

    .line 3431
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->originalPackages:Ljava/util/List;

    .line 3432
    sget-object v0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForInternedStringList:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;

    invoke-virtual {v0, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;->unparcel(Landroid/os/Parcel;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->adoptPermissions:Ljava/util/List;

    .line 3433
    invoke-direct {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->readUsesPermissionMapping(Landroid/os/Parcel;)V

    .line 3434
    sget-object v0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForInternedStringSet:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringSet;

    invoke-virtual {v0, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringSet;->unparcel(Landroid/os/Parcel;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->implicitPermissions:Ljava/util/Set;

    .line 3435
    sget-object v0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForStringSet:Lcom/android/internal/util/Parcelling$BuiltIn$ForStringSet;

    invoke-virtual {v0, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForStringSet;->unparcel(Landroid/os/Parcel;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->upgradeKeySets:Ljava/util/Set;

    .line 3436
    invoke-static {p1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->readKeySetMapping(Landroid/os/Parcel;)Landroid/util/ArrayMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->keySetMapping:Ljava/util/Map;

    .line 3437
    sget-object v0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForInternedStringList:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;

    invoke-virtual {v0, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;->unparcel(Landroid/os/Parcel;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->protectedBroadcasts:Ljava/util/List;

    .line 3439
    sget-object v0, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v0}, Lcom/android/internal/pm/pkg/parsing/ParsingUtils;->createTypedInterfaceList(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->activities:Ljava/util/List;

    .line 3440
    sget-object v0, Lcom/android/internal/pm/pkg/component/ParsedApexSystemServiceImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v0}, Lcom/android/internal/pm/pkg/parsing/ParsingUtils;->createTypedInterfaceList(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->apexSystemServices:Ljava/util/List;

    .line 3442
    sget-object v0, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v0}, Lcom/android/internal/pm/pkg/parsing/ParsingUtils;->createTypedInterfaceList(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->receivers:Ljava/util/List;

    .line 3443
    sget-object v0, Lcom/android/internal/pm/pkg/component/ParsedServiceImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v0}, Lcom/android/internal/pm/pkg/parsing/ParsingUtils;->createTypedInterfaceList(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->services:Ljava/util/List;

    .line 3444
    sget-object v0, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v0}, Lcom/android/internal/pm/pkg/parsing/ParsingUtils;->createTypedInterfaceList(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->providers:Ljava/util/List;

    .line 3445
    sget-object v0, Lcom/android/internal/pm/pkg/component/ParsedAttributionImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v0}, Lcom/android/internal/pm/pkg/parsing/ParsingUtils;->createTypedInterfaceList(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->attributions:Ljava/util/List;

    .line 3447
    sget-object v0, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v0}, Lcom/android/internal/pm/pkg/parsing/ParsingUtils;->createTypedInterfaceList(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->permissions:Ljava/util/List;

    .line 3448
    sget-object v0, Lcom/android/internal/pm/pkg/component/ParsedPermissionGroupImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v0}, Lcom/android/internal/pm/pkg/parsing/ParsingUtils;->createTypedInterfaceList(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->permissionGroups:Ljava/util/List;

    .line 3450
    sget-object v0, Lcom/android/internal/pm/pkg/component/ParsedInstrumentationImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v0}, Lcom/android/internal/pm/pkg/parsing/ParsingUtils;->createTypedInterfaceList(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->instrumentations:Ljava/util/List;

    .line 3452
    sget-object v0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForIntentInfoPairs:Lcom/android/internal/pm/pkg/parsing/ParsingUtils$StringPairListParceler;

    invoke-virtual {v0, p1}, Lcom/android/internal/pm/pkg/parsing/ParsingUtils$StringPairListParceler;->unparcel(Landroid/os/Parcel;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->preferredActivityFilters:Ljava/util/List;

    .line 3453
    const-class v0, Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->processes:Ljava/util/Map;

    .line 3454
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->metaData:Landroid/os/Bundle;

    .line 3455
    sget-object v0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    invoke-virtual {v0, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;->unparcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->volumeUuid:Ljava/lang/String;

    .line 3456
    const-class v0, Landroid/content/pm/SigningDetails;

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/SigningDetails;

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->signingDetails:Landroid/content/pm/SigningDetails;

    .line 3457
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mPath:Ljava/lang/String;

    .line 3458
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->queriesIntents:Ljava/util/List;

    .line 3459
    sget-object v0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForInternedStringList:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;

    invoke-virtual {v0, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;->unparcel(Landroid/os/Parcel;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->queriesPackages:Ljava/util/List;

    .line 3460
    sget-object v0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForInternedStringSet:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringSet;

    invoke-virtual {v0, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringSet;->unparcel(Landroid/os/Parcel;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->queriesProviders:Ljava/util/Set;

    .line 3461
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->appComponentFactory:Ljava/lang/String;

    .line 3462
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->backupAgentName:Ljava/lang/String;

    .line 3463
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->banner:I

    .line 3464
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->category:I

    .line 3465
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->classLoaderName:Ljava/lang/String;

    .line 3466
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->className:Ljava/lang/String;

    .line 3467
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->compatibleWidthLimitDp:I

    .line 3468
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->descriptionRes:I

    .line 3469
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->fullBackupContent:I

    .line 3470
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->dataExtractionRules:I

    .line 3471
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->iconRes:I

    .line 3472
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->installLocation:I

    .line 3473
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->labelRes:I

    .line 3474
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->largestWidthLimitDp:I

    .line 3475
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->logo:I

    .line 3476
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->manageSpaceActivityName:Ljava/lang/String;

    .line 3477
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->maxAspectRatio:F

    .line 3478
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->minAspectRatio:F

    .line 3479
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->minSdkVersion:I

    .line 3480
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->maxSdkVersion:I

    .line 3481
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->networkSecurityConfigRes:I

    .line 3482
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 3483
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->permission:Ljava/lang/String;

    .line 3484
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->processName:Ljava/lang/String;

    .line 3485
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->requiresSmallestWidthDp:I

    .line 3486
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->roundIconRes:I

    .line 3487
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->targetSandboxVersion:I

    .line 3488
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->targetSdkVersion:I

    .line 3489
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->taskAffinity:Ljava/lang/String;

    .line 3490
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->theme:I

    .line 3491
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->uiOptions:I

    .line 3492
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->zygotePreloadName:Ljava/lang/String;

    .line 3493
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->splitClassLoaderNames:[Ljava/lang/String;

    .line 3494
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->splitCodePaths:[Ljava/lang/String;

    .line 3495
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->readSparseArray(Ljava/lang/ClassLoader;)Landroid/util/SparseArray;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->splitDependencies:Landroid/util/SparseArray;

    .line 3496
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->splitFlags:[I

    .line 3497
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->splitNames:[Ljava/lang/String;

    .line 3498
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->splitRevisionCodes:[I

    .line 3499
    sget-object v0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForBoolean:Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;

    invoke-virtual {v0, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;->unparcel(Landroid/os/Parcel;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->resizeableActivity:Ljava/lang/Boolean;

    .line 3501
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->autoRevokePermissions:I

    .line 3502
    sget-object v0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForInternedStringSet:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringSet;

    invoke-virtual {v0, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringSet;->unparcel(Landroid/os/Parcel;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mimeGroups:Ljava/util/Set;

    .line 3503
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->gwpAsanMode:I

    .line 3504
    invoke-virtual {p1}, Landroid/os/Parcel;->readSparseIntArray()Landroid/util/SparseIntArray;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->minExtensionVersions:Landroid/util/SparseIntArray;

    .line 3505
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object p2

    iput-object p2, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mProperties:Ljava/util/Map;

    .line 3506
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    iput p2, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->memtagMode:I

    .line 3507
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    iput p2, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->nativeHeapZeroInitialized:I

    .line 3508
    sget-object p2, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForBoolean:Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;

    invoke-virtual {p2, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;->unparcel(Landroid/os/Parcel;)Ljava/lang/Boolean;

    move-result-object p2

    iput-object p2, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->requestRawExternalStorageAccess:Ljava/lang/Boolean;

    .line 3509
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    iput p2, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mLocaleConfigRes:I

    .line 3510
    sget-object p2, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForStringSet:Lcom/android/internal/util/Parcelling$BuiltIn$ForStringSet;

    invoke-virtual {p2, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForStringSet;->unparcel(Landroid/os/Parcel;)Ljava/util/Set;

    move-result-object p2

    iput-object p2, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mKnownActivityEmbeddingCerts:Ljava/util/Set;

    .line 3511
    sget-object p2, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    invoke-virtual {p2, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;->unparcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->manifestPackageName:Ljava/lang/String;

    .line 3512
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->nativeLibraryDir:Ljava/lang/String;

    .line 3513
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->nativeLibraryRootDir:Ljava/lang/String;

    .line 3514
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->nativeLibraryRootRequiresIsa:Z

    .line 3515
    sget-object p2, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    invoke-virtual {p2, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;->unparcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->primaryCpuAbi:Ljava/lang/String;

    .line 3516
    sget-object p2, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    invoke-virtual {p2, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;->unparcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->secondaryCpuAbi:Ljava/lang/String;

    .line 3517
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->secondaryNativeLibraryDir:Ljava/lang/String;

    .line 3518
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    iput p2, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->uid:I

    .line 3519
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mBooleans:J

    .line 3520
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mBooleans2:J

    .line 3521
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mAllowCrossUidActivitySwitchFromBelow:Z

    .line 3522
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    iput p2, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mIntentMatchingFlags:I

    .line 3523
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object p2

    iput-object p2, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mAlternateLauncherIconResIds:[I

    .line 3524
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object p2

    iput-object p2, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mAlternateLauncherLabelResIds:[I

    .line 3525
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mPageSizeAppCompatFlags:I

    .line 3527
    invoke-virtual {p0}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->assignDerivedFields()V

    .line 3528
    invoke-direct {p0}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->assignDerivedFields2()V

    .line 3532
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/res/TypedArray;ZLcom/android/internal/pm/pkg/parsing/ParsingPackageUtils$Callback;)V
    .registers 12

    .line 2765
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    nop

    .line 142
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesLibraries:Ljava/util/List;

    .line 143
    nop

    .line 145
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesOptionalLibraries:Ljava/util/List;

    .line 146
    nop

    .line 148
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesNativeLibraries:Ljava/util/List;

    .line 149
    nop

    .line 151
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesOptionalNativeLibraries:Ljava/util/List;

    .line 152
    nop

    .line 154
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->originalPackages:Ljava/util/List;

    .line 155
    nop

    .line 157
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->adoptPermissions:Ljava/util/List;

    .line 158
    nop

    .line 160
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->protectedBroadcasts:Ljava/util/List;

    .line 161
    nop

    .line 162
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->activities:Ljava/util/List;

    .line 163
    nop

    .line 164
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->apexSystemServices:Ljava/util/List;

    .line 165
    nop

    .line 166
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->receivers:Ljava/util/List;

    .line 167
    nop

    .line 168
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->services:Ljava/util/List;

    .line 169
    nop

    .line 170
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->providers:Ljava/util/List;

    .line 171
    nop

    .line 172
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->permissions:Ljava/util/List;

    .line 173
    nop

    .line 174
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->permissionGroups:Ljava/util/List;

    .line 175
    nop

    .line 176
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->instrumentations:Ljava/util/List;

    .line 233
    nop

    .line 235
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->overlayables:Ljava/util/Map;

    .line 244
    nop

    .line 246
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->libraryNames:Ljava/util/List;

    .line 247
    nop

    .line 249
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesStaticLibraries:Ljava/util/List;

    .line 254
    nop

    .line 256
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesSdkLibraries:Ljava/util/List;

    .line 267
    nop

    .line 268
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->configPreferences:Ljava/util/List;

    .line 269
    nop

    .line 270
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->reqFeatures:Ljava/util/List;

    .line 271
    nop

    .line 272
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->featureGroups:Ljava/util/List;

    .line 275
    nop

    .line 276
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesPermissionMapping:Ljava/util/Map;

    .line 277
    nop

    .line 279
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->implicitPermissions:Ljava/util/Set;

    .line 280
    nop

    .line 281
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->upgradeKeySets:Ljava/util/Set;

    .line 282
    nop

    .line 283
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->keySetMapping:Ljava/util/Map;

    .line 284
    nop

    .line 285
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->attributions:Ljava/util/List;

    .line 286
    nop

    .line 288
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->preferredActivityFilters:Ljava/util/List;

    .line 292
    nop

    .line 293
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->processes:Ljava/util/Map;

    .line 296
    nop

    .line 297
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mProperties:Ljava/util/Map;

    .line 298
    sget-object v0, Landroid/content/pm/SigningDetails;->UNKNOWN:Landroid/content/pm/SigningDetails;

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->signingDetails:Landroid/content/pm/SigningDetails;

    .line 300
    nop

    .line 302
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->queriesIntents:Ljava/util/List;

    .line 303
    nop

    .line 305
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->queriesPackages:Ljava/util/List;

    .line 306
    nop

    .line 308
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->queriesProviders:Ljava/util/Set;

    .line 328
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->category:I

    .line 340
    iput v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->installLocation:I

    .line 351
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->minSdkVersion:I

    .line 352
    const v2, 0x7fffffff

    iput v2, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->maxSdkVersion:I

    .line 365
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->targetSdkVersion:I

    .line 388
    iput v2, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mPageSizeAppCompatFlags:I

    .line 394
    nop

    .line 396
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mimeGroups:Ljava/util/Set;

    .line 400
    const-wide v3, 0x100000000000L

    iput-wide v3, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mBooleans:J

    .line 401
    const-wide/16 v3, 0x4

    iput-wide v3, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mBooleans2:J

    .line 402
    nop

    .line 403
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mKnownActivityEmbeddingCerts:Ljava/util/Set;

    .line 425
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    iput-object v3, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mFeatureFlagState:Ljava/util/Map;

    .line 492
    iput v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->uid:I

    .line 2766
    invoke-static {p1}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->packageName:Ljava/lang/String;

    .line 2767
    iput-object p2, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mBaseApkPath:Ljava/lang/String;

    .line 2768
    iput-object p3, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mPath:Ljava/lang/String;

    .line 2769
    iput-object p6, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mCallback:Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils$Callback;

    .line 2771
    if-eqz p4, :cond_169

    .line 2772
    invoke-virtual {p4, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p1

    iput p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->versionCode:I

    .line 2773
    const/16 p1, 0xb

    invoke-virtual {p4, p1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p1

    iput p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->versionCodeMajor:I

    .line 2775
    nop

    .line 2776
    const/4 p1, 0x5

    invoke-virtual {p4, p1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p1

    .line 2775
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setBaseRevisionCode(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    .line 2777
    const/4 p1, 0x2

    invoke-virtual {p4, p1, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setVersionName(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    .line 2780
    const/16 p1, 0x9

    invoke-virtual {p4, p1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setCompileSdkVersion(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    .line 2782
    const/16 p1, 0xa

    invoke-virtual {p4, p1, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setCompileSdkVersionCodeName(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 2785
    const/4 p1, 0x6

    invoke-virtual {p4, p1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setIsolatedSplitLoading(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    .line 2789
    :cond_169
    iget-object p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->packageName:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->manifestPackageName:Ljava/lang/String;

    .line 2790
    const-wide/high16 p1, 0x10000000000000L

    invoke-direct {p0, p1, p2, p5}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    .line 2791
    return-void
.end method

.method private blacklist addMimeGroupsFromComponent(Lcom/android/internal/pm/pkg/component/ParsedComponent;)V
    .registers 7

    .line 573
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedComponent;->getIntents()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_a
    if-ltz v0, :cond_4b

    .line 574
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedComponent;->getIntents()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;

    invoke-interface {v1}, Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v1

    .line 575
    invoke-virtual {v1}, Landroid/content/IntentFilter;->countMimeGroups()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_20
    if-ltz v2, :cond_48

    .line 576
    iget-object v3, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mimeGroups:Ljava/util/Set;

    if-eqz v3, :cond_39

    iget-object v3, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mimeGroups:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    const/16 v4, 0x1f4

    if-gt v3, v4, :cond_31

    goto :goto_39

    .line 577
    :cond_31
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Max limit on number of MIME Groups reached"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 579
    :cond_39
    :goto_39
    iget-object v3, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mimeGroups:Ljava/util/Set;

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->getMimeGroup(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mimeGroups:Ljava/util/Set;

    .line 575
    add-int/lit8 v2, v2, -0x1

    goto :goto_20

    .line 573
    :cond_48
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    .line 582
    :cond_4b
    return-void
.end method

.method private blacklist assignDerivedFields2()V
    .registers 5

    .line 2820
    invoke-static {p0}, Lcom/android/internal/pm/parsing/AppInfoUtils;->appInfoFlags(Lcom/android/server/pm/pkg/AndroidPackage;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mBaseAppInfoFlags:I

    .line 2821
    invoke-static {p0}, Lcom/android/internal/pm/parsing/AppInfoUtils;->appInfoPrivateFlags(Lcom/android/server/pm/pkg/AndroidPackage;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mBaseAppInfoPrivateFlags:I

    .line 2822
    nop

    .line 2823
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mCallback:Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils$Callback;

    const/4 v1, 0x0

    if-nez v0, :cond_14

    move v0, v1

    goto :goto_20

    .line 2824
    :cond_14
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mCallback:Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils$Callback;

    invoke-interface {v0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils$Callback;->getHiddenApiWhitelistedApps()Ljava/util/Set;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->packageName:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 2822
    :goto_20
    invoke-static {p0, v0}, Lcom/android/internal/pm/parsing/AppInfoUtils;->appInfoPrivateFlagsExt(Lcom/android/server/pm/pkg/AndroidPackage;Z)I

    move-result v0

    iput v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mBaseAppInfoPrivateFlagsExt:I

    .line 2825
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getVolumeUuid()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/os/Environment;->getDataDirectoryPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2826
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2827
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "user"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mBaseAppDataCredentialProtectedDirForSystemUser:Ljava/lang/String;

    .line 2829
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "user_de"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mBaseAppDataDeviceProtectedDirForSystemUser:Ljava/lang/String;

    .line 2831
    return-void
.end method

.method private blacklist buildAppClassNamesByProcess()Landroid/util/ArrayMap;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 791
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->processes:Ljava/util/Map;

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Map;)I

    move-result v0

    if-nez v0, :cond_a

    .line 792
    const/4 v0, 0x0

    return-object v0

    .line 794
    :cond_a
    new-instance v0, Landroid/util/ArrayMap;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    .line 795
    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->processes:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 796
    iget-object v3, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->processes:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/pm/pkg/component/ParsedProcess;

    .line 797
    nop

    .line 798
    invoke-interface {v3}, Lcom/android/internal/pm/pkg/component/ParsedProcess;->getAppClassNamesByPackage()Landroid/util/ArrayMap;

    move-result-object v3

    .line 800
    const/4 v4, 0x0

    :goto_34
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v5

    if-ge v4, v5, :cond_5a

    .line 801
    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 803
    iget-object v6, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_57

    .line 804
    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 805
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_57

    .line 806
    invoke-virtual {v0, v2, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 800
    :cond_57
    add-int/lit8 v4, v4, 0x1

    goto :goto_34

    .line 810
    :cond_5a
    goto :goto_1a

    .line 811
    :cond_5b
    return-object v0
.end method

.method public static blacklist buildFakeForDeletion(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/pm/pkg/AndroidPackage;
    .registers 2

    .line 449
    invoke-static {p0}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->forTesting(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object p0

    .line 450
    invoke-interface {p0, p1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setVolumeUuid(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object p0

    .line 451
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->hideAsParsed()Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    move-result-object p0

    .line 452
    invoke-interface {p0}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->hideAsFinal()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object p0

    .line 449
    return-object p0
.end method

.method public static blacklist forParsing(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/res/TypedArray;ZLcom/android/internal/pm/pkg/parsing/ParsingPackageUtils$Callback;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 13

    .line 433
    new-instance v0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/res/TypedArray;ZLcom/android/internal/pm/pkg/parsing/ParsingPackageUtils$Callback;)V

    return-object v0
.end method

.method public static blacklist forTesting(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 458
    const-string v0, ""

    invoke-static {p0, v0}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->forTesting(Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist forTesting(Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 9

    .line 464
    new-instance v0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v3, p1

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/res/TypedArray;ZLcom/android/internal/pm/pkg/parsing/ParsingPackageUtils$Callback;)V

    return-object v0
.end method

.method private blacklist getBoolean(J)Z
    .registers 5

    .line 2737
    iget-wide v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mBooleans:J

    and-long/2addr p1, v0

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-eqz p1, :cond_b

    const/4 p1, 0x1

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    :goto_c
    return p1
.end method

.method private blacklist getBoolean2(J)Z
    .registers 5

    .line 2750
    iget-wide v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mBooleans2:J

    and-long/2addr p1, v0

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-eqz p1, :cond_b

    const/4 p1, 0x1

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    :goto_c
    return p1
.end method

.method static synthetic blacklist lambda$static$0(Lcom/android/internal/pm/pkg/component/ParsedMainComponent;Lcom/android/internal/pm/pkg/component/ParsedMainComponent;)I
    .registers 2

    .line 116
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedMainComponent;->getOrder()I

    move-result p1

    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedMainComponent;->getOrder()I

    move-result p0

    invoke-static {p1, p0}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    return p0
.end method

.method private blacklist makeImmutable()V
    .registers 2

    .line 2834
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesLibraries:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesLibraries:Ljava/util/List;

    .line 2835
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesOptionalLibraries:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesOptionalLibraries:Ljava/util/List;

    .line 2836
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesNativeLibraries:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesNativeLibraries:Ljava/util/List;

    .line 2837
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesOptionalNativeLibraries:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesOptionalNativeLibraries:Ljava/util/List;

    .line 2838
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->originalPackages:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->originalPackages:Ljava/util/List;

    .line 2839
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->adoptPermissions:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->adoptPermissions:Ljava/util/List;

    .line 2840
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->protectedBroadcasts:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->protectedBroadcasts:Ljava/util/List;

    .line 2841
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->apexSystemServices:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->apexSystemServices:Ljava/util/List;

    .line 2843
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->activities:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->activities:Ljava/util/List;

    .line 2844
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->receivers:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->receivers:Ljava/util/List;

    .line 2845
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->services:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->services:Ljava/util/List;

    .line 2846
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->providers:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->providers:Ljava/util/List;

    .line 2847
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->permissions:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->permissions:Ljava/util/List;

    .line 2848
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->permissionGroups:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->permissionGroups:Ljava/util/List;

    .line 2849
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->instrumentations:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->instrumentations:Ljava/util/List;

    .line 2851
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->overlayables:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->overlayables:Ljava/util/Map;

    .line 2852
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->libraryNames:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->libraryNames:Ljava/util/List;

    .line 2853
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesStaticLibraries:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesStaticLibraries:Ljava/util/List;

    .line 2854
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesSdkLibraries:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesSdkLibraries:Ljava/util/List;

    .line 2855
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->configPreferences:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->configPreferences:Ljava/util/List;

    .line 2856
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->reqFeatures:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->reqFeatures:Ljava/util/List;

    .line 2857
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->featureGroups:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->featureGroups:Ljava/util/List;

    .line 2858
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesPermissionMapping:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesPermissionMapping:Ljava/util/Map;

    .line 2859
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesSdkLibraries:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesSdkLibraries:Ljava/util/List;

    .line 2860
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->implicitPermissions:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->implicitPermissions:Ljava/util/Set;

    .line 2861
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->upgradeKeySets:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->upgradeKeySets:Ljava/util/Set;

    .line 2862
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->keySetMapping:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->keySetMapping:Ljava/util/Map;

    .line 2863
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->attributions:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->attributions:Ljava/util/List;

    .line 2864
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->preferredActivityFilters:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->preferredActivityFilters:Ljava/util/List;

    .line 2865
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->processes:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->processes:Ljava/util/Map;

    .line 2866
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mProperties:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mProperties:Ljava/util/Map;

    .line 2867
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->queriesIntents:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->queriesIntents:Ljava/util/List;

    .line 2868
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->queriesPackages:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->queriesPackages:Ljava/util/List;

    .line 2869
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->queriesProviders:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->queriesProviders:Ljava/util/Set;

    .line 2870
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mimeGroups:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mimeGroups:Ljava/util/Set;

    .line 2871
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mKnownActivityEmbeddingCerts:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mKnownActivityEmbeddingCerts:Ljava/util/Set;

    .line 2872
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mFeatureFlagState:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mFeatureFlagState:Ljava/util/Map;

    .line 2873
    return-void
.end method

.method private blacklist readFeatureFlagState(Landroid/os/Parcel;)V
    .registers 8

    .line 3547
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object p1

    .line 3548
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_7
    if-ge v2, v0, :cond_42

    aget-object v3, p1, v2

    .line 3549
    const/16 v4, 0x3d

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    .line 3550
    if-ltz v4, :cond_3f

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x2

    if-ne v4, v5, :cond_3f

    .line 3551
    invoke-virtual {v3, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 3552
    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 3553
    nop

    .line 3554
    const/16 v4, 0x31

    if-ne v3, v4, :cond_2d

    .line 3555
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_3a

    .line 3556
    :cond_2d
    const/16 v4, 0x30

    if-ne v3, v4, :cond_34

    .line 3557
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_3a

    .line 3558
    :cond_34
    const/16 v4, 0x3f

    if-eq v3, v4, :cond_39

    .line 3559
    goto :goto_3f

    .line 3558
    :cond_39
    const/4 v3, 0x0

    .line 3561
    :goto_3a
    iget-object v4, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mFeatureFlagState:Ljava/util/Map;

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3548
    :cond_3f
    :goto_3f
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 3564
    :cond_42
    return-void
.end method

.method private blacklist readUsesPermissionMapping(Landroid/os/Parcel;)V
    .registers 6

    .line 3535
    const-class v0, Lcom/android/internal/pm/pkg/component/ParsedUsesPermissionImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object p1

    .line 3536
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 3537
    if-eqz p1, :cond_31

    .line 3538
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_31

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3539
    const-class v3, Lcom/android/internal/pm/pkg/component/ParsedUsesPermissionImpl;

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/pm/pkg/component/ParsedUsesPermission;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3540
    goto :goto_19

    .line 3542
    :cond_31
    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesPermissionMapping:Ljava/util/Map;

    .line 3543
    return-void
.end method

.method private blacklist setBoolean(JZ)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 6

    .line 2728
    if-eqz p3, :cond_8

    .line 2729
    iget-wide v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mBooleans:J

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mBooleans:J

    goto :goto_e

    .line 2731
    :cond_8
    iget-wide v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mBooleans:J

    not-long p1, p1

    and-long/2addr p1, v0

    iput-wide p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mBooleans:J

    .line 2733
    :goto_e
    return-object p0
.end method

.method private blacklist setBoolean2(JZ)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 6

    .line 2741
    if-eqz p3, :cond_8

    .line 2742
    iget-wide v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mBooleans2:J

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mBooleans2:J

    goto :goto_e

    .line 2744
    :cond_8
    iget-wide v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mBooleans2:J

    not-long p1, p1

    and-long/2addr p1, v0

    iput-wide p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mBooleans2:J

    .line 2746
    :goto_e
    return-object p0
.end method

.method private static blacklist sortLibraries(Ljava/util/List;)[Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 2810
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 2811
    if-nez v0, :cond_9

    .line 2812
    sget-object p0, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    return-object p0

    .line 2814
    :cond_9
    sget-object v0, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    .line 2815
    invoke-static {p0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 2816
    return-object p0
.end method

.method private blacklist writeFeatureFlagState(Landroid/os/Parcel;)V
    .registers 8

    .line 3338
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mFeatureFlagState:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    .line 3339
    new-array v1, v0, [Ljava/lang/String;

    .line 3340
    iget-object v2, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mFeatureFlagState:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 3341
    const/4 v3, 0x0

    :goto_13
    if-ge v3, v0, :cond_7f

    .line 3342
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 3343
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    .line 3344
    if-nez v5, :cond_3f

    .line 3345
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "=?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    goto :goto_7c

    .line 3346
    :cond_3f
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_61

    .line 3347
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "=1"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    goto :goto_7c

    .line 3349
    :cond_61
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "=0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    .line 3341
    :goto_7c
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 3353
    :cond_7f
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 3354
    return-void
.end method

.method private blacklist writeUsesPermissionMapping(Landroid/os/Parcel;)V
    .registers 6

    .line 3328
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3329
    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesPermissionMapping:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 3330
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/pm/pkg/component/ParsedUsesPermissionImpl;

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 3331
    goto :goto_f

    .line 3332
    :cond_2b
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 3333
    return-void
.end method


# virtual methods
.method public blacklist addActivity(Lcom/android/internal/pm/pkg/component/ParsedActivity;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 3

    .line 500
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->activities:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->activities:Ljava/util/List;

    .line 501
    invoke-direct {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->addMimeGroupsFromComponent(Lcom/android/internal/pm/pkg/component/ParsedComponent;)V

    .line 502
    return-object p0
.end method

.method public bridge synthetic blacklist addActivity(Lcom/android/internal/pm/pkg/component/ParsedActivity;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->addActivity(Lcom/android/internal/pm/pkg/component/ParsedActivity;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist addAdoptPermission(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 3

    .line 507
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->adoptPermissions:Ljava/util/List;

    .line 508
    invoke-static {p1}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 507
    invoke-static {v0, p1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->adoptPermissions:Ljava/util/List;

    .line 509
    return-object p0
.end method

.method public bridge synthetic blacklist addAdoptPermission(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->addAdoptPermission(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public final blacklist addApexSystemService(Lcom/android/internal/pm/pkg/component/ParsedApexSystemService;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 3

    .line 515
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->apexSystemServices:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->apexSystemServices:Ljava/util/List;

    .line 517
    return-object p0
.end method

.method public bridge synthetic blacklist addApexSystemService(Lcom/android/internal/pm/pkg/component/ParsedApexSystemService;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->addApexSystemService(Lcom/android/internal/pm/pkg/component/ParsedApexSystemService;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist addAttribution(Lcom/android/internal/pm/pkg/component/ParsedAttribution;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 3

    .line 522
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->attributions:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->attributions:Ljava/util/List;

    .line 523
    return-object p0
.end method

.method public bridge synthetic blacklist addAttribution(Lcom/android/internal/pm/pkg/component/ParsedAttribution;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->addAttribution(Lcom/android/internal/pm/pkg/component/ParsedAttribution;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist addConfigPreference(Landroid/content/pm/ConfigurationInfo;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 3

    .line 528
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->configPreferences:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->configPreferences:Ljava/util/List;

    .line 529
    return-object p0
.end method

.method public bridge synthetic blacklist addConfigPreference(Landroid/content/pm/ConfigurationInfo;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->addConfigPreference(Landroid/content/pm/ConfigurationInfo;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist addFeatureFlag(Ljava/lang/String;Ljava/lang/Boolean;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 4

    .line 3801
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mFeatureFlagState:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3802
    return-object p0
.end method

.method public bridge synthetic blacklist addFeatureFlag(Ljava/lang/String;Ljava/lang/Boolean;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->addFeatureFlag(Ljava/lang/String;Ljava/lang/Boolean;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist addFeatureGroup(Landroid/content/pm/FeatureGroupInfo;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 3

    .line 534
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->featureGroups:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->featureGroups:Ljava/util/List;

    .line 535
    return-object p0
.end method

.method public bridge synthetic blacklist addFeatureGroup(Landroid/content/pm/FeatureGroupInfo;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->addFeatureGroup(Landroid/content/pm/FeatureGroupInfo;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist addImplicitPermission(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 5

    .line 540
    new-instance v0, Lcom/android/internal/pm/pkg/component/ParsedUsesPermissionImpl;

    .line 542
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p1, v2, v1}, Lcom/android/internal/pm/pkg/component/ParsedUsesPermissionImpl;-><init>(Ljava/lang/String;ILjava/util/Set;)V

    .line 540
    invoke-virtual {p0, v0}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->addUsesPermission(Lcom/android/internal/pm/pkg/component/ParsedUsesPermission;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    .line 543
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->implicitPermissions:Ljava/util/Set;

    .line 544
    invoke-static {p1}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 543
    invoke-static {v0, p1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->implicitPermissions:Ljava/util/Set;

    .line 545
    return-object p0
.end method

.method public bridge synthetic blacklist addImplicitPermission(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->addImplicitPermission(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist addInstrumentation(Lcom/android/internal/pm/pkg/component/ParsedInstrumentation;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 3

    .line 550
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->instrumentations:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->instrumentations:Ljava/util/List;

    .line 551
    return-object p0
.end method

.method public bridge synthetic blacklist addInstrumentation(Lcom/android/internal/pm/pkg/component/ParsedInstrumentation;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->addInstrumentation(Lcom/android/internal/pm/pkg/component/ParsedInstrumentation;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist addKeySet(Ljava/lang/String;Ljava/security/PublicKey;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 4

    .line 556
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->keySetMapping:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    .line 557
    if-nez v0, :cond_f

    .line 558
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 560
    :cond_f
    invoke-virtual {v0, p2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 561
    iget-object p2, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->keySetMapping:Ljava/util/Map;

    invoke-static {p2, p1, v0}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->keySetMapping:Ljava/util/Map;

    .line 562
    return-object p0
.end method

.method public bridge synthetic blacklist addKeySet(Ljava/lang/String;Ljava/security/PublicKey;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->addKeySet(Ljava/lang/String;Ljava/security/PublicKey;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist addLibraryName(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 3

    .line 567
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->libraryNames:Ljava/util/List;

    .line 568
    invoke-static {p1}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 567
    invoke-static {v0, p1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->libraryNames:Ljava/util/List;

    .line 569
    return-object p0
.end method

.method public bridge synthetic blacklist addLibraryName(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->addLibraryName(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist addOriginalPackage(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 3

    .line 586
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->originalPackages:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->originalPackages:Ljava/util/List;

    .line 587
    return-object p0
.end method

.method public bridge synthetic blacklist addOriginalPackage(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->addOriginalPackage(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist addOverlayable(Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 4

    .line 592
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->overlayables:Ljava/util/Map;

    .line 593
    invoke-static {p2}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 592
    invoke-static {v0, p1, p2}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->overlayables:Ljava/util/Map;

    .line 594
    return-object p0
.end method

.method public blacklist addPermission(Lcom/android/internal/pm/pkg/component/ParsedPermission;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 3

    .line 599
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->permissions:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->permissions:Ljava/util/List;

    .line 600
    return-object p0
.end method

.method public bridge synthetic blacklist addPermission(Lcom/android/internal/pm/pkg/component/ParsedPermission;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->addPermission(Lcom/android/internal/pm/pkg/component/ParsedPermission;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist addPermissionGroup(Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 3

    .line 605
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->permissionGroups:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->permissionGroups:Ljava/util/List;

    .line 606
    return-object p0
.end method

.method public bridge synthetic blacklist addPermissionGroup(Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->addPermissionGroup(Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist addPreferredActivityFilter(Ljava/lang/String;Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 4

    .line 612
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->preferredActivityFilters:Ljava/util/List;

    .line 613
    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    .line 612
    invoke-static {v0, p1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->preferredActivityFilters:Ljava/util/List;

    .line 614
    return-object p0
.end method

.method public bridge synthetic blacklist addPreferredActivityFilter(Ljava/lang/String;Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->addPreferredActivityFilter(Ljava/lang/String;Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist addProperty(Landroid/content/pm/PackageManager$Property;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 4

    .line 619
    if-nez p1, :cond_3

    .line 620
    return-object p0

    .line 622
    :cond_3
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mProperties:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/content/pm/PackageManager$Property;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mProperties:Ljava/util/Map;

    .line 623
    return-object p0
.end method

.method public bridge synthetic blacklist addProperty(Landroid/content/pm/PackageManager$Property;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->addProperty(Landroid/content/pm/PackageManager$Property;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist addProtectedBroadcast(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 3

    .line 628
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->protectedBroadcasts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 629
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->protectedBroadcasts:Ljava/util/List;

    .line 630
    invoke-static {p1}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 629
    invoke-static {v0, p1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->protectedBroadcasts:Ljava/util/List;

    .line 632
    :cond_14
    return-object p0
.end method

.method public bridge synthetic blacklist addProtectedBroadcast(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->addProtectedBroadcast(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist addProvider(Lcom/android/internal/pm/pkg/component/ParsedProvider;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 3

    .line 637
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->providers:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->providers:Ljava/util/List;

    .line 638
    invoke-direct {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->addMimeGroupsFromComponent(Lcom/android/internal/pm/pkg/component/ParsedComponent;)V

    .line 639
    return-object p0
.end method

.method public bridge synthetic blacklist addProvider(Lcom/android/internal/pm/pkg/component/ParsedProvider;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->addProvider(Lcom/android/internal/pm/pkg/component/ParsedProvider;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist addQueriesIntent(Landroid/content/Intent;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 3

    .line 644
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->queriesIntents:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->queriesIntents:Ljava/util/List;

    .line 645
    return-object p0
.end method

.method public bridge synthetic blacklist addQueriesIntent(Landroid/content/Intent;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->addQueriesIntent(Landroid/content/Intent;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist addQueriesPackage(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 3

    .line 650
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->queriesPackages:Ljava/util/List;

    .line 651
    invoke-static {p1}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 650
    invoke-static {v0, p1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->queriesPackages:Ljava/util/List;

    .line 652
    return-object p0
.end method

.method public bridge synthetic blacklist addQueriesPackage(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->addQueriesPackage(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist addQueriesProvider(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 3

    .line 657
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->queriesProviders:Ljava/util/Set;

    invoke-static {v0, p1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->queriesProviders:Ljava/util/Set;

    .line 658
    return-object p0
.end method

.method public bridge synthetic blacklist addQueriesProvider(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->addQueriesProvider(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist addReceiver(Lcom/android/internal/pm/pkg/component/ParsedActivity;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 3

    .line 663
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->receivers:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->receivers:Ljava/util/List;

    .line 664
    invoke-direct {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->addMimeGroupsFromComponent(Lcom/android/internal/pm/pkg/component/ParsedComponent;)V

    .line 665
    return-object p0
.end method

.method public bridge synthetic blacklist addReceiver(Lcom/android/internal/pm/pkg/component/ParsedActivity;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->addReceiver(Lcom/android/internal/pm/pkg/component/ParsedActivity;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist addReqFeature(Landroid/content/pm/FeatureInfo;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 3

    .line 670
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->reqFeatures:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->reqFeatures:Ljava/util/List;

    .line 671
    return-object p0
.end method

.method public bridge synthetic blacklist addReqFeature(Landroid/content/pm/FeatureInfo;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->addReqFeature(Landroid/content/pm/FeatureInfo;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist addService(Lcom/android/internal/pm/pkg/component/ParsedService;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 3

    .line 676
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->services:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->services:Ljava/util/List;

    .line 677
    invoke-direct {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->addMimeGroupsFromComponent(Lcom/android/internal/pm/pkg/component/ParsedComponent;)V

    .line 678
    return-object p0
.end method

.method public bridge synthetic blacklist addService(Lcom/android/internal/pm/pkg/component/ParsedService;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->addService(Lcom/android/internal/pm/pkg/component/ParsedService;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist addUsesLibrary(ILjava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 4

    .line 2895
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesLibraries:Ljava/util/List;

    .line 2896
    invoke-static {p2}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 2895
    invoke-static {v0, p1, p2}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;ILjava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesLibraries:Ljava/util/List;

    .line 2897
    return-object p0
.end method

.method public blacklist addUsesLibrary(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 3

    .line 683
    invoke-static {p1}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 684
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesLibraries:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/android/internal/util/ArrayUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 685
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesLibraries:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesLibraries:Ljava/util/List;

    .line 687
    :cond_14
    return-object p0
.end method

.method public bridge synthetic blacklist addUsesLibrary(ILjava/lang/String;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->addUsesLibrary(ILjava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist addUsesLibrary(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->addUsesLibrary(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public final blacklist addUsesNativeLibrary(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 3

    .line 692
    invoke-static {p1}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 693
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesNativeLibraries:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/android/internal/util/ArrayUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 694
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesNativeLibraries:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesNativeLibraries:Ljava/util/List;

    .line 696
    :cond_14
    return-object p0
.end method

.method public bridge synthetic blacklist addUsesNativeLibrary(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->addUsesNativeLibrary(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist addUsesOptionalLibrary(ILjava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 4

    .line 2888
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesOptionalLibraries:Ljava/util/List;

    .line 2889
    invoke-static {p2}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 2888
    invoke-static {v0, p1, p2}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;ILjava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesOptionalLibraries:Ljava/util/List;

    .line 2890
    return-object p0
.end method

.method public blacklist addUsesOptionalLibrary(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 3

    .line 701
    invoke-static {p1}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 702
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesOptionalLibraries:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/android/internal/util/ArrayUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 703
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesOptionalLibraries:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesOptionalLibraries:Ljava/util/List;

    .line 706
    :cond_14
    return-object p0
.end method

.method public bridge synthetic blacklist addUsesOptionalLibrary(ILjava/lang/String;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->addUsesOptionalLibrary(ILjava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist addUsesOptionalLibrary(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->addUsesOptionalLibrary(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public final blacklist addUsesOptionalNativeLibrary(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 3

    .line 711
    invoke-static {p1}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 712
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesOptionalNativeLibraries:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/android/internal/util/ArrayUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 713
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesOptionalNativeLibraries:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesOptionalNativeLibraries:Ljava/util/List;

    .line 716
    :cond_14
    return-object p0
.end method

.method public bridge synthetic blacklist addUsesOptionalNativeLibrary(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->addUsesOptionalNativeLibrary(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist addUsesPermission(Lcom/android/internal/pm/pkg/component/ParsedUsesPermission;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 4

    .line 723
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesPermissionMapping:Ljava/util/Map;

    .line 724
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedUsesPermission;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesPermissionMapping:Ljava/util/Map;

    .line 726
    return-object p0
.end method

.method public bridge synthetic blacklist addUsesPermission(Lcom/android/internal/pm/pkg/component/ParsedUsesPermission;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->addUsesPermission(Lcom/android/internal/pm/pkg/component/ParsedUsesPermission;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist addUsesSdkLibrary(Ljava/lang/String;J[Ljava/lang/String;Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 7

    .line 732
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesSdkLibraries:Ljava/util/List;

    .line 733
    invoke-static {p1}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 732
    invoke-static {v0, p1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesSdkLibraries:Ljava/util/List;

    .line 734
    iget-object p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesSdkLibrariesVersionsMajor:[J

    const/4 v0, 0x1

    invoke-static {p1, p2, p3, v0}, Lcom/android/internal/util/ArrayUtils;->appendLong([JJZ)[J

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesSdkLibrariesVersionsMajor:[J

    .line 736
    const-class p1, [Ljava/lang/String;

    iget-object p2, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesSdkLibrariesCertDigests:[[Ljava/lang/String;

    invoke-static {p1, p2, p4, v0}, Lcom/android/internal/util/ArrayUtils;->appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;Z)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[Ljava/lang/String;

    iput-object p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesSdkLibrariesCertDigests:[[Ljava/lang/String;

    .line 738
    iget-object p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesSdkLibrariesOptional:[Z

    invoke-static {p1, p5}, Lcom/android/internal/util/ArrayUtils;->appendBooleanDuplicatesAllowed([ZZ)[Z

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesSdkLibrariesOptional:[Z

    .line 740
    return-object p0
.end method

.method public bridge synthetic blacklist addUsesSdkLibrary(Ljava/lang/String;J[Ljava/lang/String;Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 111
    invoke-virtual/range {p0 .. p5}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->addUsesSdkLibrary(Ljava/lang/String;J[Ljava/lang/String;Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist addUsesStaticLibrary(Ljava/lang/String;J[Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 6

    .line 746
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesStaticLibraries:Ljava/util/List;

    .line 747
    invoke-static {p1}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 746
    invoke-static {v0, p1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesStaticLibraries:Ljava/util/List;

    .line 748
    iget-object p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesStaticLibrariesVersions:[J

    const/4 v0, 0x1

    invoke-static {p1, p2, p3, v0}, Lcom/android/internal/util/ArrayUtils;->appendLong([JJZ)[J

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesStaticLibrariesVersions:[J

    .line 750
    const-class p1, [Ljava/lang/String;

    iget-object p2, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesStaticLibrariesCertDigests:[[Ljava/lang/String;

    invoke-static {p1, p2, p4, v0}, Lcom/android/internal/util/ArrayUtils;->appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;Z)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[Ljava/lang/String;

    iput-object p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesStaticLibrariesCertDigests:[[Ljava/lang/String;

    .line 752
    return-object p0
.end method

.method public bridge synthetic blacklist addUsesStaticLibrary(Ljava/lang/String;J[Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->addUsesStaticLibrary(Ljava/lang/String;J[Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist asSplit([Ljava/lang/String;[Ljava/lang/String;[ILandroid/util/SparseArray;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[I",
            "Landroid/util/SparseArray<",
            "[I>;)",
            "Lcom/android/internal/pm/parsing/pkg/PackageImpl;"
        }
    .end annotation

    .line 763
    iput-object p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->splitNames:[Ljava/lang/String;

    .line 764
    iput-object p2, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->splitCodePaths:[Ljava/lang/String;

    .line 765
    iput-object p3, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->splitRevisionCodes:[I

    .line 766
    iput-object p4, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->splitDependencies:Landroid/util/SparseArray;

    .line 768
    array-length p1, p1

    .line 769
    new-array p2, p1, [I

    iput-object p2, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->splitFlags:[I

    .line 770
    new-array p1, p1, [Ljava/lang/String;

    iput-object p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->splitClassLoaderNames:[Ljava/lang/String;

    .line 771
    return-object p0
.end method

.method public bridge synthetic blacklist asSplit([Ljava/lang/String;[Ljava/lang/String;[ILandroid/util/SparseArray;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->asSplit([Ljava/lang/String;[Ljava/lang/String;[ILandroid/util/SparseArray;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method protected blacklist assignDerivedFields()V
    .registers 3

    .line 775
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->volumeUuid:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/storage/StorageManager;->convert(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mStorageUuid:Ljava/util/UUID;

    .line 776
    iget v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->versionCodeMajor:I

    iget v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->versionCode:I

    invoke-static {v0, v1}, Landroid/content/pm/PackageInfo;->composeLongVersionCode(II)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mLongVersionCode:J

    .line 777
    return-void
.end method

.method public blacklist capPermissionPriorities()Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 4

    .line 3091
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->permissionGroups:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 3092
    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_19

    .line 3094
    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->permissionGroups:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/internal/pm/pkg/component/ComponentMutateUtils;->setPriority(Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;I)V

    .line 3092
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 3096
    :cond_19
    return-object p0
.end method

.method public bridge synthetic blacklist capPermissionPriorities()Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    .registers 2

    .line 111
    invoke-virtual {p0}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->capPermissionPriorities()Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object v0

    return-object v0
.end method

.method public blacklist clearAdoptPermissions()Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 2

    .line 2957
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->adoptPermissions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2958
    return-object p0
.end method

.method public bridge synthetic blacklist clearAdoptPermissions()Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    .registers 2

    .line 111
    invoke-virtual {p0}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->clearAdoptPermissions()Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object v0

    return-object v0
.end method

.method public blacklist clearOriginalPackages()Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 2

    .line 2951
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->originalPackages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2952
    return-object p0
.end method

.method public bridge synthetic blacklist clearOriginalPackages()Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    .registers 2

    .line 111
    invoke-virtual {p0}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->clearOriginalPackages()Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object v0

    return-object v0
.end method

.method public blacklist clearProtectedBroadcasts()Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 2

    .line 2945
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->protectedBroadcasts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2946
    return-object p0
.end method

.method public bridge synthetic blacklist clearProtectedBroadcasts()Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    .registers 2

    .line 111
    invoke-virtual {p0}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->clearProtectedBroadcasts()Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object v0

    return-object v0
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 3167
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getActivities()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/internal/pm/pkg/component/ParsedActivity;",
            ">;"
        }
    .end annotation

    .line 869
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->activities:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getAdoptPermissions()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 875
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->adoptPermissions:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getAlternateLauncherIconResIds()[I
    .registers 2

    .line 881
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mAlternateLauncherIconResIds:[I

    return-object v0
.end method

.method public blacklist getAlternateLauncherLabelResIds()[I
    .registers 2

    .line 887
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mAlternateLauncherLabelResIds:[I

    return-object v0
.end method

.method public blacklist getApexSystemServices()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/internal/pm/pkg/component/ParsedApexSystemService;",
            ">;"
        }
    .end annotation

    .line 893
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->apexSystemServices:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getAppComponentFactory()Ljava/lang/String;
    .registers 2

    .line 899
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->appComponentFactory:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getApplicationClassName()Ljava/lang/String;
    .registers 2

    .line 949
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->className:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getAttributions()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/internal/pm/pkg/component/ParsedAttribution;",
            ">;"
        }
    .end annotation

    .line 905
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->attributions:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getAutoRevokePermissions()I
    .registers 2

    .line 910
    iget v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->autoRevokePermissions:I

    return v0
.end method

.method public blacklist getBackupAgentName()Ljava/lang/String;
    .registers 2

    .line 916
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->backupAgentName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getBannerResourceId()I
    .registers 2

    .line 921
    iget v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->banner:I

    return v0
.end method

.method public blacklist getBaseApkPath()Ljava/lang/String;
    .registers 2

    .line 927
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mBaseApkPath:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getBaseAppDataCredentialProtectedDirForSystemUser()Ljava/lang/String;
    .registers 2

    .line 3790
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mBaseAppDataCredentialProtectedDirForSystemUser:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getBaseAppDataDeviceProtectedDirForSystemUser()Ljava/lang/String;
    .registers 2

    .line 3794
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mBaseAppDataDeviceProtectedDirForSystemUser:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getBaseRevisionCode()I
    .registers 2

    .line 932
    iget v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->baseRevisionCode:I

    return v0
.end method

.method public blacklist getCategory()I
    .registers 2

    .line 937
    iget v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->category:I

    return v0
.end method

.method public blacklist getClassLoaderName()Ljava/lang/String;
    .registers 2

    .line 943
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->classLoaderName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getCompatibleWidthLimitDp()I
    .registers 2

    .line 954
    iget v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->compatibleWidthLimitDp:I

    return v0
.end method

.method public blacklist getCompileSdkVersion()I
    .registers 2

    .line 959
    iget v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->compileSdkVersion:I

    return v0
.end method

.method public blacklist getCompileSdkVersionCodeName()Ljava/lang/String;
    .registers 2

    .line 965
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->compileSdkVersionCodeName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getConfigPreferences()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/ConfigurationInfo;",
            ">;"
        }
    .end annotation

    .line 971
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->configPreferences:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getDataExtractionRulesResourceId()I
    .registers 2

    .line 976
    iget v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->dataExtractionRules:I

    return v0
.end method

.method public blacklist getDescriptionResourceId()I
    .registers 2

    .line 981
    iget v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->descriptionRes:I

    return v0
.end method

.method public blacklist getEmergencyInstaller()Ljava/lang/String;
    .registers 2

    .line 1303
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mEmergencyInstaller:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getFeatureFlagState()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 3806
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mFeatureFlagState:Ljava/util/Map;

    return-object v0
.end method

.method public blacklist getFeatureGroups()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/FeatureGroupInfo;",
            ">;"
        }
    .end annotation

    .line 987
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->featureGroups:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getFullBackupContentResourceId()I
    .registers 2

    .line 992
    iget v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->fullBackupContent:I

    return v0
.end method

.method public blacklist getGwpAsanMode()I
    .registers 2

    .line 998
    iget v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->gwpAsanMode:I

    return v0
.end method

.method public blacklist getIconResourceId()I
    .registers 2

    .line 1003
    iget v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->iconRes:I

    return v0
.end method

.method public blacklist getImplicitPermissions()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1009
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->implicitPermissions:Ljava/util/Set;

    return-object v0
.end method

.method public blacklist getInstallLocation()I
    .registers 2

    .line 1014
    iget v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->installLocation:I

    return v0
.end method

.method public blacklist getInstrumentations()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/internal/pm/pkg/component/ParsedInstrumentation;",
            ">;"
        }
    .end annotation

    .line 1020
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->instrumentations:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getIntentMatchingFlags()I
    .registers 2

    .line 3783
    iget v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mIntentMatchingFlags:I

    return v0
.end method

.method public blacklist getKeySetMapping()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/security/PublicKey;",
            ">;>;"
        }
    .end annotation

    .line 1026
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->keySetMapping:Ljava/util/Map;

    return-object v0
.end method

.method public blacklist getKnownActivityEmbeddingCerts()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1032
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mKnownActivityEmbeddingCerts:Ljava/util/Set;

    return-object v0
.end method

.method public blacklist getLabelResourceId()I
    .registers 2

    .line 1037
    iget v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->labelRes:I

    return v0
.end method

.method public blacklist getLargestWidthLimitDp()I
    .registers 2

    .line 1042
    iget v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->largestWidthLimitDp:I

    return v0
.end method

.method public blacklist getLibraryNames()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1048
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->libraryNames:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getLocaleConfigResourceId()I
    .registers 2

    .line 1053
    iget v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mLocaleConfigRes:I

    return v0
.end method

.method public blacklist getLogoResourceId()I
    .registers 2

    .line 1058
    iget v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->logo:I

    return v0
.end method

.method public blacklist getLongVersionCode()J
    .registers 3

    .line 2877
    iget v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->versionCodeMajor:I

    iget v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->versionCode:I

    invoke-static {v0, v1}, Landroid/content/pm/PackageInfo;->composeLongVersionCode(II)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getManageSpaceActivityName()Ljava/lang/String;
    .registers 2

    .line 1064
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->manageSpaceActivityName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getManifestPackageName()Ljava/lang/String;
    .registers 2

    .line 3582
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->manifestPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getMaxAspectRatio()F
    .registers 2

    .line 1069
    iget v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->maxAspectRatio:F

    return v0
.end method

.method public blacklist getMaxSdkVersion()I
    .registers 2

    .line 1074
    iget v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->maxSdkVersion:I

    return v0
.end method

.method public blacklist getMemtagMode()I
    .registers 2

    .line 1080
    iget v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->memtagMode:I

    return v0
.end method

.method public blacklist getMetaData()Landroid/os/Bundle;
    .registers 2

    .line 1086
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->metaData:Landroid/os/Bundle;

    return-object v0
.end method

.method public blacklist getMimeGroups()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1092
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mimeGroups:Ljava/util/Set;

    return-object v0
.end method

.method public blacklist getMinAspectRatio()F
    .registers 2

    .line 1097
    iget v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->minAspectRatio:F

    return v0
.end method

.method public blacklist getMinExtensionVersions()Landroid/util/SparseIntArray;
    .registers 2

    .line 1103
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->minExtensionVersions:Landroid/util/SparseIntArray;

    return-object v0
.end method

.method public blacklist getMinSdkVersion()I
    .registers 2

    .line 1108
    iget v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->minSdkVersion:I

    return v0
.end method

.method public blacklist getNativeHeapZeroInitialized()I
    .registers 2

    .line 1114
    iget v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->nativeHeapZeroInitialized:I

    return v0
.end method

.method public blacklist getNativeLibraryDir()Ljava/lang/String;
    .registers 2

    .line 3592
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->nativeLibraryDir:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getNativeLibraryRootDir()Ljava/lang/String;
    .registers 2

    .line 3598
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->nativeLibraryRootDir:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getNetworkSecurityConfigResourceId()I
    .registers 2

    .line 1125
    iget v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->networkSecurityConfigRes:I

    return v0
.end method

.method public blacklist getNonLocalizedLabel()Ljava/lang/CharSequence;
    .registers 2

    .line 1131
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->nonLocalizedLabel:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public blacklist getOriginalPackages()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1137
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->originalPackages:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getOverlayCategory()Ljava/lang/String;
    .registers 2

    .line 1143
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->overlayCategory:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getOverlayPriority()I
    .registers 2

    .line 1148
    iget v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->overlayPriority:I

    return v0
.end method

.method public blacklist getOverlayTarget()Ljava/lang/String;
    .registers 2

    .line 1154
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->overlayTarget:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getOverlayTargetOverlayableName()Ljava/lang/String;
    .registers 2

    .line 1160
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->overlayTargetOverlayableName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getOverlayables()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1166
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->overlayables:Ljava/util/Map;

    return-object v0
.end method

.method public blacklist getPackageName()Ljava/lang/String;
    .registers 2

    .line 1172
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getPageSizeAppCompatFlags()I
    .registers 2

    .line 1120
    iget v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mPageSizeAppCompatFlags:I

    return v0
.end method

.method public blacklist getPath()Ljava/lang/String;
    .registers 2

    .line 1178
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mPath:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getPermission()Ljava/lang/String;
    .registers 2

    .line 1184
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->permission:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getPermissionGroups()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;",
            ">;"
        }
    .end annotation

    .line 1190
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->permissionGroups:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getPermissions()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/internal/pm/pkg/component/ParsedPermission;",
            ">;"
        }
    .end annotation

    .line 1196
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->permissions:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getPreferredActivityFilters()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;",
            ">;>;"
        }
    .end annotation

    .line 1202
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->preferredActivityFilters:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getPrimaryCpuAbi()Ljava/lang/String;
    .registers 2

    .line 3609
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->primaryCpuAbi:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getProcessName()Ljava/lang/String;
    .registers 2

    .line 1208
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->processName:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->processName:Ljava/lang/String;

    goto :goto_9

    :cond_7
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->packageName:Ljava/lang/String;

    :goto_9
    return-object v0
.end method

.method public blacklist getProcesses()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/internal/pm/pkg/component/ParsedProcess;",
            ">;"
        }
    .end annotation

    .line 1214
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->processes:Ljava/util/Map;

    return-object v0
.end method

.method public blacklist getProperties()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/content/pm/PackageManager$Property;",
            ">;"
        }
    .end annotation

    .line 1220
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mProperties:Ljava/util/Map;

    return-object v0
.end method

.method public blacklist getProtectedBroadcasts()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1226
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->protectedBroadcasts:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getProviders()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/internal/pm/pkg/component/ParsedProvider;",
            ">;"
        }
    .end annotation

    .line 1232
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->providers:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getQueriesIntents()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation

    .line 1238
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->queriesIntents:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getQueriesPackages()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1244
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->queriesPackages:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getQueriesProviders()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1250
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->queriesProviders:Ljava/util/Set;

    return-object v0
.end method

.method public blacklist getReceivers()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/internal/pm/pkg/component/ParsedActivity;",
            ">;"
        }
    .end annotation

    .line 1256
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->receivers:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getRequestedFeatures()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/FeatureInfo;",
            ">;"
        }
    .end annotation

    .line 1262
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->reqFeatures:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getRequestedPermissions()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1268
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesPermissionMapping:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getRequiredAccountType()Ljava/lang/String;
    .registers 2

    .line 1274
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->requiredAccountType:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getRequiresSmallestWidthDp()I
    .registers 2

    .line 1279
    iget v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->requiresSmallestWidthDp:I

    return v0
.end method

.method public blacklist getResizeableActivity()Ljava/lang/Boolean;
    .registers 2

    .line 1285
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->resizeableActivity:Ljava/lang/Boolean;

    return-object v0
.end method

.method public blacklist getRestrictUpdateHash()[B
    .registers 2

    .line 1291
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->restrictUpdateHash:[B

    return-object v0
.end method

.method public blacklist getRestrictedAccountType()Ljava/lang/String;
    .registers 2

    .line 1297
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->restrictedAccountType:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getRoundIconResourceId()I
    .registers 2

    .line 1308
    iget v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->roundIconRes:I

    return v0
.end method

.method public blacklist getSdkLibVersionMajor()I
    .registers 2

    .line 1319
    iget v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sdkLibVersionMajor:I

    return v0
.end method

.method public blacklist getSdkLibraryName()Ljava/lang/String;
    .registers 2

    .line 1314
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sdkLibraryName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getSecondaryCpuAbi()Ljava/lang/String;
    .registers 2

    .line 3615
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->secondaryCpuAbi:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getSecondaryNativeLibraryDir()Ljava/lang/String;
    .registers 2

    .line 3621
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->secondaryNativeLibraryDir:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getServices()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/internal/pm/pkg/component/ParsedService;",
            ">;"
        }
    .end annotation

    .line 1325
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->services:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getSharedUserId()Ljava/lang/String;
    .registers 2

    .line 1331
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sharedUserId:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getSharedUserLabelResourceId()I
    .registers 2

    .line 1336
    iget v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sharedUserLabel:I

    return v0
.end method

.method public blacklist getSigningDetails()Landroid/content/pm/SigningDetails;
    .registers 2

    .line 1342
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->signingDetails:Landroid/content/pm/SigningDetails;

    return-object v0
.end method

.method public blacklist getSplitClassLoaderNames()[Ljava/lang/String;
    .registers 2

    .line 1348
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->splitClassLoaderNames:[Ljava/lang/String;

    if-nez v0, :cond_7

    sget-object v0, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    goto :goto_9

    :cond_7
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->splitClassLoaderNames:[Ljava/lang/String;

    :goto_9
    return-object v0
.end method

.method public blacklist getSplitCodePaths()[Ljava/lang/String;
    .registers 2

    .line 1354
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->splitCodePaths:[Ljava/lang/String;

    if-nez v0, :cond_7

    sget-object v0, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    goto :goto_9

    :cond_7
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->splitCodePaths:[Ljava/lang/String;

    :goto_9
    return-object v0
.end method

.method public blacklist getSplitDependencies()Landroid/util/SparseArray;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "[I>;"
        }
    .end annotation

    .line 1360
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->splitDependencies:Landroid/util/SparseArray;

    if-nez v0, :cond_7

    sget-object v0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->EMPTY_INT_ARRAY_SPARSE_ARRAY:Landroid/util/SparseArray;

    goto :goto_9

    :cond_7
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->splitDependencies:Landroid/util/SparseArray;

    :goto_9
    return-object v0
.end method

.method public blacklist getSplitFlags()[I
    .registers 2

    .line 1366
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->splitFlags:[I

    return-object v0
.end method

.method public blacklist getSplitNames()[Ljava/lang/String;
    .registers 2

    .line 1372
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->splitNames:[Ljava/lang/String;

    if-nez v0, :cond_7

    sget-object v0, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    goto :goto_9

    :cond_7
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->splitNames:[Ljava/lang/String;

    :goto_9
    return-object v0
.end method

.method public blacklist getSplitRevisionCodes()[I
    .registers 2

    .line 1378
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->splitRevisionCodes:[I

    if-nez v0, :cond_7

    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    goto :goto_9

    :cond_7
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->splitRevisionCodes:[I

    :goto_9
    return-object v0
.end method

.method public blacklist getSplits()Ljava/util/List;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/pm/pkg/AndroidPackageSplit;",
            ">;"
        }
    .end annotation

    .line 816
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mSplits:Ljava/util/List;

    if-nez v0, :cond_9c

    .line 817
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 818
    new-instance v1, Lcom/android/internal/pm/pkg/AndroidPackageSplitImpl;

    .line 820
    invoke-virtual {p0}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBaseApkPath()Ljava/lang/String;

    move-result-object v3

    .line 821
    invoke-virtual {p0}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBaseRevisionCode()I

    move-result v4

    .line 822
    invoke-virtual {p0}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->isDeclaredHavingCode()Z

    move-result v2

    const/4 v7, 0x0

    if-eqz v2, :cond_1d

    const/4 v2, 0x4

    move v5, v2

    goto :goto_1e

    :cond_1d
    move v5, v7

    .line 823
    :goto_1e
    invoke-virtual {p0}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getClassLoaderName()Ljava/lang/String;

    move-result-object v6

    const/4 v2, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/pm/pkg/AndroidPackageSplitImpl;-><init>(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    .line 818
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 826
    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->splitNames:[Ljava/lang/String;

    if-eqz v1, :cond_52

    .line 827
    move v1, v7

    :goto_2e
    iget-object v2, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->splitNames:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_52

    .line 828
    new-instance v8, Lcom/android/internal/pm/pkg/AndroidPackageSplitImpl;

    iget-object v2, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->splitNames:[Ljava/lang/String;

    aget-object v9, v2, v1

    iget-object v2, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->splitCodePaths:[Ljava/lang/String;

    aget-object v10, v2, v1

    iget-object v2, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->splitRevisionCodes:[I

    aget v11, v2, v1

    iget-object v2, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->splitFlags:[I

    aget v12, v2, v1

    iget-object v2, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->splitClassLoaderNames:[Ljava/lang/String;

    aget-object v13, v2, v1

    invoke-direct/range {v8 .. v13}, Lcom/android/internal/pm/pkg/AndroidPackageSplitImpl;-><init>(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 827
    add-int/lit8 v1, v1, 0x1

    goto :goto_2e

    .line 838
    :cond_52
    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->splitDependencies:Landroid/util/SparseArray;

    if-eqz v1, :cond_96

    .line 839
    move v1, v7

    :goto_57
    iget-object v2, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->splitDependencies:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_96

    .line 840
    iget-object v2, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->splitDependencies:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 841
    iget-object v3, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->splitDependencies:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    .line 842
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 843
    array-length v5, v3

    move v6, v7

    :goto_74
    if-ge v6, v5, :cond_86

    aget v8, v3, v6

    .line 845
    if-ltz v8, :cond_83

    .line 846
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/pm/pkg/AndroidPackageSplit;

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 843
    :cond_83
    add-int/lit8 v6, v6, 0x1

    goto :goto_74

    .line 849
    :cond_86
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/pm/pkg/AndroidPackageSplitImpl;

    .line 850
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/pm/pkg/AndroidPackageSplitImpl;->fillDependencies(Ljava/util/List;)V

    .line 839
    add-int/lit8 v1, v1, 0x1

    goto :goto_57

    .line 854
    :cond_96
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mSplits:Ljava/util/List;

    .line 856
    :cond_9c
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mSplits:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getStaticSharedLibraryName()Ljava/lang/String;
    .registers 2

    .line 1384
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->staticSharedLibraryName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getStaticSharedLibraryVersion()J
    .registers 3

    .line 1389
    iget-wide v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->staticSharedLibVersion:J

    return-wide v0
.end method

.method public blacklist getStorageUuid()Ljava/util/UUID;
    .registers 2

    .line 1394
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mStorageUuid:Ljava/util/UUID;

    return-object v0
.end method

.method public blacklist getTargetSandboxVersion()I
    .registers 2

    .line 1399
    iget v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->targetSandboxVersion:I

    return v0
.end method

.method public blacklist getTargetSdkVersion()I
    .registers 2

    .line 1404
    iget v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->targetSdkVersion:I

    return v0
.end method

.method public blacklist getTaskAffinity()Ljava/lang/String;
    .registers 2

    .line 1410
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->taskAffinity:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getThemeResourceId()I
    .registers 2

    .line 1415
    iget v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->theme:I

    return v0
.end method

.method public blacklist getUiOptions()I
    .registers 2

    .line 1420
    iget v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->uiOptions:I

    return v0
.end method

.method public blacklist getUid()I
    .registers 2

    .line 3689
    iget v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->uid:I

    return v0
.end method

.method public blacklist getUpgradeKeySets()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1426
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->upgradeKeySets:Ljava/util/Set;

    return-object v0
.end method

.method public blacklist getUsesLibraries()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1432
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesLibraries:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getUsesLibrariesSorted()[Ljava/lang/String;
    .registers 2

    .line 1438
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mUsesLibrariesSorted:[Ljava/lang/String;

    if-nez v0, :cond_c

    .line 1443
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesLibraries:Ljava/util/List;

    invoke-static {v0}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sortLibraries(Ljava/util/List;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mUsesLibrariesSorted:[Ljava/lang/String;

    .line 1445
    :cond_c
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mUsesLibrariesSorted:[Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getUsesNativeLibraries()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1451
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesNativeLibraries:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getUsesOptionalLibraries()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1457
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesOptionalLibraries:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getUsesOptionalLibrariesSorted()[Ljava/lang/String;
    .registers 2

    .line 1463
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mUsesOptionalLibrariesSorted:[Ljava/lang/String;

    if-nez v0, :cond_c

    .line 1464
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesOptionalLibraries:Ljava/util/List;

    invoke-static {v0}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sortLibraries(Ljava/util/List;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mUsesOptionalLibrariesSorted:[Ljava/lang/String;

    .line 1466
    :cond_c
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mUsesOptionalLibrariesSorted:[Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getUsesOptionalNativeLibraries()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1472
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesOptionalNativeLibraries:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getUsesPermissionMapping()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/internal/pm/pkg/component/ParsedUsesPermission;",
            ">;"
        }
    .end annotation

    .line 1478
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesPermissionMapping:Ljava/util/Map;

    return-object v0
.end method

.method public blacklist getUsesSdkLibraries()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1484
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesSdkLibraries:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getUsesSdkLibrariesCertDigests()[[Ljava/lang/String;
    .registers 2

    .line 1498
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesSdkLibrariesCertDigests:[[Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getUsesSdkLibrariesOptional()[Z
    .registers 2

    .line 1507
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesSdkLibrariesOptional:[Z

    return-object v0
.end method

.method public blacklist getUsesSdkLibrariesSorted()[Ljava/lang/String;
    .registers 2

    .line 1490
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mUsesSdkLibrariesSorted:[Ljava/lang/String;

    if-nez v0, :cond_c

    .line 1491
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesSdkLibraries:Ljava/util/List;

    invoke-static {v0}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sortLibraries(Ljava/util/List;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mUsesSdkLibrariesSorted:[Ljava/lang/String;

    .line 1493
    :cond_c
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mUsesSdkLibrariesSorted:[Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getUsesSdkLibrariesVersionsMajor()[J
    .registers 2

    .line 1502
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesSdkLibrariesVersionsMajor:[J

    return-object v0
.end method

.method public blacklist getUsesStaticLibraries()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1513
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesStaticLibraries:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getUsesStaticLibrariesCertDigests()[[Ljava/lang/String;
    .registers 2

    .line 1528
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesStaticLibrariesCertDigests:[[Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getUsesStaticLibrariesSorted()[Ljava/lang/String;
    .registers 2

    .line 1519
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mUsesStaticLibrariesSorted:[Ljava/lang/String;

    if-nez v0, :cond_c

    .line 1520
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesStaticLibraries:Ljava/util/List;

    invoke-static {v0}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sortLibraries(Ljava/util/List;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mUsesStaticLibrariesSorted:[Ljava/lang/String;

    .line 1522
    :cond_c
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mUsesStaticLibrariesSorted:[Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getUsesStaticLibrariesVersions()[J
    .registers 2

    .line 1534
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesStaticLibrariesVersions:[J

    return-object v0
.end method

.method public blacklist getVersionCode()I
    .registers 2

    .line 1539
    iget v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->versionCode:I

    return v0
.end method

.method public blacklist getVersionCodeMajor()I
    .registers 2

    .line 1544
    iget v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->versionCodeMajor:I

    return v0
.end method

.method public blacklist getVersionName()Ljava/lang/String;
    .registers 2

    .line 1550
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->versionName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getVolumeUuid()Ljava/lang/String;
    .registers 2

    .line 1556
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->volumeUuid:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getZygotePreloadName()Ljava/lang/String;
    .registers 2

    .line 1562
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->zygotePreloadName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist hasPreserveLegacyExternalStorage()Z
    .registers 3

    .line 1572
    const-wide v0, 0x2000000000L

    invoke-direct {p0, v0, v1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public blacklist hasRequestForegroundServiceExemption()Z
    .registers 3

    .line 1577
    const-wide v0, 0x400000000000L

    invoke-direct {p0, v0, v1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public blacklist hasRequestRawExternalStorageAccess()Ljava/lang/Boolean;
    .registers 2

    .line 1583
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->requestRawExternalStorageAccess:Ljava/lang/Boolean;

    return-object v0
.end method

.method public blacklist hideAsFinal()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;
    .registers 2

    .line 2801
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mStorageUuid:Ljava/util/UUID;

    if-nez v0, :cond_7

    .line 2802
    invoke-virtual {p0}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->assignDerivedFields()V

    .line 2804
    :cond_7
    invoke-direct {p0}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->assignDerivedFields2()V

    .line 2805
    invoke-direct {p0}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->makeImmutable()V

    .line 2806
    return-object p0
.end method

.method public blacklist hideAsParsed()Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 1

    .line 2795
    invoke-virtual {p0}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->assignDerivedFields()V

    .line 2796
    return-object p0
.end method

.method public bridge synthetic blacklist hideAsParsed()Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    .registers 2

    .line 111
    invoke-virtual {p0}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->hideAsParsed()Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object v0

    return-object v0
.end method

.method public blacklist is32BitAbiPreferred()Z
    .registers 3

    .line 1852
    const-wide v0, 0x10000000000L

    invoke-direct {p0, v0, v1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public blacklist isAllowAudioPlaybackCapture()Z
    .registers 3

    .line 1588
    const-wide v0, 0x80000000L

    invoke-direct {p0, v0, v1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public blacklist isAllowCrossUidActivitySwitchFromBelow()Z
    .registers 2

    .line 1567
    iget-boolean v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mAllowCrossUidActivitySwitchFromBelow:Z

    return v0
.end method

.method public blacklist isAllowNativeHeapPointerTagging()Z
    .registers 3

    .line 1608
    const-wide v0, 0x1000000000L

    invoke-direct {p0, v0, v1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public blacklist isAnyDensity()Z
    .registers 3

    .line 1617
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->anyDensity:Ljava/lang/Boolean;

    if-nez v0, :cond_d

    .line 1618
    iget v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->targetSdkVersion:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0

    .line 1621
    :cond_d
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->anyDensity:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public blacklist isApex()Z
    .registers 3

    .line 3646
    const-wide/16 v0, 0x2

    invoke-direct {p0, v0, v1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBoolean2(J)Z

    move-result v0

    return v0
.end method

.method public blacklist isAttributionsUserVisible()Z
    .registers 3

    .line 757
    const-wide v0, 0x800000000000L

    invoke-direct {p0, v0, v1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public blacklist isBackupAllowed()Z
    .registers 3

    .line 1593
    const-wide/16 v0, 0x4

    invoke-direct {p0, v0, v1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public blacklist isBackupInForeground()Z
    .registers 3

    .line 1626
    const-wide/32 v0, 0x1000000

    invoke-direct {p0, v0, v1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public blacklist isClearUserDataAllowed()Z
    .registers 3

    .line 1598
    const-wide/16 v0, 0x800

    invoke-direct {p0, v0, v1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public blacklist isClearUserDataOnFailedRestoreAllowed()Z
    .registers 3

    .line 1603
    const-wide/32 v0, 0x40000000

    invoke-direct {p0, v0, v1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public blacklist isCleartextTrafficAllowed()Z
    .registers 3

    .line 1862
    const-wide/16 v0, 0x2000

    invoke-direct {p0, v0, v1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public blacklist isCoreApp()Z
    .registers 3

    .line 3626
    const-wide/high16 v0, 0x10000000000000L

    invoke-direct {p0, v0, v1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public blacklist isCrossProfile()Z
    .registers 3

    .line 1641
    const-wide v0, 0x80000000000L

    invoke-direct {p0, v0, v1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public blacklist isDebuggable()Z
    .registers 3

    .line 1646
    const-wide/16 v0, 0x80

    invoke-direct {p0, v0, v1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public blacklist isDeclaredHavingCode()Z
    .registers 3

    .line 1691
    const-wide/16 v0, 0x200

    invoke-direct {p0, v0, v1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public blacklist isDefaultToDeviceProtectedStorage()Z
    .registers 3

    .line 1651
    const-wide/32 v0, 0x4000000

    invoke-direct {p0, v0, v1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public blacklist isDirectBootAware()Z
    .registers 3

    .line 1656
    const-wide/32 v0, 0x8000000

    invoke-direct {p0, v0, v1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public blacklist isEnabled()Z
    .registers 3

    .line 1661
    const-wide v0, 0x100000000000L

    invoke-direct {p0, v0, v1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public blacklist isExternalStorage()Z
    .registers 3

    .line 1666
    const-wide/16 v0, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public blacklist isExtraLargeScreensSupported()Z
    .registers 3

    .line 1813
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->supportsExtraLargeScreens:Ljava/lang/Boolean;

    if-nez v0, :cond_e

    .line 1814
    iget v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->targetSdkVersion:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0

    .line 1817
    :cond_e
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->supportsExtraLargeScreens:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public blacklist isExtractNativeLibrariesRequested()Z
    .registers 3

    .line 1671
    const-wide/32 v0, 0x20000

    invoke-direct {p0, v0, v1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public blacklist isFactoryTest()Z
    .registers 3

    .line 3641
    const-wide/high16 v0, 0x40000000000000L

    invoke-direct {p0, v0, v1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public blacklist isForceQueryable()Z
    .registers 3

    .line 1676
    const-wide v0, 0x40000000000L

    invoke-direct {p0, v0, v1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public blacklist isFullBackupOnly()Z
    .registers 3

    .line 1681
    const-wide/16 v0, 0x20

    invoke-direct {p0, v0, v1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public blacklist isGame()Z
    .registers 3

    .line 1686
    const-wide/32 v0, 0x40000

    invoke-direct {p0, v0, v1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public blacklist isHardwareAccelerated()Z
    .registers 3

    .line 1631
    const-wide/16 v0, 0x2

    invoke-direct {p0, v0, v1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public blacklist isHasDomainUrls()Z
    .registers 3

    .line 1696
    const-wide/32 v0, 0x400000

    invoke-direct {p0, v0, v1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public blacklist isIsolatedSplitLoading()Z
    .registers 3

    .line 1706
    const-wide/32 v0, 0x200000

    invoke-direct {p0, v0, v1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public blacklist isKillAfterRestoreAllowed()Z
    .registers 3

    .line 1711
    const-wide/16 v0, 0x8

    invoke-direct {p0, v0, v1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public blacklist isLargeHeap()Z
    .registers 3

    .line 1716
    const-wide/16 v0, 0x1000

    invoke-direct {p0, v0, v1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public blacklist isLargeScreensSupported()Z
    .registers 3

    .line 1821
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->supportsLargeScreens:Ljava/lang/Boolean;

    if-nez v0, :cond_d

    .line 1822
    iget v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->targetSdkVersion:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0

    .line 1825
    :cond_d
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->supportsLargeScreens:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public blacklist isLeavingSharedUser()Z
    .registers 3

    .line 1721
    const-wide/high16 v0, 0x8000000000000L

    invoke-direct {p0, v0, v1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public blacklist isMultiArch()Z
    .registers 3

    .line 1726
    const-wide/32 v0, 0x10000

    invoke-direct {p0, v0, v1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public blacklist isNativeLibraryRootRequiresIsa()Z
    .registers 2

    .line 3603
    iget-boolean v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->nativeLibraryRootRequiresIsa:Z

    return v0
.end method

.method public blacklist isNonSdkApiRequested()Z
    .registers 3

    .line 1867
    const-wide v0, 0x200000000L

    invoke-direct {p0, v0, v1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public blacklist isNormalScreensSupported()Z
    .registers 2

    .line 1829
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->supportsNormalScreens:Ljava/lang/Boolean;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->supportsNormalScreens:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method public blacklist isOdm()Z
    .registers 3

    .line 3676
    const-wide/high16 v0, 0x2000000000000000L

    invoke-direct {p0, v0, v1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public blacklist isOem()Z
    .registers 3

    .line 3661
    const-wide/high16 v0, 0x400000000000000L

    invoke-direct {p0, v0, v1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public blacklist isOnBackInvokedCallbackEnabled()Z
    .registers 3

    .line 1731
    const-wide/high16 v0, 0x4000000000000L

    invoke-direct {p0, v0, v1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public blacklist isOverlayIsStatic()Z
    .registers 3

    .line 1746
    const-wide v0, 0x8000000000L

    invoke-direct {p0, v0, v1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public blacklist isPartiallyDirectBootAware()Z
    .registers 3

    .line 1751
    const-wide/32 v0, 0x10000000

    invoke-direct {p0, v0, v1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public blacklist isPersistent()Z
    .registers 3

    .line 1756
    const-wide/16 v0, 0x40

    invoke-direct {p0, v0, v1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public blacklist isPrivileged()Z
    .registers 3

    .line 3656
    const-wide/high16 v0, 0x200000000000000L

    invoke-direct {p0, v0, v1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public blacklist isProduct()Z
    .registers 3

    .line 3671
    const-wide/high16 v0, 0x1000000000000000L

    invoke-direct {p0, v0, v1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public blacklist isProfileable()Z
    .registers 3

    .line 1761
    const-wide v0, 0x200000000000L

    invoke-direct {p0, v0, v1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public blacklist isProfileableByShell()Z
    .registers 3

    .line 1766
    invoke-virtual {p0}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->isProfileable()Z

    move-result v0

    if-eqz v0, :cond_11

    const-wide/32 v0, 0x800000

    invoke-direct {p0, v0, v1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result v0

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    return v0
.end method

.method public blacklist isRequestLegacyExternalStorage()Z
    .registers 3

    .line 1771
    const-wide v0, 0x100000000L

    invoke-direct {p0, v0, v1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public blacklist isRequiredForAllUsers()Z
    .registers 3

    .line 1776
    const-wide v0, 0x4000000000L

    invoke-direct {p0, v0, v1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public blacklist isResetEnabledSettingsOnAppDataCleared()Z
    .registers 3

    .line 1781
    const-wide/high16 v0, 0x1000000000000L

    invoke-direct {p0, v0, v1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public blacklist isResizeable()Z
    .registers 3

    .line 1785
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->resizeable:Ljava/lang/Boolean;

    if-nez v0, :cond_d

    .line 1786
    iget v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->targetSdkVersion:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0

    .line 1789
    :cond_d
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->resizeable:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public blacklist isResizeableActivityViaSdkVersion()Z
    .registers 3

    .line 1794
    const-wide/32 v0, 0x20000000

    invoke-direct {p0, v0, v1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public blacklist isResourceOverlay()Z
    .registers 3

    .line 1741
    const-wide/32 v0, 0x100000

    invoke-direct {p0, v0, v1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public blacklist isRestoreAnyVersion()Z
    .registers 3

    .line 1799
    const-wide/16 v0, 0x10

    invoke-direct {p0, v0, v1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public blacklist isRtlSupported()Z
    .registers 3

    .line 1834
    const-wide/16 v0, 0x4000

    invoke-direct {p0, v0, v1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public blacklist isSaveStateDisallowed()Z
    .registers 3

    .line 1636
    const-wide v0, 0x800000000L

    invoke-direct {p0, v0, v1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public blacklist isSdkLibrary()Z
    .registers 3

    .line 1804
    const-wide/high16 v0, 0x2000000000000L

    invoke-direct {p0, v0, v1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public blacklist isSignedWithPlatformKey()Z
    .registers 3

    .line 3681
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public blacklist isSmallScreensSupported()Z
    .registers 3

    .line 1838
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->supportsSmallScreens:Ljava/lang/Boolean;

    if-nez v0, :cond_d

    .line 1839
    iget v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->targetSdkVersion:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0

    .line 1842
    :cond_d
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->supportsSmallScreens:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public blacklist isStaticSharedLibrary()Z
    .registers 3

    .line 1809
    const-wide/32 v0, 0x80000

    invoke-direct {p0, v0, v1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public blacklist isStub()Z
    .registers 3

    .line 3586
    const-wide/16 v0, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBoolean2(J)Z

    move-result v0

    return v0
.end method

.method public blacklist isSystem()Z
    .registers 3

    .line 3631
    const-wide/high16 v0, 0x20000000000000L

    invoke-direct {p0, v0, v1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public blacklist isSystemExt()Z
    .registers 3

    .line 3651
    const-wide/high16 v0, 0x100000000000000L

    invoke-direct {p0, v0, v1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public blacklist isTaskReparentingAllowed()Z
    .registers 3

    .line 1613
    const-wide/16 v0, 0x400

    invoke-direct {p0, v0, v1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public blacklist isTestOnly()Z
    .registers 3

    .line 1847
    const-wide/32 v0, 0x8000

    invoke-direct {p0, v0, v1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public blacklist isUpdatableSystem()Z
    .registers 3

    .line 3636
    const-wide/16 v0, 0x4

    invoke-direct {p0, v0, v1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBoolean2(J)Z

    move-result v0

    return v0
.end method

.method public blacklist isUseEmbeddedDex()Z
    .registers 3

    .line 1857
    const-wide/32 v0, 0x2000000

    invoke-direct {p0, v0, v1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public blacklist isUserDataFragile()Z
    .registers 3

    .line 1701
    const-wide v0, 0x400000000L

    invoke-direct {p0, v0, v1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public blacklist isVendor()Z
    .registers 3

    .line 3666
    const-wide/high16 v0, 0x800000000000000L

    invoke-direct {p0, v0, v1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public blacklist isVisibleToInstantApps()Z
    .registers 3

    .line 1872
    const-wide v0, 0x20000000000L

    invoke-direct {p0, v0, v1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public blacklist isVmSafeMode()Z
    .registers 3

    .line 1877
    const-wide/16 v0, 0x100

    invoke-direct {p0, v0, v1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public blacklist markNotActivitiesAsNotExportedIfSingleUser()Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 7

    .line 3102
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->receivers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 3103
    const/4 v1, 0x0

    move v2, v1

    :goto_8
    const/high16 v3, 0x40000000    # 2.0f

    if-ge v2, v0, :cond_21

    .line 3104
    iget-object v4, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->receivers:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/pm/pkg/component/ParsedActivity;

    .line 3105
    invoke-interface {v4}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getFlags()I

    move-result v5

    and-int/2addr v3, v5

    if-eqz v3, :cond_1e

    .line 3106
    invoke-static {v4, v1}, Lcom/android/internal/pm/pkg/component/ComponentMutateUtils;->setExported(Lcom/android/internal/pm/pkg/component/ParsedMainComponent;Z)V

    .line 3103
    :cond_1e
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 3111
    :cond_21
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->services:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 3112
    move v2, v1

    :goto_28
    if-ge v2, v0, :cond_3f

    .line 3113
    iget-object v4, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->services:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/pm/pkg/component/ParsedService;

    .line 3114
    invoke-interface {v4}, Lcom/android/internal/pm/pkg/component/ParsedService;->getFlags()I

    move-result v5

    and-int/2addr v5, v3

    if-eqz v5, :cond_3c

    .line 3115
    invoke-static {v4, v1}, Lcom/android/internal/pm/pkg/component/ComponentMutateUtils;->setExported(Lcom/android/internal/pm/pkg/component/ParsedMainComponent;Z)V

    .line 3112
    :cond_3c
    add-int/lit8 v2, v2, 0x1

    goto :goto_28

    .line 3120
    :cond_3f
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->providers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 3121
    move v2, v1

    :goto_46
    if-ge v2, v0, :cond_5d

    .line 3122
    iget-object v4, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->providers:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/pm/pkg/component/ParsedProvider;

    .line 3123
    invoke-interface {v4}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->getFlags()I

    move-result v5

    and-int/2addr v5, v3

    if-eqz v5, :cond_5a

    .line 3124
    invoke-static {v4, v1}, Lcom/android/internal/pm/pkg/component/ComponentMutateUtils;->setExported(Lcom/android/internal/pm/pkg/component/ParsedMainComponent;Z)V

    .line 3121
    :cond_5a
    add-int/lit8 v2, v2, 0x1

    goto :goto_46

    .line 3128
    :cond_5d
    return-object p0
.end method

.method public bridge synthetic blacklist markNotActivitiesAsNotExportedIfSingleUser()Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    .registers 2

    .line 111
    invoke-virtual {p0}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->markNotActivitiesAsNotExportedIfSingleUser()Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object v0

    return-object v0
.end method

.method public blacklist removePermission(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 3

    .line 2882
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->permissions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2883
    return-object p0
.end method

.method public bridge synthetic blacklist removePermission(I)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->removePermission(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist removeUsesLibrary(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 3

    .line 2902
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesLibraries:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/android/internal/util/CollectionUtils;->remove(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesLibraries:Ljava/util/List;

    .line 2903
    return-object p0
.end method

.method public bridge synthetic blacklist removeUsesLibrary(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->removeUsesLibrary(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist removeUsesOptionalLibrary(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 3

    .line 2908
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesOptionalLibraries:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/android/internal/util/CollectionUtils;->remove(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesOptionalLibraries:Ljava/util/List;

    .line 2910
    return-object p0
.end method

.method public bridge synthetic blacklist removeUsesOptionalLibrary(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->removeUsesOptionalLibrary(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist removeUsesOptionalLibrary(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->removeUsesOptionalLibrary(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist removeUsesOptionalNativeLibrary(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 3

    .line 1881
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesOptionalNativeLibraries:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/android/internal/util/CollectionUtils;->remove(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesOptionalNativeLibraries:Ljava/util/List;

    .line 1883
    return-object p0
.end method

.method public bridge synthetic blacklist removeUsesOptionalNativeLibrary(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->removeUsesOptionalNativeLibrary(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist set32BitAbiPreferred(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 4

    .line 2569
    const-wide v0, 0x10000000000L

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist set32BitAbiPreferred(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->set32BitAbiPreferred(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setAllComponentsDirectBootAware(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 6

    .line 3013
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->activities:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 3014
    const/4 v1, 0x0

    move v2, v1

    :goto_8
    if-ge v2, v0, :cond_18

    .line 3015
    iget-object v3, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->activities:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/pm/pkg/component/ParsedMainComponent;

    invoke-static {v3, p1}, Lcom/android/internal/pm/pkg/component/ComponentMutateUtils;->setDirectBootAware(Lcom/android/internal/pm/pkg/component/ParsedMainComponent;Z)V

    .line 3014
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 3019
    :cond_18
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->receivers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 3020
    move v2, v1

    :goto_1f
    if-ge v2, v0, :cond_2f

    .line 3021
    iget-object v3, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->receivers:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/pm/pkg/component/ParsedMainComponent;

    invoke-static {v3, p1}, Lcom/android/internal/pm/pkg/component/ComponentMutateUtils;->setDirectBootAware(Lcom/android/internal/pm/pkg/component/ParsedMainComponent;Z)V

    .line 3020
    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    .line 3025
    :cond_2f
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->providers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 3026
    move v2, v1

    :goto_36
    if-ge v2, v0, :cond_46

    .line 3027
    iget-object v3, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->providers:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/pm/pkg/component/ParsedMainComponent;

    invoke-static {v3, p1}, Lcom/android/internal/pm/pkg/component/ComponentMutateUtils;->setDirectBootAware(Lcom/android/internal/pm/pkg/component/ParsedMainComponent;Z)V

    .line 3026
    add-int/lit8 v2, v2, 0x1

    goto :goto_36

    .line 3031
    :cond_46
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->services:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 3032
    nop

    :goto_4d
    if-ge v1, v0, :cond_5d

    .line 3033
    iget-object v2, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->services:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/pm/pkg/component/ParsedMainComponent;

    invoke-static {v2, p1}, Lcom/android/internal/pm/pkg/component/ComponentMutateUtils;->setDirectBootAware(Lcom/android/internal/pm/pkg/component/ParsedMainComponent;Z)V

    .line 3032
    add-int/lit8 v1, v1, 0x1

    goto :goto_4d

    .line 3037
    :cond_5d
    return-object p0
.end method

.method public bridge synthetic blacklist setAllComponentsDirectBootAware(Z)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setAllComponentsDirectBootAware(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setAllowAudioPlaybackCapture(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 4

    .line 1888
    const-wide v0, 0x80000000L

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist setAllowAudioPlaybackCapture(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setAllowAudioPlaybackCapture(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setAllowCrossUidActivitySwitchFromBelow(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 2259
    iput-boolean p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mAllowCrossUidActivitySwitchFromBelow:Z

    .line 2260
    return-object p0
.end method

.method public blacklist setAllowNativeHeapPointerTagging(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 4

    .line 1908
    const-wide v0, 0x1000000000L

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist setAllowNativeHeapPointerTagging(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setAllowNativeHeapPointerTagging(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setAlternateLauncherIconResIds([I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 2

    .line 1913
    iput-object p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mAlternateLauncherIconResIds:[I

    .line 1914
    return-object p0
.end method

.method public bridge synthetic blacklist setAlternateLauncherIconResIds([I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setAlternateLauncherIconResIds([I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setAlternateLauncherLabelResIds([I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 2

    .line 1920
    iput-object p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mAlternateLauncherLabelResIds:[I

    .line 1921
    return-object p0
.end method

.method public bridge synthetic blacklist setAlternateLauncherLabelResIds([I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setAlternateLauncherLabelResIds([I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setAnyDensity(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 3

    .line 1931
    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    .line 1932
    return-object p0

    .line 1935
    :cond_4
    if-gez p1, :cond_7

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->anyDensity:Ljava/lang/Boolean;

    .line 1936
    return-object p0
.end method

.method public bridge synthetic blacklist setAnyDensity(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setAnyDensity(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setApex(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 4

    .line 3723
    const-wide/16 v0, 0x2

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setBoolean2(JZ)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    .line 3724
    return-object p0
.end method

.method public bridge synthetic blacklist setApex(Z)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setApex(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setAppComponentFactory(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 2

    .line 1941
    iput-object p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->appComponentFactory:Ljava/lang/String;

    .line 1942
    return-object p0
.end method

.method public bridge synthetic blacklist setAppComponentFactory(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setAppComponentFactory(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setApplicationClassName(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 2

    .line 2004
    if-nez p1, :cond_4

    const/4 p1, 0x0

    goto :goto_8

    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    :goto_8
    iput-object p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->className:Ljava/lang/String;

    .line 2005
    return-object p0
.end method

.method public bridge synthetic blacklist setApplicationClassName(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setApplicationClassName(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setAttributionsAreUserVisible(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 4

    .line 1947
    const-wide v0, 0x800000000000L

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    .line 1948
    return-object p0
.end method

.method public blacklist setAutoRevokePermissions(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 2

    .line 1953
    iput p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->autoRevokePermissions:I

    .line 1954
    return-object p0
.end method

.method public bridge synthetic blacklist setAutoRevokePermissions(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setAutoRevokePermissions(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setBackupAgentName(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 2

    .line 1959
    iput-object p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->backupAgentName:Ljava/lang/String;

    .line 1960
    return-object p0
.end method

.method public bridge synthetic blacklist setBackupAgentName(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setBackupAgentName(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setBackupAllowed(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 4

    .line 1893
    const-wide/16 v0, 0x4

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist setBackupAllowed(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setBackupAllowed(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setBackupInForeground(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 4

    .line 1965
    const-wide/32 v0, 0x1000000

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist setBackupInForeground(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setBackupInForeground(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setBannerResourceId(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 2

    .line 1970
    iput p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->banner:I

    .line 1971
    return-object p0
.end method

.method public bridge synthetic blacklist setBannerResourceId(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setBannerResourceId(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setBaseApkPath(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 2

    .line 3042
    invoke-static {p1}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mBaseApkPath:Ljava/lang/String;

    .line 3043
    return-object p0
.end method

.method public bridge synthetic blacklist setBaseApkPath(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setBaseApkPath(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setBaseRevisionCode(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 2

    .line 1981
    iput p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->baseRevisionCode:I

    .line 1982
    return-object p0
.end method

.method public bridge synthetic blacklist setBaseRevisionCode(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setBaseRevisionCode(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setCategory(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 2

    .line 1992
    iput p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->category:I

    .line 1993
    return-object p0
.end method

.method public bridge synthetic blacklist setCategory(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setCategory(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setClassLoaderName(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 2

    .line 1998
    iput-object p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->classLoaderName:Ljava/lang/String;

    .line 1999
    return-object p0
.end method

.method public bridge synthetic blacklist setClassLoaderName(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setClassLoaderName(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setClearUserDataAllowed(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 4

    .line 1898
    const-wide/16 v0, 0x800

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist setClearUserDataAllowed(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setClearUserDataAllowed(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setClearUserDataOnFailedRestoreAllowed(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 4

    .line 1903
    const-wide/32 v0, 0x40000000

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist setClearUserDataOnFailedRestoreAllowed(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setClearUserDataOnFailedRestoreAllowed(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setCleartextTrafficAllowed(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 4

    .line 2579
    const-wide/16 v0, 0x2000

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist setCleartextTrafficAllowed(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setCleartextTrafficAllowed(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setCompatibleWidthLimitDp(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 2

    .line 2010
    iput p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->compatibleWidthLimitDp:I

    .line 2011
    return-object p0
.end method

.method public bridge synthetic blacklist setCompatibleWidthLimitDp(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setCompatibleWidthLimitDp(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setCompileSdkVersion(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 2

    .line 2016
    iput p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->compileSdkVersion:I

    .line 2017
    return-object p0
.end method

.method public bridge synthetic blacklist setCompileSdkVersion(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setCompileSdkVersion(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setCompileSdkVersionCodeName(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 2022
    iput-object p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->compileSdkVersionCodeName:Ljava/lang/String;

    .line 2023
    return-object p0
.end method

.method public blacklist setCoreApp(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 4

    .line 3133
    const-wide/high16 v0, 0x10000000000000L

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist setCoreApp(Z)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setCoreApp(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setCrossProfile(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 4

    .line 2028
    const-wide v0, 0x80000000000L

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist setCrossProfile(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setCrossProfile(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setDataExtractionRulesResourceId(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 2

    .line 2033
    iput p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->dataExtractionRules:I

    .line 2034
    return-object p0
.end method

.method public bridge synthetic blacklist setDataExtractionRulesResourceId(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setDataExtractionRulesResourceId(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setDebuggable(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 4

    .line 2039
    const-wide/16 v0, 0x80

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist setDebuggable(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setDebuggable(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setDeclaredHavingCode(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 4

    .line 2092
    const-wide/16 v0, 0x200

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist setDeclaredHavingCode(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setDeclaredHavingCode(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setDefaultToDeviceProtectedStorage(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 4

    .line 2933
    const-wide/32 v0, 0x4000000

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    .line 2934
    return-object p0
.end method

.method public bridge synthetic blacklist setDefaultToDeviceProtectedStorage(Z)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setDefaultToDeviceProtectedStorage(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist setDefaultToDeviceProtectedStorage(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setDefaultToDeviceProtectedStorage(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setDescriptionResourceId(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 2

    .line 2044
    iput p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->descriptionRes:I

    .line 2045
    return-object p0
.end method

.method public bridge synthetic blacklist setDescriptionResourceId(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setDescriptionResourceId(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setDirectBootAware(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 4

    .line 2939
    const-wide/32 v0, 0x8000000

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    .line 2940
    return-object p0
.end method

.method public bridge synthetic blacklist setDirectBootAware(Z)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setDirectBootAware(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist setDirectBootAware(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setDirectBootAware(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setEmergencyInstaller(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 2

    .line 2411
    iput-object p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mEmergencyInstaller:Ljava/lang/String;

    .line 2412
    return-object p0
.end method

.method public bridge synthetic blacklist setEmergencyInstaller(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setEmergencyInstaller(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist setEmergencyInstaller(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setEmergencyInstaller(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setEnabled(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 4

    .line 2050
    const-wide v0, 0x100000000000L

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist setEnabled(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setEnabled(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setExternalStorage(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 4

    .line 2055
    const-wide/16 v0, 0x1

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist setExternalStorage(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setExternalStorage(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setExtraLargeScreensSupported(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 3

    .line 2483
    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    .line 2484
    return-object p0

    .line 2487
    :cond_4
    if-gez p1, :cond_7

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->supportsExtraLargeScreens:Ljava/lang/Boolean;

    .line 2488
    return-object p0
.end method

.method public bridge synthetic blacklist setExtraLargeScreensSupported(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setExtraLargeScreensSupported(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setExtractNativeLibrariesRequested(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 4

    .line 2060
    const-wide/32 v0, 0x20000

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist setExtractNativeLibrariesRequested(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setExtractNativeLibrariesRequested(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setFactoryTest(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 4

    .line 3717
    const-wide/high16 v0, 0x40000000000000L

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    .line 3718
    return-object p0
.end method

.method public bridge synthetic blacklist setFactoryTest(Z)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setFactoryTest(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setForceQueryable(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 4

    .line 2065
    const-wide v0, 0x40000000000L

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist setForceQueryable(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setForceQueryable(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setFullBackupContentResourceId(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 2

    .line 2070
    iput p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->fullBackupContent:I

    .line 2071
    return-object p0
.end method

.method public bridge synthetic blacklist setFullBackupContentResourceId(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setFullBackupContentResourceId(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setFullBackupOnly(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 4

    .line 2076
    const-wide/16 v0, 0x20

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist setFullBackupOnly(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setFullBackupOnly(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setGame(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 4

    .line 2081
    const-wide/32 v0, 0x40000

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist setGame(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setGame(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setGwpAsanMode(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 2

    .line 2086
    iput p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->gwpAsanMode:I

    .line 2087
    return-object p0
.end method

.method public bridge synthetic blacklist setGwpAsanMode(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setGwpAsanMode(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setHardwareAccelerated(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 4

    .line 1976
    const-wide/16 v0, 0x2

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist setHardwareAccelerated(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setHardwareAccelerated(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setHasDomainUrls(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 4

    .line 2097
    const-wide/32 v0, 0x400000

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist setHasDomainUrls(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setHasDomainUrls(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setIconResourceId(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 2

    .line 2107
    iput p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->iconRes:I

    .line 2108
    return-object p0
.end method

.method public bridge synthetic blacklist setIconResourceId(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setIconResourceId(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setInstallLocation(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 2

    .line 2113
    iput p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->installLocation:I

    .line 2114
    return-object p0
.end method

.method public bridge synthetic blacklist setInstallLocation(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setInstallLocation(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setIntentMatchingFlags(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 3777
    iput p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mIntentMatchingFlags:I

    .line 3778
    return-object p0
.end method

.method public blacklist setIsolatedSplitLoading(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 4

    .line 2119
    const-wide/32 v0, 0x200000

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist setIsolatedSplitLoading(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setIsolatedSplitLoading(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setKillAfterRestoreAllowed(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 4

    .line 2124
    const-wide/16 v0, 0x8

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist setKillAfterRestoreAllowed(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setKillAfterRestoreAllowed(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setKnownActivityEmbeddingCerts(Ljava/util/Set;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;"
        }
    .end annotation

    .line 2129
    iput-object p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mKnownActivityEmbeddingCerts:Ljava/util/Set;

    .line 2130
    return-object p0
.end method

.method public blacklist setLabelResourceId(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 2

    .line 2135
    iput p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->labelRes:I

    .line 2136
    return-object p0
.end method

.method public bridge synthetic blacklist setLabelResourceId(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setLabelResourceId(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setLargeHeap(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 4

    .line 2141
    const-wide/16 v0, 0x1000

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist setLargeHeap(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setLargeHeap(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setLargeScreensSupported(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 3

    .line 2493
    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    .line 2494
    return-object p0

    .line 2497
    :cond_4
    if-gez p1, :cond_7

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->supportsLargeScreens:Ljava/lang/Boolean;

    .line 2498
    return-object p0
.end method

.method public bridge synthetic blacklist setLargeScreensSupported(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setLargeScreensSupported(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setLargestWidthLimitDp(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 2

    .line 2146
    iput p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->largestWidthLimitDp:I

    .line 2147
    return-object p0
.end method

.method public bridge synthetic blacklist setLargestWidthLimitDp(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setLargestWidthLimitDp(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setLeavingSharedUser(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 4

    .line 2152
    const-wide/high16 v0, 0x8000000000000L

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist setLeavingSharedUser(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setLeavingSharedUser(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setLocaleConfigResourceId(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 2

    .line 2157
    iput p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mLocaleConfigRes:I

    .line 2158
    return-object p0
.end method

.method public bridge synthetic blacklist setLocaleConfigResourceId(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setLocaleConfigResourceId(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setLogoResourceId(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 2

    .line 2163
    iput p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->logo:I

    .line 2164
    return-object p0
.end method

.method public bridge synthetic blacklist setLogoResourceId(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setLogoResourceId(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setManageSpaceActivityName(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 2

    .line 2169
    iput-object p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->manageSpaceActivityName:Ljava/lang/String;

    .line 2170
    return-object p0
.end method

.method public bridge synthetic blacklist setManageSpaceActivityName(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setManageSpaceActivityName(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setMaxAspectRatio(F)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 2

    .line 2175
    iput p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->maxAspectRatio:F

    .line 2176
    return-object p0
.end method

.method public bridge synthetic blacklist setMaxAspectRatio(F)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setMaxAspectRatio(F)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setMaxSdkVersion(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 2

    .line 2181
    iput p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->maxSdkVersion:I

    .line 2182
    return-object p0
.end method

.method public bridge synthetic blacklist setMaxSdkVersion(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setMaxSdkVersion(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setMemtagMode(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 2

    .line 2187
    iput p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->memtagMode:I

    .line 2188
    return-object p0
.end method

.method public bridge synthetic blacklist setMemtagMode(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setMemtagMode(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setMetaData(Landroid/os/Bundle;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 2

    .line 2193
    iput-object p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->metaData:Landroid/os/Bundle;

    .line 2194
    return-object p0
.end method

.method public bridge synthetic blacklist setMetaData(Landroid/os/Bundle;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setMetaData(Landroid/os/Bundle;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setMinAspectRatio(F)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 2

    .line 2199
    iput p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->minAspectRatio:F

    .line 2200
    return-object p0
.end method

.method public bridge synthetic blacklist setMinAspectRatio(F)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setMinAspectRatio(F)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setMinExtensionVersions(Landroid/util/SparseIntArray;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 2

    .line 2205
    iput-object p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->minExtensionVersions:Landroid/util/SparseIntArray;

    .line 2206
    return-object p0
.end method

.method public bridge synthetic blacklist setMinExtensionVersions(Landroid/util/SparseIntArray;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setMinExtensionVersions(Landroid/util/SparseIntArray;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setMinSdkVersion(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 2

    .line 2211
    iput p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->minSdkVersion:I

    .line 2212
    return-object p0
.end method

.method public bridge synthetic blacklist setMinSdkVersion(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setMinSdkVersion(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setMultiArch(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 4

    .line 2217
    const-wide/32 v0, 0x10000

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist setMultiArch(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setMultiArch(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setNativeHeapZeroInitialized(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 2

    .line 2223
    iput p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->nativeHeapZeroInitialized:I

    .line 2224
    return-object p0
.end method

.method public bridge synthetic blacklist setNativeHeapZeroInitialized(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setNativeHeapZeroInitialized(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setNativeLibraryDir(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 2

    .line 3048
    invoke-static {p1}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->nativeLibraryDir:Ljava/lang/String;

    .line 3049
    return-object p0
.end method

.method public bridge synthetic blacklist setNativeLibraryDir(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setNativeLibraryDir(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setNativeLibraryRootDir(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 2

    .line 3054
    invoke-static {p1}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->nativeLibraryRootDir:Ljava/lang/String;

    .line 3055
    return-object p0
.end method

.method public bridge synthetic blacklist setNativeLibraryRootDir(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setNativeLibraryRootDir(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setNativeLibraryRootRequiresIsa(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 2

    .line 3700
    iput-boolean p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->nativeLibraryRootRequiresIsa:Z

    .line 3701
    return-object p0
.end method

.method public bridge synthetic blacklist setNativeLibraryRootRequiresIsa(Z)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setNativeLibraryRootRequiresIsa(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setNetworkSecurityConfigResourceId(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 2

    .line 2235
    iput p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->networkSecurityConfigRes:I

    .line 2236
    return-object p0
.end method

.method public bridge synthetic blacklist setNetworkSecurityConfigResourceId(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setNetworkSecurityConfigResourceId(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setNonLocalizedLabel(Ljava/lang/CharSequence;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 2

    .line 2241
    if-nez p1, :cond_4

    const/4 p1, 0x0

    goto :goto_c

    :cond_4
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    :goto_c
    iput-object p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 2242
    return-object p0
.end method

.method public bridge synthetic blacklist setNonLocalizedLabel(Ljava/lang/CharSequence;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setNonLocalizedLabel(Ljava/lang/CharSequence;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setNonSdkApiRequested(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 4

    .line 2584
    const-wide v0, 0x200000000L

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist setNonSdkApiRequested(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setNonSdkApiRequested(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setNormalScreensSupported(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 3

    .line 2503
    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    .line 2504
    return-object p0

    .line 2507
    :cond_4
    if-gez p1, :cond_7

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->supportsNormalScreens:Ljava/lang/Boolean;

    .line 2508
    return-object p0
.end method

.method public bridge synthetic blacklist setNormalScreensSupported(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setNormalScreensSupported(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setOdm(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 4

    .line 3759
    const-wide/high16 v0, 0x2000000000000000L

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    .line 3760
    return-object p0
.end method

.method public bridge synthetic blacklist setOdm(Z)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setOdm(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setOem(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 4

    .line 3741
    const-wide/high16 v0, 0x400000000000000L

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    .line 3742
    return-object p0
.end method

.method public bridge synthetic blacklist setOem(Z)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setOem(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setOnBackInvokedCallbackEnabled(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 4

    .line 2247
    const-wide/high16 v0, 0x4000000000000L

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    .line 2248
    return-object p0
.end method

.method public blacklist setOverlayCategory(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 2

    .line 2270
    iput-object p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->overlayCategory:Ljava/lang/String;

    .line 2271
    return-object p0
.end method

.method public bridge synthetic blacklist setOverlayCategory(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setOverlayCategory(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setOverlayIsStatic(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 4

    .line 2276
    const-wide v0, 0x8000000000L

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist setOverlayIsStatic(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setOverlayIsStatic(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setOverlayPriority(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 2

    .line 2281
    iput p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->overlayPriority:I

    .line 2282
    return-object p0
.end method

.method public bridge synthetic blacklist setOverlayPriority(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setOverlayPriority(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setOverlayTarget(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 2

    .line 2287
    invoke-static {p1}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->overlayTarget:Ljava/lang/String;

    .line 2288
    return-object p0
.end method

.method public bridge synthetic blacklist setOverlayTarget(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setOverlayTarget(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setOverlayTargetOverlayableName(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 2

    .line 2294
    iput-object p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->overlayTargetOverlayableName:Ljava/lang/String;

    .line 2295
    return-object p0
.end method

.method public bridge synthetic blacklist setOverlayTargetOverlayableName(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setOverlayTargetOverlayableName(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setPackageName(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 6

    .line 2971
    invoke-static {p1}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->packageName:Ljava/lang/String;

    .line 2973
    iget-object p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->permissions:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    .line 2974
    const/4 v0, 0x0

    move v1, v0

    :goto_e
    if-ge v1, p1, :cond_20

    .line 2975
    iget-object v2, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->permissions:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/pm/pkg/component/ParsedComponent;

    iget-object v3, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->packageName:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/internal/pm/pkg/component/ComponentMutateUtils;->setPackageName(Lcom/android/internal/pm/pkg/component/ParsedComponent;Ljava/lang/String;)V

    .line 2974
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 2978
    :cond_20
    iget-object p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->permissionGroups:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    .line 2979
    move v1, v0

    :goto_27
    if-ge v1, p1, :cond_39

    .line 2980
    iget-object v2, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->permissionGroups:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/pm/pkg/component/ParsedComponent;

    iget-object v3, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->packageName:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/internal/pm/pkg/component/ComponentMutateUtils;->setPackageName(Lcom/android/internal/pm/pkg/component/ParsedComponent;Ljava/lang/String;)V

    .line 2979
    add-int/lit8 v1, v1, 0x1

    goto :goto_27

    .line 2983
    :cond_39
    iget-object p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->activities:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    .line 2984
    move v1, v0

    :goto_40
    if-ge v1, p1, :cond_52

    .line 2985
    iget-object v2, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->activities:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/pm/pkg/component/ParsedComponent;

    iget-object v3, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->packageName:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/internal/pm/pkg/component/ComponentMutateUtils;->setPackageName(Lcom/android/internal/pm/pkg/component/ParsedComponent;Ljava/lang/String;)V

    .line 2984
    add-int/lit8 v1, v1, 0x1

    goto :goto_40

    .line 2988
    :cond_52
    iget-object p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->receivers:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    .line 2989
    move v1, v0

    :goto_59
    if-ge v1, p1, :cond_6b

    .line 2990
    iget-object v2, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->receivers:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/pm/pkg/component/ParsedComponent;

    iget-object v3, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->packageName:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/internal/pm/pkg/component/ComponentMutateUtils;->setPackageName(Lcom/android/internal/pm/pkg/component/ParsedComponent;Ljava/lang/String;)V

    .line 2989
    add-int/lit8 v1, v1, 0x1

    goto :goto_59

    .line 2993
    :cond_6b
    iget-object p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->providers:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    .line 2994
    move v1, v0

    :goto_72
    if-ge v1, p1, :cond_84

    .line 2995
    iget-object v2, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->providers:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/pm/pkg/component/ParsedComponent;

    iget-object v3, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->packageName:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/internal/pm/pkg/component/ComponentMutateUtils;->setPackageName(Lcom/android/internal/pm/pkg/component/ParsedComponent;Ljava/lang/String;)V

    .line 2994
    add-int/lit8 v1, v1, 0x1

    goto :goto_72

    .line 2998
    :cond_84
    iget-object p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->services:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    .line 2999
    move v1, v0

    :goto_8b
    if-ge v1, p1, :cond_9d

    .line 3000
    iget-object v2, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->services:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/pm/pkg/component/ParsedComponent;

    iget-object v3, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->packageName:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/internal/pm/pkg/component/ComponentMutateUtils;->setPackageName(Lcom/android/internal/pm/pkg/component/ParsedComponent;Ljava/lang/String;)V

    .line 2999
    add-int/lit8 v1, v1, 0x1

    goto :goto_8b

    .line 3003
    :cond_9d
    iget-object p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->instrumentations:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    .line 3004
    nop

    :goto_a4
    if-ge v0, p1, :cond_b6

    .line 3005
    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->instrumentations:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/pm/pkg/component/ParsedComponent;

    iget-object v2, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->packageName:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/internal/pm/pkg/component/ComponentMutateUtils;->setPackageName(Lcom/android/internal/pm/pkg/component/ParsedComponent;Ljava/lang/String;)V

    .line 3004
    add-int/lit8 v0, v0, 0x1

    goto :goto_a4

    .line 3008
    :cond_b6
    return-object p0
.end method

.method public bridge synthetic blacklist setPackageName(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setPackageName(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setPageSizeAppCompatFlags(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 2

    .line 2229
    iput p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mPageSizeAppCompatFlags:I

    .line 2230
    return-object p0
.end method

.method public bridge synthetic blacklist setPageSizeAppCompatFlags(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setPageSizeAppCompatFlags(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setPartiallyDirectBootAware(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 4

    .line 2300
    const-wide/32 v0, 0x10000000

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist setPartiallyDirectBootAware(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setPartiallyDirectBootAware(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setPath(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 2

    .line 2963
    iput-object p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mPath:Ljava/lang/String;

    .line 2964
    return-object p0
.end method

.method public bridge synthetic blacklist setPath(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setPath(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setPermission(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 2

    .line 2305
    iput-object p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->permission:Ljava/lang/String;

    .line 2306
    return-object p0
.end method

.method public bridge synthetic blacklist setPermission(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setPermission(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setPersistent(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 4

    .line 2927
    const-wide/16 v0, 0x40

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    .line 2928
    return-object p0
.end method

.method public bridge synthetic blacklist setPersistent(Z)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setPersistent(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist setPersistent(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setPersistent(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setPreserveLegacyExternalStorage(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 4

    .line 2311
    const-wide v0, 0x2000000000L

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist setPreserveLegacyExternalStorage(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setPreserveLegacyExternalStorage(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setPrimaryCpuAbi(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 2

    .line 3060
    invoke-static {p1}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->primaryCpuAbi:Ljava/lang/String;

    .line 3061
    return-object p0
.end method

.method public bridge synthetic blacklist setPrimaryCpuAbi(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setPrimaryCpuAbi(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setPrivileged(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 4

    .line 3735
    const-wide/high16 v0, 0x200000000000000L

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    .line 3736
    return-object p0
.end method

.method public bridge synthetic blacklist setPrivileged(Z)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setPrivileged(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setProcessName(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 2

    .line 2316
    iput-object p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->processName:Ljava/lang/String;

    .line 2317
    return-object p0
.end method

.method public bridge synthetic blacklist setProcessName(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setProcessName(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setProcesses(Ljava/util/Map;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/internal/pm/pkg/component/ParsedProcess;",
            ">;)",
            "Lcom/android/internal/pm/parsing/pkg/PackageImpl;"
        }
    .end annotation

    .line 2322
    iput-object p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->processes:Ljava/util/Map;

    .line 2323
    return-object p0
.end method

.method public bridge synthetic blacklist setProcesses(Ljava/util/Map;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setProcesses(Ljava/util/Map;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setProduct(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 4

    .line 3753
    const-wide/high16 v0, 0x1000000000000000L

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    .line 3754
    return-object p0
.end method

.method public bridge synthetic blacklist setProduct(Z)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setProduct(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setProfileable(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 4

    .line 2328
    xor-int/lit8 p1, p1, 0x1

    const-wide v0, 0x200000000000L

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist setProfileable(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setProfileable(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setProfileableByShell(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 4

    .line 2333
    const-wide/32 v0, 0x800000

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist setProfileableByShell(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setProfileableByShell(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setRequestForegroundServiceExemption(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 4

    .line 2338
    const-wide v0, 0x400000000000L

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist setRequestForegroundServiceExemption(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setRequestForegroundServiceExemption(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setRequestLegacyExternalStorage(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 4

    .line 2343
    const-wide v0, 0x100000000L

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist setRequestLegacyExternalStorage(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setRequestLegacyExternalStorage(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setRequestRawExternalStorageAccess(Ljava/lang/Boolean;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 2

    .line 2348
    iput-object p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->requestRawExternalStorageAccess:Ljava/lang/Boolean;

    .line 2349
    return-object p0
.end method

.method public bridge synthetic blacklist setRequestRawExternalStorageAccess(Ljava/lang/Boolean;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setRequestRawExternalStorageAccess(Ljava/lang/Boolean;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setRequiredAccountType(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 2

    .line 2354
    invoke-static {p1}, Landroid/text/TextUtils;->nullIfEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->requiredAccountType:Ljava/lang/String;

    .line 2355
    return-object p0
.end method

.method public bridge synthetic blacklist setRequiredAccountType(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setRequiredAccountType(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setRequiredForAllUsers(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 4

    .line 2360
    const-wide v0, 0x4000000000L

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist setRequiredForAllUsers(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setRequiredForAllUsers(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setRequiresSmallestWidthDp(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 2

    .line 2365
    iput p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->requiresSmallestWidthDp:I

    .line 2366
    return-object p0
.end method

.method public bridge synthetic blacklist setRequiresSmallestWidthDp(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setRequiresSmallestWidthDp(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setResetEnabledSettingsOnAppDataCleared(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 4

    .line 2372
    const-wide/high16 v0, 0x1000000000000L

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    .line 2374
    return-object p0
.end method

.method public blacklist setResizeable(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 3

    .line 2379
    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    .line 2380
    return-object p0

    .line 2383
    :cond_4
    if-gez p1, :cond_7

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->resizeable:Ljava/lang/Boolean;

    .line 2384
    return-object p0
.end method

.method public bridge synthetic blacklist setResizeable(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setResizeable(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setResizeableActivity(Ljava/lang/Boolean;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 2

    .line 2389
    iput-object p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->resizeableActivity:Ljava/lang/Boolean;

    .line 2390
    return-object p0
.end method

.method public bridge synthetic blacklist setResizeableActivity(Ljava/lang/Boolean;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setResizeableActivity(Ljava/lang/Boolean;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setResizeableActivityViaSdkVersion(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 4

    .line 2395
    const-wide/32 v0, 0x20000000

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist setResizeableActivityViaSdkVersion(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setResizeableActivityViaSdkVersion(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setResourceOverlay(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 4

    .line 2265
    const-wide/32 v0, 0x100000

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist setResourceOverlay(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setResourceOverlay(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setRestoreAnyVersion(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 4

    .line 2400
    const-wide/16 v0, 0x10

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist setRestoreAnyVersion(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setRestoreAnyVersion(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public varargs blacklist setRestrictUpdateHash([B)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 2

    .line 2921
    iput-object p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->restrictUpdateHash:[B

    .line 2922
    return-object p0
.end method

.method public bridge synthetic blacklist setRestrictUpdateHash([B)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setRestrictUpdateHash([B)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist setRestrictUpdateHash([B)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setRestrictUpdateHash([B)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setRestrictedAccountType(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 2

    .line 2405
    iput-object p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->restrictedAccountType:Ljava/lang/String;

    .line 2406
    return-object p0
.end method

.method public bridge synthetic blacklist setRestrictedAccountType(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setRestrictedAccountType(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setRoundIconResourceId(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 2

    .line 2417
    iput p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->roundIconRes:I

    .line 2418
    return-object p0
.end method

.method public bridge synthetic blacklist setRoundIconResourceId(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setRoundIconResourceId(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setRtlSupported(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 4

    .line 2513
    const-wide/16 v0, 0x4000

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist setRtlSupported(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setRtlSupported(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setRunInPccSandbox(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 4

    .line 2253
    const-wide/16 v0, 0x8

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setBoolean2(JZ)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    .line 2254
    return-object p0
.end method

.method public blacklist setSaveStateDisallowed(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 4

    .line 1987
    const-wide v0, 0x800000000L

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist setSaveStateDisallowed(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setSaveStateDisallowed(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setSdkLibVersionMajor(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 2

    .line 2429
    iput p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sdkLibVersionMajor:I

    .line 2430
    return-object p0
.end method

.method public bridge synthetic blacklist setSdkLibVersionMajor(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setSdkLibVersionMajor(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setSdkLibrary(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 4

    .line 2435
    const-wide/high16 v0, 0x2000000000000L

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist setSdkLibrary(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setSdkLibrary(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setSdkLibraryName(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 2

    .line 2423
    invoke-static {p1}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sdkLibraryName:Ljava/lang/String;

    .line 2424
    return-object p0
.end method

.method public bridge synthetic blacklist setSdkLibraryName(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setSdkLibraryName(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setSecondaryCpuAbi(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 2

    .line 3066
    invoke-static {p1}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->secondaryCpuAbi:Ljava/lang/String;

    .line 3067
    return-object p0
.end method

.method public bridge synthetic blacklist setSecondaryCpuAbi(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setSecondaryCpuAbi(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setSecondaryNativeLibraryDir(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 2

    .line 3072
    invoke-static {p1}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->secondaryNativeLibraryDir:Ljava/lang/String;

    .line 3073
    return-object p0
.end method

.method public bridge synthetic blacklist setSecondaryNativeLibraryDir(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setSecondaryNativeLibraryDir(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setSharedUserId(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 2

    .line 2440
    invoke-static {p1}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sharedUserId:Ljava/lang/String;

    .line 2441
    return-object p0
.end method

.method public bridge synthetic blacklist setSharedUserId(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setSharedUserId(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setSharedUserLabelResourceId(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 2

    .line 2446
    iput p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sharedUserLabel:I

    .line 2447
    return-object p0
.end method

.method public bridge synthetic blacklist setSharedUserLabelResourceId(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setSharedUserLabelResourceId(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setSignedWithPlatformKey(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 4

    .line 3765
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    .line 3766
    return-object p0
.end method

.method public bridge synthetic blacklist setSignedWithPlatformKey(Z)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setSignedWithPlatformKey(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setSigningDetails(Landroid/content/pm/SigningDetails;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 2

    .line 2915
    iput-object p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->signingDetails:Landroid/content/pm/SigningDetails;

    .line 2916
    return-object p0
.end method

.method public bridge synthetic blacklist setSigningDetails(Landroid/content/pm/SigningDetails;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setSigningDetails(Landroid/content/pm/SigningDetails;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist setSigningDetails(Landroid/content/pm/SigningDetails;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setSigningDetails(Landroid/content/pm/SigningDetails;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setSmallScreensSupported(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 3

    .line 2518
    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    .line 2519
    return-object p0

    .line 2522
    :cond_4
    if-gez p1, :cond_7

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->supportsSmallScreens:Ljava/lang/Boolean;

    .line 2523
    return-object p0
.end method

.method public bridge synthetic blacklist setSmallScreensSupported(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setSmallScreensSupported(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setSplitClassLoaderName(ILjava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 4

    .line 2452
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->splitClassLoaderNames:[Ljava/lang/String;

    aput-object p2, v0, p1

    .line 2453
    return-object p0
.end method

.method public bridge synthetic blacklist setSplitClassLoaderName(ILjava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setSplitClassLoaderName(ILjava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setSplitCodePaths([Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 5

    .line 3078
    iput-object p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->splitCodePaths:[Ljava/lang/String;

    .line 3079
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mSplits:Ljava/util/List;

    .line 3080
    if-eqz p1, :cond_1a

    .line 3081
    array-length p1, p1

    .line 3082
    const/4 v0, 0x0

    :goto_9
    if-ge v0, p1, :cond_1a

    .line 3083
    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->splitCodePaths:[Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->splitCodePaths:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-static {v2}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 3082
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 3086
    :cond_1a
    return-object p0
.end method

.method public bridge synthetic blacklist setSplitCodePaths([Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setSplitCodePaths([Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setSplitHasCode(IZ)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 4

    .line 2458
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->splitFlags:[I

    if-eqz p2, :cond_b

    .line 2459
    iget-object p2, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->splitFlags:[I

    aget p2, p2, p1

    or-int/lit8 p2, p2, 0x4

    goto :goto_11

    .line 2460
    :cond_b
    iget-object p2, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->splitFlags:[I

    aget p2, p2, p1

    and-int/lit8 p2, p2, -0x5

    :goto_11
    aput p2, v0, p1

    .line 2461
    return-object p0
.end method

.method public bridge synthetic blacklist setSplitHasCode(IZ)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setSplitHasCode(IZ)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setStaticSharedLibrary(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 4

    .line 2478
    const-wide/32 v0, 0x80000

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist setStaticSharedLibrary(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setStaticSharedLibrary(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setStaticSharedLibraryName(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 2

    .line 2466
    invoke-static {p1}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->staticSharedLibraryName:Ljava/lang/String;

    .line 2467
    return-object p0
.end method

.method public bridge synthetic blacklist setStaticSharedLibraryName(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setStaticSharedLibraryName(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setStaticSharedLibraryVersion(J)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 3

    .line 2472
    iput-wide p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->staticSharedLibVersion:J

    .line 2473
    return-object p0
.end method

.method public bridge synthetic blacklist setStaticSharedLibraryVersion(J)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setStaticSharedLibraryVersion(J)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setStub(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 4

    .line 3694
    const-wide/16 v0, 0x1

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setBoolean2(JZ)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    .line 3695
    return-object p0
.end method

.method public bridge synthetic blacklist setStub(Z)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setStub(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setSystem(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 4

    .line 3706
    const-wide/high16 v0, 0x20000000000000L

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    .line 3707
    return-object p0
.end method

.method public bridge synthetic blacklist setSystem(Z)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setSystem(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setSystemExt(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 4

    .line 3729
    const-wide/high16 v0, 0x100000000000000L

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    .line 3730
    return-object p0
.end method

.method public bridge synthetic blacklist setSystemExt(Z)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setSystemExt(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setTargetSandboxVersion(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 2

    .line 2528
    iput p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->targetSandboxVersion:I

    .line 2529
    return-object p0
.end method

.method public bridge synthetic blacklist setTargetSandboxVersion(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setTargetSandboxVersion(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setTargetSdkVersion(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 2

    .line 2534
    iput p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->targetSdkVersion:I

    .line 2535
    return-object p0
.end method

.method public bridge synthetic blacklist setTargetSdkVersion(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setTargetSdkVersion(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setTaskAffinity(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 2

    .line 2540
    iput-object p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->taskAffinity:Ljava/lang/String;

    .line 2541
    return-object p0
.end method

.method public bridge synthetic blacklist setTaskAffinity(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setTaskAffinity(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setTaskReparentingAllowed(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 4

    .line 1926
    const-wide/16 v0, 0x400

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist setTaskReparentingAllowed(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setTaskReparentingAllowed(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setTestOnly(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 4

    .line 2546
    const-wide/32 v0, 0x8000

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist setTestOnly(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setTestOnly(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setThemeResourceId(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 2

    .line 2551
    iput p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->theme:I

    .line 2552
    return-object p0
.end method

.method public bridge synthetic blacklist setThemeResourceId(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setThemeResourceId(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setUiOptions(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 2

    .line 2557
    iput p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->uiOptions:I

    .line 2558
    return-object p0
.end method

.method public bridge synthetic blacklist setUiOptions(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setUiOptions(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setUid(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 2

    .line 3771
    iput p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->uid:I

    .line 3772
    return-object p0
.end method

.method public bridge synthetic blacklist setUid(I)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setUid(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setUpdatableSystem(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 4

    .line 3712
    const-wide/16 v0, 0x4

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setBoolean2(JZ)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist setUpdatableSystem(Z)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setUpdatableSystem(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist setUpdatableSystem(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setUpdatableSystem(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setUpgradeKeySets(Ljava/util/Set;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/android/internal/pm/parsing/pkg/PackageImpl;"
        }
    .end annotation

    .line 2563
    iput-object p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->upgradeKeySets:Ljava/util/Set;

    .line 2564
    return-object p0
.end method

.method public bridge synthetic blacklist setUpgradeKeySets(Ljava/util/Set;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setUpgradeKeySets(Ljava/util/Set;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setUseEmbeddedDex(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 4

    .line 2574
    const-wide/32 v0, 0x2000000

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist setUseEmbeddedDex(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setUseEmbeddedDex(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setUserDataFragile(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 4

    .line 2102
    const-wide v0, 0x400000000L

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist setUserDataFragile(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setUserDataFragile(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setVendor(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 4

    .line 3747
    const-wide/high16 v0, 0x800000000000000L

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    .line 3748
    return-object p0
.end method

.method public bridge synthetic blacklist setVendor(Z)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setVendor(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setVersionCode(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 2

    .line 3138
    iput p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->versionCode:I

    .line 3139
    return-object p0
.end method

.method public bridge synthetic blacklist setVersionCode(I)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setVersionCode(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist setVersionCode(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setVersionCode(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setVersionCodeMajor(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 2

    .line 3144
    iput p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->versionCodeMajor:I

    .line 3145
    return-object p0
.end method

.method public bridge synthetic blacklist setVersionCodeMajor(I)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setVersionCodeMajor(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist setVersionCodeMajor(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setVersionCodeMajor(I)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setVersionName(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 2

    .line 2589
    iput-object p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->versionName:Ljava/lang/String;

    .line 2590
    return-object p0
.end method

.method public bridge synthetic blacklist setVersionName(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setVersionName(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setVisibleToInstantApps(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 4

    .line 2595
    const-wide v0, 0x20000000000L

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist setVisibleToInstantApps(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setVisibleToInstantApps(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setVmSafeMode(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 4

    .line 2600
    const-wide/16 v0, 0x100

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist setVmSafeMode(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setVmSafeMode(Z)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setVolumeUuid(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 2

    .line 2605
    invoke-static {p1}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->volumeUuid:Ljava/lang/String;

    .line 2606
    return-object p0
.end method

.method public bridge synthetic blacklist setVolumeUuid(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setVolumeUuid(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setZygotePreloadName(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 2

    .line 2611
    iput-object p1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->zygotePreloadName:Ljava/lang/String;

    .line 2612
    return-object p0
.end method

.method public bridge synthetic blacklist setZygotePreloadName(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->setZygotePreloadName(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist shouldRunInPccSandbox()Z
    .registers 3

    .line 1736
    const-wide/16 v0, 0x8

    invoke-direct {p0, v0, v1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBoolean2(J)Z

    move-result v0

    return v0
.end method

.method public blacklist sortActivities()Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 3

    .line 2617
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->activities:Ljava/util/List;

    sget-object v1, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->ORDER_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2618
    return-object p0
.end method

.method public bridge synthetic blacklist sortActivities()Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 111
    invoke-virtual {p0}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sortActivities()Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object v0

    return-object v0
.end method

.method public blacklist sortReceivers()Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 3

    .line 2623
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->receivers:Ljava/util/List;

    sget-object v1, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->ORDER_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2624
    return-object p0
.end method

.method public bridge synthetic blacklist sortReceivers()Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 111
    invoke-virtual {p0}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sortReceivers()Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object v0

    return-object v0
.end method

.method public blacklist sortServices()Lcom/android/internal/pm/parsing/pkg/PackageImpl;
    .registers 3

    .line 2629
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->services:Ljava/util/List;

    sget-object v1, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->ORDER_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2630
    return-object p0
.end method

.method public bridge synthetic blacklist sortServices()Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 111
    invoke-virtual {p0}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sortServices()Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object v0

    return-object v0
.end method

.method public blacklist toAppInfoWithoutState()Landroid/content/pm/ApplicationInfo;
    .registers 3

    .line 3150
    invoke-virtual {p0}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->toAppInfoWithoutStateWithoutFlags()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 3151
    iget v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mBaseAppInfoFlags:I

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 3152
    iget v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mBaseAppInfoPrivateFlags:I

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 3153
    iget v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mBaseAppInfoPrivateFlagsExt:I

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->privateFlagsExt:I

    .line 3154
    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->nativeLibraryDir:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    .line 3155
    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->nativeLibraryRootDir:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->nativeLibraryRootDir:Ljava/lang/String;

    .line 3156
    iget-boolean v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->nativeLibraryRootRequiresIsa:Z

    iput-boolean v1, v0, Landroid/content/pm/ApplicationInfo;->nativeLibraryRootRequiresIsa:Z

    .line 3157
    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->primaryCpuAbi:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    .line 3158
    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->secondaryCpuAbi:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->secondaryCpuAbi:Ljava/lang/String;

    .line 3159
    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->secondaryNativeLibraryDir:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->secondaryNativeLibraryDir:Ljava/lang/String;

    .line 3160
    const-string v1, ":complete"

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->seInfoUser:Ljava/lang/String;

    .line 3161
    iget v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->uid:I

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 3162
    return-object v0
.end method

.method public blacklist toAppInfoWithoutStateWithoutFlags()Landroid/content/pm/ApplicationInfo;
    .registers 4

    .line 2634
    new-instance v0, Landroid/content/pm/ApplicationInfo;

    invoke-direct {v0}, Landroid/content/pm/ApplicationInfo;-><init>()V

    .line 2639
    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->appComponentFactory:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->appComponentFactory:Ljava/lang/String;

    .line 2640
    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->backupAgentName:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    .line 2641
    iget v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->banner:I

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->banner:I

    .line 2642
    iget v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->category:I

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->category:I

    .line 2643
    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->classLoaderName:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->classLoaderName:Ljava/lang/String;

    .line 2644
    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->className:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    .line 2645
    iget v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->compatibleWidthLimitDp:I

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->compatibleWidthLimitDp:I

    .line 2646
    iget v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->compileSdkVersion:I

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->compileSdkVersion:I

    .line 2647
    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->compileSdkVersionCodeName:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->compileSdkVersionCodename:Ljava/lang/String;

    .line 2649
    invoke-virtual {p0}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->isCrossProfile()Z

    move-result v1

    iput-boolean v1, v0, Landroid/content/pm/ApplicationInfo;->crossProfile:Z

    .line 2651
    iget v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->descriptionRes:I

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->descriptionRes:I

    .line 2653
    const-wide v1, 0x100000000000L

    invoke-direct {p0, v1, v2}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result v1

    iput-boolean v1, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    .line 2655
    iget v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->fullBackupContent:I

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->fullBackupContent:I

    .line 2656
    iget v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->dataExtractionRules:I

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->dataExtractionRulesRes:I

    .line 2660
    nop

    .line 2661
    sget-boolean v1, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->sUseRoundIcon:Z

    if-eqz v1, :cond_52

    iget v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->roundIconRes:I

    if-eqz v1, :cond_52

    iget v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->roundIconRes:I

    goto :goto_54

    :cond_52
    iget v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->iconRes:I

    :goto_54
    iput v1, v0, Landroid/content/pm/ApplicationInfo;->icon:I

    .line 2662
    iget v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->iconRes:I

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->iconRes:I

    .line 2663
    iget v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->roundIconRes:I

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->roundIconRes:I

    .line 2664
    iget v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->installLocation:I

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->installLocation:I

    .line 2665
    iget v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->labelRes:I

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->labelRes:I

    .line 2666
    iget v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->largestWidthLimitDp:I

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->largestWidthLimitDp:I

    .line 2667
    iget v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->logo:I

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->logo:I

    .line 2668
    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->manageSpaceActivityName:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    .line 2669
    iget v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->maxAspectRatio:F

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->maxAspectRatio:F

    .line 2670
    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->metaData:Landroid/os/Bundle;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 2671
    iget v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->minAspectRatio:F

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->minAspectRatio:F

    .line 2672
    iget v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->minSdkVersion:I

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->minSdkVersion:I

    .line 2673
    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->className:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->name:Ljava/lang/String;

    .line 2677
    iget v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->networkSecurityConfigRes:I

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->networkSecurityConfigRes:I

    .line 2678
    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->nonLocalizedLabel:Ljava/lang/CharSequence;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 2679
    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->packageName:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 2680
    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->permission:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->permission:Ljava/lang/String;

    .line 2682
    invoke-virtual {p0}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getProcessName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    .line 2683
    iget v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->requiresSmallestWidthDp:I

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->requiresSmallestWidthDp:I

    .line 2692
    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->splitClassLoaderNames:[Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->splitClassLoaderNames:[Ljava/lang/String;

    .line 2693
    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->splitDependencies:Landroid/util/SparseArray;

    const/4 v2, 0x0

    if-eqz v1, :cond_b5

    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->splitDependencies:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-nez v1, :cond_b2

    goto :goto_b5

    .line 2694
    :cond_b2
    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->splitDependencies:Landroid/util/SparseArray;

    goto :goto_b6

    :cond_b5
    :goto_b5
    move-object v1, v2

    :goto_b6
    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->splitDependencies:Landroid/util/SparseArray;

    .line 2695
    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->splitNames:[Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->splitNames:[Ljava/lang/String;

    .line 2696
    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mStorageUuid:Ljava/util/UUID;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->storageUuid:Ljava/util/UUID;

    .line 2697
    iget v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->targetSandboxVersion:I

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->targetSandboxVersion:I

    .line 2698
    iget v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->targetSdkVersion:I

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 2699
    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->taskAffinity:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->taskAffinity:Ljava/lang/String;

    .line 2700
    iget v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->theme:I

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->theme:I

    .line 2702
    iget v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->uiOptions:I

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->uiOptions:I

    .line 2703
    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->volumeUuid:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->volumeUuid:Ljava/lang/String;

    .line 2704
    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->zygotePreloadName:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->zygotePreloadName:Ljava/lang/String;

    .line 2705
    iget v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->gwpAsanMode:I

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->setGwpAsanMode(I)V

    .line 2706
    iget v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->memtagMode:I

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->setMemtagMode(I)V

    .line 2707
    iget v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->nativeHeapZeroInitialized:I

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->setNativeHeapZeroInitialized(I)V

    .line 2708
    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->requestRawExternalStorageAccess:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->setRequestRawExternalStorageAccess(Ljava/lang/Boolean;)V

    .line 2709
    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mBaseApkPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->setBaseCodePath(Ljava/lang/String;)V

    .line 2710
    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mBaseApkPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->setBaseResourcePath(Ljava/lang/String;)V

    .line 2711
    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->setCodePath(Ljava/lang/String;)V

    .line 2712
    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->setResourcePath(Ljava/lang/String;)V

    .line 2713
    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->splitCodePaths:[Ljava/lang/String;

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->size([Ljava/lang/Object;)I

    move-result v1

    if-nez v1, :cond_10e

    move-object v1, v2

    goto :goto_110

    :cond_10e
    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->splitCodePaths:[Ljava/lang/String;

    :goto_110
    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->setSplitCodePaths([Ljava/lang/String;)V

    .line 2714
    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->splitCodePaths:[Ljava/lang/String;

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->size([Ljava/lang/Object;)I

    move-result v1

    if-nez v1, :cond_11c

    goto :goto_11e

    :cond_11c
    iget-object v2, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->splitCodePaths:[Ljava/lang/String;

    :goto_11e
    invoke-virtual {v0, v2}, Landroid/content/pm/ApplicationInfo;->setSplitResourcePaths([Ljava/lang/String;)V

    .line 2715
    iget-wide v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mLongVersionCode:J

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/ApplicationInfo;->setVersionCode(J)V

    .line 2716
    invoke-direct {p0}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->buildAppClassNamesByProcess()Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->setAppClassNamesByProcess(Landroid/util/ArrayMap;)V

    .line 2717
    iget v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mLocaleConfigRes:I

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->setLocaleConfigRes(I)V

    .line 2718
    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mKnownActivityEmbeddingCerts:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_13f

    .line 2719
    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mKnownActivityEmbeddingCerts:Ljava/util/Set;

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->setKnownActivityEmbeddingCerts(Ljava/util/Set;)V

    .line 2721
    :cond_13f
    iget-boolean v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mAllowCrossUidActivitySwitchFromBelow:Z

    iput-boolean v1, v0, Landroid/content/pm/ApplicationInfo;->allowCrossUidActivitySwitchFromBelow:Z

    .line 2722
    iget v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mPageSizeAppCompatFlags:I

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->setPageSizeAppCompatFlags(I)V

    .line 2724
    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 861
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Package{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 862
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 861
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 7

    .line 3172
    invoke-direct {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->writeFeatureFlagState(Landroid/os/Parcel;)V

    .line 3174
    sget-object v0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForBoolean:Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;

    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->supportsSmallScreens:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;->parcel(Ljava/lang/Boolean;Landroid/os/Parcel;I)V

    .line 3175
    sget-object v0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForBoolean:Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;

    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->supportsNormalScreens:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;->parcel(Ljava/lang/Boolean;Landroid/os/Parcel;I)V

    .line 3176
    sget-object v0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForBoolean:Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;

    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->supportsLargeScreens:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;->parcel(Ljava/lang/Boolean;Landroid/os/Parcel;I)V

    .line 3177
    sget-object v0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForBoolean:Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;

    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->supportsExtraLargeScreens:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;->parcel(Ljava/lang/Boolean;Landroid/os/Parcel;I)V

    .line 3178
    sget-object v0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForBoolean:Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;

    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->resizeable:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;->parcel(Ljava/lang/Boolean;Landroid/os/Parcel;I)V

    .line 3179
    sget-object v0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForBoolean:Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;

    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->anyDensity:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;->parcel(Ljava/lang/Boolean;Landroid/os/Parcel;I)V

    .line 3180
    iget v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->versionCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3181
    iget v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->versionCodeMajor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3182
    iget v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->baseRevisionCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3183
    sget-object v0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->versionName:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;->parcel(Ljava/lang/String;Landroid/os/Parcel;I)V

    .line 3184
    iget v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->compileSdkVersion:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3185
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->compileSdkVersionCodeName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3186
    sget-object v0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;->parcel(Ljava/lang/String;Landroid/os/Parcel;I)V

    .line 3187
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mBaseApkPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3188
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->restrictedAccountType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3189
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->requiredAccountType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3190
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mEmergencyInstaller:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3191
    sget-object v0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->overlayTarget:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;->parcel(Ljava/lang/String;Landroid/os/Parcel;I)V

    .line 3192
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->overlayTargetOverlayableName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3193
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->overlayCategory:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3194
    iget v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->overlayPriority:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3195
    sget-object v0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForInternedStringValueMap:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringValueMap;

    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->overlayables:Ljava/util/Map;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringValueMap;->parcel(Ljava/util/Map;Landroid/os/Parcel;I)V

    .line 3196
    sget-object v0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sdkLibraryName:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;->parcel(Ljava/lang/String;Landroid/os/Parcel;I)V

    .line 3197
    iget v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sdkLibVersionMajor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3198
    sget-object v0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->staticSharedLibraryName:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;->parcel(Ljava/lang/String;Landroid/os/Parcel;I)V

    .line 3199
    iget-wide v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->staticSharedLibVersion:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 3200
    sget-object v0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForInternedStringList:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;

    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->libraryNames:Ljava/util/List;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;->parcel(Ljava/util/List;Landroid/os/Parcel;I)V

    .line 3201
    sget-object v0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForInternedStringList:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;

    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesLibraries:Ljava/util/List;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;->parcel(Ljava/util/List;Landroid/os/Parcel;I)V

    .line 3202
    sget-object v0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForInternedStringList:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;

    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesOptionalLibraries:Ljava/util/List;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;->parcel(Ljava/util/List;Landroid/os/Parcel;I)V

    .line 3203
    sget-object v0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForInternedStringList:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;

    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesNativeLibraries:Ljava/util/List;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;->parcel(Ljava/util/List;Landroid/os/Parcel;I)V

    .line 3204
    sget-object v0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForInternedStringList:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;

    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesOptionalNativeLibraries:Ljava/util/List;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;->parcel(Ljava/util/List;Landroid/os/Parcel;I)V

    .line 3206
    sget-object v0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForInternedStringList:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;

    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesStaticLibraries:Ljava/util/List;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;->parcel(Ljava/util/List;Landroid/os/Parcel;I)V

    .line 3207
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesStaticLibrariesVersions:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 3208
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesStaticLibrariesCertDigests:[[Ljava/lang/String;

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-nez v0, :cond_d6

    .line 3209
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_ec

    .line 3211
    :cond_d6
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesStaticLibrariesCertDigests:[[Ljava/lang/String;

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3212
    move v0, v2

    :goto_dd
    iget-object v3, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesStaticLibrariesCertDigests:[[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_ec

    .line 3213
    iget-object v3, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesStaticLibrariesCertDigests:[[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 3212
    add-int/lit8 v0, v0, 0x1

    goto :goto_dd

    .line 3217
    :cond_ec
    :goto_ec
    sget-object v0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForInternedStringList:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;

    iget-object v3, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesSdkLibraries:Ljava/util/List;

    invoke-virtual {v0, v3, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;->parcel(Ljava/util/List;Landroid/os/Parcel;I)V

    .line 3218
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesSdkLibrariesVersionsMajor:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 3219
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesSdkLibrariesCertDigests:[[Ljava/lang/String;

    if-nez v0, :cond_100

    .line 3220
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_116

    .line 3222
    :cond_100
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesSdkLibrariesCertDigests:[[Ljava/lang/String;

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3223
    nop

    :goto_107
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesSdkLibrariesCertDigests:[[Ljava/lang/String;

    array-length v0, v0

    if-ge v2, v0, :cond_116

    .line 3224
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesSdkLibrariesCertDigests:[[Ljava/lang/String;

    aget-object v0, v0, v2

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 3223
    add-int/lit8 v2, v2, 0x1

    goto :goto_107

    .line 3227
    :cond_116
    :goto_116
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->usesSdkLibrariesOptional:[Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 3229
    sget-object v0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sharedUserId:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;->parcel(Ljava/lang/String;Landroid/os/Parcel;I)V

    .line 3230
    iget v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sharedUserLabel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3231
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->configPreferences:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 3232
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->reqFeatures:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 3233
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->featureGroups:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 3234
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->restrictUpdateHash:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 3235
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->originalPackages:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 3236
    sget-object v0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForInternedStringList:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;

    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->adoptPermissions:Ljava/util/List;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;->parcel(Ljava/util/List;Landroid/os/Parcel;I)V

    .line 3237
    invoke-direct {p0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->writeUsesPermissionMapping(Landroid/os/Parcel;)V

    .line 3238
    sget-object v0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForInternedStringSet:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringSet;

    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->implicitPermissions:Ljava/util/Set;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringSet;->parcel(Ljava/util/Set;Landroid/os/Parcel;I)V

    .line 3239
    sget-object v0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForStringSet:Lcom/android/internal/util/Parcelling$BuiltIn$ForStringSet;

    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->upgradeKeySets:Ljava/util/Set;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForStringSet;->parcel(Ljava/util/Set;Landroid/os/Parcel;I)V

    .line 3240
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->keySetMapping:Ljava/util/Map;

    invoke-static {p1, v0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->writeKeySetMapping(Landroid/os/Parcel;Ljava/util/Map;)V

    .line 3241
    sget-object v0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForInternedStringList:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;

    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->protectedBroadcasts:Ljava/util/List;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;->parcel(Ljava/util/List;Landroid/os/Parcel;I)V

    .line 3242
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->activities:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/android/internal/pm/pkg/parsing/ParsingUtils;->writeParcelableList(Landroid/os/Parcel;Ljava/util/List;)V

    .line 3243
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->apexSystemServices:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/android/internal/pm/pkg/parsing/ParsingUtils;->writeParcelableList(Landroid/os/Parcel;Ljava/util/List;)V

    .line 3244
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->receivers:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/android/internal/pm/pkg/parsing/ParsingUtils;->writeParcelableList(Landroid/os/Parcel;Ljava/util/List;)V

    .line 3245
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->services:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/android/internal/pm/pkg/parsing/ParsingUtils;->writeParcelableList(Landroid/os/Parcel;Ljava/util/List;)V

    .line 3246
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->providers:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/android/internal/pm/pkg/parsing/ParsingUtils;->writeParcelableList(Landroid/os/Parcel;Ljava/util/List;)V

    .line 3247
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->attributions:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/android/internal/pm/pkg/parsing/ParsingUtils;->writeParcelableList(Landroid/os/Parcel;Ljava/util/List;)V

    .line 3248
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->permissions:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/android/internal/pm/pkg/parsing/ParsingUtils;->writeParcelableList(Landroid/os/Parcel;Ljava/util/List;)V

    .line 3249
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->permissionGroups:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/android/internal/pm/pkg/parsing/ParsingUtils;->writeParcelableList(Landroid/os/Parcel;Ljava/util/List;)V

    .line 3250
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->instrumentations:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/android/internal/pm/pkg/parsing/ParsingUtils;->writeParcelableList(Landroid/os/Parcel;Ljava/util/List;)V

    .line 3251
    sget-object v0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForIntentInfoPairs:Lcom/android/internal/pm/pkg/parsing/ParsingUtils$StringPairListParceler;

    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->preferredActivityFilters:Ljava/util/List;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingUtils$StringPairListParceler;->parcel(Ljava/util/List;Landroid/os/Parcel;I)V

    .line 3252
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->processes:Ljava/util/Map;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 3253
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->metaData:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 3254
    sget-object v0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->volumeUuid:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;->parcel(Ljava/lang/String;Landroid/os/Parcel;I)V

    .line 3255
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->signingDetails:Landroid/content/pm/SigningDetails;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 3256
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3257
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->queriesIntents:Ljava/util/List;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 3258
    sget-object v0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForInternedStringList:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;

    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->queriesPackages:Ljava/util/List;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;->parcel(Ljava/util/List;Landroid/os/Parcel;I)V

    .line 3259
    sget-object v0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForInternedStringSet:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringSet;

    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->queriesProviders:Ljava/util/Set;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringSet;->parcel(Ljava/util/Set;Landroid/os/Parcel;I)V

    .line 3260
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->appComponentFactory:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3261
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->backupAgentName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3262
    iget v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->banner:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3263
    iget v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->category:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3264
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->classLoaderName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3265
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->className:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3266
    iget v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->compatibleWidthLimitDp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3267
    iget v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->descriptionRes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3268
    iget v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->fullBackupContent:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3269
    iget v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->dataExtractionRules:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3270
    iget v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->iconRes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3271
    iget v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->installLocation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3272
    iget v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->labelRes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3273
    iget v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->largestWidthLimitDp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3274
    iget v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->logo:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3275
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->manageSpaceActivityName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3276
    iget v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->maxAspectRatio:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 3277
    iget v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->minAspectRatio:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 3278
    iget v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->minSdkVersion:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3279
    iget v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->maxSdkVersion:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3280
    iget v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->networkSecurityConfigRes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3281
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->nonLocalizedLabel:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 3282
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->permission:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3283
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->processName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3284
    iget v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->requiresSmallestWidthDp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3285
    iget v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->roundIconRes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3286
    iget v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->targetSandboxVersion:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3287
    iget v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->targetSdkVersion:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3288
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->taskAffinity:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3289
    iget v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->theme:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3290
    iget v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->uiOptions:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3291
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->zygotePreloadName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3292
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->splitClassLoaderNames:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 3293
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->splitCodePaths:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 3294
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->splitDependencies:Landroid/util/SparseArray;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSparseArray(Landroid/util/SparseArray;)V

    .line 3295
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->splitFlags:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 3296
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->splitNames:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 3297
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->splitRevisionCodes:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 3298
    sget-object v0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForBoolean:Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;

    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->resizeableActivity:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;->parcel(Ljava/lang/Boolean;Landroid/os/Parcel;I)V

    .line 3299
    iget v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->autoRevokePermissions:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3300
    sget-object v0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForInternedStringSet:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringSet;

    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mimeGroups:Ljava/util/Set;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringSet;->parcel(Ljava/util/Set;Landroid/os/Parcel;I)V

    .line 3301
    iget v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->gwpAsanMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3302
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->minExtensionVersions:Landroid/util/SparseIntArray;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSparseIntArray(Landroid/util/SparseIntArray;)V

    .line 3303
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mProperties:Ljava/util/Map;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 3304
    iget v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->memtagMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3305
    iget v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->nativeHeapZeroInitialized:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3306
    sget-object v0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForBoolean:Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;

    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->requestRawExternalStorageAccess:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;->parcel(Ljava/lang/Boolean;Landroid/os/Parcel;I)V

    .line 3307
    iget v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mLocaleConfigRes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3308
    sget-object v0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForStringSet:Lcom/android/internal/util/Parcelling$BuiltIn$ForStringSet;

    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mKnownActivityEmbeddingCerts:Ljava/util/Set;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForStringSet;->parcel(Ljava/util/Set;Landroid/os/Parcel;I)V

    .line 3309
    sget-object v0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->manifestPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;->parcel(Ljava/lang/String;Landroid/os/Parcel;I)V

    .line 3310
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->nativeLibraryDir:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3311
    iget-object v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->nativeLibraryRootDir:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3312
    iget-boolean v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->nativeLibraryRootRequiresIsa:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3313
    sget-object v0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->primaryCpuAbi:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;->parcel(Ljava/lang/String;Landroid/os/Parcel;I)V

    .line 3314
    sget-object v0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    iget-object v1, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->secondaryCpuAbi:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;->parcel(Ljava/lang/String;Landroid/os/Parcel;I)V

    .line 3315
    iget-object p2, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->secondaryNativeLibraryDir:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3316
    iget p2, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->uid:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3317
    iget-wide v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mBooleans:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 3318
    iget-wide v0, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mBooleans2:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 3319
    iget-boolean p2, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mAllowCrossUidActivitySwitchFromBelow:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3320
    iget p2, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mIntentMatchingFlags:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3321
    iget-object p2, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mAlternateLauncherIconResIds:[I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 3322
    iget-object p2, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mAlternateLauncherLabelResIds:[I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 3323
    iget p2, p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->mPageSizeAppCompatFlags:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3324
    return-void
.end method
