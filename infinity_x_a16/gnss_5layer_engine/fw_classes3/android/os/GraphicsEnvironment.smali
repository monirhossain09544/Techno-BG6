.class public Landroid/os/GraphicsEnvironment;
.super Ljava/lang/Object;
.source "GraphicsEnvironment.java"


# static fields
.field private static final blacklist ACTION_ANGLE_FOR_ANDROID:Ljava/lang/String; = "android.app.action.ANGLE_FOR_ANDROID"

.field private static final blacklist ACTION_ANGLE_FOR_ANDROID_TOAST_MESSAGE:Ljava/lang/String; = "android.app.action.ANGLE_FOR_ANDROID_TOAST_MESSAGE"

.field private static final blacklist ANGLE_DRIVER_NAME:Ljava/lang/String; = "angle"

.field private static final blacklist ANGLE_DRIVER_VERSION_CODE:J = 0x0L

.field private static final blacklist ANGLE_DRIVER_VERSION_NAME:Ljava/lang/String; = ""

.field private static final blacklist ANGLE_GL_DRIVER_ALL_ANGLE_OFF:I = 0x0

.field private static final blacklist ANGLE_GL_DRIVER_ALL_ANGLE_ON:I = 0x1

.field private static final blacklist ANGLE_GL_DRIVER_CHOICE_ANGLE:Ljava/lang/String; = "angle"

.field private static final blacklist ANGLE_GL_DRIVER_CHOICE_DEFAULT:Ljava/lang/String; = "default"

.field private static final blacklist ANGLE_GL_DRIVER_CHOICE_NATIVE:Ljava/lang/String; = "native"

.field private static final greylist-max-o DEBUG:Z = false

.field private static final blacklist INTENT_KEY_A4A_TOAST_MESSAGE:Ljava/lang/String; = "A4A Toast Message"

.field private static final blacklist METADATA_DEVELOPER_DRIVER_ENABLE:Ljava/lang/String; = "com.android.graphics.developerdriver.enable"

.field private static final blacklist METADATA_DRIVER_BUILD_TIME:Ljava/lang/String; = "com.android.graphics.driver.build_time"

.field private static final blacklist METADATA_INJECT_LAYERS_ENABLE:Ljava/lang/String; = "com.android.graphics.injectLayers.enable"

.field private static final blacklist PROPERTY_GFX_DRIVER_BUILD_TIME:Ljava/lang/String; = "ro.gfx.driver_build_time"

.field private static final blacklist PROPERTY_GFX_DRIVER_PRERELEASE:Ljava/lang/String; = "ro.gfx.driver.1"

.field private static final blacklist PROPERTY_GFX_DRIVER_PRODUCTION:Ljava/lang/String; = "ro.gfx.driver.0"

.field private static final blacklist PROPERTY_RO_HARDWARE_EGL:Ljava/lang/String; = "ro.hardware.egl"

.field private static final blacklist SYSTEM_ANGLE_STRING:Ljava/lang/String; = "system"

.field private static final blacklist SYSTEM_DRIVER_NAME:Ljava/lang/String; = "system"

.field private static final blacklist SYSTEM_DRIVER_VERSION_CODE:J = 0x0L

.field private static final blacklist SYSTEM_DRIVER_VERSION_NAME:Ljava/lang/String; = ""

.field private static final greylist-max-o TAG:Ljava/lang/String; = "GraphicsEnvironment"

.field private static final blacklist UPDATABLE_DRIVER_ALLOWLIST_ALL:Ljava/lang/String; = "*"

.field private static final blacklist UPDATABLE_DRIVER_GLOBAL_OPT_IN_DEFAULT:I = 0x0

.field private static final blacklist UPDATABLE_DRIVER_GLOBAL_OPT_IN_OFF:I = 0x3

.field private static final blacklist UPDATABLE_DRIVER_GLOBAL_OPT_IN_PRERELEASE_DRIVER:I = 0x2

.field private static final blacklist UPDATABLE_DRIVER_GLOBAL_OPT_IN_PRODUCTION_DRIVER:I = 0x1

.field private static final blacklist UPDATABLE_DRIVER_SPHAL_LIBRARIES_FILENAME:Ljava/lang/String; = "sphal_libraries.txt"

.field private static final blacklist VULKAN_1_0:I = 0x400000

.field private static final blacklist VULKAN_1_1:I = 0x401000

.field private static final blacklist VULKAN_1_2:I = 0x402000

.field private static final blacklist VULKAN_1_3:I = 0x403000

.field private static final blacklist VULKAN_1_4:I = 0x404000

.field private static final greylist-max-o sInstance:Landroid/os/GraphicsEnvironment;


# instance fields
.field private blacklist mAngleOptInIndex:I

.field private greylist-max-o mClassLoader:Ljava/lang/ClassLoader;

.field private blacklist mLibraryPermittedPaths:Ljava/lang/String;

.field private blacklist mLibrarySearchPaths:Ljava/lang/String;

.field private blacklist mShouldUseAngle:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 58
    new-instance v0, Landroid/os/GraphicsEnvironment;

    invoke-direct {v0}, Landroid/os/GraphicsEnvironment;-><init>()V

    sput-object v0, Landroid/os/GraphicsEnvironment;->sInstance:Landroid/os/GraphicsEnvironment;

    return-void
.end method

.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    const/4 v0, -0x1

    iput v0, p0, Landroid/os/GraphicsEnvironment;->mAngleOptInIndex:I

    .line 131
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/os/GraphicsEnvironment;->mShouldUseAngle:Z

    return-void
