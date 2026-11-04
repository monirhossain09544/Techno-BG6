.class public Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;
.super Ljava/lang/Object;
.source "ParsingPackageUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils$Callback;,
        Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils$ParseFlags;
    }
.end annotation


# static fields
.field public static final blacklist ANDROID_MANIFEST_FILENAME:Ljava/lang/String; = "AndroidManifest.xml"

.field public static final blacklist ASPECT_RATIO_NOT_SET:F = -1.0f

.field public static final blacklist DEBUG_BACKUP:Z = false

.field public static final blacklist DEBUG_JAR:Z = false

.field public static final blacklist DEFAULT_PRE_O_MAX_ASPECT_RATIO:F = 1.86f

.field private static final blacklist MAXIMUM_LAUNCHER_ALTERNATE_IDS_LENGTH:I = 0x1f4

.field public static final blacklist METADATA_ACTIVITY_LAUNCH_MODE:Ljava/lang/String; = "android.activity.launch_mode"

.field public static final blacklist METADATA_ACTIVITY_WINDOW_LAYOUT_AFFINITY:Ljava/lang/String; = "android.activity_window_layout_affinity"

.field public static final blacklist METADATA_CAN_DISPLAY_ON_REMOTE_DEVICES:Ljava/lang/String; = "android.can_display_on_remote_devices"

.field public static final blacklist METADATA_MAX_ASPECT_RATIO:Ljava/lang/String; = "android.max_aspect"

.field public static final blacklist METADATA_SUPPORTS_SIZE_CHANGES:Ljava/lang/String; = "android.supports_size_changes"

.field public static final blacklist MNT_EXPAND:Ljava/lang/String; = "/mnt/expand/"

.field public static final blacklist PARSE_APEX:I = 0x400

.field public static final blacklist PARSE_APK_IN_APEX:I = 0x200

.field public static final blacklist PARSE_CHATTY:I = -0x80000000

.field public static final blacklist PARSE_COLLECT_CERTIFICATES:I = 0x20

.field public static final blacklist PARSE_DEFAULT_INSTALL_LOCATION:I = -0x1

.field public static final blacklist PARSE_DEFAULT_TARGET_SANDBOX:I = 0x1

.field public static final blacklist PARSE_ENFORCE_CODE:I = 0x40

.field public static final blacklist PARSE_EXTERNAL_STORAGE:I = 0x8

.field public static final blacklist PARSE_IGNORE_OVERLAY_REQUIRED_SYSTEM_PROPERTY:I = 0x80

.field public static final blacklist PARSE_IGNORE_PROCESSES:I = 0x2

.field public static final blacklist PARSE_IS_SYSTEM_DIR:I = 0x10

.field public static final blacklist PARSE_MUST_BE_APK:I = 0x1

.field public static final blacklist RIGID_PARSER:Z = false