.end method

.method private blacklist canInjectLayers(Landroid/content/pm/ApplicationInfo;)Z
    .registers 3

    .line 213
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v0, :cond_16

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v0, "com.android.graphics.injectLayers.enable"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_16

    .line 214
    invoke-static {}, Landroid/os/GraphicsEnvironment;->setInjectLayersPrSetDumpable()Z

    move-result p1

    if-eqz p1, :cond_16

    const/4 p1, 0x1

    goto :goto_17

    :cond_16
    const/4 p1, 0x0

    .line 213
    :goto_17
    return p1
.end method

.method private static greylist-max-o chooseAbi(Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;
    .registers 3

    .line 1028
    invoke-static {}, Ldalvik/system/VMRuntime;->getCurrentInstructionSet()Ljava/lang/String;

    move-result-object v0

    .line 1029
    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    if-eqz v1, :cond_17

    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    .line 1030
    invoke-static {v1}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 1031
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    return-object p0

    .line 1033
    :cond_17
    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->secondaryCpuAbi:Ljava/lang/String;

    if-eqz v1, :cond_2a

    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->secondaryCpuAbi:Ljava/lang/String;

    .line 1034
    invoke-static {v1}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 1035
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->secondaryCpuAbi:Ljava/lang/String;

    return-object p0

    .line 1037
    :cond_2a
    const/4 p0, 0x0

    return-object p0
.end method

.method private blacklist chooseDriver(Landroid/content/Context;Landroid/os/Bundle;Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Z
    .registers 16

    .line 963
    const-string v1, "GraphicsEnvironment"

    invoke-direct {p0, p2, p5}, Landroid/os/GraphicsEnvironment;->chooseDriverInternal(Landroid/os/Bundle;Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;

    move-result-object v2

    .line 964
    const/4 p2, 0x0

    if-nez v2, :cond_a

    .line 965
    return p2

    .line 970
    :cond_a
    const p5, 0x100080

    :try_start_d
    invoke-virtual {p3, v2, p5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p3
    :try_end_11
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_d .. :try_end_11} :catch_a2

    .line 975
    nop

    .line 979
    iget-object p5, p3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 980
    iget v0, p5, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v3, 0x1a

    if-ge v0, v3, :cond_1b

    .line 984
    return p2

    .line 987
    :cond_1b
    invoke-static {p5}, Landroid/os/GraphicsEnvironment;->chooseAbi(Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;

    move-result-object v0

    .line 988
    if-nez v0, :cond_22

    .line 995
    return p2

    .line 998
    :cond_22
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 999
    iget-object v3, p5, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    .line 1000
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1001
    iget-object v3, p5, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1002
    const-string v4, "!/lib/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1003
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1004
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1005
    invoke-direct {p0, p1, v2}, Landroid/os/GraphicsEnvironment;->getSphalLibraries(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1006
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Updatable driver package search path: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", required sphal libraries: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1008
    invoke-static {p2, p1}, Landroid/os/GraphicsEnvironment;->setDriverPathAndSphalLibraries(Ljava/lang/String;Ljava/lang/String;)V

    .line 1010
    iget-object p1, p5, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz p1, :cond_9a

    .line 1014
    iget-object p1, p5, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string p2, "com.android.graphics.driver.build_time"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1015
    const/4 p2, 0x1

    if-eqz p1, :cond_81

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gt v0, p2, :cond_88

    .line 1016
    :cond_81
    const-string p1, "com.android.graphics.driver.build_time is not set"

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1017
    const-string p1, "L0"

    .line 1021
    :cond_88
    iget-object v3, p3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iget-wide v4, p5, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    .line 1022
    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 1021
    const/4 v9, 0x0

    move-object v8, p4

    invoke-static/range {v2 .. v9}, Landroid/os/GraphicsEnvironment;->setGpuStats(Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;I)V

    .line 1024
    return p2

    .line 1011
    :cond_9a
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "apk\'s meta-data cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 972
    :catch_a2
    move-exception v0

    .line 973
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "updatable driver package \'"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, "\' not installed"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 974
    return p2
.end method

.method private blacklist chooseDriverInternal(Landroid/os/Bundle;Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;
    .registers 13

    .line 862
    const-string/jumbo v0, "ro.gfx.driver.0"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 863
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_13

    move v3, v1

    goto :goto_14

    :cond_13
    move v3, v2

    .line 865
    :goto_14
    const-string/jumbo v4, "ro.gfx.driver.1"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 866
    if-eqz v4, :cond_25

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_25

    move v5, v1

    goto :goto_26

    :cond_25
    move v5, v2

    .line 868
    :goto_26
    const-string v6, "GraphicsEnvironment"

    const/4 v7, 0x0

    if-nez v3, :cond_33

    if-nez v5, :cond_33

    .line 869
    const-string p1, "Neither updatable production driver nor prerelease driver is supported."

    invoke-static {v6, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 870
    return-object v7

    .line 876
    :cond_33
    invoke-virtual {p2}, Landroid/content/pm/ApplicationInfo;->isPrivilegedApp()Z

    move-result v8

    if-nez v8, :cond_f9

    invoke-virtual {p2}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v8

    if-eqz v8, :cond_47

    invoke-virtual {p2}, Landroid/content/pm/ApplicationInfo;->isUpdatedSystemApp()Z

    move-result v8

    if-nez v8, :cond_47

    goto/16 :goto_f9

    .line 884
    :cond_47
    iget-object v8, p2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v8, :cond_55

    iget-object v8, p2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 885
    const-string v9, "com.android.graphics.developerdriver.enable"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_5b

    .line 886
    :cond_55
    invoke-static {}, Landroid/os/GraphicsEnvironment;->isDebuggable()Z

    move-result v8

    if-eqz v8, :cond_5c

    :cond_5b
    goto :goto_5d

    :cond_5c
    move v1, v2

    .line 895
    :goto_5d
    const-string/jumbo v8, "updatable_driver_all_apps"

    invoke-virtual {p1, v8, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    packed-switch v2, :pswitch_data_fa

    .line 910
    iget-object p2, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 911
    const-string/jumbo v2, "updatable_driver_production_opt_out_apps"

    invoke-static {v7, p1, v2}, Landroid/os/GraphicsEnvironment;->getGlobalSettingsString(Landroid/content/ContentResolver;Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 913
    invoke-interface {v2, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_98

    .line 914
    const-string p1, "App opts out for updatable production driver."

    invoke-static {v6, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 915
    return-object v7

    .line 897
    :pswitch_7c
    const-string p1, "The updatable driver is turned off on this device."

    invoke-static {v6, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    return-object v7

    .line 903
    :pswitch_82
    const-string p1, "All apps opt in to use updatable prerelease driver."

    invoke-static {v6, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 904
    if-eqz v5, :cond_8c

    if-eqz v1, :cond_8c

    goto :goto_8d

    :cond_8c
    move-object v4, v7

    :goto_8d
    return-object v4

    .line 900
    :pswitch_8e
    const-string p1, "All apps opt in to use updatable production driver."

    invoke-static {v6, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 901
    if-eqz v3, :cond_96

    goto :goto_97

    :cond_96
    move-object v0, v7

    :goto_97
    return-object v0

    .line 918
    :cond_98
    const-string/jumbo v2, "updatable_driver_prerelease_opt_in_apps"

    invoke-static {v7, p1, v2}, Landroid/os/GraphicsEnvironment;->getGlobalSettingsString(Landroid/content/ContentResolver;Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 920
    invoke-interface {v2, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b1

    .line 921
    const-string p1, "App opts in for updatable prerelease driver."

    invoke-static {v6, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 922
    if-eqz v5, :cond_af

    if-eqz v1, :cond_af

    goto :goto_b0

    :cond_af
    move-object v4, v7

    :goto_b0
    return-object v4

    .line 926
    :cond_b1
    if-nez v3, :cond_b9

    .line 927
    const-string p1, "Updatable production driver is not supported on the device."

    invoke-static {v6, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 928
    return-object v7

    .line 931
    :cond_b9
    nop

    .line 932
    const-string/jumbo v1, "updatable_driver_production_opt_in_apps"

    invoke-static {v7, p1, v1}, Landroid/os/GraphicsEnvironment;->getGlobalSettingsString(Landroid/content/ContentResolver;Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 934
    invoke-interface {v1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 935
    nop

    .line 936
    const-string/jumbo v2, "updatable_driver_production_allowlist"

    invoke-static {v7, p1, v2}, Landroid/os/GraphicsEnvironment;->getGlobalSettingsString(Landroid/content/ContentResolver;Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 938
    if-nez v1, :cond_e3

    const-string v3, "*"

    invoke-interface {v2, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    if-eqz v3, :cond_e3

    .line 939
    invoke-interface {v2, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e3

    .line 940
    const-string p1, "App is not on the allowlist for updatable production driver."

    invoke-static {v6, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 941
    return-object v7

    .line 946
    :cond_e3
    if-nez v1, :cond_f8

    .line 947
    const-string/jumbo v1, "updatable_driver_production_denylist"

    invoke-static {v7, p1, v1}, Landroid/os/GraphicsEnvironment;->getGlobalSettingsString(Landroid/content/ContentResolver;Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 949
    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f8

    .line 950
    const-string p1, "App is on the denylist for updatable production driver."

    invoke-static {v6, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 951
    return-object v7

    .line 954
    :cond_f8
    return-object v0

    .line 881
    :cond_f9
    :goto_f9
    return-object v7

    :pswitch_data_fa
    .packed-switch 0x1
        :pswitch_8e
        :pswitch_82
        :pswitch_7c
    .end packed-switch
.end method

.method private blacklist debugLayerEnabled(Landroid/os/Bundle;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Z
    .registers 6

    .line 301
    invoke-static {}, Landroid/os/GraphicsEnvironment;->isDebuggable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_e

    invoke-direct {p0, p3}, Landroid/os/GraphicsEnvironment;->canInjectLayers(Landroid/content/pm/ApplicationInfo;)Z

    move-result p3

    if-nez p3, :cond_e

    .line 302
    return v1

    .line 304
    :cond_e
    const-string p3, "enable_gpu_debug_layers"

    invoke-virtual {p1, p3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p3

    .line 305
    if-nez p3, :cond_17

    .line 306
    return v1

    .line 308
    :cond_17
    const-string p3, "gpu_debug_app"

    const-string v0, ""

    invoke-virtual {p1, p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 309
    if-eqz p2, :cond_36

    .line 310
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_36

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_36

    .line 311
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_34

    goto :goto_36

    .line 314
    :cond_34
    const/4 p1, 0x1

    return p1

    .line 312
    :cond_36
    :goto_36
    return v1
.end method

.method private blacklist getAngleDebugPackage(Landroid/content/Context;Landroid/os/Bundle;)Ljava/lang/String;
    .registers 5

    .line 551
    invoke-static {}, Landroid/os/GraphicsEnvironment;->isDebuggable()Z

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_9

    .line 552
    return-object v1

    .line 556
    :cond_9
    const-string v0, "angle_debug_package"

    if-eqz p2, :cond_13

    .line 557
    nop

    .line 558
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1b

    .line 560
    :cond_13
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 561
    invoke-static {p1, v0}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 564
    :goto_1b
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_22

    .line 565
    return-object v1

    .line 567
    :cond_22
    return-object p1
.end method

.method private blacklist getAngleEglFeatures(Landroid/content/Context;Landroid/os/Bundle;)[Ljava/lang/String;
    .registers 5

    .line 846
    iget v0, p0, Landroid/os/GraphicsEnvironment;->mAngleOptInIndex:I

    const/4 v1, 0x0

    if-gez v0, :cond_6

    .line 847
    return-object v1

    .line 850
    :cond_6
    nop

    .line 851
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 850
    const-string v0, "angle_egl_features"

    invoke-static {p1, p2, v0}, Landroid/os/GraphicsEnvironment;->getGlobalSettingsString(Landroid/content/ContentResolver;Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 852
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    iget v0, p0, Landroid/os/GraphicsEnvironment;->mAngleOptInIndex:I

    if-gt p2, v0, :cond_1a

    .line 853
    return-object v1

    .line 855
    :cond_1a
    iget p2, p0, Landroid/os/GraphicsEnvironment;->mAngleOptInIndex:I

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string p2, ":"

    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private blacklist getAnglePackageName(Landroid/content/pm/PackageManager;)Ljava/lang/String;
    .registers 6

    .line 524
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.app.action.ANGLE_FOR_ANDROID"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 526
    nop

    .line 527
    const/high16 v1, 0x100000

    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p1

    .line 528
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const-string v1, ""

    const-string v2, "GraphicsEnvironment"

    if-eqz v0, :cond_1e

    .line 529
    const-string p1, "No ANGLE packages installed."

    invoke-static {v2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    return-object v1

    .line 531
    :cond_1e
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v3, 0x1

    if-le v0, v3, :cond_40

    .line 532
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Too many ANGLE packages found: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    return-object v1

    .line 542
    :cond_40
    invoke-interface {p1}, Ljava/util/List;->getFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ResolveInfo;

    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    return-object p1
.end method

.method private static blacklist getAppInfoWithMetadata(Landroid/content/Context;Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;
    .registers 4

    .line 383
    const/16 v0, 0x80

    :try_start_2
    invoke-virtual {p1, p2, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0
    :try_end_6
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_6} :catch_7

    .line 388
    goto :goto_c

    .line 384
    :catch_7
    move-exception p1

    .line 387
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    .line 389
    :goto_c
    return-object p0
.end method

.method private blacklist getDebugLayerAppPaths(Landroid/content/pm/IPackageManager;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .line 273
    const-string v0, ""

    .line 274
    :try_start_2
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    .line 273
    const-wide/32 v2, 0x20000

    invoke-interface {p1, p2, v2, v3, v1}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object p1
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_d} :catch_58

    .line 277
    nop

    .line 278
    if-nez p1, :cond_2f

    .line 279
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Debug layer app \'"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "\' not installed"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "GraphicsEnvironment"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    return-object v0

    .line 283
    :cond_2f
    invoke-static {p1}, Landroid/os/GraphicsEnvironment;->chooseAbi(Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;

    move-result-object p2

    .line 284
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 285
    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    .line 286
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 287
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 288
    const-string v1, "!/lib/"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 289
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 293
    return-object p1

    .line 275
    :catch_58
    move-exception p1

    .line 276
    return-object v0
.end method

.method private static blacklist getGlobalSettingsString(Landroid/content/ContentResolver;Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Landroid/os/Bundle;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 353
    if-eqz p1, :cond_7

    .line 354
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_b

    .line 356
    :cond_7
    invoke-static {p0, p2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 359
    :goto_b
    if-eqz p0, :cond_1d

    .line 360
    new-instance p1, Ljava/util/ArrayList;

    const-string p2, ","

    invoke-virtual {p0, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_22

    .line 362
    :cond_1d
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 365
    :goto_22
    return-object p1
.end method

.method public static greylist-max-o getInstance()Landroid/os/GraphicsEnvironment;
    .registers 1

    .line 64
    sget-object v0, Landroid/os/GraphicsEnvironment;->sInstance:Landroid/os/GraphicsEnvironment;

    return-object v0
.end method

.method private static blacklist getPackageIndex(Ljava/lang/String;Ljava/util/List;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 369
    const/4 v0, 0x0

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 370
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 371
    return v0

    .line 369
    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 375
    :cond_17
    const/4 p0, -0x1

    return p0
.end method

.method private blacklist getSphalLibraries(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 1042
    nop

    .line 1043
    const/4 v0, 0x4

    :try_start_2
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object p1

    .line 1044
    new-instance p2, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    .line 1045
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    const-string/jumbo v1, "sphal_libraries.txt"

    invoke-virtual {p1, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p2, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 1046
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 1047
    :goto_20
    invoke-virtual {p2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2a

    .line 1048
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_20

    .line 1050
    :cond_2a
    const-string p2, ":"

    invoke-static {p2, p1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1
    :try_end_30
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_30} :catch_33
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_30} :catch_31

    return-object p1

    .line 1055
    :catch_31
    move-exception p1

    goto :goto_35

    .line 1051
    :catch_33
    move-exception p1

    .line 1059
    nop

    .line 1060
    :goto_35
    const-string p1, ""

    return-object p1
.end method

.method private blacklist getVulkanVersion(Landroid/content/pm/PackageManager;)I
    .registers 5

    .line 186
    const-string v0, "android.hardware.vulkan.version"

    const v1, 0x404000

    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 187
    return v1

    .line 190
    :cond_c
    const v1, 0x403000

    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 191
    return v1

    .line 194
    :cond_16
    const v1, 0x402000

    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 195
    return v1

    .line 198
    :cond_20
    const v1, 0x401000

    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 199
    return v1

    .line 202
    :cond_2a
    const/high16 v1, 0x400000

    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_33

    .line 203
    return v1

    .line 206
    :cond_33
    const/4 p1, 0x0

    return p1
.end method

.method public static native blacklist hintActivityLaunch()V
.end method

.method private static native blacklist isDebuggable()Z
.end method

.method private static native blacklist nativeGetPersistGraphicsEgl()Ljava/lang/String;
.end method

.method private static native blacklist nativeSetAngleInfo(Ljava/lang/String;ZLjava/lang/String;[Ljava/lang/String;)V
.end method

.method private static native blacklist nativeToggleAngleAsSystemDriver(Z)V
.end method

.method private blacklist queryAngleChoice(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;
    .registers 13

    .line 415
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "default"

    const-string v2, "GraphicsEnvironment"

    if-eqz v0, :cond_10

    .line 416
    const-string p1, "No package name specified; use the system driver"

    invoke-static {v2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    return-object v1

    .line 423
    :cond_10
    const-string v0, "angle_gl_driver_all_angle"

    const/4 v3, 0x0

    if-eqz p2, :cond_1a

    .line 424
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_22

    .line 426
    :cond_1a
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 427
    invoke-static {v4, v0, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 430
    :goto_22
    const/4 v4, 0x1

    const-string v5, "angle"

    if-ne v0, v4, :cond_2d

    .line 431
    const-string p1, "Turn on ANGLE for all applications."

    invoke-static {v2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    return-object v5

    .line 436
    :cond_2d
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 437
    const-string v4, "angle_gl_driver_selection_pkgs"

    invoke-static {v0, p2, v4}, Landroid/os/GraphicsEnvironment;->getGlobalSettingsString(Landroid/content/ContentResolver;Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 439
    const-string v6, "angle_gl_driver_selection_values"

    invoke-static {v0, p2, v6}, Landroid/os/GraphicsEnvironment;->getGlobalSettingsString(Landroid/content/ContentResolver;Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    .line 441
    const-string v0, "Currently set values for:"

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  angle_gl_driver_selection_pkgs="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  angle_gl_driver_selection_values="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v6

    if-eq v0, v6, :cond_a1

    .line 447
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Global.Settings values are invalid: number of packages: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 450
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, ", number of values: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 452
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 447
    invoke-static {v2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    return-object v1

    .line 457
    :cond_a1
    invoke-static {p3, v4}, Landroid/os/GraphicsEnvironment;->getPackageIndex(Ljava/lang/String;Ljava/util/List;)I

    move-result v0

    .line 458
    const-string v4, "native"

    if-ltz v0, :cond_e5

    .line 459
    iput v0, p0, Landroid/os/GraphicsEnvironment;->mAngleOptInIndex:I

    .line 463
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 464
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ANGLE Developer option for \'"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "\' set to: \'"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "\'"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    invoke-virtual {p2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_de

    .line 473
    return-object v5

    .line 474
    :cond_de
    invoke-virtual {p2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_e5

    .line 475
    return-object v4

    .line 478
    :cond_e5
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " is not listed in per-application setting"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    nop

    .line 482
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x1070015

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p2

    .line 483
    const-string v0, " "

    invoke-static {v0, p2}, Ljava/lang/String;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 484
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ANGLE allowlist from config: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    array-length v0, p2

    move v6, v3

    :goto_125
    if-ge v6, v0, :cond_14f

    aget-object v7, p2, v6

    .line 486
    invoke-virtual {v7, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_14c

    .line 487
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Package name "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " is listed in config_angleAllowList, enabling ANGLE"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    return-object v5

    .line 485
    :cond_14c
    add-int/lit8 v6, v6, 0x1

    goto :goto_125

    .line 497
    :cond_14f
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/os/Flags;->enableAngleDenyList()Z

    move-result p2

    if-eqz p2, :cond_1b4

    .line 499
    nop

    .line 500
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x1070016

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    .line 501
    array-length p2, p1

    move v0, v3

    :goto_163
    if-ge v0, p2, :cond_187

    aget-object v6, p1, v0

    .line 502
    invoke-virtual {v6, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_184

    .line 503
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " is listed in ANGLE denylist, disabling ANGLE"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    return-object v4

    .line 501
    :cond_184
    add-int/lit8 v0, v0, 0x1

    goto :goto_163

    .line 508
    :cond_187
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/os/Flags;->enableAngleForGames()Z

    move-result p1

    if-eqz p1, :cond_1b4

    iget p1, p4, Landroid/content/pm/ApplicationInfo;->category:I

    if-nez p1, :cond_1b4

    .line 510
    const-string/jumbo p1, "ro.vendor.api_level"

    invoke-static {p1, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p1

    const p2, 0x3176c

    if-lt p1, p2, :cond_1b4

    .line 511
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " is in GAME category, enabling ANGLE"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    return-object v5

    .line 516
    :cond_1b4
    const-string p1, "No special selections for ANGLE, returning default driver choice"

    invoke-static {v2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    return-object v1
.end method

.method private static native greylist-max-o setDebugLayers(Ljava/lang/String;)V
.end method

.method private static native blacklist setDebugLayersGLES(Ljava/lang/String;)V
.end method

.method private static native blacklist setDriverPathAndSphalLibraries(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private static native blacklist setGpuStats(Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;I)V
.end method

.method private static native blacklist setInjectLayersPrSetDumpable()Z
.end method

.method private static native greylist-max-o setLayerPaths(Ljava/lang/ClassLoader;Ljava/lang/String;)V
.end method

.method private blacklist setupAngle(Landroid/content/Context;Landroid/os/Bundle;Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Z
    .registers 15

    .line 620
    nop

    .line 622
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/os/Flags;->useQueryAngleChoice()Z

    move-result v0

    const-string v1, "native"

    const-string v2, "default"

    const/4 v3, 0x0

    const-string v4, ""

    const-string/jumbo v5, "ro.hardware.egl"

    const/4 v6, 0x0

    const-string v7, "angle"

    const/4 v8, 0x1

    if-eqz v0, :cond_6e

    .line 624
    invoke-direct {p0, p1, p2, p4, p5}, Landroid/os/GraphicsEnvironment;->queryAngleChoice(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;

    move-result-object p5

    .line 630
    invoke-virtual {p5, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 632
    move p5, v8

    goto :goto_54

    .line 634
    :cond_21
    invoke-virtual {p5, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 636
    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    .line 637
    invoke-virtual {p5, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p5

    .line 638
    if-nez p5, :cond_54

    .line 640
    invoke-static {v4, v8, p4, v3}, Landroid/os/GraphicsEnvironment;->nativeSetAngleInfo(Ljava/lang/String;ZLjava/lang/String;[Ljava/lang/String;)V

    goto :goto_54

    .line 643
    :cond_35
    invoke-virtual {p5, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_55

    .line 645
    invoke-static {}, Landroid/os/GraphicsEnvironment;->nativeGetPersistGraphicsEgl()Ljava/lang/String;

    move-result-object p5

    .line 646
    if-eqz p5, :cond_46

    .line 648
    invoke-virtual {p5, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p5

    goto :goto_53

    .line 651
    :cond_46
    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    .line 652
    invoke-virtual {p5, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p5

    .line 653
    if-nez p5, :cond_53

    .line 655
    invoke-static {v4, v8, p4, v3}, Landroid/os/GraphicsEnvironment;->nativeSetAngleInfo(Ljava/lang/String;ZLjava/lang/String;[Ljava/lang/String;)V

    .line 659
    :cond_53
    :goto_53
    nop

    .line 664
    :cond_54
    :goto_54
    goto :goto_8e

    .line 660
    :cond_55
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unrecognized ANGLE choice: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "GraphicsEnvironment"

    invoke-static {p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    return v6

    .line 667
    :cond_6e
    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 670
    invoke-virtual {v0, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8d

    .line 671
    invoke-direct {p0, p1, p2, p4, p5}, Landroid/os/GraphicsEnvironment;->queryAngleChoice(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;

    move-result-object p5

    .line 676
    invoke-virtual {p5, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_83

    .line 677
    return v6

    .line 679
    :cond_83
    invoke-virtual {p5, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_8d

    .line 680
    invoke-static {v4, v8, p4, v3}, Landroid/os/GraphicsEnvironment;->nativeSetAngleInfo(Ljava/lang/String;ZLjava/lang/String;[Ljava/lang/String;)V

    .line 681
    return v6

    .line 685
    :cond_8d
    move p5, v8

    .line 688
    :goto_8e
    if-eqz p5, :cond_9e

    .line 695
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/os/GraphicsEnvironment;->setupAngleFromApk(Landroid/content/Context;Landroid/os/Bundle;Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_9c

    .line 696
    invoke-direct {p0, p1, p2, p4}, Landroid/os/GraphicsEnvironment;->setupAngleFromSystem(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_9d

    :cond_9c
    move v6, v8

    .line 695
    :cond_9d
    return v6

    .line 699
    :cond_9e
    return v6
.end method

.method private blacklist setupAngleFromApk(Landroid/content/Context;Landroid/os/Bundle;Landroid/content/pm/PackageManager;Ljava/lang/String;)Z
    .registers 11

    .line 715
    nop

    .line 718
    invoke-direct {p0, p1, p2}, Landroid/os/GraphicsEnvironment;->getAngleDebugPackage(Landroid/content/Context;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    .line 719
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    const-string v2, "\' not installed"

    const-string v3, "GraphicsEnvironment"

    const/4 v4, 0x0

    if-nez v1, :cond_47

    .line 720
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ANGLE debug package enabled: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    :try_start_26
    invoke-virtual {p3, v0, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0
    :try_end_2a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_26 .. :try_end_2a} :catch_2b

    .line 728
    goto :goto_48

    .line 724
    :catch_2b
    move-exception p1

    .line 726
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "ANGLE debug package \'"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    return v4

    .line 719
    :cond_47
    const/4 v0, 0x0

    .line 732
    :goto_48
    if-nez v0, :cond_8e

    .line 733
    invoke-direct {p0, p3}, Landroid/os/GraphicsEnvironment;->getAnglePackageName(Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v0

    .line 734
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_55

    .line 735
    return v4

    .line 738
    :cond_55
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ANGLE package enabled: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    const/high16 v1, 0x100000

    :try_start_6d
    invoke-virtual {p3, v0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0
    :try_end_71
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6d .. :try_end_71} :catch_72

    .line 746
    goto :goto_8e

    .line 743
    :catch_72
    move-exception p1

    .line 744
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "ANGLE package \'"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    return v4

    .line 749
    :cond_8e
    :goto_8e
    invoke-static {v0}, Landroid/os/GraphicsEnvironment;->chooseAbi(Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;

    move-result-object p3

    .line 757
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "!/lib/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 769
    invoke-direct {p0, p1, p2}, Landroid/os/GraphicsEnvironment;->getAngleEglFeatures(Landroid/content/Context;Landroid/os/Bundle;)[Ljava/lang/String;

    move-result-object p1

    .line 770
    invoke-static {p3, v4, p4, p1}, Landroid/os/GraphicsEnvironment;->nativeSetAngleInfo(Ljava/lang/String;ZLjava/lang/String;[Ljava/lang/String;)V

    .line 772
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist setupAngleFromSystem(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;)Z
    .registers 5

    .line 787
    invoke-direct {p0, p1, p2}, Landroid/os/GraphicsEnvironment;->getAngleEglFeatures(Landroid/content/Context;Landroid/os/Bundle;)[Ljava/lang/String;

    move-result-object p1

    .line 788
    const-string/jumbo p2, "system"

    const/4 v0, 0x0

    invoke-static {p2, v0, p3, p1}, Landroid/os/GraphicsEnvironment;->nativeSetAngleInfo(Ljava/lang/String;ZLjava/lang/String;[Ljava/lang/String;)V

    .line 789
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist setupGpuLayers(Landroid/content/Context;Landroid/os/Bundle;Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)V
    .registers 6

    .line 323
    invoke-direct {p0, p2, p4, p5}, Landroid/os/GraphicsEnvironment;->debugLayerEnabled(Landroid/os/Bundle;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Z

    move-result p1

    .line 324
    nop

    .line 325
    if-eqz p1, :cond_5b

    .line 326
    iget-object p1, p0, Landroid/os/GraphicsEnvironment;->mLibraryPermittedPaths:Ljava/lang/String;

    .line 328
    const-string p3, "gpu_debug_layers"

    invoke-virtual {p2, p3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 329
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Vulkan debug layer list: "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    const-string p5, "GraphicsEnvironment"

    invoke-static {p5, p4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    if-eqz p3, :cond_32

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result p4

    if-nez p4, :cond_32

    .line 331
    invoke-static {p3}, Landroid/os/GraphicsEnvironment;->setDebugLayers(Ljava/lang/String;)V

    .line 334
    :cond_32
    nop

    .line 335
    const-string p3, "gpu_debug_layers_gles"

    invoke-virtual {p2, p3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 336
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "GLES debug layer list: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p5, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    if-eqz p2, :cond_5d

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_5d

    .line 338
    invoke-static {p2}, Landroid/os/GraphicsEnvironment;->setDebugLayersGLES(Ljava/lang/String;)V

    goto :goto_5d

    .line 325
    :cond_5b
    const-string p1, ""

    .line 343
    :cond_5d
    :goto_5d
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Landroid/os/GraphicsEnvironment;->mLibrarySearchPaths:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 344
    iget-object p2, p0, Landroid/os/GraphicsEnvironment;->mClassLoader:Ljava/lang/ClassLoader;

    invoke-static {p2, p1}, Landroid/os/GraphicsEnvironment;->setLayerPaths(Ljava/lang/ClassLoader;Ljava/lang/String;)V

    .line 345
    return-void
.end method

.method private blacklist shouldShowAngleInUseDialogBox(Landroid/content/Context;)Z
    .registers 4

    .line 797
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 798
    const-string/jumbo v1, "show_angle_in_use_dialog_box"

    invoke-static {p1, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result p1
    :try_end_c
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_c} :catch_11
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_c} :catch_11

    .line 801
    const/4 v1, 0x1

    if-ne p1, v1, :cond_10

    move v0, v1

    :cond_10
    return v0

    .line 802
    :catch_11
    move-exception p1

    .line 807
    return v0
.end method


# virtual methods
.method public blacklist getDebugLayerPathsFromSettings(Landroid/os/Bundle;Landroid/content/pm/IPackageManager;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;
    .registers 7

    .line 241
    invoke-direct {p0, p1, p3, p4}, Landroid/os/GraphicsEnvironment;->debugLayerEnabled(Landroid/os/Bundle;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Z

    move-result p4

    if-nez p4, :cond_8

    .line 242
    const/4 p1, 0x0

    return-object p1

    .line 244
    :cond_8
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "GPU debug layers enabled for "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p4, "GraphicsEnvironment"

    invoke-static {p4, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    nop

    .line 248
    nop

    .line 249
    const-string p3, "gpu_debug_layer_app"

    const-string v0, ""

    invoke-virtual {p1, p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 250
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_76

    .line 251
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GPU debug layer apps: "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p4, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    const-string p3, ":"

    invoke-virtual {p1, p3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 255
    const/4 p3, 0x0

    :goto_4d
    array-length p4, p1

    if-ge p3, p4, :cond_76

    .line 256
    aget-object p4, p1, p3

    invoke-direct {p0, p2, p4}, Landroid/os/GraphicsEnvironment;->getDebugLayerAppPaths(Landroid/content/pm/IPackageManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 257
    invoke-virtual {p4}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_73

    .line 260
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    sget-object v0, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 255
    :cond_73
    add-int/lit8 p3, p3, 0x1

    goto :goto_4d

    .line 264
    :cond_76
    return-object v0
.end method

.method public greylist-max-o setLayerPaths(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 225
    iput-object p1, p0, Landroid/os/GraphicsEnvironment;->mClassLoader:Ljava/lang/ClassLoader;

    .line 226
    iput-object p2, p0, Landroid/os/GraphicsEnvironment;->mLibrarySearchPaths:Ljava/lang/String;

    .line 227
    iput-object p3, p0, Landroid/os/GraphicsEnvironment;->mLibraryPermittedPaths:Ljava/lang/String;

    .line 228
    return-void
.end method

.method public blacklist setup(Landroid/content/Context;Landroid/os/Bundle;)V
    .registers 18

    .line 137
    move-object/from16 v1, p1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 138
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 139
    nop

    .line 140
    invoke-static {v1, v3, v4}, Landroid/os/GraphicsEnvironment;->getAppInfoWithMetadata(Landroid/content/Context;Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    .line 142
    const-string/jumbo v0, "setupGpuLayers"

    const-wide/16 v12, 0x2

    invoke-static {v12, v13, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 143
    move-object v0, p0

    move-object/from16 v2, p2

    invoke-direct/range {v0 .. v5}, Landroid/os/GraphicsEnvironment;->setupGpuLayers(Landroid/content/Context;Landroid/os/Bundle;Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)V

    .line 144
    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    .line 147
    const-string/jumbo v0, "setupAngle"

    invoke-static {v12, v13, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 148
    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/os/GraphicsEnvironment;->setupAngle(Landroid/content/Context;Landroid/os/Bundle;Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Z

    move-result v6

    move-object v1, v5

    if-eqz v6, :cond_43

    .line 149
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/os/GraphicsEnvironment;->mShouldUseAngle:Z

    .line 150
    nop

    .line 151
    invoke-direct {p0, v3}, Landroid/os/GraphicsEnvironment;->getVulkanVersion(Landroid/content/pm/PackageManager;)I

    move-result v11

    .line 150
    move-object v10, v4

    const-string v4, "angle"

    const-string v5, ""

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    invoke-static/range {v4 .. v11}, Landroid/os/GraphicsEnvironment;->setGpuStats(Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;I)V

    move-object v4, v10

    .line 153
    :cond_43
    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    .line 155
    const-string v2, "chooseDriver"

    invoke-static {v12, v13, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 156
    move-object v0, p0

    move-object/from16 v2, p2

    move-object v5, v1

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/os/GraphicsEnvironment;->chooseDriver(Landroid/content/Context;Landroid/os/Bundle;Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Z

    move-result v2

    move-object v14, v5

    if-nez v2, :cond_75

    .line 157
    iget-boolean v2, p0, Landroid/os/GraphicsEnvironment;->mShouldUseAngle:Z

    if-nez v2, :cond_75

    .line 158
    nop

    .line 160
    const-string/jumbo v2, "ro.gfx.driver_build_time"

    const-wide/16 v5, 0x0

    invoke-static {v2, v5, v6}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    .line 161
    invoke-direct {p0, v3}, Landroid/os/GraphicsEnvironment;->getVulkanVersion(Landroid/content/pm/PackageManager;)I

    move-result v11

    .line 158
    move-object v10, v4

    const-string/jumbo v4, "system"

    const-string v5, ""

    const-wide/16 v6, 0x0

    invoke-static/range {v4 .. v11}, Landroid/os/GraphicsEnvironment;->setGpuStats(Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;I)V

    .line 164
    :cond_75
    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    .line 166
    const-string/jumbo v0, "notifyGraphicsEnvironmentSetup"

    invoke-static {v12, v13, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 167
    iget v0, v14, Landroid/content/pm/ApplicationInfo;->category:I

    if-nez v0, :cond_8f

    .line 168
    const-class v0, Landroid/app/GameManager;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/GameManager;

    .line 169
    if-eqz v0, :cond_8f

    .line 170
    invoke-virtual {v0}, Landroid/app/GameManager;->notifyGraphicsEnvironmentSetup()V

    .line 173
    :cond_8f
    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    .line 174
    return-void
.end method

.method public blacklist showAngleInUseDialogBox(Landroid/content/Context;)V
    .registers 11

    .line 818
    iget-boolean v0, p0, Landroid/os/GraphicsEnvironment;->mShouldUseAngle:Z

    if-nez v0, :cond_5

    .line 819
    return-void

    .line 822
    :cond_5
    invoke-direct {p0, p1}, Landroid/os/GraphicsEnvironment;->shouldShowAngleInUseDialogBox(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 823
    return-void

    .line 826
    :cond_c
    new-instance v2, Landroid/content/Intent;

    const-string v0, "android.app.action.ANGLE_FOR_ANDROID_TOAST_MESSAGE"

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 827
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/GraphicsEnvironment;->getAnglePackageName(Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v0

    .line 828
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_22

    .line 829
    return-void

    .line 831
    :cond_22
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 833
    new-instance v4, Landroid/os/GraphicsEnvironment$1;

    invoke-direct {v4, p0}, Landroid/os/GraphicsEnvironment$1;-><init>(Landroid/os/GraphicsEnvironment;)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, -0x1

    move-object v1, p1

    invoke-virtual/range {v1 .. v8}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 843
    return-void
.end method

.method public blacklist toggleAngleAsSystemDriver(Z)V
    .registers 2

    .line 180
    invoke-static {p1}, Landroid/os/GraphicsEnvironment;->nativeToggleAngleAsSystemDriver(Z)V

    .line 181
    return-void
.end method