.field public static final blacklist SDK_CODENAMES:[Ljava/lang/String;

.field public static final blacklist SDK_VERSION:I

.field private static final blacklist TAG:Ljava/lang/String; = "PackageParsing"

.field public static final blacklist TAG_ADOPT_PERMISSIONS:Ljava/lang/String; = "adopt-permissions"

.field public static final blacklist TAG_APPLICATION:Ljava/lang/String; = "application"

.field public static final blacklist TAG_ATTRIBUTION:Ljava/lang/String; = "attribution"

.field public static final blacklist TAG_COMPATIBLE_SCREENS:Ljava/lang/String; = "compatible-screens"

.field public static final blacklist TAG_EAT_COMMENT:Ljava/lang/String; = "eat-comment"

.field public static final blacklist TAG_FEATURE_GROUP:Ljava/lang/String; = "feature-group"

.field public static final blacklist TAG_INSTALL_CONSTRAINTS:Ljava/lang/String; = "install-constraints"

.field public static final blacklist TAG_INSTRUMENTATION:Ljava/lang/String; = "instrumentation"

.field public static final blacklist TAG_KEY_SETS:Ljava/lang/String; = "key-sets"

.field public static final blacklist TAG_MANIFEST:Ljava/lang/String; = "manifest"

.field public static final blacklist TAG_ORIGINAL_PACKAGE:Ljava/lang/String; = "original-package"

.field public static final blacklist TAG_OVERLAY:Ljava/lang/String; = "overlay"

.field public static final blacklist TAG_PACKAGE:Ljava/lang/String; = "package"

.field public static final blacklist TAG_PACKAGE_VERIFIER:Ljava/lang/String; = "package-verifier"

.field public static final blacklist TAG_PERMISSION:Ljava/lang/String; = "permission"

.field public static final blacklist TAG_PERMISSION_GROUP:Ljava/lang/String; = "permission-group"

.field public static final blacklist TAG_PERMISSION_TREE:Ljava/lang/String; = "permission-tree"

.field public static final blacklist TAG_PROFILEABLE:Ljava/lang/String; = "profileable"

.field public static final blacklist TAG_PROTECTED_BROADCAST:Ljava/lang/String; = "protected-broadcast"

.field public static final blacklist TAG_QUERIES:Ljava/lang/String; = "queries"

.field public static final blacklist TAG_RECEIVER:Ljava/lang/String; = "receiver"

.field public static final blacklist TAG_RESTRICT_UPDATE:Ljava/lang/String; = "restrict-update"

.field public static final blacklist TAG_SUPPORTS_INPUT:Ljava/lang/String; = "supports-input"

.field public static final blacklist TAG_SUPPORT_SCREENS:Ljava/lang/String; = "supports-screens"

.field public static final blacklist TAG_USES_CONFIGURATION:Ljava/lang/String; = "uses-configuration"

.field public static final blacklist TAG_USES_FEATURE:Ljava/lang/String; = "uses-feature"

.field public static final blacklist TAG_USES_GL_TEXTURE:Ljava/lang/String; = "uses-gl-texture"

.field public static final blacklist TAG_USES_PERMISSION:Ljava/lang/String; = "uses-permission"

.field public static final blacklist TAG_USES_PERMISSION_SDK_23:Ljava/lang/String; = "uses-permission-sdk-23"

.field public static final blacklist TAG_USES_PERMISSION_SDK_M:Ljava/lang/String; = "uses-permission-sdk-m"

.field public static final blacklist TAG_USES_SDK:Ljava/lang/String; = "uses-sdk"

.field public static final blacklist TAG_USES_SPLIT:Ljava/lang/String; = "uses-split"

.field private static final blacklist TYPE_DRAWABLE:Ljava/lang/String; = "drawable"

.field private static final blacklist TYPE_STRING:Ljava/lang/String; = "string"

.field private static final blacklist sAconfigFlags:Lcom/android/internal/pm/pkg/component/AconfigFlags;

.field public static blacklist sCompatibilityModeEnabled:Z

.field public static blacklist sUseRoundIcon:Z


# instance fields
.field private final blacklist mCallback:Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils$Callback;

.field private final blacklist mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private final blacklist mSeparateProcesses:[Ljava/lang/String;

.field private final blacklist mSplitPermissionInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/permission/PermissionManager$SplitPermissionInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 224
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    sput v0, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->SDK_VERSION:I

    .line 225
    sget-object v0, Landroid/os/Build$VERSION;->ACTIVE_CODENAMES:[Ljava/lang/String;

    sput-object v0, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->SDK_CODENAMES:[Ljava/lang/String;

    .line 227
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->sCompatibilityModeEnabled:Z

    .line 228
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->sUseRoundIcon:Z

    .line 320
    new-instance v0, Lcom/android/internal/pm/pkg/component/AconfigFlags;

    invoke-direct {v0}, Lcom/android/internal/pm/pkg/component/AconfigFlags;-><init>()V

    sput-object v0, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->sAconfigFlags:Lcom/android/internal/pm/pkg/component/AconfigFlags;

    return-void
.end method

.method public constructor blacklist <init>([Ljava/lang/String;Landroid/util/DisplayMetrics;Ljava/util/List;Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils$Callback;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Landroid/util/DisplayMetrics;",
            "Ljava/util/List<",
            "Landroid/permission/PermissionManager$SplitPermissionInfo;",
            ">;",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils$Callback;",
            ")V"
        }
    .end annotation

    .line 324
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 325
    iput-object p1, p0, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->mSeparateProcesses:[Ljava/lang/String;

    .line 326
    iput-object p2, p0, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 327
    iput-object p3, p0, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->mSplitPermissionInfos:Ljava/util/List;

    .line 328
    iput-object p4, p0, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->mCallback:Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils$Callback;

    .line 329
    return-void
.end method

.method private static blacklist aFloat(FILandroid/content/res/TypedArray;)F
    .registers 3

    .line 3491
    invoke-virtual {p2, p1, p0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p0

    return p0
.end method

.method private static blacklist aFloat(ILandroid/content/res/TypedArray;)F
    .registers 3

    .line 3495
    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p0

    return p0
.end method

.method private static blacklist adjustPackageToBeUnresizeableAndUnpipable(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;)V
    .registers 7

    .line 3244
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getActivities()Ljava/util/List;

    move-result-object p0

    .line 3245
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 3246
    const/4 v1, 0x0

    move v2, v1

    :goto_a
    if-ge v2, v0, :cond_24

    .line 3247
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/pm/pkg/component/ParsedActivity;

    .line 3248
    invoke-static {v3, v1}, Lcom/android/internal/pm/pkg/component/ComponentMutateUtils;->setResizeMode(Lcom/android/internal/pm/pkg/component/ParsedActivity;I)V

    .line 3249
    nop

    .line 3250
    invoke-interface {v3}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getFlags()I

    move-result v4

    const v5, -0x400001

    and-int/2addr v4, v5

    .line 3249
    invoke-static {v3, v4}, Lcom/android/internal/pm/pkg/component/ComponentMutateUtils;->setExactFlags(Lcom/android/internal/pm/pkg/component/ParsedComponent;I)V

    .line 3246
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 3252
    :cond_24
    return-void
.end method

.method private blacklist afterParseBaseApplication(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;)V
    .registers 3

    .line 2446
    invoke-static {p1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->setMaxAspectRatio(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;)V

    .line 2447
    invoke-direct {p0, p1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->setMinAspectRatio(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;)V

    .line 2448
    invoke-direct {p0, p1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->setSupportsSizeChanges(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;)V

    .line 2450
    invoke-static {p1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->hasDomainURLs(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;)Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setHasDomainUrls(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 2451
    return-void
.end method

.method private static blacklist anInt(IILandroid/content/res/TypedArray;)I
    .registers 3

    .line 3499
    invoke-virtual {p2, p1, p0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p0

    return p0
.end method

.method private static blacklist anInt(ILandroid/content/res/TypedArray;)I
    .registers 3

    .line 3507
    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p0

    return p0
.end method

.method private static blacklist anInteger(IILandroid/content/res/TypedArray;)I
    .registers 3

    .line 3503
    invoke-virtual {p2, p1, p0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p0

    return p0
.end method

.method private static blacklist bool(ZILandroid/content/res/TypedArray;)Z
    .registers 3

    .line 3487
    invoke-virtual {p2, p1, p0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p0

    return p0
.end method

.method private static blacklist convertCompatPermissions(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;)V
    .registers 6

    .line 3207
    sget-object v0, Lcom/android/internal/pm/permission/CompatibilityPermissionInfo;->COMPAT_PERMS:[Lcom/android/internal/pm/permission/CompatibilityPermissionInfo;

    array-length v0, v0

    const/4 v1, 0x0

    :goto_4
    if-ge v1, v0, :cond_2d

    .line 3208
    sget-object v2, Lcom/android/internal/pm/permission/CompatibilityPermissionInfo;->COMPAT_PERMS:[Lcom/android/internal/pm/permission/CompatibilityPermissionInfo;

    aget-object v2, v2, v1

    .line 3209
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getTargetSdkVersion()I

    move-result v3

    invoke-virtual {v2}, Lcom/android/internal/pm/permission/CompatibilityPermissionInfo;->getSdkVersion()I

    move-result v4

    if-lt v3, v4, :cond_15

    .line 3210
    goto :goto_2d

    .line 3212
    :cond_15
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/internal/pm/permission/CompatibilityPermissionInfo;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2a

    .line 3213
    invoke-virtual {v2}, Lcom/android/internal/pm/permission/CompatibilityPermissionInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->addImplicitPermission(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 3207
    :cond_2a
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 3216
    :cond_2d
    :goto_2d
    return-void
.end method

.method private blacklist convertSplitPermissions(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;)V
    .registers 10

    .line 3219
    iget-object v0, p0, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->mSplitPermissionInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 3220
    const/4 v1, 0x0

    move v2, v1

    :goto_8
    if-ge v2, v0, :cond_4b

    .line 3221
    iget-object v3, p0, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->mSplitPermissionInfos:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/permission/PermissionManager$SplitPermissionInfo;

    .line 3222
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v4

    .line 3223
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getTargetSdkVersion()I

    move-result v5

    invoke-virtual {v3}, Landroid/permission/PermissionManager$SplitPermissionInfo;->getTargetSdk()I

    move-result v6

    if-ge v5, v6, :cond_48

    .line 3224
    invoke-virtual {v3}, Landroid/permission/PermissionManager$SplitPermissionInfo;->getSplitPermission()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2b

    .line 3225
    goto :goto_48

    .line 3227
    :cond_2b
    invoke-virtual {v3}, Landroid/permission/PermissionManager$SplitPermissionInfo;->getNewPermissions()Ljava/util/List;

    move-result-object v3

    .line 3228
    move v5, v1

    :goto_30
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_48

    .line 3229
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 3230
    invoke-interface {v4, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_45

    .line 3231
    invoke-interface {p1, v6}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->addImplicitPermission(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 3228
    :cond_45
    add-int/lit8 v5, v5, 0x1

    goto :goto_30

    .line 3220
    :cond_48
    :goto_48
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 3235
    :cond_4b
    return-void
.end method

.method private static blacklist drawableResIdArray(Landroid/content/pm/parsing/result/ParseInput;Landroid/content/res/TypedArray;Landroid/content/res/Resources;II)Landroid/content/pm/parsing/result/ParseResult;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Landroid/content/res/TypedArray;",
            "Landroid/content/res/Resources;",
            "II)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "[I>;"
        }
    .end annotation

    .line 3522
    const-string v4, "drawable"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->resIdArray(Landroid/content/pm/parsing/result/ParseInput;Landroid/content/res/TypedArray;Landroid/content/res/Resources;ILjava/lang/String;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist exactSizedCopyOfSparseArray(Landroid/util/SparseIntArray;)Landroid/util/SparseIntArray;
    .registers 5

    .line 1837
    if-nez p0, :cond_4

    .line 1838
    const/4 p0, 0x0

    return-object p0

    .line 1840
    :cond_4
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-virtual {p0}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    .line 1841
    const/4 v1, 0x0

    :goto_e
    invoke-virtual {p0}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_22

    .line 1842
    invoke-virtual {p0, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p0, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1841
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 1844
    :cond_22
    return-object v0
.end method

.method private static blacklist generateAppDetailsHiddenActivity(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/internal/pm/pkg/component/ParsedActivity;",
            ">;"
        }
    .end annotation

    .line 2956
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 2957
    const-string v1, ":app_details"

    invoke-static {v0, v0, v1, p0}, Lcom/android/internal/pm/pkg/component/ComponentParseUtils;->buildTaskAffinityName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    .line 2959
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 2960
    invoke-interface {p0, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    .line 2963
    :cond_15
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2966
    nop

    .line 2967
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getProcessName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getUiOptions()I

    move-result v3

    .line 2968
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->isHardwareAccelerated()Z

    move-result p1

    .line 2966
    invoke-static {v0, v2, v3, v1, p1}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->makeAppDetailsActivity(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Z)Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;

    move-result-object p1

    invoke-interface {p0, p1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist getAconfigFlags()Lcom/android/internal/pm/pkg/component/AconfigFlags;
    .registers 1

    .line 3699
    sget-object v0, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->sAconfigFlags:Lcom/android/internal/pm/pkg/component/AconfigFlags;

    return-object v0
.end method

.method public static blacklist getSigningDetails(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/parsing/pkg/ParsedPackage;Z)Landroid/content/pm/parsing/result/ParseResult;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Lcom/android/internal/pm/parsing/pkg/ParsedPackage;",
            "Z)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Landroid/content/pm/SigningDetails;",
            ">;"
        }
    .end annotation

    .line 3324
    invoke-interface {p1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getBaseApkPath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->isStaticSharedLibrary()Z

    move-result v2

    .line 3325
    invoke-interface {p1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getTargetSdkVersion()I

    move-result v3

    invoke-interface {p1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getSplitCodePaths()[Ljava/lang/String;

    move-result-object v4

    .line 3324
    move-object v0, p0

    move v5, p2

    invoke-static/range {v0 .. v5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->getSigningDetails(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;ZI[Ljava/lang/String;Z)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist getSigningDetails(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Z)Landroid/content/pm/parsing/result/ParseResult;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            "Z)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Landroid/content/pm/SigningDetails;",
            ">;"
        }
    .end annotation

    .line 3331
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getBaseApkPath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->isStaticSharedLibrary()Z

    move-result v2

    .line 3332
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getTargetSdkVersion()I

    move-result v3

    invoke-interface {p1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getSplitCodePaths()[Ljava/lang/String;

    move-result-object v4

    .line 3331
    move-object v0, p0

    move v5, p2

    invoke-static/range {v0 .. v5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->getSigningDetails(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;ZI[Ljava/lang/String;Z)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist getSigningDetails(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;ZI[Ljava/lang/String;Z)Landroid/content/pm/parsing/result/ParseResult;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Ljava/lang/String;",
            "ZI[",
            "Ljava/lang/String;",
            "Z)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Landroid/content/pm/SigningDetails;",
            ">;"
        }
    .end annotation

    .line 3347
    sget-object v4, Landroid/content/pm/SigningDetails;->UNKNOWN:Landroid/content/pm/SigningDetails;

    .line 3349
    const-string v0, "collectCertificates"

    const-wide/32 v6, 0x40000

    invoke-static {v6, v7, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 3351
    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v5, p3

    move v2, p5

    :try_start_f
    invoke-static/range {v0 .. v5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->getSigningDetails(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;ZZLandroid/content/pm/SigningDetails;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    .line 3359
    invoke-interface {p0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result p1

    if-eqz p1, :cond_21

    .line 3360
    invoke-interface {v0, p0}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0
    :try_end_1d
    .catchall {:try_start_f .. :try_end_1d} :catchall_63

    .line 3385
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 3360
    return-object p0

    .line 3363
    :cond_21
    :try_start_21
    invoke-interface {p0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Landroid/content/pm/SigningDetails;

    .line 3364
    new-instance p1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object p2

    const-string p3, "framework/framework-res.apk"

    invoke-direct {p1, p2, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3366
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    .line 3367
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    .line 3368
    invoke-static {p4}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5e

    if-nez p1, :cond_5e

    .line 3369
    const/4 p1, 0x0

    :goto_44
    array-length p2, p4

    if-ge p1, p2, :cond_5e

    .line 3370
    aget-object v1, p4, p1

    invoke-static/range {v0 .. v5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->getSigningDetails(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;ZZLandroid/content/pm/SigningDetails;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    .line 3378
    invoke-interface {p0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result p2

    if-eqz p2, :cond_5b

    .line 3379
    invoke-interface {v0, p0}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0
    :try_end_57
    .catchall {:try_start_21 .. :try_end_57} :catchall_63

    .line 3385
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 3379
    return-object p0

    .line 3369
    :cond_5b
    add-int/lit8 p1, p1, 0x1

    goto :goto_44

    .line 3383
    :cond_5e
    nop

    .line 3385
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 3383
    return-object p0

    .line 3385
    :catchall_63
    move-exception v0

    move-object p0, v0

    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 3386
    throw p0
.end method

.method public static blacklist getSigningDetails(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;ZZLandroid/content/pm/SigningDetails;I)Landroid/content/pm/parsing/result/ParseResult;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Ljava/lang/String;",
            "ZZ",
            "Landroid/content/pm/SigningDetails;",
            "I)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Landroid/content/pm/SigningDetails;",
            ">;"
        }
    .end annotation

    .line 3393
    invoke-static {p5}, Landroid/util/apk/ApkSignatureVerifier;->getMinimumSignatureSchemeVersionForTargetSdk(I)I

    move-result p5

    .line 3395
    if-eqz p3, :cond_7

    .line 3397
    const/4 p5, 0x2

    .line 3400
    :cond_7
    if-eqz p2, :cond_e

    .line 3402
    invoke-static {p0, p1, p5}, Landroid/util/apk/ApkSignatureVerifier;->unsafeGetCertsWithoutVerification(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p2

    goto :goto_12

    .line 3405
    :cond_e
    invoke-static {p0, p1, p5}, Landroid/util/apk/ApkSignatureVerifier;->verify(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p2

    .line 3408
    :goto_12
    invoke-interface {p2}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result p3

    if-eqz p3, :cond_1d

    .line 3409
    invoke-interface {p0, p2}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    .line 3415
    :cond_1d
    sget-object p3, Landroid/content/pm/SigningDetails;->UNKNOWN:Landroid/content/pm/SigningDetails;

    if-ne p4, p3, :cond_22

    .line 3416
    return-object p2

    .line 3418
    :cond_22
    invoke-interface {p2}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/pm/SigningDetails;

    invoke-static {p4, p2}, Landroid/content/pm/Signature;->areExactMatch(Landroid/content/pm/SigningDetails;Landroid/content/pm/SigningDetails;)Z

    move-result p2

    if-nez p2, :cond_48

    .line 3419
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " has mismatched certificates"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 p2, -0x68

    invoke-interface {p0, p2, p1}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    .line 3423
    :cond_48
    invoke-interface {p0, p4}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist getVolumeUuid(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 582
    nop

    .line 583
    const-string v0, "/mnt/expand/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 584
    const/16 v1, 0x2f

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 585
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_1d

    .line 583
    :cond_1c
    const/4 p0, 0x0

    .line 587
    :goto_1d
    return-object p0
.end method

.method private static blacklist hasDomainURLs(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;)Z
    .registers 10

    .line 2979
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getActivities()Ljava/util/List;

    move-result-object p0

    .line 2980
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 2981
    const/4 v1, 0x0

    move v2, v1

    :goto_a
    if-ge v2, v0, :cond_50

    .line 2982
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/pm/pkg/component/ParsedActivity;

    .line 2983
    invoke-interface {v3}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getIntents()Ljava/util/List;

    move-result-object v3

    .line 2984
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    .line 2985
    move v5, v1

    :goto_1b
    if-ge v5, v4, :cond_4d

    .line 2986
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;

    invoke-interface {v6}, Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v6

    .line 2987
    const-string v7, "android.intent.action.VIEW"

    invoke-virtual {v6, v7}, Landroid/content/IntentFilter;->hasAction(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_30

    goto :goto_48

    .line 2988
    :cond_30
    invoke-virtual {v6, v7}, Landroid/content/IntentFilter;->hasAction(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_37

    goto :goto_48

    .line 2989
    :cond_37
    const-string v7, "http"

    invoke-virtual {v6, v7}, Landroid/content/IntentFilter;->hasDataScheme(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4b

    .line 2990
    const-string v7, "https"

    invoke-virtual {v6, v7}, Landroid/content/IntentFilter;->hasDataScheme(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_48

    goto :goto_4b

    .line 2985
    :cond_48
    :goto_48
    add-int/lit8 v5, v5, 0x1

    goto :goto_1b

    .line 2991
    :cond_4b
    :goto_4b
    const/4 p0, 0x1

    return p0

    .line 2981
    :cond_4d
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 2995
    :cond_50
    return v1
.end method

.method private blacklist isValidPurpose(Ljava/lang/String;II)Z
    .registers 4

    .line 1575
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_10

    sget p1, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->SDK_VERSION:I

    if-lt p1, p2, :cond_10

    sget p1, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->SDK_VERSION:I

    if-gt p1, p3, :cond_10

    const/4 p1, 0x1

    goto :goto_11

    :cond_10
    const/4 p1, 0x0

    :goto_11
    return p1
.end method

.method static synthetic blacklist lambda$resIdArray$0(Ljava/lang/Integer;)I
    .registers 1

    .line 3600
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method private static blacklist nonConfigString(IILandroid/content/res/TypedArray;)Ljava/lang/String;
    .registers 3

    .line 3610
    invoke-virtual {p2, p1, p0}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist nonResString(ILandroid/content/res/TypedArray;)Ljava/lang/String;
    .registers 2

    .line 3614
    invoke-virtual {p1, p0}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist parseAdditionalCertificates(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 2907
    sget-object v0, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    .line 2908
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v1

    .line 2910
    :goto_6
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_7c

    const/4 v3, 0x3

    if-ne v2, v3, :cond_16

    .line 2912
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v3

    if-le v3, v1, :cond_7c

    .line 2913
    :cond_16
    const/4 v3, 0x2

    if-eq v2, v3, :cond_1a

    .line 2914
    goto :goto_6

    .line 2916
    :cond_1a
    sget-object v2, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->sAconfigFlags:Lcom/android/internal/pm/pkg/component/AconfigFlags;

    invoke-virtual {v2, p1, p3}, Lcom/android/internal/pm/pkg/component/AconfigFlags;->skipCurrentElement(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 2917
    invoke-static {p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2918
    goto :goto_6

    .line 2921
    :cond_26
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 2922
    const-string v3, "additional-certificate"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7b

    .line 2923
    sget-object v2, Lcom/android/internal/R$styleable;->AndroidManifestAdditionalCertificate:[I

    invoke-virtual {p2, p3, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 2926
    const/4 v3, 0x0

    :try_start_39
    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v3

    .line 2929
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5e

    .line 2930
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Bad additional-certificate declaration with empty certDigest:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0
    :try_end_5a
    .catchall {:try_start_39 .. :try_end_5a} :catchall_76

    .line 2941
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 2930
    return-object p0

    .line 2937
    :cond_5e
    :try_start_5e
    const-string v4, ":"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 2938
    const-class v4, Ljava/lang/String;

    invoke-static {v4, v0, v3}, Lcom/android/internal/util/ArrayUtils;->appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;
    :try_end_72
    .catchall {:try_start_5e .. :try_end_72} :catchall_76

    .line 2941
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 2942
    goto :goto_7b

    .line 2941
    :catchall_76
    move-exception p0

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 2942
    throw p0

    .line 2944
    :cond_7b
    :goto_7b
    goto :goto_6

    .line 2946
    :cond_7c
    invoke-interface {p0, v0}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist parseAdoptPermissions(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    .line 3194
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestAdoptPermissions:[I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 3196
    const/4 p3, 0x0

    :try_start_7
    invoke-static {p3, p3, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->nonConfigString(IILandroid/content/res/TypedArray;)Ljava/lang/String;

    move-result-object p3

    .line 3197
    if-eqz p3, :cond_10

    .line 3198
    invoke-interface {p1, p3}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->addAdoptPermission(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 3200
    :cond_10
    invoke-interface {p0, p1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_18

    .line 3202
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 3200
    return-object p0

    .line 3202
    :catchall_18
    move-exception p0

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 3203
    throw p0
.end method

.method private static blacklist parseAttribution(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1344
    invoke-static {p2, p3, p0}, Lcom/android/internal/pm/pkg/component/ParsedAttributionUtils;->parseAttribution(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p2

    .line 1346
    invoke-interface {p2}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result p3

    if-eqz p3, :cond_f

    .line 1347
    invoke-interface {p0, p2}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    .line 1349
    :cond_f
    invoke-interface {p2}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/internal/pm/pkg/component/ParsedAttribution;

    invoke-interface {p1, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->addAttribution(Lcom/android/internal/pm/pkg/component/ParsedAttribution;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object p1

    invoke-interface {p0, p1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0
.end method

.method private blacklist parseBaseApk(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;Ljava/lang/String;Lcom/android/internal/pm/split/SplitAssetLoader;IZ)Landroid/content/pm/parsing/result/ParseResult;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "Lcom/android/internal/pm/split/SplitAssetLoader;",
            "IZ)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    .line 593
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 595
    invoke-static {v2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->getVolumeUuid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 601
    :try_start_8
    invoke-interface {p4}, Lcom/android/internal/pm/split/SplitAssetLoader;->getBaseAssetManager()Landroid/content/res/AssetManager;

    move-result-object v8
    :try_end_c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_c} :catch_15f

    .line 605
    nop

    .line 606
    invoke-virtual {v8, v2}, Landroid/content/res/AssetManager;->findCookieForPath(Ljava/lang/String;)I

    move-result v0

    .line 607
    if-nez v0, :cond_2d

    .line 608
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Failed adding asset path: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/16 p3, -0x65

    invoke-interface {p1, p3, p2}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p1

    return-object p1

    .line 612
    :cond_2d
    :try_start_2d
    const-string v1, "AndroidManifest.xml"

    invoke-virtual {v8, v0, v1}, Landroid/content/res/AssetManager;->openXmlResourceParser(ILjava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v5
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_33} :catch_142

    .line 614
    :try_start_33
    new-instance v4, Landroid/content/res/Resources;

    iget-object v0, p0, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    const/4 v1, 0x0

    invoke-direct {v4, v8, v0, v1}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V
    :try_end_3b
    .catchall {:try_start_33 .. :try_end_3b} :catchall_131

    .line 616
    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move v6, p5

    move v7, p6

    :try_start_40
    invoke-direct/range {v0 .. v7}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseBaseApk(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;Ljava/lang/String;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;IZ)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p1

    .line 618
    invoke-interface {p1}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result p3

    if-eqz p3, :cond_81

    .line 619
    invoke-interface {p1}, Landroid/content/pm/parsing/result/ParseResult;->getErrorCode()I

    move-result p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string p4, " (at "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    .line 620
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string p4, "): "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    .line 621
    invoke-interface {p1}, Landroid/content/pm/parsing/result/ParseResult;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 619
    invoke-interface {v1, p2, p1}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p1
    :try_end_7b
    .catchall {:try_start_40 .. :try_end_7b} :catchall_12f

    .line 673
    if-eqz v5, :cond_80

    :try_start_7d
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_7d .. :try_end_80} :catch_140

    .line 619
    :cond_80
    return-object p1

    .line 624
    :cond_81
    :try_start_81
    invoke-interface {p1}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 625
    invoke-virtual {v8}, Landroid/content/res/AssetManager;->containsAllocatedTable()Z

    move-result p3

    if-eqz p3, :cond_ad

    .line 626
    const-string p3, "Targeting R+ (version 30 and above) requires the resources.arsc of installed APKs to be stored uncompressed and aligned on a 4-byte boundary"

    const-wide/32 p5, 0x7e97bf3

    invoke-interface {v1, p3, p5, p6}, Landroid/content/pm/parsing/result/ParseInput;->deferError(Ljava/lang/String;J)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p3

    .line 631
    invoke-interface {p3}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result p5

    if-eqz p5, :cond_ad

    .line 632
    nop

    .line 633
    invoke-interface {p3}, Landroid/content/pm/parsing/result/ParseResult;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    .line 632
    const/16 p2, -0x7c

    invoke-interface {v1, p2, p1}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p1
    :try_end_a7
    .catchall {:try_start_81 .. :try_end_a7} :catchall_12f

    .line 673
    if-eqz v5, :cond_ac

    :try_start_a9
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_ac
    .catch Ljava/lang/Exception; {:try_start_a9 .. :try_end_ac} :catch_140

    .line 632
    :cond_ac
    return-object p1

    .line 637
    :cond_ad
    :try_start_ad
    invoke-interface {p4}, Lcom/android/internal/pm/split/SplitAssetLoader;->getBaseApkAssets()Landroid/content/res/ApkAssets;

    move-result-object p3
    :try_end_b1
    .catchall {:try_start_ad .. :try_end_b1} :catchall_12f

    .line 638
    nop

    .line 640
    const/4 p4, 0x0

    :try_start_b3
    invoke-virtual {p3}, Landroid/content/res/ApkAssets;->definesOverlayable()Z

    move-result p3
    :try_end_b7
    .catch Ljava/io/IOException; {:try_start_b3 .. :try_end_b7} :catch_b8
    .catchall {:try_start_b3 .. :try_end_b7} :catchall_12f

    .line 643
    goto :goto_ba

    .line 641
    :catch_b8
    move-exception v0

    move p3, p4

    .line 645
    :goto_ba
    if-eqz p3, :cond_fa

    .line 646
    :try_start_bc
    invoke-virtual {v8}, Landroid/content/res/AssetManager;->getAssignedPackageIdentifiers()Landroid/util/SparseArray;

    move-result-object p3

    .line 647
    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result p5

    .line 648
    move p6, p4

    :goto_c5
    if-ge p6, p5, :cond_fa

    .line 649
    invoke-virtual {p3, p6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 650
    invoke-virtual {v8, v0}, Landroid/content/res/AssetManager;->getOverlayableMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 651
    if-eqz v0, :cond_f7

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_f7

    .line 652
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_e1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_f7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 653
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {p1, v4, v7}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->addOverlayable(Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 654
    goto :goto_e1

    .line 648
    :cond_f7
    add-int/lit8 p6, p6, 0x1

    goto :goto_c5

    .line 659
    :cond_fa
    invoke-interface {p1, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setVolumeUuid(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 661
    and-int/lit8 p2, v6, 0x20

    if-eqz p2, :cond_120

    .line 662
    nop

    .line 663
    invoke-static {v1, p1, p4}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->getSigningDetails(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Z)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p2

    .line 664
    invoke-interface {p2}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result p3

    if-eqz p3, :cond_116

    .line 665
    invoke-interface {v1, p2}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p1
    :try_end_110
    .catchall {:try_start_bc .. :try_end_110} :catchall_12f

    .line 673
    if-eqz v5, :cond_115

    :try_start_112
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_115
    .catch Ljava/lang/Exception; {:try_start_112 .. :try_end_115} :catch_140

    .line 665
    :cond_115
    return-object p1

    .line 667
    :cond_116
    :try_start_116
    invoke-interface {p2}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/pm/SigningDetails;

    invoke-interface {p1, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setSigningDetails(Landroid/content/pm/SigningDetails;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 668
    goto :goto_125

    .line 669
    :cond_120
    sget-object p2, Landroid/content/pm/SigningDetails;->UNKNOWN:Landroid/content/pm/SigningDetails;

    invoke-interface {p1, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setSigningDetails(Landroid/content/pm/SigningDetails;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 672
    :goto_125
    invoke-interface {v1, p1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p1
    :try_end_129
    .catchall {:try_start_116 .. :try_end_129} :catchall_12f

    .line 673
    if-eqz v5, :cond_12e

    :try_start_12b
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_12e
    .catch Ljava/lang/Exception; {:try_start_12b .. :try_end_12e} :catch_140

    .line 672
    :cond_12e
    return-object p1

    .line 612
    :catchall_12f
    move-exception v0

    goto :goto_133

    :catchall_131
    move-exception v0

    move-object v1, p1

    :goto_133
    move-object p1, v0

    if-eqz v5, :cond_13f

    :try_start_136
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_139
    .catchall {:try_start_136 .. :try_end_139} :catchall_13a

    goto :goto_13f

    :catchall_13a
    move-exception v0

    move-object p2, v0

    :try_start_13c
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_13f
    :goto_13f
    throw p1
    :try_end_140
    .catch Ljava/lang/Exception; {:try_start_13c .. :try_end_140} :catch_140

    .line 673
    :catch_140
    move-exception v0

    goto :goto_144

    :catch_142
    move-exception v0

    move-object v1, p1

    :goto_144
    move-object p1, v0

    .line 674
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Failed to read manifest from "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/16 p3, -0x66

    invoke-interface {v1, p3, p2, p1}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;Ljava/lang/Exception;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p1

    return-object p1

    .line 602
    :catch_15f
    move-exception v0

    move-object v1, p1

    move-object p1, v0

    .line 603
    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    instance-of p2, p2, Ljava/io/IOException;

    if-eqz p2, :cond_16c

    const/4 p2, -0x2

    goto :goto_16e

    .line 604
    :cond_16c
    const/16 p2, -0x64

    :goto_16e
    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p3

    .line 603
    invoke-interface {v1, p2, p3, p1}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;Ljava/lang/Exception;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p1

    return-object p1
.end method

.method private blacklist parseBaseApk(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;Ljava/lang/String;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;IZ)Landroid/content/pm/parsing/result/ParseResult;
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            "IZ)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 731
    move-object/from16 v5, p5

    .line 732
    invoke-static {p1, v5}, Landroid/content/pm/parsing/ApkLiteParseUtils;->parsePackageSplitNames(Landroid/content/pm/parsing/result/ParseInput;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    .line 733
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 734
    invoke-interface {p1, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p1

    return-object p1

    .line 737
    :cond_11
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 738
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v7, v1

    check-cast v7, Ljava/lang/String;

    .line 739
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 741
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_40

    .line 742
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Expected base APK, but found split "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/16 p3, -0x6a

    invoke-interface {p1, p3, p2}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p1

    return-object p1

    .line 748
    :cond_40
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifest:[I

    move-object/from16 v4, p4

    invoke-virtual {v4, v5, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v10

    .line 750
    :try_start_48
    const-string v0, "coreApp"

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v5, v2, v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v11

    .line 752
    iget-object v6, p0, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->mCallback:Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils$Callback;

    move-object v8, p2

    move-object v9, p3

    invoke-interface/range {v6 .. v11}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils$Callback;->startParsingPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/res/TypedArray;Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v2
    :try_end_58
    .catchall {:try_start_48 .. :try_end_58} :catchall_7a

    .line 754
    nop

    .line 755
    move-object v0, p0

    move-object v1, p1

    move/from16 v6, p6

    move/from16 v7, p7

    move-object v3, v10

    :try_start_60
    invoke-direct/range {v0 .. v7}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseBaseApkTags(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/TypedArray;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;IZ)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p2
    :try_end_64
    .catchall {:try_start_60 .. :try_end_64} :catchall_77

    .line 757
    :try_start_64
    invoke-interface {p2}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result p3
    :try_end_68
    .catchall {:try_start_64 .. :try_end_68} :catchall_7a

    if-eqz p3, :cond_6f

    .line 758
    nop

    .line 763
    invoke-virtual {v10}, Landroid/content/res/TypedArray;->recycle()V

    .line 758
    return-object p2

    .line 761
    :cond_6f
    :try_start_6f
    invoke-interface {p1, v2}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p1
    :try_end_73
    .catchall {:try_start_6f .. :try_end_73} :catchall_7a

    .line 763
    invoke-virtual {v10}, Landroid/content/res/TypedArray;->recycle()V

    .line 761
    return-object p1

    .line 763
    :catchall_77
    move-exception v0

    move-object v10, v3

    goto :goto_7b

    :catchall_7a
    move-exception v0

    :goto_7b
    move-object p1, v0

    invoke-virtual {v10}, Landroid/content/res/TypedArray;->recycle()V

    .line 764
    throw p1
.end method

.method private blacklist parseBaseApkTag(Ljava/lang/String;Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I)Landroid/content/pm/parsing/result/ParseResult;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1114
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_1a8

    :cond_7
    goto/16 :goto_12f

    :sswitch_9
    const-string v0, "compatible-screens"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    const/16 p1, 0x14

    goto/16 :goto_130

    :sswitch_15
    const-string v0, "uses-feature"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    const/16 p1, 0xb

    goto/16 :goto_130

    :sswitch_21
    const-string v0, "uses-permission-sdk-m"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    const/16 p1, 0x8

    goto/16 :goto_130

    :sswitch_2d
    const-string v0, "feature-group"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    const/16 p1, 0xc

    goto/16 :goto_130

    :sswitch_39
    const-string v0, "protected-broadcast"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    const/16 p1, 0xf

    goto/16 :goto_130

    :sswitch_45
    const-string v0, "uses-permission-sdk-23"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    const/16 p1, 0x9

    goto/16 :goto_130

    :sswitch_51
    const-string v0, "supports-screens"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    const/16 p1, 0xe

    goto/16 :goto_130

    :sswitch_5d
    const-string v0, "install-constraints"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    const/16 p1, 0x18

    goto/16 :goto_130

    :sswitch_69
    const-string v0, "queries"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    const/16 p1, 0x19

    goto/16 :goto_130

    :sswitch_75
    const-string v0, "adopt-permissions"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    const/16 p1, 0x12

    goto/16 :goto_130

    :sswitch_81
    const-string v0, "uses-permission"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    const/4 p1, 0x7

    goto/16 :goto_130

    :sswitch_8c
    const-string v0, "instrumentation"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    const/16 p1, 0x10

    goto/16 :goto_130

    :sswitch_98
    const-string v0, "key-sets"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    const/4 p1, 0x1

    goto/16 :goto_130

    :sswitch_a3
    const-string v0, "supports-input"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    const/16 p1, 0x15

    goto/16 :goto_130

    :sswitch_af
    const-string v0, "uses-gl-texture"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    const/16 p1, 0x13

    goto/16 :goto_130

    :sswitch_bb
    const-string v0, "eat-comment"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    const/16 p1, 0x16

    goto/16 :goto_130

    :sswitch_c7
    const-string v0, "permission-group"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    const/4 p1, 0x4

    goto :goto_130

    :sswitch_d1
    const-string v0, "uses-sdk"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    const/16 p1, 0xd

    goto :goto_130

    :sswitch_dc
    const-string v0, "attribution"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    const/4 p1, 0x3

    goto :goto_130

    :sswitch_e6
    const-string v0, "permission"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    const/4 p1, 0x5

    goto :goto_130

    :sswitch_f0
    const-string v0, "feature"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    const/4 p1, 0x2

    goto :goto_130

    :sswitch_fa
    const-string v0, "restrict-update"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    const/16 p1, 0x17

    goto :goto_130

    :sswitch_105
    const-string v0, "overlay"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    const/4 p1, 0x0

    goto :goto_130

    :sswitch_10f
    const-string v0, "original-package"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    const/16 p1, 0x11

    goto :goto_130

    :sswitch_11a
    const-string v0, "permission-tree"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    const/4 p1, 0x6

    goto :goto_130

    :sswitch_124
    const-string v0, "uses-configuration"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    const/16 p1, 0xa

    goto :goto_130

    :goto_12f
    const/4 p1, -0x1

    :goto_130
    packed-switch p1, :pswitch_data_212

    .line 1165
    const-string p1, "<manifest>"

    invoke-static {p1, p3, p5, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingUtils;->unknownTag(Ljava/lang/String;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p1

    return-object p1

    .line 1163
    :pswitch_13a
    invoke-static {p2, p3, p4, p5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseQueries(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p1

    return-object p1

    .line 1160
    :pswitch_13f
    iget-object p1, p0, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->mCallback:Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils$Callback;

    .line 1161
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils$Callback;->getInstallConstraintsAllowlist()Ljava/util/Set;

    move-result-object p1

    .line 1160
    invoke-static {p2, p3, p4, p5, p1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseInstallConstraints(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Ljava/util/Set;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p1

    return-object p1

    .line 1158
    :pswitch_14a
    invoke-static {p6, p2, p3, p4, p5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseRestrictUpdateHash(ILandroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p1

    return-object p1

    .line 1155
    :pswitch_14f
    invoke-static {p5}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1156
    invoke-interface {p2, p3}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p1

    return-object p1

    .line 1149
    :pswitch_157
    invoke-static {p2, p3, p4, p5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseAdoptPermissions(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p1

    return-object p1

    .line 1147
    :pswitch_15c
    invoke-static {p2, p3, p4, p5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseOriginalPackage(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p1

    return-object p1

    .line 1145
    :pswitch_161
    invoke-static {p2, p3, p4, p5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseInstrumentation(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p1

    return-object p1

    .line 1143
    :pswitch_166
    invoke-static {p2, p3, p4, p5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseProtectedBroadcast(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p1

    return-object p1

    .line 1141
    :pswitch_16b
    invoke-static {p2, p3, p4, p5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseSupportScreens(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p1

    return-object p1

    .line 1139
    :pswitch_170
    invoke-static {p2, p3, p4, p5, p6}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseUsesSdk(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p1

    return-object p1

    .line 1137
    :pswitch_175
    invoke-static {p2, p3, p4, p5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseFeatureGroup(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p1

    return-object p1

    .line 1135
    :pswitch_17a
    invoke-static {p2, p3, p4, p5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseUsesFeature(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p1

    return-object p1

    .line 1133
    :pswitch_17f
    invoke-static {p2, p3, p4, p5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseUsesConfiguration(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p1

    return-object p1

    .line 1131
    :pswitch_184
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseUsesPermission(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p1

    return-object p1

    .line 1127
    :pswitch_189
    invoke-static {p2, p3, p4, p5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parsePermissionTree(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p1

    return-object p1

    .line 1125
    :pswitch_18e
    invoke-static {p2, p3, p4, p5, p6}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parsePermission(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p1

    return-object p1

    .line 1123
    :pswitch_193
    invoke-static {p2, p3, p4, p5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parsePermissionGroup(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p1

    return-object p1

    .line 1121
    :pswitch_198
    invoke-static {p2, p3, p4, p5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseAttribution(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p1

    return-object p1

    .line 1118
    :pswitch_19d
    invoke-static {p2, p3, p4, p5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseKeySets(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p1

    return-object p1

    .line 1116
    :pswitch_1a2
    invoke-static {p2, p3, p4, p5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseOverlay(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p1

    return-object p1

    nop

    :sswitch_data_1a8
    .sparse-switch
        -0x69b7c34b -> :sswitch_124
        -0x6366e724 -> :sswitch_11a
        -0x420dbfb6 -> :sswitch_10f
        -0x410bbbb0 -> :sswitch_105
        -0x3b806306 -> :sswitch_fa
        -0x3a5d850a -> :sswitch_f0
        -0x1eda3a31 -> :sswitch_e6
        -0x12786f81 -> :sswitch_dc
        -0xfe5a947 -> :sswitch_d1
        -0xa2d06ff -> :sswitch_c7
        -0x7b47f16 -> :sswitch_bb
        0x71978d4 -> :sswitch_af
        0x14d5f341 -> :sswitch_a3
        0x1b1d76ff -> :sswitch_98
        0x20752f6e -> :sswitch_8c
        0x23c12e70 -> :sswitch_81
        0x25af09e7 -> :sswitch_75
        0x270bd766 -> :sswitch_69
        0x33694d04 -> :sswitch_5d
        0x3573e73e -> :sswitch_51
        0x501aeeb1 -> :sswitch_45
        0x55ccf562 -> :sswitch_39
        0x6446f4e8 -> :sswitch_2d
        0x65ae49fd -> :sswitch_21
        0x6adbbdf5 -> :sswitch_15
        0x6c5ff78e -> :sswitch_9
    .end sparse-switch

    :pswitch_data_212
    .packed-switch 0x0
        :pswitch_1a2
        :pswitch_19d
        :pswitch_198
        :pswitch_198
        :pswitch_193
        :pswitch_18e
        :pswitch_189
        :pswitch_184
        :pswitch_184
        :pswitch_184
        :pswitch_17f
        :pswitch_17a
        :pswitch_175
        :pswitch_170
        :pswitch_16b
        :pswitch_166
        :pswitch_161
        :pswitch_15c
        :pswitch_157
        :pswitch_14f
        :pswitch_14f
        :pswitch_14f
        :pswitch_14f
        :pswitch_14a
        :pswitch_13f
        :pswitch_13a
    .end packed-switch
.end method

.method private blacklist parseBaseApkTags(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/TypedArray;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;IZ)Landroid/content/pm/parsing/result/ParseResult;
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/TypedArray;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            "IZ)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 994
    move-object/from16 v4, p5

    invoke-static/range {p1 .. p3}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseSharedUser(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/TypedArray;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    .line 995
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 996
    return-object v0

    .line 999
    :cond_d
    const-string v0, "updatableSystem"

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-interface {v4, v7, v0, v8}, Landroid/content/res/XmlResourceParser;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    .line 1001
    const-string v1, "emergencyInstaller"

    invoke-interface {v4, v7, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1004
    const/4 v2, -0x1

    const/4 v3, 0x4

    invoke-static {v2, v3, p3}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->anInteger(IILandroid/content/res/TypedArray;)I

    move-result v2

    invoke-interface {p2, v2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setInstallLocation(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    .line 1006
    const/4 v3, 0x7

    invoke-static {v8, v3, p3}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->anInteger(IILandroid/content/res/TypedArray;)I

    move-result p3

    invoke-interface {v2, p3}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setTargetSandboxVersion(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object p3

    and-int/lit8 v2, p6, 0x8

    const/4 v3, 0x0

    if-eqz v2, :cond_35

    move v2, v8

    goto :goto_36

    :cond_35
    move v2, v3

    .line 1009
    :goto_36
    invoke-interface {p3, v2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setExternalStorage(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object p3

    .line 1010
    invoke-interface {p3, v0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setUpdatableSystem(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object p3

    .line 1011
    invoke-interface {p3, v1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setEmergencyInstaller(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 1013
    nop

    .line 1014
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result p3

    move v9, v3

    .line 1016
    :goto_47
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v0

    if-eq v0, v8, :cond_b7

    const/4 v1, 0x3

    if-ne v0, v1, :cond_5b

    .line 1018
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v1

    if-le v1, p3, :cond_57

    goto :goto_5b

    :cond_57
    move/from16 v5, p6

    goto/16 :goto_b9

    .line 1019
    :cond_5b
    :goto_5b
    const/4 v1, 0x2

    if-eq v0, v1, :cond_5f

    .line 1020
    goto :goto_47

    .line 1022
    :cond_5f
    sget-object v0, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->sAconfigFlags:Lcom/android/internal/pm/pkg/component/AconfigFlags;

    invoke-virtual {v0, p2, v4}, Lcom/android/internal/pm/pkg/component/AconfigFlags;->skipCurrentElement(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v0

    if-eqz v0, :cond_6b

    .line 1023
    invoke-static {v4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1024
    goto :goto_47

    .line 1027
    :cond_6b
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1031
    const-string v0, "application"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_98

    .line 1032
    if-eqz v9, :cond_89

    .line 1036
    const-string v0, "PackageParsing"

    const-string v1, "<manifest> has more than one <application>"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1037
    invoke-interface {p1, v7}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    move/from16 v5, p6

    move v1, v9

    move-object v9, v0

    goto :goto_a8

    .line 1040
    :cond_89
    nop

    .line 1041
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move/from16 v5, p6

    move/from16 v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseBaseApplication(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;IZ)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v9

    move v1, v8

    goto :goto_a8

    .line 1045
    :cond_98
    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseBaseApkTag(Ljava/lang/String;Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    move v5, v6

    move v10, v9

    move-object v9, v1

    move v1, v10

    .line 1048
    :goto_a8
    invoke-interface {v9}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v4

    if-eqz v4, :cond_b3

    .line 1049
    invoke-interface {p1, v9}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p1

    return-object p1

    .line 1051
    :cond_b3
    move-object/from16 v4, p5

    move v9, v1

    goto :goto_47

    .line 1016
    :cond_b7
    move/from16 v5, p6

    .line 1053
    :goto_b9
    if-nez v9, :cond_d9

    invoke-interface {p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getInstrumentations()Ljava/util/List;

    move-result-object p3

    invoke-static {p3}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result p3

    if-nez p3, :cond_d9

    .line 1054
    const-string p3, "<manifest> does not contain an <application> or <instrumentation>"

    const-wide/32 v6, 0x8fcab42

    invoke-interface {p1, p3, v6, v7}, Landroid/content/pm/parsing/result/ParseInput;->deferError(Ljava/lang/String;J)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p3

    .line 1057
    invoke-interface {p3}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result p4

    if-eqz p4, :cond_d9

    .line 1058
    invoke-interface {p1, p3}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p1

    return-object p1

    .line 1062
    :cond_d9
    invoke-direct {p0, p1, p2, v5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->validateBaseApkTags(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p1

    return-object p1
.end method

.method private blacklist parseBaseAppBasicFlags(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/TypedArray;)V
    .registers 10

    .line 2461
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getTargetSdkVersion()I

    move-result v0

    .line 2464
    nop

    .line 2466
    const/4 v1, 0x1

    const/16 v2, 0x11

    invoke-static {v1, v2, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v2

    invoke-interface {p1, v2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setBackupAllowed(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object p1

    .line 2467
    const/4 v2, 0x5

    invoke-static {v1, v2, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v2

    invoke-interface {p1, v2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setClearUserDataAllowed(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object p1

    .line 2468
    const/16 v2, 0x36

    invoke-static {v1, v2, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v2

    invoke-interface {p1, v2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setClearUserDataOnFailedRestoreAllowed(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object p1

    .line 2469
    const/16 v2, 0x3b

    invoke-static {v1, v2, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v2

    invoke-interface {p1, v2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setAllowNativeHeapPointerTagging(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object p1

    .line 2470
    const/16 v2, 0x9

    invoke-static {v1, v2, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v2

    invoke-interface {p1, v2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setEnabled(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object p1

    .line 2471
    const/16 v2, 0x22

    invoke-static {v1, v2, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v2

    invoke-interface {p1, v2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setExtractNativeLibrariesRequested(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object p1

    .line 2472
    const/4 v2, 0x7

    invoke-static {v1, v2, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v2

    invoke-interface {p1, v2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setDeclaredHavingCode(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object p1

    .line 2474
    const/4 v2, 0x0

    const/16 v3, 0xe

    invoke-static {v2, v3, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v4

    invoke-interface {p1, v4}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setTaskReparentingAllowed(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object p1

    .line 2475
    const/16 v4, 0x2f

    invoke-static {v2, v4, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v4

    invoke-interface {p1, v4}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setSaveStateDisallowed(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object p1

    .line 2476
    const/16 v4, 0x3a

    invoke-static {v2, v4, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v4

    invoke-interface {p1, v4}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setCrossProfile(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object p1

    .line 2477
    const/16 v4, 0xa

    invoke-static {v2, v4, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v4

    invoke-interface {p1, v4}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setDebuggable(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object p1

    .line 2478
    const/16 v4, 0x26

    invoke-static {v2, v4, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v4

    invoke-interface {p1, v4}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setDefaultToDeviceProtectedStorage(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object p1

    .line 2479
    const/16 v4, 0x27

    invoke-static {v2, v4, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v4

    invoke-interface {p1, v4}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setDirectBootAware(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object p1

    .line 2480
    const/16 v4, 0x39

    invoke-static {v2, v4, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v4

    invoke-interface {p1, v4}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setForceQueryable(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object p1

    .line 2481
    const/16 v4, 0x1f

    invoke-static {v2, v4, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v4

    invoke-interface {p1, v4}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setGame(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object p1

    .line 2482
    const/16 v4, 0x32

    invoke-static {v2, v4, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v4

    invoke-interface {p1, v4}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setUserDataFragile(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object p1

    .line 2483
    const/16 v4, 0x18

    invoke-static {v2, v4, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v4

    invoke-interface {p1, v4}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setLargeHeap(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object p1

    .line 2484
    const/16 v4, 0x21

    invoke-static {v2, v4, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v4

    invoke-interface {p1, v4}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setMultiArch(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object p1

    .line 2485
    const/16 v4, 0x3d

    invoke-static {v2, v4, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v4

    invoke-interface {p1, v4}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setPreserveLegacyExternalStorage(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object p1

    .line 2486
    const/16 v4, 0x1b

    invoke-static {v2, v4, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v4

    invoke-interface {p1, v4}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setRequiredForAllUsers(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object p1

    .line 2487
    const/16 v4, 0x1a

    invoke-static {v2, v4, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v4

    invoke-interface {p1, v4}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setRtlSupported(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object p1

    .line 2488
    const/16 v4, 0xf

    invoke-static {v2, v4, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v4

    invoke-interface {p1, v4}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setTestOnly(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object p1

    .line 2489
    const/16 v4, 0x35

    invoke-static {v2, v4, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v4

    invoke-interface {p1, v4}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setUseEmbeddedDex(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object p1

    .line 2490
    const/16 v4, 0x31

    invoke-static {v2, v4, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v4

    invoke-interface {p1, v4}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setNonSdkApiRequested(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object p1

    .line 2491
    const/16 v4, 0x14

    invoke-static {v2, v4, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v4

    invoke-interface {p1, v4}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setVmSafeMode(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object p1

    .line 2492
    const/16 v4, 0x3c

    invoke-static {v4, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->anInt(ILandroid/content/res/TypedArray;)I

    move-result v4

    invoke-interface {p1, v4}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setAutoRevokePermissions(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object p1

    .line 2493
    const/16 v4, 0x45

    invoke-static {v2, v4, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v4

    invoke-interface {p1, v4}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setAttributionsAreUserVisible(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object p1

    .line 2494
    const/16 v4, 0x46

    invoke-static {v2, v4, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v4

    invoke-interface {p1, v4}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setResetEnabledSettingsOnAppDataCleared(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object p1

    const/16 v4, 0x1d

    if-lt v0, v4, :cond_123

    move v5, v1

    goto :goto_124

    :cond_123
    move v5, v2

    .line 2498
    :goto_124
    const/16 v6, 0x37

    invoke-static {v5, v6, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v5

    invoke-interface {p1, v5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setAllowAudioPlaybackCapture(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object p1

    if-lt v0, v3, :cond_132

    move v3, v1

    goto :goto_133

    :cond_132
    move v3, v2

    .line 2499
    :goto_133
    const/16 v5, 0x17

    invoke-static {v3, v5, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v3

    invoke-interface {p1, v3}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setHardwareAccelerated(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object p1

    if-ge v0, v4, :cond_141

    move v3, v1

    goto :goto_142

    :cond_141
    move v3, v2

    .line 2500
    :goto_142
    const/16 v5, 0x38

    invoke-static {v3, v5, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v3

    invoke-interface {p1, v3}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setRequestLegacyExternalStorage(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object p1

    const/16 v3, 0x1c

    if-ge v0, v3, :cond_152

    move v5, v1

    goto :goto_153

    :cond_152
    move v5, v2

    .line 2501
    :goto_153
    const/16 v6, 0x24

    invoke-static {v5, v6, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v5

    invoke-interface {p1, v5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setCleartextTrafficAllowed(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object p1

    const/16 v5, 0x23

    if-le v0, v5, :cond_163

    move v0, v1

    goto :goto_164

    :cond_163
    move v0, v2

    .line 2507
    :goto_164
    const/16 v5, 0x49

    invoke-static {v0, v5, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setOnBackInvokedCallbackEnabled(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object p1

    .line 2511
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/app/privatecompute/flags/Flags;->enablePccFrameworkSupport()Z

    move-result v0

    if-eqz v0, :cond_17e

    .line 2512
    const/16 v0, 0x50

    invoke-static {v2, v0, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v0

    if-eqz v0, :cond_17e

    move v0, v1

    goto :goto_17f

    :cond_17e
    move v0, v2

    .line 2510
    :goto_17f
    invoke-interface {p1, v0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setRunInPccSandbox(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object p1

    .line 2515
    const/16 v0, 0x19

    invoke-static {v0, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->anInt(ILandroid/content/res/TypedArray;)I

    move-result v0

    invoke-interface {p1, v0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setUiOptions(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object p1

    .line 2517
    const/4 v0, -0x1

    const/16 v5, 0x2b

    invoke-static {v0, v5, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->anInt(IILandroid/content/res/TypedArray;)I

    move-result v0

    invoke-interface {p1, v0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setCategory(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object p1

    .line 2519
    const/16 v0, 0x2c

    invoke-static {v0, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->aFloat(ILandroid/content/res/TypedArray;)F

    move-result v0

    invoke-interface {p1, v0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setMaxAspectRatio(F)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object p1

    .line 2520
    const/16 v0, 0x33

    invoke-static {v0, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->aFloat(ILandroid/content/res/TypedArray;)F

    move-result v0

    invoke-interface {p1, v0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setMinAspectRatio(F)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object p1

    .line 2522
    const/16 v0, 0x1e

    invoke-static {v0, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->resId(ILandroid/content/res/TypedArray;)I

    move-result v0

    invoke-interface {p1, v0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setBannerResourceId(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object p1

    .line 2523
    const/16 v0, 0xd

    invoke-static {v0, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->resId(ILandroid/content/res/TypedArray;)I

    move-result v0

    invoke-interface {p1, v0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setDescriptionResourceId(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object p1

    .line 2524
    const/4 v0, 0x2

    invoke-static {v0, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->resId(ILandroid/content/res/TypedArray;)I

    move-result v0

    invoke-interface {p1, v0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setIconResourceId(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object p1

    .line 2525
    const/16 v0, 0x16

    invoke-static {v0, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->resId(ILandroid/content/res/TypedArray;)I

    move-result v0

    invoke-interface {p1, v0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setLogoResourceId(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object p1

    .line 2526
    const/16 v0, 0x29

    invoke-static {v0, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->resId(ILandroid/content/res/TypedArray;)I

    move-result v0

    invoke-interface {p1, v0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setNetworkSecurityConfigResourceId(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object p1

    .line 2527
    const/16 v0, 0x2a

    invoke-static {v0, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->resId(ILandroid/content/res/TypedArray;)I

    move-result v0

    invoke-interface {p1, v0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setRoundIconResourceId(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object p1

    .line 2528
    invoke-static {v2, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->resId(ILandroid/content/res/TypedArray;)I

    move-result v0

    invoke-interface {p1, v0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setThemeResourceId(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object p1

    .line 2530
    const/16 v0, 0x42

    invoke-static {v0, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->resId(ILandroid/content/res/TypedArray;)I

    move-result v0

    .line 2529
    invoke-interface {p1, v0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setDataExtractionRulesResourceId(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object p1

    .line 2531
    const/16 v0, 0x47

    invoke-static {v0, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->resId(ILandroid/content/res/TypedArray;)I

    move-result v0

    invoke-interface {p1, v0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setLocaleConfigResourceId(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object p1

    .line 2533
    const/16 v0, 0x2e

    invoke-static {v0, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->string(ILandroid/content/res/TypedArray;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setClassLoaderName(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object p1

    .line 2534
    invoke-static {v4, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->string(ILandroid/content/res/TypedArray;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setRequiredAccountType(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object p1

    .line 2535
    invoke-static {v3, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->string(ILandroid/content/res/TypedArray;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setRestrictedAccountType(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object p1

    .line 2536
    const/16 v0, 0x34

    invoke-static {v0, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->string(ILandroid/content/res/TypedArray;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setZygotePreloadName(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object p1

    .line 2538
    const/4 v0, 0x6

    invoke-static {v2, v0, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->nonConfigString(IILandroid/content/res/TypedArray;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setPermission(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object p1

    .line 2539
    const/16 v0, 0x4a

    invoke-static {v1, v0, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result p2

    invoke-interface {p1, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setAllowCrossUidActivitySwitchFromBelow(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 2543
    return-void
.end method

.method private blacklist parseBaseAppChildTag(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I)Landroid/content/pm/parsing/result/ParseResult;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 2553
    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_130

    :cond_7
    goto/16 :goto_87

    :sswitch_9
    const-string v0, "uses-package"

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    const/16 p2, 0xa

    goto/16 :goto_88

    :sswitch_15
    const-string v0, "profileable"

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    const/16 p2, 0xb

    goto/16 :goto_88

    :sswitch_21
    const-string v0, "library"

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    const/4 p2, 0x4

    goto :goto_88

    :sswitch_2b
    const-string v0, "uses-static-library"

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    const/4 p2, 0x6

    goto :goto_88

    :sswitch_35
    const-string v0, "property"

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    const/4 p2, 0x1

    goto :goto_88

    :sswitch_3f
    const-string v0, "static-library"

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    const/4 p2, 0x3

    goto :goto_88

    :sswitch_49
    const-string v0, "processes"

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    const/16 p2, 0x9

    goto :goto_88

    :sswitch_54
    const-string v0, "meta-data"

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    const/4 p2, 0x0

    goto :goto_88

    :sswitch_5e
    const-string v0, "uses-library"

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    const/4 p2, 0x7

    goto :goto_88

    :sswitch_68
    const-string v0, "uses-sdk-library"

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    const/4 p2, 0x5

    goto :goto_88

    :sswitch_72
    const-string v0, "uses-native-library"

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    const/16 p2, 0x8

    goto :goto_88

    :sswitch_7d
    const-string v0, "sdk-library"

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    const/4 p2, 0x2

    goto :goto_88

    :goto_87
    const/4 p2, -0x1

    :goto_88
    packed-switch p2, :pswitch_data_162

    .line 2595
    move-object v5, p1

    move-object v0, p3

    move-object v3, p5

    const-string p1, "<application>"

    invoke-static {p1, v0, v3, v5}, Lcom/android/internal/pm/pkg/parsing/ParsingUtils;->unknownTag(Ljava/lang/String;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p1

    return-object p1

    .line 2593
    :pswitch_95
    invoke-static {p1, p3, p4, p5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseProfileable(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p1

    return-object p1

    .line 2591
    :pswitch_9a
    const/4 p2, 0x0

    invoke-interface {p1, p2}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p1

    return-object p1

    .line 2587
    :pswitch_a0
    iget-object v4, p0, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->mSeparateProcesses:[Ljava/lang/String;

    move-object v0, p1

    move-object v1, p3

    move-object v2, p4

    move-object v3, p5

    move v5, p6

    invoke-static/range {v0 .. v5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseProcesses(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;[Ljava/lang/String;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p1

    return-object p1

    .line 2585
    :pswitch_ac
    move-object v5, p1

    move-object v0, p3

    move-object v2, p4

    move-object v3, p5

    invoke-static {v5, v0, v2, v3}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseUsesNativeLibrary(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p1

    return-object p1

    .line 2583
    :pswitch_b5
    move-object v5, p1

    move-object v0, p3

    move-object v2, p4

    move-object v3, p5

    invoke-static {v5, v0, v2, v3}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseUsesLibrary(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p1

    return-object p1

    .line 2581
    :pswitch_be
    move-object v5, p1

    move-object v0, p3

    move-object v2, p4

    move-object v3, p5

    invoke-static {v5, v0, v2, v3}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseUsesStaticLibrary(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p1

    return-object p1

    .line 2579
    :pswitch_c7
    move-object v5, p1

    move-object v0, p3

    move-object v2, p4

    move-object v3, p5

    invoke-static {v5, v0, v2, v3}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseUsesSdkLibrary(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p1

    return-object p1

    .line 2577
    :pswitch_d0
    move-object v5, p1

    move-object v0, p3

    move-object v2, p4

    move-object v3, p5

    invoke-static {v0, v2, v3, v5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseLibrary(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p1

    return-object p1

    .line 2575
    :pswitch_d9
    move-object v5, p1

    move-object v0, p3

    move-object v2, p4

    move-object v3, p5

    invoke-static {v0, v2, v3, v5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseStaticLibrary(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p1

    return-object p1

    .line 2573
    :pswitch_e2
    move-object v5, p1

    move-object v0, p3

    move-object v2, p4

    move-object v3, p5

    invoke-static {v0, v2, v3, v5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseSdkLibrary(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p1

    return-object p1

    .line 2566
    :pswitch_eb
    move-object v5, p1

    move-object v0, p3

    move-object v2, p4

    move-object v3, p5

    const/4 v1, 0x0

    const-string v4, "<property>"

    invoke-static/range {v0 .. v5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseMetaData(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Lcom/android/internal/pm/pkg/component/ParsedComponent;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Ljava/lang/String;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p1

    .line 2568
    invoke-interface {p1}, Landroid/content/pm/parsing/result/ParseResult;->isSuccess()Z

    move-result p2

    if-eqz p2, :cond_105

    .line 2569
    invoke-interface {p1}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/pm/PackageManager$Property;

    invoke-interface {v0, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->addProperty(Landroid/content/pm/PackageManager$Property;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 2571
    :cond_105
    return-object p1

    .line 2559
    :pswitch_106
    move-object v5, p1

    move-object v0, p3

    move-object v2, p4

    move-object v3, p5

    const/4 v1, 0x0

    const-string v4, "<meta-data>"

    invoke-static/range {v0 .. v5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseMetaData(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Lcom/android/internal/pm/pkg/component/ParsedComponent;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Ljava/lang/String;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p1

    .line 2561
    invoke-interface {p1}, Landroid/content/pm/parsing/result/ParseResult;->isSuccess()Z

    move-result p2

    if-eqz p2, :cond_12e

    invoke-interface {p1}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_12e

    .line 2562
    invoke-interface {p1}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/pm/PackageManager$Property;

    invoke-interface {v0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getMetaData()Landroid/os/Bundle;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/content/pm/PackageManager$Property;->toBundle(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p2

    invoke-interface {v0, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setMetaData(Landroid/os/Bundle;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 2564
    :cond_12e
    return-object p1

    nop

    :sswitch_data_130
    .sparse-switch
        -0x6b7c15d8 -> :sswitch_7d
        -0x5fe67eda -> :sswitch_72
        -0x5aaa6a59 -> :sswitch_68
        -0x50de9846 -> :sswitch_5e
        -0x4284098e -> :sswitch_54
        -0x4140b4a3 -> :sswitch_49
        -0x3efb77a4 -> :sswitch_3f
        -0x3b32222b -> :sswitch_35
        0x88b87d -> :sswitch_2b
        0x9e824bb -> :sswitch_21
        0xa9d2283 -> :sswitch_15
        0x751e7745 -> :sswitch_9
    .end sparse-switch

    :pswitch_data_162
    .packed-switch 0x0
        :pswitch_106
        :pswitch_eb
        :pswitch_e2
        :pswitch_d9
        :pswitch_d0
        :pswitch_c7
        :pswitch_be
        :pswitch_b5
        :pswitch_ac
        :pswitch_a0
        :pswitch_9a
        :pswitch_95
    .end packed-switch
.end method

.method private blacklist parseBaseApplication(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;IZ)Landroid/content/pm/parsing/result/ParseResult;
    .registers 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            "IZ)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 2053
    move-object/from16 v0, p0

    move-object/from16 v8, p1

    move-object/from16 v7, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    invoke-interface {v7}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 2054
    invoke-interface {v7}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getTargetSdkVersion()I

    move-result v2

    .line 2056
    sget-object v3, Lcom/android/internal/R$styleable;->AndroidManifestApplication:[I

    invoke-virtual {v9, v10, v3}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v11

    .line 2061
    if-nez v11, :cond_24

    .line 2062
    :try_start_1a
    const-string v0, "<application> does not contain any attributes"

    invoke-interface {v8, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_20
    .catchall {:try_start_1a .. :try_end_20} :catchall_4ce

    .line 2297
    invoke-virtual {v11}, Landroid/content/res/TypedArray;->recycle()V

    .line 2062
    return-object v0

    .line 2065
    :cond_24
    const/4 v12, 0x3

    const/4 v13, 0x0

    :try_start_26
    invoke-virtual {v11, v12, v13}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v3
    :try_end_2a
    .catchall {:try_start_26 .. :try_end_2a} :catchall_4ce

    .line 2067
    const-string v4, "Empty class name in package "

    if-eqz v3, :cond_66

    .line 2068
    :try_start_2e
    invoke-interface {v7}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 2069
    invoke-static {v5, v3}, Lcom/android/internal/pm/pkg/parsing/ParsingUtils;->buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 2070
    sget-object v6, Landroid/content/pm/PackageManager;->APP_DETAILS_ACTIVITY_CLASS_NAME:Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_48

    .line 2071
    const-string v0, "<application> invalid android:name"

    invoke-interface {v8, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_44
    .catchall {:try_start_2e .. :try_end_44} :catchall_4ce

    .line 2297
    invoke-virtual {v11}, Landroid/content/res/TypedArray;->recycle()V

    .line 2071
    return-object v0

    .line 2072
    :cond_48
    if-nez v3, :cond_63

    .line 2073
    :try_start_4a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_5f
    .catchall {:try_start_4a .. :try_end_5f} :catchall_4ce

    .line 2297
    invoke-virtual {v11}, Landroid/content/res/TypedArray;->recycle()V

    .line 2073
    return-object v0

    .line 2076
    :cond_63
    :try_start_63
    invoke-interface {v7, v3}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setApplicationClassName(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 2079
    :cond_66
    const/4 v14, 0x1

    invoke-virtual {v11, v14}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v3

    .line 2080
    if-eqz v3, :cond_7d

    .line 2081
    iget v5, v3, Landroid/util/TypedValue;->resourceId:I

    invoke-interface {v7, v5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setLabelResourceId(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 2082
    iget v5, v3, Landroid/util/TypedValue;->resourceId:I

    if-nez v5, :cond_7d

    .line 2083
    invoke-virtual {v3}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v7, v3}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setNonLocalizedLabel(Ljava/lang/CharSequence;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 2087
    :cond_7d
    invoke-direct {v0, v7, v11}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseBaseAppBasicFlags(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/TypedArray;)V

    .line 2089
    const/4 v15, 0x4

    const/16 v3, 0x400

    invoke-static {v3, v15, v11}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->nonConfigString(IILandroid/content/res/TypedArray;)Ljava/lang/String;

    move-result-object v5

    .line 2091
    if-eqz v5, :cond_ab

    .line 2092
    invoke-static {v1, v5}, Lcom/android/internal/pm/pkg/parsing/ParsingUtils;->buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 2095
    if-nez v5, :cond_a8

    .line 2096
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_a4
    .catchall {:try_start_63 .. :try_end_a4} :catchall_4ce

    .line 2297
    invoke-virtual {v11}, Landroid/content/res/TypedArray;->recycle()V

    .line 2096
    return-object v0

    .line 2099
    :cond_a8
    :try_start_a8
    invoke-interface {v7, v5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setManageSpaceActivityName(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 2102
    :cond_ab
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/Flags;->changeLauncherBadging()Z

    move-result v5

    if-eqz v5, :cond_ed

    .line 2103
    const/16 v5, 0x4e

    const/16 v6, 0x1f4

    invoke-static {v8, v11, v9, v5, v6}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->drawableResIdArray(Landroid/content/pm/parsing/result/ParseInput;Landroid/content/res/TypedArray;Landroid/content/res/Resources;II)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v5

    .line 2106
    invoke-interface {v5}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v16

    if-eqz v16, :cond_c7

    .line 2107
    invoke-interface {v8, v5}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_c3
    .catchall {:try_start_a8 .. :try_end_c3} :catchall_4ce

    .line 2297
    invoke-virtual {v11}, Landroid/content/res/TypedArray;->recycle()V

    .line 2107
    return-object v0

    .line 2109
    :cond_c7
    :try_start_c7
    invoke-interface {v5}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [I

    invoke-interface {v7, v5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setAlternateLauncherIconResIds([I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 2111
    const/16 v5, 0x4f

    invoke-static {v8, v11, v9, v5, v6}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->stringResIdArray(Landroid/content/pm/parsing/result/ParseInput;Landroid/content/res/TypedArray;Landroid/content/res/Resources;II)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v5

    .line 2114
    invoke-interface {v5}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v6

    if-eqz v6, :cond_e4

    .line 2115
    invoke-interface {v8, v5}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_e0
    .catchall {:try_start_c7 .. :try_end_e0} :catchall_4ce

    .line 2297
    invoke-virtual {v11}, Landroid/content/res/TypedArray;->recycle()V

    .line 2115
    return-object v0

    .line 2117
    :cond_e4
    :try_start_e4
    invoke-interface {v5}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [I

    invoke-interface {v7, v5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setAlternateLauncherLabelResIds([I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 2120
    :cond_ed
    invoke-interface {v7}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->isBackupAllowed()Z

    move-result v5

    if-eqz v5, :cond_15d

    .line 2124
    const/16 v5, 0x10

    invoke-static {v3, v5, v11}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->nonConfigString(IILandroid/content/res/TypedArray;)Ljava/lang/String;

    move-result-object v5

    .line 2126
    if-eqz v5, :cond_131

    .line 2127
    invoke-static {v1, v5}, Lcom/android/internal/pm/pkg/parsing/ParsingUtils;->buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 2128
    if-nez v5, :cond_11a

    .line 2129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_116
    .catchall {:try_start_e4 .. :try_end_116} :catchall_4ce

    .line 2297
    invoke-virtual {v11}, Landroid/content/res/TypedArray;->recycle()V

    .line 2129
    return-object v0

    .line 2137
    :cond_11a
    :try_start_11a
    invoke-interface {v7, v5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setBackupAgentName(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v5

    .line 2138
    const/16 v6, 0x20

    invoke-static {v13, v6, v11}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v6

    invoke-interface {v5, v6}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setFullBackupOnly(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v5

    .line 2140
    const/16 v6, 0x28

    invoke-static {v13, v6, v11}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v6

    invoke-interface {v5, v6}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setBackupInForeground(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 2144
    :cond_131
    const/16 v5, 0x12

    invoke-static {v14, v5, v11}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v5

    invoke-interface {v7, v5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setKillAfterRestoreAllowed(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v5

    .line 2146
    const/16 v6, 0x15

    invoke-static {v13, v6, v11}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v6

    invoke-interface {v5, v6}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setRestoreAnyVersion(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 2149
    const/16 v5, 0x23

    invoke-virtual {v11, v5}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v5

    .line 2151
    nop

    .line 2153
    if-eqz v5, :cond_15d

    .line 2154
    iget v6, v5, Landroid/util/TypedValue;->resourceId:I

    .line 2156
    iget v15, v5, Landroid/util/TypedValue;->resourceId:I

    if-nez v15, :cond_15a

    .line 2162
    iget v5, v5, Landroid/util/TypedValue;->data:I

    if-nez v5, :cond_159

    const/4 v6, -0x1

    goto :goto_15a

    :cond_159
    move v6, v13

    .line 2165
    :cond_15a
    :goto_15a
    invoke-interface {v7, v6}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setFullBackupContentResourceId(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 2172
    :cond_15d
    const/16 v5, 0x8

    invoke-virtual {v11, v5, v13}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    if-eqz v6, :cond_17c

    .line 2174
    const/16 v6, 0x2d

    invoke-virtual {v11, v6}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v6

    .line 2176
    if-eqz v6, :cond_178

    iget-object v15, v0, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->mCallback:Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils$Callback;

    invoke-interface {v15, v6}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils$Callback;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_176

    goto :goto_178

    :cond_176
    move v6, v13

    goto :goto_179

    :cond_178
    :goto_178
    move v6, v14

    :goto_179
    invoke-interface {v7, v6}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setPersistent(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 2179
    :cond_17c
    const/16 v6, 0x25

    invoke-virtual {v11, v6}, Landroid/content/res/TypedArray;->hasValueOrEmpty(I)Z

    move-result v15

    if-eqz v15, :cond_190

    .line 2180
    invoke-virtual {v11, v6, v14}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v7, v6}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setResizeableActivity(Ljava/lang/Boolean;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    goto :goto_19a

    .line 2183
    :cond_190
    const/16 v6, 0x18

    if-lt v2, v6, :cond_196

    move v6, v14

    goto :goto_197

    :cond_196
    move v6, v13

    :goto_197
    invoke-interface {v7, v6}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setResizeableActivityViaSdkVersion(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 2188
    :goto_19a
    const/16 v6, 0xc

    if-lt v2, v5, :cond_1a3

    .line 2189
    invoke-virtual {v11, v6, v3}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v6

    goto :goto_1a7

    .line 2196
    :cond_1a3
    invoke-virtual {v11, v6}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v6

    .line 2200
    :goto_1a7
    invoke-static {v1, v1, v6, v8}, Lcom/android/internal/pm/pkg/component/ComponentParseUtils;->buildTaskAffinityName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v6

    .line 2202
    invoke-interface {v6}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v15

    if-eqz v15, :cond_1b9

    .line 2203
    invoke-interface {v8, v6}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_1b5
    .catchall {:try_start_11a .. :try_end_1b5} :catchall_4ce

    .line 2297
    invoke-virtual {v11}, Landroid/content/res/TypedArray;->recycle()V

    .line 2203
    return-object v0

    .line 2206
    :cond_1b9
    :try_start_1b9
    invoke-interface {v6}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v7, v6}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setTaskAffinity(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 2207
    const/16 v6, 0x30

    invoke-virtual {v11, v6}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v6

    .line 2209
    if-eqz v6, :cond_1ec

    .line 2210
    invoke-static {v1, v6}, Lcom/android/internal/pm/pkg/parsing/ParsingUtils;->buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    .line 2211
    if-nez v6, :cond_1e9

    .line 2212
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_1e5
    .catchall {:try_start_1b9 .. :try_end_1e5} :catchall_4ce

    .line 2297
    invoke-virtual {v11}, Landroid/content/res/TypedArray;->recycle()V

    .line 2212
    return-object v0

    .line 2215
    :cond_1e9
    :try_start_1e9
    invoke-interface {v7, v6}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setAppComponentFactory(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 2219
    :cond_1ec
    const/16 v4, 0xb

    if-lt v2, v5, :cond_1f6

    .line 2220
    invoke-virtual {v11, v4, v3}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    goto :goto_1fb

    .line 2227
    :cond_1f6
    invoke-virtual {v11, v4}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .line 2230
    :goto_1fb
    iget-object v5, v0, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->mSeparateProcesses:[Ljava/lang/String;

    const/4 v2, 0x0

    move/from16 v4, p5

    move-object v6, v8

    const/4 v15, -0x1

    invoke-static/range {v1 .. v6}, Lcom/android/internal/pm/pkg/component/ComponentParseUtils;->buildProcessName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;I[Ljava/lang/String;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2

    .line 2232
    invoke-interface {v2}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v3

    if-eqz v3, :cond_214

    .line 2233
    invoke-interface {v8, v2}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_210
    .catchall {:try_start_1e9 .. :try_end_210} :catchall_4ce

    .line 2297
    invoke-virtual {v11}, Landroid/content/res/TypedArray;->recycle()V

    .line 2233
    return-object v0

    .line 2236
    :cond_214
    :try_start_214
    invoke-interface {v2}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2237
    invoke-interface {v7, v2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setProcessName(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 2239
    invoke-interface {v7}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->isSaveStateDisallowed()Z

    move-result v3

    if-eqz v3, :cond_235

    .line 2242
    if-eqz v2, :cond_235

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_235

    .line 2243
    const-string v0, "cantSaveState applications can not use custom processes"

    invoke-interface {v8, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_231
    .catchall {:try_start_214 .. :try_end_231} :catchall_4ce

    .line 2297
    invoke-virtual {v11}, Landroid/content/res/TypedArray;->recycle()V

    .line 2243
    return-object v0

    .line 2248
    :cond_235
    :try_start_235
    invoke-interface {v7}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getClassLoaderName()Ljava/lang/String;

    move-result-object v1

    .line 2249
    if-eqz v1, :cond_25c

    .line 2250
    invoke-static {v1}, Lcom/android/internal/os/ClassLoaderFactory;->isValidClassLoaderName(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_25c

    .line 2251
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid class loader name: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_258
    .catchall {:try_start_235 .. :try_end_258} :catchall_4ce

    .line 2297
    invoke-virtual {v11}, Landroid/content/res/TypedArray;->recycle()V

    .line 2251
    return-object v0

    .line 2254
    :cond_25c
    const/16 v1, 0x3e

    :try_start_25e
    invoke-virtual {v11, v1, v15}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-interface {v7, v1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setGwpAsanMode(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 2255
    const/16 v1, 0x40

    invoke-virtual {v11, v1, v15}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-interface {v7, v1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setMemtagMode(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 2257
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/Flags;->appCompatOption16kb()Z

    move-result v1

    if-eqz v1, :cond_27e

    .line 2258
    nop

    .line 2259
    const/16 v1, 0x4c

    invoke-virtual {v11, v1, v13}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 2258
    invoke-interface {v7, v1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setPageSizeAppCompatFlags(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 2263
    :cond_27e
    const/16 v1, 0x41

    invoke-virtual {v11, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_293

    .line 2264
    invoke-virtual {v11, v1, v13}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 2266
    nop

    .line 2267
    if-eqz v1, :cond_28f

    move v1, v14

    goto :goto_290

    :cond_28f
    move v1, v13

    .line 2266
    :goto_290
    invoke-interface {v7, v1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setNativeHeapZeroInitialized(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 2269
    :cond_293
    const/16 v1, 0x43

    invoke-virtual {v11, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_2a6

    .line 2271
    invoke-virtual {v11, v1, v13}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v7, v1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setRequestRawExternalStorageAccess(Ljava/lang/Boolean;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 2275
    :cond_2a6
    const/16 v1, 0x44

    invoke-virtual {v11, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_2b5

    .line 2277
    invoke-virtual {v11, v1, v13}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-interface {v7, v1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setRequestForegroundServiceExemption(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 2281
    :cond_2b5
    nop

    .line 2282
    const/16 v1, 0x48

    invoke-static {v11, v9, v1, v8}, Lcom/android/internal/pm/pkg/parsing/ParsingUtils;->parseKnownActivityEmbeddingCerts(Landroid/content/res/TypedArray;Landroid/content/res/Resources;ILandroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    .line 2285
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v2

    if-eqz v2, :cond_2ca

    .line 2286
    invoke-interface {v8, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_2c6
    .catchall {:try_start_25e .. :try_end_2c6} :catchall_4ce

    .line 2297
    invoke-virtual {v11}, Landroid/content/res/TypedArray;->recycle()V

    .line 2286
    return-object v0

    .line 2288
    :cond_2ca
    nop

    .line 2289
    :try_start_2cb
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 2290
    if-eqz v1, :cond_2d6

    .line 2291
    invoke-interface {v7, v1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setKnownActivityEmbeddingCerts(Ljava/util/Set;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 2294
    :cond_2d6
    nop

    .line 2295
    const/16 v1, 0x4b

    invoke-virtual {v11, v1, v13}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 2294
    invoke-interface {v7, v1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setIntentMatchingFlags(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    :try_end_2e0
    .catchall {:try_start_2cb .. :try_end_2e0} :catchall_4ce

    .line 2297
    invoke-virtual {v11}, Landroid/content/res/TypedArray;->recycle()V

    .line 2298
    nop

    .line 2300
    nop

    .line 2301
    nop

    .line 2302
    nop

    .line 2303
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v11

    move/from16 v16, v13

    move/from16 v17, v16

    move/from16 v18, v17

    .line 2305
    :goto_2f1
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v1

    if-eq v1, v14, :cond_48a

    if-ne v1, v12, :cond_303

    .line 2307
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v2

    if-le v2, v11, :cond_300

    goto :goto_303

    :cond_300
    move-object v3, v7

    goto/16 :goto_48b

    .line 2308
    :cond_303
    :goto_303
    const/4 v6, 0x2

    if-eq v1, v6, :cond_309

    .line 2309
    move-object v2, v7

    goto/16 :goto_42b

    .line 2311
    :cond_309
    sget-object v1, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->sAconfigFlags:Lcom/android/internal/pm/pkg/component/AconfigFlags;

    invoke-virtual {v1, v7, v10}, Lcom/android/internal/pm/pkg/component/AconfigFlags;->skipCurrentElement(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v1

    if-eqz v1, :cond_317

    .line 2312
    invoke-static {v10}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2313
    move-object v2, v7

    goto/16 :goto_42b

    .line 2317
    :cond_317
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 2318
    nop

    .line 2319
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_4d4

    :cond_323
    goto :goto_35f

    :sswitch_324
    const-string v1, "service"

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_323

    goto :goto_360

    :sswitch_32d
    const-string v1, "activity-alias"

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_323

    const/4 v6, 0x4

    goto :goto_360

    :sswitch_337
    const-string v1, "receiver"

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_323

    move v6, v14

    goto :goto_360

    :sswitch_341
    const-string v1, "provider"

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_323

    move v6, v12

    goto :goto_360

    :sswitch_34b
    const-string v1, "apex-system-service"

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_323

    const/4 v6, 0x5

    goto :goto_360

    :sswitch_355
    const-string v1, "activity"

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_323

    move v6, v13

    goto :goto_360

    :goto_35f
    move v6, v15

    :goto_360
    packed-switch v6, :pswitch_data_4ee

    .line 2403
    move-object v3, v7

    move-object/from16 v1, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseBaseAppChildTag(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2

    move-object v8, v1

    move-object v1, v2

    goto/16 :goto_478

    .line 2391
    :pswitch_374
    nop

    .line 2392
    invoke-static {v9, v10, v8}, Lcom/android/internal/pm/pkg/component/ParsedApexSystemServiceUtils;->parseApexSystemService(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    .line 2394
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->isSuccess()Z

    move-result v2

    if-eqz v2, :cond_389

    .line 2395
    nop

    .line 2396
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/pm/pkg/component/ParsedApexSystemService;

    .line 2397
    invoke-interface {v7, v2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->addApexSystemService(Lcom/android/internal/pm/pkg/component/ParsedApexSystemService;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 2400
    :cond_389
    nop

    .line 2401
    move-object v3, v7

    goto/16 :goto_478

    .line 2376
    :pswitch_38d
    if-eqz p6, :cond_392

    .line 2377
    move-object v2, v7

    goto/16 :goto_42b

    .line 2379
    :cond_392
    sget-boolean v4, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->sUseRoundIcon:Z

    const/4 v5, 0x0

    move-object v1, v7

    move-object v6, v8

    move-object v2, v9

    move-object v3, v10

    invoke-static/range {v1 .. v6}, Lcom/android/internal/pm/pkg/component/ParsedActivityUtils;->parseActivityAlias(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZLjava/lang/String;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v4

    .line 2382
    move-object v2, v1

    invoke-interface {v4}, Landroid/content/pm/parsing/result/ParseResult;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_3ba

    .line 2383
    invoke-interface {v4}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/pm/pkg/component/ParsedActivity;

    .line 2384
    invoke-interface {v1}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getOrder()I

    move-result v3

    if-eqz v3, :cond_3b2

    move v3, v14

    goto :goto_3b3

    :cond_3b2
    move v3, v13

    :goto_3b3
    or-int v3, v16, v3

    .line 2385
    invoke-interface {v2, v1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->addActivity(Lcom/android/internal/pm/pkg/component/ParsedActivity;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move/from16 v16, v3

    .line 2388
    :cond_3ba
    nop

    .line 2389
    move-object/from16 v8, p1

    move-object v3, v2

    move-object v1, v4

    goto/16 :goto_478

    .line 2362
    :pswitch_3c1
    move-object v2, v7

    if-eqz p6, :cond_3c6

    .line 2363
    goto/16 :goto_42b

    .line 2365
    :cond_3c6
    iget-object v1, v0, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->mSeparateProcesses:[Ljava/lang/String;

    sget-boolean v6, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->sUseRoundIcon:Z

    .line 2366
    const/4 v7, 0x0

    move-object/from16 v8, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    invoke-static/range {v1 .. v8}, Lcom/android/internal/pm/pkg/component/ParsedProviderUtils;->parseProvider([Ljava/lang/String;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;IZLjava/lang/String;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    .line 2369
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->isSuccess()Z

    move-result v3

    if-eqz v3, :cond_3e6

    .line 2370
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/pm/pkg/component/ParsedProvider;

    invoke-interface {v2, v3}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->addProvider(Lcom/android/internal/pm/pkg/component/ParsedProvider;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 2373
    :cond_3e6
    nop

    .line 2374
    move-object/from16 v8, p1

    move-object v3, v2

    goto/16 :goto_478

    .line 2346
    :pswitch_3ec
    move-object v2, v7

    if-eqz p6, :cond_3f0

    .line 2347
    goto :goto_42b

    .line 2349
    :cond_3f0
    iget-object v1, v0, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->mSeparateProcesses:[Ljava/lang/String;

    sget-boolean v6, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->sUseRoundIcon:Z

    .line 2350
    const/4 v7, 0x0

    move-object/from16 v8, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    invoke-static/range {v1 .. v8}, Lcom/android/internal/pm/pkg/component/ParsedServiceUtils;->parseService([Ljava/lang/String;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;IZLjava/lang/String;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    .line 2353
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->isSuccess()Z

    move-result v3

    if-eqz v3, :cond_41d

    .line 2354
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/pm/pkg/component/ParsedService;

    .line 2355
    invoke-interface {v3}, Lcom/android/internal/pm/pkg/component/ParsedService;->getOrder()I

    move-result v4

    if-eqz v4, :cond_415

    move v4, v14

    goto :goto_416

    :cond_415
    move v4, v13

    :goto_416
    or-int v4, v18, v4

    .line 2356
    invoke-interface {v2, v3}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->addService(Lcom/android/internal/pm/pkg/component/ParsedService;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move/from16 v18, v4

    .line 2359
    :cond_41d
    nop

    .line 2360
    move-object/from16 v8, p1

    move-object v3, v2

    goto/16 :goto_478

    .line 2319
    :pswitch_423
    move-object v2, v7

    move v9, v13

    goto :goto_428

    .line 2321
    :pswitch_426
    move-object v2, v7

    move v9, v14

    .line 2324
    :goto_428
    if-eqz p6, :cond_434

    .line 2325
    nop

    .line 2305
    :goto_42b
    move-object/from16 v8, p1

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move-object v7, v2

    goto/16 :goto_2f1

    .line 2327
    :cond_434
    iget-object v1, v0, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->mSeparateProcesses:[Ljava/lang/String;

    sget-boolean v6, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->sUseRoundIcon:Z

    .line 2328
    const/4 v7, 0x0

    move-object/from16 v8, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    invoke-static/range {v1 .. v8}, Lcom/android/internal/pm/pkg/component/ParsedActivityUtils;->parseActivityOrReceiver([Ljava/lang/String;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;IZLjava/lang/String;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    .line 2332
    move-object v3, v2

    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->isSuccess()Z

    move-result v2

    if-eqz v2, :cond_475

    .line 2333
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/pm/pkg/component/ParsedActivity;

    .line 2334
    if-eqz v9, :cond_465

    .line 2335
    invoke-interface {v2}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getOrder()I

    move-result v4

    if-eqz v4, :cond_45c

    move v4, v14

    goto :goto_45d

    :cond_45c
    move v4, v13

    :goto_45d
    or-int v4, v16, v4

    .line 2336
    invoke-interface {v3, v2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->addActivity(Lcom/android/internal/pm/pkg/component/ParsedActivity;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move/from16 v16, v4

    goto :goto_475

    .line 2338
    :cond_465
    invoke-interface {v2}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getOrder()I

    move-result v4

    if-eqz v4, :cond_46d

    move v4, v14

    goto :goto_46e

    :cond_46d
    move v4, v13

    :goto_46e
    or-int v4, v17, v4

    .line 2339
    invoke-interface {v3, v2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->addReceiver(Lcom/android/internal/pm/pkg/component/ParsedActivity;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move/from16 v17, v4

    .line 2343
    :cond_475
    :goto_475
    nop

    .line 2344
    move-object/from16 v8, p1

    .line 2407
    :goto_478
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v2

    if-eqz v2, :cond_483

    .line 2408
    invoke-interface {v8, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 2410
    :cond_483
    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move-object v7, v3

    goto/16 :goto_2f1

    .line 2305
    :cond_48a
    move-object v3, v7

    .line 2412
    :goto_48b
    invoke-interface {v3}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getStaticSharedLibraryName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4b7

    .line 2413
    invoke-interface {v3}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getSdkLibraryName()Ljava/lang/String;

    move-result-object v1

    .line 2412
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4b7

    .line 2416
    invoke-static/range {p1 .. p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->generateAppDetailsHiddenActivity(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    .line 2417
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v2

    if-eqz v2, :cond_4ae

    .line 2422
    invoke-interface {v8, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 2425
    :cond_4ae
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/pm/pkg/component/ParsedActivity;

    invoke-interface {v3, v1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->addActivity(Lcom/android/internal/pm/pkg/component/ParsedActivity;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 2428
    :cond_4b7
    if-eqz v16, :cond_4bc

    .line 2429
    invoke-interface {v3}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->sortActivities()Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 2431
    :cond_4bc
    if-eqz v17, :cond_4c1

    .line 2432
    invoke-interface {v3}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->sortReceivers()Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 2434
    :cond_4c1
    if-eqz v18, :cond_4c6

    .line 2435
    invoke-interface {v3}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->sortServices()Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 2438
    :cond_4c6
    invoke-direct {v0, v3}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->afterParseBaseApplication(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;)V

    .line 2440
    invoke-interface/range {p1 .. p2}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 2297
    :catchall_4ce
    move-exception v0

    invoke-virtual {v11}, Landroid/content/res/TypedArray;->recycle()V

    .line 2298
    throw v0

    nop

    :sswitch_data_4d4
    .sparse-switch
        -0x62b40cf1 -> :sswitch_355
        -0x5db446de -> :sswitch_34b
        -0x3adbfa0f -> :sswitch_341
        -0x30341611 -> :sswitch_337
        0x2f1ad612 -> :sswitch_32d
        0x7643c6b5 -> :sswitch_324
    .end sparse-switch

    :pswitch_data_4ee
    .packed-switch 0x0
        :pswitch_426
        :pswitch_423
        :pswitch_3ec
        :pswitch_3c1
        :pswitch_38d
        :pswitch_374
    .end packed-switch
.end method

.method private blacklist parseClusterPackage(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;I)Landroid/content/pm/parsing/result/ParseResult;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Ljava/io/File;",
            "I)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    .line 365
    nop

    .line 366
    and-int/lit16 v0, p3, 0x200

    const/4 v7, 0x0

    if-eqz v0, :cond_9

    .line 367
    const/16 v0, 0x200

    goto :goto_a

    .line 366
    :cond_9
    move v0, v7

    .line 369
    :goto_a
    and-int/lit16 v2, p3, 0x400

    if-eqz v2, :cond_10

    .line 370
    or-int/lit16 v0, v0, 0x400

    .line 372
    :cond_10
    nop

    .line 373
    invoke-static {p1, p2, v0}, Landroid/content/pm/parsing/ApkLiteParseUtils;->parseClusterPackageLite(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    .line 374
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v2

    if-eqz v2, :cond_20

    .line 375
    invoke-interface {p1, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 378
    :cond_20
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/content/pm/parsing/PackageLite;

    .line 380
    nop

    .line 382
    invoke-virtual {v8}, Landroid/content/pm/parsing/PackageLite;->isIsolatedSplits()Z

    move-result v0

    if-eqz v0, :cond_50

    invoke-virtual {v8}, Landroid/content/pm/parsing/PackageLite;->getSplitNames()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_50

    .line 384
    :try_start_38
    invoke-static {v8}, Lcom/android/internal/pm/split/SplitAssetDependencyLoader;->createDependenciesFromPackage(Landroid/content/pm/parsing/PackageLite;)Landroid/util/SparseArray;

    move-result-object v0

    .line 385
    new-instance v2, Lcom/android/internal/pm/split/SplitAssetDependencyLoader;

    invoke-direct {v2, v8, v0, p3}, Lcom/android/internal/pm/split/SplitAssetDependencyLoader;-><init>(Landroid/content/pm/parsing/PackageLite;Landroid/util/SparseArray;I)V
    :try_end_41
    .catch Landroid/content/pm/split/SplitDependencyLoader$IllegalDependencyException; {:try_start_38 .. :try_end_41} :catch_44

    .line 388
    move-object v9, v0

    move-object v4, v2

    goto :goto_58

    .line 386
    :catch_44
    move-exception v0

    .line 387
    const/16 v2, -0x65

    invoke-virtual {v0}, Landroid/content/pm/split/SplitDependencyLoader$IllegalDependencyException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v2, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 390
    :cond_50
    new-instance v2, Lcom/android/internal/pm/split/DefaultSplitAssetLoader;

    invoke-direct {v2, v8, p3}, Lcom/android/internal/pm/split/DefaultSplitAssetLoader;-><init>(Landroid/content/pm/parsing/PackageLite;I)V

    const/4 v0, 0x0

    move-object v9, v0

    move-object v4, v2

    .line 394
    :goto_58
    :try_start_58
    new-instance v2, Ljava/io/File;

    invoke-virtual {v8}, Landroid/content/pm/parsing/PackageLite;->getBaseApkPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 395
    invoke-virtual {v8}, Landroid/content/pm/parsing/PackageLite;->isIsSdkLibrary()Z

    move-result v0

    if-eqz v0, :cond_70

    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/Flags;->disallowSdkLibsToBeApps()Z

    move-result v0

    if-eqz v0, :cond_70

    const/4 v0, 0x1

    move v6, v0

    goto :goto_71

    :cond_70
    move v6, v7

    .line 396
    :goto_71
    nop

    .line 397
    invoke-virtual {v8}, Landroid/content/pm/parsing/PackageLite;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 396
    move-object v0, p0

    move-object v1, p1

    move v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseBaseApk(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;Ljava/lang/String;Lcom/android/internal/pm/split/SplitAssetLoader;IZ)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2
    :try_end_7d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_58 .. :try_end_7d} :catch_e6
    .catchall {:try_start_58 .. :try_end_7d} :catchall_e3

    move-object v6, v4

    .line 398
    :try_start_7e
    invoke-interface {v2}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v0

    if-eqz v0, :cond_8c

    .line 399
    invoke-interface {p1, v2}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_88
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7e .. :try_end_88} :catch_e1
    .catchall {:try_start_7e .. :try_end_88} :catchall_100

    .line 428
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 399
    return-object v0

    .line 402
    :cond_8c
    :try_start_8c
    invoke-interface {v2}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 403
    invoke-virtual {v8}, Landroid/content/pm/parsing/PackageLite;->getSplitNames()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d2

    .line 404
    nop

    .line 405
    invoke-virtual {v8}, Landroid/content/pm/parsing/PackageLite;->getSplitNames()[Ljava/lang/String;

    move-result-object v0

    .line 406
    invoke-virtual {v8}, Landroid/content/pm/parsing/PackageLite;->getSplitApkPaths()[Ljava/lang/String;

    move-result-object v3

    .line 407
    invoke-virtual {v8}, Landroid/content/pm/parsing/PackageLite;->getSplitRevisionCodes()[I

    move-result-object v4

    .line 404
    invoke-interface {v2, v0, v3, v4, v9}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->asSplit([Ljava/lang/String;[Ljava/lang/String;[ILandroid/util/SparseArray;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 410
    invoke-virtual {v8}, Landroid/content/pm/parsing/PackageLite;->getSplitNames()[Ljava/lang/String;

    move-result-object v0

    array-length v9, v0

    .line 412
    move v3, v7

    :goto_b3
    if-ge v3, v9, :cond_d2

    .line 413
    invoke-interface {v6, v3}, Lcom/android/internal/pm/split/SplitAssetLoader;->getSplitAssetManager(I)Landroid/content/res/AssetManager;

    move-result-object v4

    .line 414
    nop

    .line 415
    move-object v0, p0

    move-object v1, p1

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseSplitApk(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;ILandroid/content/res/AssetManager;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v4

    .line 416
    invoke-interface {v4}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v0

    if-eqz v0, :cond_cf

    .line 417
    invoke-interface {p1, v4}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_cb
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8c .. :try_end_cb} :catch_e1
    .catchall {:try_start_8c .. :try_end_cb} :catchall_100

    .line 428
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 417
    return-object v0

    .line 412
    :cond_cf
    add-int/lit8 v3, v3, 0x1

    goto :goto_b3

    .line 422
    :cond_d2
    :try_start_d2
    invoke-virtual {v8}, Landroid/content/pm/parsing/PackageLite;->isUse32bitAbi()Z

    move-result v0

    invoke-interface {v2, v0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->set32BitAbiPreferred(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 423
    invoke-interface {p1, v2}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_dd
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d2 .. :try_end_dd} :catch_e1
    .catchall {:try_start_d2 .. :try_end_dd} :catchall_100

    .line 428
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 423
    return-object v0

    .line 424
    :catch_e1
    move-exception v0

    goto :goto_e8

    .line 428
    :catchall_e3
    move-exception v0

    move-object v6, v4

    goto :goto_101

    .line 424
    :catch_e6
    move-exception v0

    move-object v6, v4

    .line 425
    :goto_e8
    :try_start_e8
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    instance-of v2, v2, Ljava/io/IOException;

    if-eqz v2, :cond_f2

    const/4 v2, -0x2

    goto :goto_f4

    .line 426
    :cond_f2
    const/16 v2, -0x64

    :goto_f4
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    .line 425
    invoke-interface {p1, v2, v3, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;Ljava/lang/Exception;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_fc
    .catchall {:try_start_e8 .. :try_end_fc} :catchall_100

    .line 428
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 425
    return-object v0

    .line 428
    :catchall_100
    move-exception v0

    :goto_101
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 429
    throw v0
.end method

.method public static blacklist parseDefault(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;ILjava/util/List;ZLcom/android/internal/pm/pkg/parsing/ParsingPackageUtils$Callback;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Ljava/io/File;",
            "I",
            "Ljava/util/List<",
            "Landroid/permission/PermissionManager$SplitPermissionInfo;",
            ">;Z",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils$Callback;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/internal/pm/parsing/pkg/ParsedPackage;",
            ">;"
        }
    .end annotation

    .line 281
    new-instance v0, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, p3, p5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;-><init>([Ljava/lang/String;Landroid/util/DisplayMetrics;Ljava/util/List;Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils$Callback;)V

    .line 283
    invoke-virtual {v0, p0, p1, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parsePackage(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p1

    .line 284
    invoke-interface {p1}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result p2

    if-eqz p2, :cond_15

    .line 285
    invoke-interface {p0, p1}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    .line 288
    :cond_15
    invoke-interface {p1}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    invoke-interface {p1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->hideAsParsed()Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    move-result-object p1

    .line 290
    if-eqz p4, :cond_3b

    .line 291
    nop

    .line 292
    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->getSigningDetails(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/parsing/pkg/ParsedPackage;Z)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p2

    .line 293
    invoke-interface {p2}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result p3

    if-eqz p3, :cond_32

    .line 294
    invoke-interface {p0, p2}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    .line 296
    :cond_32
    invoke-interface {p2}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/pm/SigningDetails;

    invoke-interface {p1, p2}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setSigningDetails(Landroid/content/pm/SigningDetails;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    .line 299
    :cond_3b
    invoke-interface {p0, p1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist parseExtensionSdk(Landroid/content/pm/parsing/result/ParseInput;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/util/SparseIntArray;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            "Landroid/util/SparseIntArray;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Landroid/util/SparseIntArray;",
            ">;"
        }
    .end annotation

    .line 1852
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestExtensionSdk:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 1854
    const/4 p2, 0x0

    const/4 v0, -0x1

    :try_start_8
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    .line 1855
    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0
    :try_end_11
    .catchall {:try_start_8 .. :try_end_11} :catchall_85

    .line 1857
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 1858
    nop

    .line 1860
    const/16 p1, -0x6c

    if-gez p2, :cond_20

    .line 1861
    const-string p2, "<extension-sdk> must specify an sdkVersion >= 0"

    invoke-interface {p0, p1, p2}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    .line 1865
    :cond_20
    if-gez v0, :cond_29

    .line 1866
    const-string p2, "<extension-sdk> must specify minExtensionVersion >= 0"

    invoke-interface {p0, p1, p2}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    .line 1872
    :cond_29
    :try_start_29
    invoke-static {p2}, Landroid/os/ext/SdkExtensions;->getExtensionVersion(I)I

    move-result v1

    .line 1873
    if-ge v1, v0, :cond_5d

    .line 1874
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Package requires "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v2, " extension version "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, " which exceeds device version "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const/16 v0, -0xc

    invoke-interface {p0, v0, p3}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0
    :try_end_5c
    .catch Ljava/lang/RuntimeException; {:try_start_29 .. :try_end_5c} :catch_66

    return-object p0

    .line 1883
    :cond_5d
    nop

    .line 1884
    invoke-virtual {p3, p2, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1885
    invoke-interface {p0, p3}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    .line 1879
    :catch_66
    move-exception p3

    .line 1880
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Specified sdkVersion "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " is not valid"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    .line 1857
    :catchall_85
    move-exception p0

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 1858
    throw p0
.end method

.method private static blacklist parseFeatureGroup(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1679
    new-instance v0, Landroid/content/pm/FeatureGroupInfo;

    invoke-direct {v0}, Landroid/content/pm/FeatureGroupInfo;-><init>()V

    .line 1680
    nop

    .line 1681
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v1

    const/4 v2, 0x0

    .line 1683
    :goto_b
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_7a

    const/4 v5, 0x3

    if-ne v3, v5, :cond_1b

    .line 1685
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v5

    if-le v5, v1, :cond_7a

    .line 1686
    :cond_1b
    const/4 v5, 0x2

    if-eq v3, v5, :cond_1f

    .line 1687
    goto :goto_b

    .line 1689
    :cond_1f
    sget-object v3, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->sAconfigFlags:Lcom/android/internal/pm/pkg/component/AconfigFlags;

    invoke-virtual {v3, p1, p3}, Lcom/android/internal/pm/pkg/component/AconfigFlags;->skipCurrentElement(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 1690
    invoke-static {p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1691
    goto :goto_b

    .line 1694
    :cond_2b
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 1695
    const-string v5, "uses-feature"

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_45

    .line 1696
    invoke-static {p2, p3}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseFeatureInfo(Landroid/content/res/Resources;Landroid/util/AttributeSet;)Landroid/content/pm/FeatureInfo;

    move-result-object v3

    .line 1699
    iget v5, v3, Landroid/content/pm/FeatureInfo;->flags:I

    or-int/2addr v4, v5

    iput v4, v3, Landroid/content/pm/FeatureInfo;->flags:I

    .line 1700
    invoke-static {v2, v3}, Lcom/android/internal/util/ArrayUtils;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    .line 1701
    goto :goto_79

    .line 1702
    :cond_45
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown element under <feature-group>: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1704
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getBaseApkPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1705
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1702
    const-string v4, "PackageParsing"

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1707
    :goto_79
    goto :goto_b

    .line 1709
    :cond_7a
    if-eqz v2, :cond_8e

    .line 1710
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p2

    new-array p2, p2, [Landroid/content/pm/FeatureInfo;

    iput-object p2, v0, Landroid/content/pm/FeatureGroupInfo;->features:[Landroid/content/pm/FeatureInfo;

    .line 1711
    iget-object p2, v0, Landroid/content/pm/FeatureGroupInfo;->features:[Landroid/content/pm/FeatureInfo;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Landroid/content/pm/FeatureInfo;

    iput-object p2, v0, Landroid/content/pm/FeatureGroupInfo;->features:[Landroid/content/pm/FeatureInfo;

    .line 1714
    :cond_8e
    invoke-interface {p1, v0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->addFeatureGroup(Landroid/content/pm/FeatureGroupInfo;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 1715
    invoke-interface {p0, p1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist parseFeatureInfo(Landroid/content/res/Resources;Landroid/util/AttributeSet;)Landroid/content/pm/FeatureInfo;
    .registers 5

    .line 1656
    new-instance v0, Landroid/content/pm/FeatureInfo;

    invoke-direct {v0}, Landroid/content/pm/FeatureInfo;-><init>()V

    .line 1657
    sget-object v1, Lcom/android/internal/R$styleable;->AndroidManifestUsesFeature:[I

    invoke-virtual {p0, p1, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p0

    .line 1661
    const/4 p1, 0x0

    :try_start_c
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    .line 1662
    const/4 v1, 0x3

    invoke-virtual {p0, v1, p1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, v0, Landroid/content/pm/FeatureInfo;->version:I

    .line 1663
    iget-object v1, v0, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    const/4 v2, 0x1

    if-nez v1, :cond_24

    .line 1664
    invoke-virtual {p0, v2, p1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    iput p1, v0, Landroid/content/pm/FeatureInfo;->reqGlEsVersion:I

    .line 1667
    :cond_24
    const/4 p1, 0x2

    invoke-virtual {p0, p1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    if-eqz p1, :cond_30

    .line 1668
    iget p1, v0, Landroid/content/pm/FeatureInfo;->flags:I

    or-int/2addr p1, v2

    iput p1, v0, Landroid/content/pm/FeatureInfo;->flags:I
    :try_end_30
    .catchall {:try_start_c .. :try_end_30} :catchall_35

    .line 1670
    :cond_30
    nop

    .line 1672
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1670
    return-object v0

    .line 1672
    :catchall_35
    move-exception p1

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1673
    throw p1
.end method

.method private static blacklist parseInstallConstraints(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Ljava/util/Set;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1919
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/internal/pm/pkg/component/InstallConstraintsTagParser;->parseInstallConstraints(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Ljava/util/Set;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist parseInstrumentation(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 3168
    sget-boolean v0, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->sUseRoundIcon:Z

    invoke-static {p1, p2, p3, v0, p0}, Lcom/android/internal/pm/pkg/component/ParsedInstrumentationUtils;->parseInstrumentation(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZLandroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p2

    .line 3170
    invoke-interface {p2}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result p3

    if-eqz p3, :cond_11

    .line 3171
    invoke-interface {p0, p2}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    .line 3173
    :cond_11
    invoke-interface {p2}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/internal/pm/pkg/component/ParsedInstrumentation;

    invoke-interface {p1, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->addInstrumentation(Lcom/android/internal/pm/pkg/component/ParsedInstrumentation;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object p1

    invoke-interface {p0, p1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist parseKeySets(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1205
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v4

    .line 1206
    nop

    .line 1208
    nop

    .line 1209
    new-instance v5, Landroid/util/ArrayMap;

    invoke-direct {v5}, Landroid/util/ArrayMap;-><init>()V

    .line 1210
    new-instance v6, Landroid/util/ArraySet;

    invoke-direct {v6}, Landroid/util/ArraySet;-><init>()V

    .line 1211
    new-instance v7, Landroid/util/ArrayMap;

    invoke-direct {v7}, Landroid/util/ArrayMap;-><init>()V

    .line 1212
    new-instance v8, Landroid/util/ArraySet;

    invoke-direct {v8}, Landroid/util/ArraySet;-><init>()V

    const/4 v11, -0x1

    const/4 v12, 0x0

    .line 1213
    :cond_24
    :goto_24
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v13

    const-string v14, "PackageParsing"

    const/4 v15, 0x1

    if-eq v13, v15, :cond_1cc

    const/4 v9, 0x3

    if-ne v13, v9, :cond_36

    .line 1214
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v10

    if-le v10, v4, :cond_1cc

    .line 1215
    :cond_36
    if-ne v13, v9, :cond_42

    .line 1216
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v9

    if-ne v9, v11, :cond_24

    .line 1217
    nop

    .line 1218
    const/4 v11, -0x1

    const/4 v12, 0x0

    goto :goto_24

    .line 1222
    :cond_42
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v9

    .line 1223
    invoke-virtual {v9}, Ljava/lang/Object;->hashCode()I

    move-result v10

    const/4 v13, 0x0

    sparse-switch v10, :sswitch_data_2c4

    :cond_4e
    goto :goto_6d

    :sswitch_4f
    const-string v10, "public-key"

    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4e

    move v9, v15

    goto :goto_6e

    :sswitch_59
    const-string v10, "key-set"

    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4e

    move v9, v13

    goto :goto_6e

    :sswitch_63
    const-string v10, "upgrade-key-set"

    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4e

    const/4 v9, 0x2

    goto :goto_6e

    :goto_6d
    const/4 v9, -0x1

    :goto_6e
    const-string v10, "Improperly nested \'key-set\' tag at "

    packed-switch v9, :pswitch_data_2d2

    .line 1298
    const-string v9, "<key-sets>"

    invoke-static {v9, v1, v3, v0}, Lcom/android/internal/pm/pkg/parsing/ParsingUtils;->unknownTag(Ljava/lang/String;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v9

    .line 1300
    invoke-interface {v9}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v10

    if-eqz v10, :cond_1ca

    .line 1301
    invoke-interface {v0, v9}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 1286
    :pswitch_84
    sget-object v9, Lcom/android/internal/R$styleable;->AndroidManifestUpgradeKeySet:[I

    invoke-virtual {v2, v3, v9}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v9

    .line 1289
    :try_start_8a
    invoke-virtual {v9, v13}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v10

    .line 1291
    invoke-virtual {v6, v10}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1292
    invoke-static {v3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_94
    .catchall {:try_start_8a .. :try_end_94} :catchall_9a

    .line 1294
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    .line 1295
    nop

    .line 1296
    goto/16 :goto_1ca

    .line 1294
    :catchall_9a
    move-exception v0

    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    .line 1295
    throw v0

    .line 1241
    :pswitch_9f
    if-nez v12, :cond_bb

    .line 1242
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1243
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1242
    invoke-interface {v0, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 1245
    :cond_bb
    sget-object v9, Lcom/android/internal/R$styleable;->AndroidManifestPublicKey:[I

    invoke-virtual {v2, v3, v9}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v9

    .line 1248
    :try_start_c1
    invoke-static {v13, v9}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->nonResString(ILandroid/content/res/TypedArray;)Ljava/lang/String;

    move-result-object v10

    .line 1250
    invoke-static {v15, v9}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->nonResString(ILandroid/content/res/TypedArray;)Ljava/lang/String;

    move-result-object v13

    .line 1252
    if-nez v13, :cond_fa

    invoke-virtual {v5, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    if-nez v15, :cond_fa

    .line 1253
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\'public-key\' "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must define a public-key value on first use at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1255
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1253
    invoke-interface {v0, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_f6
    .catchall {:try_start_c1 .. :try_end_f6} :catchall_188

    .line 1282
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    .line 1253
    return-object v0

    .line 1256
    :cond_fa
    if-eqz v13, :cond_177

    .line 1257
    nop

    .line 1258
    :try_start_fd
    invoke-static {v13}, Landroid/content/pm/parsing/FrameworkParsingPackageUtils;->parsePublicKey(Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object v13

    .line 1259
    if-nez v13, :cond_138

    .line 1260
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "No recognized valid key in \'public-key\' tag at "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 1261
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v13, " key-set "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v13, " will not be added to the package\'s defined key-sets."

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1260
    invoke-static {v14, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1264
    invoke-virtual {v8, v12}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1265
    invoke-static {v3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_133
    .catchall {:try_start_fd .. :try_end_133} :catchall_188

    .line 1282
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    .line 1266
    goto/16 :goto_24

    .line 1268
    :cond_138
    :try_start_138
    invoke-virtual {v5, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    if-eqz v14, :cond_174

    .line 1269
    invoke-virtual {v5, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/security/PublicKey;

    invoke-interface {v14, v13}, Ljava/security/PublicKey;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_14b

    goto :goto_174

    .line 1274
    :cond_14b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Value of \'public-key\' "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " conflicts with previously defined value at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1276
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1274
    invoke-interface {v0, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_170
    .catchall {:try_start_138 .. :try_end_170} :catchall_188

    .line 1282
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    .line 1274
    return-object v0

    .line 1272
    :cond_174
    :goto_174
    :try_start_174
    invoke-virtual {v5, v10, v13}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1279
    :cond_177
    invoke-virtual {v7, v12}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/util/ArraySet;

    invoke-virtual {v13, v10}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1280
    invoke-static {v3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_183
    .catchall {:try_start_174 .. :try_end_183} :catchall_188

    .line 1282
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    .line 1283
    nop

    .line 1284
    goto :goto_1ca

    .line 1282
    :catchall_188
    move-exception v0

    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    .line 1283
    throw v0

    .line 1225
    :pswitch_18d
    if-eqz v12, :cond_1a9

    .line 1226
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1227
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1226
    invoke-interface {v0, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 1229
    :cond_1a9
    sget-object v9, Lcom/android/internal/R$styleable;->AndroidManifestKeySet:[I

    invoke-virtual {v2, v3, v9}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v9

    .line 1231
    :try_start_1af
    invoke-virtual {v9, v13}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v12

    .line 1233
    new-instance v10, Landroid/util/ArraySet;

    invoke-direct {v10}, Landroid/util/ArraySet;-><init>()V

    invoke-virtual {v7, v12, v10}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1234
    nop

    .line 1235
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v11
    :try_end_1c0
    .catchall {:try_start_1af .. :try_end_1c0} :catchall_1c5

    .line 1237
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    .line 1238
    nop

    .line 1239
    goto :goto_1ca

    .line 1237
    :catchall_1c5
    move-exception v0

    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    .line 1238
    throw v0

    .line 1305
    :cond_1ca
    :goto_1ca
    goto/16 :goto_24

    .line 1306
    :cond_1cc
    invoke-interface {v1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1307
    invoke-virtual {v5}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 1308
    invoke-virtual {v7}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    move-result v3

    const-string v4, "Package"

    if-eqz v3, :cond_1fc

    .line 1309
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AndroidManifest.xml \'key-set\' and \'public-key\' names must be distinct."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 1313
    :cond_1fc
    invoke-virtual {v7}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_204
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_292

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 1314
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 1315
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/util/ArraySet;

    invoke-virtual {v10}, Landroid/util/ArraySet;->size()I

    move-result v10

    const-string v11, " AndroidManifest.xml \'key-set\' "

    if-nez v10, :cond_247

    .line 1316
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " has no valid associated \'public-key\'. Not including in package\'s defined key-sets."

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v14, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1319
    goto :goto_204

    .line 1320
    :cond_247
    invoke-virtual {v8, v9}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_270

    .line 1321
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " contained improper \'public-key\' tags. Not including in package\'s defined key-sets."

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v14, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1324
    goto :goto_204

    .line 1327
    :cond_270
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/ArraySet;

    invoke-virtual {v7}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_27a
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_290

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 1328
    invoke-virtual {v5, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/security/PublicKey;

    invoke-interface {v1, v9, v10}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->addKeySet(Ljava/lang/String;Ljava/security/PublicKey;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 1329
    goto :goto_27a

    .line 1330
    :cond_290
    goto/16 :goto_204

    .line 1331
    :cond_292
    invoke-interface {v1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getKeySetMapping()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3, v6}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_2a8

    .line 1332
    invoke-interface {v1, v6}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setUpgradeKeySets(Ljava/util/Set;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 1338
    invoke-interface/range {p0 .. p1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 1334
    :cond_2a8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AndroidManifest.xml does not define all \'upgrade-key-set\'s ."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    :sswitch_data_2c4
    .sparse-switch
        -0x519cd6bd -> :sswitch_63
        -0x30ac780c -> :sswitch_59
        0x717268fb -> :sswitch_4f
    .end sparse-switch

    :pswitch_data_2d2
    .packed-switch 0x0
        :pswitch_18d
        :pswitch_9f
        :pswitch_84
    .end packed-switch
.end method

.method private static blacklist parseLibrary(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            "Landroid/content/pm/parsing/result/ParseInput;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    .line 2677
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestLibrary:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 2681
    const/4 p2, 0x0

    :try_start_7
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object p2

    .line 2683
    if-eqz p2, :cond_1e

    .line 2684
    invoke-virtual {p2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p2

    .line 2685
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getLibraryNames()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/internal/util/ArrayUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 2686
    invoke-interface {p0, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->addLibraryName(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 2689
    :cond_1e
    invoke-interface {p3, p0}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0
    :try_end_22
    .catchall {:try_start_7 .. :try_end_22} :catchall_26

    .line 2691
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 2689
    return-object p0

    .line 2691
    :catchall_26
    move-exception p0

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 2692
    throw p0
.end method

.method public static blacklist parseMetaData(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Lcom/android/internal/pm/pkg/component/ParsedComponent;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Ljava/lang/String;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            "Lcom/android/internal/pm/pkg/component/ParsedComponent;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            "Ljava/lang/String;",
            "Landroid/content/pm/parsing/result/ParseInput;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Landroid/content/pm/PackageManager$Property;",
            ">;"
        }
    .end annotation

    .line 3260
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestMetaData:[I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 3263
    nop

    .line 3264
    const/4 v0, 0x0

    :try_start_8
    invoke-static {v0, v0, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->nonConfigString(IILandroid/content/res/TypedArray;)Ljava/lang/String;

    move-result-object v1

    .line 3263
    invoke-static {v1}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3265
    if-nez v3, :cond_2d

    .line 3266
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " requires an android:name attribute"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p5, p0}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_107

    .line 3309
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 3266
    return-object p0

    .line 3269
    :cond_2d
    :try_start_2d
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 3270
    const/4 v1, 0x0

    if-eqz p1, :cond_3a

    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedComponent;->getName()Ljava/lang/String;

    move-result-object p1

    move-object v7, p1

    goto :goto_3b

    :cond_3a
    move-object v7, v1

    .line 3271
    :goto_3b
    const/4 p1, 0x2

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object p1

    .line 3272
    if-eqz p1, :cond_51

    iget v2, p1, Landroid/util/TypedValue;->resourceId:I

    if-eqz v2, :cond_51

    .line 3273
    new-instance v2, Landroid/content/pm/PackageManager$Property;

    iget v4, p1, Landroid/util/TypedValue;->resourceId:I

    const/4 v5, 0x1

    invoke-direct/range {v2 .. v7}, Landroid/content/pm/PackageManager$Property;-><init>(Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;)V

    move-object v1, v2

    goto/16 :goto_e4

    .line 3275
    :cond_51
    const/4 p1, 0x1

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    .line 3276
    if-eqz v2, :cond_ec

    .line 3277
    iget v4, v2, Landroid/util/TypedValue;->type:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_6f

    .line 3278
    invoke-virtual {v2}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object p0

    .line 3279
    if-eqz p0, :cond_67

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3280
    :cond_67
    new-instance p0, Landroid/content/pm/PackageManager$Property;

    invoke-direct {p0, v3, v1, v6, v7}, Landroid/content/pm/PackageManager$Property;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3281
    move-object v1, p0

    goto/16 :goto_e4

    :cond_6f
    iget v4, v2, Landroid/util/TypedValue;->type:I

    const/16 v5, 0x12

    if-ne v4, v5, :cond_80

    .line 3282
    new-instance v1, Landroid/content/pm/PackageManager$Property;

    iget p0, v2, Landroid/util/TypedValue;->data:I

    if-eqz p0, :cond_7c

    move v0, p1

    :cond_7c
    invoke-direct {v1, v3, v0, v6, v7}, Landroid/content/pm/PackageManager$Property;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_e4

    .line 3283
    :cond_80
    iget p1, v2, Landroid/util/TypedValue;->type:I

    const/16 v0, 0x10

    if-lt p1, v0, :cond_97

    iget p1, v2, Landroid/util/TypedValue;->type:I

    const/16 v0, 0x1f

    if-gt p1, v0, :cond_97

    .line 3285
    move-object p1, v2

    new-instance v2, Landroid/content/pm/PackageManager$Property;

    iget v4, p1, Landroid/util/TypedValue;->data:I

    const/4 v5, 0x0

    invoke-direct/range {v2 .. v7}, Landroid/content/pm/PackageManager$Property;-><init>(Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;)V

    move-object v1, v2

    goto :goto_e4

    .line 3283
    :cond_97
    move-object p1, v2

    .line 3286
    iget v0, p1, Landroid/util/TypedValue;->type:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_a7

    .line 3287
    new-instance v1, Landroid/content/pm/PackageManager$Property;

    invoke-virtual {p1}, Landroid/util/TypedValue;->getFloat()F

    move-result p0

    invoke-direct {v1, v3, p0, v6, v7}, Landroid/content/pm/PackageManager$Property;-><init>(Ljava/lang/String;FLjava/lang/String;Ljava/lang/String;)V

    goto :goto_e4

    .line 3290
    :cond_a7
    const-string p1, "PackageParsing"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    const-string v0, " only supports string, integer, float, color, boolean, and resource reference types: "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    .line 3293
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    const-string v0, " at "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    .line 3294
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getBaseApkPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p4, " "

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 3295
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 3290
    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3296
    nop

    .line 3307
    :goto_e4
    invoke-interface {p5, v1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0
    :try_end_e8
    .catchall {:try_start_2d .. :try_end_e8} :catchall_107

    .line 3309
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 3307
    return-object p0

    .line 3303
    :cond_ec
    :try_start_ec
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " requires an android:value or android:resource attribute"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p5, p0}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0
    :try_end_103
    .catchall {:try_start_ec .. :try_end_103} :catchall_107

    .line 3309
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 3303
    return-object p0

    .line 3309
    :catchall_107
    move-exception v0

    move-object p0, v0

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 3310
    throw p0
.end method

.method public static blacklist parseMinOrMaxSdkVersion(Landroid/content/res/TypedArray;II)I
    .registers 4

    .line 304
    nop

    .line 305
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object p0

    .line 306
    if-eqz p0, :cond_15

    .line 307
    iget p1, p0, Landroid/util/TypedValue;->type:I

    const/16 v0, 0x10

    if-lt p1, v0, :cond_15

    iget p1, p0, Landroid/util/TypedValue;->type:I

    const/16 v0, 0x1f

    if-gt p1, v0, :cond_15

    .line 309
    iget p2, p0, Landroid/util/TypedValue;->data:I

    .line 312
    :cond_15
    return p2
.end method

.method private blacklist parseMonolithicPackage(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;I)Landroid/content/pm/parsing/result/ParseResult;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Ljava/io/File;",
            "I)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    .line 441
    and-int/lit8 v0, p3, -0x21

    .line 442
    nop

    .line 443
    invoke-static {p1, p2, v0}, Landroid/content/pm/parsing/ApkLiteParseUtils;->parseMonolithicPackageLite(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    .line 444
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 445
    invoke-interface {p1, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p1

    return-object p1

    .line 448
    :cond_12
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/parsing/PackageLite;

    .line 449
    new-instance v5, Lcom/android/internal/pm/split/DefaultSplitAssetLoader;

    invoke-direct {v5, v0, p3}, Lcom/android/internal/pm/split/DefaultSplitAssetLoader;-><init>(Landroid/content/pm/parsing/PackageLite;I)V

    .line 451
    :try_start_1d
    invoke-virtual {v0}, Landroid/content/pm/parsing/PackageLite;->isIsSdkLibrary()Z

    move-result v1
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_21} :catch_68
    .catchall {:try_start_1d .. :try_end_21} :catchall_65

    if-eqz v1, :cond_30

    :try_start_23
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/Flags;->disallowSdkLibsToBeApps()Z

    move-result v1
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_27} :catch_2b
    .catchall {:try_start_23 .. :try_end_27} :catchall_65

    if-eqz v1, :cond_30

    const/4 v1, 0x1

    goto :goto_31

    .line 462
    :catch_2b
    move-exception v0

    move-object p3, v0

    move-object v2, p1

    move-object v3, p2

    goto :goto_6c

    .line 451
    :cond_30
    const/4 v1, 0x0

    :goto_31
    move v7, v1

    .line 452
    nop

    .line 454
    :try_start_33
    invoke-virtual {p2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v4
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_37} :catch_68
    .catchall {:try_start_33 .. :try_end_37} :catchall_65

    .line 452
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v6, p3

    :try_start_3b
    invoke-direct/range {v1 .. v7}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseBaseApk(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;Ljava/lang/String;Lcom/android/internal/pm/split/SplitAssetLoader;IZ)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p1

    .line 456
    invoke-interface {p1}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result p2

    if-eqz p2, :cond_4d

    .line 457
    invoke-interface {v2, p1}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p1
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_49} :catch_63
    .catchall {:try_start_3b .. :try_end_49} :catchall_65

    .line 466
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 457
    return-object p1

    .line 460
    :cond_4d
    :try_start_4d
    invoke-interface {p1}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 461
    invoke-virtual {v0}, Landroid/content/pm/parsing/PackageLite;->isUse32bitAbi()Z

    move-result p2

    invoke-interface {p1, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->set32BitAbiPreferred(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object p1

    .line 460
    invoke-interface {v2, p1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p1
    :try_end_5f
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_5f} :catch_63
    .catchall {:try_start_4d .. :try_end_5f} :catchall_65

    .line 466
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 460
    return-object p1

    .line 462
    :catch_63
    move-exception v0

    goto :goto_6b

    .line 466
    :catchall_65
    move-exception v0

    move-object p1, v0

    goto :goto_89

    .line 462
    :catch_68
    move-exception v0

    move-object v2, p1

    move-object v3, p2

    :goto_6b
    move-object p3, v0

    .line 463
    :goto_6c
    :try_start_6c
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failed to get path: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 p2, -0x66

    invoke-interface {v2, p2, p1, p3}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;Ljava/lang/Exception;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p1
    :try_end_85
    .catchall {:try_start_6c .. :try_end_85} :catchall_65

    .line 466
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 463
    return-object p1

    .line 466
    :goto_89
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 467
    throw p1
.end method

.method private static blacklist parseOriginalPackage(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    .line 3178
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestOriginalPackage:[I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 3180
    const/4 p3, 0x0

    :try_start_7
    invoke-virtual {p2, p3, p3}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object p3

    .line 3183
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 3184
    invoke-interface {p1, p3}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->addOriginalPackage(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 3186
    :cond_18
    invoke-interface {p0, p1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0
    :try_end_1c
    .catchall {:try_start_7 .. :try_end_1c} :catchall_20

    .line 3188
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 3186
    return-object p0

    .line 3188
    :catchall_20
    move-exception p0

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 3189
    throw p0
.end method

.method private static blacklist parseOverlay(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    .line 3076
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestResourceOverlay:[I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 3078
    const/4 p3, 0x1

    :try_start_7
    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3079
    const/4 v1, 0x0

    invoke-static {v1, v1, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->anInt(IILandroid/content/res/TypedArray;)I

    move-result v2

    .line 3081
    if-nez v0, :cond_1c

    .line 3082
    const-string p1, "<overlay> does not specify a target package"

    invoke-interface {p0, p1}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0
    :try_end_18
    .catchall {:try_start_7 .. :try_end_18} :catchall_af

    .line 3111
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 3082
    return-object p0

    .line 3083
    :cond_1c
    if-ltz v2, :cond_a5

    const/16 v3, 0x270f

    if-le v2, v3, :cond_24

    goto/16 :goto_a5

    .line 3088
    :cond_24
    const/4 v3, 0x5

    :try_start_25
    invoke-virtual {p2, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 3090
    const/4 v4, 0x6

    invoke-virtual {p2, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 3092
    invoke-static {v3, v4}, Landroid/content/pm/parsing/FrameworkParsingPackageUtils;->checkRequiredSystemProperties(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_76

    .line 3093
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Skipping target and overlay pair "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, " and "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    .line 3094
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getBaseApkPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, ": overlay ignored due to required system property: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, " with value: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3097
    const-string p3, "PackageParsing"

    invoke-static {p3, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3098
    invoke-interface {p0, p1}, Landroid/content/pm/parsing/result/ParseInput;->skip(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0
    :try_end_72
    .catchall {:try_start_25 .. :try_end_72} :catchall_af

    .line 3111
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 3098
    return-object p0

    .line 3101
    :cond_76
    :try_start_76
    invoke-interface {p1, p3}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setResourceOverlay(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object p1

    .line 3102
    invoke-interface {p1, v0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setOverlayTarget(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object p1

    .line 3103
    invoke-interface {p1, v2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setOverlayPriority(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object p1

    .line 3105
    const/4 p3, 0x3

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 3104
    invoke-interface {p1, p3}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setOverlayTargetOverlayableName(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object p1

    .line 3107
    const/4 p3, 0x2

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 3106
    invoke-interface {p1, p3}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setOverlayCategory(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object p1

    .line 3109
    const/4 p3, 0x4

    invoke-static {v1, p3, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result p3

    .line 3108
    invoke-interface {p1, p3}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setOverlayIsStatic(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object p1

    .line 3101
    invoke-interface {p0, p1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0
    :try_end_a1
    .catchall {:try_start_76 .. :try_end_a1} :catchall_af

    .line 3111
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 3101
    return-object p0

    .line 3084
    :cond_a5
    :goto_a5
    :try_start_a5
    const-string p1, "<overlay> priority must be between 0 and 9999"

    invoke-interface {p0, p1}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0
    :try_end_ab
    .catchall {:try_start_a5 .. :try_end_ab} :catchall_af

    .line 3111
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 3084
    return-object p0

    .line 3111
    :catchall_af
    move-exception p0

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 3112
    throw p0
.end method

.method private static blacklist parsePermission(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I)Landroid/content/pm/parsing/result/ParseResult;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            "I)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1366
    sget-boolean v3, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->sUseRoundIcon:Z

    move-object v4, p0

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/android/internal/pm/pkg/component/ParsedPermissionUtils;->parsePermission(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZLandroid/content/pm/parsing/result/ParseInput;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    .line 1368
    invoke-interface {p0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result p1

    if-eqz p1, :cond_16

    .line 1369
    invoke-interface {v4, p0}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    .line 1371
    :cond_16
    invoke-interface {p0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/pm/pkg/component/ParsedPermission;

    .line 1372
    if-eqz p0, :cond_21

    .line 1373
    invoke-interface {v0, p0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->addPermission(Lcom/android/internal/pm/pkg/component/ParsedPermission;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 1375
    :cond_21
    invoke-interface {v4, v0}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist parsePermissionGroup(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1355
    sget-boolean v0, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->sUseRoundIcon:Z

    invoke-static {p1, p2, p3, v0, p0}, Lcom/android/internal/pm/pkg/component/ParsedPermissionUtils;->parsePermissionGroup(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZLandroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p2

    .line 1357
    invoke-interface {p2}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result p3

    if-eqz p3, :cond_11

    .line 1358
    invoke-interface {p0, p2}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    .line 1360
    :cond_11
    invoke-interface {p2}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;

    invoke-interface {p1, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->addPermissionGroup(Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object p1

    invoke-interface {p0, p1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist parsePermissionTree(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1381
    sget-boolean v0, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->sUseRoundIcon:Z

    invoke-static {p1, p2, p3, v0, p0}, Lcom/android/internal/pm/pkg/component/ParsedPermissionUtils;->parsePermissionTree(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZLandroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p2

    .line 1383
    invoke-interface {p2}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result p3

    if-eqz p3, :cond_11

    .line 1384
    invoke-interface {p0, p2}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    .line 1386
    :cond_11
    invoke-interface {p2}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/internal/pm/pkg/component/ParsedPermission;

    invoke-interface {p1, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->addPermission(Lcom/android/internal/pm/pkg/component/ParsedPermission;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object p1

    invoke-interface {p0, p1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist parseProcesses(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;[Ljava/lang/String;I)Landroid/content/pm/parsing/result/ParseResult;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            "[",
            "Ljava/lang/String;",
            "I)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 2880
    nop

    .line 2881
    move v0, p5

    move-object p5, p0

    move-object p0, p4

    move p4, v0

    invoke-static/range {p0 .. p5}, Lcom/android/internal/pm/pkg/component/ParsedProcessUtils;->parseProcesses([Ljava/lang/String;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ILandroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    .line 2883
    invoke-interface {p0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result p2

    if-eqz p2, :cond_14

    .line 2884
    invoke-interface {p5, p0}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    .line 2887
    :cond_14
    invoke-interface {p0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    invoke-interface {p1, p0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setProcesses(Ljava/util/Map;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object p0

    invoke-interface {p5, p0}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist parseProfileable(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    .line 2893
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestProfileable:[I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 2895
    :try_start_6
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->isProfileableByShell()Z

    move-result p3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p3, :cond_17

    .line 2896
    invoke-static {v0, v1, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result p3

    if-eqz p3, :cond_15

    goto :goto_17

    :cond_15
    move p3, v0

    goto :goto_18

    :cond_17
    :goto_17
    move p3, v1

    .line 2895
    :goto_18
    invoke-interface {p1, p3}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setProfileableByShell(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object p1

    .line 2897
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->isProfileable()Z

    move-result p3

    if-eqz p3, :cond_2a

    .line 2898
    invoke-static {v1, v0, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result p3

    if-eqz p3, :cond_2a

    move v0, v1

    goto :goto_2b

    :cond_2a
    nop

    .line 2897
    :goto_2b
    invoke-interface {p1, v0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setProfileable(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object p1

    invoke-interface {p0, p1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0
    :try_end_33
    .catchall {:try_start_6 .. :try_end_33} :catchall_37

    .line 2900
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 2897
    return-object p0

    .line 2900
    :catchall_37
    move-exception p0

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 2901
    throw p0
.end method

.method private static blacklist parseProtectedBroadcast(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    .line 3117
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestProtectedBroadcast:[I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 3121
    const/4 p3, 0x0

    :try_start_7
    invoke-static {p3, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->nonResString(ILandroid/content/res/TypedArray;)Ljava/lang/String;

    move-result-object p3

    .line 3122
    if-eqz p3, :cond_10

    .line 3123
    invoke-interface {p1, p3}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->addProtectedBroadcast(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 3125
    :cond_10
    invoke-interface {p0, p1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_18

    .line 3127
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 3125
    return-object p0

    .line 3127
    :catchall_18
    move-exception p0

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 3128
    throw p0
.end method

.method private blacklist parsePurpose(Landroid/content/pm/parsing/result/ParseInput;Landroid/content/res/Resources;Landroid/util/AttributeSet;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Landroid/content/res/Resources;",
            "Landroid/util/AttributeSet;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1548
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestPurpose:[I

    .line 1549
    invoke-virtual {p2, p3, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 1552
    const/4 p3, 0x0

    :try_start_7
    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 1553
    nop

    .line 1554
    const/4 v0, 0x1

    const/high16 v1, -0x80000000

    invoke-static {p2, v0, v1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseMinOrMaxSdkVersion(Landroid/content/res/TypedArray;II)I

    move-result v0

    .line 1558
    nop

    .line 1559
    const/4 v1, 0x2

    const v2, 0x7fffffff

    invoke-static {p2, v1, v2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseMinOrMaxSdkVersion(Landroid/content/res/TypedArray;II)I

    move-result v1

    .line 1564
    nop

    .line 1565
    invoke-direct {p0, p3, v0, v1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->isValidPurpose(Ljava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_24

    goto :goto_25

    :cond_24
    const/4 p3, 0x0

    .line 1564
    :goto_25
    invoke-interface {p1, p3}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p1
    :try_end_29
    .catchall {:try_start_7 .. :try_end_29} :catchall_2d

    .line 1567
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 1564
    return-object p1

    .line 1567
    :catchall_2d
    move-exception p1

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 1568
    throw p1
.end method

.method private static blacklist parseQueries(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1925
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v0

    .line 1927
    :goto_4
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1bb

    const/4 v3, 0x3

    if-ne v1, v3, :cond_19

    .line 1929
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_15

    goto :goto_19

    :cond_15
    move-object v10, p0

    move-object v5, p1

    goto/16 :goto_1bd

    .line 1930
    :cond_19
    :goto_19
    const/4 v3, 0x2

    if-eq v1, v3, :cond_1d

    .line 1931
    goto :goto_4

    .line 1933
    :cond_1d
    sget-object v1, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->sAconfigFlags:Lcom/android/internal/pm/pkg/component/AconfigFlags;

    invoke-virtual {v1, p1, p3}, Lcom/android/internal/pm/pkg/component/AconfigFlags;->skipCurrentElement(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 1934
    invoke-static {p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1935
    goto :goto_4

    .line 1937
    :cond_29
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "intent"

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_12d

    .line 1938
    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v4, 0x0

    move-object v10, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v4 .. v10}, Lcom/android/internal/pm/pkg/component/ParsedIntentInfoUtils;->parseIntentInfo(Ljava/lang/String;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZZLandroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    .line 1941
    invoke-interface {p0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result p1

    if-eqz p1, :cond_4c

    .line 1942
    invoke-interface {v10, p0}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    .line 1945
    :cond_4c
    invoke-interface {p0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;

    invoke-virtual {p0}, Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object p0

    .line 1947
    nop

    .line 1948
    nop

    .line 1949
    nop

    .line 1950
    invoke-virtual {p0}, Landroid/content/IntentFilter;->countActions()I

    move-result p1

    .line 1951
    invoke-virtual {p0}, Landroid/content/IntentFilter;->countDataSchemes()I

    move-result p2

    .line 1952
    invoke-virtual {p0}, Landroid/content/IntentFilter;->countDataTypes()I

    move-result p3

    .line 1953
    invoke-virtual {p0}, Landroid/content/IntentFilter;->getHosts()[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    .line 1954
    if-nez p2, :cond_77

    if-nez p3, :cond_77

    if-nez p1, :cond_77

    .line 1955
    const-string p0, "intent tags must contain either an action or data."

    invoke-interface {v10, p0}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    .line 1957
    :cond_77
    if-le p1, v2, :cond_80

    .line 1958
    const-string p0, "intent tag may have at most one action."

    invoke-interface {v10, p0}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    .line 1960
    :cond_80
    if-le p3, v2, :cond_89

    .line 1961
    const-string p0, "intent tag may have at most one data type."

    invoke-interface {v10, p0}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    .line 1963
    :cond_89
    if-le p2, v2, :cond_92

    .line 1964
    const-string p0, "intent tag may have at most one data scheme."

    invoke-interface {v10, p0}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    .line 1966
    :cond_92
    if-le v1, v2, :cond_9b

    .line 1967
    const-string p0, "intent tag may have at most one data host."

    invoke-interface {v10, p0}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    .line 1969
    :cond_9b
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 1970
    invoke-virtual {p0}, Landroid/content/IntentFilter;->countCategories()I

    move-result v8

    move v9, v3

    :goto_a5
    if-ge v9, v8, :cond_b1

    .line 1971
    invoke-virtual {p0, v9}, Landroid/content/IntentFilter;->getCategory(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1970
    add-int/lit8 v9, v9, 0x1

    goto :goto_a5

    .line 1973
    :cond_b1
    const/4 v8, 0x0

    if-ne v1, v2, :cond_bb

    .line 1974
    invoke-virtual {p0}, Landroid/content/IntentFilter;->getHosts()[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v3

    goto :goto_bc

    .line 1973
    :cond_bb
    move-object v1, v8

    .line 1976
    :goto_bc
    const-string v9, "/*"

    if-ne p2, v2, :cond_da

    .line 1977
    new-instance p2, Landroid/net/Uri$Builder;

    invoke-direct {p2}, Landroid/net/Uri$Builder;-><init>()V

    .line 1978
    invoke-virtual {p0, v3}, Landroid/content/IntentFilter;->getDataScheme(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p2, v11}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p2

    .line 1979
    invoke-virtual {p2, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p2

    .line 1980
    invoke-virtual {p2, v9}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p2

    .line 1981
    invoke-virtual {p2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p2

    goto :goto_db

    .line 1976
    :cond_da
    move-object p2, v8

    .line 1983
    :goto_db
    if-ne p3, v2, :cond_118

    .line 1984
    invoke-virtual {p0, v3}, Landroid/content/IntentFilter;->getDataType(I)Ljava/lang/String;

    move-result-object p3

    .line 1987
    const-string v1, "/"

    invoke-virtual {p3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_fc

    .line 1988
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    move-object v8, p3

    goto :goto_fd

    .line 1987
    :cond_fc
    move-object v8, p3

    .line 1990
    :goto_fd
    if-nez p2, :cond_118

    .line 1991
    new-instance p2, Landroid/net/Uri$Builder;

    invoke-direct {p2}, Landroid/net/Uri$Builder;-><init>()V

    .line 1992
    const-string p3, "content"

    invoke-virtual {p2, p3}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p2

    .line 1993
    const-string p3, "*"

    invoke-virtual {p2, p3}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p2

    .line 1994
    invoke-virtual {p2, v9}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p2

    .line 1995
    invoke-virtual {p2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p2

    .line 1998
    :cond_118
    invoke-virtual {v4, p2, v8}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1999
    if-ne p1, v2, :cond_124

    .line 2000
    invoke-virtual {p0, v3}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2002
    :cond_124
    invoke-interface {v5, v4}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->addQueriesIntent(Landroid/content/Intent;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 2003
    move-object p1, v5

    move-object p2, v6

    move-object p3, v7

    move-object p0, v10

    goto/16 :goto_4

    :cond_12d
    move-object v10, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object p0

    const-string p1, "package"

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_168

    .line 2004
    sget-object p0, Lcom/android/internal/R$styleable;->AndroidManifestQueriesPackage:[I

    invoke-virtual {v6, v7, p0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p0

    .line 2007
    :try_start_143
    invoke-virtual {p0, v3, v3}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object p1

    .line 2009
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_157

    .line 2010
    const-string p1, "Package name is missing from package tag."

    invoke-interface {v10, p1}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p1
    :try_end_153
    .catchall {:try_start_143 .. :try_end_153} :catchall_162

    .line 2014
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2010
    return-object p1

    .line 2012
    :cond_157
    :try_start_157
    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v5, p1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->addQueriesPackage(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    :try_end_15e
    .catchall {:try_start_157 .. :try_end_15e} :catchall_162

    .line 2014
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2015
    goto :goto_1b5

    .line 2014
    :catchall_162
    move-exception v0

    move-object p1, v0

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2015
    throw p1

    .line 2016
    :cond_168
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object p0

    const-string p1, "provider"

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1b5

    .line 2017
    sget-object p0, Lcom/android/internal/R$styleable;->AndroidManifestQueriesProvider:[I

    invoke-virtual {v6, v7, p0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p0

    .line 2020
    :try_start_17a
    invoke-virtual {p0, v3, v3}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object p1

    .line 2022
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_190

    .line 2023
    const-string p1, "Authority missing from provider tag."

    const/16 p2, -0x6c

    invoke-interface {v10, p2, p1}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p1
    :try_end_18c
    .catchall {:try_start_17a .. :try_end_18c} :catchall_1af

    .line 2033
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2023
    return-object p1

    .line 2028
    :cond_190
    :try_start_190
    new-instance p2, Ljava/util/StringTokenizer;

    const-string p3, ";"

    invoke-direct {p2, p1, p3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2029
    :goto_197
    invoke-virtual {p2}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result p1

    if-eqz p1, :cond_1a5

    .line 2030
    invoke-virtual {p2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v5, p1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->addQueriesProvider(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    :try_end_1a4
    .catchall {:try_start_190 .. :try_end_1a4} :catchall_1af

    goto :goto_197

    .line 2033
    :cond_1a5
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2034
    nop

    .line 2035
    move-object p1, v5

    move-object p2, v6

    move-object p3, v7

    move-object p0, v10

    goto/16 :goto_4

    .line 2033
    :catchall_1af
    move-exception v0

    move-object p1, v0

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2034
    throw p1

    .line 2016
    :cond_1b5
    :goto_1b5
    move-object p1, v5

    move-object p2, v6

    move-object p3, v7

    move-object p0, v10

    goto/16 :goto_4

    .line 1927
    :cond_1bb
    move-object v10, p0

    move-object v5, p1

    .line 2037
    :goto_1bd
    invoke-interface {v10, v5}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0
.end method

.method private blacklist parseRequiredFeature(Landroid/content/pm/parsing/result/ParseInput;Landroid/content/res/Resources;Landroid/util/AttributeSet;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Landroid/content/res/Resources;",
            "Landroid/util/AttributeSet;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1582
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestRequiredFeature:[I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 1585
    const/4 p3, 0x0

    :try_start_7
    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 1587
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1588
    const-string p3, "Feature name is missing from <required-feature> tag."

    invoke-interface {p1, p3}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p1

    goto :goto_1c

    .line 1589
    :cond_18
    invoke-interface {p1, p3}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p1
    :try_end_1c
    .catchall {:try_start_7 .. :try_end_1c} :catchall_20

    .line 1591
    :goto_1c
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 1587
    return-object p1

    .line 1591
    :catchall_20
    move-exception p1

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 1592
    throw p1
.end method

.method private blacklist parseRequiredNotFeature(Landroid/content/pm/parsing/result/ParseInput;Landroid/content/res/Resources;Landroid/util/AttributeSet;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Landroid/content/res/Resources;",
            "Landroid/util/AttributeSet;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1597
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestRequiredNotFeature:[I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 1600
    const/4 p3, 0x0

    :try_start_7
    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 1602
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1603
    const-string p3, "Feature name is missing from <required-not-feature> tag."

    invoke-interface {p1, p3}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p1

    goto :goto_1c

    .line 1604
    :cond_18
    invoke-interface {p1, p3}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p1
    :try_end_1c
    .catchall {:try_start_7 .. :try_end_1c} :catchall_20

    .line 1606
    :goto_1c
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 1602
    return-object p1

    .line 1606
    :catchall_20
    move-exception p1

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 1607
    throw p1
.end method

.method private static blacklist parseRestrictUpdateHash(ILandroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    .line 1890
    const/16 v0, 0x10

    and-int/2addr p0, v0

    if-eqz p0, :cond_4b

    .line 1891
    sget-object p0, Lcom/android/internal/R$styleable;->AndroidManifestRestrictUpdate:[I

    invoke-virtual {p3, p4, p0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p0

    .line 1893
    const/4 p3, 0x0

    :try_start_c
    invoke-virtual {p0, p3, p3}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object p4

    .line 1897
    if-eqz p4, :cond_3e

    .line 1898
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v1

    .line 1899
    div-int/lit8 v2, v1, 0x2

    new-array v2, v2, [B

    .line 1900
    nop

    :goto_1b
    if-ge p3, v1, :cond_3a

    .line 1901
    div-int/lit8 v3, p3, 0x2

    invoke-virtual {p4, p3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4, v0}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v5, p3, 0x1

    .line 1903
    invoke-virtual {p4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5, v0}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    add-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 1900
    add-int/lit8 p3, p3, 0x2

    goto :goto_1b

    .line 1905
    :cond_3a
    invoke-interface {p2, v2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setRestrictUpdateHash([B)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 1906
    goto :goto_42

    .line 1907
    :cond_3e
    const/4 p3, 0x0

    invoke-interface {p2, p3}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setRestrictUpdateHash([B)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    :try_end_42
    .catchall {:try_start_c .. :try_end_42} :catchall_46

    .line 1910
    :goto_42
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1911
    goto :goto_4b

    .line 1910
    :catchall_46
    move-exception p1

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1911
    throw p1

    .line 1913
    :cond_4b
    :goto_4b
    invoke-interface {p1, p2}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist parseSdkLibrary(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            "Landroid/content/pm/parsing/result/ParseInput;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    .line 2603
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestSdkLibrary:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 2606
    const/4 p2, 0x0

    :try_start_7
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object p2

    .line 2608
    const/4 v0, -0x1

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 2613
    if-eqz p2, :cond_65

    if-gez v0, :cond_16

    goto :goto_65

    .line 2616
    :cond_16
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getSharedUserId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_28

    .line 2617
    const-string p0, "sharedUserId not allowed in SDK library"

    const/16 p2, -0x6b

    invoke-interface {p3, p2, p0}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0
    :try_end_24
    .catchall {:try_start_7 .. :try_end_24} :catchall_8a

    .line 2630
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 2617
    return-object p0

    .line 2621
    :cond_28
    :try_start_28
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getSdkLibraryName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4d

    .line 2622
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Multiple SDKs for package "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 2623
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2622
    invoke-interface {p3, p0}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0
    :try_end_49
    .catchall {:try_start_28 .. :try_end_49} :catchall_8a

    .line 2630
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 2622
    return-object p0

    .line 2626
    :cond_4d
    :try_start_4d
    invoke-virtual {p2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setSdkLibraryName(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object p0

    .line 2627
    invoke-interface {p0, v0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setSdkLibVersionMajor(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object p0

    .line 2628
    invoke-interface {p0, v1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setSdkLibrary(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object p0

    .line 2626
    invoke-interface {p3, p0}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0
    :try_end_61
    .catchall {:try_start_4d .. :try_end_61} :catchall_8a

    .line 2630
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 2626
    return-object p0

    .line 2614
    :cond_65
    :goto_65
    :try_start_65
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bad sdk-library declaration name: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p2, " version: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p3, p0}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0
    :try_end_86
    .catchall {:try_start_65 .. :try_end_86} :catchall_8a

    .line 2630
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 2614
    return-object p0

    .line 2630
    :catchall_8a
    move-exception p0

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 2631
    throw p0
.end method

.method private static blacklist parseSharedUser(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/TypedArray;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/TypedArray;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    .line 1171
    const/4 v0, 0x0

    invoke-static {v0, v0, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->nonConfigString(IILandroid/content/res/TypedArray;)Ljava/lang/String;

    move-result-object v1

    .line 1172
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 1173
    invoke-interface {p0, p1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    .line 1176
    :cond_10
    const-string v2, "android"

    invoke-interface {p1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_4f

    .line 1177
    invoke-static {p0, v1, v3, v3}, Landroid/content/pm/parsing/FrameworkParsingPackageUtils;->validateName(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;ZZ)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2

    .line 1179
    invoke-interface {v2}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v4

    if-eqz v4, :cond_4f

    .line 1180
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "<manifest> specifies bad sharedUserId name \""

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "\": "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 1182
    invoke-interface {v2}, Landroid/content/pm/parsing/result/ParseResult;->getErrorMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1180
    const/16 p2, -0x6b

    invoke-interface {p0, p2, p1}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    .line 1186
    :cond_4f
    nop

    .line 1188
    const/16 v2, 0xd

    invoke-static {v0, v2, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->anInteger(IILandroid/content/res/TypedArray;)I

    move-result v2

    .line 1189
    if-eqz v2, :cond_5d

    sget v4, Landroid/os/Build$VERSION;->RESOURCES_SDK_INT:I

    if-ge v2, v4, :cond_5d

    move v0, v3

    .line 1192
    :cond_5d
    nop

    .line 1193
    invoke-interface {p1, v0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setLeavingSharedUser(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object p1

    .line 1194
    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setSharedUserId(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object p1

    .line 1196
    const/4 v0, 0x3

    invoke-static {v0, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->resId(ILandroid/content/res/TypedArray;)I

    move-result p2

    .line 1195
    invoke-interface {p1, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setSharedUserLabelResourceId(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object p1

    .line 1192
    invoke-interface {p0, p1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0
.end method

.method private blacklist parseSplitApk(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;ILandroid/content/res/AssetManager;I)Landroid/content/pm/parsing/result/ParseResult;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            "I",
            "Landroid/content/res/AssetManager;",
            "I)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    .line 681
    invoke-interface {p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getSplitCodePaths()[Ljava/lang/String;

    move-result-object v2

    aget-object v7, v2, p3

    .line 686
    invoke-virtual {p4, v7}, Landroid/content/res/AssetManager;->findCookieForPath(Ljava/lang/String;)I

    move-result v2

    .line 687
    if-nez v2, :cond_26

    .line 688
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed adding asset path: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v2, -0x65

    invoke-interface {p1, v2, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 695
    :cond_26
    :try_start_26
    const-string v3, "AndroidManifest.xml"

    const/4 v4, 0x0

    invoke-virtual {p4, v2, v3, v4}, Landroid/content/res/AssetManager;->openXmlResourceParser(ILjava/lang/String;Z)Landroid/content/res/XmlResourceParser;

    move-result-object v4
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_2d} :catch_8f

    .line 697
    :try_start_2d
    new-instance v3, Landroid/content/res/Resources;

    iget-object v5, p0, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    const/4 v6, 0x0

    invoke-direct {v3, p4, v5, v6}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    .line 698
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v6, p3

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseSplitApk(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;II)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    .line 700
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v2

    if-eqz v2, :cond_7b

    .line 701
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getErrorCode()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " (at "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 702
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "): "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 703
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 701
    invoke-interface {p1, v2, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_75
    .catchall {:try_start_2d .. :try_end_75} :catchall_82

    .line 707
    if-eqz v4, :cond_7a

    :try_start_77
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V

    .line 701
    :cond_7a
    return-object v0

    .line 706
    :cond_7b
    nop

    .line 707
    if-eqz v4, :cond_81

    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_81
    .catch Ljava/lang/Exception; {:try_start_77 .. :try_end_81} :catch_8f

    .line 706
    :cond_81
    return-object v0

    .line 695
    :catchall_82
    move-exception v0

    move-object v2, v0

    if-eqz v4, :cond_8e

    :try_start_86
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_89
    .catchall {:try_start_86 .. :try_end_89} :catchall_8a

    goto :goto_8e

    :catchall_8a
    move-exception v0

    :try_start_8b
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_8e
    :goto_8e
    throw v2
    :try_end_8f
    .catch Ljava/lang/Exception; {:try_start_8b .. :try_end_8f} :catch_8f

    .line 707
    :catch_8f
    move-exception v0

    .line 708
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to read manifest from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, -0x66

    invoke-interface {p1, v3, v2, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;Ljava/lang/Exception;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0
.end method

.method private blacklist parseSplitApk(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;II)Landroid/content/pm/parsing/result/ParseResult;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            "II)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 780
    nop

    .line 781
    invoke-static {p1, p4}, Landroid/content/pm/parsing/ApkLiteParseUtils;->parsePackageSplitNames(Landroid/content/pm/parsing/result/ParseInput;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    .line 782
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 783
    invoke-interface {p1, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p1

    return-object p1

    .line 788
    :cond_10
    nop

    .line 790
    invoke-interface {p4}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v0

    const/4 v1, 0x0

    .line 791
    :cond_16
    :goto_16
    invoke-interface {p4}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_69

    .line 792
    add-int/lit8 v4, v0, 0x1

    invoke-interface {p4}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v5

    if-lt v4, v5, :cond_16

    const/4 v4, 0x2

    if-eq v2, v4, :cond_29

    .line 793
    goto :goto_16

    .line 795
    :cond_29
    sget-object v2, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->sAconfigFlags:Lcom/android/internal/pm/pkg/component/AconfigFlags;

    invoke-virtual {v2, p2, p4}, Lcom/android/internal/pm/pkg/component/AconfigFlags;->skipCurrentElement(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v2

    if-eqz v2, :cond_35

    .line 796
    invoke-static {p4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 797
    goto :goto_16

    .line 801
    :cond_35
    invoke-interface {p4}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 802
    const-string v4, "application"

    invoke-virtual {v4, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_57

    .line 803
    if-eqz v1, :cond_50

    .line 807
    const-string v2, "PackageParsing"

    const-string v3, "<manifest> has more than one <application>"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    const/4 v2, 0x0

    invoke-interface {p1, v2}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2

    goto :goto_5d

    .line 811
    :cond_50
    nop

    .line 812
    invoke-direct/range {p0 .. p6}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseSplitApplication(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;II)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2

    move v1, v3

    goto :goto_5d

    .line 815
    :cond_57
    const-string v2, "<manifest>"

    invoke-static {v2, p2, p4, p1}, Lcom/android/internal/pm/pkg/parsing/ParsingUtils;->unknownTag(Ljava/lang/String;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2

    .line 818
    :goto_5d
    invoke-interface {v2}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v3

    if-eqz v3, :cond_68

    .line 819
    invoke-interface {p1, v2}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p1

    return-object p1

    .line 821
    :cond_68
    goto :goto_16

    .line 823
    :cond_69
    if-nez v1, :cond_7f

    .line 824
    const-string p3, "<manifest> does not contain an <application>"

    const-wide/32 p4, 0x8fcab42

    invoke-interface {p1, p3, p4, p5}, Landroid/content/pm/parsing/result/ParseInput;->deferError(Ljava/lang/String;J)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p3

    .line 826
    invoke-interface {p3}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result p4

    if-eqz p4, :cond_7f

    .line 827
    invoke-interface {p1, p3}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p1

    return-object p1

    .line 831
    :cond_7f
    invoke-interface {p1, p2}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p1

    return-object p1
.end method

.method private blacklist parseSplitApplication(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;II)Landroid/content/pm/parsing/result/ParseResult;
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            "II)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 844
    move/from16 v0, p6

    sget-object v1, Lcom/android/internal/R$styleable;->AndroidManifestApplication:[I

    invoke-virtual {p3, p4, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 846
    const/4 v2, 0x7

    const/4 v8, 0x1

    :try_start_a
    invoke-virtual {v1, v2, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-interface {p2, v0, v2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setSplitHasCode(IZ)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 849
    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 851
    if-eqz v2, :cond_3b

    invoke-static {v2}, Lcom/android/internal/os/ClassLoaderFactory;->isValidClassLoaderName(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_20

    goto :goto_3b

    .line 855
    :cond_20
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Invalid class loader name: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p1
    :try_end_37
    .catchall {:try_start_a .. :try_end_37} :catchall_157

    .line 858
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 855
    return-object p1

    .line 853
    :cond_3b
    :goto_3b
    :try_start_3b
    invoke-interface {p2, v0, v2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setSplitClassLoaderName(ILjava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    :try_end_3e
    .catchall {:try_start_3b .. :try_end_3e} :catchall_157

    .line 858
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 859
    nop

    .line 865
    invoke-interface {p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getSplitNames()[Ljava/lang/String;

    move-result-object v1

    aget-object v6, v1, v0

    .line 867
    invoke-interface {p4}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v9

    .line 869
    :goto_4c
    invoke-interface {p4}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v0

    if-eq v0, v8, :cond_152

    const/4 v1, 0x3

    if-ne v0, v1, :cond_5b

    .line 871
    invoke-interface {p4}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v2

    if-le v2, v9, :cond_152

    .line 872
    :cond_5b
    const/4 v2, 0x2

    if-eq v0, v2, :cond_5f

    .line 873
    goto :goto_4c

    .line 875
    :cond_5f
    sget-object v0, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->sAconfigFlags:Lcom/android/internal/pm/pkg/component/AconfigFlags;

    invoke-virtual {v0, p2, p4}, Lcom/android/internal/pm/pkg/component/AconfigFlags;->skipCurrentElement(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v0

    if-eqz v0, :cond_6b

    .line 876
    invoke-static {p4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 877
    goto :goto_4c

    .line 880
    :cond_6b
    nop

    .line 883
    move v0, v2

    invoke-interface {p4}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 884
    nop

    .line 885
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v4

    const/4 v5, 0x0

    sparse-switch v4, :sswitch_data_15e

    :cond_7a
    goto :goto_ac

    :sswitch_7b
    const-string v1, "service"

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7a

    move v1, v0

    goto :goto_ad

    :sswitch_85
    const-string v0, "activity-alias"

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7a

    const/4 v1, 0x4

    goto :goto_ad

    :sswitch_8f
    const-string v0, "receiver"

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7a

    move v1, v8

    goto :goto_ad

    :sswitch_99
    const-string v0, "provider"

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7a

    goto :goto_ad

    :sswitch_a2
    const-string v0, "activity"

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7a

    move v1, v5

    goto :goto_ad

    :goto_ac
    const/4 v1, -0x1

    :goto_ad
    packed-switch v1, :pswitch_data_174

    .line 938
    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseSplitBaseAppChildTags(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2

    move-object v3, v2

    goto/16 :goto_145

    .line 927
    :pswitch_bc
    sget-boolean v3, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->sUseRoundIcon:Z

    move-object v5, p1

    move-object v0, p2

    move-object v1, p3

    move-object v2, p4

    move-object v4, v6

    invoke-static/range {v0 .. v5}, Lcom/android/internal/pm/pkg/component/ParsedActivityUtils;->parseActivityAlias(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZLjava/lang/String;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3

    .line 929
    invoke-interface {v3}, Landroid/content/pm/parsing/result/ParseResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_d7

    .line 930
    invoke-interface {v3}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/pm/pkg/component/ParsedActivity;

    .line 931
    invoke-interface {p2, v0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->addActivity(Lcom/android/internal/pm/pkg/component/ParsedActivity;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 932
    nop

    .line 935
    :cond_d7
    nop

    .line 936
    goto/16 :goto_145

    .line 916
    :pswitch_da
    iget-object v0, p0, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->mSeparateProcesses:[Ljava/lang/String;

    sget-boolean v5, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->sUseRoundIcon:Z

    .line 917
    move-object v7, p1

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move/from16 v4, p5

    invoke-static/range {v0 .. v7}, Lcom/android/internal/pm/pkg/component/ParsedProviderUtils;->parseProvider([Ljava/lang/String;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;IZLjava/lang/String;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    .line 919
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isSuccess()Z

    move-result v2

    if-eqz v2, :cond_f8

    .line 920
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/pm/pkg/component/ParsedProvider;

    .line 921
    invoke-interface {p2, v2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->addProvider(Lcom/android/internal/pm/pkg/component/ParsedProvider;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 922
    nop

    .line 924
    :cond_f8
    nop

    .line 925
    move-object v3, v0

    goto :goto_145

    .line 905
    :pswitch_fb
    iget-object v0, p0, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->mSeparateProcesses:[Ljava/lang/String;

    sget-boolean v5, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->sUseRoundIcon:Z

    move-object v7, p1

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move/from16 v4, p5

    invoke-static/range {v0 .. v7}, Lcom/android/internal/pm/pkg/component/ParsedServiceUtils;->parseService([Ljava/lang/String;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;IZLjava/lang/String;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    .line 908
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isSuccess()Z

    move-result v2

    if-eqz v2, :cond_119

    .line 909
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/pm/pkg/component/ParsedService;

    .line 910
    invoke-interface {p2, v2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->addService(Lcom/android/internal/pm/pkg/component/ParsedService;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 911
    nop

    .line 913
    :cond_119
    nop

    .line 914
    move-object v3, v0

    goto :goto_145

    .line 885
    :pswitch_11c
    move v10, v5

    goto :goto_11f

    .line 887
    :pswitch_11e
    move v10, v8

    .line 890
    :goto_11f
    iget-object v0, p0, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->mSeparateProcesses:[Ljava/lang/String;

    sget-boolean v5, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->sUseRoundIcon:Z

    .line 891
    move-object v7, p1

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move/from16 v4, p5

    invoke-static/range {v0 .. v7}, Lcom/android/internal/pm/pkg/component/ParsedActivityUtils;->parseActivityOrReceiver([Ljava/lang/String;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;IZLjava/lang/String;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    .line 893
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isSuccess()Z

    move-result v2

    if-eqz v2, :cond_143

    .line 894
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/pm/pkg/component/ParsedActivity;

    .line 895
    if-eqz v10, :cond_13f

    .line 896
    invoke-interface {p2, v2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->addActivity(Lcom/android/internal/pm/pkg/component/ParsedActivity;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    goto :goto_142

    .line 898
    :cond_13f
    invoke-interface {p2, v2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->addReceiver(Lcom/android/internal/pm/pkg/component/ParsedActivity;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 900
    :goto_142
    nop

    .line 902
    :cond_143
    nop

    .line 903
    move-object v3, v0

    .line 942
    :goto_145
    invoke-interface {v3}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v0

    if-eqz v0, :cond_150

    .line 943
    invoke-interface {p1, v3}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p1

    return-object p1

    .line 945
    :cond_150
    goto/16 :goto_4c

    .line 947
    :cond_152
    invoke-interface/range {p1 .. p2}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p1

    return-object p1

    .line 858
    :catchall_157
    move-exception v0

    move-object p1, v0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 859
    throw p1

    nop

    :sswitch_data_15e
    .sparse-switch
        -0x62b40cf1 -> :sswitch_a2
        -0x3adbfa0f -> :sswitch_99
        -0x30341611 -> :sswitch_8f
        0x2f1ad612 -> :sswitch_85
        0x7643c6b5 -> :sswitch_7b
    .end sparse-switch

    :pswitch_data_174
    .packed-switch 0x0
        :pswitch_11e
        :pswitch_11c
        :pswitch_fb
        :pswitch_da
        :pswitch_bc
    .end packed-switch
.end method

.method private blacklist parseSplitBaseAppChildTags(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 957
    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_ba

    :cond_7
    goto :goto_4e

    :sswitch_8
    const-string v0, "uses-package"

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    const/4 p2, 0x6

    goto :goto_4f

    :sswitch_12
    const-string v0, "uses-static-library"

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    const/4 p2, 0x3

    goto :goto_4f

    :sswitch_1c
    const-string v0, "property"

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    const/4 p2, 0x1

    goto :goto_4f

    :sswitch_26
    const-string v0, "meta-data"

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    const/4 p2, 0x0

    goto :goto_4f

    :sswitch_30
    const-string v0, "uses-library"

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    const/4 p2, 0x4

    goto :goto_4f

    :sswitch_3a
    const-string v0, "uses-sdk-library"

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    const/4 p2, 0x2

    goto :goto_4f

    :sswitch_44
    const-string v0, "uses-native-library"

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    const/4 p2, 0x5

    goto :goto_4f

    :goto_4e
    const/4 p2, -0x1

    :goto_4f
    packed-switch p2, :pswitch_data_d8

    .line 988
    move-object v5, p1

    move-object v0, p3

    move-object v3, p5

    const-string p1, "<application>"

    invoke-static {p1, v0, v3, v5}, Lcom/android/internal/pm/pkg/parsing/ParsingUtils;->unknownTag(Ljava/lang/String;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p1

    return-object p1

    .line 986
    :pswitch_5c
    const/4 p2, 0x0

    invoke-interface {p1, p2}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p1

    return-object p1

    .line 982
    :pswitch_62
    invoke-static {p1, p3, p4, p5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseUsesNativeLibrary(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p1

    return-object p1

    .line 980
    :pswitch_67
    invoke-static {p1, p3, p4, p5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseUsesLibrary(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p1

    return-object p1

    .line 978
    :pswitch_6c
    invoke-static {p1, p3, p4, p5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseUsesStaticLibrary(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p1

    return-object p1

    .line 976
    :pswitch_71
    invoke-static {p1, p3, p4, p5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseUsesSdkLibrary(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p1

    return-object p1

    .line 969
    :pswitch_76
    const/4 v1, 0x0

    const-string v4, "<property>"

    move-object v5, p1

    move-object v0, p3

    move-object v2, p4

    move-object v3, p5

    invoke-static/range {v0 .. v5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseMetaData(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Lcom/android/internal/pm/pkg/component/ParsedComponent;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Ljava/lang/String;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p1

    .line 971
    invoke-interface {p1}, Landroid/content/pm/parsing/result/ParseResult;->isSuccess()Z

    move-result p2

    if-eqz p2, :cond_90

    .line 972
    invoke-interface {p1}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/pm/PackageManager$Property;

    invoke-interface {v0, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->addProperty(Landroid/content/pm/PackageManager$Property;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 974
    :cond_90
    return-object p1

    .line 962
    :pswitch_91
    move-object v5, p1

    move-object v0, p3

    move-object v2, p4

    move-object v3, p5

    const/4 v1, 0x0

    const-string v4, "<meta-data>"

    invoke-static/range {v0 .. v5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseMetaData(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Lcom/android/internal/pm/pkg/component/ParsedComponent;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Ljava/lang/String;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p1

    .line 964
    invoke-interface {p1}, Landroid/content/pm/parsing/result/ParseResult;->isSuccess()Z

    move-result p2

    if-eqz p2, :cond_b9

    invoke-interface {p1}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_b9

    .line 965
    invoke-interface {p1}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/pm/PackageManager$Property;

    invoke-interface {v0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getMetaData()Landroid/os/Bundle;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/content/pm/PackageManager$Property;->toBundle(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p2

    invoke-interface {v0, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setMetaData(Landroid/os/Bundle;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 967
    :cond_b9
    return-object p1

    :sswitch_data_ba
    .sparse-switch
        -0x5fe67eda -> :sswitch_44
        -0x5aaa6a59 -> :sswitch_3a
        -0x50de9846 -> :sswitch_30
        -0x4284098e -> :sswitch_26
        -0x3b32222b -> :sswitch_1c
        0x88b87d -> :sswitch_12
        0x751e7745 -> :sswitch_8
    .end sparse-switch

    :pswitch_data_d8
    .packed-switch 0x0
        :pswitch_91
        :pswitch_76
        :pswitch_71
        :pswitch_6c
        :pswitch_67
        :pswitch_62
        :pswitch_5c
    .end packed-switch
.end method

.method private static blacklist parseStaticLibrary(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            "Landroid/content/pm/parsing/result/ParseInput;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    .line 2638
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestStaticLibrary:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 2642
    const/4 p2, 0x0

    :try_start_7
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v0

    .line 2644
    const/4 v1, -0x1

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 2646
    const/4 v3, 0x2

    invoke-virtual {p1, v3, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    .line 2651
    if-eqz v0, :cond_6e

    if-gez v1, :cond_1b

    goto :goto_6e

    .line 2654
    :cond_1b
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getSharedUserId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2d

    .line 2655
    const-string p0, "sharedUserId not allowed in static shared library"

    const/16 p2, -0x6b

    invoke-interface {p3, p2, p0}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0
    :try_end_29
    .catchall {:try_start_7 .. :try_end_29} :catchall_93

    .line 2669
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 2655
    return-object p0

    .line 2659
    :cond_2d
    :try_start_2d
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getStaticSharedLibraryName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_52

    .line 2660
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Multiple static-shared libs for package "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 2661
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2660
    invoke-interface {p3, p0}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0
    :try_end_4e
    .catchall {:try_start_2d .. :try_end_4e} :catchall_93

    .line 2669
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 2660
    return-object p0

    .line 2664
    :cond_52
    :try_start_52
    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setStaticSharedLibraryName(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object p0

    .line 2666
    invoke-static {p2, v1}, Landroid/content/pm/PackageInfo;->composeLongVersionCode(II)J

    move-result-wide v0

    .line 2665
    invoke-interface {p0, v0, v1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setStaticSharedLibraryVersion(J)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object p0

    .line 2667
    invoke-interface {p0, v2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setStaticSharedLibrary(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object p0

    .line 2664
    invoke-interface {p3, p0}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0
    :try_end_6a
    .catchall {:try_start_52 .. :try_end_6a} :catchall_93

    .line 2669
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 2664
    return-object p0

    .line 2652
    :cond_6e
    :goto_6e
    :try_start_6e
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Bad static-library declaration name: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p2, " version: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p3, p0}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0
    :try_end_8f
    .catchall {:try_start_6e .. :try_end_8f} :catchall_93

    .line 2669
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 2652
    return-object p0

    .line 2669
    :catchall_93
    move-exception p0

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 2670
    throw p0
.end method

.method private static blacklist parseSupportScreens(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    .line 3133
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestSupportsScreens:[I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 3135
    const/4 p3, 0x6

    const/4 v0, 0x0

    :try_start_8
    invoke-static {v0, p3, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->anInt(IILandroid/content/res/TypedArray;)I

    move-result p3

    .line 3137
    const/4 v1, 0x7

    invoke-static {v0, v1, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->anInt(IILandroid/content/res/TypedArray;)I

    move-result v1

    .line 3139
    const/16 v2, 0x8

    invoke-static {v0, v2, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->anInt(IILandroid/content/res/TypedArray;)I

    move-result v2

    .line 3144
    nop

    .line 3146
    const/4 v3, 0x1

    invoke-static {v3, v3, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->anInt(IILandroid/content/res/TypedArray;)I

    move-result v4

    .line 3145
    invoke-interface {p1, v4}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setSmallScreensSupported(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object p1

    .line 3148
    const/4 v4, 0x2

    invoke-static {v3, v4, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->anInt(IILandroid/content/res/TypedArray;)I

    move-result v4

    .line 3147
    invoke-interface {p1, v4}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setNormalScreensSupported(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object p1

    .line 3150
    const/4 v4, 0x3

    invoke-static {v3, v4, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->anInt(IILandroid/content/res/TypedArray;)I

    move-result v4

    .line 3149
    invoke-interface {p1, v4}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setLargeScreensSupported(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object p1

    .line 3152
    const/4 v4, 0x5

    invoke-static {v3, v4, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->anInt(IILandroid/content/res/TypedArray;)I

    move-result v4

    .line 3151
    invoke-interface {p1, v4}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setExtraLargeScreensSupported(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object p1

    .line 3154
    const/4 v4, 0x4

    invoke-static {v3, v4, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->anInt(IILandroid/content/res/TypedArray;)I

    move-result v4

    .line 3153
    invoke-interface {p1, v4}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setResizeable(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object p1

    .line 3156
    invoke-static {v3, v0, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->anInt(IILandroid/content/res/TypedArray;)I

    move-result v0

    .line 3155
    invoke-interface {p1, v0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setAnyDensity(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object p1

    .line 3157
    invoke-interface {p1, p3}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setRequiresSmallestWidthDp(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object p1

    .line 3158
    invoke-interface {p1, v1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setCompatibleWidthLimitDp(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object p1

    .line 3159
    invoke-interface {p1, v2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setLargestWidthLimitDp(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object p1

    .line 3144
    invoke-interface {p0, p1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0
    :try_end_5d
    .catchall {:try_start_8 .. :try_end_5d} :catchall_61

    .line 3161
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 3144
    return-object p0

    .line 3161
    :catchall_61
    move-exception p0

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 3162
    throw p0
.end method

.method private static blacklist parseUsesConfiguration(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    .line 1612
    new-instance v0, Landroid/content/pm/ConfigurationInfo;

    invoke-direct {v0}, Landroid/content/pm/ConfigurationInfo;-><init>()V

    .line 1613
    sget-object v1, Lcom/android/internal/R$styleable;->AndroidManifestUsesConfiguration:[I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 1615
    const/4 p3, 0x0

    :try_start_c
    invoke-virtual {p2, p3, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, v0, Landroid/content/pm/ConfigurationInfo;->reqTouchScreen:I

    .line 1618
    const/4 v1, 0x1

    invoke-virtual {p2, v1, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, v0, Landroid/content/pm/ConfigurationInfo;->reqKeyboardType:I

    .line 1621
    const/4 v2, 0x2

    invoke-virtual {p2, v2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    if-eqz v3, :cond_25

    .line 1624
    iget v3, v0, Landroid/content/pm/ConfigurationInfo;->reqInputFeatures:I

    or-int/2addr v1, v3

    iput v1, v0, Landroid/content/pm/ConfigurationInfo;->reqInputFeatures:I

    .line 1626
    :cond_25
    const/4 v1, 0x3

    invoke-virtual {p2, v1, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, v0, Landroid/content/pm/ConfigurationInfo;->reqNavigation:I

    .line 1629
    const/4 v1, 0x4

    invoke-virtual {p2, v1, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    if-eqz p3, :cond_38

    .line 1632
    iget p3, v0, Landroid/content/pm/ConfigurationInfo;->reqInputFeatures:I

    or-int/2addr p3, v2

    iput p3, v0, Landroid/content/pm/ConfigurationInfo;->reqInputFeatures:I

    .line 1634
    :cond_38
    invoke-interface {p1, v0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->addConfigPreference(Landroid/content/pm/ConfigurationInfo;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 1635
    invoke-interface {p0, p1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0
    :try_end_3f
    .catchall {:try_start_c .. :try_end_3f} :catchall_43

    .line 1637
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 1635
    return-object p0

    .line 1637
    :catchall_43
    move-exception p0

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 1638
    throw p0
.end method

.method private static blacklist parseUsesFeature(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    .line 1643
    invoke-static {p2, p3}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseFeatureInfo(Landroid/content/res/Resources;Landroid/util/AttributeSet;)Landroid/content/pm/FeatureInfo;

    move-result-object p2

    .line 1644
    invoke-interface {p1, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->addReqFeature(Landroid/content/pm/FeatureInfo;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 1646
    iget-object p3, p2, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    if-nez p3, :cond_17

    .line 1647
    new-instance p3, Landroid/content/pm/ConfigurationInfo;

    invoke-direct {p3}, Landroid/content/pm/ConfigurationInfo;-><init>()V

    .line 1648
    iget p2, p2, Landroid/content/pm/FeatureInfo;->reqGlEsVersion:I

    iput p2, p3, Landroid/content/pm/ConfigurationInfo;->reqGlEsVersion:I

    .line 1649
    invoke-interface {p1, p3}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->addConfigPreference(Landroid/content/pm/ConfigurationInfo;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 1652
    :cond_17
    invoke-interface {p0, p1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist parseUsesLibrary(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    .line 2818
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestUsesLibrary:[I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 2822
    const/4 p3, 0x0

    :try_start_7
    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object p3

    .line 2823
    const/4 v0, 0x1

    invoke-virtual {p2, v0, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    .line 2825
    if-eqz p3, :cond_2d

    .line 2826
    invoke-virtual {p3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p3

    .line 2827
    if-eqz v0, :cond_20

    .line 2829
    invoke-interface {p1, p3}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->addUsesLibrary(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v0

    .line 2830
    invoke-interface {v0, p3}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->removeUsesOptionalLibrary(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    goto :goto_2d

    .line 2833
    :cond_20
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getUsesLibraries()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p3}, Lcom/android/internal/util/ArrayUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d

    .line 2834
    invoke-interface {p1, p3}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->addUsesOptionalLibrary(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 2839
    :cond_2d
    :goto_2d
    invoke-interface {p0, p1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0
    :try_end_31
    .catchall {:try_start_7 .. :try_end_31} :catchall_35

    .line 2841
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 2839
    return-object p0

    .line 2841
    :catchall_35
    move-exception p0

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 2842
    throw p0
.end method

.method private static blacklist parseUsesNativeLibrary(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    .line 2848
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestUsesNativeLibrary:[I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 2852
    const/4 p3, 0x0

    :try_start_7
    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object p3

    .line 2854
    const/4 v0, 0x1

    invoke-virtual {p2, v0, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    .line 2857
    if-eqz p3, :cond_29

    .line 2858
    if-eqz v0, :cond_1c

    .line 2860
    invoke-interface {p1, p3}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->addUsesNativeLibrary(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v0

    .line 2861
    invoke-interface {v0, p3}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->removeUsesOptionalNativeLibrary(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    goto :goto_29

    .line 2864
    :cond_1c
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getUsesNativeLibraries()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p3}, Lcom/android/internal/util/ArrayUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_29

    .line 2865
    invoke-interface {p1, p3}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->addUsesOptionalNativeLibrary(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 2870
    :cond_29
    :goto_29
    invoke-interface {p0, p1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0
    :try_end_2d
    .catchall {:try_start_7 .. :try_end_2d} :catchall_31

    .line 2872
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 2870
    return-object p0

    .line 2872
    :catchall_31
    move-exception p0

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 2873
    throw p0
.end method

.method private blacklist parseUsesPermission(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1392
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    sget-object v5, Lcom/android/internal/R$styleable;->AndroidManifestUsesPermission:[I

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 1396
    const/4 v6, 0x0

    :try_start_11
    invoke-virtual {v5, v6}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v7

    .line 1399
    const/high16 v8, -0x80000000

    const/4 v9, 0x1

    invoke-static {v5, v9, v8}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseMinOrMaxSdkVersion(Landroid/content/res/TypedArray;II)I

    move-result v8

    .line 1403
    const v10, 0x7fffffff

    const/4 v11, 0x2

    invoke-static {v5, v11, v10}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseMinOrMaxSdkVersion(Landroid/content/res/TypedArray;II)I

    move-result v10

    .line 1407
    new-instance v12, Landroid/util/ArraySet;

    invoke-direct {v12}, Landroid/util/ArraySet;-><init>()V

    .line 1408
    const/4 v13, 0x3

    invoke-virtual {v5, v13, v6}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v14

    .line 1411
    if-eqz v14, :cond_33

    .line 1412
    invoke-virtual {v12, v14}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1415
    :cond_33
    new-instance v14, Landroid/util/ArraySet;

    invoke-direct {v14}, Landroid/util/ArraySet;-><init>()V

    .line 1416
    const/4 v15, 0x4

    invoke-virtual {v5, v15, v6}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v11

    .line 1420
    if-eqz v11, :cond_42

    .line 1421
    invoke-virtual {v14, v11}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1424
    :cond_42
    nop

    .line 1425
    const/4 v11, 0x5

    invoke-virtual {v5, v11, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v11

    .line 1430
    new-instance v6, Landroid/util/ArraySet;

    invoke-direct {v6}, Landroid/util/ArraySet;-><init>()V

    .line 1432
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/Flags;->purposeDeclarationEnabled()Z

    move-result v17

    .line 1434
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v15

    .line 1436
    :goto_55
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v13

    if-eq v13, v9, :cond_108

    move/from16 v19, v9

    const/4 v9, 0x3

    if-ne v13, v9, :cond_66

    .line 1438
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v9

    if-le v9, v15, :cond_10a

    .line 1439
    :cond_66
    const/4 v9, 0x3

    if-eq v13, v9, :cond_103

    const/4 v9, 0x4

    if-ne v13, v9, :cond_70

    .line 1440
    move/from16 v9, v19

    const/4 v13, 0x3

    goto :goto_55

    .line 1444
    :cond_70
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->hashCode()I

    move-result v18

    sparse-switch v18, :sswitch_data_250

    :cond_7b
    goto :goto_9b

    :sswitch_7c
    const-string v9, "required-feature"

    invoke-virtual {v13, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7b

    const/4 v9, 0x0

    goto :goto_9c

    :sswitch_86
    const-string v9, "required-not-feature"

    invoke-virtual {v13, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7b

    move/from16 v9, v19

    goto :goto_9c

    :sswitch_91
    const-string v9, "purpose"

    invoke-virtual {v13, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7b

    const/4 v9, 0x2

    goto :goto_9c

    :goto_9b
    const/4 v9, -0x1

    :goto_9c
    packed-switch v9, :pswitch_data_25e

    .line 1468
    const-string v9, "<uses-permission>"

    goto :goto_ec

    .line 1460
    :pswitch_a2
    if-eqz v17, :cond_a9

    .line 1461
    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parsePurpose(Landroid/content/pm/parsing/result/ParseInput;Landroid/content/res/Resources;Landroid/util/AttributeSet;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v9

    goto :goto_ae

    .line 1462
    :cond_a9
    const/4 v9, 0x0

    invoke-interface {v1, v9}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v9

    .line 1463
    :goto_ae
    invoke-interface {v9}, Landroid/content/pm/parsing/result/ParseResult;->isSuccess()Z

    move-result v13

    if-eqz v13, :cond_f0

    invoke-interface {v9}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v13

    if-eqz v13, :cond_f0

    .line 1464
    invoke-interface {v9}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-interface {v6, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_f0

    .line 1453
    :pswitch_c4
    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseRequiredNotFeature(Landroid/content/pm/parsing/result/ParseInput;Landroid/content/res/Resources;Landroid/util/AttributeSet;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v9

    .line 1454
    invoke-interface {v9}, Landroid/content/pm/parsing/result/ParseResult;->isSuccess()Z

    move-result v13

    if-eqz v13, :cond_f0

    .line 1455
    invoke-interface {v9}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v14, v13}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_f0

    .line 1446
    :pswitch_d8
    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseRequiredFeature(Landroid/content/pm/parsing/result/ParseInput;Landroid/content/res/Resources;Landroid/util/AttributeSet;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v9

    .line 1447
    invoke-interface {v9}, Landroid/content/pm/parsing/result/ParseResult;->isSuccess()Z

    move-result v13

    if-eqz v13, :cond_f0

    .line 1448
    invoke-interface {v9}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v12, v13}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_f0

    .line 1468
    :goto_ec
    invoke-static {v9, v2, v4, v1}, Lcom/android/internal/pm/pkg/parsing/ParsingUtils;->unknownTag(Ljava/lang/String;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v9

    .line 1472
    :cond_f0
    :goto_f0
    invoke-interface {v9}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v13

    if-eqz v13, :cond_fe

    .line 1473
    invoke-interface {v1, v9}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_fa
    .catchall {:try_start_11 .. :try_end_fa} :catchall_24b

    .line 1543
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 1473
    return-object v0

    .line 1475
    :cond_fe
    move/from16 v9, v19

    const/4 v13, 0x3

    goto/16 :goto_55

    .line 1439
    :cond_103
    move/from16 v9, v19

    const/4 v13, 0x3

    goto/16 :goto_55

    .line 1436
    :cond_108
    move/from16 v19, v9

    .line 1478
    :cond_10a
    :try_start_10a
    invoke-interface/range {p1 .. p2}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3
    :try_end_10e
    .catchall {:try_start_10a .. :try_end_10e} :catchall_24b

    .line 1480
    if-nez v7, :cond_115

    .line 1481
    nop

    .line 1543
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 1481
    return-object v3

    .line 1484
    :cond_115
    :try_start_115
    sget v9, Landroid/os/Build$VERSION;->RESOURCES_SDK_INT:I

    if-lt v9, v8, :cond_246

    sget v8, Landroid/os/Build$VERSION;->RESOURCES_SDK_INT:I

    if-le v8, v10, :cond_11f

    goto/16 :goto_246

    .line 1489
    :cond_11f
    iget-object v8, v0, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->mCallback:Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils$Callback;

    if-eqz v8, :cond_15f

    .line 1492
    invoke-virtual {v12}, Landroid/util/ArraySet;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    :goto_129
    if-ltz v8, :cond_141

    .line 1493
    iget-object v9, v0, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->mCallback:Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils$Callback;

    invoke-virtual {v12, v8}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-interface {v9, v10}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils$Callback;->hasFeature(Ljava/lang/String;)Z

    move-result v9
    :try_end_137
    .catchall {:try_start_115 .. :try_end_137} :catchall_24b

    if-nez v9, :cond_13e

    .line 1494
    nop

    .line 1543
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 1494
    return-object v3

    .line 1492
    :cond_13e
    add-int/lit8 v8, v8, -0x1

    goto :goto_129

    .line 1500
    :cond_141
    :try_start_141
    invoke-virtual {v14}, Landroid/util/ArraySet;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    :goto_147
    if-ltz v8, :cond_15f

    .line 1501
    iget-object v9, v0, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->mCallback:Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils$Callback;

    invoke-virtual {v14, v8}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-interface {v9, v10}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils$Callback;->hasFeature(Ljava/lang/String;)Z

    move-result v9
    :try_end_155
    .catchall {:try_start_141 .. :try_end_155} :catchall_24b

    if-eqz v9, :cond_15c

    .line 1502
    nop

    .line 1543
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 1502
    return-object v3

    .line 1500
    :cond_15c
    add-int/lit8 v8, v8, -0x1

    goto :goto_147

    .line 1509
    :cond_15f
    nop

    .line 1510
    nop

    .line 1511
    :try_start_161
    invoke-interface {v2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getUsesPermissionMapping()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    .line 1512
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_16d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_235

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/pm/pkg/component/ParsedUsesPermission;

    .line 1513
    invoke-interface {v8}, Lcom/android/internal/pm/pkg/component/ParsedUsesPermission;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_233

    .line 1514
    invoke-interface {v8}, Lcom/android/internal/pm/pkg/component/ParsedUsesPermission;->getUsesPermissionFlags()I

    move-result v0
    :try_end_187
    .catchall {:try_start_161 .. :try_end_187} :catchall_24b

    const-string v9, " at: "

    const-string v10, " in package: "

    if-eq v0, v11, :cond_1c0

    .line 1515
    :try_start_18d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Conflicting uses-permissions flags: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1516
    invoke-interface {v2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1517
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1515
    invoke-interface {v1, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_1bc
    .catchall {:try_start_18d .. :try_end_1bc} :catchall_24b

    .line 1543
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 1515
    return-object v0

    .line 1518
    :cond_1c0
    if-eqz v17, :cond_1ff

    .line 1519
    :try_start_1c2
    invoke-interface {v8}, Lcom/android/internal/pm/pkg/component/ParsedUsesPermission;->getPurposes()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1ff

    .line 1520
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Conflicting uses-permissions purposes: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1524
    invoke-interface {v2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1526
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1520
    invoke-interface {v1, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_1fb
    .catchall {:try_start_1c2 .. :try_end_1fb} :catchall_24b

    .line 1543
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 1520
    return-object v0

    .line 1528
    :cond_1ff
    :try_start_1ff
    const-string v0, "PackageParsing"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Ignoring duplicate uses-permissions/uses-permissions-sdk-m: "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1529
    invoke-interface {v2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1530
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1528
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1532
    nop

    .line 1533
    move/from16 v16, v19

    goto :goto_237

    .line 1535
    :cond_233
    goto/16 :goto_16d

    .line 1512
    :cond_235
    const/16 v16, 0x0

    .line 1537
    :goto_237
    if-nez v16, :cond_241

    .line 1538
    new-instance v0, Lcom/android/internal/pm/pkg/component/ParsedUsesPermissionImpl;

    invoke-direct {v0, v7, v11, v6}, Lcom/android/internal/pm/pkg/component/ParsedUsesPermissionImpl;-><init>(Ljava/lang/String;ILjava/util/Set;)V

    invoke-interface {v2, v0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->addUsesPermission(Lcom/android/internal/pm/pkg/component/ParsedUsesPermission;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    :try_end_241
    .catchall {:try_start_1ff .. :try_end_241} :catchall_24b

    .line 1541
    :cond_241
    nop

    .line 1543
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 1541
    return-object v3

    .line 1486
    :cond_246
    :goto_246
    nop

    .line 1543
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 1486
    return-object v3

    .line 1543
    :catchall_24b
    move-exception v0

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 1544
    throw v0

    :sswitch_data_250
    .sparse-switch
        -0xd2402e2 -> :sswitch_91
        0x341a4cce -> :sswitch_86
        0x64ee7ac8 -> :sswitch_7c
    .end sparse-switch

    :pswitch_data_25e
    .packed-switch 0x0
        :pswitch_d8
        :pswitch_c4
        :pswitch_a2
    .end packed-switch
.end method

.method private static blacklist parseUsesSdk(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I)Landroid/content/pm/parsing/result/ParseResult;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            "I)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1721
    sget v0, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->SDK_VERSION:I

    if-lez v0, :cond_14b

    .line 1722
    and-int/lit16 p4, p4, 0x200

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p4, :cond_c

    move p4, v1

    goto :goto_d

    :cond_c
    move p4, v0

    .line 1723
    :goto_d
    sget-object v2, Lcom/android/internal/R$styleable;->AndroidManifestUsesSdk:[I

    invoke-virtual {p2, p3, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 1725
    nop

    .line 1726
    nop

    .line 1727
    nop

    .line 1728
    nop

    .line 1729
    nop

    .line 1730
    nop

    .line 1732
    :try_start_19
    invoke-virtual {v2, v0}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v3

    .line 1733
    const/4 v4, 0x0

    const/4 v5, 0x3

    if-eqz v3, :cond_3d

    .line 1734
    iget v6, v3, Landroid/util/TypedValue;->type:I

    if-ne v6, v5, :cond_38

    iget-object v6, v3, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    if-eqz v6, :cond_38

    .line 1735
    iget-object v3, v3, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1736
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    xor-int/2addr v6, v1

    move v7, v6

    move-object v6, v3

    move v3, v1

    goto :goto_40

    .line 1739
    :cond_38
    iget v3, v3, Landroid/util/TypedValue;->data:I

    .line 1740
    move v7, v1

    move-object v6, v4

    goto :goto_40

    .line 1733
    :cond_3d
    move v7, v0

    move v3, v1

    move-object v6, v4

    .line 1744
    :goto_40
    invoke-virtual {v2, v1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v8

    .line 1745
    if-eqz v8, :cond_61

    .line 1746
    iget v9, v8, Landroid/util/TypedValue;->type:I

    if-ne v9, v5, :cond_5c

    iget-object v9, v8, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    if-eqz v9, :cond_5c

    .line 1747
    iget-object v8, v8, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1748
    if-nez v7, :cond_58

    .line 1749
    move-object v6, v8

    goto :goto_64

    .line 1748
    :cond_58
    move-object v10, v8

    move-object v8, v6

    move-object v6, v10

    goto :goto_64

    .line 1753
    :cond_5c
    iget v0, v8, Landroid/util/TypedValue;->data:I

    move-object v8, v6

    move-object v6, v4

    goto :goto_64

    .line 1756
    :cond_61
    nop

    .line 1757
    move v0, v3

    move-object v8, v6

    .line 1760
    :goto_64
    if-eqz p4, :cond_70

    .line 1761
    const/4 v7, 0x2

    invoke-virtual {v2, v7}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v7

    .line 1762
    if-eqz v7, :cond_70

    .line 1764
    iget v7, v7, Landroid/util/TypedValue;->data:I

    goto :goto_73

    .line 1768
    :cond_70
    const v7, 0x7fffffff

    :goto_73
    sget-object v9, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->SDK_CODENAMES:[Ljava/lang/String;

    .line 1769
    invoke-static {v0, v6, v9, p0, p4}, Landroid/content/pm/parsing/FrameworkParsingPackageUtils;->computeTargetSdkVersion(ILjava/lang/String;[Ljava/lang/String;Landroid/content/pm/parsing/result/ParseInput;Z)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    .line 1771
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v6

    if-eqz v6, :cond_87

    .line 1772
    invoke-interface {p0, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0
    :try_end_83
    .catchall {:try_start_19 .. :try_end_83} :catchall_146

    .line 1829
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 1772
    return-object p0

    .line 1775
    :cond_87
    :try_start_87
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1777
    nop

    .line 1778
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p0, v6, v0}, Landroid/content/pm/parsing/result/ParseInput;->enableDeferredError(Ljava/lang/String;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v6

    .line 1779
    invoke-interface {v6}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v9

    if-eqz v9, :cond_a8

    .line 1780
    invoke-interface {p0, v6}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0
    :try_end_a4
    .catchall {:try_start_87 .. :try_end_a4} :catchall_146

    .line 1829
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 1780
    return-object p0

    .line 1783
    :cond_a8
    :try_start_a8
    sget v6, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->SDK_VERSION:I

    sget-object v9, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->SDK_CODENAMES:[Ljava/lang/String;

    .line 1784
    invoke-static {v3, v8, v6, v9, p0}, Landroid/content/pm/parsing/FrameworkParsingPackageUtils;->computeMinSdkVersion(ILjava/lang/String;I[Ljava/lang/String;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3

    .line 1785
    invoke-interface {v3}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v6

    if-eqz v6, :cond_be

    .line 1786
    invoke-interface {p0, v3}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0
    :try_end_ba
    .catchall {:try_start_a8 .. :try_end_ba} :catchall_146

    .line 1829
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 1786
    return-object p0

    .line 1789
    :cond_be
    :try_start_be
    invoke-interface {v3}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1791
    invoke-interface {p1, v3}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setMinSdkVersion(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v3

    .line 1792
    invoke-interface {v3, v0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setTargetSdkVersion(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 1793
    if-eqz p4, :cond_f2

    .line 1794
    sget p4, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->SDK_VERSION:I

    .line 1795
    invoke-static {v7, p4, p0}, Landroid/content/pm/parsing/FrameworkParsingPackageUtils;->computeMaxSdkVersion(IILandroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p4

    .line 1796
    invoke-interface {p4}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v0

    if-eqz v0, :cond_e5

    .line 1797
    invoke-interface {p0, p4}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0
    :try_end_e1
    .catchall {:try_start_be .. :try_end_e1} :catchall_146

    .line 1829
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 1797
    return-object p0

    .line 1799
    :cond_e5
    :try_start_e5
    invoke-interface {p4}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    .line 1800
    invoke-interface {p1, p4}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setMaxSdkVersion(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 1804
    :cond_f2
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result p4

    .line 1805
    nop

    .line 1806
    :cond_f7
    :goto_f7
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v0

    if-eq v0, v1, :cond_13b

    if-ne v0, v5, :cond_105

    .line 1807
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v3

    if-le v3, p4, :cond_13b

    .line 1808
    :cond_105
    if-eq v0, v5, :cond_f7

    const/4 v3, 0x4

    if-ne v0, v3, :cond_10b

    .line 1809
    goto :goto_f7

    .line 1813
    :cond_10b
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "extension-sdk"

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_126

    .line 1814
    if-nez v4, :cond_11e

    .line 1815
    new-instance v4, Landroid/util/SparseIntArray;

    invoke-direct {v4}, Landroid/util/SparseIntArray;-><init>()V

    .line 1817
    :cond_11e
    invoke-static {p0, p2, p3, v4}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseExtensionSdk(Landroid/content/pm/parsing/result/ParseInput;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/util/SparseIntArray;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    .line 1818
    invoke-static {p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_12c

    .line 1820
    :cond_126
    const-string v0, "<uses-sdk>"

    invoke-static {v0, p1, p3, p0}, Lcom/android/internal/pm/pkg/parsing/ParsingUtils;->unknownTag(Ljava/lang/String;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    .line 1823
    :goto_12c
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v3

    if-eqz v3, :cond_13a

    .line 1824
    invoke-interface {p0, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0
    :try_end_136
    .catchall {:try_start_e5 .. :try_end_136} :catchall_146

    .line 1829
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 1824
    return-object p0

    .line 1826
    :cond_13a
    goto :goto_f7

    .line 1827
    :cond_13b
    :try_start_13b
    invoke-static {v4}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->exactSizedCopyOfSparseArray(Landroid/util/SparseIntArray;)Landroid/util/SparseIntArray;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setMinExtensionVersions(Landroid/util/SparseIntArray;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    :try_end_142
    .catchall {:try_start_13b .. :try_end_142} :catchall_146

    .line 1829
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 1830
    goto :goto_14b

    .line 1829
    :catchall_146
    move-exception p0

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 1830
    throw p0

    .line 1832
    :cond_14b
    :goto_14b
    invoke-interface {p0, p1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist parseUsesSdkLibrary(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 2699
    move-object/from16 v1, p0

    const-string v2, ""

    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestUsesSdkLibrary:[I

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    invoke-virtual {v3, v4, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 2702
    const/4 v6, 0x0

    :try_start_f
    invoke-virtual {v5, v6}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v0

    .line 2704
    const/4 v7, 0x2

    const/4 v8, -0x1

    invoke-virtual {v5, v7, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    .line 2706
    const/4 v8, 0x1

    invoke-virtual {v5, v8}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v9

    .line 2708
    nop

    .line 2709
    const/4 v10, 0x3

    invoke-virtual {v5, v10, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v16

    .line 2713
    if-eqz v0, :cond_a4

    if-ltz v7, :cond_a4

    if-nez v9, :cond_2c

    goto/16 :goto_a4

    .line 2719
    :cond_2c
    invoke-interface/range {p1 .. p1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getUsesSdkLibraries()Ljava/util/List;

    move-result-object v10

    .line 2720
    invoke-interface {v10, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_51

    .line 2721
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Depending on multiple versions of SDK library "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_4d
    .catchall {:try_start_f .. :try_end_4d} :catchall_d3

    .line 2756
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 2721
    return-object v0

    .line 2725
    :cond_51
    :try_start_51
    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v12

    .line 2728
    const-string v0, ":"

    invoke-virtual {v9, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 2730
    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_72

    .line 2732
    const-string v0, "debug.pm.uses_sdk_library_default_cert_digest"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_6b
    .catchall {:try_start_51 .. :try_end_6b} :catchall_d3

    .line 2736
    :try_start_6b
    invoke-static {v0, v6}, Llibcore/util/HexEncoding;->decode(Ljava/lang/String;Z)[B
    :try_end_6e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6b .. :try_end_6e} :catch_70
    .catchall {:try_start_6b .. :try_end_6e} :catchall_d3

    .line 2739
    move-object v2, v0

    goto :goto_73

    .line 2737
    :catch_70
    move-exception v0

    .line 2738
    goto :goto_73

    .line 2730
    :cond_72
    move-object v2, v0

    .line 2742
    :goto_73
    :try_start_73
    invoke-static/range {p0 .. p3}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseAdditionalCertificates(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    .line 2743
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v3

    if-eqz v3, :cond_85

    .line 2744
    invoke-interface {v1, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_81
    .catchall {:try_start_73 .. :try_end_81} :catchall_d3

    .line 2756
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 2744
    return-object v0

    .line 2746
    :cond_85
    :try_start_85
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 2748
    array-length v3, v0

    add-int/2addr v3, v8

    new-array v15, v3, [Ljava/lang/String;

    .line 2749
    aput-object v2, v15, v6

    .line 2750
    array-length v2, v0

    invoke-static {v0, v6, v15, v8, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2753
    int-to-long v13, v7

    .line 2754
    move-object/from16 v11, p1

    invoke-interface/range {v11 .. v16}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->addUsesSdkLibrary(Ljava/lang/String;J[Ljava/lang/String;Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v0

    .line 2753
    invoke-interface {v1, v0}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_a0
    .catchall {:try_start_85 .. :try_end_a0} :catchall_d3

    .line 2756
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 2753
    return-object v0

    .line 2714
    :cond_a4
    :goto_a4
    :try_start_a4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad uses-sdk-library declaration name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " version: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " certDigest"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_cf
    .catchall {:try_start_a4 .. :try_end_cf} :catchall_d3

    .line 2756
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 2714
    return-object v0

    .line 2756
    :catchall_d3
    move-exception v0

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 2757
    throw v0
.end method

.method private static blacklist parseUsesStaticLibrary(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 2764
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestUsesStaticLibrary:[I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 2767
    const/4 v1, 0x0

    :try_start_7
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v2

    .line 2769
    const/4 v3, -0x1

    const/4 v4, 0x1

    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 2771
    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v5

    .line 2776
    if-eqz v2, :cond_8d

    if-ltz v3, :cond_8d

    if-nez v5, :cond_1d

    goto :goto_8d

    .line 2782
    :cond_1d
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getUsesStaticLibraries()Ljava/util/List;

    move-result-object v6

    .line 2783
    invoke-interface {v6, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_42

    .line 2784
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Depending on multiple versions of static library "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0
    :try_end_3e
    .catchall {:try_start_7 .. :try_end_3e} :catchall_bc

    .line 2811
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2784
    return-object p0

    .line 2788
    :cond_42
    :try_start_42
    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    .line 2791
    const-string v6, ":"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 2794
    sget-object v6, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    .line 2795
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getTargetSdkVersion()I

    move-result v7

    const/16 v8, 0x1b

    if-lt v7, v8, :cond_76

    .line 2796
    nop

    .line 2797
    invoke-static {p0, p1, p2, p3}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseAdditionalCertificates(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p2

    .line 2798
    invoke-interface {p2}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result p3

    if-eqz p3, :cond_6f

    .line 2799
    invoke-interface {p0, p2}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0
    :try_end_6b
    .catchall {:try_start_42 .. :try_end_6b} :catchall_bc

    .line 2811
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2799
    return-object p0

    .line 2801
    :cond_6f
    :try_start_6f
    invoke-interface {p2}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object p2

    move-object v6, p2

    check-cast v6, [Ljava/lang/String;

    .line 2804
    :cond_76
    array-length p2, v6

    add-int/2addr p2, v4

    new-array p2, p2, [Ljava/lang/String;

    .line 2805
    aput-object v5, p2, v1

    .line 2806
    array-length p3, v6

    invoke-static {v6, v1, p2, v4, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2809
    int-to-long v3, v3

    invoke-interface {p1, v2, v3, v4, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->addUsesStaticLibrary(Ljava/lang/String;J[Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object p1

    invoke-interface {p0, p1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0
    :try_end_89
    .catchall {:try_start_6f .. :try_end_89} :catchall_bc

    .line 2811
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2809
    return-object p0

    .line 2777
    :cond_8d
    :goto_8d
    :try_start_8d
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Bad uses-static-library declaration name: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " version: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " certDigest"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0
    :try_end_b8
    .catchall {:try_start_8d .. :try_end_b8} :catchall_bc

    .line 2811
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2777
    return-object p0

    .line 2811
    :catchall_bc
    move-exception p0

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2812
    throw p0
.end method

.method public static blacklist readConfigUseRoundIcon(Landroid/content/res/Resources;)V
    .registers 15

    .line 3438
    const v0, 0x11102b1

    if-eqz p0, :cond_c

    .line 3439
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    sput-boolean p0, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->sUseRoundIcon:Z

    .line 3440
    return-void

    .line 3445
    :cond_c
    :try_start_c
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object p0

    const-string v1, "android"

    .line 3447
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    .line 3445
    const-wide/16 v3, 0x0

    invoke-interface {p0, v1, v3, v4, v2}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object p0
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_1c} :catch_44

    .line 3450
    nop

    .line 3451
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    .line 3454
    invoke-static {}, Landroid/app/ResourcesManager;->getInstance()Landroid/app/ResourcesManager;

    move-result-object v2

    iget-object v6, p0, Landroid/content/pm/ApplicationInfo;->resourceDirs:[Ljava/lang/String;

    iget-object v7, p0, Landroid/content/pm/ApplicationInfo;->overlayPaths:[Ljava/lang/String;

    iget-object v8, p0, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    .line 3463
    invoke-virtual {v1}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v11

    .line 3464
    invoke-virtual {v1}, Landroid/content/res/Resources;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v12

    .line 3454
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {v2 .. v13}, Landroid/app/ResourcesManager;->getResources(Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Integer;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/lang/ClassLoader;Ljava/util/List;)Landroid/content/res/Resources;

    move-result-object p0

    .line 3467
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    sput-boolean p0, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->sUseRoundIcon:Z

    .line 3468
    return-void

    .line 3448
    :catch_44
    move-exception v0

    move-object p0, v0

    .line 3449
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public static blacklist readKeySetMapping(Landroid/os/Parcel;)Landroid/util/ArrayMap;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            ")",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/security/PublicKey;",
            ">;>;"
        }
    .end annotation

    .line 3652
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3653
    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_9

    .line 3654
    return-object v1

    .line 3657
    :cond_9
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    .line 3658
    const/4 v4, 0x0

    move v5, v4

    :goto_10
    if-ge v5, v0, :cond_42

    .line 3659
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 3660
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 3661
    if-ne v7, v2, :cond_20

    .line 3662
    invoke-virtual {v3, v6, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3663
    goto :goto_3f

    .line 3666
    :cond_20
    new-instance v8, Landroid/util/ArraySet;

    invoke-direct {v8, v7}, Landroid/util/ArraySet;-><init>(I)V

    .line 3667
    move v9, v4

    :goto_26
    if-ge v9, v7, :cond_3c

    .line 3668
    const-class v10, Ljava/security/PublicKey;

    invoke-virtual {v10}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v10

    const-class v11, Ljava/security/PublicKey;

    invoke-virtual {p0, v10, v11}, Landroid/os/Parcel;->readSerializable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/security/PublicKey;

    .line 3669
    invoke-virtual {v8, v10}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 3667
    add-int/lit8 v9, v9, 0x1

    goto :goto_26

    .line 3672
    :cond_3c
    invoke-virtual {v3, v6, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3658
    :goto_3f
    add-int/lit8 v5, v5, 0x1

    goto :goto_10

    .line 3675
    :cond_42
    return-object v3
.end method

.method private static blacklist resId(ILandroid/content/res/TypedArray;)I
    .registers 3

    .line 3512
    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p0

    return p0
.end method

.method private static blacklist resIdArray(Landroid/content/pm/parsing/result/ParseInput;Landroid/content/res/TypedArray;Landroid/content/res/Resources;ILjava/lang/String;I)Landroid/content/pm/parsing/result/ParseResult;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Landroid/content/res/TypedArray;",
            "Landroid/content/res/Resources;",
            "I",
            "Ljava/lang/String;",
            "I)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "[I>;"
        }
    .end annotation

    .line 3545
    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_c

    .line 3546
    invoke-interface {p0, v1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    .line 3549
    :cond_c
    const/4 v0, 0x0

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    .line 3550
    if-nez p1, :cond_18

    .line 3551
    invoke-interface {p0, v1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    .line 3555
    :cond_18
    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object p3

    .line 3556
    :try_start_1c
    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p1

    .line 3557
    invoke-virtual {p3}, Landroid/content/res/TypedArray;->length()I

    move-result v2

    .line 3558
    if-lez p5, :cond_40

    if-le v2, p5, :cond_40

    .line 3559
    const-string p2, "The length of the typedArray (%s) is larger than %d."

    .line 3561
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    filled-new-array {p1, p4}, [Ljava/lang/Object;

    move-result-object p1

    .line 3559
    invoke-static {p2, p1}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0
    :try_end_3a
    .catchall {:try_start_1c .. :try_end_3a} :catchall_f3

    .line 3601
    if-eqz p3, :cond_3f

    invoke-virtual {p3}, Landroid/content/res/TypedArray;->close()V

    .line 3559
    :cond_3f
    return-object p0

    .line 3563
    :cond_40
    :try_start_40
    new-instance p5, Landroid/util/ArraySet;

    invoke-direct {p5}, Landroid/util/ArraySet;-><init>()V

    .line 3564
    move v3, v0

    :goto_46
    if-ge v3, v2, :cond_c8

    .line 3565
    invoke-virtual {p3, v3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 3570
    if-nez v4, :cond_62

    .line 3571
    const-string p2, "There is an item that is not a resource id in the typedArray (%s)."

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0
    :try_end_5c
    .catchall {:try_start_40 .. :try_end_5c} :catchall_f3

    .line 3601
    if-eqz p3, :cond_61

    invoke-virtual {p3}, Landroid/content/res/TypedArray;->close()V

    .line 3571
    :cond_61
    return-object p0

    .line 3577
    :cond_62
    :try_start_62
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p5, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_84

    .line 3578
    const-string p4, "There is a duplicated resource (%s) in the typedArray (%s)."

    .line 3580
    invoke-virtual {p2, v4}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p2

    filled-new-array {p2, p1}, [Ljava/lang/Object;

    move-result-object p2

    .line 3578
    invoke-static {p4, p2}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p2}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0
    :try_end_7e
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_62 .. :try_end_7e} :catch_b3
    .catchall {:try_start_62 .. :try_end_7e} :catchall_f3

    .line 3601
    if-eqz p3, :cond_83

    invoke-virtual {p3}, Landroid/content/res/TypedArray;->close()V

    .line 3578
    :cond_83
    return-object p0

    .line 3582
    :cond_84
    :try_start_84
    invoke-virtual {p2, v4}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v5

    .line 3583
    if-eqz p4, :cond_a8

    .line 3584
    invoke-static {v5, p4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_a8

    .line 3585
    const-string p5, "There is a resource (%s) in the typedArray (%s) that is not a %s type."

    .line 3587
    invoke-virtual {p2, v4}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p2

    filled-new-array {p2, p1, p4}, [Ljava/lang/Object;

    move-result-object p2

    .line 3585
    invoke-static {p5, p2}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p2}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0
    :try_end_a2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_84 .. :try_end_a2} :catch_b3
    .catchall {:try_start_84 .. :try_end_a2} :catchall_f3

    .line 3601
    if-eqz p3, :cond_a7

    invoke-virtual {p3}, Landroid/content/res/TypedArray;->close()V

    .line 3585
    :cond_a7
    return-object p0

    .line 3594
    :cond_a8
    nop

    .line 3595
    :try_start_a9
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p5, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3564
    add-int/lit8 v3, v3, 0x1

    goto :goto_46

    .line 3590
    :catch_b3
    move-exception p2

    .line 3591
    const-string p2, "There is a resource in the typedArray (%s) that is not found in the app resources."

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0
    :try_end_c2
    .catchall {:try_start_a9 .. :try_end_c2} :catchall_f3

    .line 3601
    if-eqz p3, :cond_c7

    invoke-virtual {p3}, Landroid/content/res/TypedArray;->close()V

    .line 3591
    :cond_c7
    return-object p0

    .line 3597
    :cond_c8
    :try_start_c8
    invoke-interface {p5}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_d8

    .line 3598
    invoke-interface {p0, v1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0
    :try_end_d2
    .catchall {:try_start_c8 .. :try_end_d2} :catchall_f3

    .line 3601
    if-eqz p3, :cond_d7

    invoke-virtual {p3}, Landroid/content/res/TypedArray;->close()V

    .line 3598
    :cond_d7
    return-object p0

    .line 3600
    :cond_d8
    :try_start_d8
    invoke-interface {p5}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance p2, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils$$ExternalSyntheticLambda0;

    invoke-direct {p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object p1

    invoke-interface {p0, p1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0
    :try_end_ed
    .catchall {:try_start_d8 .. :try_end_ed} :catchall_f3

    .line 3601
    if-eqz p3, :cond_f2

    invoke-virtual {p3}, Landroid/content/res/TypedArray;->close()V

    .line 3600
    :cond_f2
    return-object p0

    .line 3555
    :catchall_f3
    move-exception p0

    if-eqz p3, :cond_fe

    :try_start_f6
    invoke-virtual {p3}, Landroid/content/res/TypedArray;->close()V
    :try_end_f9
    .catchall {:try_start_f6 .. :try_end_f9} :catchall_fa

    goto :goto_fe

    :catchall_fa
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_fe
    :goto_fe
    throw p0
.end method

.method public static blacklist setCompatibilityModeEnabled(Z)V
    .registers 1

    .line 3431
    sput-boolean p0, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->sCompatibilityModeEnabled:Z

    .line 3432
    return-void
.end method

.method private static blacklist setMaxAspectRatio(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;)V
    .registers 8

    .line 3004
    nop

    .line 3006
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getMaxAspectRatio()F

    move-result v0

    .line 3007
    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    const-string v3, "android.max_aspect"

    if-eqz v2, :cond_d

    .line 3009
    goto :goto_1f

    .line 3011
    :cond_d
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getMetaData()Landroid/os/Bundle;

    move-result-object v0

    .line 3012
    if-eqz v0, :cond_1e

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 3013
    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v0

    goto :goto_1f

    .line 3017
    :cond_1e
    move v0, v1

    :goto_1f
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getActivities()Ljava/util/List;

    move-result-object p0

    .line 3018
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    .line 3019
    const/4 v2, 0x0

    :goto_28
    if-ge v2, v1, :cond_4d

    .line 3020
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/pm/pkg/component/ParsedActivity;

    .line 3022
    invoke-interface {v4}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getMaxAspectRatio()F

    move-result v5

    const/high16 v6, -0x40800000    # -1.0f

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_3b

    .line 3023
    goto :goto_4a

    .line 3031
    :cond_3b
    invoke-interface {v4}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getMetaData()Landroid/os/Bundle;

    move-result-object v5

    .line 3032
    invoke-virtual {v5, v3, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v5

    .line 3034
    invoke-interface {v4}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getResizeMode()I

    move-result v6

    invoke-static {v4, v6, v5}, Lcom/android/internal/pm/pkg/component/ComponentMutateUtils;->setMaxAspectRatio(Lcom/android/internal/pm/pkg/component/ParsedActivity;IF)V

    .line 3019
    :goto_4a
    add-int/lit8 v2, v2, 0x1

    goto :goto_28

    .line 3037
    :cond_4d
    return-void
.end method

.method private blacklist setMinAspectRatio(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;)V
    .registers 8

    .line 3045
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getMinAspectRatio()F

    move-result v0

    .line 3047
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getActivities()Ljava/util/List;

    move-result-object p1

    .line 3048
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 3049
    const/4 v2, 0x0

    :goto_d
    if-ge v2, v1, :cond_29

    .line 3050
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/pm/pkg/component/ParsedActivity;

    .line 3051
    invoke-interface {v3}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getMinAspectRatio()F

    move-result v4

    const/high16 v5, -0x40800000    # -1.0f

    cmpl-float v4, v4, v5

    if-nez v4, :cond_26

    .line 3052
    invoke-interface {v3}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getResizeMode()I

    move-result v4

    invoke-static {v3, v4, v0}, Lcom/android/internal/pm/pkg/component/ComponentMutateUtils;->setMinAspectRatio(Lcom/android/internal/pm/pkg/component/ParsedActivity;IF)V

    .line 3049
    :cond_26
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 3056
    :cond_29
    return-void
.end method

.method private blacklist setSupportsSizeChanges(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;)V
    .registers 10

    .line 3059
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getMetaData()Landroid/os/Bundle;

    move-result-object v0

    .line 3060
    const-string v1, "android.supports_size_changes"

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_12

    .line 3061
    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_12

    move v0, v2

    goto :goto_13

    :cond_12
    move v0, v3

    .line 3063
    :goto_13
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getActivities()Ljava/util/List;

    move-result-object p1

    .line 3064
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    .line 3065
    move v5, v3

    :goto_1c
    if-ge v5, v4, :cond_36

    .line 3066
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/pm/pkg/component/ParsedActivity;

    .line 3067
    if-nez v0, :cond_30

    invoke-interface {v6}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getMetaData()Landroid/os/Bundle;

    move-result-object v7

    .line 3068
    invoke-virtual {v7, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_33

    .line 3069
    :cond_30
    invoke-static {v6, v2}, Lcom/android/internal/pm/pkg/component/ComponentMutateUtils;->setSupportsSizeChanges(Lcom/android/internal/pm/pkg/component/ParsedActivity;Z)V

    .line 3065
    :cond_33
    add-int/lit8 v5, v5, 0x1

    goto :goto_1c

    .line 3072
    :cond_36
    return-void
.end method

.method private static blacklist string(ILandroid/content/res/TypedArray;)Ljava/lang/String;
    .registers 2

    .line 3605
    invoke-virtual {p1, p0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist stringResIdArray(Landroid/content/pm/parsing/result/ParseInput;Landroid/content/res/TypedArray;Landroid/content/res/Resources;II)Landroid/content/pm/parsing/result/ParseResult;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Landroid/content/res/TypedArray;",
            "Landroid/content/res/Resources;",
            "II)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "[I>;"
        }
    .end annotation

    .line 3532
    const-string v4, "string"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->resIdArray(Landroid/content/pm/parsing/result/ParseInput;Landroid/content/res/TypedArray;Landroid/content/res/Resources;ILjava/lang/String;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0
.end method

.method private blacklist validateBaseApkTags(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;I)Landroid/content/pm/parsing/result/ParseResult;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            "I)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    .line 1067
    invoke-interface {p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getAttributions()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/pm/pkg/component/ParsedAttributionUtils;->isCombinationValid(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 1068
    const/16 p2, -0x65

    const-string p3, "Combination <attribution> tags are not valid"

    invoke-interface {p1, p2, p3}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p1

    return-object p1

    .line 1074
    :cond_13
    invoke-static {p2}, Lcom/android/internal/pm/pkg/component/ParsedPermissionUtils;->declareDuplicatePermission(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;)Z

    move-result v0

    const/16 v1, -0x6c

    if-eqz v0, :cond_22

    .line 1075
    const-string p2, "Found duplicate permission with a different attribute value."

    invoke-interface {p1, v1, p2}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p1

    return-object p1

    .line 1081
    :cond_22
    invoke-static {p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->convertCompatPermissions(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;)V

    .line 1083
    invoke-direct {p0, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->convertSplitPermissions(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;)V

    .line 1088
    invoke-interface {p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getTargetSdkVersion()I

    move-result v0

    const/4 v2, 0x4

    if-lt v0, v2, :cond_53

    .line 1089
    invoke-interface {p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->isSmallScreensSupported()Z

    move-result v0

    if-nez v0, :cond_56

    .line 1090
    invoke-interface {p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->isNormalScreensSupported()Z

    move-result v0

    if-nez v0, :cond_56

    .line 1091
    invoke-interface {p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->isLargeScreensSupported()Z

    move-result v0

    if-nez v0, :cond_56

    .line 1092
    invoke-interface {p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->isExtraLargeScreensSupported()Z

    move-result v0

    if-nez v0, :cond_56

    .line 1093
    invoke-interface {p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->isResizeable()Z

    move-result v0

    if-nez v0, :cond_56

    .line 1094
    invoke-interface {p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->isAnyDensity()Z

    move-result v0

    if-nez v0, :cond_56

    .line 1095
    :cond_53
    invoke-static {p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->adjustPackageToBeUnresizeableAndUnpipable(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;)V

    .line 1099
    :cond_56
    and-int/lit16 p3, p3, 0x400

    if-eqz p3, :cond_5c

    const/4 p3, 0x1

    goto :goto_5d

    :cond_5c
    const/4 p3, 0x0

    .line 1100
    :goto_5d
    if-eqz p3, :cond_85

    invoke-interface {p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getPermissions()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_85

    .line 1101
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1103
    invoke-interface {p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " is an APEX package and shouldn\'t declare permissions."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1101
    invoke-interface {p1, v1, p2}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p1

    return-object p1

    .line 1108
    :cond_85
    invoke-interface {p1, p2}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p1

    return-object p1
.end method

.method public static blacklist writeKeySetMapping(Landroid/os/Parcel;Ljava/util/Map;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/security/PublicKey;",
            ">;>;)V"
        }
    .end annotation

    .line 3622
    const/4 v0, -0x1

    if-nez p1, :cond_7

    .line 3623
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3624
    return-void

    .line 3627
    :cond_7
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    .line 3628
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3630
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_48

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3631
    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3632
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArraySet;

    .line 3633
    if-nez v2, :cond_31

    .line 3634
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3635
    goto :goto_16

    .line 3638
    :cond_31
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v3

    .line 3639
    invoke-virtual {p0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3640
    const/4 v4, 0x0

    :goto_39
    if-ge v4, v3, :cond_47

    .line 3641
    invoke-virtual {v2, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/io/Serializable;

    invoke-virtual {p0, v5}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 3640
    add-int/lit8 v4, v4, 0x1

    goto :goto_39

    .line 3643
    :cond_47
    goto :goto_16

    .line 3644
    :cond_48
    return-void
.end method


# virtual methods
.method public blacklist parsePackage(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;I)Landroid/content/pm/parsing/result/ParseResult;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Ljava/io/File;",
            "I)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    .line 347
    invoke-virtual {p2}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 348
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseClusterPackage(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p1

    return-object p1

    .line 350
    :cond_b
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parseMonolithicPackage(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p1

    return-object p1
.end method

.method public blacklist parsePackageFromPackageLite(Landroid/content/pm/parsing/result/ParseInput;Landroid/content/pm/parsing/PackageLite;I)Landroid/content/pm/parsing/result/ParseResult;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Landroid/content/pm/parsing/PackageLite;",
            "I)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    .line 477
    invoke-virtual {p2}, Landroid/content/pm/parsing/PackageLite;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->getVolumeUuid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 478
    invoke-virtual {p2}, Landroid/content/pm/parsing/PackageLite;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 480
    nop

    .line 481
    move-object v2, v1

    iget-object v1, p0, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->mCallback:Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils$Callback;

    .line 482
    invoke-virtual {p2}, Landroid/content/pm/parsing/PackageLite;->getBaseApkPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/content/pm/parsing/PackageLite;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Landroid/content/pm/parsing/PackageLite;->isCoreApp()Z

    move-result v6

    .line 481
    const/4 v5, 0x0

    invoke-interface/range {v1 .. v6}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils$Callback;->startParsingPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/res/TypedArray;Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v7

    .line 484
    invoke-virtual {p2}, Landroid/content/pm/parsing/PackageLite;->getTargetSdk()I

    move-result v1

    .line 485
    nop

    .line 487
    nop

    .line 491
    invoke-virtual {p2}, Landroid/content/pm/parsing/PackageLite;->getVersionCode()I

    move-result v3

    invoke-interface {v7, v3}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setVersionCode(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 492
    invoke-virtual {p2}, Landroid/content/pm/parsing/PackageLite;->getVersionCodeMajor()I

    move-result v3

    invoke-interface {v7, v3}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setVersionCodeMajor(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 493
    invoke-virtual {p2}, Landroid/content/pm/parsing/PackageLite;->getBaseRevisionCode()I

    move-result v3

    invoke-interface {v7, v3}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setBaseRevisionCode(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 494
    const/4 v3, 0x0

    invoke-interface {v7, v3}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setVersionName(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 495
    const/4 v8, 0x0

    invoke-interface {v7, v8}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setCompileSdkVersion(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 496
    invoke-interface {v7, v3}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setCompileSdkVersionCodeName(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 497
    invoke-interface {v7, v8}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setIsolatedSplitLoading(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 498
    invoke-interface {v7, v1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setTargetSdkVersion(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 501
    invoke-virtual {p2}, Landroid/content/pm/parsing/PackageLite;->getInstallLocation()I

    move-result v4

    invoke-interface {v7, v4}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setInstallLocation(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v4

    .line 502
    const/4 v5, 0x1

    invoke-interface {v4, v5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setTargetSandboxVersion(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v4

    and-int/lit8 v6, p3, 0x8

    if-eqz v6, :cond_60

    move v6, v5

    goto :goto_61

    :cond_60
    move v6, v8

    .line 504
    :goto_61
    invoke-interface {v4, v6}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setExternalStorage(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 506
    invoke-virtual {p2}, Landroid/content/pm/parsing/PackageLite;->getArchivedPackage()Landroid/content/pm/ArchivedPackageParcel;

    move-result-object v4

    .line 507
    if-nez v4, :cond_73

    .line 508
    const/16 p2, -0x66

    const-string p3, "archivePackage is missing"

    invoke-interface {p1, p2, p3}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p1

    return-object p1

    .line 513
    :cond_73
    nop

    .line 515
    invoke-interface {v7, v5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setBackupAllowed(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v6

    .line 516
    invoke-interface {v6, v5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setClearUserDataAllowed(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v6

    .line 517
    invoke-interface {v6, v5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setClearUserDataOnFailedRestoreAllowed(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v6

    .line 518
    invoke-interface {v6, v5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setAllowNativeHeapPointerTagging(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v6

    .line 519
    invoke-interface {v6, v5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setEnabled(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v6

    .line 520
    invoke-interface {v6, v5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setExtractNativeLibrariesRequested(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v6

    const/16 v9, 0x1d

    if-lt v1, v9, :cond_92

    move v10, v5

    goto :goto_93

    :cond_92
    move v10, v8

    .line 522
    :goto_93
    invoke-interface {v6, v10}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setAllowAudioPlaybackCapture(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v6

    const/16 v10, 0xe

    if-lt v1, v10, :cond_9d

    move v10, v5

    goto :goto_9e

    :cond_9d
    move v10, v8

    .line 523
    :goto_9e
    invoke-interface {v6, v10}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setHardwareAccelerated(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v6

    iget-object v10, v4, Landroid/content/pm/ArchivedPackageParcel;->requestLegacyExternalStorage:Ljava/lang/String;

    if-ge v1, v9, :cond_a8

    move v9, v5

    goto :goto_a9

    :cond_a8
    move v9, v8

    .line 525
    :goto_a9
    invoke-static {v10, v9}, Lcom/android/internal/util/XmlUtils;->convertValueToBoolean(Ljava/lang/CharSequence;Z)Z

    move-result v9

    .line 524
    invoke-interface {v6, v9}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setRequestLegacyExternalStorage(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v6

    const/16 v9, 0x1c

    if-ge v1, v9, :cond_b6

    goto :goto_b7

    :cond_b6
    move v5, v8

    .line 527
    :goto_b7
    invoke-interface {v6, v5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setCleartextTrafficAllowed(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v1

    iget-object v5, v4, Landroid/content/pm/ArchivedPackageParcel;->defaultToDeviceProtectedStorage:Ljava/lang/String;

    .line 529
    invoke-static {v5, v8}, Lcom/android/internal/util/XmlUtils;->convertValueToBoolean(Ljava/lang/CharSequence;Z)Z

    move-result v5

    invoke-interface {v1, v5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setDefaultToDeviceProtectedStorage(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v1

    iget-object v4, v4, Landroid/content/pm/ArchivedPackageParcel;->userDataFragile:Ljava/lang/String;

    .line 532
    invoke-static {v4, v8}, Lcom/android/internal/util/XmlUtils;->convertValueToBoolean(Ljava/lang/CharSequence;Z)Z

    move-result v4

    .line 531
    invoke-interface {v1, v4}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setUserDataFragile(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v1

    .line 534
    const/4 v9, -0x1

    invoke-interface {v1, v9}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setCategory(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v1

    .line 536
    const/4 v4, 0x0

    invoke-interface {v1, v4}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setMaxAspectRatio(F)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object v1

    .line 537
    invoke-interface {v1, v4}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setMinAspectRatio(F)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 540
    invoke-interface {v7, v8}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setDeclaredHavingCode(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 542
    nop

    .line 543
    invoke-static {v2, v2, v3, p1}, Lcom/android/internal/pm/pkg/component/ComponentParseUtils;->buildTaskAffinityName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    .line 545
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v3

    if-eqz v3, :cond_ef

    .line 546
    invoke-interface {p1, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p1

    return-object p1

    .line 548
    :cond_ef
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v7, v1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setTaskAffinity(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 550
    nop

    .line 551
    move-object v1, v2

    const/4 v2, 0x0

    iget-object v5, p0, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->mSeparateProcesses:[Ljava/lang/String;

    const/4 v3, 0x0

    move-object v6, p1

    move v4, p3

    invoke-static/range {v1 .. v6}, Lcom/android/internal/pm/pkg/component/ComponentParseUtils;->buildProcessName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;I[Ljava/lang/String;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p1

    .line 553
    invoke-interface {p1}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result p3

    if-eqz p3, :cond_10f

    .line 554
    invoke-interface {v6, p1}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p1

    return-object p1

    .line 556
    :cond_10f
    invoke-interface {p1}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-interface {v7, p1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setProcessName(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 558
    invoke-interface {v7, v9}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setGwpAsanMode(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 559
    invoke-interface {v7, v9}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setMemtagMode(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 560
    invoke-interface {v7, v8}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setPageSizeAppCompatFlags(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 562
    invoke-direct {p0, v7}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->afterParseBaseApplication(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;)V

    .line 564
    invoke-direct {p0, v6, v7, v4}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->validateBaseApkTags(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p1

    .line 565
    invoke-interface {p1}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result p3

    if-eqz p3, :cond_12f

    .line 566
    return-object p1

    .line 569
    :cond_12f
    invoke-interface {v7, v0}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setVolumeUuid(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 571
    and-int/lit8 p1, v4, 0x20

    if-eqz p1, :cond_13e

    .line 572
    invoke-virtual {p2}, Landroid/content/pm/parsing/PackageLite;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object p1

    invoke-interface {v7, p1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setSigningDetails(Landroid/content/pm/SigningDetails;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    goto :goto_143

    .line 574
    :cond_13e
    sget-object p1, Landroid/content/pm/SigningDetails;->UNKNOWN:Landroid/content/pm/SigningDetails;

    invoke-interface {v7, p1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->setSigningDetails(Landroid/content/pm/SigningDetails;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 577
    :goto_143
    nop

    .line 578
    invoke-virtual {p2}, Landroid/content/pm/parsing/PackageLite;->isUse32bitAbi()Z

    move-result p1

    invoke-interface {v7, p1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->set32BitAbiPreferred(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    move-result-object p1

    .line 577
    invoke-interface {v6, p1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p1

    return-object p1
.end method
